DECLARE SUB valitseseura ()
DECLARE SUB lataus ()
DECLARE SUB dtaulu1 ()
DECLARE SUB etaulu1 ()
DECLARE SUB sijomm ()
'$STATIC
DEFSTR L
'$INCLUDE: 'zzz.bas'
RANDOMIZE TIMER

DEFSNG L
SUB alku
CLS
PRINT
COLOR 15, 0: PRINT "                         MASO SPORTS ESITT��: MHM'97"
PRINT
COLOR 14, 0: PRINT "Suunnittelu & Ohjelmointi : Mikko Forsstr�m"
COLOR 2, 0: PRINT "                Grafiikka : Mikko Forsstr�m"
PRINT : COLOR 15, 0
PRINT "Laadunvalvonta   : Teemu Nevalainen       Sami Helen      "
PRINT "                   A-P Nevalainen         Antti Kettunen  "
PRINT : COLOR 9, 0
PRINT "V1.2 betatestaus : Henri Hokkanen   Jussi Kniivil�    Tony Herranen"
PRINT "                   Antti Laakso     Markus L�ms�      Tomi Salmi"
PRINT "                   Aleksi Ursin     Ilmari Sandelin"
PRINT
COLOR 6, 0: PRINT "Erikoiskiitokset: Sami Ritola"
COLOR 11, 0: PRINT "Kuvank�sittelyrutiinit (C) 1997 Brilliants Software"
PRINT
COLOR 13, 0: PRINT "MHM'97 DELUXE EDITION v2.0"
COLOR 12, 0: PRINT "FREEWARE! FREEWARE! FREEWARE! FREEWARE!"
PRINT
COLOR 10, 0: PRINT "OMISTETTU LABRADORINNOUTAJA ROOPEN (17.8.1983 - 19.12.1997) MUISTOLLE"
PRINT
COLOR 9, 0: PRINT "Maso Software Hockey Manager, MHM '97 (C) 1996,1997,1998 Maso Software"
COLOR 3, 0: INPUT "Kirjoita nimesi, manageri...", nimi$
IF nimi$ = "" THEN nimi$ = "Pelcolm X"
PRINT
COLOR 15, 0: INPUT "1=LATAA VANHA TILANNE,Return=UUSI PELI    ", yucca
IF yucca = 1 THEN lataus
END SUB

DEFSTR L
SUB divmt1
dgf(a) = dgf(a) + gl(a): dga(a) = dga(a) + gl(b): dgf(b) = dgf(b) + gl(b): dga(b) = dga(b) + gl(a)
dgf(c) = dgf(c) + gl(c): dga(c) = dga(c) + gl(d): dgf(d) = dgf(d) + gl(d): dga(d) = dga(d) + gl(c)
dgf(e) = dgf(e) + gl(e): dga(e) = dga(e) + gl(f): dgf(f) = dgf(f) + gl(f): dga(f) = dga(f) + gl(e)
dgf(g) = dgf(g) + gl(g): dga(g) = dga(g) + gl(h): dgf(h) = dgf(h) + gl(h): dga(h) = dga(h) + gl(g)
dgf(i) = dgf(i) + gl(i): dga(i) = dga(i) + gl(j): dgf(j) = dgf(j) + gl(j): dga(j) = dga(j) + gl(i)
dgf(k) = dgf(k) + gl(k): dga(k) = dga(k) + gl(m): dgf(m) = dgf(m) + gl(m): dga(m) = dga(m) + gl(k)
IF gl(a) > gl(b) THEN pd(a) = pd(a) + 2: vi(a) = vi(a) + 1: ho(b) = ho(b) + 1
IF gl(a) = gl(b) THEN pd(a) = pd(a) + 1: pd(b) = pd(b) + 1:  dr(a) = dr(a) + 1: dr(b) = dr(b) + 1
IF gl(a) < gl(b) THEN pd(b) = pd(b) + 2: vi(b) = vi(b) + 1: ho(a) = ho(a) + 1
IF gl(c) > gl(d) THEN pd(c) = pd(c) + 2: vi(c) = vi(c) + 1: ho(d) = ho(d) + 1
IF gl(c) = gl(d) THEN pd(c) = pd(c) + 1: pd(d) = pd(d) + 1:  dr(c) = dr(c) + 1: dr(d) = dr(d) + 1
IF gl(c) < gl(d) THEN pd(d) = pd(d) + 2: vi(d) = vi(d) + 1: ho(c) = ho(c) + 1
IF gl(e) > gl(f) THEN pd(e) = pd(e) + 2: vi(e) = vi(e) + 1: ho(f) = ho(f) + 1
IF gl(e) = gl(f) THEN pd(e) = pd(e) + 1: pd(f) = pd(f) + 1:  dr(e) = dr(e) + 1: dr(f) = dr(f) + 1
IF gl(e) < gl(f) THEN pd(f) = pd(f) + 2: vi(f) = vi(f) + 1: ho(e) = ho(e) + 1
IF gl(g) > gl(h) THEN pd(g) = pd(g) + 2: vi(g) = vi(g) + 1: ho(h) = ho(h) + 1
IF gl(g) = gl(h) THEN pd(g) = pd(g) + 1: pd(h) = pd(h) + 1:  dr(g) = dr(g) + 1: dr(h) = dr(h) + 1
IF gl(g) < gl(h) THEN pd(h) = pd(h) + 2: vi(h) = vi(h) + 1: ho(g) = ho(g) + 1
IF gl(i) > gl(j) THEN pd(i) = pd(i) + 2: vi(i) = vi(i) + 1: ho(j) = ho(j) + 1
IF gl(i) = gl(j) THEN pd(i) = pd(i) + 1: pd(j) = pd(j) + 1:  dr(i) = dr(i) + 1: dr(j) = dr(j) + 1
IF gl(i) < gl(j) THEN pd(j) = pd(j) + 2: vi(j) = vi(j) + 1: ho(i) = ho(i) + 1
IF gl(k) > gl(m) THEN pd(k) = pd(k) + 2: vi(k) = vi(k) + 1: ho(m) = ho(m) + 1
IF gl(k) = gl(m) THEN pd(k) = pd(k) + 1: pd(m) = pd(m) + 1:  dr(k) = dr(k) + 1: dr(m) = dr(m) + 1
IF gl(k) < gl(m) THEN pd(m) = pd(m) + 2: vi(m) = vi(m) + 1: ho(k) = ho(k) + 1
END SUB

SUB divott1
CLS
COLOR 13, 0: PRINT "JA KIERROKSEN"; kr; "OTTELUT 1. DIVISIOONASSA OVAT:"
PRINT : COLOR 12, 0
PRINT ld(a); " - "; ld(b)
PRINT ld(c); " - "; ld(d)
PRINT ld(e); " - "; ld(f)
PRINT ld(g); " - "; ld(h)
PRINT ld(i); " - "; ld(j)
PRINT ld(k); " - "; ld(m)
PRINT : COLOR 8, 0
INPUT "Paina RETURN kun haluat n�hd� tulokset!", yucca$
END SUB

SUB divtaulukko
 dtaulu1
CLS
COLOR 14, 0: PRINT "1. DIVISIOONAN TILANNE KIERROKSEN"; kr - 1; "j�lkeen:"
viiva = 0
FOR yy = 1 TO 12
COLOR 8: LOCATE 9, 1: PRINT "----------------------------------------------": viiva = viiva + 1
IF sd(yy) < 7 THEN COLOR 13, 0: viiva = 0 ELSE COLOR 5, 0: viiva = 1
LOCATE sd(yy) + 2 + viiva, 2: PRINT ld(yy); kr - 1; vi(yy); dr(yy); ho(yy), dgf(yy); "-"; dga(yy), pd(yy)
NEXT yy
IF sd(u) < 7 AND sarja = 2 THEN viiva = 0
IF sd(u) > 6 AND sarja = 2 THEN viiva = 1
IF sarja = 2 THEN COLOR 15, 0: LOCATE sd(u) + 2 + viiva, 2: PRINT ld(u); kr - 1; vi(u); dr(u); ho(u), dgf(u); "-"; dga(u), pd(u)
COLOR 8, 0
IF kr = 23 THEN LOCATE 17, 2: PRINT "Puolet sarjasta pelattu!!"
IF kr > 34 AND kr < 45 THEN LOCATE 17, 2: PRINT "En�� "; 45 - kr; " kierrosta j�ljell�!"
IF kr = 45 THEN LOCATE 17, 2: PRINT "Runkosarja on pelattu!"
LOCATE 18, 1: INPUT yucca$
enderoo:
END SUB

