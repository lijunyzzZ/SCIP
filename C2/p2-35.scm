(define (accumulate op innitial seq)
    (if (null? seq) innitial
    (op (car seq ) (accumulate op innitial (cdr seq)))
    )
)
(define (count-leaves t) 
    (accumulate + 0 (map (lambda (x) 1 )) (enumerate t))
)
;  enumerate 将tree转化成一个list
