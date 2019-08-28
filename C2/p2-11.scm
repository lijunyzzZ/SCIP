; 这里说的无非就是三种区间，组合起来总共9种

; 其实宁愿求min 和max 这样写心智负担太重了

(define (upper-interval x) (cdr x))
(define (lower-interval x) (car x))
(define (make-interval a b )(cons a b))
(define (sub-interval i1 i2)
    (make-interval
        (- (upper-interval i1) (lower-interval i2))
        (- (lower-interval i1) (upper-interval i1))
    )
)
(define (mul-interval a b) 
(let (
    (u1 (upper-interva a))
    (u2 (upper-interva b))
    (l1 (lower-interva a))
    (l2 (lower-interva b))
    )
(cond 
    ((and (>= l1 0) (>= l2 0)) (make-interval (* l1 l2) (* u1 u2)))
    ((and (>= l1 0) (< l2 0) (>= u2 0) (make-interval (* u1 l2) (* u1 u2))))
    ((and (>= l1 0) (<= u2 0))(make-interval (* u1 l2) (* l1 u2)))
    ((and (< l1 0) (>= u1 0)(> l2 0))(make-interval (* l1 u2)(*u1 u2)))
    ((and (< l1 0) (>= u1 0)(< l2 0)(>= u1 0))(make-interval (*(min l1 l2)(max u1 u2)) (max (* u1 u2)(* l1 l2))))
    ((and (< l1 0) (>= u1 0))(< u1 0)(make-interval (* u1 l2) (* l1 l2)))
    ((and (< u1 0) (>= l1 0))(make-interval (* l1 u2) (* u1 l2)))
    ((and (< u1 0) (< l2 0) (>= u2 0))(make-interval (* l1 u2) (* l1 l2)))
    ((and (< u1 0) (< u2 0) )(make-interval (* u1 u2) (* l1 l2)))
)
)
)