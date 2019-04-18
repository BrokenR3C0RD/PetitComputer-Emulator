/* description: Petit Computer grammar */
/* author: MasterR3C0RD */

%lex
%options case-insensitive
%options easy_keyword_rules

%%

(\s*\n)+					return "ENDL";
[^\S\n]+					/* whitespace */

/* Important characters */ 
":"							return ":";
"'"[^\n]*					return "COMMENT";
"REM "[^\n]*				return "REM";
";"							return ";";
","							return ",";
\(							return "(";
\)							return ")";
"["							return "[";
"]"							return "]";

/* System Operators */
"+"                         return "+";
"-"                         return "-";
"*"                         return "*";
"/"                         return "/";
"%"                         return "%";
">="                        return ">=";
"<="                        return "<=";
">"                         return ">";
"<"                         return "<";
"=="                        return "==";
"!="                        return "!=";
"="                         return "=";
"!"                         return "!";

"AND"                       return "AND";
"OR"                        return "OR";
"XOR"                       return "XOR";
"NOT"                       return "NOT";

/* System Variables */
"CSRX"						return "CSRX";
"CSRY"						return "CSRY";
"FREEMEM"					return "FREEMEM";
"VERSION"					return "VERSION";
"ERR"						return "ERR";
"ERL"						return "ERL";
"RESULT"					return "RESULT";
"TCHX"						return "TCHX";
"TCHY"						return "TCHY";
"TCHST"						return "TCHST"
"TCHTIME"					return "TCHTIME";
"MAINCNTL"					return "MAINCNTL";
"MAINCNTH"					return "MAINCNTH";
"TABSTEP"					return "TABSTEP";
"TRUE"						return "TRUE";
"FALSE"						return "FALSE";
"CANCEL"					return "CANCEL";
"ICONPUSE"					return "ICONPUSE";
"ICONPAGE"					return "ICONPAGE";
"FUNCNO"					return "FUNCNO";
"FREEVAR"					return "FREEVAR";
"SYSBEEP"					return "SYSBEEP";
"KEYBOARD"					return "KEYBOARD";
"SPHITNO"					return "SPHITNO";
"SPHITX"					return "SPHITX";
"SPHITY"					return "SPHITY";
"SPHITT"					return "SPHITT";
"TIME$"						return "TIME$";
"DATE$"						return "DATE$";
"MEM$"						return "MEM$";
"PRGNAME$"					return "PRGNAME$";
"PACKAGE$"					return "PACKAGE$";

/* Run mode */
"NEW"						return "NEW";
"LIST"						return "LIST";
"RUN"						return "RUN";
"CONT"						return "CONT";
"FILES"						return "FILES";
"REBOOT"					return "REBOOT";

/* Declarations and Variables */
"CLEAR"						return "CLEAR";
"DIM"						return "DIM";
"KEY"						return "KEY";
"SWAP"						return "SWAP";
"SORT"						return "SORT";
"RSORT"						return "RSORT";
"VSYNC"						return "VSYNC";
"WAIT"						return "WAIT";

/* Branch */
"ON"						return "ON";
"GOTO"						return "GOTO";
"GOSUB"						return "GOSUB";
"RETURN"					return "RETURN";
"STOP"						return "STOP";
"END"						return "END";

/* Repeat / Compare */
"FOR"						return "FOR";
"TO"						return "TO";
"STEP"						return "STEP";
"NEXT"						return "NEXT";
"IF"						return "IF";
"THEN"						return "THEN";
"ELSE"						return "ELSE";

/* Read */
"READ"						return "READ";
"DATA"						return "DATA";
"RESTORE"					return "RESTORE";
"TMREAD"					return "TMREAD";
"DTREAD"					return "DTREAD";

/* Console */
"CLS"						return "CLS";
"COLOR"						return "COLOR";
"LOCATE"					return "LOCATE";
"PRINT"						return "PRINT";
"?"							return "PRINT";
"CHKCHR"					return "CHKCHR";
"ACLS"						return "ACLS";
"VISIBLE"					return "VISIBLE";
"INKEY$"					return "INKEY$";
"INPUT"						return "INPUT";
"LINPUT"					return "LINPUT";
"BUTTON"					return "BUTTON";
"BTRIG"						return "BTRIG";
"BREPEAT"					return "BREPEAT";
"PNLTYPE"					return "PNLTYPE";
"PNLSTR"					return "PNLSTR";
"ICONSET"					return "ICONSET";
"ICONCLR"					return "ICONCLR";
"ICONCHK"					return "ICONCHK";

/* File / Communication */
"LOAD"						return "LOAD";
"SAVE"						return "SAVE";
"DELETE"					return "DELETE";
"RENAME"					return "RENAME";
"RECVFILE"					return "RECVFILE";
"SENDFILE"					return "SENDFILE";
"APPEND"					return "APPEND";
"EXEC"						return "EXEC";

/* Math */
"FLOOR"						return "FLOOR";
"RND"						return "RND";
"ABS"						return "ABS";
"SGN"						return "SGN";
"SQR"						return "SQR";
"EXP"						return "EXP";
"LOG"						return "LOG";
"POW"						return "POW";
"PI"						return "PI";
"RAD"						return "RAD";
"DEG"						return "DEG";
"SIN"						return "SIN";
"COS"						return "COS";
"TAN"						return "TAN";
"ATAN"						return "ATAN";

/* Characters */
"ASC"						return "ASC";
"CHR$"						return "CHR$";
"VAL"						return "VAL";
"STR$"						return "STR$";
"HEX$"						return "HEX$";
"LEN"						return "LEN";
"MID$"						return "MID$";
"LEFT$"						return "LEFT$";
"RIGHT$"					return "RIGHT$";
"INSTR"						return "INSTR";
"SUBST$"					return "SUBST$";

/* Graphics */
"GPAGE"						return "GPAGE";
"GCOLOR"					return "GCOLOR";
"GCLS"						return "GCLS";
"GSPOIT"					return "GSPOIT";
"GPSET"						return "GPSET";
"GPAINT"					return "GPAINT";
"GLINE"						return "GLINE";
"GBOX"						return "GBOX";
"GFILL"						return "GFILL";
"GCIRCLE"					return "GCIRCLE";
"GPRIO"						return "GPRIO";
"GDRAWMD"					return "GDRAWMD";
"GCOPY"						return "GCOPY";
"GPUTCHR"					return "GPUTCHR";

/* Characters */
"COLINIT"					return "COLINIT";
"COLSET"					return "COLSET";
"COLREAD"					return "COLREAD";
"CHRINIT"					return "CHRINIT";
"CHRSET"					return "CHRSET";
"CHRCOPY"					return "CHRCOPY";
"CHRREAD"					return "CHRREAD";

