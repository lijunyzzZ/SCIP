(define (accumulate op innitial seq)
    (if (null? seq) innitial
    (op (car seq ) (accumulate op innitial (cdr seq)))
    )
)
(define (accMap p seq)
    (accumulate 
        (lambda (x y)
            (cons  (p x) y)
        )
        '() seq
    )
)
(define (square x) (* x  x))
(define list1 (list 1 2 3))
(define list2 (list 4 5 6))
(define (accAppend seq1 seq2)
    (accumulate cons seq2 seq1)
)
(define (acclength seq) 
    (accumulate 
    (lambda (x y) (+ 1 y))
    0 seq)
)