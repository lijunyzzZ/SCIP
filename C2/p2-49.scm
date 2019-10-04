(load "p-2-48")
; frame 是三个向量表示的
; 
(define (seqments->painter seqments-list)
    (lambda (frame)
        (for-each 
            (lambda (seqment)
            (draw-line 
                ((frame-coord-map frame) (start-seqments seqment))
                ((frame-coord-map frame)(end-seqments seqment))
            ))
        )
    )
)
; 给出两端边框的画家，
(define frame) ;框架
(define origin (frame-origin frame))
(define edge1 (frame-edge1 frame))
(define edge2 (frame-edge2 frame))
(define width1 (make-seqments origin (add-vect origin edge1)))
(define width2 (make-seqments (add-vect origin edge2) (add-vect origin (add-vect edge1 edge2))))
(define length1 (make-seqments origin (add-vect origin edge2)))
(define length2 (make-seqment (add-vect origin edge1) (add-vect origin (add-vect edge1 edge2))))
(seqments->painter (list width1 width2 length1 length2)) ;框架边框
(define diagonal1 (make-seqments (add-vect origin edge1) (add origin edge2)))
(define diagonal2 (make-seqments origin (add-vect origi n edge1 edge2)))
(seqment->painter (list diagonal1 diagonal2))
(define (half vect)
    (scale-vect o.5 vect)
)
;求出菱形的向量线段即可
(define line1 (make-seqments (add-vect origin (half edge2)) (add-vect origin (half edge1))))
(define line2 (make-seqments (add-vect origin (half edge1) )(add-vect origin (add-vect edge1 (half edge2)))))
(define line3 (add-vect origin (add-vect edge1 (half edge2))) (add-vect))