(defun f (n) 
    (cond 
    ((< n 3) n)
    (t (+ (f (- n 1)) (f(- n 2)) (f (- n 3)))) 
    
))

(defun fun (n) 
    (if (< n 3) n
        (fun-iter 1 2 3 (- n 3)))
)

(defun fun-iter (a b c count)
    (if (= count 0) c
        (fun-iter b c (+ a b c) (- count 1)))
    )
(defun equalF (n) 
    (= (f n) (fun n))
)
(print (equalF 1))
(print (equalF 2))
(print (equalF 3))
(print (equalF 4))
(print (equalF 5))