SUB dtaulu1
FOR x = 1 TO 12
sd(x) = 1
ero(x) = dgf(x) - dga(x)
NEXT x
FOR x = 1 TO 11
IF x < 2 THEN GOSUB dta11
IF x < 3 THEN GOSUB dta10
IF x < 4 THEN GOSUB dta9
IF x < 5 THEN GOSUB dta8
IF x < 6 THEN GOSUB dta7
IF x < 7 THEN GOSUB dta6
IF x < 8 THEN GOSUB dta5
IF x < 9 THEN GOSUB dta4
IF x < 10 THEN GOSUB dta3
IF x < 11 THEN GOSUB dta2
IF x < 12 THEN GOSUB dta1
NEXT x
GOTO enfero

dta1:
IF pd(x) = pd(x + 1) AND ero(x) >= ero(x + 1) THEN sd(x + 1) = sd(x + 1) + 1: RETURN
IF pd(x) = pd(x + 1) AND ero(x) < ero(x + 1) THEN sd(x) = sd(x) + 1: RETURN
IF pd(x) > pd(x + 1) THEN sd(x + 1) = sd(x + 1) + 1 ELSE sd(x) = sd(x) + 1
RETURN
dta2:
IF pd(x) = pd(x + 2) AND ero(x) >= ero(x + 2) THEN sd(x + 2) = sd(x + 2) + 1: RETURN
IF pd(x) = pd(x + 2) AND ero(x) < ero(x + 2) THEN sd(x) = sd(x) + 1: RETURN
IF pd(x) > pd(x + 2) THEN sd(x + 2) = sd(x + 2) + 1 ELSE sd(x) = sd(x) + 1
RETURN
dta3:
IF pd(x) = pd(x + 3) AND ero(x) >= ero(x + 3) THEN sd(x + 3) = sd(x + 3) + 1: RETURN
IF pd(x) = pd(x + 3) AND ero(x) < ero(x + 3) THEN sd(x) = sd(x) + 1: RETURN
IF pd(x) > pd(x + 3) THEN sd(x + 3) = sd(x + 3) + 1 ELSE sd(x) = sd(x) + 1
RETURN
dta4:
IF pd(x) = pd(x + 4) AND ero(x) >= ero(x + 4) THEN sd(x + 4) = sd(x + 4) + 1: RETURN
IF pd(x) = pd(x + 4) AND ero(x) < ero(x + 4) THEN sd(x) = sd(x) + 1: RETURN
IF pd(x) > pd(x + 4) THEN sd(x + 4) = sd(x + 4) + 1 ELSE sd(x) = sd(x) + 1
RETURN
dta5:
IF pd(x) = pd(x + 5) AND ero(x) >= ero(x + 5) THEN sd(x + 5) = sd(x + 5) + 1: RETURN
IF pd(x) = pd(x + 5) AND ero(x) < ero(x + 5) THEN sd(x) = sd(x) + 1: RETURN
IF pd(x) > pd(x + 5) THEN sd(x + 5) = sd(x + 5) + 1 ELSE sd(x) = sd(x) + 1
RETURN
dta6:
IF pd(x) = pd(x + 6) AND ero(x) >= ero(x + 6) THEN sd(x + 6) = sd(x + 6) + 1: RETURN
IF pd(x) = pd(x + 6) AND ero(x) < ero(x + 6) THEN sd(x) = sd(x) + 1: RETURN
IF pd(x) > pd(x + 6) THEN sd(x + 6) = sd(x + 6) + 1 ELSE sd(x) = sd(x) + 1
RETURN
dta7:
IF pd(x) = pd(x + 7) AND ero(x) >= ero(x + 7) THEN sd(x + 7) = sd(x + 7) + 1: RETURN
IF pd(x) = pd(x + 7) AND ero(x) < ero(x + 7) THEN sd(x) = sd(x) + 1: RETURN
IF pd(x) > pd(x + 7) THEN sd(x + 7) = sd(x + 7) + 1 ELSE sd(x) = sd(x) + 1
RETURN
dta8:
IF pd(x) = pd(x + 8) AND ero(x) >= ero(x + 8) THEN sd(x + 8) = sd(x + 8) + 1: RETURN
IF pd(x) = pd(x + 8) AND ero(x) < ero(x + 8) THEN sd(x) = sd(x) + 1: RETURN
IF pd(x) > pd(x + 8) THEN sd(x + 8) = sd(x + 8) + 1 ELSE sd(x) = sd(x) + 1
RETURN
dta9:
IF pd(x) = pd(x + 9) AND ero(x) >= ero(x + 9) THEN sd(x + 9) = sd(x + 9) + 1: RETURN
IF pd(x) = pd(x + 9) AND ero(x) < ero(x + 9) THEN sd(x) = sd(x) + 1: RETURN
IF pd(x) > pd(x + 9) THEN sd(x + 9) = sd(x + 9) + 1 ELSE sd(x) = sd(x) + 1
RETURN
dta10:
IF pd(x) = pd(x + 10) AND ero(x) >= ero(x + 10) THEN sd(x + 10) = sd(x + 10) + 1: RETURN
IF pd(x) = pd(x + 10) AND ero(x) < ero(x + 10) THEN sd(x) = sd(x) + 1: RETURN
IF pd(x) > pd(x + 10) THEN sd(x + 10) = sd(x + 10) + 1 ELSE sd(x) = sd(x) + 1
RETURN
dta11:
IF pd(x) = pd(x + 11) AND ero(x) >= ero(x + 11) THEN sd(x + 11) = sd(x + 11) + 1: RETURN
IF pd(x) = pd(x + 11) AND ero(x) < ero(x + 11) THEN sd(x) = sd(x) + 1: RETURN
IF pd(x) > pd(x + 11) THEN sd(x + 11) = sd(x + 11) + 1 ELSE sd(x) = sd(x) + 1
RETURN

enfero:
END SUB

SUB duutis1
COLOR 14, 0: PRINT "***DIVISIOONAUUTISIA***": COLOR 8, 0
divuut:
IF gagga = 0 THEN GOTO divuut2
FOR x = 1 TO 12
IF sarja = 2 AND x = u THEN COLOR 15 ELSE COLOR 8
IF sd(x) = gagga AND vd(x) > 160 AND 10 * RND < 8 THEN vd(x) = vd(x) - 40: PRINT "Divisioonaan tippunut "; ld(x); " menett�� rutkasti pelaajiansa liigaan."
IF sd(x) = gagga AND vd(x) > 130 AND 10 * RND < 6 THEN vd(x) = vd(x) - 20: PRINT "Divisioonaan tippunut "; ld(x); " menett�� pelaajiansa liigaan."
NEXT x
divuut2:
END SUB

SUB ehlgls
emla(e1) = veh(e1) * RND + 10
emla(e2) = veh(e2) * RND - 10
emla(e3) = veh(e3) * RND + 10
emla(e4) = veh(e4) * RND - 10
emla(e1 + 4) = veh(e1 + 4) * RND + 10
emla(e2 + 4) = veh(e2 + 4) * RND - 10
emla(e3 + 4) = veh(e3 + 4) * RND + 10
emla(e4 + 4) = veh(e4 + 4) * RND - 10
emla(e1 + 8) = veh(e1 + 8) * RND + 10
emla(e2 + 8) = veh(e2 + 8) * RND - 10
emla(e3 + 8) = veh(e3 + 8) * RND + 10
emla(e4 + 8) = veh(e4 + 8) * RND - 10
emla(e1 + 12) = veh(e1 + 12) * RND + 10
emla(e2 + 12) = veh(e2 + 12) * RND - 10
emla(e3 + 12) = veh(e3 + 12) * RND + 10
emla(e4 + 12) = veh(e4 + 12) * RND - 10
emla(e1 + 16) = veh(e1 + 16) * RND + 10
emla(e2 + 16) = veh(e2 + 16) * RND - 10
emla(e3 + 16) = veh(e3 + 16) * RND + 10
emla(e4 + 16) = veh(e4 + 16) * RND - 10

FOR x = 1 TO 20
emal(x) = emla(x) / 25
egl(x) = CINT(emal(x))
NEXT x

END SUB

