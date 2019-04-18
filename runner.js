var fs = require("fs");
var ptc = require("./ptc");


var runCode = function(code){
    let sysvar = {
        TABSTEP: 4
    };
    let numvar = {};
    let strvar = {};
    let numarr = {};
    let strarr = {};

    let gosubStack = [];
    let forStack = [];
    let tokens = ptc.parse(code);
    let labels = {};
    
    tokens.forEach((token, j) => {
        console.log(token);
        if(token.type == "label"){
            labels[token.name] = j
            //console.log("@" + token.name, j);
        }
    });

    let i = 0;
    let end = false;

    var runCommand = function(token){
        switch(token.name){
            case "gosub":
                let label = runToken(token.args[0]);
                if(label[0] !== "@")
                    throw new Error("improper value of label");
                
                if(labels[label.substr(1)] == null)
                    throw new Error("label does not exist");
                
                gosubStack.push(i);
                i = labels[label.substr(1)];
                break;
            
            case "return":
                if(gosubStack.length == 0)
                    throw new Error("stack is empty");
                
                i = gosubStack.pop();
                break;
            
            case "end":
                end = true;
                break;

            case "print":
                let data = "";
                token.args.args.forEach(token => {
                    if(token.tab){
                        data += " ".repeat(sysvar["TABSTEP"] - (data.length % sysvar["TABSTEP"]));
                    }
                    let val = runToken(token.value).toString();
                    data += val;
                });

                if(token.args.newline)
                    data += "\n";
                
                process.stdout.write(data);
                break;

            default:
                console.log("!!!", token.name, token.args);
        }
    }
    var runToken = function(token){
        switch(token.type){
            case "varassign":
                let name = token.name;
                
                if(name.indexOf("$") >= 0){
                    strvar[name] = runToken(token.value).toString();
                    //console.log(name, "= \"" + strvar[name] + "\"");
                } else {
                    numvar[name] = runToken(token.value);
                    //console.log(name, "=", numvar[name]);
                }
                return;

            case "com":
                return runCommand(token);

            case "label":
                return "@" + token.name;
            
            /* Strings */
            case "concat":
                return runToken(token.left).toString() + runToken(token.right).toString();
            
            case "repeat":
                return runToken(token.left).toString().repeat(runToken(token.right));

            case "string":
                return token.value.toString().slice(1, -1);
            
            /* Numbers */
            case "add":
                return runToken(token.left) + runToken(token.right);
            
            case "sub":
                return runToken(token.left) - runToken(token.right);
            
            case "div":
                return runToken(token.left) / runToken(token.right);
            
            case "mul":
                return runToken(token.left) * runToken(token.right);

            case "number":
                return token.base == 10 ? parseFloat(token.value) : parseInt(token.value, token.base);
            
            case "numvar":
                return numvar[token.name] || 0;
            
            case "strvar":
                return strvar[token.name] || "";
            
            default:
                console.log("***", token);
        }
    }

    while(i < tokens.length){
        let token = tokens[i];

        runToken(token);
        if(end) return;

        i++;
    }
}

var data = fs.readFileSync("test.txt", "utf8");
runCode(data);

