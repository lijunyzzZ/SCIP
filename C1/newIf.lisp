(defun new-if (predicate then-case else-case) 
    (cond (predicate then-case)
    (t else-case))
)
(print (new-if (= 2 3) 0 5) )
;; 根据这个应用序求值的顺序 newif的两个分支都会执行。lisp的解释器是加上是对为尾递归有优化的，但事实上在sqrt-iter里面使用的时候
;; sqrt-iter的单次结果会作为newif的参数，这导致了尾递归优化无法进行，所以就崩了。   