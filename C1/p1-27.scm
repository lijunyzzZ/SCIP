; 检查 n是不是carmichal ：满足费马检查但是他不是素数。
(define (checkCarmichal n)
    (and (isAllFiema 2 n)  (not (prime n))))
; 给定一个最大的数找这个里面所有的carmichal数
(define (findCarmichal index n) 
    ; (if (= index n)
    ;     (display "end")
    ;     (else if (checkCarmichal index)
    ;       (  (display index)
    ;         (newline)
    ;         (findCarmichal (+ index 1) n) )
    ;        (findCarmichal(+ index 1) n) ))
    (define (printAndNext indexN num)
        (display indexN)
        (newline)
        (findCarmichal (+ indexN 1) num))
    (define (printEnd) (display "end") )
    (if (< index n)
        (if  (checkCarmichal index) (printAndNext index n) (findCarmichal (+ index 1) n)) #f))
    ; (cond 
    ;    (= index n) (printEnd )
    ;     ; ((checkCarmichal index) (printAndNext index n))
    ;     ; (else (findCarmichal (+ index 1) n))
        
    ;     ; (else (findCarmichal (+ index 1) n))
    ;     )
    ; )
; 判断一个数是不是素数
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
; 判断一个数是不是通过费马检查
; param n 
; param index 用来检查的a
(define (isFeima n index)
    (= (exped index n n) index))
 ; 判断n下所有的树都通过费马检查 
(define (isAllFiema a n)
    (cond ((= a n ) T)
    ((isFeima n a) (isFeima n (+ a 1)) )
    (else nil)
    )
 )
 ;求幂倒数
(define (exped base n medNumber)
    (cond ((= n 0) 1)
        ((isRem n 2) (square (remainder (exped base (/ n 2) medNumber) medNumber) ))
        (else (remainder (* base (exped base (- n 1) medNumber))medNumber))))