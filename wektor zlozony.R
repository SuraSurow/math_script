n=1:20
an=2^n #ciag n liczb
an
cyfry = an%%10 #moduko 10 wypisuje cyfry jednosci
summary(factor(cyfry)) #zlicza ile jest poszczegolnych elementow w wektorze cyfry
summary(factor(an%%7))#reszta z dziielenia przez 7 ma wynosic 0
summary(an)#wyznacza statytyki opisowe