#zadanie 1 Prawdopowobienstwo wyprodukowania uszkodzonego prodecora wynosi 0.15
#Niech zmienna X oznacza liczbe procesorow  uszkodonych w partwi liczacej 10

#rozklady Dwumianowy-binom  | geometryczby - geom | Poisiona - pois

n = 10
p = 0.15 #prawdopodobienstwo sukcesu w 1 doswiadczeniu

xi = 0:n
RPDw = data.frame(xi,pi = dbinom(xi,n,p)) #rozklad prawdopodobenstwa "tabelka"
RPDw
plot(RPDw)

EX = n*p #wartosc oczekiwana
EX

D2X = n*p*(1-p) #wariancja
D2X


#zadanie 2 prawdopodobienstow awarii aparatury doswaidczalnej w jedynm doswaiczeniu  wynosi 0.1 
#doswiadczenia mozna prowprowadzac dowolna liczbe razy
#obliczyc prawdopodobienstwo ze pierwsza awaria zdarzy sie 
#A- w 5 doswiadczeniu 
# B -nie wczesniej niz w 3 doswiadczeniu
# prawdopodobienstwo ze pierewsza awaria zdarzy sie nie pozniej niz w k-tym doswaidczeniu wynosi 0.8 wyznaczyc "K"



#P(X=a) w punkcie 
a=3
PA=dbinom(a,n,p)
PA
#P(X<=b)=F(b) w przedziale P(X<2)=P(X<=1)=F(1)
b=1
PB=pbinom(b,n,p)
PB

#P(X>c)=1-P(X<=c)=1-F(c)  P(X>=4)=P(X>3)=1-F(3)

c=3
PC=1-pbinom(c,n,p)
PC

#P(d<X<=e)=P(X<=e)-P(X<=d)=F(e)-F(d)  d<e  P(1<=X<=4)=P(0<X<=4)

d=0
e=4
PD=pbinom(e,n,p)-pbinom(d,n,p)
PD


#kwantyl - "z prawdopodobienstwa p1 uzyskam nie wiecej niz k sukcesow"

p1=0.75
k=qbinom(p1,n,p)
k


