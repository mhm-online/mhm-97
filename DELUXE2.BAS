DECLARE SUB mainos2 ()
DECLARE SUB mikit2 ()
DECLARE SUB divtul1 ()
DECLARE SUB putki ()
DECLARE SUB runkkisdiv ()
DECLARE SUB poffmaar ()
DECLARE SUB qfinvast ()
DECLARE SUB qfinotmaar ()
DECLARE SUB qfinotlist ()
DECLARE SUB quararv ()
DECLARE SUB qfinottul ()
DECLARE SUB qfinottil ()
DECLARE SUB finmaar ()
DECLARE SUB finotte ()
DECLARE SUB fintul ()
DECLARE SUB fintil ()
DECLARE SUB duutis2 ()
DECLARE SUB goals2 ()
DECLARE SUB runkkislge ()
DECLARE SUB semarv ()
DECLARE SUB sfinmaar ()
DECLARE SUB sfinkoht ()
DECLARE SUB sfinotlist ()
DECLARE SUB entero ()
DECLARE SUB taulu1 ()
DECLARE SUB umaar ()
DECLARE SUB statisti ()
DECLARE SUB taulukko ()
DECLARE SUB goals ()
DECLARE SUB mal1 ()
DECLARE SUB mal2 ()
DECLARE SUB finplajays ()
DECLARE SUB valmen ()
DECLARE SUB viesti1 ()
DECLARE SUB ukka ()
DECLARE SUB sfinotmaar ()
DECLARE SUB sfinottul ()
DECLARE SUB ykka ()
DECLARE SUB sfinottil ()
DECLARE SUB endero1 ()
DECLARE SUB endero2 ()
DECLARE SUB finottmaar ()
DECLARE SUB finarv ()
DECLARE SUB divtaulukko ()
DECLARE SUB kimu ()
DECLARE SUB duutis1 ()
DECLARE SUB divott1 ()
DECLARE SUB divmt1 ()
DECLARE SUB mmkisat ()
DECLARE SUB marmaar ()
DECLARE SUB uutis1 ()
DECLARE SUB uutis2 ()
DECLARE SUB uutis3 ()
DECLARE SUB tallen ()
DECLARE SUB sattuma ()
'$STATIC
DEFSTR L

'$INCLUDE: 'zzz.bas'
RANDOMIZE TIMER

errori:
CLS
COLOR 15, 0: PRINT "LATAUSVIRHE...JOKO TALLENNETTUA TILANNETTA EI L�YDY"
PRINT "TAI SE ON VIRHEELLINEN (esim. editoitu tai versiosta 1.11)"
RESUME ressu
ressu:
SYSTEM

SUB divgameday
RANDOMIZE TIMER
 kimu
fucka = 5: ducka = 10: jucka = 2
IF sarja = 1 THEN GOTO cuccax2
IF sarja = 2 THEN mikit2
IF sarja = 2 THEN umaar
cuccax:
 divott1
cuccax2:
 goals
IF sarja = 2 AND sopu = 1 THEN gl(z) = 0: gl(u) = gl(u) + 1: sopu = 0
IF sarja = 1 THEN GOTO cuccax3
 divtul1
cuccax3:
 divmt1
IF sarja = 2 THEN PRINT
COLOR 6, 0
IF sarja = 2 THEN pdvo = pdvo + 1
IF sarja = 2 AND ped = pd(u) THEN PRINT "Aaargh! Tappio tuli!!": pt = pt + 1: pv = 0: mo = mo - 1: pdvl = pdvl + 1
IF sarja = 2 AND pd(u) - 1 = ped THEN PRINT "Tasapeli!": pt = 0: pv = 0: raha = raha + 3000 + 2000 * hjalli: pdvt = pdvt + 1
IF sarja = 2 AND pd(u) - 2 = ped THEN PRINT "Voitto tuli!!": pv = pv + 1: pt = 0: raha = raha + 10000 + 3000 * hjalli + extra: mo = mo + 1: pdvw = pdvw + 1
IF sarja = 2 THEN putki
IF sarja = 2 THEN PRINT
COLOR 8, 0
IF sarja = 2 AND yk > 0 THEN yk = yk - 1
IF sarja = 2 AND yk = 0 THEN tauti2 = 0
IF sarja = 2 AND ky > 0 THEN ky = ky - 1
IF sarja = 2 AND ky = 0 THEN tauti3 = 0
IF sarja = 2 THEN tauti = 0
FOR x = 1 TO 12
IF ssa(x) > 0 THEN ssa(x) = ssa(x) - 1
IF ssa(x) = 0 THEN tadv(x) = 0
NEXT x
IF mikki = 1 AND sarja = 2 AND 100 * RND < 10 THEN PRINT "Arh! Mikrofoni l�ytyy, ja saatte 25000 sakkoa ja 4 pisteen v�hennyksen!": pd(u) = pd(u) - 4: raha = raha - 25000

sattuma
GOTO enderoien

enderoien:
IF ki = 22 THEN ki = 0
IF kr = 22 THEN puoli = 1
ki = ki + 1: kr = kr + 1
END SUB

SUB endero1
COLOR 13
IF fwin(1) = 4 THEN lamp = llll(1): lecond = llll(2)
IF fwin(2) = 4 THEN lamp = llll(2): lecond = llll(1)
IF dddwin(1) = 4 THEN lkar = ldf(1)
IF dddwin(2) = 4 THEN lkar = ldf(2)
IF bwin(1) = 4 THEN lonssi = lllb(1): leljas = lllb(2)
IF bwin(2) = 4 THEN lonssi = lllb(2): leljas = lllb(1)
CLS : IF dotte = 1 THEN franko = 0
COLOR 14: PRINT "JA PEKKALANDIAN MESTARI ON "; lamp
IF sarja = 1 AND lamp = l(u) THEN lrpoff(kausi) = "KULTA"
IF sarja = 1 AND lonssi = l(u) THEN lrpoff(kausi) = "PRONSSI"
IF sarja = 1 AND lamp = l(u) THEN lampm = lamp: euro = 1
FOR x = 1 TO 12
IF lamp = l(x) AND s(x) = 1 THEN PRINT "Mestarijoukkue voitti my�s runkosarjan!": franko = franko + 1
NEXT x
IF sarja = 1 AND lamp = l(u) THEN PRINT "LLLOISTAVAA! Johtokunta onnittelee mestaruudesta!": franko = franko + 1
COLOR 7: PRINT "HOPEALLE J�I "; lecond
IF sarja = 1 AND lecond = l(u) THEN PRINT "LLLOISTAVAA! Johtokunta onnittelee hopeatilasta!": franko = franko + 1
IF sarja = 1 AND lecond = l(u) THEN lecondm = lecond: euro = 1
IF lamp = l(mesta) AND panos > 0 THEN COLOR 15, 0: PRINT "VOITIT MESTARUUSVEIKKAUKSESSA! VOITTOSUMMASI ON "; ker(mesta) * panos: raha = raha + ker(mesta) * panos: COLOR 8, 0: franko = franko + 1
FOR x = 1 TO 12
IF l(x) = lonssi THEN COLOR 6: PRINT "Pronssia saavutti "; l(x)
IF l(x) = lonssi AND sarja = 1 AND x = u THEN COLOR 6: PRINT "Johtokunta onnittelee saavutuksesta."
NEXT x
IF sarja = 1 AND lonssi = l(u) THEN lonssim = l(u): euro = 1
FOR x = 1 TO 12
NEXT x
END SUB

