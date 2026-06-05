grammar Bean

entry Body:
    "{" discreteVarDecls+=VarDecl* "}"
    "{" linearVarDecls+=VarDecl* "}"
    content+=Expression* // TODO: remove for tutorial
;

IdentifierDecl:
    name=ID;

VarDecl:
    "(" ident=IdentifierDecl ":" ty=Type ")"
;

Type:
    NumericType
    |
    ProductType
    |
    UnitType
;

NumericType:
    kw=("num"|"dnum")
;

ProductType:
    ('(' tys+=Type (',' tys+=Type)* ')');
     
UnitType:
    val="()"
;

// TODO: `let x = e;` `dlet x = e;`

Expression:
    TensorDestructor
    |
    Value
    |
    LetBinding
    |
    Case
    |
    Operation
;

Value:
    UnitValue
    |
    VariableReference
    |
    TensorPair
    |
    Injection
    |
    BangConstructor
;

UnitValue:
    val="(" ")"
;

VariableReference:
    ref=[IdentifierDecl:ID]
;

TensorPair:
    "("
    left=Value "," right=Value
    ")"
;

Injection:
    (kw="inl"|"inr") ty=Type val=Value
;

BangConstructor:
    "!" ref=VariableReference
;

TensorDestructor:
    kw=("let"|"dlet")
    "("
    id1=IdentifierDecl "," id2=IdentifierDecl
    ")"
    "="
    val=Value
    ";"
;

Case:
    "case" val=Value "of"
    "{"
        "inl" "(" leftName=IdentifierDecl ")" "=>"
        (leftBranch+=Expression)+
        "|"
        "inr" "(" rightName=IdentifierDecl ")" "=>"
        (rightBranch+=Expression)+
    "}"
;

LetBinding:
    kw=("let"|"dlet")
    name=IdentifierDecl
    (":" ty=Type)?
    "="
    expr=Expression
    ";"
;

Operation:
    (op="add"|"mul"|"sub"|"div"|"dmul")
    refLeft=VariableReference
    refRight=VariableReference
;

hidden terminal WS: /\s+/;
terminal ID: /[_a-zA-Z][a-zA-Z0-9_']*/;

hidden terminal ML_COMMENT: /\/\*[\s\S]*?\*\//;
hidden terminal SL_COMMENT: /\/\/[^\n\r]*/;