/* Sprites */
"SPPAGE"					return "SPPAGE";
"SPSET"						return "SPSET";
"SPCLR"						return "SPCLR";
"SPHOME"					return "SPHOME";
"SPOFS"						return "SPOFS";
"SPCHR"						return "SPCHR";
"SPANIM"					return "SPANIM";
"SPANGLE"					return "SPANGLE";
"SPSCALE"					return "SPSCALE";
"SPCHK"						return "SPCHK";
"SPREAD"					return "SPREAD";
"SPSETV"					return "SPSETV";
"SPGETV"					return "SPGETV";
"SPCOL"						return "SPCOL";
"SPCOLVEC"					return "SPCOLVEC";
"SPHIT"						return "SPHIT";
"SPHITSP"					return "SPHITSP";
"SPHITRC"					return "SPHITRC";

/* Background  */
"BGPAGE"					return "BGPAGE";
"BGCLR"						return "BGCLR";
"BGCLIP"					return "BGCLIP";
"BGOFS"						return "BGOFS";
"BGPUT"						return "BGPUT";
"BGFILL"					return "BGFILL";
"BGREAD"					return "BGREAD";
"BGCHK"						return "BGCHK";
"BGCOPY"					return "BGCOPY";

/* Audio */
"BEEP"						return "BEEP";
"BGMPLAY"					return "BGMPLAY";
"BGMSTOP"					return "BGMSTOP";
"BGMCHK"					return "BGMCHK";
"BGMVOL"					return "BGMVOL";
"BGMSET"					return "BGMSET";
"BGMSETD"					return "BGMSETD";
"BGMCLEAR"					return "BGMCLEAR";
"BGMSETV"					return "BGMSETV";
"BGMGETV"					return "BGMGETV";
"BGMPRG"					return "BGMPRG";

/* Constants and variables */
[A-Z_][_A-Z0-9]*"$"			return "STRVAR";
[A-Z_][_A-Z0-9]*			return "NUMVAR";
[0-9]+(\.[0-9]+)?			return "NUMB10";
\.[0-9]+					return "NUMB10";
"&B"[01]+					return "NUMB2";
"&H"[0-9A-F]+				return "NUMB16";
\"([^\n\"]*)(\"|(/\n))		return "STRING";
"@"[A-Z0-9_]+				return "LABEL";

<<EOF>>						return "EOF";

/lex

%nonassoc VARIABLE
%nonassoc ARRAY

%nonassoc IFX
%nonassoc ELSE
%nonassoc ARGS
%nonassoc ":"

%left "AND" "OR" "XOR"
%left "==" "!=" "<" "<=" ">" ">="
%left "+" "-"
%left "*" "/" "%"
%left numberfunction
%right UMINUS NOT "!"
%nonassoc "(" ")"
%nonassoc PAREN

%start program

%%

program
	: line
		{ $$ = [ $1 ]; }
	| COMMENT
		{ $$ = []; }
	| program COMMENT
		{ $$ = $1; }
	| program ":"
		{ $$ = $1; }
	| program ENDL COMMENT
		{ $$ = $1; }
	| program ":" line
		{ $$ = $1.concat($3); }
	| program ENDL line
		{ $$ = $1.concat($3); }
	| program ENDL REM
		{ $$ = $1; }
	| program ":" REM
		{ $$ = $1; }
	| program ENDL EOF
		{ return $1; }
	| program error ENDL
		{ $$ = $1.concat([{ type: "error", err: $2 }]); }
	| program error EOF
		{ return $1.concat([{ type: "error", err: $2 }]); }
	;

line
	: command
		{ $$ = [$1]; }
	| declare
		{ $$ = [$1]; }
	| label
		{ $$ = [$1]; }
	;

label
	: LABEL
		{ $$ = { type: "label", name: $1.substr(1) }; }
	;

labelacc
	: label
		{ $$ = $1; }
	| string
		{ $$ = $1; }
	;

numarray
	: NUMVAR "(" number ")" %prec ARRAY
		{ $$ = { type: "array", name: $1, indexes: [ $3 ] }; }
	| NUMVAR "[" number "]" %prec ARRAY
		{ $$ = { type: "array", name: $1, indexes: [ $3 ] }; }
	| NUMVAR "(" number "," number ")" %prec ARRAY
		{ $$ = { type: "array", name: $1, indexes: [ $3, $5 ] }; }
	| NUMVAR "[" number "," number "]" %prec ARRAY
		{ $$ = { type: "array", name: $1, indexes: [ $3, $5 ] }; }
	;

strarray
	: STRVAR "(" number ")" %prec ARRAY
		{ $$ = { type: "array", name: $1, indexes: [ $3 ] }; }
	| STRVAR "[" number "]" %prec ARRAY
		{ $$ = { type: "array", name: $1, indexes: [ $3 ] }; }
	| STRVAR "(" number "," number ")" %prec ARRAY
		{ $$ = { type: "array", name: $1, indexes: [ $3, $5 ] }; }
	| STRVAR "[" number "," number "]" %prec ARRAY
		{ $$ = { type: "array", name: $1, indexes: [ $3, $5 ] }; }
	;


/* Assignments */
declare
	: STRVAR "=" string
		{ $$ = { type: "varassign", name: $1, value: $3 }; }
	| NUMVAR "=" number
		{ $$ = { type: "varassign", name: $1, value: $3 }; }
	| writestrvar "=" string
		{ $$ = { type: "varassign", name: $1, value: $3 }; }
	| writenumvar "=" number
		{ $$ = { type: "varassign", name: $1, value: $3 }; }
	| strarray "=" string
		{ $$ = { type: "arrassign", access: $1, value: $3 }; }
	| numarray "=" number
		{ $$ = { type: "arrassign", access: $1, value: $3 }; }
	;

