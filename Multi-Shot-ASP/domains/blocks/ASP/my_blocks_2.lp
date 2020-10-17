#const n = 4.

block(a).
block(b).

holds(on(a,b),0).
holds(ontable(b),0).
holds(handempty,0).


goal(T) :- holds(ontable(a),T), step(T).

#show occur/2.