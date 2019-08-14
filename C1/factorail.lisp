(defun factorial (n) 
    (if (= n 1) 1 (* n (factorial (- n 1))))
)
 
(defun factorial-iter (x count n)
    (if (> count n)
        x
        (factorial-iter (* x count) (+ count 1) n))
)
(print (factorial 8))
(print (factorial-iter 1 1 8))