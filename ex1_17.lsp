(define (star a b c)
	(if (= a 0)
		c
		(star (- a 1) b (+ c b))))

