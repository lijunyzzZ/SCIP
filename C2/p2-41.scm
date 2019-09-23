; 获取 ijk的有序三元组
(load "83")
(define (pairs n)
    (flatmap 
        (lambda (i)
            (map 
                (lambda (j)
                (map
                    (lambda (k)
                        (if (and (not (= i j)) (not (= j k)) (not (= k i))) (list i j k) '())
                    )
                    (eni 1 (- j 1))
                )
            )
            (eni 1 (- i 1))
            )
        ) 
        (eni 1 n)
    )
)
(define (uq-pairs n)
    (filter (lambda (x) (not (null? x))) (pairs n))
)