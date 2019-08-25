
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
(define dx 0.00001)
(define (smooth f ) (lambda (x) (/ 3 (f (+ dx x) ) (f x ) (f (- x dx)))) )
; 调用repeat即可