/* Commands */
command
	: print
		{ $$ = $1; }
	| dim
		{ $$ = $1; }
	| clear
		{ $$ = $1; }
	| key
		{ $$ = $1; }
	| swap
		{ $$ = $1; }
	| sort
		{ $$ = $1; }
	| rsort
		{ $$ = $1; }
	| vsync
		{ $$ = $1; }
	| wait
		{ $$ = $1; }
	| on
		{ $$ = $1; }
	| goto
		{ $$ = $1; }
	| gosub
		{ $$ = $1; }
	| return
		{ $$ = $1; }
	| stop
		{ $$ = $1; }
	| end
		{ $$ = $1; }
	| for
		{ $$ = $1; }
	| next
		{ $$ = $1; }
	| if
		{ $$ = $1; }
	| read
		{ $$ = $1; }
	| data
		{ $$ = $1; }
	| restore
		{ $$ = $1; }
	| tmread
		{ $$ = $1; }
	| dtread
		{ $$ = $1; }
	| cls
		{ $$ = $1; }
	| color
		{ $$ = $1; }
	| locate
		{ $$ = $1; }
	| acls
		{ $$ = $1; }
	| visible
		{ $$ = $1; }
	| input
		{ $$ = $1; }
	| linput
		{ $$ = $1; }
	| brepeat
		{ $$ = $1; }
	| pnltype
		{ $$ = $1; }
	| pnlstr
		{ $$ = $1; }
	| iconset
		{ $$ = $1; }
	| iconclr
		{ $$ = $1; }
	| load
		{ $$ = $1; }
	| save
		{ $$ = $1; }
	| delete
		{ $$ = $1; }
	| rename
		{ $$ = $1; }
	| recvfile
		{ $$ = $1; }
	| sendfile
		{ $$ = $1; }
	| exec
		{ $$ = $1; }
	| gpage
		{ $$ = $1; }
	| gcolor
		{ $$ = $1; }
	| gcls
		{ $$ = $1; }
	| gpset
		{ $$ = $1; }
	| gpaint
		{ $$ = $1; }
	| gline
		{ $$ = $1; }
	| gbox
		{ $$ = $1; }
	| gfill
		{ $$ = $1; }
	| gcircle
		{ $$ = $1; }
	| gprio
		{ $$ = $1; }
	| gdrawmd
		{ $$ = $1; }
	| gcopy
		{ $$ = $1; }
	| gputchr
		{ $$ = $1; }
	| colinit
		{ $$ = $1; }
	| colset
		{ $$ = $1; }
	| colread
		{ $$ = $1; }
	| chrinit
		{ $$ = $1; }
	| chrset
		{ $$ = $1; }
	| chrread
		{ $$ = $1; }
	| sppage
		{ $$ = $1; }
	| spset
		{ $$ = $1; }
	| spclr
		{ $$ = $1; }
	| sphome
		{ $$ = $1; }
	| spofs
		{ $$ = $1; }
	| spchr
		{ $$ = $1; }
	| spanim
		{ $$ = $1; }
	| spangle
		{ $$ = $1; }
	| spscale
		{ $$ = $1; }
	| spread
		{ $$ = $1; }
	| spsetv
		{ $$ = $1; }
	| spcol
		{ $$ = $1; }
	| spcolvec
		{ $$ = $1; }
	| bgpage
		{ $$ = $1; }
	| bgclr
		{ $$ = $1; }
	| bgclip
		{ $$ = $1; }
	| bgofs
		{ $$ = $1; }
	| bgput
		{ $$ = $1; }
	| bgfill
		{ $$ = $1; }
	| bgread
		{ $$ = $1; }
	| bgcopy
		{ $$ = $1; }
	| beep
		{ $$ = $1; }
	| bgmplay
		{ $$ = $1; }
	| bgmstop
		{ $$ = $1; }
	| bgmvol
		{ $$ = $1; }
	| bgmset
		{ $$ = $1; }
	| bgmsetd
		{ $$ = $1; }
	| bgmclear
		{ $$ = $1; }
	| bgmsetv
		{ $$ = $1; }
	| bgmprg
		{ $$ = $1; }
	;


print
	: PRINT printargs
		{ $$ = { type: "com", name: "print", args: $2 }; }
	| "?" printargs
		{ $$ = { type: "com", name: "print", args: $2 }; }
	;

dim
	: DIM dimargs
		{ $$ = { type: "com", name: "dim", args: $2 }; }
	;

clear
	: CLEAR
		{ $$ = { type: "com", name: "clear", args: [] }; }
	;

key
	: KEY number "," string
		{ $$ = { type: "com", name: "key", args: [$2, $4] }; }
	;

swap
	: SWAP variable "," variable
		{ $$ = { type: "com", name: "swap", args: [$2, $4] }; }
	;

sort
	: SORT number "," number "," sortargs
		{ $$ = { type: "com", name: "sort", args: [$2, $4].concat($6) }; }
	;

rsort
	: RSORT number "," number "," sortargs
		{ $$ = { type: "com", name: "rsort", args: [$2, $4].concat($5) }; }
	;

vsync
	: VSYNC number
		{ $$ = { type: "com", name: "vsync", args: [$2] }; }
	;

wait
	: WAIT number
		{ $$ = { type: "com", name: "wait", args: [$2] }; }
	;

on
	: ON number GOTO onargs
		{ $$ = { type: "com", name: "on", args: [$2, $3, $4] }; }
	| ON number GOSUB onargs
		{ $$ = { type: "com", name: "on", args: [$2, $3, $4] }; }
	;

goto
	: GOTO labelacc
		{ $$ = { type: "com", name: "goto", args: [$2] }; }
	;

gosub
	: GOSUB labelacc
		{ $$ = { type: "com", name: "gosub", args: [$2] }; }
	;

return
	: RETURN
		{ $$ = { type: "com", name: "return", args: [] }; }
	;

stop
	: STOP
		{ $$ = { type: "com", name: "stop", args: [] }; }
	;

end
	: END
		{ $$ = { type: "com", name: "end", args: [] }; }
	;

for
	: FOR numvariable "=" number TO number
		{ $$ = { type: "com", name: "for", args: [$2, $4, $6] }; }
	| FOR numvariable "=" number TO number STEP number
		{ $$ = { type: "com", name: "for", args: [$2, $4, $6, $8] }; }
	;

next
	: NEXT
		{ $$ = { type: "com", name: "next", args: [] }; }
	| NEXT numvariable
		{ $$ = { type: "com", name: "next", args: [$2] }; }
	;

if
	: IF number THEN ifcommands %prec IFX
		{ $$ = { type: "com", name: "if", iftype: "command", args: [$2, $4] }; }
	| IF number THEN labelacc %prec IFX
		{ $$ = { type: "com", name: "if", iftype: "goto", args: [$2, $4] }; }
	| IF number GOTO labelacc %prec IFX
		{ $$ = { type: "com", name: "if", iftype: "goto", args: [$2, $4] }; }
	| IF number GOSUB labelacc %prec IFX
		{ $$ = { type: "com", name: "if", iftype: "gosub", args: [$2, $4] }; }

	| IF number THEN ifcommands ELSE ifcommands %prec ARGS
		{ $$ = { type: "com", name: "if", iftype: "command2", args: [$2, $4, $6] }; }
	| IF number THEN labelacc ELSE ifcommands %prec ARGS
		{ $$ = { type: "com", name: "if", iftype: "goto1", args: [$2, $4, $6] }; }
	| IF number GOTO labelacc ELSE ifcommands %prec ARGS
		{ $$ = { type: "com", name: "if", iftype: "goto1", args: [$2, $4, $6] }; }
	| IF number GOSUB labelacc ELSE ifcommands %prec ARGS
		{ $$ = { type: "com", name: "if", iftype: "gosub1", args: [$2, $4, $6] }; }
	| IF number GOTO labelacc ELSE labelacc %prec ARGS
		{ $$ = { type: "com", name: "if", iftype: "goto2", args: [$2, $4, $6] }; }
	| IF number GOSUB labelacc ELSE labelacc %prec ARGS
		{ $$ = { type: "com", name: "if", iftype: "gosub2", args: [$2, $4, $6] }; }
	;

