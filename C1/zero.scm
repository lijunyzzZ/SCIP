(define (search f a b)
(let ((mid (average a b))   )
    (if (closeEnough a b ) mid
        (let ((midValue (f mid)))
        (cond 
            ((< midValue 0) (search f mid b))
            ((> midValue 0 ) (search f a mid))
            (else mid)
        ) ))))
(define (average a b)(/ (+ a b) 2))
(define (closeEnough a b) 
    (< (abs (- a b)) 0.0001))
(define (halfsearch f a b)
    (let( (v1 (f a)) 
            (v2 (f b)))
    (cond ((and (< v1 0)(> v2 0))(search f a b))
        
    ((and (> v1 0) (< v2 0))
        (search f b a))
    (else "error")
    )
    )
)
; (load "zero.scm")

; 计算一个过程的不动点

; f(x) = x;
(define tol 0.0001)
(define (findx f index)
    (define (enough v1 v2)
        (< (abs (- v1 v2)) tol))
    (define (try guess)
        (let ((next (f guess)))
        (if (enough next guess) next (try next)))
    )
    (try index)
)