; 平面矩形的实现。
; 求周长
(define (perimterRec r)
    (let ((len (lenofrec r))
            (wid (widofrec r) ))
            
    (* 2 ( + len  wid))
    
    )
    )
(define (area r) 
    (let 
        (
            (len (lenofrec r))
            (wid (widofrec r))
        )
        (* len wid)
    )
)

; 用4条线段和两条线段实现完全没有区别。
(define (makeSegment x y)
    (cons x y)
)
(define (starSegment s) (car s) )
(define (endSegment s) (cdr s))
(define (makePoint x y) (cons x y ))
(define (x-point point) (car point))
(define (y-point point) (cdr point))
(define (midPoint s )
    (define start (starSegment s))
    (define end (endSegment s))
(makePoint 
    (/ ( + (x-point start) (x-point end)) 2)
    (/ (+ (y-point start) (y-point end))2)
)
)
(define (makeRec1 l1 l2 w1 w2)
    (cons (cons l1 l2) (cons w1 w1))
)
; 长度线段的数据结构
(define (lenofrecS r) (car (car r)))
(define (widofrecS r) (cdr (cdr r) ))
(define (lenofrec r) 
    (let ((lenS (lenofrecS r)))
        (let (
            (start (starSegment lenS))
            (end (endSegment lenS))
        )
           (abs (- (x-point start) (x-point end)))
        )
    )
 )

(define (widofrec r) 
    (let ((lenS (widofrecS r)))
        (let (
            (start (starSegment lenS))
            (end (endSegment lenS))
        )
           (abs (- (y-point start) (y-point end)))
        )
    )
 )

 (define x1 (makePoint 1 2 ))
 (define x2 (makePoint 4 2))
 (define y1 (makePoint 1 4))
 (define y2 (makePoint 4 4))
 (define l1 (makeSegment y1 y2))
 (define l2 (makeSegment x1 x2 ))
 (define w1 (makeSegment x1 y1))
 (define w2 (makeSegment x2 y2 ))
 (define rec (makeRec1 l1 l2 w1 w2))
