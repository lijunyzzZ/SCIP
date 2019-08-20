;; fast求幂递归
(defun even? (n) (= (rem n 2) 0))
(defun square (x) (* x x))
(defun fast (b n) 
    (cond ((= n 0) 1)
        ((even? n) (square (fast b (/ n 2))))
        (t (* b (fast b (- n 1))))
        )
        )
(print (fast 2 8))

(defun fast-iter (b b2 r count)
    (cond 
        ((>= count 2) (fast-iter b b2 (* b2 r) (- count 2)))
        ((= count 1) (* b r))
        ((= count 0) r)
    )
 )
(print (fast-iter 2 4 1 8))