(define (below p1 p2);定义一个上下画画的过程
    (let ((ptop (transform p2
            (make-vect 0.5 0)
            (make-vect 1 0)
            (make-vect 0.5 1)
    ))
    (pb (transform p1
        (make-vect 0 0 )
        (make-vect 0.5 0)
        (make-vect 0 1)
    ))
    )
    (lambda (frame) (ptop frame) (pb frame)))
)
(load "p2-50")
(define (below p1 p2)
    (retate90 (beside (retate90 p1) (retate90 p2)))
)