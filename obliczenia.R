#1 zadanie a
a=((-2*58)/(2^5))+log(2187, 3)



#1 zad b
b=sqrt(4) * sqrt((5^2) + (sqrt(10))) * 2^(1/3) * log(5^2+3^2, 2) 


#1 zad c

c = (sin((pi)/(4)))/(cos(-1.3))

#1 zad d

d = abs( (-5.4) + (2 ^ -2))


#zadanie 2

# A*B

m=c(1.5,-2,2,2,3,9,3,-1,1)
A=matrix(m,3,3)
A

n=c(1,2,-2,2.5,-1,3,3,6,-1)
B=matrix(n,3,3)
B

Ya=A %*% B
Ya

# B*A

yB=B %*% A
yB

# A^-1

yC = solve(A)
yC

# B^-1

yD = solve(B)
yD

# A^T

yE = t(A)
yE

# B^T

yF = t(B)
yF

# det A

yG = det(A)
yG 

# det B
yH = det(B)
yH

# [a1.]*[b.2]

yK=A[1,]%*%B[,2]
yK