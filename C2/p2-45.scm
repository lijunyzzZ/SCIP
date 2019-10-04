
(define (up-split painter n)
    (if (= n 0)
        painter
        (let ((smaller (up-split painter (- n 1))))
            (blow painter (beside smaller smaller))
        )
    )
)
(define (split f1 f2);返回的应该是一个方法传入的是两个值，painter和n，
    (lambda (p n)
        (if (= n 0)
        p
        (let ((smaller ((split f1 f2) p (- n 1))))
            (f1 p (f2 smaller smaller))
        )
    )
    )
)