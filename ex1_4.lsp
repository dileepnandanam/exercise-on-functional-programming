(define (increment i) (+ i 1))
(define (decrement i) (- i 1))

(define (alter i)
	((if (< i 0) 
		increment
		decrement) i
	)
	
)