SUB endero2
FOR x = 1 TO 12
COLOR 3, 0: IF s(x) = 12 THEN PRINT "Liigakarsintaan joutui "; l(x); "."
IF s(x) = 12 AND sarja = 1 AND x = u AND lkar = l(u) THEN lrpoff(kausi) = "Sarj. s�il."
IF s(x) = 12 AND lkar = l(x) THEN PRINT "He onnistuivat karsinnoissa s�ilytt�m��n sarjapaikkansa.": lous = "EI": lut = "EI": GOTO uutizet
IF s(x) = 12 GOTO hablius
NEXT x
hablius:
FOR y = 1 TO 12
IF ld(y) = lkar AND sarja = 2 AND y = u THEN lousm = ld(u)
IF sarja = 1 AND x = u THEN lutm = l(u): lrpoff(kausi) = "Putoaminen"
IF sarja = 2 AND lkar = ld(u) THEN lrpoff(kausi) = "Sarjanousu"
IF ld(y) = lkar THEN PRINT l(x); " k�mm�si karsinnoissa, ja "; ld(y); " NOUSI LIIGAAN!": gagga = y: lous = ld(y): lut = l(x): GOTO doblius
NEXT y
doblius:
IF sarja = 2 AND y = u THEN sarja = 1: u = x: SWAP l(x), ld(y): SWAP v(x), vd(y): GOTO uutizet
IF sarja = 2 AND y <> u THEN SWAP l(x), ld(y): SWAP v(x), vd(y): GOTO uutizet
IF sarja = 1 AND u = x THEN sarja = 2: u = y: SWAP v(x), vd(y): SWAP l(x), ld(y): GOTO uutizet
IF sarja = 1 AND u <> x THEN SWAP v(x), vd(y): SWAP l(x), ld(y): GOTO uutizet
uutizet:
IF dotte = 0 THEN PRINT : COLOR 8: INPUT "Returnia...", yucca$
END SUB

SUB endseason
RANDOMIZE TIMER
maaritys:
 taulukko
 divtaulukko
 viesti1
IF sarja = 1 AND s(u) = 1 THEN lunkom = l(u)
IF sarja = 2 THEN runkkisdiv
IF sarja = 1 THEN runkkislge
 poffmaar
euro = 0
FOR xxx = 1 TO 8
qwin(xxx) = 0
NEXT xxx
FOR xxx = 1 TO 6
dwin(xxx) = 0
NEXT xxx
FOR xxx = 1 TO 4
ddwin(xxx) = 0
swin(xxx) = 0
NEXT xxx
FOR xxx = 1 TO 2
dddwin(xxx) = 0
fwin(xxx) = 0
bwin(xxx) = 0
NEXT xxx
quarterfin:
 qfinvast
FOR x = 1 TO 8
IF sarja = 1 AND ll(x) = l(u) THEN lrpoff(kausi) = "1/4f."
NEXT x
FOR x = 1 TO 6
IF sarja = 2 AND ldd(x) = ld(u) THEN lrpoff(kausi) = "karsinta 1/4f."
NEXT x
COLOR 8, 0: INPUT "Paina Return...", yucca$: qkr = 1
ukka1 = 0: ukka2 = 0: ukka3 = 0: ukka4 = 0: ukka5 = 0: ukka6 = 0: ukka7 = 0
quartfin:
 qfinotmaar
IF ukka1 AND ukka2 AND ukka3 AND ukka4 = 1 AND ukka5 = 1 AND ukka6 = 1 AND ukka7 = 1 THEN GOTO semifin
 qfinotlist
 quararv
 qfinottul
IF ukka1 = 1 THEN GOTO skip1
IF gl(a) > gl(b) THEN qwin(a) = qwin(a) + 1 ELSE qwin(b) = qwin(b) + 1
skip1:
IF ukka2 = 1 THEN GOTO skip2
IF gl(c) > gl(d) THEN qwin(c) = qwin(c) + 1 ELSE qwin(d) = qwin(d) + 1
skip2:
IF ukka3 = 1 THEN GOTO skip3
IF gl(e) > gl(f) THEN qwin(e) = qwin(e) + 1 ELSE qwin(f) = qwin(f) + 1
skip3:
IF ukka4 = 1 THEN GOTO skip4:
IF gl(g) > gl(h) THEN qwin(g) = qwin(g) + 1 ELSE qwin(h) = qwin(h) + 1
skip4:
IF ukka5 = 1 THEN GOTO skip5
IF dl(aa) > dl(bb) THEN dwin(aa) = dwin(aa) + 1 ELSE dwin(bb) = dwin(bb) + 1
skip5:
IF ukka6 = 1 THEN GOTO skip6
IF dl(cc) > dl(dd) THEN dwin(cc) = dwin(cc) + 1 ELSE dwin(dd) = dwin(dd) + 1
skip6:
IF ukka7 = 1 THEN GOTO skip7
IF dl(ee) > dl(ff) THEN dwin(ee) = dwin(ee) + 1 ELSE dwin(ff) = dwin(ff) + 1
skip7:
 ukka
 qfinottil
GOTO quartfin
semifin:
 sfinmaar
semif:
 sfinkoht
ykka1 = 0: ykka2 = 0: ykka3 = 0: ykka4 = 0: skr = 1
semi:
 sfinotmaar
IF ykka1 = 1 AND ykka2 = 1 AND ykka3 = 1 AND ykka4 = 1 THEN GOTO finale
 sfinotlist
 semarv
 sfinottul
IF ykka1 = 1 THEN GOTO scip1
IF gl(a) > gl(b) THEN swin(a) = swin(a) + 1 ELSE swin(b) = swin(b) + 1
scip1:
IF ykka2 = 1 THEN GOTO scip2
IF gl(c) > gl(d) THEN swin(c) = swin(c) + 1 ELSE swin(d) = swin(d) + 1
scip2:
IF ykka3 = 1 THEN GOTO scip3
IF dl(aa) > dl(bb) THEN ddwin(aa) = ddwin(aa) + 1 ELSE ddwin(bb) = ddwin(bb) + 1
scip3:
IF ykka4 = 1 THEN GOTO scip4
IF dl(cc) > dl(dd) THEN ddwin(cc) = ddwin(cc) + 1 ELSE ddwin(dd) = ddwin(dd) + 1
scip4:
 ykka
 sfinottil
GOTO semi
finale:
 finmaar
 finplajays
fkr = 1: akka = 0: ukko = 0: kopo = 0
final:
 finottmaar
IF akka = 1 AND ukko = 1 AND kopo = 1 THEN GOTO enderox
 finotte
 finarv
 fintul
IF akka = 1 THEN GOTO kip1
IF gl(a) > gl(b) THEN fwin(a) = fwin(a) + 1 ELSE fwin(b) = fwin(b) + 1
kip1:
IF kopo = 1 THEN GOTO kip2
IF bl(a) > bl(b) THEN bwin(a) = bwin(a) + 1 ELSE bwin(b) = bwin(b) + 1
kip2:
IF ukko = 1 THEN GOTO kip3
IF dl(a) > dl(b) THEN dddwin(a) = dddwin(a) + 1 ELSE dddwin(b) = dddwin(b) + 1
kip3:
 fintil
GOTO final
enderox:
 endero1
 endero2
 mmkisat
CLS
 uutis1
 uutis2
 uutis3
 duutis1
 duutis2
GOTO enderi
semarv:
RETURN
enderi:
kauzi = 1
END SUB

SUB finarv
farv:
mla(a) = CINT(vvvv(a) * RND) + 20: mla(b) = CINT(vvvv(b) * RND)
bla(a) = CINT(vvvb(a) * RND) + 20: bla(b) = CINT(vvvb(b) * RND)
dla(a) = CINT(vdf(a) * RND) + 20: dla(b) = CINT(vdf(b) * RND)
mal(a) = mla(a) / 25: mal(b) = mla(b) / 25
bal(a) = bla(a) / 25: bal(b) = bla(b) / 25
dal(a) = dla(a) / 25: dal(b) = dla(b) / 25
gl(a) = CINT(mal(a)): gl(b) = CINT(mal(b))
bl(a) = CINT(bal(a)): bl(b) = CINT(bal(b))
dl(a) = CINT(dal(a)): dl(b) = CINT(dal(b))
IF gl(a) = gl(b) THEN GOTO farv
IF bl(a) = bl(b) GOTO farv
IF dl(a) = dl(b) GOTO farv
END SUB