SUB eltpvb
FOR y = 1 TO 6
IF y = 1 THEN COLOR 14 ELSE COLOR 9
IF seh(elt(1)) = y THEN PRINT leh(elt(1)), peh(elt(1))
IF seh(elt(2)) = y THEN PRINT leh(elt(2)), peh(elt(2))
IF seh(elt(3)) = y THEN PRINT leh(elt(3)), peh(elt(3))
IF seh(elt(4)) = y THEN PRINT leh(elt(4)), peh(elt(4))
IF seh(elt(5)) = y THEN PRINT leh(elt(5)), peh(elt(5))
IF seh(elt(6)) = y THEN PRINT leh(elt(6)), peh(elt(6))
NEXT y
END SUB

SUB elttaulu
FOR x = 1 TO 20
seh(x) = 1
NEXT x
aa = 1: bb = 2: GOSUB eltmaar
aa = 1: bb = 3: GOSUB eltmaar
aa = 1: bb = 4: GOSUB eltmaar
aa = 1: bb = 5: GOSUB eltmaar
aa = 1: bb = 6: GOSUB eltmaar
aa = 2: bb = 3: GOSUB eltmaar
aa = 2: bb = 4: GOSUB eltmaar
aa = 2: bb = 5: GOSUB eltmaar
aa = 2: bb = 6: GOSUB eltmaar
aa = 3: bb = 4: GOSUB eltmaar
aa = 3: bb = 5: GOSUB eltmaar
aa = 3: bb = 6: GOSUB eltmaar
aa = 4: bb = 5: GOSUB eltmaar
aa = 4: bb = 6: GOSUB eltmaar
aa = 5: bb = 6: GOSUB eltmaar
GOTO eltffer

eltmaar:
IF peh(elt(aa)) = peh(elt(bb)) AND eero(elt(aa)) < eero(elt(bb)) THEN seh(elt(aa)) = seh(elt(aa)) + 1
IF peh(elt(aa)) = peh(elt(bb)) AND eero(elt(aa)) >= eero(elt(bb)) THEN seh(elt(bb)) = seh(elt(bb)) + 1
IF peh(elt(aa)) > peh(elt(bb)) THEN seh(elt(bb)) = seh(elt(bb)) + 1
IF peh(elt(bb)) > peh(elt(aa)) THEN seh(elt(aa)) = seh(elt(aa)) + 1
RETURN

eltffer:
END SUB

SUB eott
COLOR 15: PRINT "On europelien vuoro!"
COLOR 13: PRINT "Ottelut ovat seuraavat:"
PRINT
COLOR 14: PRINT "Lohko 1:"
COLOR 12: PRINT leh(e1); " - "; leh(e2)
PRINT leh(e3); " - "; leh(e4)
PRINT
COLOR 14: PRINT "Lohko 2:"
COLOR 12: PRINT leh(e1 + 4); " - "; leh(e2 + 4)
PRINT leh(e3 + 4); " - "; leh(e4 + 4)
PRINT
COLOR 14: PRINT "Lohko 3:"
COLOR 12: PRINT leh(e1 + 8); " - "; leh(e2 + 8)
PRINT leh(e3 + 8); " - "; leh(e4 + 8)
PRINT
COLOR 14: PRINT "Lohko 4:"
COLOR 12: PRINT leh(e1 + 12); " - "; leh(e2 + 12)
PRINT leh(e3 + 12); " - "; leh(e4 + 12)
PRINT
COLOR 14: PRINT "Lohko 5:"
COLOR 12: PRINT leh(e1 + 16); " - "; leh(e2 + 16)
PRINT leh(e3 + 16); " - "; leh(e4 + 16)
PRINT
COLOR 8: INPUT "Returnia pelataksesi...", yucca$

END SUB

SUB etaulu1
FOR x = pvb1 TO pvb1 + 3
IF x < pvb1 + 1 THEN GOSUB eta3
IF x < pvb1 + 2 THEN GOSUB eta2
IF x < pvb1 + 3 THEN GOSUB eta1
NEXT x
GOTO etffer

eta1:
IF peh(x) = peh(x + 1) AND eero(x) >= eero(x + 1) THEN seh(x + 1) = seh(x + 1) + 1: RETURN
IF peh(x) = peh(x + 1) AND eero(x) < eero(x + 1) THEN seh(x) = seh(x) + 1: RETURN
IF peh(x) > peh(x + 1) THEN seh(x + 1) = seh(x + 1) + 1 ELSE seh(x) = seh(x) + 1
RETURN
eta2:
IF peh(x) = peh(x + 2) AND eero(x) >= eero(x + 2) THEN seh(x + 2) = seh(x + 2) + 1: RETURN
IF peh(x) = peh(x + 2) AND eero(x) < eero(x + 2) THEN seh(x) = seh(x) + 1: RETURN
IF peh(x) > peh(x + 2) THEN seh(x + 2) = seh(x + 2) + 1 ELSE seh(x) = seh(x) + 1
RETURN
eta3:
IF peh(x) = peh(x + 3) AND eero(x) >= eero(x + 3) THEN seh(x + 3) = seh(x + 3) + 1: RETURN
IF peh(x) = peh(x + 3) AND eero(x) < eero(x + 3) THEN seh(x) = seh(x) + 1: RETURN
IF peh(x) > peh(x + 3) THEN seh(x + 3) = seh(x + 3) + 1 ELSE seh(x) = seh(x) + 1
RETURN
etffer:
END SUB

SUB etaulukko
CLS
FOR x = 1 TO 20
seh(x) = 1
NEXT x
pvb1 = 1: : etaulu1
pvb1 = 5: : etaulu1
pvb1 = 9: : etaulu1
pvb1 = 13: etaulu1
pvb1 = 17: etaulu1
COLOR 13, 0: IF ekr < 6 THEN PRINT "EHL:n TILANNE KIERROKSEN"; ekr; "j�lkeen:" ELSE PRINT "EHL:N RUNKOSARJAN LOPULLINEN TILANNE ON:"

LOCATE 3, 1: COLOR 14: PRINT "Lohko 1"
FOR x = 1 TO 4
IF seh(x) = 1 THEN COLOR 2 ELSE COLOR 12
LOCATE 3 + seh(x), 1: PRINT leh(x), eero(x);
IF eero(x) >= -9 AND eero(x) <= 9 THEN PRINT " "; peh(x) ELSE PRINT peh(x)
NEXT x

LOCATE 3, 35: COLOR 14: PRINT "Lohko 2"
FOR x = 5 TO 8
IF seh(x) = 1 THEN COLOR 2 ELSE COLOR 12
LOCATE 3 + seh(x), 35: PRINT leh(x), eero(x);
IF eero(x) >= -9 AND eero(x) <= 9 THEN PRINT " "; peh(x) ELSE PRINT peh(x)
NEXT x

LOCATE 9, 1: COLOR 14: PRINT "Lohko 3"
FOR x = 9 TO 12
IF seh(x) = 1 THEN COLOR 2 ELSE COLOR 12
LOCATE 9 + seh(x), 1: PRINT leh(x), eero(x);
IF eero(x) >= -9 AND eero(x) <= 9 THEN PRINT " "; peh(x) ELSE PRINT peh(x)
NEXT x

LOCATE 9, 35: COLOR 14: PRINT "Lohko 4"
FOR x = 13 TO 16
IF seh(x) = 1 THEN COLOR 2 ELSE COLOR 12
LOCATE 9 + seh(x), 35: PRINT leh(x), eero(x);
IF eero(x) >= -9 AND eero(x) <= 9 THEN PRINT " "; peh(x) ELSE PRINT peh(x)
NEXT x

LOCATE 15, 1: COLOR 14: PRINT "Lohko 5"
FOR x = 17 TO 20
IF seh(x) = 1 THEN COLOR 2 ELSE COLOR 12
LOCATE 15 + seh(x), 1: PRINT leh(x), eero(x);
IF eero(x) >= -9 AND eero(x) <= 9 THEN PRINT " "; peh(x) ELSE PRINT peh(x)
NEXT x

LOCATE 21, 1: COLOR 8
INPUT "Return...", yucca$
END SUB

