;; 求一个数的立方根。
(defun cubic (x) (* x x x))
;; 求一个数的平方根
(defun square (x) (* x x))

;; 提升一个更好的精确值。
(defun improve (y x) 
    (/ (+(/ x (square y)) (+ y y))3)
)
(defun enough (y x)
    (< (abs (- (cubic y) x)) 0.001)
)
(defun cubic-iter (y x) 
    (if (enough y x) y
     (cubic-iter (improve y x) x))
)
(print (float (cubic-iter 3 4)))