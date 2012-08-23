(define (sumrec n)
	(define (accum combiner term k next l)
	(if (> k l) 
		1
		(combiner (term k) (accum combiner term (next k) next l ))))
	(accum combiner term 2 next n))

(define (sumitr n)
	(define (accum combiner term k next result)
	(if (> k n) 
		result
		(accum combiner term (next k) next (combiner result (term k)) )))
	(accum combiner term 2 next n))

