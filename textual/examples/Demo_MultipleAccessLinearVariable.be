{(a: dnum)}
{(b: num)}

/*
    Linear variable `b` can only be accessed once.
    The language extension shows a diagnostic error message.
*/

let c = dmul a b;
let d = dmul c b;
d