SUB finottmaar
IF fkr = 1 THEN a = 1: b = 2
IF fkr = 2 THEN a = 2: b = 1
IF fkr = 3 THEN a = 1: b = 2
IF fkr = 4 THEN a = 2: b = 1
IF fkr = 5 THEN a = 1: b = 2
IF fkr = 6 THEN a = 2: b = 1
IF fkr = 7 THEN a = 1: b = 2
END SUB

SUB finplajays
CLS : COLOR 14
rru = CINT(9 * RND) + 1
PRINT "Ilmassa on j�nnityst�, finaalijoukkueet ovat viimein pitk�n kauden j�lkeen"
PRINT "selvill�!"
PRINT "Kotiedun finaalisarjaan saa "; llll(1); ","
IF vvvv(1) < vvvv(2) THEN PRINT "mutta joukkue l�hteekin altavastaajana mukaan ja tarvitsee etua."
IF vvvv(1) > vvvv(2) THEN PRINT "joka l�htee ennakkosuosikkina tuleviin otteluihin!"
PRINT "Toinen Maso-liigan loppuottelija on "; llll(2); ", jonka manageri "
IF llll(2) = l(u) AND sarja = 1 THEN PRINT nimi$; " on piiskannut hyv��n vauhtiin." ELSE PRINT lm(rru); " on piiskannut hyvin vauhtiin kuluvalla kaudella!"
PRINT
FOR x = 1 TO 2
IF sarja = 1 AND llll(x) = l(u) THEN lrpoff(kausi) = "HOPEA"
IF sarja = 2 AND ldf(x) = ld(u) THEN lrpoff(kausi) = "karsinnan fin."
NEXT x
COLOR 12
PRINT "Pronssitaistossa vastakkain ovat "; lllb(1); " ja "; lllb(2); "."
PRINT "Kolmannen sijan merkityst� ei pid� ollenkaan v�heksy�, tuohan se mukanaan"
PRINT "paikan Europeleihin."
IF lllb(1) = ll(1) THEN PRINT "Runkosarjan voittaneelle "; lllb(1); ":lle pronssiotteluun joutuminen": PRINT "on varmasti valtava pettymys."
IF lllb(1) = ll(7) OR lllb(1) = ll(8) THEN PRINT "Hikisesti Play-offeihin ylt�nyt "; lllb(1); " saa olla tyytyv�inen": PRINT "pronssiottelupaikastaan!"
IF lllb(2) = ll(7) OR lllb(2) = ll(8) THEN PRINT "Runkosarjassa r�mpinyt "; lllb(2); " on ollut my�h�iskev��n": PRINT "positiivisin yll�tt�j�!!"
PRINT : COLOR 4
PRINT "Nousukarsinnan finaalissa kohtaavat "; ldf(1); " ja "; ldf(2)
IF ldf(1) = lds(1) THEN PRINT ldf(1); ":lla on takana kova kausi liigassa, ja voisi olettaa": PRINT "kokemuksen liigatahdista antavan heille edun haastajaa vastaan."
FOR tt = 2 TO 4
IF ldf(1) = lds(tt) THEN PRINT "Liigassa pelannut "; lds(1); " ei ole en�� mukana.": PRINT "Kotiedun finaaliin saa siten "; ldf(1)
NEXT tt
IF ldf(2) = lds(4) THEN PRINT lds(1); ":n niputtanut "; ldf(2); " l�htee todella n�lk�isen� finaaliin!"
IF ldf(1) = ldd(1) OR ldf(2) = ldd(1) THEN PRINT "Divarin runkosarjan voittanut "; ldd(1); " katselee my�s himokkaasti": PRINT "liigan suuntaan."
IF ldf(1) = ldd(5) OR ldf(2) = ldd(5) THEN PRINT "Divarissa kovin keskinkertaisesti p�rj�nnyt "; ldd(5); " on yll�tt�nyt": PRINT "kaikki jyr��m�ll� vastuttamattomasti tiet�ns� ylemm�lle sarjatasolle."
IF ldf(2) = ldd(6) THEN PRINT "Viimeisen� divarin jatkopeleihin ponnistanut "; ldd(6); "on h�r�n": PRINT "vimmalla raivannut vastustajansa pois alta. Miten k�ynee nyt?"
PRINT
COLOR 12, 0: INPUT "Returnia...", yucca$
END SUB

SUB goals
IF jucka = 1 THEN mal1 ELSE mal2
FOR x = 1 TO 12
IF mal(x) < 0 THEN mal(x) = 0
NEXT x
IF sarja = 1 THEN mal(u) = mal(u) + mo * 2 - krapu - tauti - tauti2 + micci + tre
IF sarja = 1 AND cheer = 1 THEN mal(u) = mal(u) + 6
IF sarja = 1 THEN mal(z) = mal(z) - molke + tauti3
IF sarja = 2 THEN mal(u) = mal(u) + mo - tauti - tauti2 + micci + tre
IF sarja = 2 AND cheer = 1 THEN mal(u) = mal(u) + 3
IF mal(u) < 0 THEN mal(u) = 0
IF sarja = 2 THEN mal(z) = mal(z) - molke + tauti3
IF mal(z) < 0 THEN mal(z) = 0
 goals2
END SUB

SUB kriisi
CLS
COLOR 12, 0
PRINT "Kriisipalaveri auttaa joukkuetta unohtamaan tappioputken, ja se maksaa"
IF sarja = 1 THEN PRINT "50000 pekkaa!!"
IF sarja = 2 THEN PRINT "25000 pekkaa!!"
IF sarja = 1 AND raha < 50000 THEN PRINT "T�t� summaa sinulla ei ole, joten bye-bye!": INPUT yucca$: GOTO ender
IF sarja = 2 AND raha < 25000 THEN PRINT "T�t� summaa sinulla ei ole, joten bye-bye!": INPUT yucca$: GOTO ender
PRINT : COLOR 14, 0
INPUT "J�rjest�tk� palaverin ??? (k/e) ", ccc$
IF ccc$ = "k" THEN GOTO jess
IF ccc$ = "e" THEN PRINT "OK.": INPUT yucca$: GOTO ender
jess:
PRINT : COLOR 6, 0
PRINT "Psykologi valaa yhdess� managerin"
PRINT "kanssa uskoa pelaajien mieliin. Moraali paranee, ja joukkue"
INPUT "keskittyy tuleviin haasteisiin uudella innolla!!", yucca$
IF sarja = 1 THEN mo = mo + 4 + moplus: raha = raha - 50000: GOTO ender
IF sarja = 2 THEN mo = mo + 4 + moplus: raha = raha - 25000: GOTO ender
ender:
END SUB

