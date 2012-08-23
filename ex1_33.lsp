
(define (term n) (* n n))
(define (next n) (+ n 1))
(define (combiner a b) (+ a b))
(define (sumprim n)
	(define (filter a) (prime? a))
	(define (accum combiner term k next result filter)
	(if (> k n) 
		result
		(if (filter k) (accum combiner term (next k) next (combiner (term k) result) filter)
			(accum combiner term (next k) next result filter))))
	(accum combiner term 2 next 0 filter))


(define (combiner a b) (+ a b))
(define (sumprim n)
	(define (filter a) (= 1 (gcd a n)))
	(define (accum combiner term k next result filter)
	(if (> k n) 
		result
		(if (filter k) (accum combiner term (next k) next (combiner (term k) result) filter)
			(accum combiner term (next k) next result filter))))
	(accum combiner term 2 next 0 filter))
	

(define (gcd a b)
	(if (= b 0)
		a
		(gcd b (remainder a b))))

(define (smallest-divisor n)
	(find-divisor n 2))
	(define (find-divisor n test-divisor)
		(cond ((> (square test-divisor) n) n)
		((divides? test-divisor n) test-divisor)
		(else (find-divisor n (+ test-divisor 1)))))
		(define (divides? a b)
	(= (remainder b a) 0))

(define (prime? n)
	(= n (smallest-divisor n)))
