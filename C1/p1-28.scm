(define (square n) (* n n))

(define (isNontrivalSquareroot index n)
    (and 
    (not (= index 1)) 
    (not (= index (- n 1)))
    (= (remainder (square index) n) 1)))
(define (nozerorandom n) 
    (let(( r (random n)))
    (if (= r 0) (nozerorandom n) r )))
(define (exped base n medNumber)
    (cond ((= n 0) 1)
        ((isNontrivalSquareroot base n) 0)
        ((isRem n 2) (square (remainder (exped base (/ n 2) medNumber) medNumber) ))
        (else (remainder (* base (exped base (- n 1) medNumber))medNumber))))
(define (testMiller n)
    (let ((times (ceiling (/ n 2))))
    (test-iter n times)))

(define (test-iter n times)
    (cond 
    ((= times 0) #t)
    ((= (exped (nozerorandom n) (- n 1) n)n ) (test-iter n (- times 1)))
    (else #f)  )
    )

(define (isRem n x) (= (remainder n x) 0))