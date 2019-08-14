;; (defun abs2 (x) (cond ((> x 0 ) x)(t (- 0 x))))

;; (defun abs (x) (cond ((> x 0) x) (t (- 0 x))))

(defun abs2 (x) 
    (if (< x 0)(- x)
    x))
(print (abs2 1))
(print (abs2 0))
(print (abs2 -1))