SUB lataus
ON ERROR GOTO errori
OPEN "data2.mhm" FOR INPUT AS #1
INPUT #1, laah(1), laah(2), laah(3), laah(4), laah(5), laah(6), laah(7), laah(8), laah(9), laah(10)
INPUT #1, lw(1), lw(2), lw(3), lw(4), lw(5), lw(6), lw(7), lw(8), lw(9), lw(10), lw(11), lw(12)
CLOSE #1
IF LEN(nimi$) > 8 THEN OPEN LEFT$(nimi$, 8) + ".xxx" FOR INPUT AS #1 ELSE OPEN nimi$ + ".xxx" FOR INPUT AS #1
INPUT #1, nimi$, kausi, raha, sarja, u, halli$, hjalli, vai, banki, ghalli, moplus, palo, hinta, assassi, edus1, edus2, edus3, euro, dext
INPUT #1, dotte, daulu, veikko, cheer, mikki, molce, extra, ki, kr, psmo, psmw, psmt, psml, pdvo, pdvw, pdvt, pdvl, knhl, unhl
INPUT #1, l(1), l(2), l(3), l(4), l(5), l(6), l(7), l(8), l(9), l(10), l(11), l(12)
INPUT #1, ld(1), ld(2), ld(3), ld(4), ld(5), ld(6), ld(7), ld(8), ld(9), ld(10), ld(11), ld(12)
INPUT #1, v(1), v(2), v(3), v(4), v(5), v(6), v(7), v(8), v(9), v(10), v(11), v(12)
INPUT #1, vd(1), vd(2), vd(3), vd(4), vd(5), vd(6), vd(7), vd(8), vd(9), vd(10), vd(11), vd(12)
INPUT #1, lm(1), lm(2), lm(3), lm(4), lm(5), lm(6), lm(7), lm(8), lm(9), lm(10), lm(11), lm(12), lm(13), lm(14), lm(15), lm(16)
FOR x = 1 TO 12 STEP 4
INPUT #1, wx1(x), wx2(x), wx3(x), wx1(x + 1), wx2(x + 1), wx3(x + 1), wx1(x + 2), wx2(x + 2), wx3(x + 2), wx1(x + 3), wx2(x + 3), wx3(x + 3)
NEXT x
FOR x = 1 TO kausi - 1
INPUT #1, lrj(x), lrsarja(x), rvo(x), rta(x), rda(x), rmp(x), rmv(x), rpi(x), rsi(x), rjv(x), lrpoff(x)
NEXT x
INPUT #1, lunko, lamp, lecond, lous, lut, lonssi
INPUT #1, lunkom, lampm, lecondm, lousm, lutm, lonssim
CLOSE #1
IF vai = 5 AND sarja = 1 THEN p(u) = p(u) - 3
IF vai = 5 AND sarja = 2 THEN pd(u) = pd(u) - 3
IF dotte = 1 THEN WIDTH 80, 43 ELSE WIDTH 80, 25
carica = 1
END SUB

SUB mal1
mal(a) = CINT(v(a) * RND) + talg(a) + fucka
mal(b) = CINT(v(b) * RND) + talg(b) - fucka
mal(c) = CINT(v(c) * RND) + talg(c) + fucka
mal(d) = CINT(v(d) * RND) + talg(d) - fucka
mal(e) = CINT(v(e) * RND) + talg(e) + fucka
mal(f) = CINT(v(f) * RND) + talg(f) - fucka
mal(g) = CINT(v(g) * RND) + talg(g) + fucka
mal(h) = CINT(v(h) * RND) + talg(h) - fucka
mal(i) = CINT(v(i) * RND) + talg(i) + fucka
mal(j) = CINT(v(j) * RND) + talg(j) - fucka
mal(k) = CINT(v(k) * RND) + talg(k) + fucka
mal(m) = CINT(v(m) * RND) + talg(m) - fucka
END SUB

SUB mal2
mal(a) = CINT(vd(a) * RND) + talg(a) + fucka
mal(b) = CINT(vd(b) * RND) + talg(b) - fucka
mal(c) = CINT(vd(c) * RND) + talg(c) + fucka
mal(d) = CINT(vd(d) * RND) + talg(d) - fucka
mal(e) = CINT(vd(e) * RND) + talg(e) + fucka
mal(f) = CINT(vd(f) * RND) + talg(f) - fucka
mal(g) = CINT(vd(g) * RND) + talg(g) + fucka
mal(h) = CINT(vd(h) * RND) + talg(h) - fucka
mal(i) = CINT(vd(i) * RND) + talg(i) + fucka
mal(j) = CINT(vd(j) * RND) + talg(j) - fucka
mal(k) = CINT(vd(k) * RND) + talg(k) + fucka
mal(m) = CINT(vd(m) * RND) + talg(m) - fucka
END SUB

SUB sfinotmaar
IF skr = 1 THEN a = 1: b = 4: c = 2: d = 3: aa = 1: bb = 4: cc = 2: dd = 3
IF skr = 2 THEN a = 4: b = 1: c = 3: d = 2: aa = 4: bb = 1: cc = 3: dd = 2
IF skr = 3 THEN a = 1: b = 4: c = 2: d = 3: aa = 1: bb = 4: cc = 2: dd = 3
IF skr = 4 THEN a = 4: b = 1: c = 3: d = 2: aa = 4: bb = 1: cc = 3: dd = 2
IF skr = 5 THEN a = 1: b = 4: c = 2: d = 3: aa = 1: bb = 4: cc = 2: dd = 3
END SUB

SUB sfinottil
COLOR 13, 0: PRINT "JA TILANTEET OTTELUPAREISSA OVAT:"
PRINT : COLOR 12, 0
PRINT lll(1); " - "; lll(4), swin(1); "-"; swin(4)
PRINT lll(2); " - "; lll(3), swin(2); "-"; swin(3)
COLOR 4, 0
PRINT lds(1); " - "; lds(4), ddwin(1); "-"; ddwin(4)
PRINT lds(2); " - "; lds(3), ddwin(2); "-"; ddwin(3)
PRINT
COLOR 8, 0: INPUT "Return...", yucca$
skr = skr + 1
END SUB

SUB sfinottul
PRINT : COLOR 12, 0
IF ykka1 = 0 THEN PRINT lll(a); " - "; lll(b), gl(a); " - "; gl(b)
IF ykka2 = 0 THEN PRINT lll(c); " - "; lll(d), gl(c); " - "; gl(d)
COLOR 4, 0
IF ykka3 = 0 THEN PRINT lds(aa); " - "; lds(bb), dl(aa); " - "; dl(bb)
IF ykka4 = 0 THEN PRINT lds(cc); " - "; lds(dd), dl(cc); " - "; dl(dd)
PRINT : COLOR 8, 0
END SUB

SUB smmt1
gf(a) = gf(a) + gl(a): ga(a) = ga(a) + gl(b): gf(b) = gf(b) + gl(b): ga(b) = ga(b) + gl(a)
gf(c) = gf(c) + gl(c): ga(c) = ga(c) + gl(d): gf(d) = gf(d) + gl(d): ga(d) = ga(d) + gl(c)
gf(e) = gf(e) + gl(e): ga(e) = ga(e) + gl(f): gf(f) = gf(f) + gl(f): ga(f) = ga(f) + gl(e)
gf(g) = gf(g) + gl(g): ga(g) = ga(g) + gl(h): gf(h) = gf(h) + gl(h): ga(h) = ga(h) + gl(g)
gf(i) = gf(i) + gl(i): ga(i) = ga(i) + gl(j): gf(j) = gf(j) + gl(j): ga(j) = ga(j) + gl(i)
gf(k) = gf(k) + gl(k): ga(k) = ga(k) + gl(m): gf(m) = gf(m) + gl(m): ga(m) = ga(m) + gl(k)
IF gl(a) > gl(b) THEN p(a) = p(a) + 2: wi(a) = wi(a) + 1: wo(b) = wo(b) + 1: veo$(1) = "1"
IF gl(a) = gl(b) THEN p(a) = p(a) + 1: p(b) = p(b) + 1: wr(a) = wr(a) + 1: wr(b) = wr(b) + 1: veo$(1) = "x"
IF gl(a) < gl(b) THEN p(b) = p(b) + 2: wi(b) = wi(b) + 1: wo(a) = wo(a) + 1: veo$(1) = "2"
IF gl(c) > gl(d) THEN p(c) = p(c) + 2: wi(c) = wi(c) + 1: wo(d) = wo(d) + 1: veo$(2) = "1"
IF gl(c) = gl(d) THEN p(c) = p(c) + 1: p(d) = p(d) + 1: wr(c) = wr(c) + 1: wr(d) = wr(d) + 1: veo$(2) = "x"
IF gl(c) < gl(d) THEN p(d) = p(d) + 2: wi(d) = wi(d) + 1: wo(c) = wo(c) + 1: veo$(2) = "2"
IF gl(e) > gl(f) THEN p(e) = p(e) + 2: wi(e) = wi(e) + 1: wo(f) = wo(f) + 1: veo$(3) = "1"
IF gl(e) = gl(f) THEN p(e) = p(e) + 1: p(f) = p(f) + 1: wr(e) = wr(e) + 1: wr(f) = wr(f) + 1: veo$(3) = "x"
IF gl(e) < gl(f) THEN p(f) = p(f) + 2: wi(f) = wi(f) + 1: wo(e) = wo(e) + 1: veo$(3) = "2"
IF gl(g) > gl(h) THEN p(g) = p(g) + 2: wi(g) = wi(g) + 1: wo(h) = wo(h) + 1: veo$(4) = "1"
IF gl(g) = gl(h) THEN p(g) = p(g) + 1: p(h) = p(h) + 1: wr(g) = wr(g) + 1: wr(h) = wr(h) + 1: veo$(4) = "x"
IF gl(g) < gl(h) THEN p(h) = p(h) + 2: wi(h) = wi(h) + 1: wo(g) = wo(g) + 1: veo$(4) = "2"
IF gl(i) > gl(j) THEN p(i) = p(i) + 2: wi(i) = wi(i) + 1: wo(j) = wo(j) + 1: veo$(5) = "1"
IF gl(i) = gl(j) THEN p(i) = p(i) + 1: p(j) = p(j) + 1: wr(i) = wr(i) + 1: wr(j) = wr(j) + 1: veo$(5) = "x"
IF gl(i) < gl(j) THEN p(j) = p(j) + 2: wi(j) = wi(j) + 1: wo(i) = wo(i) + 1: veo$(5) = "2"
IF gl(k) > gl(m) THEN p(k) = p(k) + 2: wi(k) = wi(k) + 1: wo(m) = wo(m) + 1: veo$(6) = "1"
IF gl(k) = gl(m) THEN p(k) = p(k) + 1: p(m) = p(m) + 1: wr(k) = wr(k) + 1: wr(m) = wr(m) + 1: veo$(6) = "x"
IF gl(k) < gl(m) THEN p(m) = p(m) + 2: wi(m) = wi(m) + 1: wo(k) = wo(k) + 1: veo$(6) = "2"
END SUB

