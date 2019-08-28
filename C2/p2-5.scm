(define (exped base index)
    (if (= index 0) 1 (* base (exped ba(se (- index 1))))

)
(define (cons1 a b) (lambda (m) (m a b)))
(define (car1 z) (z (lambda (p q) (exped 2 p))))
(define (cdr1 z) (z (lambda (p q) (exped 3 q))))