SUB etul
CLS : PRINT
COLOR 13: PRINT "Tulokset ovat seuraavat:"
PRINT
COLOR 14: PRINT "Lohko 1:"
COLOR 12: PRINT leh(e1); " - "; leh(e2), egl(e1); " - "; egl(e2)
PRINT leh(e3); " - "; leh(e4), egl(e3); " - "; egl(e4)
PRINT
COLOR 14: PRINT "Lohko 2:"
COLOR 12: PRINT leh(e1 + 4); " - "; leh(e2 + 4), egl(e1 + 4); " - "; egl(e2 + 4)
PRINT leh(e3 + 4); " - "; leh(e4 + 4), egl(e3 + 4); " - "; egl(e4 + 4)
PRINT
COLOR 14: PRINT "Lohko 3:"
COLOR 12: PRINT leh(e1 + 8); " - "; leh(e2 + 8), egl(e1 + 8); " - "; egl(e2 + 8)
PRINT leh(e3 + 8); " - "; leh(e4 + 8), egl(e3 + 8); " - "; egl(e4 + 8)
PRINT
COLOR 14: PRINT "Lohko 4:"
COLOR 12: PRINT leh(e1 + 12); " - "; leh(e2 + 12), egl(e1 + 12); " - "; egl(e2 + 12)
PRINT leh(e3 + 12); " - "; leh(e4 + 12), egl(e3 + 12); " - "; egl(e4 + 12)
PRINT
COLOR 14: PRINT "Lohko 5:"
COLOR 12: PRINT leh(e1 + 16); " - "; leh(e2 + 16), egl(e1 + 16); " - "; egl(e2 + 16)
PRINT leh(e3 + 16); " - "; leh(e4 + 16), egl(e3 + 16); " - "; egl(e4 + 16)
PRINT
COLOR 8: INPUT "Return...", yucca$
END SUB

SUB kimu
IF ki = 1 THEN a = 1: b = 2: c = 3: d = 4: e = 5: f = 6: g = 7: h = 8: i = 9: j = 10: k = 11: m = 12
IF ki = 2 THEN b = 1: a = 12: d = 10: c = 11: f = 8: e = 5: h = 6: g = 9: j = 4: i = 7: m = 2: k = 3
IF ki = 3 THEN a = 1: b = 8: c = 3: d = 6: e = 5: f = 12: g = 7: h = 10: i = 9: j = 2: k = 11: m = 4
IF ki = 4 THEN b = 1: a = 6: d = 10: c = 3: f = 8: e = 11: h = 4: g = 9: j = 2: i = 5: m = 12: k = 7
IF ki = 5 THEN a = 1: b = 4: c = 10: d = 5: e = 8: f = 3: g = 6: h = 7: i = 2: j = 11: k = 12: m = 9
IF ki = 6 THEN b = 1: a = 10: d = 3: c = 12: f = 5: e = 4: h = 7: g = 2: j = 9: i = 8: m = 11: k = 6
IF ki = 7 THEN a = 1: b = 3: c = 5: d = 11: e = 7: f = 9: g = 8: h = 10: i = 6: j = 12: k = 4: m = 2
IF ki = 8 THEN b = 1: a = 11: d = 10: c = 12: f = 9: e = 5: h = 6: g = 4: j = 2: i = 8: m = 3: k = 7
IF ki = 9 THEN a = 1: b = 9: c = 3: d = 11: e = 7: f = 5: g = 10: h = 4: i = 6: j = 2: k = 12: m = 8
IF ki = 10 THEN b = 1: a = 7: d = 5: c = 3: f = 8: e = 6: h = 4: g = 12: j = 2: i = 10: m = 9: k = 11
IF ki = 11 THEN a = 1: b = 5: c = 3: d = 9: e = 7: f = 11: g = 8: h = 4: i = 6: j = 10: k = 12: m = 2
IF ki = 12 THEN b = 1: a = 2: d = 3: c = 4: f = 5: e = 6: h = 7: g = 8: j = 9: i = 10: m = 11: k = 12
IF ki = 13 THEN a = 1: b = 12: c = 10: d = 11: e = 8: f = 5: g = 6: h = 9: i = 4: j = 7: k = 2: m = 3
IF ki = 14 THEN b = 1: a = 8: d = 3: c = 6: f = 5: e = 12: h = 7: g = 10: j = 9: i = 2: m = 11: k = 4
IF ki = 15 THEN a = 1: b = 6: c = 10: d = 3: e = 8: f = 11: g = 4: h = 9: i = 2: j = 5: k = 12: m = 7
IF ki = 16 THEN b = 1: a = 4: d = 10: c = 5: f = 8: e = 3: h = 6: g = 7: j = 2: i = 11: m = 12: k = 9
IF ki = 17 THEN a = 1: b = 10: c = 3: d = 12: e = 5: f = 4: g = 7: h = 2: i = 9: j = 8: k = 11: m = 6
IF ki = 18 THEN b = 1: a = 3: d = 5: c = 11: f = 7: e = 9: h = 8: g = 10: j = 6: i = 12: m = 4: k = 2
IF ki = 19 THEN a = 1: b = 11: c = 10: d = 12: e = 9: f = 5: g = 6: h = 4: i = 2: j = 8: k = 3: m = 7
IF ki = 20 THEN b = 1: a = 9: d = 3: c = 11: f = 7: e = 5: h = 10: g = 4: j = 6: i = 2: m = 12: k = 8
IF ki = 21 THEN a = 1: b = 7: c = 5: d = 3: e = 8: f = 6: g = 4: h = 12: i = 2: j = 10: k = 9: m = 11
IF ki = 22 THEN b = 1: a = 5: d = 3: c = 9: f = 7: e = 11: h = 8: g = 4: j = 6: i = 10: m = 12: k = 2
END SUB

SUB marmaar
FOR x = 1 TO 12
ms(x) = 1
NEXT x
FOR x = 1 TO 11
IF x < 2 THEN GOSUB mta11
IF x < 3 THEN GOSUB mta10
IF x < 4 THEN GOSUB mta9
IF x < 5 THEN GOSUB mta8
IF x < 6 THEN GOSUB mta7
IF x < 7 THEN GOSUB mta6
IF x < 8 THEN GOSUB mta5
IF x < 9 THEN GOSUB mta4
IF x < 10 THEN GOSUB mta3
IF x < 11 THEN GOSUB mta2
IF x < 12 THEN GOSUB mta1
NEXT x
GOTO maarend

