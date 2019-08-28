(define x (cons 1 2))

(define y (cons 1 2))

(define z (cons x y))

; 构建有理数

(define (makeRat x y ) (cons x y))
; 取出有理数的分子
(define (number r) (car r))
; 取出有理数的分母
(define (denmo r) (cdr r))

(define testRat (makeRat 1 2))

; 输出一个有理数

(define (printRat r )
    (newline)
    (display (number r))
    (display "/")
    (display (denmo r)))

; 定义加减乘数
(define (addRat x y)
    (makeRat (+ (* (number x) (denmo y)) (* (denmo x) (numebr y))) (* (denmo x) (denmo y))))
(define (subRat x y)
    (makeRat 
        (- (* (number x) (denmo y)) (* (denmo x)(number y)))
        (* (denmo x) (denmo y))   
    )
)
(define (mulRat x y) 
    (makeRat
        (* (number x) (number y))
        (* (denmo x) (denmo y))
    )
)
(define (divRat x y)
    (makeRat 
        (* (number x)(denmo y))
        (* (denmo x) (number y))
    )
)
(define (equalRat x y) 
    (= 
        (* (number x) (denmo y))
        (* (denmo x) (number y))
    )
)
(define var1 (makeRat 1 2))
(define var2 (makeRat 1 3))
(define var3 (makeRat 1 4))