(define (fr op innitial seq)
    (if (null? seq) innitial
    (op (car seq ) (fr op innitial (cdr seq)))
    )
)
(define (fl op innitial seq)
    (define (iter res rest)
        (if (null? rest) res
            (iter (op res (car rest)) (cdr rest))
        )
    )
    (iter innitial seq)
 )
 (define a (list 1 2 3))

; 6 error> (fl / 1 a)

; ;Value: 1/6

; 6 error> (fr list '() a)

; ;Value 2: (1 (2 (3 ())))

; 6 error> (fl list '() a)

; ;Value 3: (((() 1) 2) 3)

; 如果要保证结果一致，那么是作用于每个元素且是累加的，才会一样。