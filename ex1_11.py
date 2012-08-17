def frecursive(n):
	return((n>=3 and frecursive(n-1)+2*frecursive(n-2)+3*frecursive(n-3)) or n)


def fitrative(n):
	return(n<3 and n or fi(0, 1, 2, n))
	
def fi(n1, n2, n3, count):
	return((count<3) and n3 or fi(n2, n3, n3+2*n2+3*n1, count-1))
