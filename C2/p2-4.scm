(define (cons1 x y) (lambda (m) (m x y)))
(define (car1 z ) (z (lambda (p q) p) ))
(define (cdr1 z) (z (lambda (p q) q)))