SUB smott1
CLS
COLOR 13, 0: PRINT "JA KIERROKSEN"; kr; "OTTELUT MASO-LIIGASSA OVAT:"
PRINT : COLOR 12, 0
PRINT l(a); " - "; l(b)
PRINT l(c); " - "; l(d)
PRINT l(e); " - "; l(f)
PRINT l(g); " - "; l(h)
PRINT l(i); " - "; l(j)
PRINT l(k); " - "; l(m)
PRINT : COLOR 8, 0
PRINT "Paina RETURN kun haluat n�hd� tulokset!"
INPUT yucca$
END SUB

SUB statisti
ukka:
CLS
ylge = 0
ydiv = 0
FOR x = 1 TO 12
ylge = ylge + v(x)
ydiv = ydiv + vd(x)
NEXT x
IF kausi < 101 THEN COLOR 15, 0: PRINT "TILASTOT"
IF kausi > 100 THEN COLOR 15, 0: PRINT "PELISI ON OHI!"
PRINT
COLOR 13: PRINT "Nimesi: "; nimi$
COLOR 10: PRINT "Vaikeustaso:"; vai
PRINT
COLOR 12: PRINT "Liigajoukkueiden keskim��r�inen taito: "; CINT(ylge / 12)
PRINT "Divisioonajoukkueiden keskim��r�inen taito: "; CINT(ydiv / 12)
PRINT
COLOR 14: PRINT "1. Pekkalandian Mestarit"
COLOR 7: PRINT "2. Hopeajoukkueet"
COLOR 6: PRINT "3. Pronssijoukkueet"
COLOR 4: PRINT "4. Runkosarjan voittajat"
COLOR 5: PRINT "5. Putoajat"
COLOR 12: PRINT "6. Nousijat"
COLOR 15: PRINT "7. Henkil�kohtainen Statistiikka"
COLOR 3: PRINT "8. Runkosarjamenestys"
COLOR 9: PRINT "9. MM-Kisojen maratontaulukko"
COLOR 13: PRINT "A. Euroopan Mestarit"
PRINT
IF kausi < 101 THEN COLOR 8, 0: INPUT "RETURNilla p��set p��valikkoon! ", stat$
IF kausi > 100 THEN COLOR 8, 0: INPUT "RETURNilla LOPETAT PELIN! ", stat$

IF kausi = 1 THEN PRINT ;  ELSE IF stat$ = "1" OR stat$ = "2" OR stat$ = "3" OR stat$ = "4" OR stat$ = "5" OR stat$ = "6" OR stat$ = "a" THEN GOSUB staatik
IF stat$ = "7" THEN GOSUB personlich
IF stat$ = "8" AND kausi > 1 THEN GOSUB runkkis
IF stat$ = "9" THEN GOSUB maraton
IF stat$ = "" THEN GOTO enderoh
GOTO ukka

staatik:
CLS
IF LEN(nimi$) > 8 THEN OPEN LEFT$(nimi$, 8) + ".xx2" FOR INPUT AS #1 ELSE OPEN nimi$ + ".xx2" FOR INPUT AS #1
FOR x = 1 TO kausi - 1
INPUT #1, lunko1, lamp1, lecond1, lous1, lut1, lonssi1, lemes1
INPUT #1, lunkom1, lampm1, lecondm1, lousm1, lutm1, lonssim1, lemesm1
IF stat$ = "1" AND lamp1 = lampm1 THEN COLOR 14: PRINT x; ". kauden mestari oli: "; lamp1 ELSE IF stat$ = "1" THEN COLOR 8: PRINT x; ". kauden mestari oli: "; lamp1
IF stat$ = "2" AND lecond1 = lecondm1 THEN COLOR 14: PRINT x; ". kauden hopeajoukkue oli: "; lecond1 ELSE IF stat$ = "2" THEN COLOR 8: PRINT x; ". kauden hopeajoukkue oli: "; lecond1
IF stat$ = "3" AND lonssi1 = lonssim1 THEN COLOR 14: PRINT x; ". kauden pronssijoukkue oli: "; lonssi1 ELSE IF stat$ = "3" THEN COLOR 8: PRINT x; ". kauden pronssijoukkue oli: "; lonssi1
IF stat$ = "4" AND lunko1 = lunkom1 THEN COLOR 14: PRINT x; ". kauden runkosarjavoittaja oli: "; lunko1 ELSE IF stat$ = "4" THEN COLOR 8: PRINT x; ". kauden runkosarjavoittaja oli: "; lunko1
IF stat$ = "5" AND lut1 = lutm1 THEN COLOR 14: PRINT x; ". kauden putoaja oli: "; lut1 ELSE IF stat$ = "5" THEN COLOR 8: PRINT x; ". kauden putoaja oli: "; lut1
IF stat$ = "6" AND lous1 = lousm1 THEN COLOR 14: PRINT x; ". kauden nousija oli: "; lous1 ELSE IF stat$ = "6" THEN COLOR 8: PRINT x; ". kauden nousija oli: "; lous1
IF stat$ = "a" AND lemes1 = lemesm1 THEN COLOR 14: PRINT x; ". kauden Euroopan mestari oli: "; lemes1 ELSE IF stat$ = "a" THEN COLOR 8: PRINT x; ". kauden Euroopan mestari oli: "; lemes1
entero
NEXT x
INPUT yucca$
CLOSE #1
RETURN