read
	: READ readargs
		{ $$ = { type: "com", name: "read", args: $2 }; }
	;

data
	: DATA dataargs
		{ $$ = { type: "com", name: "data", args: $2 }; }
	;

restore
	: RESTORE labelacc
		{ $$ = { type: "com", name: "restore", args: [$2] }; }
	;

tmread
	: TMREAD "(" string ")" "," numvariable "," numvariable "," numvariable
		{ $$ = { type: "com", name: "tmread", args: [$3, $6, $8, $10] }; }
	;

dtread
	: DTREAD "(" string ")" "," numvariable "," numvariable "," numvariable
		{ $$ = { type: "com", name: "dtread", args: [$3, $6, $8, $10] }; }
	;

cls
	: CLS
		{ $$ = { type: "com", name: "cls", args: [] }; }
	;

color
	: COLOR number
		{ $$ = { type: "com", name: "color", args: [$2] }; }
	| COLOR number "," number
		{ $$ = { type: "com", name: "color", args: [$2, $4] }; }
	;

locate
	: LOCATE number "," number
		{ $$ = { type: "com", name: "locate", args: [$2, $4] }; }
	;

acls
	: ACLS
		{ $$ = { type: "com", name: "acls", args: [] }; }
	;

visible
	: VISIBLE number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "visible", args: [$2, $4, $6, $8, $10, $12] }; }
	;

input
	: INPUT readargs
		{ $$ = { type: "com", name: "input", args: [null].concat($2) }; }
	| INPUT string ";" readargs
		{ $$ = { type: "com", name: "input", args: [$2].concat($4) }; }
	;

linput
	: LINPUT strvariable
		{ $$ = { type: "com", name: "linput", args: [null].concat($2) }; }
	| LINPUT string ";" readargs
		{ $$ = { type: "com", name: "linput", args: [$2].concat($4) }; }
	;

brepeat
	: BREPEAT number
		{ $$ = { type: "com", name: "brepeat", args: [ $2 ] }; }
	| BREPEAT number "," number "," number
		{ $$ = { type: "com", name: "brepeat", args: [$2, $4, $6] }; }
	;

pnltype
	: PNLTYPE string
		{ $$ = { type: "com", name: "pnltype", args: [ $2 ] }; }
	;

pnlstr
	: PNLSTR number "," number "," string
		{ $$ = { type: "com", name: "pnlstr", args: [ $2, $4, $6 ] }; }
	| PNLSTR number "," number "," string "," number
		{ $$ = { type: "com", name: "pnlstr", args: [ $2, $4, $6, $8 ] }; }
	;

iconset
	: ICONSET number "," number
		{ $$ = { type: "com", name: "iconset", args: [ $2, $4 ] }; }
	;

iconclr
	: ICONCLR
		{ $$ = { type: "com", name: "iconclr", args: [] }; }
	| ICONCLR number
		{ $$ = { type: "com", name: "iconclr", args: [ $2 ] }; }
	;

load
	: LOAD string
		{ $$ = { type: "com", name: "load", args: [ $2 ] }; }
	| LOAD string "," number
		{ $$ = { type: "com", name: "load", args: [ $2, $4 ] }; }
	;

save
	: SAVE string
		{ $$ = { type: "com", name: "save", args: [ $2 ] }; }
	| SAVE string "," string
		{ $$ = { type: "com", name: "save", args: [ $2, $4 ] }; }
	;

delete
	: DELETE string
		{ $$ = { type: "com", name: "delete", args: [ $2 ] }; }
	;

rename
	: RENAME string
		{ $$ = { type: "com", name: "rename", args: [ $2 ] }; }
	| RENAME string "," string
		{ $$ = { type: "com", name: "rename", args: [ $2, $4 ] }; }
	;

recvfile
	: RECVFILE string
		{ $$ = { type: "com", name: "recvfile", args: [ $2 ] }; }
	;

sendfile
	: SENDFILE string
		{ $$ = { type: "com", name: "sendfile", args: [ $2 ] }; }
	;

exec
	: EXEC string
		{ $$ = { type: "com", name: "exec", args: [ $2 ] }; }
	;

gpage
	: GPAGE number
		{ $$ = { type: "com", name: "gpage", args: [ $2 ] }; }
	| GPAGE number "," number "," number
		{ $$ = { type: "com", name: "gpage", args: [ $2, $4, $6 ] }; }
	;

gcolor
	: GCOLOR number
		{ $$ = { type: "com", name: "gcolor", args: [ $2 ] }; }
	;

gcls
	: GCLS
		{ $$ = { type: "com", name: "gcls", args: [] }; }
	| GCLS number
		{ $$ = { type: "com", name: "gcls", args: [ $2 ] }; }
	;

gpset
	: GPSET number "," number
		{ $$ = { type: "com", name: "gpset", args: [ $2, $4 ] }; }
	| GPSET number "," number "," number
		{ $$ = { type: "com", name: "gpage", args: [ $2, $4, $6 ] }; }
	;

gpaint
	: GPAINT number "," number
		{ $$ = { type: "com", name: "gpaint", args: [ $2, $4 ] }; }
	| GPAINT number "," number "," number
		{ $$ = { type: "com", name: "gpaint", args: [ $2, $4, $6 ] }; }
	;

gline
	: GLINE number "," number "," number "," number
		{ $$ = { type: "com", name: "gline", args: [ $2, $4, $6, $8 ] }; }
	| GLINE number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "gline", args: [ $2, $4, $6, $8, $10 ] }; }
	;

gbox
	: GBOX number "," number "," number "," number
		{ $$ = { type: "com", name: "gbox", args: [ $2, $4, $6, $8 ] }; }
	| GBOX number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "gbox", args: [ $2, $4, $6, $8, $10 ] }; }
	;

gfill
	: GFILL number "," number "," number "," number
		{ $$ = { type: "com", name: "gfill", args: [ $2, $4, $6, $8 ] }; }
	| GFILL number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "gfill", args: [ $2, $4, $6, $8, $10 ] }; }
	;

