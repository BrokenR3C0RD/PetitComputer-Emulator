/*
    Petit Computer Number System
    (c) 2020 MasterR3C0RD
*/

const MASK = 2 ** 32;

const TRUE = 2 ** 13;
const FALSE = 0;

//https://stackoverflow.com/a/11818658
function toFixed(num, fixed) {
    var re = new RegExp('^-?\\d+(?:\.\\d{0,' + (fixed || -1) + '})?');
    return num.toString().match(re)[0];
}

class PTCNumber {
    SetValue(number){
        if(number instanceof PTCNumber){
            this.value = number.value;
        } else if(typeof number === "number"){
            if(number > 2 ** 20 - 1 || number < -(2 ** 20)){
                throw new Error("Overflow");
            }

            let num = Math.floor(Math.abs(number * 4096));
            if(number < 0){
                num = ~num + 1;
            }
            this.value = num;
        } else {
            throw new Error("Invalid input");
        }
        return this;
    }

    constructor(i){
        this.value = 0;
        if(i){
            this.SetValue(i);
        }
    }

    Floor(){
        let sgn = this.value < 0;
        this.value = (this.value & (2 ** 20 - 1 << 12));
        if(sgn && this.value >= 0)
            throw new Error("Overflow");

        return this;
    }

    Not(){
        this.value = ~this.value;
        return this.Floor();
    }
    And(i){
        let op = new PTCNumber(i);
        this.value = (this.value & op.value);
        return this.Floor();
    }
    Or(i){
        let op = new PTCNumber(i);
        this.value = (this.value | op.value);
        return this.Floor();
    }
    Xor(i){
        let op = new PTCNumber(i);
        this.value = (this.value ^ op.value);
        return this.Floor();
    }

    Neg(){
        this.value = ~this.value + 1;
        return this;
    }
    Add(i){
        let op = new PTCNumber(i);
        let sgn1 = this.value < 0;
        let sgn2 = op.value < 0;
        this.value = (this.value + op.value) | 0;

        if(sgn1 == sgn2 && (this.value < 0) !== sgn1)
            throw new Error("Overflow");
        
        return this;
    }
    Sub(i){
        let op = new PTCNumber(i);
        let sgn1 = this.value < 0;
        let sgn2 = !(op.value < 0);
        this.value = (this.value - op.value) | 0;

        if(sgn1 == sgn2 && (this.value < 0) !== sgn1)
            throw new Error("Overflow");
        
        return this;
    }
    Mul(i){
        let op = new PTCNumber(i);
        let sgn1 = this.value < 0;
        let sgn2 = op.value < 0;
        this.value = Math.floor((this.value * op.value) / 2 ** 12) | 0;

        if((sgn1 || sgn2) && (this.value < 0) != (sgn1 ^ sgn2))
            throw new Error("Overflow");
        
        return this;
    }
    Div(i){
        let op = new PTCNumber(i);
        let sgn1 = this.value < 0;
        let sgn2 = op.value < 0;
        this.value = Math.floor((this.value / op.value) * 2 ** 12) | 0;

        if((sgn1 || sgn2) && (this.value < 0) !== (sgn1 ^ sgn2))
            throw new Error("Overflow");
        
        return this;
    }
    Mod(i){
        let op = new PTCNumber(i);
        this.value = (this.value % op.value) | 0        
        return this;
    }

    Abs(){
        return (this.value < 0) ? this.Neg() : this;
    }

    LNot(){
        if(this.value != 0)
            this.value = FALSE;
        else
            this.value = TRUE;
        return this;
    }

    GT(i){
        let op = new PTCNumber(i);
        this.value = this.value > op.value ? TRUE : FALSE;
        return this;
    }

    LT(i){
        let op = new PTCNumber(i);
        this.value = this.value < op.value ? TRUE : FALSE;
        return this;
    }

    GTE(i){
        let op = new PTCNumber(i);
        this.value = this.value >= op.value ? TRUE : FALSE;
        return this;
    }

    LTE(i){
        let op = new PTCNumber(i);
        this.value = this.value <= op.value ? TRUE : FALSE;
        return this;
    }

    Eq(i){
        let op = new PTCNumber(i);
        this.value = this.value == op.value ? TRUE : FALSE;
        return this;
    }

    Neq(i){
        let op = new PTCNumber(i);
        this.value = this.value != op.value ? TRUE : FALSE;
        return this;
    }

    valueOf(){
        let val = this.value;
        if((val & 2 ** 31) == 2 ** 31){
            val = -(~val + 1);
        }
        return val / (2 ** 12);
    }

    toString(){
        let val = this.valueOf();
        if(val == -524288)
            return "-0";
        else
            return toFixed(val, 3);
    }
}

PTCNumber.TRUE = new PTCNumber(TRUE);
PTCNumber.FALSE = new PTCNumber(FALSE);
PTCNumber.PI = new PTCNumber(3.14135742);
module.exports = PTCNumber;