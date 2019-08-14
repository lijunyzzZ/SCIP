(defun square (x) (* x x))
(defun sum-of-squares (x y) 
    (+ (square x) (square y)))

(print (square 3))
(print (sum-of-squares 3 4))