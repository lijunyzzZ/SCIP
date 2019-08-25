
(define (compose f g) (lambda (x ) (f (g x))))
(define (inc n)(+ n 1))
(define (square n) (* n n))
(define (repeat f k)
   (if (= k 1)
    f
    (compose f (repeat f (- k 1)))
    ) 
    )
; (define dx 0.00001)
; (define (smooth f ) (lambda (x) (/ 3 (f (+ dx x) ) (f x ) (f (- x dx)))) )
; 调用repeat即可
; 求base^n
; (define (expt  base n)
;         (if (= n 0) 1
;     ((repeat (lambda (x) (* base x)) n) 1)))
    (define (expt base n)
    (if (= n 0)
        1
        ((repeat (lambda (x) (* base x)) n) 1)))

; 平均阻尼
(define (avgdamp f) (lambda (x) (avg x (f x) )))
(define (avg a b) (/ (+ a b) 2))
; n次阻尼
(define (avgdampn f n) ((repeat avgdamp n) f))
; 求n次方根
; (define (nroot n dampTimes)
;     (lambda (x) 
;         (findx (avgdampn (lambda (y) (/ x (expt y (- n 1)))) dampTimes)1.0)
;     ))
(define (nroot n damp-times)
    (lambda (x)
        (findx 
            (avgdampn
                (lambda (y) 
                    (/ x (expt y (- n 1)))) 
                damp-times)
            1.0)))
(define sqrt (nroot 2 1))
(define cube-root (nroot 3 1))


(define (lg n) (/ (log n) (log 2)))
(define eeee (nroot 100 (floor (lg 100))))