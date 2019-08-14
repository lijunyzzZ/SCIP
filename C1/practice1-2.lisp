;; 1.1
(defvar a 3)
(defvar b (+ a 1))
(print (+ a b (* a b)))

(print (= a b))
(print a)
(print b)
(print (if (and (> b a) (< b (* a  b)))
    b a
))
(print (cond ((= a 4) 6)
        ((= b 4)(+ 6 7 a))
        (else 25)))

(print (+ 2 (if (> b a) b a)))
(print 
    (* (cond ((> a b)a) ((< a b)b) (else -1)) (+ a 1))
)