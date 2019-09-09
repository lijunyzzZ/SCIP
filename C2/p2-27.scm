(load "p2-18")
(define x (list (list 1 2)(list 3 4)))

(define (deepreverse items) 
    (define (iter list res)
        (cond 
            ((null? list) res )
            ((pair? (car list)) (iter (cdr list) (cons (deepreverse (car list)) res)))
            (else (iter (cdr list) (cons (car list) res)))
        ) 
    )
    (iter items '())
    )