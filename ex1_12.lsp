(define (p b d) 
	
	(if (or (= b d) (= b 1)) 
		1
		(if (> b d) 
			0
			(+ 
				(p (- b 1) (- d 1)) 
				(p b (- d 1))))))
