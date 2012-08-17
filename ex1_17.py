def star(a,b,c):
	return(a==0 and c or star(a-1,b,c+b))
