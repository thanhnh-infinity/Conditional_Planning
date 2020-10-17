#const n = 4.

block(a).
block(b).
block(c).

holds(on(c,b),0).
holds(ontable(a),0).
holds(ontable(b),0).
holds(handempty,0).


goal(T) :- holds(on(a,b),T), step(T).

#show occur/2.

check_neg_clear(X,0) :- holds(neg(clear(X)),0).

%#show holds/2.