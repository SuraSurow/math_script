A=matrix(c(3,2,-1,3,4,-1,-1,2,2),3,3)  #kolumnami wpisujemy~!!!
A
b=c(2,3,1)
x=solve(A)%*%b
x