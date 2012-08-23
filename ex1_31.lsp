(define (even n)(=(remainder n 2) 0))
(define (sumrec n)
	(define (term a) (if (even a)  (/ a (+ a 1)) (/ (+ a 1) a)))
	(define (next a) (+ 1 a))
	(define (s term k next l)
	(if (> k l) 
		1
		(* (term k) (s term (next k) next l ))))
	(s term 2 next n))
	
	

(define (sumitr n)
	(define (term a) (if (even a)  (/ a (+ a 1)) (/ (+ a 1) a)))
	(define (next a) (+ 1 a))
	(define (siter k result)
	(if (> k n)
		result
		(siter (next k) (* result (term k)))))
	(siter 2 1))
