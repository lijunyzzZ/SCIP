(load "83")
; 在我的理解里面unique-pairs应该返回的是序对的集合

(define (unique-pairs n)
    (flatmap 
        (lambda (i)
            (map 
            (lambda (j)
                (if (> i j) (list i j) '())
            )
            (eni 1 (- i 1))
            )
        ) 
        (eni 1 n)
    )
)
