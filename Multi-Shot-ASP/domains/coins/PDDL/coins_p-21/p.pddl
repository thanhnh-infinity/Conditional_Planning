(define (problem coins_10_10_5_31753)
  (:domain coins)
  (:objects e0 e1 e2 e3 e4 - elevator f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 - floor p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 - pos c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 - coin)
  (:init (and (dec_f f1 f0) (dec_f f2 f1) (dec_f f3 f2) (dec_f f4 f3) (dec_f f5 f4) (dec_f f6 f5) (dec_f f7 f6) (dec_f f8 f7) (dec_f f9 f8) (dec_p p1 p0) (dec_p p2 p1) (dec_p p3 p2) (dec_p p4 p3) (dec_p p5 p4) (dec_p p6 p5) (dec_p p7 p6) (dec_p p8 p7) (dec_p p9 p8) (shaft e0 p0) (oneof (in e0 f0) (in e0 f1) (in e0 f2) (in e0 f3) (in e0 f4) (in e0 f5) (in e0 f6) (in e0 f7) (in e0 f8) (in e0 f9)) (shaft e1 p2) (oneof (in e1 f0) (in e1 f1) (in e1 f2) (in e1 f3) (in e1 f4) (in e1 f5) (in e1 f6) (in e1 f7) (in e1 f8) (in e1 f9)) (shaft e2 p4) (oneof (in e2 f0) (in e2 f1) (in e2 f2) (in e2 f3) (in e2 f4) (in e2 f5) (in e2 f6) (in e2 f7) (in e2 f8) (in e2 f9)) (shaft e3 p6) (oneof (in e3 f0) (in e3 f1) (in e3 f2) (in e3 f3) (in e3 f4) (in e3 f5) (in e3 f6) (in e3 f7) (in e3 f8) (in e3 f9)) (shaft e4 p7) (oneof (in e4 f0) (in e4 f1) (in e4 f2) (in e4 f3) (in e4 f4) (in e4 f5) (in e4 f6) (in e4 f7) (in e4 f8) (in e4 f9)) (oneof (coin-at c0 f6 p0) (coin-at c0 f6 p1) (coin-at c0 f6 p2) (coin-at c0 f6 p3) (coin-at c0 f6 p4) (coin-at c0 f6 p5) (coin-at c0 f6 p6) (coin-at c0 f6 p7) (coin-at c0 f6 p8) (coin-at c0 f6 p9)) (oneof (coin-at c1 f9 p0) (coin-at c1 f9 p1) (coin-at c1 f9 p2) (coin-at c1 f9 p3) (coin-at c1 f9 p4) (coin-at c1 f9 p5) (coin-at c1 f9 p6) (coin-at c1 f9 p7) (coin-at c1 f9 p8) (coin-at c1 f9 p9)) (oneof (coin-at c2 f5 p0) (coin-at c2 f5 p1) (coin-at c2 f5 p2) (coin-at c2 f5 p3) (coin-at c2 f5 p4) (coin-at c2 f5 p5) (coin-at c2 f5 p6) (coin-at c2 f5 p7) (coin-at c2 f5 p8) (coin-at c2 f5 p9)) (oneof (coin-at c3 f2 p0) (coin-at c3 f2 p1) (coin-at c3 f2 p2) (coin-at c3 f2 p3) (coin-at c3 f2 p4) (coin-at c3 f2 p5) (coin-at c3 f2 p6) (coin-at c3 f2 p7) (coin-at c3 f2 p8) (coin-at c3 f2 p9)) (oneof (coin-at c4 f7 p0) (coin-at c4 f7 p1) (coin-at c4 f7 p2) (coin-at c4 f7 p3) (coin-at c4 f7 p4) (coin-at c4 f7 p5) (coin-at c4 f7 p6) (coin-at c4 f7 p7) (coin-at c4 f7 p8) (coin-at c4 f7 p9)) (oneof (coin-at c5 f4 p0) (coin-at c5 f4 p1) (coin-at c5 f4 p2) (coin-at c5 f4 p3) (coin-at c5 f4 p4) (coin-at c5 f4 p5) (coin-at c5 f4 p6) (coin-at c5 f4 p7) (coin-at c5 f4 p8) (coin-at c5 f4 p9)) (oneof (coin-at c6 f6 p0) (coin-at c6 f6 p1) (coin-at c6 f6 p2) (coin-at c6 f6 p3) (coin-at c6 f6 p4) (coin-at c6 f6 p5) (coin-at c6 f6 p6) (coin-at c6 f6 p7) (coin-at c6 f6 p8) (coin-at c6 f6 p9)) (oneof (coin-at c7 f5 p0) (coin-at c7 f5 p1) (coin-at c7 f5 p2) (coin-at c7 f5 p3) (coin-at c7 f5 p4) (coin-at c7 f5 p5) (coin-at c7 f5 p6) (coin-at c7 f5 p7) (coin-at c7 f5 p8) (coin-at c7 f5 p9)) (oneof (coin-at c8 f7 p0) (coin-at c8 f7 p1) (coin-at c8 f7 p2) (coin-at c8 f7 p3) (coin-at c8 f7 p4) (coin-at c8 f7 p5) (coin-at c8 f7 p6) (coin-at c8 f7 p7) (coin-at c8 f7 p8) (coin-at c8 f7 p9)) (oneof (coin-at c9 f5 p0) (coin-at c9 f5 p1) (coin-at c9 f5 p2) (coin-at c9 f5 p3) (coin-at c9 f5 p4) (coin-at c9 f5 p5) (coin-at c9 f5 p6) (coin-at c9 f5 p7) (coin-at c9 f5 p8) (coin-at c9 f5 p9)) (oneof (coin-at c10 f9 p0) (coin-at c10 f9 p1) (coin-at c10 f9 p2) (coin-at c10 f9 p3) (coin-at c10 f9 p4) (coin-at c10 f9 p5) (coin-at c10 f9 p6) (coin-at c10 f9 p7) (coin-at c10 f9 p8) (coin-at c10 f9 p9)) (at f0 p0)))
  (:goal (and (have c0) (have c1) (have c2) (have c3) (have c4) (have c5) (have c6) (have c7) (have c8) (have c9) (have c10)))
)