personlich:
ykka1 = 0: ykka2 = 0: ykka3 = 0: ykka4 = 0: ykka5 = 0: ykka6 = 0: ykka7 = 0
IF kausi > 1 AND LEN(nimi$) > 8 THEN OPEN LEFT$(nimi$, 8) + ".xx2" FOR INPUT AS #1 ELSE IF kausi > 1 THEN OPEN nimi$ + ".xx2" FOR INPUT AS #1
FOR x = 1 TO kausi - 1
INPUT #1, lunko1, lamp1, lecond1, lous1, lut1, lonssi1, lemes1
INPUT #1, lunkom1, lampm1, lecondm1, lousm1, lutm1, lonssim1, lemesm1
IF lemes1 = lemesm1 THEN ykka7 = ykka7 + 1
IF lunko1 = lunkom1 THEN ykka1 = ykka1 + 1
IF lamp1 = lampm1 THEN ykka2 = ykka2 + 1
IF lecond1 = lecondm1 THEN ykka3 = ykka3 + 1
IF lonssi1 = lonssim1 THEN ykka6 = ykka6 + 1
IF lous1 = lousm1 THEN ykka4 = ykka4 + 1
IF lut1 = lutm1 THEN ykka5 = ykka5 + 1
NEXT x
CLOSE #1
CLS
COLOR 14, 0: PRINT "SM-LIIGA...": COLOR 8, 0
PRINT
PRINT "OTTELUT:   "; psmo
PRINT "VOITOT:    "; psmw
PRINT "TASAPELIT: "; psmt
PRINT "TAPPIOT:   "; psml
PRINT
COLOR 14, 0: PRINT "DIVISIOONA...": COLOR 8, 0
PRINT
PRINT "OTTELUT:   "; pdvo
PRINT "VOITOT:    "; pdvw
PRINT "TASAPELIT: "; pdvt
PRINT "TAPPIOT:   "; pdvl
PRINT : COLOR 4, 0
IF ykka7 > 0 THEN PRINT "Olet voittanut Euroopan mestaruuden"; ykka7; "kertaa."
IF ykka2 > 0 THEN PRINT "Olet voittanut mestaruuden"; ykka2; "kertaa."
IF ykka3 > 0 THEN PRINT "Olet voittanut hopeaa"; ykka3; "kertaa."
IF ykka6 > 0 THEN PRINT "Olet voittanut pronssia"; ykka6; "kertaa."
IF ykka1 > 0 THEN PRINT "Olet voittanut runkosarjan"; ykka1; "kertaa."
IF ykka4 > 0 THEN PRINT "Olet noussut liigaan"; ykka4; "kertaa."
IF ykka5 > 0 THEN PRINT "Olet pudonnut divisioonaan"; ykka5; "kertaa."
PRINT
COLOR 14, 0: PRINT "M�HM� - ARVO (KOKEMUSTASOSI)": COLOR 12, 0
IF psmo + pdvo > 1500 THEN PRINT "Ultimaattinen GURU!": GOTO dbodo
IF psmo + pdvo > 1200 THEN PRINT "Huippukokenut, ketkuileva kettu!": GOTO dbodo
IF psmo + pdvo > 1000 THEN PRINT "Arvostettu pitk�n linjan puurtaja!": GOTO dbodo
IF psmo + pdvo > 800 THEN PRINT "Kokenut ammattilainen!": GOTO dbodo
IF psmo + pdvo > 600 THEN PRINT "Tarmokas sarjajyr�!": GOTO dbodo
IF psmo + pdvo > 500 THEN PRINT "Luotettava puurtaja!": GOTO dbodo
IF psmo + pdvo > 400 THEN PRINT "Paikkansa vakiinnuttanut taistelija!": GOTO dbodo
IF psmo + pdvo > 300 THEN PRINT "Ehdolla eliittiin!": GOTO dbodo
IF psmo + pdvo > 200 THEN PRINT "Lupaava, nuori uskalikko!": GOTO dbodo
IF psmo + pdvo > 100 THEN PRINT "N�yt�n paikkaa etsiv� nuori mies!": GOTO dbodo
IF psmo + pdvo < 101 THEN PRINT "Keltanokka!": GOTO dbodo
dbodo:
PRINT
COLOR 8, 0: INPUT yucca$
RETURN

runkkis:
CLS
FOR x = 1 TO kausi - 1
IF lrsarja(x) = "liiga  " THEN COLOR 13, 0 ELSE COLOR 4, 0
PRINT x; "."; lrj(x); "  "; lrsarja(x); rvo(x); rta(x); rda(x); rmp(x); "-"; rmv(x); rpi(x), rsi(x); rjv(x); lrpoff(x)
entero
NEXT x
INPUT yucca$
RETURN
maraton:
CLS : marmaar
FOR hh = 1 TO 12
IF ms(hh) = 1 THEN COLOR 15
IF ms(hh) = 2 THEN COLOR 7
IF ms(hh) = 3 THEN COLOR 7
IF ms(hh) > 3 THEN COLOR 8
LOCATE ms(hh), 1: PRINT lw(hh), wx1(hh); wx2(hh); wx3(hh)
NEXT hh
LOCATE 14, 1: COLOR 14, 0: INPUT "Returnia...", yucca$
GOTO ukka

enderoh:
END SUB

SUB taulu1
FOR x = 1 TO 12
s(x) = 1
ero(x) = gf(x) - ga(x)
NEXT x
FOR x = 1 TO 11
IF x < 2 THEN GOSUB ta11
IF x < 3 THEN GOSUB ta10
IF x < 4 THEN GOSUB ta9
IF x < 5 THEN GOSUB ta8
IF x < 6 THEN GOSUB ta7
IF x < 7 THEN GOSUB ta6
IF x < 8 THEN GOSUB ta5
IF x < 9 THEN GOSUB ta4
IF x < 10 THEN GOSUB ta3
IF x < 11 THEN GOSUB ta2
IF x < 12 THEN GOSUB ta1
NEXT x
GOTO enffer

