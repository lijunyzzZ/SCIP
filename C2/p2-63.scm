(define (entry tree) (car tree))
(define (left-branch tree) (cadr tree))
(define (right-branch tree) (caddr tree))
(define (make-tree entry left right) (list entry left right))

(define treea (make-tree 7 (make-tree 3 (make-tree 1 '() '()) (make-tree 5 '() '())) (make-tree 9 '() (make-tree 11 '() '()))))
(define (tree2list1 tree)
(if (null? tree) '()
    (append (tree2list1 (left-branch tree)) (cons (entry tree) (tree2list1 (right-branch tree))))
)
)
(define (tree2list2 tree)
(define (iter tree res)
    (if (null? tree) res 
        (iter (left-branch tree) (cons (entry tree) (iter (right-branch tree) res)))
    )
)
(iter tree '())
)
; a> 执行结果没有区别  产生的都是中序遍历的list
; b> 迭代的方法增长的慢，不需要用额外的内存去生产list
