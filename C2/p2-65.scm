(load "p2-64")
(define (interactions-tree tree an)
    (list2tree2 (interactions-set (tree2list tree) (tree2list an)))
)
(define (union-tree tree an)
   (list2tree2 (union-set (tree2list tree) (tree2list an)))
)
;list2tree2 O(n)union-set 在2.62里面也是On