mta1:
IF wx1(x) = wx1(x + 1) AND wx2(x) = wx2(x + 1) AND wx3(x) < wx3(x + 1) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 1) AND wx2(x) = wx2(x + 1) AND wx3(x) >= wx3(x + 1) THEN ms(x + 1) = ms(x + 1) + 1: RETURN
IF wx1(x) = wx1(x + 1) AND wx2(x) < wx2(x + 1) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 1) AND wx2(x) >= wx2(x + 1) THEN ms(x + 1) = ms(x + 1) + 1: RETURN
IF wx1(x) < wx1(x + 1) THEN ms(x) = ms(x) + 1 ELSE ms(x + 1) = ms(x + 1) + 1
RETURN
mta2:
IF wx1(x) = wx1(x + 2) AND wx2(x) = wx2(x + 2) AND wx3(x) < wx3(x + 2) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 2) AND wx2(x) = wx2(x + 2) AND wx3(x) >= wx3(x + 2) THEN ms(x + 2) = ms(x + 2) + 1: RETURN
IF wx1(x) = wx1(x + 2) AND wx2(x) < wx2(x + 2) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 2) AND wx2(x) >= wx2(x + 2) THEN ms(x + 2) = ms(x + 2) + 1: RETURN
IF wx1(x) < wx1(x + 2) THEN ms(x) = ms(x) + 1 ELSE ms(x + 2) = ms(x + 2) + 1
RETURN
mta3:
IF wx1(x) = wx1(x + 3) AND wx2(x) = wx2(x + 3) AND wx3(x) < wx3(x + 3) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 3) AND wx2(x) = wx2(x + 3) AND wx3(x) >= wx3(x + 3) THEN ms(x + 3) = ms(x + 3) + 1: RETURN
IF wx1(x) = wx1(x + 3) AND wx2(x) < wx2(x + 3) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 3) AND wx2(x) >= wx2(x + 3) THEN ms(x + 3) = ms(x + 3) + 1: RETURN
IF wx1(x) < wx1(x + 3) THEN ms(x) = ms(x) + 1 ELSE ms(x + 3) = ms(x + 3) + 1
RETURN
mta4:
IF wx1(x) = wx1(x + 4) AND wx2(x) = wx2(x + 4) AND wx3(x) < wx3(x + 4) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 4) AND wx2(x) = wx2(x + 4) AND wx3(x) >= wx3(x + 4) THEN ms(x + 4) = ms(x + 4) + 1: RETURN
IF wx1(x) = wx1(x + 4) AND wx2(x) < wx2(x + 4) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 4) AND wx2(x) >= wx2(x + 4) THEN ms(x + 4) = ms(x + 4) + 1: RETURN
IF wx1(x) < wx1(x + 4) THEN ms(x) = ms(x) + 1 ELSE ms(x + 4) = ms(x + 4) + 1
RETURN
mta5:
IF wx1(x) = wx1(x + 5) AND wx2(x) = wx2(x + 5) AND wx3(x) < wx3(x + 5) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 5) AND wx2(x) = wx2(x + 5) AND wx3(x) >= wx3(x + 5) THEN ms(x + 5) = ms(x + 5) + 1: RETURN
IF wx1(x) = wx1(x + 5) AND wx2(x) < wx2(x + 5) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 5) AND wx2(x) >= wx2(x + 5) THEN ms(x + 5) = ms(x + 5) + 1: RETURN
IF wx1(x) < wx1(x + 5) THEN ms(x) = ms(x) + 1 ELSE ms(x + 5) = ms(x + 5) + 1
RETURN
mta6:
IF wx1(x) = wx1(x + 6) AND wx2(x) = wx2(x + 6) AND wx3(x) < wx3(x + 6) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 6) AND wx2(x) = wx2(x + 6) AND wx3(x) >= wx3(x + 6) THEN ms(x + 6) = ms(x + 6) + 1: RETURN
IF wx1(x) = wx1(x + 6) AND wx2(x) < wx2(x + 6) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 6) AND wx2(x) >= wx2(x + 6) THEN ms(x + 6) = ms(x + 6) + 1: RETURN
IF wx1(x) < wx1(x + 6) THEN ms(x) = ms(x) + 1 ELSE ms(x + 6) = ms(x + 6) + 1
RETURN
mta7:
IF wx1(x) = wx1(x + 7) AND wx2(x) = wx2(x + 7) AND wx3(x) < wx3(x + 7) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 7) AND wx2(x) = wx2(x + 7) AND wx3(x) >= wx3(x + 7) THEN ms(x + 7) = ms(x + 7) + 1: RETURN
IF wx1(x) = wx1(x + 7) AND wx2(x) < wx2(x + 7) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 7) AND wx2(x) >= wx2(x + 7) THEN ms(x + 7) = ms(x + 7) + 1: RETURN
IF wx1(x) < wx1(x + 7) THEN ms(x) = ms(x) + 1 ELSE ms(x + 7) = ms(x + 7) + 1
RETURN
mta8:
IF wx1(x) = wx1(x + 8) AND wx2(x) = wx2(x + 8) AND wx3(x) < wx3(x + 8) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 8) AND wx2(x) = wx2(x + 8) AND wx3(x) >= wx3(x + 8) THEN ms(x + 8) = ms(x + 8) + 1: RETURN
IF wx1(x) = wx1(x + 8) AND wx2(x) < wx2(x + 8) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 8) AND wx2(x) >= wx2(x + 8) THEN ms(x + 8) = ms(x + 8) + 1: RETURN
IF wx1(x) < wx1(x + 8) THEN ms(x) = ms(x) + 1 ELSE ms(x + 8) = ms(x + 8) + 1
RETURN
mta9:
IF wx1(x) = wx1(x + 9) AND wx2(x) = wx2(x + 9) AND wx3(x) < wx3(x + 9) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 9) AND wx2(x) = wx2(x + 9) AND wx3(x) >= wx3(x + 9) THEN ms(x + 9) = ms(x + 9) + 1: RETURN
IF wx1(x) = wx1(x + 9) AND wx2(x) < wx2(x + 9) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 9) AND wx2(x) >= wx2(x + 9) THEN ms(x + 9) = ms(x + 9) + 1: RETURN
IF wx1(x) < wx1(x + 9) THEN ms(x) = ms(x) + 1 ELSE ms(x + 9) = ms(x + 9) + 1
RETURN
mta10:
IF wx1(x) = wx1(x + 10) AND wx2(x) = wx2(x + 10) AND wx3(x) < wx3(x + 10) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 10) AND wx2(x) = wx2(x + 10) AND wx3(x) >= wx3(x + 10) THEN ms(x + 10) = ms(x + 10) + 1: RETURN
IF wx1(x) = wx1(x + 10) AND wx2(x) < wx2(x + 10) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 10) AND wx2(x) >= wx2(x + 10) THEN ms(x + 10) = ms(x + 10) + 1: RETURN
IF wx1(x) < wx1(x + 10) THEN ms(x) = ms(x) + 1 ELSE ms(x + 10) = ms(x + 10) + 1
RETURN
mta11:
IF wx1(x) = wx1(x + 11) AND wx2(x) = wx2(x + 11) AND wx3(x) < wx3(x + 11) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 11) AND wx2(x) = wx2(x + 11) AND wx3(x) >= wx3(x + 11) THEN ms(x + 11) = ms(x + 11) + 1: RETURN
IF wx1(x) = wx1(x + 11) AND wx2(x) < wx2(x + 11) THEN ms(x) = ms(x) + 1: RETURN
IF wx1(x) = wx1(x + 11) AND wx2(x) >= wx2(x + 11) THEN ms(x + 11) = ms(x + 11) + 1: RETURN
IF wx1(x) < wx1(x + 11) THEN ms(x) = ms(x) + 1 ELSE ms(x + 11) = ms(x + 11) + 1
RETURN

maarend:
END SUB

