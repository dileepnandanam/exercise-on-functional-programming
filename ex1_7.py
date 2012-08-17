def absolute(x):
	return(x<0 and -1*x or x)		

def good(cguess,pguess):
	return(absolute(cguess-pguess)<0.0001)

def improvguess(guess,x):
	return((guess+x/guess)/2)
	
def sqroot(pguess,cguess,x):
	return(good(pguess,cguess) and cguess or sqroot(cguess,improvguess(cguess,x),x))

