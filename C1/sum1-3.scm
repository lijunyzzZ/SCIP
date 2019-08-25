(define (sum term a next b)
(if (> a b) 0 (+ (term a) (sum term (next a) next b))))
(define (inc n) (+ n 1))
(define (cube n) (* n n n))
(define (identity x ) x )

(define (piterm x) (/ 1.0 (* x (+ x 2))))
(define (pinext x)(+ x 4))
(define (pisum b) (sum piterm 1 pinext 1000) )

(define (intergral f a b dx)
    (define (add-dx x) (+ x dx))
    (* (sum f (+ a (/ dx 2.0)) add-dx b) dx))