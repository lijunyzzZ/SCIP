; 生成 i-j的序对满足 i+j 为奇数
; 枚举 i - j 的list
(define (eni l h)
    (if (> l h) '() (cons low (eni (+ l 1) h)))
)
(define (prime n) (= (findDivisor n 2) n))
(define (square x) (* x x))
(define (isRem n x) (= (remainder n x) 0))
(define (findDivisor n index)
(cond 
   ( (> (square index) n) n)
   ((isRem n index) index)
   (else (findDivisor n (+ index 1)))
)
)