SUB mesliiga
ru = CINT(1 * RND) + 1: ts = CINT(1 * RND) + 1: ve = CINT(1 * RND) + 1: sa = CINT(1 * RND) + 1
IF ru = 1 THEN lc(2) = "MoDo    "
IF ru = 2 THEN lc(2) = "Bryn�s  "
IF ts = 1 THEN lc(3) = "Moskova "
IF ts = 2 THEN lc(3) = "Davos   "
IF ve = 1 THEN lc(4) = "Leksand "
IF ve = 2 THEN lc(4) = "ZSKA    "
IF sa = 1 THEN lc(5) = "Kosice  "
IF sa = 2 THEN lc(5) = "P.Berlin"
lc(6) = "AIK     "
FOR x = 1 TO 12
lc(1) = l(u): vc(1) = v(u)
NEXT x
vc(2) = CINT(RND * 70) + 210: vc(3) = CINT(RND * 40) + 180
vc(4) = CINT(RND * 100) + 150: vc(5) = CINT(RND * 20) + 140
vc(6) = CINT(RND * 40) + 200
mesot = 0
FOR x = 1 TO 6
pc(x) = 0
NEXT x
CLS : COLOR 14, 0: INPUT "HUOMIO! NYT ON CHRISTMAS CUPIN AIKA!", yucca$
PRINT
mesotte:
CLS
mesot = mesot + 1
COLOR 13, 0: PRINT "Ja Cupin "; mesot; " ottelut ovat:"
IF mesot = 1 THEN a = 1: b = 2: c = 3: d = 4: e = 5: f = 6
IF mesot = 2 THEN a = 1: b = 3: c = 2: d = 6: e = 4: f = 5
IF mesot = 3 THEN a = 1: b = 4: c = 2: d = 5: e = 3: f = 6
IF mesot = 4 THEN a = 1: b = 5: c = 2: d = 3: e = 4: f = 6
IF mesot = 5 THEN a = 1: b = 6: c = 2: d = 4: e = 3: f = 5
PRINT : COLOR 12, 0
PRINT lc(a); " - "; lc(b)
PRINT lc(c); " - "; lc(d)
PRINT lc(e); " - "; lc(f)
PRINT : COLOR 8, 0
INPUT "Return peluuttaa ottelut!", yucca$
GOSUB mesmal
CLS
COLOR 13, 0: PRINT "Ja tulokset ovat..."
PRINT : COLOR 12, 0
PRINT lc(a); " - "; lc(b), gl(a); " - "; gl(b)
PRINT lc(c); " - "; lc(d), gl(c); " - "; gl(d)
PRINT lc(e); " - "; lc(f), gl(e); " - "; gl(f)
PRINT : COLOR 8, 0
IF gl(a) > gl(b) THEN pc(a) = pc(a) + 2
IF gl(a) = gl(b) THEN pc(a) = pc(a) + 1: pc(b) = pc(b) + 1
IF gl(a) < gl(b) THEN pc(b) = pc(b) + 2
IF gl(c) > gl(d) THEN pc(c) = pc(c) + 2
IF gl(c) = gl(d) THEN pc(c) = pc(c) + 1: pc(d) = pc(d) + 1
IF gl(c) < gl(d) THEN pc(d) = pc(d) + 2
IF gl(e) > gl(f) THEN pc(e) = pc(e) + 2
IF gl(e) = gl(f) THEN pc(e) = pc(e) + 1: pc(f) = pc(f) + 1
IF gl(e) < gl(f) THEN pc(f) = pc(f) + 2
FOR x = 1 TO 6
sc(x) = 1
NEXT x
FOR x = 1 TO 5
IF x < 2 THEN GOSUB tac11
IF x < 3 THEN GOSUB tac10
IF x < 4 THEN GOSUB tac9
IF x < 5 THEN GOSUB tac8
IF x < 6 THEN GOSUB tac7
NEXT x
GOTO mestaulu
tac7:
IF pc(x) >= pc(x + 1) THEN sc(x + 1) = sc(x + 1) + 1 ELSE sc(x) = sc(x) + 1
RETURN
tac8:
IF pc(x) >= pc(x + 2) THEN sc(x + 2) = sc(x + 2) + 1 ELSE sc(x) = sc(x) + 1
RETURN
tac9:
IF pc(x) >= pc(x + 3) THEN sc(x + 3) = sc(x + 3) + 1 ELSE sc(x) = sc(x) + 1
RETURN
tac10:
IF pc(x) >= pc(x + 4) THEN sc(x + 4) = sc(x + 4) + 1 ELSE sc(x) = sc(x) + 1
RETURN
tac11:
IF pc(x) >= pc(x + 5) THEN sc(x + 5) = sc(x + 5) + 1 ELSE sc(x) = sc(x) + 1
RETURN
mestaulu:
FOR y = 1 TO 6
IF y = 1 THEN COLOR 14, 0
IF y > 1 THEN COLOR 9, 0
IF sc(1) = y THEN PRINT lc(1), pc(1)
IF sc(2) = y THEN PRINT lc(2), pc(2)
IF sc(3) = y THEN PRINT lc(3), pc(3)
IF sc(4) = y THEN PRINT lc(4), pc(4)
IF sc(5) = y THEN PRINT lc(5), pc(5)
IF sc(6) = y THEN PRINT lc(6), pc(6)
NEXT y
PRINT : COLOR 8, 0
INPUT "Returnia...", yucca$
IF mesot = 5 GOTO mesloppu ELSE GOTO mesotte
mesloppu:
CLS
COLOR 13, 0: PRINT "JA LOPULLINEN TILANNE ON:": PRINT
FOR y = 1 TO 6
IF y = 1 THEN COLOR 14, 0
IF y > 1 THEN COLOR 9, 0
IF sc(1) = y THEN PRINT lc(1), pc(1)
IF sc(2) = y THEN PRINT lc(2), pc(2)
IF sc(3) = y THEN PRINT lc(3), pc(3)
IF sc(4) = y THEN PRINT lc(4), pc(4)
IF sc(5) = y THEN PRINT lc(5), pc(5)
IF sc(6) = y THEN PRINT lc(6), pc(6)
NEXT y
PRINT : COLOR 8, 0
GOTO enddd
mesmal:
mal(a) = CINT(RND * vc(a)): mal(b) = CINT(RND * vc(b))
mal(c) = CINT(RND * vc(c)): mal(d) = CINT(RND * vc(d))
mal(e) = CINT(RND * vc(e)): mal(f) = CINT(RND * vc(f))
mla(a) = mal(a) / 30: mla(b) = mal(b) / 30
mla(c) = mal(c) / 30: mla(d) = mal(d) / 30
mla(e) = mal(e) / 30: mla(f) = mal(f) / 30
gl(a) = CINT(mla(a)): gl(b) = CINT(mla(b))
gl(c) = CINT(mla(c)): gl(d) = CINT(mla(d))
gl(e) = CINT(mla(e)): gl(f) = CINT(mla(f))
RETURN
enddd:
IF memes = 1 THEN raha = raha + 1000000
IF sc(1) = 1 THEN PRINT "Hurraa!! Voitimme !": raha = raha + 300000
IF sc(1) = 2 THEN PRINT "Hiphei!! Sijoituimme toiseksi!": raha = raha + 250000
IF sc(1) = 3 THEN PRINT "Sijoituimme kolmanneksi!": raha = raha + 220000
IF sc(1) = 4 THEN PRINT "Sijoituimme nelj�nneksi...": raha = raha + 170000
IF sc(1) = 5 THEN PRINT "Sijoituimme viidenneksi...voi tukka!": raha = raha + 150000
IF sc(1) = 6 THEN PRINT "�RRR! J�imme jumboiksi!": raha = raha + 130000
PRINT
COLOR 8, 0: INPUT yucca$
END SUB

SUB mmkisat
ylge = 0
ydiv = 0
FOR x = 1 TO 12
ylge = ylge + v(x)
tuurix(x) = 0
NEXT x
ylge = CINT(ylge / 12)
FOR tux = 1 TO 12
IF CINT(10 * RND) = 1 THEN tuurix(tux) = -(CINT(20 * RND) + 20)
IF CINT(10 * RND) = 10 THEN tuurix(tux) = (CINT(20 * RND) + 20)
NEXT tux
vw(1) = ylge + CINT(20 * RND) - CINT(10 * RND) + tuurix(1)
vw(2) = 202 + CINT(20 * RND) - CINT(10 * RND) + tuurix(2) + knhl
vw(3) = 194 + CINT(20 * RND) - CINT(10 * RND) + tuurix(3) + unhl
vw(4) = 206 + CINT(20 * RND) - CINT(10 * RND) + tuurix(4)
vw(5) = 153 + CINT(20 * RND) - CINT(10 * RND) + tuurix(5)
vw(6) = 208 + CINT(20 * RND) - CINT(10 * RND) + tuurix(6)
vw(7) = 189 + CINT(20 * RND) - CINT(10 * RND) + tuurix(7)
vw(8) = 211 + CINT(20 * RND) - CINT(10 * RND) + tuurix(8)
vw(9) = 170 + CINT(20 * RND) - CINT(10 * RND) + tuurix(9)
vw(10) = 163 + CINT(20 * RND) - CINT(10 * RND) + tuurix(10)
vw(11) = 168 + CINT(20 * RND) - CINT(10 * RND) + tuurix(11)
vw(12) = 159 + CINT(20 * RND) - CINT(10 * RND) + tuurix(12)
sijomm
COLOR 15, 0
IF dotte = 0 THEN CLS  ELSE PRINT
PRINT "Maailmanmestaruusturnaus on pelattu!"
IF dotte = 1 THEN PRINT
IF dotte = 1 THEN franko = franko + 13 ELSE franko = 2
FOR tux = 1 TO 12
IF tuurix(tux) > 15 THEN COLOR 13, 0: PRINT lw(tux); " pelasi koko turnauksen ajan todella suurella syd�mell�!": franko = franko + 1
IF tuurix(tux) < -15 THEN COLOR 5, 0: PRINT lw(tux); " k�rsi koko turnauksen ajan suurista ongelmista!": franko = franko + 1
NEXT tux
IF dotte = 1 THEN PRINT
COLOR 15, 0: PRINT "lopullinen j�rjestys tiukan taiston j�lkeen on:"
PRINT
FOR hh = 1 TO 12
IF sw(hh) = 1 THEN COLOR 30
IF sw(hh) = 2 THEN COLOR 23
IF sw(hh) = 3 THEN COLOR 22
IF sw(hh) > 3 THEN COLOR 2
LOCATE sw(hh) + franko, 1: PRINT lw(hh)
NEXT hh
FOR hh = 1 TO 12
IF sw(hh) = 1 THEN wx1(hh) = wx1(hh) + 1
IF sw(hh) = 2 THEN wx2(hh) = wx2(hh) + 1
IF sw(hh) = 3 THEN wx3(hh) = wx3(hh) + 1
NEXT hh
IF dotte = 1 THEN COLOR 8, 0: LOCATE 14 + franko: INPUT "Returnia...", yucca$
IF dotte = 0 THEN COLOR 8, 0: LOCATE 14 + franko: INPUT "Returnia...", yucca$
END SUB

