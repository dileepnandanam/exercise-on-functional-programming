(define (cons a b)
	(lambda (f) (f a b)))
(define (car df) (df (lambda (a b) (p 2 a))))
(define (cdr df) (df (lambda (a b) (p 3 a))))

(define (p a b)
	(define (itr result a b)
		(if (= b 0) 
			result
			(itr (* result a) a (- b 1))))
	(itr 1 a b))
