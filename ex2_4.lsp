(define (cons a b)
	(lambda (f) (f a b)))
(define (car df) (df (lambda (a b) a)))
(define (cdr df) (df (lambda (a b) b)))
