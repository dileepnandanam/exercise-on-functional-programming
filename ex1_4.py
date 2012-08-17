def increment(i):
	return i+1
def decrement(i):
	return i-1
	
def alter(i):
	return(i<0 and increment or decrement)(i)