SUB optio1
PRINT
PRINT "Haluatko JOKERIVIHAN p��lle?"
INPUT "1=KYLL�, Return=EI ", jokru
IF jokru = 1 THEN l(2) = "Nikerit ": v(2) = 50: GOTO katarri
PRINT
PRINT "Haluatko TEPSIVIHAN p��lle?"
INPUT "1=KYLL�, Return=EI ", tebsi
IF tebsi = 1 THEN l(3) = "Pursis. ": v(3) = 50: GOTO katarri
PRINT
PRINT "Haluatko HIFKIVIHAN p��lle?"
INPUT "1=KYLL�, Return=EI ", moberk
IF moberk = 1 THEN l(6) = "P-Hiiret": v(6) = 50: GOTO katarri
katarri:
CLS
PRINT "Haluatko aloittaa liigasta haluamallasi joukkueella?"
INPUT "1=KYLL�, Return=EI ", sarja
IF sarja <> 1 THEN sarja = 2
IF sarja = 1 THEN hjalli = 4:  valitseseura
PRINT
END SUB

SUB optix
CLS
COLOR 14, 0
PRINT "Haluatko n�hd� EHL:n runkosarjan tulokset?"
graah1:
INPUT "1=KYLL�, 2=EI ", dext$
IF dext$ = "1" THEN dext = 1: GOTO daah1
IF dext$ = "2" THEN dext = 0: GOTO daah1
GOTO graah1
daah1:
PRINT "Haluatko veikata automaattisesti joka kierroksella?"
graah2:
INPUT "1=KYLL�, 2=EI ", daulu$
IF daulu$ = "1" THEN daulu = 1: GOTO daah2
IF daulu$ = "2" THEN daulu = 0: GOTO daah2
GOTO graah2
daah2:
PRINT
PRINT "Haluatko 80 x 43 - n�ytt�tilan perinteisen sijasta?"
PRINT "(suositeltavaa)"
graah3:
INPUT "1=KYLL�, 2=EI ", dotte$
IF dotte$ = "2" THEN WIDTH 80, 25: dotte = 0: GOTO ednero
IF dotte$ = "1" THEN WIDTH 80, 43: dotte = 1: GOTO ednero
GOTO graah3
ednero:
END SUB

SUB sijomm
FOR x = 1 TO 12
sw(x) = 1
NEXT x
FOR x = 1 TO 11
IF x < 2 THEN GOSUB wta11
IF x < 3 THEN GOSUB wta10
IF x < 4 THEN GOSUB wta9
IF x < 5 THEN GOSUB wta8
IF x < 6 THEN GOSUB wta7
IF x < 7 THEN GOSUB wta6
IF x < 8 THEN GOSUB wta5
IF x < 9 THEN GOSUB wta4
IF x < 10 THEN GOSUB wta3
IF x < 11 THEN GOSUB wta2
IF x < 12 THEN GOSUB wta1
NEXT x
GOTO wendero

wta1:
IF vw(x) >= vw(x + 1) THEN sw(x + 1) = sw(x + 1) + 1 ELSE sw(x) = sw(x) + 1
RETURN
wta2:
IF vw(x) >= vw(x + 2) THEN sw(x + 2) = sw(x + 2) + 1 ELSE sw(x) = sw(x) + 1
RETURN
wta3:
IF vw(x) >= vw(x + 3) THEN sw(x + 3) = sw(x + 3) + 1 ELSE sw(x) = sw(x) + 1
RETURN
wta4:
IF vw(x) >= vw(x + 4) THEN sw(x + 4) = sw(x + 4) + 1 ELSE sw(x) = sw(x) + 1
RETURN
wta5:
IF vw(x) >= vw(x + 5) THEN sw(x + 5) = sw(x + 5) + 1 ELSE sw(x) = sw(x) + 1
RETURN
wta6:
IF vw(x) >= vw(x + 6) THEN sw(x + 6) = sw(x + 6) + 1 ELSE sw(x) = sw(x) + 1
RETURN
wta7:
IF vw(x) >= vw(x + 7) THEN sw(x + 7) = sw(x + 7) + 1 ELSE sw(x) = sw(x) + 1
RETURN
wta8:
IF vw(x) >= vw(x + 8) THEN sw(x + 8) = sw(x + 8) + 1 ELSE sw(x) = sw(x) + 1
RETURN
wta9:
IF vw(x) >= vw(x + 9) THEN sw(x + 9) = sw(x + 9) + 1 ELSE sw(x) = sw(x) + 1
RETURN
wta10:
IF vw(x) >= vw(x + 10) THEN sw(x + 10) = sw(x + 10) + 1 ELSE sw(x) = sw(x) + 1
RETURN
wta11:
IF vw(x) >= vw(x + 11) THEN sw(x + 11) = sw(x + 11) + 1 ELSE sw(x) = sw(x) + 1
RETURN

wendero:
END SUB

SUB tallen
IF LEN(nimi$) > 8 THEN OPEN LEFT$(nimi$, 8) + ".xxx" FOR OUTPUT AS #1 ELSE OPEN nimi$ + ".xxx" FOR OUTPUT AS #1
WRITE #1, nimi$, kausi, raha, sarja, u, halli$, hjalli, vai, banki, ghalli, moplus, palo, hinta, assassi, edus1, edus2, edus3, euro, dext
WRITE #1, dotte, daulu, veikko, cheer, mikki, molce, extra, ki, kr, psmo, psmw, psmt, psml, pdvo, pdvw, pdvt, pdvl, knhl, unhl
WRITE #1, l(1), l(2), l(3), l(4), l(5), l(6), l(7), l(8), l(9), l(10), l(11), l(12)
WRITE #1, ld(1), ld(2), ld(3), ld(4), ld(5), ld(6), ld(7), ld(8), ld(9), ld(10), ld(11), ld(12)
WRITE #1, v(1), v(2), v(3), v(4), v(5), v(6), v(7), v(8), v(9), v(10), v(11), v(12)
WRITE #1, vd(1), vd(2), vd(3), vd(4), vd(5), vd(6), vd(7), vd(8), vd(9), vd(10), vd(11), vd(12)
WRITE #1, lm(1), lm(2), lm(3), lm(4), lm(5), lm(6), lm(7), lm(8), lm(9), lm(10), lm(11), lm(12), lm(13), lm(14), lm(15), lm(16)
FOR x = 1 TO 12 STEP 4
WRITE #1, wx1(x), wx2(x), wx3(x), wx1(x + 1), wx2(x + 1), wx3(x + 1), wx1(x + 2), wx2(x + 2), wx3(x + 2), wx1(x + 3), wx2(x + 3), wx3(x + 3)
NEXT x
FOR x = 1 TO kausi - 1
WRITE #1, lrj(x), lrsarja(x), rvo(x), rta(x), rda(x), rmp(x), rmv(x), rpi(x), rsi(x), rjv(x), lrpoff(x)
NEXT x
WRITE #1, lunko, lamp, lecond, lous, lut, lonssi
WRITE #1, lunkom, lampm, lecondm, lousm, lutm, lonssim
CLOSE #1
IF kausi < 3 THEN GOSUB palli1 ELSE GOSUB palli2
WRITE #1, lunko, lamp, lecond, lous, lut, lonssi, lemes
WRITE #1, lunkom, lampm, lecondm, lousm, lutm, lonssim, lemesm
CLOSE #1
GOTO rahku
palli1:
IF LEN(nimi$) > 8 THEN OPEN LEFT$(nimi$, 8) + ".xx2" FOR OUTPUT AS #1 ELSE OPEN nimi$ + ".xx2" FOR OUTPUT AS #1
RETURN
palli2:
IF LEN(nimi$) > 8 THEN OPEN LEFT$(nimi$, 8) + ".xx2" FOR APPEND AS #1 ELSE OPEN nimi$ + ".xx2" FOR APPEND AS #1
RETURN

rahku:
END SUB

