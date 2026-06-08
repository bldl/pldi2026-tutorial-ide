grammar Bean

entry Body:
    "{" discreteVarDecls+=VarDecl* "}"
    "{" linearVarDecls+=VarDecl* "}"
    content+=Expression*
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

Expression:
    Value
    | LetBinding
    | TensorDestructor
    | Case
    | Operation
;

Value:
    VariableReference
    |
    UnitValue
    |
    TensorPair
    |
    Injection
    |
    BangConstructor
;

UnitValue:
    val="()"
;

TensorPair:
    "("
    left=Value "," right=Value
    ")"
;

Injection:
    (kw="inl"|"inr") ty=Type val=Value
;

// TODO: variable references
VariableReference: 
    placeholder="TODO";

// TODO: bindings
LetBinding:
    placeholder="TODO";

// TODO: tensor destructors
TensorDestructor:
    placeholder="TODO";

// TODO: operations
Operation:
    placeholder="TODO";

// TODO: case expressions
Case:
    placeholder="TODO";

// TODO: "bang" constructors
BangConstructor:
    placeholder="TODO";

hidden terminal WS: /\s+/;
terminal ID: /[_a-zA-Z][a-zA-Z0-9_']*/;

hidden terminal ML_COMMENT: /\/\*[\s\S]*?\*\//;
hidden terminal SL_COMMENT: /\/\/[^\n\r]*/;