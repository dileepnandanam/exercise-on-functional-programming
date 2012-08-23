	
	
(define (gcd a b)
	(if (= b 0)
		a
		(gcd b (remainder a b))))

(define (make a b)
	
	(define (make-rat n d)
		(cons n d))
	(cond ((< b 0) (make-rat (* -1 a) (* -1 b)))
	(else (make-rat a b))))