SUB uutis1
COLOR 14, 0: PRINT "***LIIGAUUTISIA***": COLOR 8, 0
IF sarja = 2 THEN GOTO uut22
x = u: COLOR 15
IF lamp = l(x) THEN PRINT l(x); " nettoaa mestaruudestaan 1.500.000 pekkaa!": raha = raha + 1500000: edus1 = u
IF lecond = l(x) THEN PRINT l(x); " nettoaa hopeastaan 1.000.000 pekkaa!": raha = raha + 1000000: edus2 = u
IF lonssi = l(x) THEN PRINT l(x); " nettoaa pronssistaan 700.000 pekkaa!": raha = raha + 700000: edus3 = u
IF leljas = l(x) THEN PRINT l(x); " nettoaa nelj�nnest� sijastaan 500.000 pekkaa!": raha = raha + 500000
IF s(x) = 1 THEN PRINT l(x); " saa runkosarjan voitosta 500.000 pekkaa!": raha = raha + 500000
IF s(x) = 2 THEN PRINT l(x); " saa runkosarjan 2. sijastaan 400.000 pekkaa!": raha = raha + 400000
IF s(x) = 3 THEN PRINT l(x); " saa runkosarjan 3. sijastaan 300.000 pekkaa!": raha = raha + 300000
IF s(x) = 4 THEN PRINT l(x); " saa runkosarjan 4. sijastaan 200.000 pekkaa!": raha = raha + 200000
IF s(x) > 4 AND s(x) < 9 THEN PRINT l(x); " saa playoff-bonuksen, 100.000 pekkaa.": raha = raha + 10000
uut22:
END SUB

SUB uutis2
uut2:
COLOR 8
FOR x = 1 TO 12
IF sarja = 1 AND x = u THEN x = x + 1
IF x = 13 GOTO uut33
IF lamp = l(x) THEN PRINT l(x); " nettoaa mestaruudestaan 1.500.000 pekkaa!": v(x) = v(x) + 29: edus1 = x
IF lecond = l(x) THEN PRINT l(x); " nettoaa hopeastaan 1.000.000 pekkaa!": v(x) = v(x) + 19: edus2 = x
IF lonssi = l(x) THEN PRINT l(x); " nettoaa pronssistaan 700.000 pekkaa!": v(x) = v(x) + 12: edus3 = x
IF leljas = l(x) THEN PRINT l(x); " nettoaa nelj�nnest� sijastaan 500.000 pekkaa!": v(x) = v(x) + 10
IF s(x) = 1 THEN PRINT l(x); " saa runkosarjan voitosta 500.000 pekkaa!": v(x) = v(x) + 10
IF s(x) = 2 THEN PRINT l(x); " saa runkosarjan 2. sijastaan 400.000 pekkaa!": v(x) = v(x) + 7
IF s(x) = 3 THEN PRINT l(x); " saa runkosarjan 3. sijastaan 300.000 pekkaa!": v(x) = v(x) + 6
IF s(x) = 4 THEN PRINT l(x); " saa runkosarjan 4. sijastaan 200.000 pekkaa!": v(x) = v(x) + 4
IF s(x) > 4 AND s(x) < 9 THEN PRINT l(x); " saa playoff-bonuksen, 100.000 pekkaa.": v(x) = v(x) + 2
NEXT x
INPUT yucca$
uut33:
END SUB

SUB uutis3
uut3:
IF jarko = 1 THEN COLOR 4: PRINT "Jarko Mantunen poistuu kotoisasta liigasta NHL-kaukaloihin.": COLOR 8, 0
FOR x = 1 TO 12
IF x = u AND sarja = 1 THEN COLOR 15 ELSE COLOR 8
IF v(x) > 400 AND 10 * RND > 1 THEN v(x) = v(x) - 199: PRINT l(x); " kaatuu sis�isiin riitoihin! Pelaajat k�velev�t ulos!"
IF v(x) > 300 AND 10 * RND < 7 THEN v(x) = v(x) - 70: PRINT l(x); " hajoaa totaalisesti ulkomaiden rahaseuroihin!"
IF v(x) > 250 AND 10 * RND > 5 THEN v(x) = v(x) - 45: PRINT l(x); " menett�� useita pelaajiaan ulkomaille."
IF v(x) > 210 AND 10 * RND < 4 THEN v(x) = v(x) - 15: PRINT l(x); " menett�� joitakin pelaajiaan ulkomaille."
IF v(x) > 200 AND 10 * RND < 8 AND s(x) > 8 AND s(x) < 12 THEN v(x) = v(x) - 30: PRINT l(x); " ei p��ssyt play-offeihin ja myy pelaajiaan konkurssin uhatessa!"
IF v(x) < 160 AND s(x) < 9 THEN v(x) = v(x) + 20: PRINT l(x); ":n nuori joukkue saa rutkasti kokemusta Play-offeista!"
IF v(x) < 150 AND 10 * RND < 7 THEN v(x) = v(x) + 12: PRINT l(x); " saa uuden sponsorin joka ostaa joukkueelle uusia pelaajia!"
IF v(x) < 135 AND 10 * RND < 7 THEN v(x) = v(x) + 23: PRINT l(x); " saa uuden, RIKKAAN sponsorin joka ostaa joukkueelle uusia pelaajia!"
IF v(x) < 140 AND 20 * RND > 14 THEN v(x) = v(x) + 60: PRINT l(x); " l�htee tosissaan mukaan mestaruustaistoon rahan voimalla!"
IF 10 * RND < 5 THEN v(x) = v(x) - 10: PRINT l(x); ":n veteraanipelaajia siirtyy el�kkeelle."
IF 10 * RND > 5 THEN v(x) = v(x) + 7: PRINT l(x); ":n juniority� tuottaa lupaavan nuoren t�hden!"
IF 10 * RND > 7 THEN v(x) = v(x) - (CINT(15 * RND) + 5): PRINT l(x); ":n pelaajia siirtyy rahan per�ss� muualle!"
IF 10 * RND > 7 THEN v(x) = v(x) - (CINT(15 * RND) + 5): PRINT l(x); " kokee menetyksen, pelaajia siirtyy pois!"
IF 30 * RND > 26 THEN v(x) = v(x) + 55: PRINT l(x); " antaa rahan palaa kunnolla!"
IF dotte = 0 AND x = 6 THEN INPUT yucca$
NEXT x
INPUT yucca$
END SUB

SUB veikkaus
veika:
CLS
PRINT "Veikkaa ja VOITA!:"
COLOR 4, 0
PRINT
vx1:
COLOR 12, 0: PRINT l(a); " - "; l(b)
COLOR 4, 0: INPUT "1 x 2 ? ", vei$(1)
IF vei$(1) = "1" THEN GOTO vx2
IF vei$(1) = "x" THEN GOTO vx2
IF vei$(1) = "2" THEN GOTO vx2
GOTO vx1
vx2:
COLOR 12, 0: PRINT l(c); " - "; l(d)
COLOR 4, 0: INPUT "1 x 2 ? ", vei$(2)
IF vei$(2) = "1" THEN GOTO vx3
IF vei$(2) = "x" THEN GOTO vx3
IF vei$(2) = "2" THEN GOTO vx3
GOTO vx2
vx3:
COLOR 12, 0: PRINT l(e); " - "; l(f)
COLOR 4, 0: INPUT "1 x 2 ? ", vei$(3)
IF vei$(3) = "1" THEN GOTO vx4
IF vei$(3) = "x" THEN GOTO vx4
IF vei$(3) = "2" THEN GOTO vx4
GOTO vx3
vx4:
COLOR 12, 0: PRINT l(g); " - "; l(h)
COLOR 4, 0: INPUT "1 x 2 ? ", vei$(4)
IF vei$(4) = "1" THEN GOTO vx5
IF vei$(4) = "x" THEN GOTO vx5
IF vei$(4) = "2" THEN GOTO vx5
GOTO vx4
vx5:
COLOR 12, 0: PRINT l(i); " - "; l(j)
COLOR 4, 0: INPUT "1 x 2 ? ", vei$(5)
IF vei$(5) = "1" THEN GOTO vx6
IF vei$(5) = "x" THEN GOTO vx6
IF vei$(5) = "2" THEN GOTO vx6
GOTO vx5
vx6:
COLOR 12, 0: PRINT l(k); " - "; l(m)
COLOR 4, 0: INPUT "1 x 2 ? ", vei$(6)
IF vei$(6) = "1" THEN GOTO vx7
IF vei$(6) = "x" THEN GOTO vx7
IF vei$(6) = "2" THEN GOTO vx7
GOTO vx6
vx7:
veiggo = 1
END SUB

