(define (even a)
	(= (remainder a 2) 0))
			
(define (sdstar a b)
	(if (= a 1)
		b
		(if (even a)
			(sdstar (/ a 2) (* 2 b) )
			(+ b (sdstar (- a 1) b)))))
	

