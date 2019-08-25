(define (filacc combiner nullvalue condtion term a next b)
    (if (> a b) nullvalue 
        (if (condtion a) 
            (combiner (term a) (filacc combiner nullvalue condtion term (next a) next b))
          (filacc combiner nullvalue condtion term (next a) next b) 
    ))
)

(define (identity n) n)

(define (sum a b) (+ a b))
(define (product a b) (* a b))
; 求素数
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
; 求最小公约数

(define (gcd a b) 
    (if (= b 0) a (gcd b (remainder a b))))
(define (isGCD1 n) 
    (define (flag a ) (= (gcd a n) 1))
    (filacc product 1 flag identity 1 inc n))
