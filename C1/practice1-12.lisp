(defun value (row col) 
(cond ((> col row)(error "ill error"))
       ((or (= col 0) (= row col)) 1)
       (t 
       (+ (value (- row 1)(- col 1))
           (value (- row 1) col)))
)
)

(print (value 3 2))