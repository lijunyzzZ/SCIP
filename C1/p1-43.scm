
(define (compose f g) (lambda (x ) (f (g x))))
(define (inc n)(+ n 1))
(define (square n) (* n n))
(define (repeat f k)
    (cond 
    ((= k 1) f) 
    ((= 0 (remainder k 2)) (repeat (compose f f) (/ k 2)))
    (else (f (repeat f (- k 1))))
    )
    )