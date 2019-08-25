
(define (cont-frac n d  k)
    (define (item index)
        (if (= index k)
            (/ (n index)(d index))
            (/ (n index) (+ (d index) (item (+ index 1))))))
    (define (item-iter index reslut)
        (if (= index 0)
            reslut
            (item-iter (- index 1)(/(n index) (+ (d index)reslut))))
    )
    (item-iter (- k 1) (/(n k )(d k))))

(define (f n) 1.0)
(define (d index)
    (cond 
        ((< index 3) index)
        ((and (> index 4) (= (remainder (- index 2) 3) 0) (+(* 2 (/ (- index 2) 3 )) 2)))
        (else 1))
    )
