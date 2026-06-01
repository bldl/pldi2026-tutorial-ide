{(a: (dnum, dnum)) (b: (num, num))}
{(c: dnum) (d: (num, num))}

/* 
    Variable `b` is linear but declared in discrete context.
    Variable `c` is discrete but declared in linear context.
    The language extension shows a diagnostic error message.
*/