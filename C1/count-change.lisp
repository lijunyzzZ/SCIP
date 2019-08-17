;; 换零钱：
;; 基本解法是：
;; 在一个可选范围内不断缩小范围，例如缩小钱的种类，表示接下来的change里面只使用下面的几种钱比种类，如果是减少的是钱的总价值，那么就是继续使用当前的钱种去计算。

(defun count-change (n)
    (cc n 5))
(defun cc (n numbers-of-conins)
    (cond ((= n 0) 1)
     ( (or (< n 0) (= numbers-of-conins 0)) 0)
    (t (+ (cc n (- numbers-of-conins 1)) (cc (- n (getConis numbers-of-conins)) numbers-of-conins)))
    )
)
(defun getConis (n) 
(cond   ((= n 1) 1)
        ((= n 2) 5)
        ((= n 3) 10)
        ((= n 4) 25)
        ((= n 5) 50)
))
(print (count-change 150))