ta1:
IF p(x) = p(x + 1) AND ero(x) >= ero(x + 1) THEN s(x + 1) = s(x + 1) + 1: RETURN
IF p(x) = p(x + 1) AND ero(x) < ero(x + 1) THEN s(x) = s(x) + 1: RETURN
IF p(x) > p(x + 1) THEN s(x + 1) = s(x + 1) + 1 ELSE s(x) = s(x) + 1
RETURN
ta2:
IF p(x) = p(x + 2) AND ero(x) >= ero(x + 2) THEN s(x + 2) = s(x + 2) + 1: RETURN
IF p(x) = p(x + 2) AND ero(x) < ero(x + 2) THEN s(x) = s(x) + 1: RETURN
IF p(x) > p(x + 2) THEN s(x + 2) = s(x + 2) + 1 ELSE s(x) = s(x) + 1
RETURN
ta3:
IF p(x) = p(x + 3) AND ero(x) >= ero(x + 3) THEN s(x + 3) = s(x + 3) + 1: RETURN
IF p(x) = p(x + 3) AND ero(x) < ero(x + 3) THEN s(x) = s(x) + 1: RETURN
IF p(x) > p(x + 3) THEN s(x + 3) = s(x + 3) + 1 ELSE s(x) = s(x) + 1
RETURN
ta4:
IF p(x) = p(x + 4) AND ero(x) >= ero(x + 4) THEN s(x + 4) = s(x + 4) + 1: RETURN
IF p(x) = p(x + 4) AND ero(x) < ero(x + 4) THEN s(x) = s(x) + 1: RETURN
IF p(x) > p(x + 4) THEN s(x + 4) = s(x + 4) + 1 ELSE s(x) = s(x) + 1
RETURN
ta5:
IF p(x) = p(x + 5) AND ero(x) >= ero(x + 5) THEN s(x + 5) = s(x + 5) + 1: RETURN
IF p(x) = p(x + 5) AND ero(x) < ero(x + 5) THEN s(x) = s(x) + 1: RETURN
IF p(x) > p(x + 5) THEN s(x + 5) = s(x + 5) + 1 ELSE s(x) = s(x) + 1
RETURN
ta6:
IF p(x) = p(x + 6) AND ero(x) >= ero(x + 6) THEN s(x + 6) = s(x + 6) + 1: RETURN
IF p(x) = p(x + 6) AND ero(x) < ero(x + 6) THEN s(x) = s(x) + 1: RETURN
IF p(x) > p(x + 6) THEN s(x + 6) = s(x + 6) + 1 ELSE s(x) = s(x) + 1
RETURN
ta7:
IF p(x) = p(x + 7) AND ero(x) >= ero(x + 7) THEN s(x + 7) = s(x + 7) + 1: RETURN
IF p(x) = p(x + 7) AND ero(x) < ero(x + 7) THEN s(x) = s(x) + 1: RETURN
IF p(x) > p(x + 7) THEN s(x + 7) = s(x + 7) + 1 ELSE s(x) = s(x) + 1
RETURN
ta8:
IF p(x) = p(x + 8) AND ero(x) >= ero(x + 8) THEN s(x + 8) = s(x + 8) + 1: RETURN
IF p(x) = p(x + 8) AND ero(x) < ero(x + 8) THEN s(x) = s(x) + 1: RETURN
IF p(x) > p(x + 8) THEN s(x + 8) = s(x + 8) + 1 ELSE s(x) = s(x) + 1
RETURN
ta9:
IF p(x) = p(x + 9) AND ero(x) >= ero(x + 9) THEN s(x + 9) = s(x + 9) + 1: RETURN
IF p(x) = p(x + 9) AND ero(x) < ero(x + 9) THEN s(x) = s(x) + 1: RETURN
IF p(x) > p(x + 9) THEN s(x + 9) = s(x + 9) + 1 ELSE s(x) = s(x) + 1
RETURN
ta10:
IF p(x) = p(x + 10) AND ero(x) >= ero(x + 10) THEN s(x + 10) = s(x + 10) + 1: RETURN
IF p(x) = p(x + 10) AND ero(x) < ero(x + 10) THEN s(x) = s(x) + 1: RETURN
IF p(x) > p(x + 10) THEN s(x + 10) = s(x + 10) + 1 ELSE s(x) = s(x) + 1
RETURN
ta11:
IF p(x) = p(x + 11) AND ero(x) >= ero(x + 11) THEN s(x + 11) = s(x + 11) + 1: RETURN
IF p(x) = p(x + 11) AND ero(x) < ero(x + 11) THEN s(x) = s(x) + 1: RETURN
IF p(x) > p(x + 11) THEN s(x + 11) = s(x + 11) + 1 ELSE s(x) = s(x) + 1
RETURN
enffer:
END SUB

SUB taulukko
 taulu1
CLS
COLOR 14, 0: PRINT "PHL:n TILANNE KIERROKSEN"; kr - 1; "j�lkeen:"
viiva = 0
FOR yy = 1 TO 12
 COLOR 8, 0: LOCATE 11, 1: PRINT "----------------------------------------------": viiva = viiva + 1
COLOR 8, 0: LOCATE 15, 1: PRINT "----------------------------------------------": viiva = viiva + 1
IF s(yy) < 9 THEN COLOR 10, 0: viiva = 0
IF s(yy) > 8 AND y < 12 THEN COLOR 2, 0: viiva = 1
IF s(yy) = 12 THEN COLOR 4, 0: viiva = 2
LOCATE s(yy) + 2 + viiva, 2: PRINT l(yy); kr - 1; wi(yy); wr(yy); wo(yy), gf(yy); "-"; ga(yy), p(yy)
NEXT yy
IF sarja = 1 AND s(u) < 9 THEN viiva = 0
IF sarja = 1 AND s(u) > 8 AND y < 12 THEN viiva = 1
IF sarja = 1 AND s(u) = 12 THEN viiva = 2
IF sarja = 1 THEN COLOR 15: LOCATE s(u) + 2 + viiva, 2: PRINT l(u); kr - 1; wi(u); wr(u); wo(u), gf(u); "-"; ga(u), p(u)
COLOR 8, 0
IF kr = 23 THEN LOCATE 18, 2: PRINT "Puolet sarjasta pelattu!!"
IF kr > 34 AND kr < 45 THEN LOCATE 18, 2: PRINT "En�� "; 45 - kr; " kierrosta j�ljell�!"
IF kr = 45 THEN LOCATE 18, 2: PRINT "Runkosarja on pelattu!"
LOCATE 19, 1: INPUT yucca$
enderow:
END SUB

SUB ukka
IF qwin(a) = 3 OR qwin(b) = 3 THEN ukka1 = 1
IF qwin(c) = 3 OR qwin(d) = 3 THEN ukka2 = 1
IF qwin(e) = 3 OR qwin(f) = 3 THEN ukka3 = 1
IF qwin(g) = 3 OR qwin(h) = 3 THEN ukka4 = 1
IF dwin(aa) = 3 OR dwin(bb) = 3 THEN ukka5 = 1
IF dwin(cc) = 3 OR dwin(dd) = 3 THEN ukka6 = 1
IF dwin(ee) = 3 OR dwin(ff) = 3 THEN ukka7 = 1
END SUB

SUB umaar
IF u = a THEN z = b
IF u = b THEN z = a
IF u = c THEN z = d
IF u = d THEN z = c
IF u = e THEN z = f
IF u = f THEN z = e
IF u = g THEN z = h
IF u = h THEN z = g
IF u = i THEN z = j
IF u = j THEN z = i
IF u = k THEN z = m
IF u = m THEN z = k
END SUB

SUB umik
IF kr = 1 AND valm = 0 THEN valmen
IF vai = 1 AND mo < -6 THEN mo = -6
IF vai = 2 AND mo < -10 THEN mo = -10
IF vai = 3 AND mo < -14 THEN mo = -14
IF vai = 4 AND mo < -18 THEN mo = -18
IF vai = 5 AND mo < -22 THEN mo = -22
IF mo > 12 THEN mo = 12
IF vai = 5 AND mo > 8 THEN mo = 8
IF ralli = 1 AND vai < 4 THEN mo = 33
IF ralli = 1 AND vai = 5 THEN mo = 15
IF sarja = 1 AND lamp = l(u) AND kr < 10 THEN krapu = v(u) / 5 ELSE krapu = 0
IF sarja = 1 THEN ped = p(u)
IF sarja = 2 THEN ped = pd(u)
IF kausi = 101 THEN statisti:  mainos2: END
END SUB

SUB vaikku
vaiku:
CLS : COLOR 14, 0
COLOR 15, 0: PRINT "Vaikeustasomahdollisuudet ovat:"
PRINT : COLOR 14, 0: PRINT "1. N�RTTIVATSA  (SOKERIA, SOKERIA!)"
PRINT "2. MAITOVATSA   (RUTKASTI MAITOA, KIITOS)"
PRINT "3. KAHVIVATSA   (KAHVI KAHVINA, MAITO MAITONA)"
PRINT "4. VATSAHAAVA   (VAHVAN EL�MYKSEN YST�VILLE!)"
PRINT "5. VATSAKATARRI (TERVANJUONTIA!)"
PRINT
INPUT "Mik� on valintasi (Return = 3) ", vai$
IF vai$ = "" THEN vai$ = "3"
IF vai$ = "1" THEN vai = 1: banki = 1: ghalli = 1: moplus = 1: raha = 1000000: GOTO hgg
IF vai$ = "2" THEN vai = 2: banki = 1: ghalli = 0: moplus = 1: raha = 500000: GOTO hgg
IF vai$ = "3" THEN vai = 3: banki = 0: ghalli = 0: moplus = 0: raha = 0: GOTO hgg
IF vai$ = "4" THEN vai = 4: banki = 0: ghalli = 0: moplus = -1: raha = -250000: GOTO hgg
IF vai$ = "5" THEN vai = 5: banki = 0: ghalli = 0: moplus = -1: raha = -600000: GOTO hgg
GOTO vaiku
hgg:
END SUB

