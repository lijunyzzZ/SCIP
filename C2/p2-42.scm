; 八皇后问题
(load "83")
(define (queens board-size)
    (define (queen-cols k)
        (if (= k 0)
            (list empty-board)
            (filter 
                (lambda (positions) (safe? k positions))
                (flatmap
                    (lambda (res-of-queens)
                        (map (lambda (new-row)
                            (adjoin new-row k res-of-queens)
                        )
                        (eni 1 board-size)
                        )
                    )
                    (queen-cols (- k 1));queen-cols表示的第几行解法
                )
            )
        )
    )
    (queen-cols board-size)
)
; n皇后问题在lisp里面的解： list 1 2  3 4 5 6 第一个元素代表第n位的解。
(define empty-board '())

(define (adjoin new-row k res-of-queens)
    (cons new-row res-of-queens)
)
(define (safe? k positions)
    (iter-check (car positions) (cdr positions) 1)
)
(define (iter-check newrow restofqueens i)
    (if (null? restofqueens) #t 
        (let ((current (car restofqueens))) ;最主要是这里的逻辑。为啥减i加i就表示斜线重合，原因是，当差距只有一行的时候i为1 差距2行的时候就是2
            (if (or (= newrow current) 
                    (= newrow (+ i current))
                    (= newrow (- current i))
                )
                #f
                (iter-check newrow (cdr restofqueens) (+ i 1))
                )
        )
    )
)
(define a (list 6 3 1 7 5 8 2 4))