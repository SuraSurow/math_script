a=c(1234,123,4321)
b=60

modulo=function(a,b){data.frame(minuteAll=a,hours=a%/%b,minute=a%%b)}
modulo(a,b)