SUB valmen
IF kausi > 1 AND carica = 0 THEN tallen
valm = 1
stratte:
CLS : COLOR 5, 0
PRINT "On kes�, ja aika m��r�t� mihin joukkue ajoittaa huippukuntonsa!"
PRINT "Tarjolla on muutamia vaihtoehtoja..."
PRINT
COLOR 14, 0: PRINT "1. 'Juri Simonov' - strategia"
COLOR 12, 0: PRINT "Joukkueen huippukunto ajoittuu play-offeihin."
PRINT "Koko kes� treenataan t�ysill�, ja sarjan alkuvaihessa pojat tuppaavat"
PRINT "olemaan hiukan v�syneit�. Loppua kohden tahti kuitenkin paranee, ja"
PRINT "pleijareissa tahti on hirmuinen!"
PRINT : COLOR 14, 0
PRINT "2. 'Kaikki peliin' - strategia"
COLOR 12, 0: PRINT "Kaikki pistet��n peliin heti sarjan alusta alkaen! Tahti on"
PRINT "kova, mutta pojat hiipuvat kev�tt� kohden melkoisesti..."
PRINT : COLOR 14, 0
PRINT "3. 'Tasainen puurtaminen' - strategia"
COLOR 12, 0: PRINT "Tasainen puurto l�pi koko kauden, ei pahempia heilahteluja"
PRINT : COLOR 8, 0
PRINT
INPUT "Valintasi on...", strateg$
IF strateg$ = "1" THEN jursi = 1: tre = -22: GOTO edderog
IF strateg$ = "2" THEN allgo = 1: tre = 24: GOTO edderog
IF strateg$ = "3" THEN tre = 0: GOTO edderog
GOTO stratte
edderog:
CLS : carica = 0
COLOR 12, 0
PRINT "Ja nyt on aika vuosittaisen MESTARIVEIKKAUKSEN!!"
PRINT "T�ss� ehdokkaat ja heid�n kertoimensa."
PRINT
ylge = 0
FOR x = 1 TO 12
ylge = ylge + v(x)
NEXT x
yttre = ylge / 12
FOR x = 1 TO 12
IF v(x) >= yttre + 100 THEN ker(x) = 1.1: GOTO esukki
IF v(x) >= yttre + 90 THEN ker(x) = 1.25: GOTO esukki
IF v(x) >= yttre + 80 THEN ker(x) = 1.35:  GOTO esukki
IF v(x) >= yttre + 70 THEN ker(x) = 1.45: GOTO esukki
IF v(x) >= yttre + 60 THEN ker(x) = 1.65:  GOTO esukki
IF v(x) >= yttre + 50 THEN ker(x) = 1.9:   GOTO esukki
IF v(x) >= yttre + 40 THEN ker(x) = 2.1: GOTO esukki
IF v(x) >= yttre + 30 THEN ker(x) = 2.4:  GOTO esukki
IF v(x) >= yttre + 20 THEN ker(x) = 2.8:    GOTO esukki
IF v(x) >= yttre + 10 THEN ker(x) = 3.7:  GOTO esukki
IF v(x) < yttre + 10 AND v(x) >= yttre - 10 THEN ker(x) = 4.9: GOTO esukki
IF v(x) >= yttre - 20 THEN ker(x) = 7: GOTO esukki
IF v(x) >= yttre - 30 THEN ker(x) = 11: GOTO esukki
IF v(x) >= yttre - 40 THEN ker(x) = 18: GOTO esukki
IF v(x) >= yttre - 50 THEN ker(x) = 28: GOTO esukki
IF v(x) >= yttre - 60 THEN ker(x) = 39: GOTO esukki
IF v(x) >= yttre - 70 THEN ker(x) = 54: GOTO esukki
IF v(x) >= yttre - 80 THEN ker(x) = 82: GOTO esukki
IF v(x) >= yttre - 90 THEN ker(x) = 221: GOTO esukki
IF v(x) >= yttre - 100 THEN ker(x) = 460: GOTO esukki
IF v(x) <= yttre - 100 THEN ker(x) = 1000: GOTO esukki
esukki:
IF kausi = 1 AND l(x) = "Jokerit " THEN ker(x) = 1.05
NEXT x
COLOR 14, 0
FOR x = 1 TO 12
PRINT x; "."; l(x), ker(x)
NEXT x
COLOR 12, 0
idedeh:
PRINT
INPUT "Panoksesi (miljoona maksimi, return: en osallistu) ", panos
IF panos = 0 THEN GOTO ededeh
IF panos > 1000000 THEN GOTO idedeh
raha = raha - panos
isukki:
INPUT "Ja mestarin numero on...", mesta
IF mesta = 0 OR mesta > 12 THEN GOTO isukki
PRINT
INPUT "OK. Veikkauksesi on rekister�ity...", yucca$
ededeh:
END SUB

SUB viesti1
gagga = 0
IF chcup = 1 THEN tre = tre - 4
IF xcup = 1 THEN tre = tre - 4
kr = kr + 1
CLS
IF sarja = 1 AND s(u) < 9 THEN PRINT "Olemme Play-Offeissa mukana!"
IF sarja = 2 AND sd(u) < 7 THEN PRINT "Olemme Nousukarsinta-Playoffeissa mukana!"
IF sarja = 1 AND s(u) < 9 AND jursi = 1 THEN PRINT "Ja lis�ksi olemme MAHTAVASSA VIREESS�!!"
IF sarja = 1 AND s(u) = 12 AND jursi = 1 THEN PRINT "Kuntomme on surkean kauden j�lkeen viimein kohdallaan!!"
IF sarja = 1 AND s(u) < 9 AND allgo = 1 THEN PRINT "...mutta pelaajamme ovat T�YSIN PUHKI!"
IF sarja = 1 AND rally = 1 THEN PRINT "Kaupungissamme vallitsee J��KIEKKOBUUMI!"
IF sarja = 2 AND sd(u) < 7 AND jursi = 1 THEN PRINT "Ja lis�ksi olemme MAHTAVASSA VIREESS�!!"
IF sarja = 2 AND sd(u) < 7 AND allgo = 1 THEN PRINT "...mutta pelaajamme ovat T�YSIN PUHKI!"
IF sarja = 2 AND ralli = 1 THEN PRINT "Kaupungissamme vallitsee J��KIEKKOBUUMI!"
IF sarja = 1 AND s(u) > 8 AND s(u) < 12 THEN PRINT "Emme itse p��sseet Play-Offeihin t�n� vuonna, mutta": PRINT "muiden osalta pelit jatkuvat yh�!"
IF sarja = 1 AND s(u) = 12 THEN PRINT "Joudumme osallistumaan hermojaraastavaan liigakarsintaan! AARGH!"
IF sarja = 2 AND sd(u) = 1 THEN PRINT "Lis�ksi voitimme divisioonan runkosarjan!": raha = raha + 200000
IF sarja = 2 AND sd(u) > 6 THEN PRINT "Divisioonassa olimme ja pysymme!"
END SUB

SUB xmascup
CLS
taulu1
IF s(u) > 6 OR euro = 1 THEN PRINT "Joukkuettasi EI pyydet� osallistumaan t�n� vuonna...": GOTO endde
PRINT "Sinua pyydet��n osallistumaan Christmas Cup:iin!!!"
PRINT "Mukana on seurajoukkueita monesta maasta, ja turnausvoitosta on luvassa"
PRINT "300000 pekkaa!!"
PRINT "Osallistutteko (k/e)"
INPUT ccc$
IF ccc$ = "k" THEN xcup = 1
IF ccc$ = "e" THEN xcup = 2
endde:
PRINT "OK!": INPUT yucca$
END SUB

SUB ykka
IF swin(a) = 3 OR swin(b) = 3 THEN ykka1 = 1
IF swin(c) = 3 OR swin(d) = 3 THEN ykka2 = 1
IF ddwin(aa) = 3 OR ddwin(bb) = 3 THEN ykka3 = 1
IF ddwin(cc) = 3 OR ddwin(dd) = 3 THEN ykka4 = 1
END SUB

