(defun double (x) (+ x x))
(defun havle (x) (/ x 2))

(defun fastiter (a b res)
    (cond 
    ((= a 0)res)
    
    ((= (rem a 2) 0) (fastiter (havle a) (double b)  res))
    (t (fastiter(- a 1) b (+ res b)))
  ))
  (print (fastiter 3 3 0))