(define zero  (lambda (f) (lambda (x) x)))
(define (add-1 n) (lambda (f) (f ((n f) x))))
(define (square x) (* x x))
; 此题目定义的 one two 就是 常规意义上的 1 2

; 固有 one = (add-1 zero)
(define one (add-1 zero))