#X-lLICZBA PORAZEK do osiagniecia 1 sukcesu, parametr p ,sukces n= k+1 

n = 30 #teoretycznie nieskonczonosc
p = 0.1 #prawdopodobienstwo sukcesu w 1 doswiadczeniu

xi = 0:n
RPGeom = data.frame(xi,pi = dgeom(xi , p)) #rozklad prawdopodobenstwa "tabelka"
RPGeom
plot(RPGeom)

EX =1/p #wartosc oczekiwana
EX

D2X = (1-p)/p^2 #wariancja
D2X


#zadanie 2 prawdopodobienstow awarii aparatury doswaidczalnej w jedynm doswaiczeniu  wynosi 0.1 
#doswiadczenia mozna prowprowadzac dowolna liczbe razy
#obliczyc prawdopodobienstwo ze pierwsza awaria zdarzy sie 
#A- w 5 doswiadczeniu 
# B -nie wczesniej niz w 3 doswiadczeniu
# prawdopodobienstwo ze pierewsza awaria zdarzy sie nie pozniej niz w k-tym doswaidczeniu wynosi 0.8 wyznaczyc "K"



#P(X=1)  w punkcie :sukces w piatym doswiadczeniu to 4 porazki
a=4
PA=dgeom(a,p)
PA
#P(X<=b)=F(b) 
b=1
PB=pgeom(b,p)
PB

#P(X>c)=1-P(X<=c)=1-F(c)  P(X>=4)=P(X>3)=1-F(3) sukces nie wczesniej niz w 3 doswiadczeniu , czyli 2,3,4,5.... poraze
#P(X>=2)=P(X>1)=1-F(1)

c=1
PC=1-geom(c,p)
PC

#P(d<X<=e)=P(X<=e)-P(X<=d)=F(e)-F(d)  d<e  P(1<=X<=4)=P(0<X<=4)

d=0
e=4
PD=pgeom(e,p)-pgeom(d,p)
PD


#kwantyl - "z prawdopodobienstwa p1 uzyskam nie wiecej niz k sukcesow"

p1=0.8
k=qgeom(p1,p)
k+1 #sukces w k+1, bo k-porazek
