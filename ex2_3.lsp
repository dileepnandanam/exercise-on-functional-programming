(define (line x1 y1 x2 y2)
	(define start (cons x1 y1))
	(define end (cons x2 y2))
	(cons start end))
(define (start l) (car l))
(define (end l) (cdr l))
(define (xpoint p) (car p))
(define (ypoint p) (cdr p))

(define (printpoint p)
	(newline)
	(display "(")
	(display (xpoint p))
	(display ",")
	(display (ypoint p))
	(display ")")
	0)
	


(define (perimeter r) (* 2 (+ (length r) (breadth r))))
(define (area r) (* (length r) (breadth r)))

;list of points form
(define (rectlistofpoint o l b) 
	(let ((a o)
		(b (cons (+ (xpoint o) l) (ypoint o)))
		(c (cons (+ (xpoint o) l) (+ (ypoint o) b)))
		(d (cons (xpoint o) (+ (ypoint o) b)))) 
	(cons a (cons b (cons c d))) ))
;(define (length r) 
;	(abs (- (xpoint (car r)) (xpoint (car (cdr r))))))
;(define (breadth r)
;	(abs (- (ypoint (car r)) (ypoint (car (cdr (cdr r)))))))
	
;parametric form
(define (rectparametric a l b)
	(cons a (cons l b)))
(define (length r) 
	(car (cdr r)))
(define (breadth r)
	(cdr (cdr r)))
