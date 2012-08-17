def star(a,b):
	return(a==1 and b or a%2==0 and star(a/2,2*b) or b+star(a-1,b))
