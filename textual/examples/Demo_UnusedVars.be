{(a: dnum) (v: (dnum, dnum))}
{(b: num) (w: (num, num))}

/* 
    Variables `v` and `b` are unused: 
    the language extension shows diagnostic information
    and provides quickfixes to remove the unused declarations.
*/

let (w0, w1) = w;
let y0 = dmul a w0;
let y1 = dmul a w1;
(y0, y1)
