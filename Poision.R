#X-Liczba suksesow w okreslonym czasie , parametr lambda czestosc, intensywnosc  

n = 100 #teoretycznie nieskonczonosc
lambda=10 #czestosc intensywnosc


xi = 0:n
RPPois = data.frame(xi,pi = dpois(xi , lambda)) #rozklad prawdopodobenstwa "tabelka"
RPPois
plot(RPPois)

EX = lambda #wartosc oczekiwana
EX

D2X = lambda #wariancja
D2X


#zadanie 2 prawdopodobienstow awarii aparatury doswaidczalnej w jedynm doswaiczeniu  wynosi 0.1 
#doswiadczenia mozna prowprowadzac dowolna liczbe razy
#obliczyc prawdopodobienstwo ze pierwsza awaria zdarzy sie 
#A- w 5 doswiadczeniu 
# B -nie wczesniej niz w 3 doswiadczeniu
# prawdopodobienstwo ze pierewsza awaria zdarzy sie nie pozniej niz w k-tym doswaidczeniu wynosi 0.8 wyznaczyc "K"



#P(X=1)  w punkcie :sukces w piatym doswiadczeniu to 4 porazki
a=3
PA=dpois(a,lambda)
PA
#P(X<=b)=F(b) 
b=1
PB=ppois(b,lambda)
PB

#P(X>c)=1-P(X<=c)=1-F(c)  P(X>=4)=P(X>3)=1-F(3) sukces nie wczesniej niz w 3 doswiadczeniu , czyli 2,3,4,5.... poraze
#P(X>=2)=P(X>1)=1-F(1)

c=3
PC=1-ppois(c,lambda)
PC

#P(d<X<=e)=P(X<=e)-P(X<=d)=F(e)-F(d)  d<e  P(1<=X<=4)=P(0<X<=4)

d=0
e=4
PD=ppois(e,lambda)-ppois(d,lambda)
PD


#kwantyl - "z prawdopodobienstwa p1 uzyskam nie wiecej niz k sukcesow"

p1=0.75
k=qpois(p1,lambda)
k+1 #sukces w k+1, bo k-porazek