gcircle
	: GCIRCLE number "," number "," number
		{ $$ = { type: "com", name: "gcircle", args: [ $2, $4, $6 ] }; }
	| GCIRCLE number "," number "," number "," number
		{ $$ = { type: "com", name: "gcircle", args: [ $2, $4, $6, $8 ] }; }
	| GCIRCLE number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "gcircle", args: [ $2, $4, $6, $8, $10 ] }; }
	| GCIRCLE number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "gcircle", args: [ $2, $4, $6, $8, $10, $12 ] }; }
	;

gprio
	: GPRIO number
		{ $$ = { type: "com", name: "gprio", args: [ $2 ] }; }
	;

gdrawmd
	: GDRAWMD number
		{ $$ = { type: "com", name: "gdrawmd", args: [ $2 ] }; }
	;

gcopy
	: GCOPY number "," number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "gcopy", args: [ $2, $4, $6, $8, $10, $12, $14 ] }; }
	| GCOPY number "," number "," number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "gcopy", args: [ $2, $4, $6, $8, $10, $12, $14, $16 ] }; }
	;

gputchr
	: GPUTCHR number "," number "," string "," number "," number "," number
		{ $$ = { type: "com", name: "gputchr", args: [ $2, $4, $6, $8, $10, $12 ] }; }
	;

colinit
	: COLINIT string "," number
		{ $$ = { type: "com", name: "colinit", args: [ $2, $4 ] }; }
	;

colset
	: COLSET string "," number "," string
		{ $$ = { type: "com", name: "colset", args: [ $2, $4, $6 ] }; }
	;

colread
	: COLREAD "(" string "," number ")" "," numvariable "," numvariable "," numvariable
		{ $$ = { type: "com", name: "colread", args: [ $3, $5, $8, $10, $12 ] }; }
	;

chrinit
	: CHRINIT string
		{ $$ = { type: "com", name: "chrinit", args: [ $2 ] }; }
	;

chrset
	: CHRSET string "," number "," string
		{ $$ = { type: "com", name: "chrset", args: [ $2, $4, $6 ] }; }
	;

chrread
	: CHRREAD "(" string "," number ")" "," strvariable
		{ $$ = { type: "com", name: "chrread", args: [ $3, $5, $8 ] }; }
	;

sppage
	: SPPAGE number
		{ $$ = { type: "com", name: "sppage", args: [ $2 ] }; }
	;

spset
	: SPSET number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "spset", args: [ $2, $4, $6, $8, $10, $12 ] }; }
	| SPSET number "," number "," number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "spset", args: [ $2, $4, $6, $8, $10, $12, $14, $16 ] }; }
	;

spclr
	: SPCLR
		{ $$ = { type: "com", name: "spclr", args: [] }; }
	| SPCLR number
		{ $$ = { type: "com", name: "spclr", args: [ $2 ] }; }
	;

sphome
	: SPHOME number "," number "," number
		{ $$ = { type: "com", name: "sphome", args: [ $2, $4, $6 ] }; }
	;

spofs
	: SPOFS number "," number "," number
		{ $$ = { type: "com", name: "spofs", args: [ $2, $4, $6 ] }; }
	| SPOFS number "," number "," number "," number
		{ $$ = { type: "com", name: "spofs", args: [ $2, $4, $6, $8 ] }; }
	;

spchr
	: SPCHR number "," number
		{ $$ = { type: "com", name: "spchr", args: [ $2, $4 ] }; }
	| SPCHR number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "spchr", args: [ $2, $4, $6, $8, $10, $12 ] }; }
	;

spanim
	: SPANIM number "," number "," number
		{ $$ = { type: "com", name: "spanim", args: [ $2, $4, $6 ] }; }
	| SPANIM number "," number "," number "," number
		{ $$ = { type: "com", name: "spanim", args: [ $2, $4, $6, $8 ] }; }
	;

spangle
	: SPANGLE number "," number
		{ $$ = { type: "com", name: "spangle", args: [ $2, $4 ] }; }
	| SPANGLE number "," number "," number "," number
		{ $$ = { type: "com", name: "spangle", args: [ $2, $4, $6 ] }; }
	;

spscale
	: SPSCALE number "," number
		{ $$ = { type: "com", name: "spscale", args: [ $2, $4 ] }; }
	| SPSCALE number "," number "," number
		{ $$ = { type: "com", name: "spscale", args: [ $2, $4, $6 ] }; }
	;

spread
	: SPREAD "(" number ")" "," numvariable "," numvariable
		{ $$ = { type: "com", name: "spread", args: [ $3, $6 ] }; }
	| SPREAD "(" number ")" "," numvariable "," numvariable "," numvariable
		{ $$ = { type: "com", name: "spread", args: [ $3, $6, $8 ] }; }
	| SPREAD "(" number ")" "," numvariable "," numvariable "," numvariable  "," numvariable
		{ $$ = { type: "com", name: "spread", args: [ $3, $6, $8, $10 ] }; }
	| SPREAD "(" number ")" "," numvariable "," numvariable "," numvariable "," numvariable "," numvariable
		{ $$ = { type: "com", name: "spread", args: [ $3, $6, $8, $10, $12 ] }; }
	;

spsetv
	: SPSETV number "," number "," number
		{ $$ = { type: "com", name: "spsetv", args: [ $2, $4, $6 ] }; }
	;

spcol
	: SPCOL number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "spcol", args: [ $2, $4, $6, $8, $10, $12 ] }; }
	| SPCOL number "," number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "spcol", args: [ $2, $4, $6, $8, $10, $12, $14 ] }; }
	;

spcolvec
	: SPCOLVEC number "," number "," number
		{ $$ = { type: "com", name: "spcolvec", args: [ $2, $4, $6 ] }; }
	;

bgpage
	: BGPAGE number
		{ $$ = { type: "com", name: "bgpage", args: [ $2 ] }; }
	;

bgclr
	: BGCLR
		{ $$ = { type: "com", name: "bgclr", args: [] }; }
	| BGCLR number
		{ $$ = { type: "com", name: "bgclr", args: [ $2 ] }; }
	;

bgclip
	: BGCLIP number "," number "," number "," number
		{ $$ = { type: "com", name: "bgclip", args: [ $2, $4, $6, $8 ] }; }
	;

bgofs
	: BGOFS number "," number "," number
		{ $$ = { type: "com", name: "bgofs", args: [ $2, $4, $6 ] }; }
	| BGOFS number "," number "," number "," number
		{ $$ = { type: "com", name: "bgofs", args: [ $2, $4, $6, $8 ] }; }
	;

bgput
	: BGPUT number "," number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "bgput", args: [ $2, $4, $6, $8, $10, $12, $14 ] }; }
	| BGPUT number "," number "," number "," number
		{ $$ = { type: "com", name: "bgput", args: [ $2, $4, $6, $8 ] }; }
	;

