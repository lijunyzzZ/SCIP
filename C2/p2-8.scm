
(define (upper-interval x) (car x))
(define (lower-interval x) (cdr x))
(define (make-interval a b )(cons a b))
(define (sub-interval i1 i2)
    (make-interval
        (- (upper-interval i1) (lower-interval i2))
        (- (lower-interval i1) (upper-interval i1))
    )
)