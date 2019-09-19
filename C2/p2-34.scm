(define (accumulate op innitial seq)
    (if (null? seq) innitial
    (op (car seq ) (accumulate op innitial (cdr seq)))
    )
)
(define (horber-eval x list1)
    (accumulate (lambda (x1 y1) (+ x1 (* y1 x))) 0 list1)
)
(define list2 (list 1 3 0))