bgfill
	: BGFILL number "," number "," number "," number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "bgfill", args: [ $2, $4, $6, $8, $10, $12, $14, $16, $18 ] }; }
	| BGFILL number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "bgfill", args: [ $2, $4, $6, $8, $10, $12 ] }; }
	;

bgread
	: BGREAD "(" number "," number "," number ")" "," numvariable "," numvariable "," numvariable "," numvariable
		{ $$ = { type: "com", name: "bgread", args: [ $3, $5, $7, $10, $12, $14, $16 ] }; }
	| BGREAD "(" number "," number "," number ")" "," strvariable
		{ $$ = { type: "com", name: "bgread", args: [ $3, $5, $7, $10 ] }; }
	;

bgcopy
	: BGCOPY number "," number "," number "," number "," number "," number "," number
		{ $$ = { type: "com", name: "bgcopy", args: [ $2, $4, $6, $8, $10, $12, $14 ] }; }
	;

beep
	: BEEP
		{ $$ = { type: "com", name: "beep", args: [] }; }
	| BEEP number
		{ $$ = { type: "com", name: "beep", args: [ $2 ] }; }
	| BEEP number "," number
		{ $$ = { type: "com", name: "beep", args: [ $2, $4 ] }; }
	| BEEP number "," number "," number
		{ $$ = { type: "com", name: "beep", args: [ $2, $4, $6 ] }; }
	| BEEP number "," number "," number "," number
		{ $$ = { type: "com", name: "beep", args: [ $2, $4, $6, $8 ] }; }
	;

bgmplay
	: BGMPLAY number
		{ $$ = { type: "com", name: "bgmplay", args: [ $2 ] }; }
	| BGMPLAY number "," number
		{ $$ = { type: "com", name: "bgmplay", args: [ $2, $4 ] }; }
	| BGMPLAY number "," number "," number
		{ $$ = { type: "com", name: "bgmplay", args: [ $2, $4, $6 ] }; }
	| BGMPLAY mmllist
		{ $$ = { type: "com", name: "bgmplay", args: [ $2 ] }; } 
	;

bgmstop
	: BGMSTOP
		{ $$ = { type: "com", name: "bgmstop", args: [] }; }
	| BGMSTOP number
		{ $$ = { type: "com", name: "bgmstop", args: [ $2 ] }; }
	| BGMSTOP number "," number
		{ $$ = { type: "com", name: "bgmstop", args: [ $2, $4 ] }; }
	;

bgmvol
	: BGMVOL number
		{ $$ = { type: "com", name: "bgmvol", args: [ $2 ] }; }
	| BGMVOL number "," number
		{ $$ = { type: "com", name: "bgmvol", args: [ $2, $4 ] }; }
	;

bgmset
	: BGMSET number "," mmllist
		{ $$ = { type: "com", name: "bgmset", args: [ $2, $4 ] }; }
	;

bgmsetd
	: BGMSETD number "," labelacc
		{ $$ = { type: "com", name: "bgmsetd", args: [ $2, $4 ] }; }
	;

bgmclear
	: BGMCLEAR
		{ $$ = { type: "com", name: "bgmclear", args: [] }; }
	| BGMCLEAR number
		{ $$ = { type: "com", name: "bgmclear", args: [ $2 ] }; }
	;

bgmsetv
	: BGMSETV number "," number "," number
		{ $$ = { type: "com", name: "bgmsetv", args: [ $2, $4, $6 ] }; }
	;

bgmprg
	: BGMPRG number "," number "," number "," number "," number "," string
		{ $$ = { type: "com", name: "bgmprg", args: [ $2, $4, $6, $8, $10, $12 ] }; }
	;

mmllist
	: string
		{ $$ = [ $1 ]; }
	| mmllist "," string
		{ $$ = $1.concat([$3]); }
	;

dataargs
	: number
		{ $$ = [$1]; }
	| string
		{ $$ = [$1]; }
	| dataargs "," number
		{ $$ = $1.concat([$3]); }
	| dataargs "," string
		{ $$ = $1.concat([$3]); }
	;

readargs
	: numvariable
		{ $$ = [$1]; }
	| strvariable
		{ $$ = [$1]; }
	| readargs "," numvariable
		{ $$ = $1.concat([$3]); }
	| readargs "," strvariable
		{ $$ = $1.concat([$3]); }
	;

ifcommands
	: declare
		{ $$ = [$1]; }
	| command
		{ $$ = [$1]; }
	| ":"
		{ $$ = []; }
	| ifcommands ":" declare
		{ $$ = $1.concat([$3]); }
	| ifcommands ":" command
		{ $$ = $1.concat([$3]); }
	| ifcommands ":"
		{ $$ = $1; }
	;

onargs
	: labelacc
		{ $$ = [$1]; }
	| onargs "," labelacc
		{ $$ = $1.concat([$3]); }
	;

sortargs
	: STRVAR
		{ $$ = [$1]; }
	| NUMVAR
		{ $$ = [$1]; }
	| sortargs "," STRVAR
		{ $$ = $1.concat([$3]); }
	| sortargs "," NUMVAR
		{ $$ = $1.concat([$3]); }
	;

dimargs
	: numarray
		{ $$ = [ $1 ]; }
	| strarray
		{ $$ = [ $1 ]; }
	| dimargs "," strarray
		{ $$ = $1.concat([$3]); }
	| dimargs "," numarray
		{ $$ = $1.concat([$3]); }
	;

printargs
	: /* epsilon*/
		{ $$ = { newline: true, args: [] }; }
	| printargs ";" %prec ARGS
		{ $1.newline = false; $$ = $1; }
	| printargs number %prec ARGS
		{ $1.newline = true; $$ = $1; $$.args = $1.args.concat([
			{
				value: $2,
				tab: false
			}]); }
	| printargs string %prec ARGS
		{ $1.newline = true; $$ = $1; $$.args = $1.args.concat([
			{
				value: $2,
				tab: false
			}]); }
	| printargs "," number %prec ARGS
		{ $1.newline = true; $$ = $1; $$.args = $1.args.concat([
			{
				value: $3,
				tab: true
			}]); }
	| printargs "," string %prec ARGS
		{ $1.newline = true; $$ = $1; $$.args = $1.args.concat([
			{
				value: $3,
				tab: true
			}]); }
	;



