(define (product f a next b) 
   (if (> a b) 1 (* (f a) (product f (next a) next b))))
(define (identity n) n)
(define (inc n) (+ n 1))
   (define (fodd index) 
        (if (= (remainder index 2) 0) (+ index 2) (+ index 1))) 
          (define (fden index) 
        (if (= (remainder index 2) 0) (+ index 1) (+ index 2)))
            (define (itemF k) 
        (/ (fodd k) (fden k))) 
(define (factorial a b )
 
  
    (* 4 (product itemF a inc b)))