/* Number functions */
numberfunction
	: val
		{ $$ = $1; }
	| chkchr
		{ $$ = $1; }
	| button
		{ $$ = $1; }
	| btrig
		{ $$ = $1; }
	| iconchk
		{ $$ = $1; }
	| floor
		{ $$ = $1; }
	| rnd
		{ $$ = $1; }
	| abs
		{ $$ = $1; }
	| sgn
		{ $$ = $1; }
	| sqr
		{ $$ = $1; }
	| exp
		{ $$ = $1; }
	| log
		{ $$ = $1; }
	| pow
		{ $$ = $1; }
	| pi
		{ $$ = $1; }
	| rad
		{ $$ = $1; }
	| deg
		{ $$ = $1; }
	| sin
		{ $$ = $1; }
	| cos
		{ $$ = $1; }
	| tan
		{ $$ = $1; }
	| atan
		{ $$ = $1; }
	| asc
		{ $$ = $1; }
	| len
		{ $$ = $1; }
	| instr
		{ $$ = $1; }
	| gspoit
		{ $$ = $1; }
	| spchk
		{ $$ = $1; }
	| spgetv
		{ $$ = $1; }
	| sphit
		{ $$ = $1; }
	| sphitsp
		{ $$ = $1; }
	| sphitrc
		{ $$ = $1; }
	| bgchk
		{ $$ = $1; }
	| bgmchk
		{ $$ = $1; }
	| bgmgetv
		{ $$ = $1; }
	;

val
	: VAL "(" string ")"
		{ $$ = { type: "func", name: "val", args: [ $3 ] }; }
	;

chkchr
	: CHKCHR "(" number "," number ")"
		{ $$ = { type: "func", name: "chkchr", args: [ $3, $5 ] }; }
	;

button
	: BUTTON "(" ")"
		{ $$ = { type: "func", name: "button", args: [] }; }
	| BUTTON "(" number ")"
		{ $$ = { type: "func", name: "button", args: [ $3 ] }; }
	;

btrig
	: BTRIG "(" ")"
		{ $$ = { type: "func", name: "btrig", args: [] }; }
	;

iconchk
	: ICONCHK "(" ")"
		{ $$ = { type: "func", name: "iconchk", args: [] }; }
	;

floor
	: FLOOR "(" number ")"
		{ $$ = { type: "func", name: "floor", args: [ $3 ] }; }
	;

rnd
	: RND "(" number ")"
		{ $$ = { type: "func", name: "rnd", args: [ $3 ] }; }
	;

abs
	: ABS "(" number ")"
		{ $$ = { type: "func", name: "abs", args: [ $3 ] }; }
	;

sgn
	: SGN "(" number ")"
		{ $$ = { type: "func", name: "sgn", args: [ $3 ] }; }
	;

sqr
	: SQR "(" number ")"
		{ $$ = { type: "func", name: "sqr", args: [ $3 ] }; }
	;

exp
	: EXP "(" number ")"
		{ $$ = { type: "func", name: "exp", args: [ $3 ] }; }
	;

log
	: LOG "(" number ")"
		{ $$ = { type: "func", name: "log", args: [ $3 ] }; }
	;

pow
	: POW "(" number "," number ")"
		{ $$ = { type: "func", name: "pow", args: [ $3, $5 ] }; }
	;

pi
	: PI "(" ")"
		{ $$ = { type: "func", name: "pi", args: [] }; }
	;

rad
	: RAD "(" number ")"
		{ $$ = { type: "func", name: "rad", args: [ $3 ] }; }
	;

deg
	: DEG "(" number ")"
		{ $$ = { type: "func", name: "deg", args: [ $3 ] }; }
	;

sin
	: SIN "(" number ")"
		{ $$ = { type: "func", name: "sin", args: [ $3 ] }; }
	;

cos
	: COS "(" number ")"
		{ $$ = { type: "func", name: "cos", args: [ $3 ] }; }
	;

tan
	: TAN "(" number ")"
		{ $$ = { type: "func", name: "tan", args: [ $3 ] }; }
	;

atan
	: ATAN "(" number ")"
		{ $$ = { type: "func", name: "atan", args: [ $3 ] }; }
	| ATAN "(" number "," number ")"
		{ $$ = { type: "func", name: "atan", args: [ $3, $5 ] }; }
	;

asc
	: ASC "(" string ")"
		{ $$ = { type: "func", name: "asc", args: [ $3 ] }; }
	;

len
	: LEN "(" string ")"
		{ $$ = { type: "func", name: "len", args: [ $3 ] }; }
	;

instr
	: INSTR "(" string "," string ")"
		{ $$ = { type: "func", name: "instr", args: [ $3, $5 ] }; }
	;

gspoit
	: GSPOIT "(" number "," number ")"
		{ $$ = { type: "func", name: "gspoit", args: [ $3, $5 ] }; }
	;

spchk
	: SPCHK "(" number ")"
		{ $$ = { type: "func", name: "spchk", args: [ $3 ] }; }
	;

spgetv
	: SPGETV "(" number "," number ")"
		{ $$ = { type: "func", name: "spgetv", args: [ $3, $5 ] }; }
	;

sphit
	: SPHIT "(" number ")"
		{ $$ = { type: "func", name: "sphit", args: [ $3 ] }; }
	| SPHIT "(" number "," number ")"
		{ $$ = { type: "func", name: "sphit", args: [ $3, $5 ] }; }
	;

sphitsp
	: SPHITSP "(" number "," number ")"
		{ $$ = { type: "func", name: "sphitsp", args: [ $3, $5 ] }; }
	;

sphitrc
	: SPHITRC "(" number "," number "," number "," number "," number ")"
		{ $$ = { type: "func", name: "sphitrc", args: [ $3, $5, $7, $9, $11 ] }; }
	| SPHITRC "(" number "," number "," number "," number "," number "," number "," number ")"
		{ $$ = { type: "func", name: "sphitrc", args: [ $3, $5, $7, $9, $11, $13, $15 ] }; }
	;

bgchk
	: BGCHK "(" number ")"
		{ $$ = { type: "func", name: "bgchk", args: [ $3 ] }; }
	;

bgmchk
	: BGMCHK "(" ")"
		{ $$ = { type: "func", name: "bgmchk", args: [] }; }
	| BGMCHK "(" number ")"
		{ $$ = { type: "func", name: "bgmchk", args: [ $3 ] }; }
	;

bgmgetv
	: BGMGETV "(" number "," number ")"
		{ $$ = { type: "func", name: "bgmgetv", args: [ $3, $5 ] }; }
	;

/* String functions */
stringfunction
	: str
		{ $$ = $1; }
	| inkey
		{ $$ = $1; }
	| chr
		{ $$ = $1; }
	| hex
		{ $$ = $1; }
	| mid
		{ $$ = $1; }
	| right
		{ $$ = $1; }
	| left
		{ $$ = $1; }
	| subst
		{ $$ = $1; }
	;

str
	: "STR$" "(" number ")"
		{ $$ = { type: "func", name: "str", args: [ $3 ] }; }
	;

inkey
	: "INKEY$" "(" ")"
		{ $$ = { type: "func", name: "inkey", args: [ $3 ] }; }
	;

chr
	: "CHR$" "(" number ")"
		{ $$ = { type: "func", name: "chr", args: [ $3 ] }; }
	;

hex
	: "HEX$" "(" number ")"
		{ $$ = { type: "func", name: "hex", args: [ $3 ] }; }
	| "HEX$" "(" number "," number ")"
		{ $$ = { type: "func", name: "hex", args: [ $3, $5 ] }; }
	;

mid
	: "MID$" "(" string "," number "," number ")"
		{ $$ = { type: "func", name: "mid", args: [ $3, $5, $7 ] }; }
	;

right
	: "RIGHT$" "(" string "," number ")"
		{ $$ = { type: "func", name: "right", args: [ $3, $5 ] }; }
	;

left
	: "LEFT$" "(" string "," number ")"
		{ $$ = { type: "func", name: "left", args: [ $3, $5 ] }; }
	;

subst
	: "SUBST$" "(" string "," number "," number "," string ")"
		{ $$ = { type: "func", name: "subst", args: [ $3, $5, $7, $9 ] }; }
	;


/* Numbers */

readnumvar
	: CSRX
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| CSRY
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| FREEMEM
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| VERSION
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| ERR
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| ERL
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| RESULT
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| TCHX
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| TCHY
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| TCHST
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| TCHTIME
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| MAINCNTH
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| MAINCNTL
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| TRUE
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| FALSE
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| CANCEL
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| FUNCNO
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| FREEVAR
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| KEYBOARD
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| SPHITNO
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| SPHITX
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| SPHITY
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| SPHITT
		{ $$ = { type: "sysvarnum", name: $1 }; }
	;

writenumvar
	: TABSTEP
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| ICONPUSE
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| ICONPAGE
		{ $$ = { type: "sysvarnum", name: $1 }; }
	| SYSBEEP
		{ $$ = { type: "sysvarnum", name: $1 }; }
	;

number
	: NUMB10
		{ $$ = { type: "number", base: 10, value: $1 }; }
	| NUMB2
		{ $$ = { type: "number", base: 2, value: $1.substr(2) }; }
	| NUMB16
		{ $$ = { type: "number", base: 16, value: $1.substr(2) }; }
	| NUMVAR %prec VARIABLE
		{ $$ = { type: "numvar", name: $1 }; }
	| "-" number %prec UMINUS
		{ $$ = { type: "minus", right: $2 }; }
	| number "+" number
		{ $$ = { type: "add", left: $1, right: $3 }; }
	| number "-" number
		{ $$ = { type: "sub", left: $1, right: $3 }; }
	| number "*" number
		{ $$ = { type: "mul", left: $1, right: $3 }; }
	| number "/" number
		{ $$ = { type: "div", left: $1, right: $3 }; }
	| number "%" number
		{ $$ = { type: "mod", left: $1, right: $3 }; }
	| number "AND" number
		{ $$ = { type: "and", left: $1, right: $3 }; }
	| number "OR" number
		{ $$ = { type: "or", left: $1, right: $3 }; }
	| number "XOR" number
		{ $$ = { type: "xor", left: $1, right: $3 }; }
	| number "==" number
		{ $$ = { type: "eq", left: $1, right: $3 }; }
	| number "!=" number
		{ $$ = { type: "neq", left: $1, right: $3 }; }
	| number ">" number
		{ $$ = { type: "gt", left: $1, right: $3 }; }
	| number "<" number
		{ $$ = { type: "lt", left: $1, right: $3 }; }
	| number ">=" number
		{ $$ = { type: "gte", left: $1, right: $3 }; }
	| number "<=" number
		{ $$ = { type: "lte", left: $1, right: $3 }; }

	| string "==" string
		{ $$ = { type: "streq", left: $1, right: $3 }; }
	| string "!=" string
		{ $$ = { type: "strneq", left: $1, right: $3 }; }
	| string ">" string
		{ $$ = { type: "strgt", left: $1, right: $3 }; }
	| string "<" string
		{ $$ = { type: "strlt", left: $1, right: $3 }; }
	| string ">=" string
		{ $$ = { type: "strgte", left: $1, right: $3 }; }
	| string "<=" string
		{ $$ = { type: "strlte", left: $1, right: $3 }; }

	| "NOT" number
		{ $$ = { type: "not", right: $2 }; }
	| "!" number
		{ $$ = { type: "invert", right: $2 }; }
	| "(" number ")" %prec PAREN
		{ $$ = $2; }
	| numarray %prec ARRAY
		{ $$ = $1; }
	| numberfunction
		{ $$ = $1; }
	| readnumvar %prec VARIABLE
		{ $$ = $1; }
	| writenumvar %prec VARIABLE
		{ $$ = $1; }
	;

readstrvar
	: "TIME$"
		{ $$ = { type: "sysvarstr", name: $1 }; }
	| "DATE$"
		{ $$ = { type: "sysvarstr", name: $1 }; }
	| "PRGNAME$"
		{ $$ = { type: "sysvarstr", name: $1 }; }
	| "PACKAGE$"
		{ $$ = { type: "sysvarstr", name: $1 }; }
	;

writestrvar
	: "MEM$"
		{ $$ = { type: "sysvarstr", name: $1 }; }
	;

string
	: STRING
		{ $$ = { type: "string", value: $1 }; }
	| STRVAR %prec VARIABLE
		{ $$ = { type: "strvar", name: $1 }; }
	| string "+" string
		{ $$ = { type: "concat", left: $1, right: $3 }; }
	| string "*" number
		{ $$ = { type: "repeat", left: $1, right: $3 }; }
	| "(" string ")" %prec PAREN
		{ $$ = $2; }
	| strarray
		{ $$ = $1; }
	| stringfunction
		{ $$ = $1; }
	| readstrvar
		{ $$ = $1; }
	| writestrvar
		{ $$ = $1; }
	;

variable
	: STRVAR %prec VARIABLE
		{ $$ = { type: "strvar", name: $1 }; }
	| NUMVAR %prec VARIABLE
		{ $$ = { type: "numvar", name: $1 }; }
	| numarray %prec ARRAY
		{ $$ = $1; }
	| strarray %prec ARRAY
		{ $$ = $1; }
	;

strvariable
	: STRVAR %prec VARIABLE
		{ $$ = { type: "strvar", name: $1 }; }
	| strarray %prec ARRAY
		{ $$ = $1; }
	;

numvariable
	: NUMVAR %prec VARIABLE
		{ $$ = { type: "strvar", name: $1 }; }
	| numarray %prec ARRAY
		{ $$ = $1; }
	;