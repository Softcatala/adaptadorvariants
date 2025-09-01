s/%1 (%2b)/%1 (%2 b)/g
# agarrotar -> engarrotar
s/\bAgarrota\([dv]a\|des\|nt\|nts\|[rt]\|rà\|ran\|ts\|ven\|\)\([^[:alnum:]]\)/Engarrota\1\2/g
s/\bagarrota\([dv]a\|des\|nt\|nts\|[rt]\|rà\|ran\|ts\|ven\|\)\([^[:alnum:]]\)/engarrota\1\2/g
s/\bAgarrotés\([^[:alnum:]]\)/Engarrotara\1/g
s/\bagarrotés\([^[:alnum:]]\)/engarrotara\1/g
s/\bAgarrotéssi\([mu]\)\([^[:alnum:]]\)/Engarrotàre\1\2/g
s/\bagarrotéssi\([mu]\)\([^[:alnum:]]\)/engarrotàre\1\2/g
s/\bAgarrotessi\([ns]\)\([^[:alnum:]]\)/Engarrotare\1\2/g
s/\bagarrotessi\([ns]\)\([^[:alnum:]]\)/engarrotare\1\2/g
s/\bAgarrot\([eio]\)\([mnsu]\)\([^[:alnum:]]\)/Engarrote\2\3/g
s/\bagarrot\([eio]\)\([mnsu]\)\([^[:alnum:]]\)/engarrote\2\3/g
s/\bAgarrot\([io]\)\([^[:alnum:]]\)/Engarrote\2/g
s/\bagarrot\([io]\)\([^[:alnum:]]\)/engarrote\2/g
s/\bAgarroti\([ns]\)\([^[:alnum:]]\)/Engarrote\1\2/g
s/\bagarroti\([ns]\)\([^[:alnum:]]\)/engarrote\1\2/g

# aixafar -> xafar
s/\bAixaf\(a[dv]a\|ades\|ant\|a[rt]\|arà\|aran\|areu\|ats\|aven\|eu\)\([^[:alnum:]]\)/Xaf\1\2/g
s/\baixaf\(a[dv]a\|ades\|ant\|a[rt]\|arà\|aran\|areu\|ats\|aven\|eu\)\([^[:alnum:]]\)/xaf\1\2/g
s/\bAixafés\([^[:alnum:]]\)/Xafara\1/g
s/\baixafés\([^[:alnum:]]\)/xafara\1/g
s/\bAixaféssi\([mu]\)\([^[:alnum:]]\)/Xafàre\1\2/g
s/\baixaféssi\([mu]\)\([^[:alnum:]]\)/xafàre\1\2/g
s/\bAixafessi\([ns]\)\([^[:alnum:]]\)/Xafare\1\2/g
s/\baixafessi\([ns]\)\([^[:alnum:]]\)/xafare\1\2/g
s/\bAixaf\([io]\)\([^[:alnum:]]\)/Xafe\2/g
s/\baixaf\([io]\)\([^[:alnum:]]\)/xafe\2/g
s/\bAixafi\([ns]\)\([^[:alnum:]]\)/Xafe\1\2/g
s/\baixafi\([ns]\)\([^[:alnum:]]\)/xafe\1\2/g

# alçada -> alçària
s/\b\([Aa]\)lçad\(a\|es\)\([^[:alnum:]]\)/\1lçàri\2\3/g
s/\bnovaAlçada\([^[:alnum:]]\)/novaAlçària\1/g
s/\bAmpladaxAlçada\([^[:alnum:]]\)/AmplàriaxAlçària\1/g
 #
s/\ba&lçades\([^[:alnum:]]\)/a\&lçàries\1/g
 #
s/\b\([Mm]\)à alçària\([^[:alnum:]]\)/\1à alçada\2/g

# alliberar
s/\ba&lliberi\([^[:alnum:]]\)/a\&llibere\1/g

# amollar
# s/\bamollar fitxers\([^[:alnum:]]\)/deixar fitxers\1/g
# amollar -> deixar
s/\bamollar fitxers\([^[:alnum:]]\)/deixar fitxers\1/g
s/\bAmolleu el botó\([^[:alnum:]]\)/Deixeu anar el botó\1/g
s/\bamolleu el botó\([^[:alnum:]]\)/deixeu anar el botó\1/g
s/\barrossegar i amollar\([^[:alnum:]]\)/arrossegar i deixar\1/g
s/\barrosseg\(ar\|ueu\)\(-lo\|\) i amoll\(ar\|eu\)-lo\([^[:alnum:]]\)/arrosseg\1 i deix\3-lo\4/g

# amplada -> amplària
s/\b\([Aa]\)mplad\(a\|es\)\([^[:alnum:]]\)/\1mplàri\2\3/g
s/\bnovaAmplada\([^[:alnum:]]\)/novaAmplària\1/g
 #
s/\b\([Aa]\)mplària de banda\([^[:alnum:]]\)/\1mplada de banda\2/g

# apropar -> acostar
s/\b\([Aa]\)propa\([dv]a\|des\|nt\|nts\|[rt]\|rà\|ran\|ts\|ven\|\)\([^[:alnum:]]\)/\1costa\2\3/g
s/\b\([Aa]\)propés\([^[:alnum:]]\)/\1costara\2/g
s/\b\([Aa]\)propéssi\([mu]\)\([^[:alnum:]]\)/\1costàre\2\3/g
s/\b\([Aa]\)propessi\([ns]\)\([^[:alnum:]]\)/\1costare\2\3/g
s/\b\([Aa]\)prop\(e\|i\|o\)\(m\|n\|s\|u\)\([^[:alnum:]]\)/\1coste\3\4/g
s/\b\([Aa]\)prop\([io]\)\([^[:alnum:]]\)/\1coste\3/g

# aquest
s/\ba&questa\([^[:alnum:]]\)/es\&ta\1/g
s/\baques&t\([^[:alnum:]]\)/es\&te\1/g
s/\baques&ta\([^[:alnum:]]\)/es\&ta\1/g
s/\baques&tes\([^[:alnum:]]\)/es\&tes\1/g
s/\baques&ts\([^[:alnum:]]\)/es\&tos\1/g
 #
s/\bAQUEST\([^[:alnum:]]\)/ESTE\1/g
s/\bAquest\([^[:alnum:]]\)/Este\1/g
s/\baquest\([^[:alnum:]]\)/este\1/g
s/\bAQUEST\(A\|ES\)\([^[:alnum:]]\)/EST\1\2/g
s/\bAquest\(a\|es\)\([^[:alnum:]]\)/Est\1\2/g
s/\baquest\(a\|es\)\([^[:alnum:]]\)/est\1\2/g
s/\bAQUESTS\([^[:alnum:]]\)/ESTOS\1/g
s/\bAquests\([^[:alnum:]]\)/Estos\1/g
s/\baquests\([^[:alnum:]]\)/estos\1/g

# aquí
s/\b\([Aa]\)quí\([^[:alnum:]]\)/\1cí\2/g
 #
s/AquíElVostreBotó\([^[:alnum:]]\)/AcíElVostreBotó\1/g
s/\bel_nom_especificat_aquí\([^[:alnum:]]\)/el_nom_especificat_ací\1/g

# arrencar i arrancar -> arrancar
s/\b\([Aa]\)rr\([ae]\)nca\([dv]a\|des\|nt\|nts\|[rt]\|rà\|ran\|ts\|ven\|\)\([^[:alnum:]]\)/\1rranca\3\4/g
s/\b\([Aa]\)rr\([ae]\)nqués\([^[:alnum:]]\)/\1rrencara\3/g
s/\b\([Aa]\)rr\([ae]\)nquéssi\([mu]\)\([^[:alnum:]]\)/\1rrencàre\3\4/g
s/\b\([Aa]\)rr\([ae]\)nquessi\([ns]\)\([^[:alnum:]]\)/\1rrencare\3\4/g
s/\b\([Aa]\)rr\([ae]\)nqu\(e\|i\)\(m\|n\|s\|u\)\([^[:alnum:]]\)/\1rranque\4/g
s/\b\([Aa]\)rr\([ae]\)nqu\([io]\)\([^[:alnum:]]\)/\1rranque\4/g
 #
s/\ba&rrencar\([^[:alnum:]]\)/a\&rrancar\1/g

# arrodonir -> arredonir
s/\b\([Aa]\)rrodoni\([amrtu]\|[dv]a\|des\|en\|ment\|rà\|ran\|ts\|ven\)\([^[:alnum:]]\)/\1rredoni\2\3/g
s/\b\([Aa]\)rrodoneix\(en\|es\|\)\([^[:alnum:]]\)/\1rredonix\2\3/g
s/\b\([Aa]\)rrodoneixi\([^[:alnum:]]\)/\1rredonisca\2/g
s/\b\([Aa]\)rrodoneixi\([ns]\)\([^[:alnum:]]\)/\1rredonisque\2\3/g
s/\b\([Aa]\)rrodoneixo\([^[:alnum:]]\)/\1rredonisc\2/g
s/\b\([Aa]\)rrodonís\([^[:alnum:]]\)/\1rredonira\2/g
s/\b\([Aa]\)rrodoníssi\([mu]\)\([^[:alnum:]]\)/\1rredoníre\2\3/g
s/\b\([Aa]\)rrodonissi\([ns]\)\([^[:alnum:]]\)/\1rredonire\2\3/g

# assignar
    # desassignar -> treure l'assignació
    s/\bDesassignés\([^[:alnum:]]\)/Tragués l'assignació\1/g
    s/\bdesassignés\([^[:alnum:]]\)/tragués l'assignació\1/g
    s/\bDesassignéssi\([mu]\)\([^[:alnum:]]\)/Traguéssi\1 l'assignació\2/g
    s/\bdesassignéssi\([mu]\)\([^[:alnum:]]\)/traguéssi\1 l'assignació\2/g
    s/\bDesassignessi\([ns]\)\([^[:alnum:]]\)/Traguessi\1 l'assignació\2/g
    s/\bdesassignessi\([ns]\)\([^[:alnum:]]\)/traguessi\1 l'assignació\2/g
    s/\bDesassigna\(r\|\)\([^[:alnum:]]\)/Traure l'assignació\2/g
    s/\bdesassigna\(r\|\)\([^[:alnum:]]\)/traure l'assignació\2/g
    s/\bDesassigni\([^[:alnum:]]\)/Tregui l'assignació\1/g
    s/\bdesassigni\([^[:alnum:]]\)/tregui l'assignació\1/g
    s/\bDesassigni\([ns]\)\([^[:alnum:]]\)/Tregui\1 l'assignació\2/g
    s/\bdesassigni\([ns]\)\([^[:alnum:]]\)/tregui\1 l'assignació\2/g
    s/\bDesassigno\([^[:alnum:]]\)/Trec l'assignació\1/g
    s/\bdesassigno\([^[:alnum:]]\)/trec l'assignació\1/g
    # reassignar -> tornar a assignar
    s/\bReassignés\([^[:alnum:]]\)/Tornés a assignar\1/g
    s/\breassignés\([^[:alnum:]]\)/tornés a assignar\1/g
    s/\bReassignéssi\([mu]\)\([^[:alnum:]]\)/Tornéssi\1 a assignar\2/g
    s/\breassignéssi\([mu]\)\([^[:alnum:]]\)/tornéssi\1 a assignar\2/g
    s/\bReassignessi\([ns]\)\([^[:alnum:]]\)/Tornessi\1 a assignar\2/g
    s/\breassignessi\([ns]\)\([^[:alnum:]]\)/tornessi\1 a assignar\2/g
    s/\bReassigna\(r\|\)\([^[:alnum:]]\)/Torna\1 a assignar\2/g
    s/\breassigna\(r\|\)\([^[:alnum:]]\)/torna\1 a assignar\2/g
    s/\bReassigni\([^[:alnum:]]\)/Torni a assignar\1/g
    s/\breassigni\([^[:alnum:]]\)/torni a assignar\1/g
    s/\bReassigni\([ns]\)\([^[:alnum:]]\)/Torni\1 a assignar\2/g
    s/\breassigni\([ns]\)\([^[:alnum:]]\)/torni\1 a assignar\2/g
    s/\bReassigno\([^[:alnum:]]\)/Torno a assignar\1/g
    s/\breassigno\([^[:alnum:]]\)/torno a assignar\1/g
 #
s/\btraure l'assignació el\(s\|\)\([^[:alnum:]]\)/traure l'assignació del\1\2/g

# aturar -> parar
s/\bd'atura\(da\|r\)\([^[:alnum:]]\)/de para\1\2/g
s/\bl'aturada\([^[:alnum:]]\)/la parada\1/g
s/\bS'atura\([^[:alnum:]]\)/Es para\1/g
s/\bs'atura\([^[:alnum:]]\)/es para\1/g
s/\bS'aturarà\([^[:alnum:]]\)/Es pararà\1/g
s/\bs'aturarà\([^[:alnum:]]\)/es pararà\1/g
s/\bS'aturi\([^[:alnum:]]\)/Es pare\1/g
s/\bs'aturi\([^[:alnum:]]\)/es pare\1/g
s/\bs'aturés\([^[:alnum:]]\)/es parara\1/g
#
s/\bAtura\([dv]a\|des\|nt\|nts\|[rt]\|rà\|ran\|ts\|ven\|\)\([^[:alnum:]]\)/Para\1\2/g
s/\batura\([dv]a\|des\|nt\|nts\|[rt]\|rà\|ran\|ts\|ven\|\)\([^[:alnum:]]\)/para\1\2/g
s/\bAturés\([^[:alnum:]]\)/Parara\1/g
s/\baturés\([^[:alnum:]]\)/parara\1/g
s/\bAturéssi\([mu]\)\([^[:alnum:]]\)/Paràre\1\2/g
s/\baturéssi\([mu]\)\([^[:alnum:]]\)/paràre\1\2/g
s/\bAturessi\([ns]\)\([^[:alnum:]]\)/Parare\1\2/g
s/\baturessi\([ns]\)\([^[:alnum:]]\)/parare\1\2/g
s/\bAtur\(e\|i\|o\)\(m\|n\|s\|u\|\)\([^[:alnum:]]\)/Pare\2\3/g
s/\batur\(e\|i\|o\)\(m\|n\|s\|u\|\)\([^[:alnum:]]\)/pare\2\3/g
s/\b\([Pp]\)ari\([ns]\)\([^[:alnum:]]\)/\1are\2\3/g
s/\b\([Pp]\)aro\([^[:alnum:]]\)/\1are\2/g
 #
s/\bATURA\([^[:alnum:]]\)/PARA\1/g
s/\bS'para la reproducció\([^[:alnum:]]\)/S'ha parat la reproducció\1/g

# autoria
s/\bAutor\(s\|\)\([^[:alnum:]]\)/Autoria\2/g
 #
s/\bAutoria de LabPlot\([^[:alnum:]]\)/Autors de LabPlot\1/g
s/\b\([Aa]\)utoria desconegut\([^[:alnum:]]\)/\1utoria desconeguda\2/g
s/\bAutoria original\([^[:alnum:]]\)/Autor original\1/g
s/\b\([Dd]\)rets d'autor\([^[:alnum:]]\)/\1rets d'autoria\2/g
s/\bsobre l'autor\([^[:alnum:]]\)/sobre l'autoria\1/g
s/\bllistes d'autors\([^[:alnum:]]\)/llistes d'autoria\1/g

# bandir - bendir
s/\b\([Bb]\)\([ae]\)ndeix\(en\|es\|\)\([^[:alnum:]]\)/\1\2ndix\3\4/g
s/\b\([Bb]\)\([ae]\)ndeixi\([^[:alnum:]]\)/\1\2ndisca\3/g
s/\b\([Bb]\)\([ae]\)ndeixi\([ns]\)\([^[:alnum:]]\)/\1\2ndisque\3\4/g
s/\b\([Bb]\)\([ae]\)ndeixo\([^[:alnum:]]\)/\1\2ndisc\3/g
s/\b\([Bb]\)\([ae]\)ndís\([^[:alnum:]]\)/\1\2dira\3/g
s/\b\([Bb]\)\([ae]\)ndíssi\([mu]\|\)\([^[:alnum:]]\)/\1\2díre\3\4/g
s/\b\([Bb]\)\([ae]\)ndissi\([ns]\|\)\([^[:alnum:]]\)/\1\2ndire\3\4/g

# bordar -> lladrar
s/\bEl|gos|borda\([^[:alnum:]]\)/El|gos|lladra\1/g

# caber -> cabre
s/\bCap Rojo\([^[:alnum:]]\)/Cabo Rojo\1/g

# calçar
s/\b\([Cc]\)alci\([ns]\)\([^[:alnum:]]\)/\1alce\2\3/g # «calci»: No, element químic
s/\"Calces\"/\"Calcis\"/g # greece prefectures

# cantonada -> cantó (gènere)
s/\ba el cantó\([^[:alnum:]]\)/al cantó\1/g
s/\ba les cantons\([^[:alnum:]]\)/als cantons\1/g
s/\b\([Cc]\)antó arredonida\([^[:alnum:]]\)/\1antó arredonit\2/g
s/\b\([Cc]\)antó dreta\([^[:alnum:]]\)/\1antó dret\2/g
s/\b\([Cc]\)antó esquerra\([^[:alnum:]]\)/\1antó esquerre\2/g
s/\b\([Cc]\)antó \(inferior\|superior\) dreta\([^[:alnum:]]\)/\1antó \2 dret\3/g
s/\b\([Cc]\)antó \(inferior\|superior\) esquerra\([^[:alnum:]]\)/\1antó \2 esquerre\3/g
s/\b\([Cc]\)antó \(dret\|esquerre\) \(inferior\|superior\)\([^[:alnum:]]\)/\1antó \3 \2\4/g
s/\b\([Cc]\)antó inferior esquerre està força agitada\([^[:alnum:]]\)/\1antó inferior esquerre està força agitat\2/g
s/\b\([Cc]\)antó més propera\([^[:alnum:]]\)/\1antó més proper\2/g
s/\b\([Cc]\)antó oposada\([^[:alnum:]]\)/\1antó oposat\2/g
s/\b\([Cc]\)antó rodona\([^[:alnum:]]\)/\1antó arredonit\2/g
s/\b\([Cc]\)antons actives\([^[:alnum:]]\)/\1antons actius\2/g
s/\b\([Cc]\)antons a&rredonides\([^[:alnum:]]\)/\1antons a\&rredonits\2/g
s/\b\([Cc]\)antons arredonides\([^[:alnum:]]\)/\1antons arredonits\2/g
s/\b\([Cc]\)antons inferiors arredonides\([^[:alnum:]]\)/\1antons inferiors arredonits\2/g
s/\b\([Cc]\)antons inverses\([^[:alnum:]]\)/\1antons inversos\2/g
s/\b\([Cc]\)antons oposades\([^[:alnum:]]\)/\1antons oposats\2/g
s/\b\([Cc]\)antons primes\([^[:alnum:]]\)/\1antons prims\2/g
s/\b\([Dd]\)e la cantó\([^[:alnum:]]\)/\1el cantó\2/g
s/\bde les cantons\([^[:alnum:]]\)/dels cantons\1/g
s/\b\([Dd]\)es de la seua cantó\([^[:alnum:]]\)/\1es del seu cantó\2/g
s/\bdues cantons oposats\([^[:alnum:]]\)/dos cantons oposats\1/g
s/\bLa cantó\([^[:alnum:]]\)/El cantó\1/g
s/\bla cantó\([^[:alnum:]]\)/el cantó\1/g
s/\bla primera cantó\([^[:alnum:]]\)/el primer cantó\1/g
s/\bla segona cantó\([^[:alnum:]]\)/el segon cantó\1/g
s/\bLes cantons\([^[:alnum:]]\)/Els cantons\1/g
s/\bles cantons\([^[:alnum:]]\)/els cantons\1/g
s/\bles quatre cantons\([^[:alnum:]]\)/els quatre cantons\1/g
s/\b\([Tt]\)otes \(els\|les\) cantons\([^[:alnum:]]\)/\1ots els cantons\3/g
s/\b\([Uu]\)na cantó\([^[:alnum:]]\)/\1n cantó\2/g
    s/\b\([Uu]\)n cantó angulada\([^[:alnum:]]\)/\1n cantó angulat\2/g
    s/\b\([Uu]\)n cantó arrodonida\([^[:alnum:]]\)/\1n cantó arrodonit\2/g

# centrar
s/\bTallafoc Centre\([^[:alnum:]]\)/\Tallafoc Centri\1/g

# cercar -> buscar
# cercador
# cercapersones
# cercatalents
s/\bCerca\(ble\|[dv]a\|des\|dor\|dors\|nt\|nts\|[rt]\|rà\|ran\|rem\|talents\|ts\|ven\|\)\([^[:alnum:]]\)/Busca\1\2/g
s/\bcerca\(ble\|[dv]a\|des\|dor\|dors\|nt\|nts\|[rt]\|rà\|ran\|rem\|talents\|ts\|ven\|\)\([^[:alnum:]]\)/busca\1\2/g
s/\bCerco\([^[:alnum:]]\)/Busque\1/g
s/\bcerco\([^[:alnum:]]\)/busque\1/g
s/\bCerque\([mnsu]\)\([^[:alnum:]]\)/Busque\1\2/g
s/\bcerque\([mnsu]\)\([^[:alnum:]]\)/busque\1\2/g
s/\bCerqués\([^[:alnum:]]\)/Buscara\1/g
s/\bcerqués\([^[:alnum:]]\)/buscara\1/g
s/\bCerquéssi\([mu]\)\([^[:alnum:]]\)/Buscàre\1\2/g
s/\bcerquéssi\([mu]\)\([^[:alnum:]]\)/buscàre\1\2/g
s/\bCerquessi\([ns]\)\([^[:alnum:]]\)/Buscare\1\2/g
s/\bcerquessi\([ns]\)\([^[:alnum:]]\)/buscare\1\2/g
s/\bCerqui\([ns]\|\)\([^[:alnum:]]\)/Busque\1\2/g
s/\bcerqui\([ns]\|\)\([^[:alnum:]]\)/busque\1\2/g
s/\bCercapersones\([^[:alnum:]]\)/Buscapersones\1/g
s/\bcercapersones\([^[:alnum:]]\)/buscapersones\1/g
 #
s/\bBaixe Alentejo\([^[:alnum:]]\)/Baixo Alentejo\1/g
s/\bSe busca\(rà\|ran\|va\|ven\|\)\([^[:alnum:]]\)/Es busca\1\2/g
s/\bse busca\(rà\|ran\|va\|ven\|\)\([^[:alnum:]]\)/es busca\1\2/g
s/\bSe busque\(n\|\)\([^[:alnum:]]\)/Es busque\1\2/g
s/\bse busque\(n\|\)\([^[:alnum:]]\)/es busque\1\2/g
 #
s/\bRessaltatDeCerca\([^[:alnum:]]\)/RessaltatDeBusca\1/g
s/\btext_\(a\|on\)_cercar\([^[:alnum:]]\)/text_\1_buscar\2/g

# clicar
s/\bclicant a:/clicant en:/g
s/\b\([Cc]\)liqueu damunt prop\([^[:alnum:]]\)/\1liqueu a prop\2/g
s/\bdamunt sobre de\([^[:alnum:]]\)/damunt de\1/g
s/\bdamunt sobre veureu\([^[:alnum:]]\)/damunt veureu\1/g
s/\bfeu clic dret sobre l'/feu clic dret damunt de l'/g
s/\blatència del clic damunt 50 ms\([^[:alnum:]]\)/latència del clic en 50 ms\1/g
s/\bmanteniu clicat damunt del botó del ratolí\([^[:alnum:]]\)/manteniu clicat el botó del ratolí\1/g
s/\bque acabeu de clicar-hi\([^[:alnum:]]\)/que acabeu de clicar\1/g

# commutar -> canviar (PDT.)
s/\b\([Cc]\)ommuta\(da\|des\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1anvia\2\3/g
s/\b\([Cc]\)ommut\(a\|em\|en\|es\|eu\)\([^[:alnum:]]\)/\1anvi\2\3/g
s/\b\([Cc]\)ommutés\([^[:alnum:]]\)/\1ommutara\2/g
s/\b\([Cc]\)ommutéssi\([mu]\)\([^[:alnum:]]\)/\1ommutàre\2\3/g
s/\b\([Cc]\)ommutessi\([ns]\)\([^[:alnum:]]\)/\1ommutare\2\3/g
s/\b\([Cc]\)ommut\([io]\)\([^[:alnum:]]\)/\1anvie\3/g
s/\b\([Cc]\)ommuti\([ns]\)\([^[:alnum:]]\)/\1anvie\2\3/g
 #
s/\bLa commutació\([^[:alnum:]]\)/El canvi\1/g
s/\bla commutació\([^[:alnum:]]\)/el canvi\1/g

# comprar
s/\bCompre&va\([^[:alnum:]]\)/Compro\&va\1/g               # comprovar
s/\bJ'ai compres\([^[:alnum:]]\)/J'ai compris\1/g
s/\bllegit o comprara\([^[:alnum:]]\)/llegit o comprés\1/g # comprendre

# concordar -> coincidir (PDT.)
# concordança i concordant(s)
s/\b\([Cc]\)oncorda\(da\|des\|[rt]\|rà\|ran\|ts\)\([^[:alnum:]]\)/\1oincidi\2\3/g
s/\b\([Cc]\)oncorda\([^[:alnum:]]\)/\1oincidix\2/g
s/\b\([Cc]\)oncordav\(a\|en\)\([^[:alnum:]]\)/\1oincidi\2\3/g
s/\b\([Cc]\)oncorde\([mu]\|\)\([^[:alnum:]]\)/\1oincidi\2\3/g
s/\b\([Cc]\)oncorde\([ns]\|\)\([^[:alnum:]]\)/\1oincidixe\2\3/g
s/\b\([Cc]\)oncordés\([^[:alnum:]]\)/\1oincidira\2/g
s/\b\([Cc]\)oncordéssi\([mu]\)\([^[:alnum:]]\)/\1coincidíre\2\3/g
s/\b\([Cc]\)oncordessi\([ns]\)\([^[:alnum:]]\)/\1coincidire\2\3/g
s/\b\([Cc]\)oncordi\([^[:alnum:]]\)/\1oincidisca\2/g
s/\b\([Cc]\)oncordi\([ns]\)\([^[:alnum:]]\)/\1oincidisque\2\3/g
s/\b\([Cc]\)oncordo\([^[:alnum:]]\)/\1oincidisc\2/g

# contabilitzar -> comptabilitzar
# TODO: no existeix
s/\b\([Cc]\)ontabilitza\(ble\|bles\|ció\|cions\|[dv]a\|des\|dor\|dors\|nt\|nts\|[rt]\|rà\|ran\|ts\|ven\|\)\([^[:alnum:]]\)/\1omptabilitz\2\3/g
s/\b\([Cc]\)ontabilitz\(e[mnsu]\)\([^[:alnum:]]\)/\1omptabilitz\2\3/g
s/\b\([Cc]\)ontabilitzés\([^[:alnum:]]\)/\1omptabilitzara\2/g
s/\b\([Cc]\)ontabilitzéssi\([mu]\)\([^[:alnum:]]\)/\1omptabilitzàre\2\3/g
s/\b\([Cc]\)ontabilitzessi\([ns]\)\([^[:alnum:]]\)/\1omptabilitzare\2\3/g
s/\b\([Cc]\)ontabilitz\([io]\)\([^[:alnum:]]\)/\1omptabilitze\3/g
s/\b\([Cc]\)ontabilitzi\([ns]\)\([^[:alnum:]]\)/\1omptabilitz\2\3/g

# cop -> colp / vegada
s/\bCops\([^[:alnum:]]\)/Vegades\1/g
s/\bcops\([^[:alnum:]]\)/vegades\1/g
 #
s/\b\([Cc]\)ada cop\([^[:alnum:]]\)/\1ada vegada\2/g
s/\b\([Cc]\)op d'ull\([^[:alnum:]]\)/\1olp d'ull\2/g
s/\b\([Cc]\)op de mà\([^[:alnum:]]\)/\1olp de mà\2/g
s/\bDarrer cop\([^[:alnum:]]\)/Última vegada\1/g
s/\bdarrer cop\([^[:alnum:]]\)/última vegada\1/g
s/\b\([Dd]\)esfés el cop\([^[:alnum:]]\)/\1esfés el colp\2/g
s/\bEl primer cop\([^[:alnum:]]\)/La primera vegada\1/g
s/\bel primer cop\([^[:alnum:]]\)/la primera vegada\1/g
s/\bEl pròxim cop\([^[:alnum:]]\)/La propera vegada\1/g
s/\bel pròxim cop\([^[:alnum:]]\)/la propera vegada\1/g
s/\b\([Ee]\)ste és el primer cop\([^[:alnum:]]\)/\1sta és la primera vegada\2/g
s/\b\([Ff]\)orça del cop\([^[:alnum:]]\)/\1orça del colp\2/g
s/\bmostren de cop totes\([^[:alnum:]]\)/mostren de colp totes\1/g
s/\b\([Nn]\)ombre màxim de cops\([^[:alnum:]]\)/\1ombre màxim de colps\2/g
s/\b\([Pp]\)er primer cop\([^[:alnum:]]\)/\1er primera vegada\2/g
s/\b\([Pp]\)roveu-ho un altre cop\([^[:alnum:]]\)/\1roveu-ho una altra vegada\2/g
s/\b\([Qq]\)ualsevol cop\([^[:alnum:]]\)/\1ualsevol vegada\2/g
s/\b\([Úú]\)ltim cop\([^[:alnum:]]\)/\1ltima vegada\2/g
    s/\bdel última\([^[:alnum:]]\)/de la última\1/g
s/\b\([Uu]\)n altre cop\([^[:alnum:]]\)/\1na altra vegada\2/g
s/\b\([Uu]\)n cop de penalització\([^[:alnum:]]\)/\1n colp de penalització\2/g
s/\b\([Uu]\)n cop suau\([^[:alnum:]]\)/\1n colp suau\2/g
    s/\b\([Uu]\)n cop\([^[:alnum:]]\)/\1na vegada\2/g
s/\b\([Uu]\)n sol cop\([^[:alnum:]]\)/\1na sola vegada\2/g
    s/\bun-cop\([^[:alnum:]]\)/una-vegada\1/g
s/\bURL de cop\([^[:alnum:]]\)/URL de colp\1/g
s/\bVegades consecutius\([^[:alnum:]]\)/Vegades consecutives\1/g
s/\bvegades consecutius\([^[:alnum:]]\)/vegades consecutives\1/g

# costar
s/\bClaudiu Costen\([^[:alnum:]]\)/Claudiu Costin\1/g

# crític -> crítica (esmenes - # PDT)
# NOTE: PDT
s/\b\([Cc]\)rític\([^[:alnum:]]\)/\1rítica\2/g
s/\b\([Ee]\)rror crítica\([^[:alnum:]]\)/\1rror crític\2/g
s/\b\([Nn]\)\(&\|\)ivell crítica\([^[:alnum:]]\)/\1\2ivell crític\3/g
s/\b\([Pp]\)rogramari és crítica\([^[:alnum:]]\)/\1rogramari és crític\2/g

# d'hora -> prompte
s/\bD'hora\([^[:alnum:]]\)/Prompte\1/g
s/\bd'hora\([^[:alnum:]]\)/prompte\1/g
    s/\b\([Aa]just\|[Cc]anvi\|[Ee]xpressió\|[Ff]ormat\|[Ii]ndicador\|[Pp]referències\|[Qq]uarts\|[Ss]elecció\|[Ss]ervidor\|[Vv]alor\) prompte\([^[:alnum:]]\)/\1 d'hora\2/g

# damunt
s/\b\([Cc]\)lica a on veges\([^[:alnum:]]\)/\1lica damunt d'on veges\2/g
s/\b\([Cc]\)lica per torns sobre cada\([^[:alnum:]]\)/\1lica per torns damunt de cada\2/g
s/\b\([Cc]\)licant a l'àrea\([^[:alnum:]]\)/\1licant damunt de l'àrea\2/g
s/\b\([Cc]\)licant damunt del mig sobre la barra\([^[:alnum:]]\)/\1licant al mig damunt de la barra\2/g
s/\b\([Cc]\)licar amb precisió sobre els\([^[:alnum:]]\)/\1licar amb precisió damunt dels\2/g
s/\b\([Cc]\)lique damunt sobre dels botons\([^[:alnum:]]\)/\1lique damunt dels botons\2/g
s/\b\([Cc]\)liqueu damunt de la «Creu» o a «No mostres\([^[:alnum:]]\)/\1liqueu damunt de la «Creu» o damunt «No mostres\2/g
s/\b\([Cc]\)liqueu damunt sobre seu\([^[:alnum:]]\)/\1liqueu damunt seu\2/g
s/\bdamunt de les monedes o en els bitllets\([^[:alnum:]]\)/damunt de les monedes o dels bitllets\1/g
s/\bdamunt del bloc del costat de la vostra\([^[:alnum:]]\)/damunt del bloc al costat de la vostra\1/g
s/\b\([Dd]\)amunt del Sol o en qualsevol\([^[:alnum:]]\)/\1amunt del Sol o damunt de qualsevol\2/g
s/\b\([Dd]\)amunt d'un planeta o al sol\([^[:alnum:]]\)/\1amunt d'un planeta o damunt del Sol\2/g
s/\b\([Dd]\)amunt l'/\1amunt de l'/g
s/\b\([Dd]\)amunt l\(a\|es\)\([^[:alnum:]]\)/\1amunt de l\2\3/g
    s/\bcontrol damunt de la seua\([^[:alnum:]]\)/control sobre la seua\1/g
s/\b\([Dd]\)amunt sobre seu\([^[:alnum:]]\)/\1amunt seu\2/g
s/\"\([Ee]\)n passar\"/\"\1n passar per damunt\"/g
s/\bfet clic damunt dels moments correctes\([^[:alnum:]]\)/fet clic damunt en els moments correctes\1/g
s/\bSobre l'entorn\([^[:alnum:]]\)/Damunt de l'entorn\1/g
s/\bsobre l'entorn\([^[:alnum:]]\)/damunt de l'entorn\1/g
s/\bSobre la \(imatge\|superposició\)\([^[:alnum:]]\)/Damunt de la \1\2/g
s/\bsobre la \(imatge\|superposició\)\([^[:alnum:]]\)/damunt de la \1\2/g
s/\bterminal, després sobre el segon\([^[:alnum:]]\)/terminal, després damunt del segon\1/g
s/\bterminal i després sobre el segon\([^[:alnum:]]\)/terminal i després damunt del segon\1/g
s/\buna distància, en 3 àtoms\([^[:alnum:]]\)/una distància, damunt 3 àtoms\1/g
s/\bun angle, o en 4 àtoms\([^[:alnum:]]\)/un angle, o damunt 4 àtoms\1/g

# darrer(a)
s/\bDarrer\(a\|es\|\)\([^[:alnum:]]\)/Últim\1\2/g
s/\bdarrer\(a\|es\|\)\([^[:alnum:]]\)/últim\1\2/g
 #
s/\b\([Aa]\)l darrer\([^[:alnum:]]\)/\1 l'últim\2/g
s/\bCliqueu un bit\([^[:alnum:]]\)/Cliqueu en un bit\1/g
s/\bEl darrer\([^[:alnum:]]\)/L'últim\1/g
s/\bel darrer\([^[:alnum:]]\)/l'últim\1/g
    s/\búltim configuració\([^[:alnum:]]\)/última configuració\1/g
s/\b\([Ee]\)nfocament al última\([^[:alnum:]]\)/\1nfocament al darrera\2/g

# desar -> guardar
s/\bDes\(a\|a[dv]a\|ades\|ant\|a[rt]\|arà\|aran\|areu\|ats\|aven\|e[nsu]\)\([^[:alnum:]]\)/Guard\1\2/g
s/\bdes\(a\|a[dv]a\|ades\|ant\|a[rt]\|arà\|aran\|areu\|ats\|aven\|e[nsu]\)\([^[:alnum:]]\)/guard\1\2/g
s/\bDesament\([^[:alnum:]]\)/Guardada\1/g
s/\bdesament\([^[:alnum:]]\)/guardada\1/g
s/\bDesaments\([^[:alnum:]]\)/Guardades\1/g
s/\bdesaments\([^[:alnum:]]\)/guardades\1/g
s/\bDesés\([^[:alnum:]]\)/Guardara\1/g
s/\bdesés\([^[:alnum:]]\)/guardara\1/g
s/\bDeséssi\([mu]\)\([^[:alnum:]]\)/Guardàre\1\2/g
s/\bdeséssi\([mu]\)\([^[:alnum:]]\)/guardàre\1\2/g
s/\bDesessi\([ns]\)\([^[:alnum:]]\)/Guardare\1\2/g
s/\bdesessi\([ns]\)\([^[:alnum:]]\)/guardare\1\2/g
s/\bDesi\([ns]\)\([^[:alnum:]]\)/Guarde\1\2/g
s/\bdesi\([ns]\)\([^[:alnum:]]\)/guarde\1\2/g
s/\bDes\([io]\)\([^[:alnum:]]\)/Guarde\2/g
s/\bdes\([io]\)\([^[:alnum:]]\)/guarde\2/g
 #
s/\b\([AE]\)l guardada\([^[:alnum:]]\)/La guardada\2/g
s/\b\([ae]\)l guardada\([^[:alnum:]]\)/la guardada\2/g
    s/\bper la guardada\([^[:alnum:]]\)/per a la guardada\1/g
s/\b\([Aa]\)utodesat\([^[:alnum:]]\)/\1utoguardat\2/g
s/\b\([Dd]\)el guardada\([^[:alnum:]]\)/\1e la guardada\2/g
s/\b\([Dd]\)els guardades\([^[:alnum:]]\)/\1e les guardades\2/g
s/\bEl pròxim guardada\([^[:alnum:]]\)/La pròxima guardada\1/g
s/\bel pròxim guardada\([^[:alnum:]]\)/la pròxima guardada\1/g
s/\b\([Gg]\)uarda base\([^[:alnum:]]\)/\1uarda la base\2/g
s/\b\([Gg]\)uardada automàtic\([^[:alnum:]]\)/\1uardada automàtica\2/g
    s/\bGuardada &automàtic\([^[:alnum:]]\)/Guardada \&automàtica\1/g
s/\b\([Gg]\)uardada manual de la sessió estiga actiu\([^[:alnum:]]\)/\1uardada manual de la sessió estiga activa\2/g
s/\b\([Gg]\)uardades automàtics\([^[:alnum:]]\)/\1uardades automàtiques\2/g
s/\b\([Oo]\)brir i guardar fitxers\([^[:alnum:]]\)/\1bri i guarda fitxers\2/g

# desassignar -> treure l'assignació
s/\bes traure l'assignació\([^[:alnum:]]\)/es trau l'assignació\1/g
s/\bNo s'ha pogut traure l'assignació l'informe\([^[:alnum:]]\)/No s'ha pogut traure l'assignació de l'informe\1/g
s/\b\([Tt]\)raure l'assignació el\(s\|\)\([^[:alnum:]]\)/\1raure l'assignació del\2\3/g
s/\b\([Tt]\)raure l'assignació \(etiquetes\|una etiqueta\)\([^[:alnum:]]\)/\1raure l'assignació d'\2\3/g
s/\b\([Tt]\)raure l'assignació la clau\([^[:alnum:]]\)/\1rau l'assignació de la clau\2/g
s/\bTraure l'assignació\([^[:alnum:]]\)/Trau l'assignació\1/g
    s/\b\([Aa]\)ssignació etiquetes\([^[:alnum:]]\)/\1ssignació d'etiquetes\2/g

# desconnexió -> eixida
s/\b\([Dd]\)iàleg de desconnexió\([^[:alnum:]]\)/\1iàleg d'eixida\2/g

# desitgeu -> voleu
s/\bDesitgeu\([^[:alnum:]]\)/Voleu\1/g
s/\bdesitgeu\([^[:alnum:]]\)/voleu\1/g
 #
s/\"voleu de les quals\([^[:alnum:]]\)/\"vulgueu de les quals\1/g

# dessota o sota -> davall o baix
s/\ba \(davall\|sota\)\([^[:alnum:]]\)/davall\2/g
s/\b\([Dd]\)essota\([^[:alnum:]]\)/\1avall\2/g
s/\bper sota\([^[:alnum:]]\)/per davall\1/g
s/\bSota\([^[:alnum:]]\)/Davall\1/g
s/\bsota\([^[:alnum:]]\)/davall\1/g
 #
s/\bAl davall\([^[:alnum:]]\)/Davall\1/g
s/\bal davall\([^[:alnum:]]\)/davall\1/g
s/\b\(Davall\|Sota\) el cursor\([^[:alnum:]]\)/Baix el cursor\2/g
s/\b\(davall\|sota\) el cursor\([^[:alnum:]]\)/baix el cursor\2/g
s/\b\([Dd]\)avall una capa\([^[:alnum:]]\)/\1avall d'una capa\2/g
s/\bdel davall\([^[:alnum:]]\)/de davall\1/g
s/\bDavall demanda\([^[:alnum:]]\)/Sota demanda\1/g
s/\bdavall demanda\([^[:alnum:]]\)/sota demanda\1/g
s/\bVegeu davall per als detalls\([^[:alnum:]]\)/Per als detalls, vegeu davall\1/g
s/\bvegeu davall per als detalls\([^[:alnum:]]\)/per als detalls, vegeu davall\1/g

# destinació o destí
# digikam.po, gcompris_qt.po, org.kde.itinerary.appdata.po, kde-itinerary.po, kphotoalbum.po, ktrip.po, marble_qt
s/\barribat en la destinació\([^[:alnum:]]\)/arribat al destí\1/g
s/\batènyer la vostra destinació\([^[:alnum:]]\)/atényer el vostre destí\1/g
s/\bBusca la ubicació de destinació\([^[:alnum:]]\)/Busca la ubicació de destí\1/g
s/\bCarcassona es troba entre les destinacions turístiques més prestigioses\([^[:alnum:]]\)/Carcassona es troba entre les destinacions turístiques més prestigioses\1/g
s/\bde la destinació durant el viatge\([^[:alnum:]]\)/del destí durant el viatge\1/g
s/\bDestinació enfront\([^[:alnum:]]\)/Destí enfront\1/g
s/\bElimina aquesta destinació\([^[:alnum:]]\)/Elimina aquest destí\1/g
s/\ben les destinacions de viatges\([^[:alnum:]]\)/en els destins de viatges\1/g
s/\bID de la destinació\([^[:alnum:]]\)/ID del destí\1/g
s/\bIndiqueu la destinació del sobre\([^[:alnum:]]\)/Indiqueu el destí del sobre\1/g
# Destinació:
s/\bper a les destinacions seleccionades\([^[:alnum:]]\)/per als destins seleccionats\1/g
s/\bTrieu la destinació\"/Trieu el destí\"/g
s/\bVídeo de destinació\([^[:alnum:]]\)/Vídeo del destí\1/g

# dipòsit
s/\bDIPÒSIT\([^[:alnum:]]\)/DEPÓSIT\1/g

# dipositar -> depositar
s/\b\([Dd]\)iposita\(da\|des\|nt\|[rt]\|rà\|ran\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1eposita\2\3/g
s/\b\([Dd]\)iposités\([^[:alnum:]]\)/\1epositara\2/g
s/\b\([Dd]\)ipositéssi\([mu]\|\)\([^[:alnum:]]\)/\1epositàre\2\3/g
s/\b\([Dd]\)ipositessi\([ns]\|\)\([^[:alnum:]]\)/\1epositare\2\3/g
s/\b\([Dd]\)iposite\(m\|n\|s\|u\)\([^[:alnum:]]\)/\1eposite\2\3/g
s/\b\([Dd]\)iposit\([io]\)\([^[:alnum:]]\)/\1eposite\3/g
s/\b\([Dd]\)ipositi\([ns]\)\([^[:alnum:]]\)/\1eposite\2\3/g

# dolent
s/\bDOLENT\([^[:alnum:]]\)/ROÍN\1/g

# durar
s/\"Duren\"/\"Durin\"/g

# El Barcelonès
s/\b\([Ee]\)l Barcelonés\([^[:alnum:]]\)/\1l Barcelonès\2/g

# elidir - eludir
s/\b\([Ee]\)l\([iu]\)deix\(en\|es\|\)\([^[:alnum:]]\)/\1l\2dix\3\4/g
s/\b\([Ee]\)l\([iu]\)deixi\([^[:alnum:]]\)/\1l\2disca\3/g
s/\b\([Ee]\)l\([iu]\)deixi\([ns]\)\([^[:alnum:]]\)/\1l\2disque\3\4/g
s/\b\([Ee]\)l\([iu]\)deixo\([^[:alnum:]]\)/\1l\2disc\3/g
s/\b\([Ee]\)l\([iu]\)dís\([^[:alnum:]]\)/\1l\2dira\3/g
s/\b\([Ee]\)l\([iu]\)díssi\([mu]\|\)\([^[:alnum:]]\)/\1l\2díre\3\4/g
s/\b\([Ee]\)l\([iu]\)dissi\([ns]\|\)\([^[:alnum:]]\)/\1l\2dire\3\4/g

# embolcallar -> ajustar (1)
s/\bEmbolcalla\(r\|\)\([^[:alnum:]]\)/Ajusta\1\2/g
s/\bembolcalla\(r\|\)\([^[:alnum:]]\)/ajusta\1\2/g

# emmagatzemar (1)
s/\bEmmagatzema l'últim\([^[:alnum:]]\)/Emmagatzema l'última\1/g

# encongir -> encollir
s/\b\([Ee]\)ncongeix\([^[:alnum:]]\)/\1ncull\2/g
s/\b\([Ee]\)ncongeixen\([^[:alnum:]]\)/\1ncullen\2/g
s/\b\([Ee]\)ncongeixes\([^[:alnum:]]\)/\1nculls\2/g
s/\b\([Ee]\)ncongeixi\([^[:alnum:]]\)/\1nculla\2/g
s/\b\([Ee]\)ncongeixi\([ns]\)\([^[:alnum:]]\)/\1nculle\2\3/g
s/\b\([Ee]\)ncongeixo\([^[:alnum:]]\)/\1ncull\2/g
s/\b\([Ee]\)ncongi\(a\|en\|da\|des\|nt\|r\|rà\|ran\|t\|ts\)\([^[:alnum:]]\)/\1ncolli\2\3/g
s/\b\([Ee]\)ncongi\([mu]\|\)\([^[:alnum:]]\)/\1ncolli\2\3/g
s/\b\([Ee]\)ncongiment\([^[:alnum:]]\)/\1ncolliment\2/g

# (des)encriptatge -> (des)encriptació
    s/\bper al seu encriptatge\([^[:alnum:]]\)/per a l'encriptació\1/g
    s/\bun encriptatge segur màxim\([^[:alnum:]]\)/una encriptació segura màxima\1/g
s/\b\([Ee]\)ncriptatge\([^[:alnum:]]\)/\1ncriptació\2/g
    s/\bclau de l'encriptació\([^[:alnum:]]\)/clau d'encriptació\1/g
    s/\b\([Ee]\)ncriptació activat\([^[:alnum:]]\)/\1ncriptació activada\2/g
    s/\bencriptació complet\([^[:alnum:]]\)/encriptació completa\1/g
        s/\b\([Ee]\)ncriptació desactivat\([^[:alnum:]]\)/\1ncriptació desactivada\2/g
    s/\bEncriptació E2E activat\([^[:alnum:]]\)/Encriptació E2E activada\1/g
    s/\b\([Ee]\)ncriptació habilitat\([^[:alnum:]]\)/\1ncriptació habilitada\2/g
    s/\b\([Ee]\)ncriptació simètric\([^[:alnum:]]\)/\1ncriptació simètrica\2/g
s/\b\([Dd]\)esencriptatge\([^[:alnum:]]\)/\1esencriptació\2/g
    s/\bdel desencriptació\([^[:alnum:]]\)/de desencriptació\1/g
    s/\bEl desencriptació\([^[:alnum:]]\)/La desencriptació\1/g
    s/\b\(a \|\)el desencriptació\([^[:alnum:]]\)/\1la desencriptació\2/g
    s/\bal desencriptació\([^[:alnum:]]\)/la desencriptació\1/g
    s/\bdesprés de desencriptació\([^[:alnum:]]\)/després de la desencriptació\1/g
    s/\b\([Dd]\)esencriptació correcte\([^[:alnum:]]\)/\1esencriptació correcte\2/g

# endarrere -> arrere
s/\bEn\(dar\|\)rere\([^[:alnum:]]\)/Arrere\2/g
s/\ben\(dar\|\)rere\([^[:alnum:]]\)/arrere\2/g

    # enrere -> arrere
    s/\bCompteEnrere\([^[:alnum:]]\)/CompteArrere\1/g

# endavant -> avant
s/\bEndavant\([^[:alnum:]]\)/Avant\1/g
s/\bendavant\([^[:alnum:]]\)/avant\1/g
 #
s/\b\([Dd]\)'ara avant\([^[:alnum:]]\)/\1'ara en avant\2/g

# endollar -> connectar (# PDT:)
s/\bEndoll\(a\|ada\|ant\|at\)\([^[:alnum:]]\)/Connect\1\2/g
s/\bendoll\(a\|ada\|ant\|at\)\([^[:alnum:]]\)/connect\1\2/g
s/\bEndollés\([^[:alnum:]]\)/Connectara\1/g
s/\bendollés\([^[:alnum:]]\)/connectara\1/g
s/\bEndolléssi\([mu]\)\([^[:alnum:]]\)/Connectàre\1\2/g
s/\bendolléssi\([mu]\)\([^[:alnum:]]\)/connectàre\1\2/g
s/\bEndollessi\([ns]\)\([^[:alnum:]]\)/Connectare\1\2/g
s/\bendollessi\([ns]\)\([^[:alnum:]]\)/connectare\1\2/g
s/\bEndoll\([io]\)\([^[:alnum:]]\)/Connecte\2/g
s/\bendoll\([io]\)\([^[:alnum:]]\)/connecte\2/g
s/\bEndolli\([ns]\)\([^[:alnum:]]\)/Connecte\1\2/g
s/\bendolli\([ns]\)\([^[:alnum:]]\)/connecte\1\2/g
 #
s/\bs'connecte\(n\|\)\([^[:alnum:]]\)/es connecte\1\2/g

    # desendollar -> desconnectar (# PDT:)
    s/\b\([Dd]\)esendoll\(a\|ada\|ant\|at\)\([^[:alnum:]]\)/\1esconnect\2\3/g
    s/\b\([Dd]\)esendollés\([^[:alnum:]]\)/\1esconnectara\2/g
    s/\b\([Dd]\)esendolléssi\([mu]\)\([^[:alnum:]]\)/\1esconnectàre\2\3/g
    s/\b\([Dd]\)esendollessi\([ns]\)\([^[:alnum:]]\)/\1esdconnectare\2\3/g
    s/\b\([Dd]\)esendoll\([io]\)\([^[:alnum:]]\)/\1esconnecte\3/g
    s/\b\([Dd]\)esendolli\([ns]\)\([^[:alnum:]]\)/\1esconnecte\2\3/g

# enganxar -> apegar
s/\bEnganxa\(nt\|[rt]\|rà\|ran\|ts\|\)\([^[:alnum:]]\)/Apega\1\2/g
s/\benganxa\(nt\|[rt]\|rà\|ran\|ts\|\)\([^[:alnum:]]\)/apega\1\2/g
s/\bEnganxés\([^[:alnum:]]\)/Apegara\1/g
s/\benganxés\([^[:alnum:]]\)/apegara\1/g
s/\bEnganxéssi\([mu]\|\)\([^[:alnum:]]\)/Apegàre\1\2/g
s/\benganxéssi\([mu]\|\)\([^[:alnum:]]\)/apegàre\1\2/g
s/\bEnganxessi\([ns]\|\)\([^[:alnum:]]\)/Apegare\1\2/g
s/\benganxessi\([ns]\|\)\([^[:alnum:]]\)/apegare\1\2/g
s/\bEnganxeu\([^[:alnum:]]\)/Apegueu\1/g
s/\benganxeu\([^[:alnum:]]\)/apegueu\1/g
s/\bEnganxament\([^[:alnum:]]\)/Apegades\1/g
s/\benganxament\([^[:alnum:]]\)/apegades\1/g
s/\bEnganxi\([ns]\)\([^[:alnum:]]\)/Apegue\1\2/g
s/\benganxi\([ns]\)\([^[:alnum:]]\)/apegue\1\2/g
s/\bEnganxen\([^[:alnum:]]\)/Apeguen\1/g
s/\benganxen\([^[:alnum:]]\)/apeguen\1/g
s/\bEnganx\([io]\)\([^[:alnum:]]\)/Apegue\2/g
s/\benganx\([io]\)\([^[:alnum:]]\)/apegue\2/g
 #
s/\b\([Aa]\)ccions d'apegades\([^[:alnum:]]\)/\1ccions d'apegada\2/g
s/\b\([Aa]\)utoenganxa\(t\|\)\([^[:alnum:]]\)/\1utoapega\2\3/g
s/\bCopiar i apegar\([^[:alnum:]]\)/Copia i apega\1/g

    # desenganxar -> desapegar
    s/\b\([Dd]\)esenganxa\(nt\|[rt]\|rà\|ran\|ts\|\)\([^[:alnum:]]\)/\1esapega\2\3/g
    s/\b\([Dd]\)esenganxament\([^[:alnum:]]\)/\1esapegades\2/g
    s/\b\([Dd]\)esenganxe\([nu]\)\([^[:alnum:]]\)/\1esapegue\2\3/g
    s/\b\([Dd]\)esenganxés\([^[:alnum:]]\)/\1esenganxara\2/g
    s/\b\([Dd]\)esenganxàre\([mu]\)\([^[:alnum:]]\)/\1esenganxàre\2\3/g
    s/\b\([Dd]\)esenganxare\([ns]\)\([^[:alnum:]]\)/\1esenganxare\2\3/g
    s/\b\([Dd]\)esenganx\([io]\)\([^[:alnum:]]\)/\1esenganxe\2/g
    s/\b\([Dd]\)esenganxi\([ns]\)\([^[:alnum:]]\)/\1esenganxe\2\3/g

# engegar -> iniciar
s/\bEngega\(da\|des\|nt\|nts\|[rt]\|rà\|ts\|\)\([^[:alnum:]]\)/Inicia\1\2/g
s/\bengega\(da\|des\|nt\|nts\|[rt]\|rà\|ts\|\)\([^[:alnum:]]\)/inicia\1\2/g
s/\bEngegués\([^[:alnum:]]\)/Iniciara\1/g
s/\bengegués\([^[:alnum:]]\)/iniciara\1/g
s/\bEngeguéssi\([mu]\|\)\([^[:alnum:]]\)/Iniciàre\1\2/g
s/\bengeguéssi\([mu]\|\)\([^[:alnum:]]\)/iniciàre\1\2/g
s/\bEngeguessi\([ns]\|\)\([^[:alnum:]]\)/Iniciare\1\2/g
s/\bengeguessi\([ns]\|\)\([^[:alnum:]]\)/iniciare\1\2/g
s/\bEngegueu\([^[:alnum:]]\)/Inicieu\1/g
s/\bengegueu\([^[:alnum:]]\)/inicieu\1/g
s/\bEngegui\([ns]\|\)\([^[:alnum:]]\)/Inicie\1\2/g
s/\bengegui\([ns]\|\)\([^[:alnum:]]\)/inicie\1\2/g
 #
s/\bENGEGAT\([^[:alnum:]]\)/INICIAT\1/g

    # reengegar -> reiniciar
    s/\bReengega\(da\|des\|nt\|nts\|[rt]\|rà\|ts\|\)\([^[:alnum:]]\)/Reinicia\1\2/g
    s/\breengega\(da\|des\|nt\|nts\|[rt]\|rà\|ts\|\)\([^[:alnum:]]\)/reinicia\1\2/g
    s/\bReengegués\([^[:alnum:]]\)/Reiniciara\1/g
    s/\breengegués\([^[:alnum:]]\)/reiniciara\1/g
    s/\bReengeguéssi\([mu]\|\)\([^[:alnum:]]\)/Reiniciàre\1\2/g
    s/\breengeguéssi\([mu]\|\)\([^[:alnum:]]\)/reiniciàre\1\2/g
    s/\bReengeguessi\([ns]\|\)\([^[:alnum:]]\)/Reiniciare\1\2/g
    s/\breengeguessi\([ns]\|\)\([^[:alnum:]]\)/reiniciare\1\2/g
    s/\bReengegueu\([^[:alnum:]]\)/Reinicieu\1/g
    s/\breengegueu\([^[:alnum:]]\)/reinicieu\1/g
    s/\bReengegui\([ns]\|\)\([^[:alnum:]]\)/Reinicie\1\2/g
    s/\breengegui\([ns]\|\)\([^[:alnum:]]\)/reinicie\1\2/g

# escollir
# NOTE: PDT
    s/\bEscolleix\([^[:alnum:]]\)/Trieu\1/g
    s/\bescolleix\([^[:alnum:]]\)/trieu\1/g
    s/\bEscull\([^[:alnum:]]\)/Tria\1/g
    s/\bescull\([^[:alnum:]]\)/tria\1/g
    s/\bEsc\([ou]\)\(lleixi\|lli\)\([nu]\|\)\([^[:alnum:]]\)/Trie\3\4/g
    s/\besc\([ou]\)\(lleixi\|lli\)\([nu]\|\)\([^[:alnum:]]\)/trie\3\4/g
    s/\b\([Ee]\)sc\([ou]\)ll\(eix\|\)\([^[:alnum:]]\)/\1scull\4/g
    s/\b\([Ee]\)sc\([ou]\)ll\(eixi\|i\)\([^[:alnum:]]\)/\1sculla\4/g
    s/\b\([Ee]\)sc\([ou]\)ll\(eixi\|i\)\([ns]\)\([^[:alnum:]]\)/\1sculle\4\5/g
    s/\b\([Ee]\)sc\([ou]\)ll\(eixen\|en\)\([^[:alnum:]]\)/\1scullen\2/g
    s/\b\([Ee]\)sc\([ou]\)ll\(eixes\|s\)\([^[:alnum:]]\)/\1sculls\2/g
    s/\b\([Ee]\)sc\([ou]\)ll\(eixo\|o\)\([^[:alnum:]]\)/\1scull\4/g
    s/\b\([Ee]\)scollís\([^[:alnum:]]\)/\1scollira\2/g
    s/\b\([Ee]\)scollíssi\([mu]\)\([^[:alnum:]]\)/\1scollíre\2\3/g
    s/\b\([Ee]\)scollissi\([ns]\)\([^[:alnum:]]\)/\1scollire\2\3/g
 #
s/\bS'tria\([^[:alnum:]]\)/Es tria\1/g
s/\bs'tria\([^[:alnum:]]\)/es tria\1/g

# enregistrar -> gravar
s/\bEnregistra\(dor\|nt\|[rt]\|rà\|\)\([^[:alnum:]]\)/Grava\1\2/g
s/\benregistra\(dor\|nt\|[rt]\|rà\|\)\([^[:alnum:]]\)/grava\1\2/g
s/\bEnregistrament\([^[:alnum:]]\)/Gravació\1/g
s/\benregistrament\([^[:alnum:]]\)/gravació\1/g
s/\bEnregistraments\([^[:alnum:]]\)/Gravacions\1/g
s/\benregistraments\([^[:alnum:]]\)/gravacions\1/g
    # TODO: no
    # preenregistrar -> pregravar
    s/\b\([Pp]\)reenregistra\(dor\|nt\|r\|rà\|\)\([^[:alnum:]]\)/\1regrava\2\3/g
    s/\b\([Pp]\)reenregistrament\([^[:alnum:]]\)/\1regravació\2/g
    s/\b\([Pp]\)reenregistraments\([^[:alnum:]]\)/\1regravacions\2/g
    s/\b\([Pp]\)reenregistrant\([^[:alnum:]]\)/\1regravant\2/g
    s/\b\([Pp]\)reenregistrés\([^[:alnum:]]\)/\1registrara\2/g
    s/\b\([Pp]\)reenregistréssi\([mu]\)\([^[:alnum:]]\)/\1registràre\2\3/g
    s/\b\([Pp]\)reenregistressi\([ns]\)\([^[:alnum:]]\)/\1registrare\2\3/g
    s/\b\([Pp]\)reenregistr\([io]\)\([^[:alnum:]]\)/\1registre\3/g
    s/\b\([Pp]\)reenregistri\([ns]\)\([^[:alnum:]]\)/\1registre\2\3/g
 #
s/\b\([Cc]\)onté gravacions d'errors\([^[:alnum:]]\)/\1onté l'enregistrament dels errors\2/g
s/\bel \(<[^<]\{1,\}>\|\)\([Pp]\)regravació\([^[:alnum:]]\)/la \1\2regravació\3/g
s/\bEls gravacions\([^[:alnum:]]\)/Les gravacions\1/g
s/\bels gravacions\([^[:alnum:]]\)/les gravacions\1/g
s/\b\([Ee]\)n els gravacions\([^[:alnum:]]\)/\1n les gravacions\2/g
s/\bencara que es conservaran els ja exportats\([^[:alnum:]]\)/encara que es conservaran les ja exportades\1/g
s/\bes conservaran els ja exportats\([^[:alnum:]]\)/es conservaran les ja exportades\1/g
s/\bes grava cap traça\([^[:alnum:]]\)/s'enregistra cap traça\1/g
s/\bes va gravar en la zona\([^[:alnum:]]\)/es va enregistrar en la zona\1/g
s/\b\([Dd]\)'gravaci\(ó\|ons\)\([^[:alnum:]]\)/\1e gravaci\2\3/g
s/\b\([Dd]\)'gravar\([^[:alnum:]]\)/\1e gravar\2/g
s/\b\([Dd]\)e l'\([Gg]\)ravador\([^[:alnum:]]\)/\1el \2ravador\3/g
s/\b\([Dd]\)iagrama gravat\([^[:alnum:]]\)/\1iagrama enregistrat\2/g
s/\bEste és un compte gravat\([^[:alnum:]]\)/Este és un compte enregistrat\1/g
s/\b\([Ff]\)inalitzant l'gravant\([^[:alnum:]]\)/\1inalitzant la gravació\2/g
s/\b\([Ff]\)itxer on gravar\([^[:alnum:]]\)/\1itxer on enregistrar\2/g
s/\bfotograma fosc i l'gravat\([^[:alnum:]]\)/fotograma fosc i l'enregistrat\1/g
s/\b\([Gg]\)ravació activat\([^[:alnum:]]\)/\1ravació activada\2/g
s/\b\([Gg]\)ravació automàtic\([^[:alnum:]]\)/\1ravació automàtica\2/g
s/\b\([Gg]\)ravació de pantalla nou\([^[:alnum:]]\)/\1ravació nova de la pantalla\2/g
s/\b\([Gg]\)ravació de pantalla\([^[:alnum:]]\)/\1ravació de la pantalla\2/g
    s/\b\([Gg]\)ravació de la pantalla nou\([^[:alnum:]]\)/\1ravació nova de la pantalla\2/g
s/\b\([Gg]\)ravació guardat\([^[:alnum:]]\)/\1ravació guardada\2/g
s/\b\([Gg]\)ravació instantani\([^[:alnum:]]\)/\1ravació instantània\2/g
s/\b\([Gg]\)ravació nou\([^[:alnum:]]\)/\1ravació nova\2/g
s/\bgravacions per a aquest document i no els podreu tornar\([^[:alnum:]]\)/gravacions per a aquest document i no les podreu tornar\1/g
s/\b\([Gg]\)ravacions programats\([^[:alnum:]]\)/\1ravacions programades\2/g
s/\bGravar a un fitxer\([^[:alnum:]]\)/Enregistrar a un fitxer\1/g
s/\bgravar a un fitxer\([^[:alnum:]]\)/enregistrar a un fitxer\1/g
s/\bgravar automàticament la finalització\([^[:alnum:]]\)/enregistrar automàticament la finalització\1/g
s/\bgravar el \(perfil\|saldo\|vostre desig\)\([^[:alnum:]]\)/enregistrar el \1\2/g
s/\bgravar els \(canvis\|valors\)\([^[:alnum:]]\)/enregistrar els \1\2/g
s/\bgravar esta \(invitació\|operació\|resposta\|tasca\)\([^[:alnum:]]\)/enregistrar esta \1\2/g
s/\bgravar les \(traces\|voltes\)\([^[:alnum:]]\)/enregistrar les \1\2/g
s/\bgravar les vostres \(observacions\|sessions\)\([^[:alnum:]]\)/enregistrar les vostres \1\2/g
s/\bgravar només els \(pagaments\)\([^[:alnum:]]\)/enregistrar només els \1\2/g
s/\bgravar tots els \(pagaments\)\([^[:alnum:]]\)/enregistrar tots els \1\2/g
s/\bgravar un\(a\|\) \(excepció\)\([^[:alnum:]]\)/enregistrar un\1 \2\3/g
s/\bgravar \(àrees\|informació\)\([^[:alnum:]]\)/enregistrar \1\2/g
s/\bGravar pagaments[?]/Voleu enregistrar els pagaments\?/g
s/\bGravar el saldo a\([^[:alnum:]]\)/Enregistrar el saldo a\1/g
s/\bgravat una \(traça\)\([^[:alnum:]]\)/enregistrat una \1\2/g
s/\bha demanat de crear\([^[:alnum:]]\)/ha demanat crear\1/g
s/\bha gravat cap alt\([^[:alnum:]]\)/ha enregistrat cap alt\1/g
s/\bha gravat una solució\([^[:alnum:]]\)/ha enregistrat una solució\1/g
s/\bhan gravat els errors\([^[:alnum:]]\)/han enregistrat els errors\1/g
s/\bi gravat abans el nivell\([^[:alnum:]]\)/i enregistrat abans el nivell\1/g
s/\b\([Ll]\)'gravació\([^[:alnum:]]\)/\1a gravació\2/g
s/\bL'\([Gg]\)ravador\([^[:alnum:]]\)/El gravador\2/g
s/\bl'gravador\([^[:alnum:]]\)/el gravador\1/g
s/\bles gravacions seleccionats i ja no els podreu\([^[:alnum:]]\)/les gravacions seleccionades i ja no les podreu\1/g
s/\bn'grava un de nou\([^[:alnum:]]\)/en grava una de nova\1/g
s/\b\([Nn]\)ombre dels gravacions\([^[:alnum:]]\)/\1ombre de gravacions\2/g
s/\boperacions prèvies no s'han gravat\([^[:alnum:]]\)/operacions prèvies no s'han enregistrat\1/g
s/\boperacions que s'han de gravar\([^[:alnum:]]\)/operacions que s'han d'enregistrar\1/g
s/\b\([Pp]\)er a gravar en mono\([^[:alnum:]]\)/\1er a gravar en mono\2/g
s/\bresposta a <b>Què voleu gravar[?]/resposta a <b>Què voleu enregistrar\?/g
s/\bQuins pagaments voleu gravar\([^[:alnum:]]\)/Quins pagaments voleu enregistrar\1/g
s/\bS'gravarà\([^[:alnum:]]\)/Es gravarà\1/g
s/\bs'gravarà\([^[:alnum:]]\)/es gravarà\1/g
    s/\bpagament que es gravarà\([^[:alnum:]]\)/pagament que s'enregistrarà\1/g
s/\bS'ha gravat la resposta <b>%1<\/b>/S'ha enregistrat la resposta <b>%1<\/b>/g
s/\b\([Tt]\)emps a gravar\([^[:alnum:]]\)/\1emps que s'ha de gravar\2/g
s/\b\([Tt]\)emps total gravat\([^[:alnum:]]\)/\1emps total enregistrat\2/g
s/\bun gravació\([^[:alnum:]]\)/una gravació\1/g
    s/\buna gravació nou\([^[:alnum:]]\)/una gravació nova\1/g
s/\bvot s'ha gravat\([^[:alnum:]]\)/vot s'ha enregistrat\1/g
 #
s/\bper als gravacions\([^[:alnum:]]\)/per a les gravacions\1/g

# ensagnar -> ensanguinar
s/\b\([Ee]\)nsagna\(da\|des\|nt\|[rt]\|rà\|ran\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1nsanguina\2\3/g
s/\b\([Ee]\)nsagnés\([^[:alnum:]]\)/\1nsanguinara\2/g
s/\b\([Ee]\)nsagnéssi\([mu]\)\([^[:alnum:]]\)/\1nsanguinàre\2\3/g
s/\b\([Ee]\)nsagnessi\([ns]\)\([^[:alnum:]]\)/\1nsanguinare\2\3/g
s/\b\([Ee]\)nsagni\([ns]\|\)\([^[:alnum:]]\)/\1nsanguine\2\3/g
s/\b\([Ee]\)nsagno\([^[:alnum:]]\)/\1nsanguine\2/g

# enxampar -> atrapar
s/\bEnxampa\([rt]\|\)\([^[:alnum:]]\)/Atrapa\1\2/g
s/\benxampa\([rt]\|\)\([^[:alnum:]]\)/atrapa\1\2/g
s/\bEnxampés\([^[:alnum:]]\)/Atrapara\1/g
s/\benxampés\([^[:alnum:]]\)/atrapara\1/g
s/\bEnxampéssi\([mu]\)\([^[:alnum:]]\)/Atrapàre\1\2/g
s/\benxampéssi\([mu]\)\([^[:alnum:]]\)/atrapàre\1\2/g
s/\bEnxampessi\([ns]\)\([^[:alnum:]]\)/Atrapare\1\2/g
s/\benxampessi\([ns]\)\([^[:alnum:]]\)/atrapare\1\2/g
s/\bEnxamp\([io]\)\([^[:alnum:]]\)/Atrape\2/g
s/\benxamp\([io]\)\([^[:alnum:]]\)/atrape\2/g
s/\bEnxampi\([ns]\)\([^[:alnum:]]\)/Atrape\1\2/g
s/\benxampi\([ns]\)\([^[:alnum:]]\)/atrape\1\2/g

# escombrar -> agranar
s/\bEscombr\(a\|es\)\([^[:alnum:]]\)/Graner\1\2/g
s/\bescombr\(a\|es\)\([^[:alnum:]]\)/graner\1\2/g
s/\bEscombra\(da\|des\|nt\|nts\|[rt]\|ts\)\([^[:alnum:]]\)/Agrana\1\2/g
s/\bescombra\(da\|des\|nt\|nts\|[rt]\|ts\)\([^[:alnum:]]\)/agrana\1\2/g
s/\bEscombrés\([^[:alnum:]]\)/Agranara\1/g
s/\bescombrés\([^[:alnum:]]\)/agranara\1/g
s/\bEscombréssi\([mu]\)\([^[:alnum:]]\)/Agranàre\1\2/g
s/\bescombréssi\([mu]\)\([^[:alnum:]]\)/agranàre\1\2/g
s/\bEscombressi\([ns]\)\([^[:alnum:]]\)/Agranare\1\2/g
s/\bescombressi\([ns]\)\([^[:alnum:]]\)/agranare\1\2/g
s/\bEscombr\([io]\)\([^[:alnum:]]\)/Agrane\2/g
s/\bescombr\([io]\)\([^[:alnum:]]\)/agrane\2/g
s/\bEscombri\([ns]\)\([^[:alnum:]]\)/Agrane\1\2/g
s/\bescombri\([ns]\)\([^[:alnum:]]\)/agrane\1\2/g

# escombraire
s/\bEscombra\(dor\|ire\)\([^[:alnum:]]\)/Agranador\2/g
s/\bescombra\(dor\|ire\)\([^[:alnum:]]\)/agranador\2/g

# escombraries
s/\bEscombraries\([^[:alnum:]]\)/Brossa\1/g
s/\bescombraries\([^[:alnum:]]\)/brossa\1/g
    s/\bles brossa\([^[:alnum:]]\)/la brossa\1/g

# esgarrapar -> arrapar
s/\bEsgarrapa\(da\|des\|nt\|[rt]\|rà\|ran\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Arrapa\1\2/g
s/\besgarrapa\(da\|des\|nt\|[rt]\|rà\|ran\|ts\|va\|ven\|\)\([^[:alnum:]]\)/arrapa\1\2/g
s/\bEsgarrape\([nmus]\)\([^[:alnum:]]\)/Arrape\1\2/g
s/\besgarrape\([nmus]\)\([^[:alnum:]]\)/arrape\1\2/g
s/\bEsgarrapés\([^[:alnum:]]\)/Arrapara\1/g
s/\besgarrapés\([^[:alnum:]]\)/arrapara\1/g
s/\bEsgarrapéssi\([mu]\)\([^[:alnum:]]\)/Arrapàre\1\2/g
s/\besgarrapéssi\([mu]\)\([^[:alnum:]]\)/arrapàre\1\2/g
s/\bEsgarrapessi\([ns]\)\([^[:alnum:]]\)/Arrapare\1\2/g
s/\besgarrapessi\([ns]\)\([^[:alnum:]]\)/arrapare\1\2/g
s/\bEsgarrap\([io]\)\([^[:alnum:]]\)/Arrape\2/g
s/\besgarrap\([io]\)\([^[:alnum:]]\)/arrape\2/g
s/\bEsgarrapi\([ns]\)\([^[:alnum:]]\)/Arrape\1\2/g
s/\besgarrapi\([ns]\)\([^[:alnum:]]\)/arrape\1\2/g

# esguerrar -> esgarrar
s/\b\([Ee]\)sguerra\(da\|des\|nt\|[rt]\|rà\|ran\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1sgarra\2\3/g
s/\b\([Ee]\)sguerrés\([^[:alnum:]]\)/\1sgarrara\2/g
s/\b\([Ee]\)sguerréssi\([mu]\)\([^[:alnum:]]\)/\1sgarràre\2\3/g
s/\b\([Ee]\)sguerressi\([ns]\)\([^[:alnum:]]\)/\1sgarrare\2\3/g
s/\b\([Ee]\)sguerr\([io]\)\([^[:alnum:]]\)/\1sgarre\3/g
s/\b\([Ee]\)sguerri\([ns]\)\([^[:alnum:]]\)/\1sgarre\2\3/g

# espitjar -> espentar
s/\b\([Ee]\)spitja\(da\|des\|nt\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1spenta\2\3/g
s/\b\([Ee]\)spitgés\([^[:alnum:]]\)/\1spentara\2/g
s/\b\([Ee]\)spitgéssi\([mu]\)\([^[:alnum:]]\)/\1spentàre\2\3/g
s/\b\([Ee]\)spitgessi\([ns]\)\([^[:alnum:]]\)/\1spentare\2\3/g
s/\b\([Ee]\)spitgi\([ns]\|\)\([^[:alnum:]]\)/\1spente\2\3/g
s/\b\([Ee]\)spitjo\([^[:alnum:]]\)/\1spente\2/g

# esquitxar -> esguitar
s/\b\([Ee]\)squitxa\(da\|des\|dor\|dors\|nt\|nts\|[rt]\|rà\|ran\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1sguita\2\3/g
s/\b\([Ee]\)squitxés\([^[:alnum:]]\)/\1sguitara\2/g
s/\b\([Ee]\)squitxéssi\([mu]\)\([^[:alnum:]]\)/\1sguitàre\2\3/g
s/\b\([Ee]\)squitxessi\([ns]\)\([^[:alnum:]]\)/\1sguitare\2\3/g
s/\b\([Ee]\)squitx\(e[mnsu]\)\([^[:alnum:]]\)/\1sguit\2\3/g
s/\b\([Ee]\)squitx\([io]\)\([^[:alnum:]]\)/\1sguite\3/g
s/\b\([Ee]\)squitxi\([ns]\)\([^[:alnum:]]\)/\1sguite\2\3/g

# establir
s/\bA davall podeu definir\([^[:alnum:]]\)/A davall podeu establir\1/g
 #
s/\bEstableixAcl\([^[:alnum:]]\)/EstablixAcl\1/g
s/\bEstableixMetaDades\([^[:alnum:]]\)/EstablixMetaDades\1/g
s/\bEstableixQuota\([^[:alnum:]]\)/EstablixQuota\1/g

# estalvi de pantalla -> salvapantalla
s/\bEstalvi de pantalla\([^[:alnum:]]\)/Salvapantalla\1/g
s/\bestalvi de pantalla\([^[:alnum:]]\)/salvapantalla\1/g
s/\bEstalvis de pantalla\([^[:alnum:]]\)/Salvapantalles\1/g
s/\bestalvis de pantalla\([^[:alnum:]]\)/salvapantalles\1/g
 #
s/\bde l'salvapantalla\([^[:alnum:]]\)/del salvapantalla\1/g
s/\bl'salvapantalla\([^[:alnum:]]\)/el salvapantalla\1/g

    # estel -> catxerulo
    # gcompris/gcompris_lang._static_.po
    5890,/^msgstr / s/\"estel\"/\"catxerulo\"/g
    s/\bL'ESTEL DE KAWELO\([^[:alnum:]]\)/EL CATXERULO DE KAWELO\1/g
    s/\"Estrel\"/\"Catxerulo\"/g
# estrella -> estrela
s/\bESTEL\([^[:alnum:]]\)/ESTRELA\1/g
s/\bESTRELL\(A\|ES\)\([^[:alnum:]]\)/ESTREL\1\2/g
s/\b\([Ee]\)strell\(a\|es\)\([^[:alnum:]]\)/\1strel\2\3/g
    # estrel·lar -> estel·lar
    s/\b\([Ee]\)strel·lar\([^[:alnum:]]\)/\1stel·lar\2/g

# expressar
s/\bExpresse%C3%B3_regular\([^[:alnum:]]\)/Expressi%C3%B3_regular\1/g

# fer
# s/\b\([Ff]\)es\([^[:alnum:]]\)/\1era\2/g No!

# flamarejar -> flamerejar
s/\b\([Ff]\)lamaregés\([^[:alnum:]]\)/\1lamerejara\2/g
s/\b\([Ff]\)lamaregéssi\([mu]\)\([^[:alnum:]]\)/\1lamerejàre\2\3/g
s/\b\([Ff]\)lamaregessi\([ns]\)\([^[:alnum:]]\)/\1lamerejare\2\3/g
s/\b\([Ff]\)lamaregi\([ns]\|\)\([^[:alnum:]]\)/\1lamerege\2\3/g
s/\b\([Ff]\)lamarejo\([^[:alnum:]]\)/\1lamerege\2/g

# fomentar
s/\b\([Uu]\)nidad de \([Ff]\)omente\([^[:alnum:]]\)/\1nitat de Fomento\3/g
s/\b\([Uu]\)nidades de \([Ff]\)omente\([^[:alnum:]]\)/\1nitats de Fomento\3/g

# gairebé -> quasi
s/\bper a gairebé tots els sistemes\([^[:alnum:]]\)/per quasi tots els sistemes\1/g

# gironès -> gironés
s/\b\([Ee]\)l Gironés\([^[:alnum:]]\)/\1l Gironès\2/g

# graó -> escala
s/\bGra\(ó\|ons\)\([^[:alnum:]]\)/Escal\1\2/g
s/\bgra\(ó\|ons\)\([^[:alnum:]]\)/escal\1\2/g

# gratuït -> debades
s/\b\([Dd]\)e franc\([^[:alnum:]]\)/\1ebades\2/g
s/\bGratuït\(s\|\)\([^[:alnum:]]\)/Debades\2/g
s/\bgratuït\(s\|\)\([^[:alnum:]]\)/debades\2/g
s/\bGratuïtes\([^[:alnum:]]\)/Debades\1/g
s/\bgratuïtes\([^[:alnum:]]\)/debades\1/g

# inicialitzar -> restablir
s/\bInicialitza\([^[:alnum:]]\)/Restablix\1/g
s/\binicialitza\([^[:alnum:]]\)/restablix\1/g
s/\bInicialitzar\([^[:alnum:]]\)/Restablir\1/g
s/\binicialitzar\([^[:alnum:]]\)/restablir\1/g
 #
s/\bd'restablir\([^[:alnum:]]\)/de restablir\1/g

# inserir
s/\bsigui inserit\([^[:alnum:]]\)/s'inserisca\1/g

# invertir
s/\bINVERTEIX\([^[:alnum:]]\)/INVERTIX\1/g

# juntar (esmenes - # PDT:)
s/\bJunta\([^[:alnum:]]\)/Unix\1/g
s/\bjunta\([^[:alnum:]]\)/unix\1/g

# llançament
# llançar
s/\bLlança\(dor\|dors\|r\|\)\([^[:alnum:]]\)/Inicia\1\2/g
s/\bllança\(dor\|dors\|r\|\)\([^[:alnum:]]\)/inicia\1\2/g
s/\bLlanci\([^[:alnum:]]\)/Inicie\1/g
s/\bllanci\([^[:alnum:]]\)/inicie\1/g
 #
s/\ba punt de iniciar-se KDE\([^[:alnum:]]\)/a punt de llançar-se KDE\1/g
s/\bAçò feia que les actualitzacions\([^[:alnum:]]\)/Açò feia que els llançaments\1/g
s/\banunci del llançament\([^[:alnum:]]\)/anunci de llançament\1/g
    s/\bpàgina d'anunci de llançament\([^[:alnum:]]\)/pàgina d'anunci del llançament\1/g
s/\buna actualització \(amb \|d'\)esmenes d'errors\([^[:alnum:]]\)/un llançament amb esmenes d'errors\2/g
s/\bal iniciador\([^[:alnum:]]\)/a l'iniciador\1/g
s/\bcap raó per a iniciar-lo\([^[:alnum:]]\)/cap raó per a llançar-lo\1/g
s/\b\([Dd]\)'iniciar-te\([^[:alnum:]]\)/\1e llançar-te\2/g
s/\b\([Dd]\)el \([Ii]\)niciador\([^[:alnum:]]\)/\1e l'\2niciador\3/g
s/\bdel llançament del\([^[:alnum:]]\)/de la iniciació del\1/g
s/\bDesprés de iniciar Krita\([^[:alnum:]]\)/Després de llançar Krita\1/g
s/\bencara puguem iniciar Krita per a Android\([^[:alnum:]]\)/encara puguem llançar Krita per a Android\1/g
s/\bEs inicia el lloc web\([^[:alnum:]]\)/Es llança el lloc web\1/g
s/\bes llance\([^[:alnum:]]\)/s'inicie\1/g
s/\bEs va iniciar]/Es va llançar]/g
s/\bEs va iniciar KDE \([1234]\)/Es va llançar KDE \1/g
s/\bes va iniciar el\([^[:alnum:]]\)/es va llançar el\1/g
s/\bGNU i està llicenciat\([^[:alnum:]]\)/GNU i es distribuïx\1/g
s/\bIniciar bomba\([^[:alnum:]]\)/Llançar bomba\1/g
s/\bIniciar els dards\([^[:alnum:]]\)/Llançar els dards\1/g
s/\biniciar-los en un dels pous\([^[:alnum:]]\)/llançar-los en un dels pous\1/g
s/\bInicia't\([^[:alnum:]]\)/Llança't\1/g
s/\binicia't\([^[:alnum:]]\)/llança't\1/g
s/\bInicia \(una \|\)bomba\([^[:alnum:]]\)/Llança \1bomba\2/g
s/\biniciar-se \(a l'esquerra\|al mig\)\([^[:alnum:]]\)/llançar-se \1\2/g
s/\biniciar-te\([^[:alnum:]]\)/llançar-te\1/g
s/\bKDE \[va iniciar\]/KDE [va llançar]/g
s/\bKDE va iniciar la seua\([^[:alnum:]]\)/KDE va llançar la seua\1/g
s/\bKrita 1.5 es va iniciar\([^[:alnum:]]\)/Krita 1.5 es va llançar\1/g
s/\bKrita 2.1 també es va iniciar l'any\([^[:alnum:]]\)/Krita 2.1 també es va llançar l'any\1/g
s/\bmenú del <interface>Iniciador\([^[:alnum:]]\)/menú de l'<interface>Iniciador\1/g
s/\b\([Nn]\)otes d'iniciament\([^[:alnum:]]\)/\1otes de llançament\2/g
s/\bper a iniciar un dard\([^[:alnum:]]\)/per a llançar un dard\1/g
s/\bper a iniciar els dards\([^[:alnum:]]\)/per a llançar els dards\1/g
s/\b\([Ss]\)'acaba de iniciar Krita\([^[:alnum:]]\)/\1'acaba de llançar Krita\2/g
s/\bEs inicia una versió nova\([^[:alnum:]]\)/Es llança una versió nova\1/g
s/\bva iniciar l'\(abril\|agost\|octubre\)\([^[:alnum:]]\)/va llançar l'\1\2/g
s/\bva iniciar el \(gener\|febrer\|març\|maig\|juny\|juliol\|setembre\|novembre\|desembre\)\([^[:alnum:]]\)/va llançar el \1\2/g
s/\bvan iniciar les Qt4\([^[:alnum:]]\)/van llançar les Qt4\1/g
s/\bvarem iniciar onze versions\([^[:alnum:]]\)/varem llançar onze versions\1/g
s/\bvarem iniciar Krita\([^[:alnum:]]\)/varem llançar Krita\1/g
    s/\bEl temps transcorregut des que es va llançar el procés\([^[:alnum:]]\)/El temps transcorregut des que es va iniciar el procés\1/g

# llegir
s/\bLLEGEIX\([^[:alnum:]]\)/LLIG\1/g

# llimona --> llima
s/\bLima llima\([^[:alnum:]]\)/Llima - llima dolça\1/g

# lluir
s/\bLluïra \(II\|Demo\)\([^[:alnum:]]\)/Lluís \1\2/g

# Longitude
# llargada - longitud -> llargària
s/\b\([Ll]\)largada\([^[:alnum:]]\)/\1largària\2/g
s/\b\([Ll]\)largades\([^[:alnum:]]\)/\1largàries\2/g
s/\b\([Ll]\)ongitud\([^[:alnum:]]\)/\1largària\2/g
s/\b\([Ll]\)ongituds\([^[:alnum:]]\)/\1largàries\2/g
    s/\bLlargària \(màxima\|mínima\):/Durada \1:/g
    s/\bllargària \(màxima\|mínima\):/durada \1:/g
     #
    # okteta/liboktetakasten.po
    1467,/^msgstr / s/\"Durada mínima:\"/\"Llargària mínima:\"/g
    1527,/^msgstr / s/\"Durada mínima:\"/\"Llargària mínima:\"/g
    1618,/^msgstr / s/\"Durada mínima:\"/\"Llargària mínima:\"/g
    # kid3/kid3_qt.po
    5555,/^msgstr / s/\"Durada màxima:\"/\"Llargària màxima:\"/g
    # rolisteam/rolisteam_qt.po
    4823,/^msgstr / s/\"Durada màxima:\"/\"Llargària màxima:\"/g
    4893,/^msgstr / s/\"Durada màxima:\"/\"Llargària màxima:\"/g
    5058,/^msgstr / s/\"Durada màxima:\"/\"Llargària màxima:\"/g
 #
## calligra/calligra_semanticitem_location.po
75,/^msgstr / s/\"Llargària\"/\"Longitud\"/g
## digikam/digikam.po
10151,/^msgstr / s/\"Llargària\"/\"Longitud\"/g
22230,/^msgstr / s/\"Llargària:\"/\"Longitud:\"/g
10131,/^msgstr / s/\"Llargària\"/\"Longitud\"/g
22366,/^msgstr / s/\"Llargària:\"/\"Longitud:\"/g
s/\"<b>Llargària<\/b>:\"/\"<b>Longitud<\/b>:\"/g
# kaffeine/kaffeine.po
820,/^msgstr / s/\"Llargària:\"/\"Longitud:\"/g
# kexi/kexiforms_mapwidgetplugin.po
47,/^msgstr / s/\bLlargària\"/Longitud\"/g
# kgeotag/kgeotag.po
232,/^msgstr / s/\"Llargària:\"/\"Longitud:\"/g
# kipi-plugins/kipiplugin_mediawiki.po
109,/^msgstr / s/\"Llargària:\"/\"Longitud:\"/g
# koko/koko.po
567,/^msgstr / s/\bLlargària\"/Longitud\"/g
580,/^msgstr / s/\bLlargària:\"/Longitud:\"/g
656,/^msgstr / s/\bLlargària:\"/Longitud:\"/g
590,/^msgstr / s/\bLlargària:\"/Longitud:\"/g
# kreport/kreport_mapsplugin_qt.po
32,/^msgstr / s/\bLlargària\"/Longitud\"/g
# kstars/kstars.po
4857,/^msgstr / s/\bLlargària:\"/Longitud:\"/g
66865,/^msgstr / s/\bLlargària: \"/Longitud: \"/g
s/ i la llargària: \"/ i la longitud: \"/g
# labplot/labplot.po
19791,/^msgstr / s/\bLongitud:\"/Llargària:\"/g
19855,/^msgstr / s/\bLongitud:\"/Llargària:\"/g
20017,/^msgstr / s/\bLongitud:\"/Llargària:\"/g
# marble/marble_qt.po
12255,/^msgstr / s/\bLlargària\"/Longitud\"/g
13568,/^msgstr / s/\bLlargària:\"/Longitud:\"/g
12026,/^msgstr / s/\bLlargària\"/Longitud\"/g
13322,/^msgstr / s/\bLlargària:\"/Longitud:\"/g
# mauikit-imagetools/mauikitimagetools.po
230,/^msgstr / s/\bLlargària\"/Longitud\"/g
# marble/plasma_applet_org.kde.plasma.worldclock.po
57,/^msgstr / s/\"Llargària\"/\"Longitud\"/g
67,/^msgstr / s/\"Llargària:\"/\"Longitud:\"/g
# marble/plasma_wallpaper_org.kde.plasma.worldmap.po
52,/^msgstr / s/\"Llargària\"/\"Longitud\"/g
62,/^msgstr / s/\"Llargària:\"/\"Longitud:\"/g
# plasma-workspace/kcm_nightcolor.po
59,/^msgstr / s/\"Llargària:\"/\"Longitud:\"/g
68,/^msgstr / s/\"Llargària:\"/\"Longitud:\"/g
# plasma-workspace/plasma_engine_time.po
61,/^msgstr / s/\"Llargària\"/\"Longitud\"/g
# tokodon
s/\"Longitud \(màxima\|mínima\):\"/\"Durada \1:\"/g
 #
s/\" i la llargària: \"/\" i la longitud: \"/g
s/``Llargària:`` i ``Latitud:``/``Longitud:`` i ``Latitud:``/g
s/\bA diferència de la llargària\([^[:alnum:]]\)/A diferència de la longitud\1/g
s/\baltituds, llargàries\([^[:alnum:]]\)/altituds, longituds\1/g
    s/\baltituds, longituds i distàncies\([^[:alnum:]]\)/altituds, llargàries i distàncies\1/g
s/\banomenat <firstterm>llargària\([^[:alnum:]]\)/anomenat <firstterm>longitud\1/g
s/\b\([Ee]\)mpleneu la llargària\([^[:alnum:]]\)/\1mpleneu la longitud\2/g
s/\bgrau de lluminositat del color\([^[:alnum:]]\)/grau de claredat del color\1/g
s/\bla llargària, la latitud\([^[:alnum:]]\)/la longitud, la latitud\1/g
s/\blatitud\/llargària\([^[:alnum:]]\)/latitud\/longitud\1/g
s/\b\([Ll]\)atitud, llargària\([^[:alnum:]]\)/\1atitud, longitud\2/g
s/\b\([Ll]\)atitud\( i \|\/\|-\)llargària\([^[:alnum:]]\)/\1atitud i longitud\3/g
s/\b\([Ll]\)atitud i la llargària\([^[:alnum:]]\)/\1atitud i la longitud\2/g
s/\bLlargària: %1/Longitud: %1/g
    s/\bLongitud: %1 px\([^[:alnum:]]\)/Llargària: %1 px\1/g
s/\bLlargària: %2°/Longitud: %2°/g
s/\bllargària=0 graus\([^[:alnum:]]\)/longitud=0 graus\1/g
s/\b\([Ll]\)largària (vegeu el `Sistema\([^[:alnum:]]\)/\1ongitud (vegeu el `Sistema\2/g
s/\b\([Ll]\)largària, latitud\([^[:alnum:]]\)/\1ongitud, latitud\2/g
s/\b\([Ll]\)largària, \(en graus\)\([^[:alnum:]]\)/\1ongitud en \2\3/g
s/\b\([Ll]\)largària a la qual es trobava\([^[:alnum:]]\)/\1ongitud a la qual es trobava\2/g
s/\b\([Ll]\)largària i \([Ll]\)ongitud\([^[:alnum:]]\)/\1atitud i longitud\3/g
s/\b\([Ll]\)largària com a valor\([^[:alnum:]]\)/\1ongitud com a valor\2/g
s/\b\([Ll]\)largària d'ona\([^[:alnum:]]\)/\1ongitud d'ona\2/g
    s/\b\([Ll]\)largàries d'ona\([^[:alnum:]]\)/\1ongituds d'ona\2/g
s/\b\([Ll]\)largària de 76,6 graus\([^[:alnum:]]\)/\1ongitud de 76,6 graus\2/g
s/\b\([Ll]\)largària de l'emplaçament\([^[:alnum:]]\)/\1ongitud de l'emplaçament\2/g
s/\b\([Ll]\)largària \(del \|\)GPS\([^[:alnum:]]\)/\1ongitud \2GPS\3/g
s/\b\([Ll]\)largària del pol nord\([^[:alnum:]]\)/\1ongitud del pol nord\2/g
s/\b\([Ll]\)largària en \(el format\|forma\|graus\|la qual es trobava\)\([^[:alnum:]]\)/\1ongitud en \2\3/g
s/\b\([Ll]\)largària \(és positiva\|Est\|geogràfica\|GPS\|Oest\|serà positiva\|zero\)\([^[:alnum:]]\)/\1ongitud \2\3/g
s/\b\([Ll]\)largària \(eclíptica\|galàctica\)\([^[:alnum:]]\)/\1ongitud \2\3/g
s/\b\([Ll]\)largària i \(altitud\|latitud\|radi\)\([^[:alnum:]]\)/\1ongitud i \2\3/g
s/\b\([Ll]\)largària i \(la \|\)longitud\([^[:alnum:]]\)/\1atitud i \2longitud\3/g
s/\b\([Ll]\)largària o latitud\([^[:alnum:]]\)/\1ongitud o latitud\2/g
s/\b\([Ll]\)largària especificada (en graus\([^[:alnum:]]\)/\1ongitud especificada (en graus\2/g
s/\b\([Ll]\)es línies de llargària constant\([^[:alnum:]]\)/\1es línies de longitud constant\2/g
s/\bLa llargària no té sentit en el pol nord\([^[:alnum:]]\)/La longitud no té sentit en el pol nord\1/g
s/\bllargàries i latituds\([^[:alnum:]]\)/longituds i latituds\1/g
s/\bllocs diferents en llargàries diferents\([^[:alnum:]]\)/llocs diferents en longituds diferents\1/g
s/\per al tipus horitzontal, els valors absoluts són la llargària\([^[:alnum:]]\)/per al tipus horitzontal, els valors absoluts són la longitud\1/g
s/\bTé totes les llargàries alhora\([^[:alnum:]]\)/Té totes les longituds alhora\1/g
 #
s/\bLongitud\(Byte\|Mínima\)\([^[:alnum:]]\)/Llargària\1\2/g
s/\bvariànciaLongitud\([^[:alnum:]]\)/variànciaLlargària\1/g

# Luminosity
# documentation-kstars-docs-kde-org/kstars_docs_user_manual___ai-luminosity.po
25,/^msgstr / s/\"Brillantor\"/\"Lluminositat\"/g

# manat
s/\b\([Mm]\)anat\(s\|\)\([^[:alnum:]]\)/\1anoll\2\3/g
 #
s/\bManoll \(antic \|\)del Turkmenistan\([^[:alnum:]]\)/Manat \1del Turkmenistan\2/g
s/\bManoll d'Azerbaidjan\([^[:alnum:]]\)/Manat d'Azerbaidjan\1/g

# mancar -> faltar
s/\bManca\(nt\|[rt]\|rà\|ran\|va\|ven\|\)\([^[:alnum:]]\)/Falta\1\2/g
s/\bmanca\(nt\|[rt]\|rà\|ran\|va\|ven\|\)\([^[:alnum:]]\)/falta\1\2/g
s/\bMancances\([^[:alnum:]]\)/Faltes\1/g
s/\bmancances\([^[:alnum:]]\)/faltes\1/g
s/\bManqu\(en\|eu\)\([^[:alnum:]]\)/Falt\1\2/g
s/\bmanqu\(en\|eu\)\([^[:alnum:]]\)/falt\1\2/g
s/\bManqués\([^[:alnum:]]\)/Faltara\1/g
s/\bmanqués\([^[:alnum:]]\)/faltara\1/g
s/\bManquéssi\([mu]\)\([^[:alnum:]]\)/Faltàre\1\2/g
s/\bmanquéssi\([mu]\)\([^[:alnum:]]\)/faltàre\1\2/g
s/\bManquessi\([ns]\)\([^[:alnum:]]\)/Faltare\1\2/g
s/\bmanquessi\([ns]\)\([^[:alnum:]]\)/faltare\1\2/g
s/\bManqui\(n\|\)\([^[:alnum:]]\)/Falte\1\2/g
s/\bmanqui\(n\|\)\([^[:alnum:]]\)/falte\1\2/g

# manifestar
s/\bKDE Manifeste\([^[:alnum:]]\)/KDE Manifesto\1/g
s/\bmanifeste\.kde\.org\([^[:alnum:]]\)/manifesto.kde.org\1/g
s/\bmanifeste.softwaresmanship.org\([^[:alnum:]]\)/manifesto.softwaresmanship.org\1/g
s/\bwebsites-manifeste-kde-org\([^[:alnum:]]\)/websites-manifesto-kde-org\1/g

# manllevar -> amprar
s/\bManlleva\(da\|des\|dor\|dors\|nt\|nts\|[rt]\|rà\|ran\|ts\|va\|ve[ns]\|\)\([^[:alnum:]]\)/Ampra\1\2/g
s/\bmanlleva\(da\|des\|dor\|dors\|nt\|nts\|[rt]\|rà\|ran\|ts\|va\|ve[ns]\|\)\([^[:alnum:]]\)/ampra\1\2/g
s/\bManllev\(e[mnsu]\)\([^[:alnum:]]\)/Ampr\1\2/g
s/\bmanllev\(e[mnsu]\)\([^[:alnum:]]\)/ampr\1\2/g
s/\bManllevés\([^[:alnum:]]\)/Amprara\1/g
s/\bmanllevés\([^[:alnum:]]\)/amprara\1/g
s/\bManllevéssi\([mu]\)\([^[:alnum:]]\)/Ampràre\1\2/g
s/\bmanllevéssi\([mu]\)\([^[:alnum:]]\)/ampràre\1\2/g
s/\bManllevessi\([ns]\)\([^[:alnum:]]\)/Amprare\1\2/g
s/\bmanllevessi\([ns]\)\([^[:alnum:]]\)/amprare\1\2/g
s/\bManllev\([io]\)\([^[:alnum:]]\)/Ampre\2/g
s/\bmanllev\([io]\)\([^[:alnum:]]\)/ampre\2/g
s/\bManllevi\([ns]\)\([^[:alnum:]]\)/Ampre\1\2/g
s/\bmanllevi\([ns]\)\([^[:alnum:]]\)/ampre\1\2/g

# manllevar -> amprar
s/\bde amprar\([^[:alnum:]]\)/d'amprar\1/g

# marcar
s/\bMarque \(Gulino\|Martin\|Nelles\)\([^[:alnum:]]\)/Marco \1\2/g

# matar
s/\"Mate\"/\"Mati\"/g
s/\bVoleu matar Grosso\([^[:alnum:]]\)/Mato Grosso\1/g

# mirall -> espill
s/\bal espill\([^[:alnum:]]\)/a l'espill\1/g
s/\bdel espill\([^[:alnum:]]\)/de l'espill\1/g

# mitges -> calces
s/\bCalces hores\([^[:alnum:]]\)/Mitges hores\1/g
s/\bcalces hores\([^[:alnum:]]\)/mitges hores\1/g
s/\bCalces marques\([^[:alnum:]]\)/Mitges marques\1/g
s/\bcalces marques\([^[:alnum:]]\)/mitges marques\1/g

# moure
s/\bque moga els fitxers\([^[:alnum:]]\)/que es moguen els fitxers\1/g

# nedar -> nadar
s/\b\([Nn]\)eda\(da\|des\|nt\|[rt]\|rà\|ran\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1ada\2\3/g
s/\b\([Nn]\)ede\([mnsu]\)\([^[:alnum:]]\)/\1ade\2\3/g
s/\b\([Nn]\)edés\([^[:alnum:]]\)/\1adara\2/g
s/\b\([Nn]\)edéssi\([mu]\)\([^[:alnum:]]\)/\1adàre\2\3/g
s/\b\([Nn]\)edessi\([ns]\)\([^[:alnum:]]\)/\1adare\2\3/g
s/\b\([Nn]\)ed\([io]\)\([^[:alnum:]]\)/\1ade\3/g
s/\b\([Nn]\)edi\([ns]\)\([^[:alnum:]]\)/\1ade\2\3/g

# néixer -> nàixer
s/\b\([Nn]\)éixer\([^[:alnum:]]\)/\1àixer\2/g
s/\b\([Nn]\)\([ae]\)ix\(en\|es\|\)\([^[:alnum:]]\)/\1aix\3\4/g
s/\b\([Nn]\)a\(ix\|squ\)és\([^[:alnum:]]\)/\1asquera\2/g
s/\b\([Nn]\)a\(ix\|squ\)éssi\([mu]\)\([^[:alnum:]]\)/\1asquére\3\4/g
s/\b\([Nn]\)a\(ix\|squ\)essi\([ns]\)\([^[:alnum:]]\)/\1asquere\3\4/g
s/\b\([Nn]\)\([ae]\)ixi\([^[:alnum:]]\)/\1asca\3/g
s/\b\([Nn]\)\([ae]\)ixi\([ns]\)\([^[:alnum:]]\)/\1asque\3\4/g
s/\b\([Nn]\)\([ae]\)ixo\([^[:alnum:]]\)/\1asc\3/g
    # renéixer -> renàixer
    s/\b\([Rr]\)enéixer\([^[:alnum:]]\)/\1enàixer\2/g
    s/\b\([Rr]\)en\([ae]\)ix\(en\|es\|\)\([^[:alnum:]]\)/\1enaix\3\4/g
    s/\b\([Rr]\)ena\(ix\|squ\)és\([^[:alnum:]]\)/\1enasquera\2/g
    s/\b\([Rr]\)ena\(ix\|squ\)éssi\([mu]\)\([^[:alnum:]]\)/\1enasquére\3\4/g
    s/\b\([Rr]\)ena\(ix\|squ\)essi\([ns]\)\([^[:alnum:]]\)/\1enasquere\3\4/g
    s/\b\([Rr]\)en\([ae]\)ixi\([^[:alnum:]]\)/\1enasca\3/g
    s/\b\([Rr]\)en\([ae]\)ixi\([ns]\)\([^[:alnum:]]\)/\1enasque\3\4/g
    s/\b\([Rr]\)en\([ae]\)ixo\([^[:alnum:]]\)/\1enasc\3/g

# nombres
s/\b\([Dd]\)isset\([^[:alnum:]]\)/\1èsset\2/g
s/\b\([Dd]\)ivuit\([^[:alnum:]]\)/\1íhuit\2/g
s/\b\([Dd]\)inou\([^[:alnum:]]\)/\1ènou\2/g
s/\bVuit\([^[:alnum:]]\)/Huit\1/g
s/\bvuit\([^[:alnum:]]\)/huit\1/g
s/\bVuitanta\([^[:alnum:]]\)/Huitanta\1/g
s/\bvuitanta\([^[:alnum:]]\)/huitanta\1/g

# obrir
s/\bObri\([^[:alnum:]]\)/Òbriga\1/g
s/\bobri\([^[:alnum:]]\)/òbriga\1/g
s/\bObri\([ns]\)\([^[:alnum:]]\)/Òbrigue\1\2/g
s/\bobri\([ns]\)\([^[:alnum:]]\)/òbrigue\1\2/g
s/\b\([Oo]\)bre\([ns]\|\)\([^[:alnum:]]\)/\1bri\2\3/g
s/\b\([Oo]\)brís\([^[:alnum:]]\)/\1brira\2/g
s/\b\([Oo]\)bríssi\([mu]\)\([^[:alnum:]]\)/\1bríre\2\3/g
s/\b\([Oo]\)brissi\([ns]\)\([^[:alnum:]]\)/\1brire\2\3/g
s/\bObro\([^[:alnum:]]\)/Òbric\1/g
s/\bobro\([^[:alnum:]]\)/òbric\1/g
 #
s/\bd'obris com música\([^[:alnum:]]\)/d'obres com música\1/g
s/\bLes obris\([^[:alnum:]]\)/Les obres\1/g
s/\bMostra les obris\([^[:alnum:]]\)/Mostra les obres\1/g
s/\bmeues obris\([^[:alnum:]]\)/meues obres\1/g
s/\b\([Oo]\)bris \(artístiques\|d'art\|dels mestres\|mestres\)\([^[:alnum:]]\)/\1bres \2\3/g

# oferir
s/\b\([Ll]\)es oferides més habituals\([^[:alnum:]]\)/\1es ofertes més habituals\2/g
s/\b\([Ss]\)eua oferida\([^[:alnum:]]\)/\1eua oferta\2/g

# omplir

# participar
s/\"Participe\"/\"Participi\"/g

# passar
# passi -> targeta
s/\bpasses d'embarcament\([^[:alnum:]]\)/targetes d'embarcament\1/g
s/\bpasses de la Cartera d'Apple\([^[:alnum:]]\)/targetes de la Cartera d'Apple\1/g
s/\bpasses de tarifa plana\([^[:alnum:]]\)/targetes de tarifa plana\1/g
s/\bPasses i programes\([^[:alnum:]]\)/Targetes i programes\1/g

# pensar
s/\bEs pensa\([^[:alnum:]]\)/Se pensa\1/g
s/\bes pensa\([^[:alnum:]]\)/se pensa\1/g

# petó -> bes
s/\bPetó\([^[:alnum:]]\)/Bes\1/g
s/\bpetó\([^[:alnum:]]\)/bes\1/g
s/\bPetons\([^[:alnum:]]\)/Besos\1/g
s/\bpetons\([^[:alnum:]]\)/besos\1/g

# pintar
s/\bHenrique Pinte\([^[:alnum:]]\)/Henrique Pinto\1/g

# portar
s/\"Porte\"/\"Porto\"/g
s/\bPorte_Acre\([^[:alnum:]]\)/Porto_Acre\1/g
s/\bPorte Alegre\([^[:alnum:]]\)/Porto Alegre\1/g
s/\bPorte-Novo\([^[:alnum:]]\)/Porto-Novo\1/g
s/\bPorte_Velho\([^[:alnum:]]\)/Porto_Velho\1/g
s/\bPorte Velho\([^[:alnum:]]\)/Porto Velho\1/g

# posicionat -> ubicat
s/\bposicionat\([^[:alnum:]]\)/ubicat\1/g

# pregar -> orar
# pregària -> oració
s/\bPregària\([^[:alnum:]]\)/Oració\1/g
s/\bpregària\([^[:alnum:]]\)/oració\1/g
s/\bPregàries\([^[:alnum:]]\)/Oracions\1/g
s/\bpregàries\([^[:alnum:]]\)/oracions\1/g

# prémer
# FIXME: -> polsar?
s/\b\([Aa]\)mb este prema\([^[:alnum:]]\)/\1mb este premi\2/g
s/\b\([Cc]\)erimònia del prema\([^[:alnum:]]\)/\1erimònia del premi\2/g
s/\brebre el \(\[\|\)prema\([^[:alnum:]]\)/rebre el \1premi\2/g
s/\brecent prema\([^[:alnum:]]\)/recent premi\1/g
s/\bpremes d'Astrobin\([^[:alnum:]]\)/premis d'Astrobin\1/g

# preserva -> mantín
s/\bPreserva\([^[:alnum:]]\)/Mantín\1/g
s/\bpreserva\([^[:alnum:]]\)/mantín\1/g

# pronuncia -> llegir
s/\bPronuncia\([^[:alnum:]]\)/Llig\1/g
s/\bpronuncia\([^[:alnum:]]\)/llig\1/g
s/\bPronunciar\([^[:alnum:]]\)/Llegir\1/g
s/\bpronunciar\([^[:alnum:]]\)/llegir\1/g

# pujar
# s/\bPuja\([^[:alnum:]]\)/Amunt\1/g

# quadrar (quadre o recuadre)
# s/\b\([Qq]\)uadro\([^[:alnum:]]\)/\1uadre\3/g
s/\bquadre\(1\|2\)\([^[:alnum:]]\)/quadro\1\2/g
s/\bquadreCombinat\([^[:alnum:]]\)/quadroCombinat\1/g
s/\bquadreDeText\([^[:alnum:]]\)/quadroDeText\1/g

# Quant al -> Quant a
s/\b\([Qq]\)uant a \(component\|connector\|dorsal\)\([^[:alnum:]]\)/\1uant al \2\3/g

# quelcom -> alguna cosa
s/\balguna cosa no desitjat\([^[:alnum:]]\)/alguna cosa no desitjada\1/g
s/\balguna cosa xicotet\([^[:alnum:]]\)/alguna cosa xicoteta\1/g
s/\bde alguna cosa nou\([^[:alnum:]]\)/d'alguna cosa nova\1/g
s/\bo alguna cosa altre\([^[:alnum:]]\)/o a alguna cosa\1/g
s/\bsubstitueix per alguna cosa altre\([^[:alnum:]]\)/substitueix per algun altre\1/g

# reanomenar -> canviar el nom
    s/\bReanomena aquest\(a\|\)\([^[:alnum:]]\)/Canvia el nom d'aquest\1\2/g
s/\bReanomena \(«\|<[^<]\{1,\}>\|\)%\([12]\)\([^[:alnum:]]\)/Canvia el nom de \1%\2\3/g
    s/\bCanvia el nom de %1 element\([^[:alnum:]]\)/Canvia el nom d'%1 element\1/g
    s/\bCa&nvia el nom grup\([^[:alnum:]]\)/Ca\&nvia el nom del grup\1/g
    s/\bCa&nvia el nom el fitxer\([^[:alnum:]]\)/Ca\&nvia el nom del fitxer\1/g
s/\bReanomena l'\(activitat\|adjunt\|adreça\|àlbum\|element\|etiqueta\|objecte\|script\)\([^[:alnum:]]\)/Canvia el nom de l'\1\2/g
s/\breanomena l'\(activitat\|adjunt\|adreça\|àlbum\|element\|etiqueta\|objecte\|script\)\([^[:alnum:]]\)/canvia el nom de l'\1\2/g
s/\bReanomena el \(beneficiari\|dispositiu\|filtre\|fitxer\|fons\|format\|full\|grup\|marcador\|pinzell\|pressupost\)\([^[:alnum:]]\)/Canvia el nom del \1\2/g
s/\breanomena el \(beneficiari\|dispositiu\|filtre\|fitxer\|fons\|format\|full\|grup\|marcador\|pinzell\|pressupost\)\([^[:alnum:]]\)/canvia el nom del \1\2/g
s/\bReanomena els \(fitxers\|fons\||fulls\|grups\)\([^[:alnum:]]\)/Canvia el nom dels \1\2/g
s/\breanomena els \(fitxers\|fons\|fulls\|grups\)\([^[:alnum:]]\)/canvia el nom dels \1\2/g
s/\bReanomena la \(capa\|carpeta\|col·lecció\|columna\|composició\|configuració\|declaració\|diapositiva\|divisa\)\([^[:alnum:]]\)/Canvia el nom de la \1\2/g
s/\breanomena la \(capa\|carpeta\|col·lecció\|columna\|composició\|configuració\|declaració\|diapositiva\|divisa\)\([^[:alnum:]]\)/canvia el nom de la \1\2/g
s/\bReanomena les \(notes\)\([^[:alnum:]]\)/Canvia el nom de les \1\2/g
s/\breanomena les \(notes\)\([^[:alnum:]]\)/canvia el nom de les \1\2/g
s/\bReanomena \(objecte\)\([^[:alnum:]]\)/Canvia el nom de l'\1\2/g
s/\breanomena \(objecte\)\([^[:alnum:]]\)/canvia el nom de l'\1\2/g
s/\bReanomena \(filtre\|full\)\([^[:alnum:]]\)/Canvia el nom del \1\2/g
s/\breanomena \(filtre\|full\)\([^[:alnum:]]\)/canvia el nom del \1\2/g
s/\bReanomena \(grups\)\([^[:alnum:]]\)/Canvia el nom dels \1\2/g
s/\breanomena \(grups\)\([^[:alnum:]]\)/canvia el nom dels \1\2/g
s/\bReanomena \(sessió\)\([^[:alnum:]]\)/Canvia el nom de la \1\2/g
s/\breanomena \(sessió\)\([^[:alnum:]]\)/canvia el nom de la \1\2/g
s/\bReanomena \(categories\)\([^[:alnum:]]\)/Canvia el nom de les \1\2/g
s/\breanomena \(categories\)\([^[:alnum:]]\)/canvia el nom de les \1\2/g
s/\bReanomena un\(a\|\)\([^[:alnum:]]\)/Canvia el nom d'un\1\2/g
s/\breanomena un\(a\|\)\([^[:alnum:]]\)/canvia el nom d'un\1\2/g
    s/\bReanomena'ls tots\([^[:alnum:]]\)/Canvia el nom de tots\1/g
s/\bReanomena\(t\|\)\([^[:alnum:]]\)/Canvia\1 el nom\2/g
s/\breanomena\(t\|\)\([^[:alnum:]]\)/canvia\1 el nom\2/g
s/\bReanomenar el\([^[:alnum:]]\)/Canviar el nom del\1/g
s/\breanomenar el\([^[:alnum:]]\)/canviar el nom del\1/g
    s/\bde reanomenament\([^[:alnum:]]\)/del canvi de nom\1/g
s/\bReanomenament\([^[:alnum:]]\)/Canvi de nom\1/g
s/\breanomenament\([^[:alnum:]]\)/canvi de nom\1/g
s/\bReanomen\(ades\|ador\|ant\|a[rt]\|arà\|aran\|ats\|eu\)\([^[:alnum:]]\)/Canvi\1 de nom\2/g
s/\breanomen\(ades\|ador\|ant\|a[rt]\|arà\|aran\|ats\|eu\)\([^[:alnum:]]\)/canvi\1 de nom\2/g
s/\bReanomenés\([^[:alnum:]]\)/Canviara de nom\1/g
s/\breanomenés\([^[:alnum:]]\)/canviara de nom\1/g
s/\bReanomenéssi\([mu]\)\([^[:alnum:]]\)/Canviàre\1 de nom\2/g
s/\breanomenéssi\([mu]\)\([^[:alnum:]]\)/canviàre\1 de nom\2/g
s/\bReanomenessi\([ns]\)\([^[:alnum:]]\)/Canviare\1 de nom\2/g
s/\breanomenessi\([ns]\)\([^[:alnum:]]\)/canviare\1 de nom\2/g
    s/\bReanomeneu-lo\([^[:alnum:]]\)/Canvieu-lo de nom\1/g
    s/\breanomeneu-lo\([^[:alnum:]]\)/canvieu-lo de nom\1/g
s/\bReanomeneu\([^[:alnum:]]\)/Canvieu el nom\1/g
s/\breanomeneu\([^[:alnum:]]\)/canvieu el nom\1/g
s/\bReanomeni\([^[:alnum:]]\)/Canvie de nom\1/g
s/\breanomeni\([^[:alnum:]]\)/canvie de nom\1/g
#
s/\b\([Cc]\)anvia el nom el\(s\|\)\([^[:alnum:]]\)/\1anvia el nom del\2\3/g
s/\b\([Cc]\)anvia el nom est\([ae]\)\(s\|os\|\)\([^[:alnum:]]\)/\1anvia el nom d'est\2\3\4/g
s/\b\([Cc]\)anvia el nom la\([^[:alnum:]]\)/\1anvia el nom de la\2/g
s/\b\([Cc]\)anvia el nom les\([^[:alnum:]]\)/\1anvia el nom de les\2/g
    s/\b\([Cc]\)anvia el nom una preferida\([^[:alnum:]]\)/\1anvia el nom a una preferida\2/g
s/\b\([Cc]\)anvia el nom un\(a\|\)\([^[:alnum:]]\)/\1anvia el nom d'un\2\3/g
s/\b\([Cc]\)anvia el nom dels elements de la selecció\([^[:alnum:]]\)/\1anvia el nom dels elements en la selecció\2/g
s/\bcanviador de nom de fitxers\([^[:alnum:]]\)/canviador de noms de fitxer\1/g
s/\bcanviar el nom d'aplicació\([^[:alnum:]]\)/canviar el nom de l'aplicació\1/g
s/\bcanviat el nom correctament el fitxer\([^[:alnum:]]\)/canviat correctament el nom del fitxer\1/g
s/\bcanvieu de nom-lo\([^[:alnum:]]\)/canvieu-lo de nom\1/g
s/\bEl canviat el nom\([^[:alnum:]]\)/Canviar el nom\1/g
s/\bel canviat el nom\([^[:alnum:]]\)/canviar el nom\1/g
s/\bde nom de la sessió\([^[:alnum:]]\)/de nom la sessió\1/g
s/\bvoleu canviar de nom-la\([^[:alnum:]]\)/la voleu canviar de nom\1/g
s/\bvoleu canviar de nom-la\([^[:alnum:]]\)/la voleu canviar de nom\1/g

# reassignar -> tornar a assignar
s/\bTorna a assignar beneficiaris\([^[:alnum:]]\)/Torna a assignar els beneficiaris\1/g
s/\bTorna a assignar categories\([^[:alnum:]]\)/Torna a assignar les categories\1/g

# reavaluar -> tornar a avaluar
s/\bla reavaluació\([^[:alnum:]]\)/el tornar a avaluar\1/g

# recarregar
s/\bRecarrega\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Torna\1 a carregar\2/g
s/\brecarrega\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/torna\1 a carregar\2/g
s/\bRecarreg\(ui\|o]\)\([^[:alnum:]]\)/Torne a carregar\2/g
s/\brecarreg\(ui\|o]\)\([^[:alnum:]]\)/torne a carregar\2/g
s/\bRecarregués\([^[:alnum:]]\)/Tornara a carregar\1/g
s/\brecarregués\([^[:alnum:]]\)/tornara a carregar\1/g
s/\bRecarreguéssi\([mu]\)\([^[:alnum:]]\)/Tornàre\1 a carregar\2/g
s/\brecarreguéssi\([mu]\)\([^[:alnum:]]\)/tornàre\1 a carregar\2/g
s/\bRecarreguessi\([ns]\)\([^[:alnum:]]\)/Tornare\1 a carregar\2/g
s/\brecarreguessi\([ns]\)\([^[:alnum:]]\)/tornare\1 a carregar\2/g
s/\bRecarregueu\([^[:alnum:]]\)/Torneu a carregar\1/g
s/\brecarregueu\([^[:alnum:]]\)/torneu a carregar\1/g
s/\bRecarregui\([ns]\)\([^[:alnum:]]\)/Torne\1 a carregar\2/g
s/\brecarregui\([ns]\)\([^[:alnum:]]\)/torne\1 a carregar\2/g
 #
s/\bcontinuar tornant a carregar el fitxer\([^[:alnum:]]\)/continuar carregant el fitxer\1/g
#     s/\bS'està continuar carregant el document\([^[:alnum:]]\)/Es torna a carregar el document\1/g

# recollir -> arreplegar
s/\bRecolli\(da\|des\|dor\|nt\|r\|rà\|ran\|rem\|t\|ts\)\([^[:alnum:]]\)/Arreplega\1\2/g
s/\brecolli\(da\|des\|dor\|nt\|r\|rà\|ran\|rem\|t\|ts\)\([^[:alnum:]]\)/arreplega\1\2/g
s/\bRecollia\([^[:alnum:]]\)/Arreplegava\1/g
s/\brecollia\([^[:alnum:]]\)/arreplegava\1/g
s/\bRecollien\([^[:alnum:]]\)/Arreplegaven\1/g
s/\brecollien\([^[:alnum:]]\)/arreplegaven\1/g
s/\bRecolli\([mu]\)\([^[:alnum:]]\)/Arreplegue\1\2/g
s/\brecolli\([mu]\)\([^[:alnum:]]\)/arreplegue\1\2/g
s/\bRecolliren\([^[:alnum:]]\)/Arreplegaren\1/g
s/\brecolliren\([^[:alnum:]]\)/arreplegaren\1/g
s/\bRecollís\([^[:alnum:]]\)/Arreplegara\1/g
s/\brecollís\([^[:alnum:]]\)/arreplegara\1/g
s/\bRecollíssi\([mu]\)\([^[:alnum:]]\)/Arreplegàre\1\2/g
s/\brecollíssi\([mu]\)\([^[:alnum:]]\)/arreplegàre\1\2/g
s/\bRecollissi\([ns]\)\([^[:alnum:]]\)/Arreplegare\1\2/g
s/\brecollissi\([ns]\)\([^[:alnum:]]\)/arreplegare\1\2/g
s/\bRecull\([^[:alnum:]]\)/Arreplega\1/g
s/\brecull\([^[:alnum:]]\)/arreplega\1/g
s/\bRecullen\([^[:alnum:]]\)/Arrepleguen\1/g
s/\brecullen\([^[:alnum:]]\)/arrepleguen\1/g
s/\bRecull\([io]\)\([^[:alnum:]]\)/Arreplegue\2/g
s/\brecull\([io]\)\([^[:alnum:]]\)/arreplegue\2/g
s/\bReculli\([ns]\)\([^[:alnum:]]\)/Arreplegue\1\2/g
s/\breculli\([ns]\)\([^[:alnum:]]\)/arreplegue\1\2/g
s/\bReculls\([^[:alnum:]]\)/Arreplegues\1/g
s/\breculls\([^[:alnum:]]\)/arreplegues\1/g
 #
s/\bEs arreplegaren\([^[:alnum:]]\)/S'arreplegaren\1/g
s/\bes arreplegaren\([^[:alnum:]]\)/s'arreplegaren\1/g

# reconnectar -> tornar a connectar
# TODO: no
s/\bReconnecta\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Torna\1 a connectar\2/g
s/\breconnecta\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/torna\1 a connectar\2/g
s/\bReconnectés\([^[:alnum:]]\)/Tornara a connectar\1/g
s/\breconnectés\([^[:alnum:]]\)/tornara a connectar\1/g
s/\bReconnectéssi\([mu]\)\([^[:alnum:]]\)/Tornàre\1 a connectar\2/g
s/\breconnectéssi\([mu]\)\([^[:alnum:]]\)/tornàre\1 a connectar\2/g
s/\bReconnectessi\([ns]\)\([^[:alnum:]]\)/Tornare\1 a connectar\2/g
s/\breconnectessi\([ns]\)\([^[:alnum:]]\)/tornare\1 a connectar\2/g
s/\bReconnect\(i\|o]\)\([^[:alnum:]]\)/Torne a connectar\2/g
s/\breconnect\(i\|o]\)\([^[:alnum:]]\)/torne a connectar\2/g
s/\bReconnecti\([ns]\)\([^[:alnum:]]\)/Torne\1 a connectar\2/g
s/\breconnecti\([ns]\)\([^[:alnum:]]\)/torne\1 a connectar\2/g
s/\bReconnexió\([^[:alnum:]]\)/Tornar a connectar\1/g
s/\breconnexió\([^[:alnum:]]\)/tornar a connectar\1/g
 #
s/\b\([Aa]\)ctiva la tornar a connectar automàtica\([^[:alnum:]]\)/\1ctiva tornar a connectar automàticament\2/g
s/\bla tornar a connectar\([^[:alnum:]]\)/tornar a connectar\1/g
s/\b\([Tt]\)ornar a connectar-se\([^[:alnum:]]\)/\1ornar-se a connectar\2/g

# reduir
s/\bdreceraRedueix\([^[:alnum:]]\)/dreceraReduix\1/g

# reenfocar -> tornar a enfocar
# TODO: no
s/\bReenfoca\(da\|des\|nt\|[rt]\|rà\|ran\|reu\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Torna\1 a enfocar\2/g
s/\breenfoca\(da\|des\|nt\|[rt]\|rà\|ran\|reu\|ts\|va\|ven\|\)\([^[:alnum:]]\)/torna\1 a enfocar\2/g
s/\bReenfoqués\([^[:alnum:]]\)/Tornara a enfocar\1/g
s/\breenfoqués\([^[:alnum:]]\)/tornara a enfocar\1/g
s/\bReenfoquéssi\([mu]\)\([^[:alnum:]]\)/Tornàre\1 a enfocar\2/g
s/\breenfoquéssi\([mu]\)\([^[:alnum:]]\)/tornàre\1 a enfocar\2/g
s/\bReenfoquessi\([ns]\)\([^[:alnum:]]\)/Tornare\1 a enfocar\2/g
s/\breenfoquessi\([ns]\)\([^[:alnum:]]\)/tornare\1 a enfocar\2/g
s/\bReenfoqui\([ns]\|\)\([^[:alnum:]]\)/Torne\1 a enfocar\2/g
s/\breenfoqui\([ns]\|\)\([^[:alnum:]]\)/torne\1 a enfocar\2/g
s/\bReenfoco\([^[:alnum:]]\)/Torne a enfocar\1/g
s/\breenfoco\([^[:alnum:]]\)/torne a enfocar\1/g

# reobrir -> tornar a obrir
s/\bReobri\(da\|des\|nt\|[rt]\|rà\|ran\|reu\|ts\|va\|ven\)\([^[:alnum:]]\)/Torna\1 a obrir\2/g
s/\breobri\(da\|des\|nt\|[rt]\|rà\|ran\|reu\|ts\|va\|ven\)\([^[:alnum:]]\)/torna\1 a obrir\2/g
s/\bReobre\([ns]\|\)\([^[:alnum:]]\)/Torne\1 a obrir\2/g
s/\breobre\([ns]\|\)\([^[:alnum:]]\)/Torne\1 a obrir\2/g
s/\bReobr\([io]\)\([^[:alnum:]]\)/Torne a obrir\2/g
s/\breobr\([io]\)\([^[:alnum:]]\)/torne a obrir\2/g
s/\bReobri\([ns]\|\)\([^[:alnum:]]\)/Torne\1 a obrir\2/g
s/\breobri\([ns]\|\)\([^[:alnum:]]\)/torne\1 a obrir\2/g
s/\bReobrís\([^[:alnum:]]\)/Tornara a obrir\1/g
s/\breobrís\([^[:alnum:]]\)/tornara a obrir\1/g
s/\bReobríssi\([mu]\)\([^[:alnum:]]\)/Tornàre\1 a obrir\2/g
s/\breobríssi\([mu]\)\([^[:alnum:]]\)/tornàre\1 a obrir\2/g
s/\bReobrissi\([ns]\)\([^[:alnum:]]\)/Tornare\1 a obrir\2/g
s/\breobrissi\([ns]\)\([^[:alnum:]]\)/tornare\1 a obrir\2/g
 #
s/\b\([Tt]\)ornar a obrir-la\([^[:alnum:]]\)/\1ornar-la a obrir\2/g

# reiniciar
s/\bTorna\(r\|\) a engegar\([^[:alnum:]]\)/Reinicia\1\2/g
s/\btorna\(r\|\) a engegar\([^[:alnum:]]\)/reinicia\1\2/g

# reproduir
s/\bREPRODUEIX\([^[:alnum:]]\)/REPRODUÏX\1/g

# requerir
s/\bREQUEREIX\([^[:alnum:]]\)/REQUERIX\1/g

# retorn de carro -> tecla de retorn
s/\bRetorn de carro\([^[:alnum:]]\)/Tecla de retorn\1/g
s/\bretorn de carro\([^[:alnum:]]\)/tecla de retorn\1/g

# sacsejar -> sacsar
s/\b\([Ss]\)acseja\(da\|des\|nt\|[rt]\|rà\|ran\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1acsa\2\3/g
s/\b\([Ss]\)acsege\([mnsu]\)\([^[:alnum:]]\)/\1acse\2\3/g
s/\b\([Ss]\)acsegi\([ns]\|\)\([^[:alnum:]]\)/\1acse\2\3/g
s/\b\([Ss]\)acsejo\([^[:alnum:]]\)/\1acse\2/g
s/\b\([Ss]\)acseig\([^[:alnum:]]\)/\1acsament\2/g

# saltar
s/\"Salte\"/\"Salto\"/g
s/\bSalte del Guairá\([^[:alnum:]]\)/Salto del Guairá\1/g

# semblar -> paréixer
s/\bSembla\([^[:alnum:]]\)/Pareix\1/g
s/\bsembla\([^[:alnum:]]\)/pareix\1/g
s/\bSembla\(da\|des\|t\|ts\)\([^[:alnum:]]\)/Paregu\1\2/
s/\bsembla\(da\|des\|t\|ts\)\([^[:alnum:]]\)/paregu\1\2/
s/\bSemblar\([^[:alnum:]]\)/Paréixer\1/
s/\bsemblar\([^[:alnum:]]\)/paréixer\1/
s/\bSembla\(nt\|rà\|ran\)\([^[:alnum:]]\)/Pareixe\1\2/g
s/\bsembla\(nt\|rà\|ran\)\([^[:alnum:]]\)/pareixe\1\2/g
s/\bSemblav\(a\|en\)\([^[:alnum:]]\)/Pareixi\1\2/g
s/\bsemblav\(a\|en\)\([^[:alnum:]]\)/pareixi\1\2/g
s/\bSembl\(em\|eu\)\([^[:alnum:]]\)/Paregu\1\2/g
s/\bsembl\(em\|eu\)\([^[:alnum:]]\)/paregu\1\2/g
s/\bSemble\(n\|s\)\([^[:alnum:]]\)/Pareixe\1\2/g
s/\bsemble\(n\|s\)\([^[:alnum:]]\)/pareixe\1\2/g
s/\bSemblés\([^[:alnum:]]\)/Pareguera\1/g
s/\bsemblés\([^[:alnum:]]\)/pareguera\1/g
s/\bSembléssi\([mu]\)\([^[:alnum:]]\)/Pareguére\1\2/g
s/\bsembléssi\([mu]\)\([^[:alnum:]]\)/pareguére\1\2/g
s/\bSemblessi\([ns]\)\([^[:alnum:]]\)/Pareguere\1\2/g
s/\bsemblessi\([ns]\)\([^[:alnum:]]\)/pareguere\1\2/g
s/\bSembli\([^[:alnum:]]\)/Parega\1/g
s/\bsembli\([^[:alnum:]]\)/parega\1/g
s/\bSembli\([ns]\)\([^[:alnum:]]\)/Paregue\1\2/g
s/\bsembli\([ns]\)\([^[:alnum:]]\)/paregue\1\2/g
s/\bSemblo\([^[:alnum:]]\)/Parec\1/g
s/\bsemblo\([^[:alnum:]]\)/parec\1/g

# ser
s/\bÉsser\(s\|\)\([^[:alnum:]]\)/Ser\1\2/g
s/\bésser\(s\|\)\([^[:alnum:]]\)/ser\1\2/g
s/\bEssent\([^[:alnum:]]\)/Sent\1/g
s/\bessent\([^[:alnum:]]\)/sent\1/g
s/\bEstad\(a\|es\)\([^[:alnum:]]\)/Sigud\1\2/g
s/\bestad\(a\|es\)\([^[:alnum:]]\)/sigud\1\2/g
# s/\bEstat\(s\|\)\([^[:alnum:]]\)/Sigut\1\2/g # NO:
# s/\bestat\(s\|\)\([^[:alnum:]]\)/sigut\1\2/g
s/\b\([Ee]\)ts\([^[:alnum:]]\)/\1res\2/g
s/\b\([Ff]\)os\([^[:alnum:]]\)/\1ora\2/g
s/\b\([Ff]\)ossi\([ns]\)\([^[:alnum:]]\)/\1ore\2\3/g
s/\b\([Ff]\)óssi\([mu]\)\([^[:alnum:]]\)/\1óre\2\3/g
s/\b\([Ss]\)igui\([^[:alnum:]]\)/\1iga\2/g
s/\b\([Ss]\)igui\([ns]\)\([^[:alnum:]]\)/\1igue\2\3/g
 #
s/\b\([Hh]\)\([ae]\|age[ns]\|àge[mu]\|aguda\|agudes\|aguera\|aguére[mu]\|aguere[ns]\|agut\|aguts\|aja\|aja[mu]\|ajara\|a[ns]\|avent\|aver\|avia\|avie[ns]\|avíe[mu]\|e[mu]\) estat\([^[:alnum:]]\)/\1\2 sigut\3/g
s/\bSiguda \(màxima\|mínima\)\([^[:alnum:]]\)/Estada \1\2/g
s/\bsiguda \(màxima\|mínima\)\([^[:alnum:]]\)/estada \1\2/g

# severitat -> gravetat
s/\bSeveritat\([^[:alnum:]]\)/Gravetat\1/g
s/\bseveritat\([^[:alnum:]]\)/gravetat\1/g

# sobre -> damunt
s/\bA sobre\([^[:alnum:]]\)/Damunt\1/g
s/\ba sobre\([^[:alnum:]]\)/damunt\1/g
    s/\bde sobre dels maons\([^[:alnum:]]\)/damunt dels maons\1/g
    s/\bde sobre l'objecte\([^[:alnum:]]\)/damunt de l'objecte\1/g
    s/\bde sobre un pla\([^[:alnum:]]\)/damunt d'un pla\1/g
s/\bde sobre\([^[:alnum:]]\)/de dalt\1/g
s/\binformació damunt seu\([^[:alnum:]]\)/informació sobre seu\1/g
s/\binformació damunt de la seua\([^[:alnum:]]\)/informació sobre la seua\1/g
s/\b\([Mm]\)antín sobre\([^[:alnum:]]\)/\1antín damunt\2/g
s/\bratolí està sobre\([^[:alnum:]]\)/ratolí està damunt\1/g
s/\bper sobre\([^[:alnum:]]\)/per damunt\1/g
  # digikam-doc
  s/\barrossegant sobre el mapa\([^[:alnum:]]\)/arrossegant damunt del mapa\1/g
  s/\bbotó dret del ratolí sobre la \(barra\|miniatura\)\([^[:alnum:]]\)/botó dret del ratolí damunt de la \1\2/g
  s/\bbotó dret del ratolí sobre seu\([^[:alnum:]]\)/botó dret del ratolí damunt seu\1/g
  s/\bbotó \(dret\|esquerre\) del ratolí sobre una \(línia\|miniatura\)\([^[:alnum:]]\)/botó \1 del ratolí damunt d'una \2\3/g
  s/\bclic del ratolí sobre les 5\([^[:alnum:]]\)/clic del ratolí damunt de les 5\1/g
  s/\bclicant sobre la \(icona\|pestanya\)\([^[:alnum:]]\)/clicant damunt de la \1\2/g
  s/\bclicar la icona\([^[:alnum:]]\)/clicar damunt de la icona\1/g
  s/\bclicar sobre una de les icones\([^[:alnum:]]\)/clicar damunt d'una de les icones\1/g
  s/\bclique sobre el botó\([^[:alnum:]]\)/clique damunt del botó\1/g
  s/\bcliqueu sobre l'indicador\([^[:alnum:]]\)/cliqueu damunt de l'indicador\1/g
  s/\bcliqueu sobre la vista\([^[:alnum:]]\)/cliqueu damunt de la vista\1/g
  s/\bdades GPS) sobre un mapa\([^[:alnum:]]\)/dades GPS) damunt d'un mapa\1/g
  s/\bdesactivar el marc sobre les miniatures\([^[:alnum:]]\)/desactivar el marc damunt de les miniatures\1/g
  s/\bdigiKam sobre una fotografia\([^[:alnum:]]\)/digiKam damunt d'una fotografia\1/g
  s/\betiquetes sobre la icona\([^[:alnum:]]\)/etiquetes damunt de la icona\1/g
  s/\bhi ha sobre la miniatura\([^[:alnum:]]\)/hi ha damunt de la miniatura\1/g
  s/\bmenú contextual sobre una selecció\([^[:alnum:]]\)/menú contextual damunt d'una selecció\1/g
  s/\bpari sobre una miniatura\([^[:alnum:]]\)/pari damunt d'una miniatura\1/g
    s/\bsobre la imatge\([^[:alnum:]]\)/damunt de la imatge\1/g

s/\b\([Bb]\)otó esquerre en una cel·la\([^[:alnum:]]\)/\1otó esquerre damunt d'una cel·la\2/g
s/\bclica successivament en la mateixa\([^[:alnum:]]\)/clica successivament damunt de la mateixa\1/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) \(en\|sobre\) \(seu\)\([^[:alnum:]]\)/\1li\2 damunt \4\5/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) \(en\|sobre\) \(en Tux\|esta\|estas\|este\|estos\)\([^[:alnum:]]\)/\1li\2 damunt d'\4\5/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) \(en\|sobre\) \(cada\|fitxers\|qualsevol\)\([^[:alnum:]]\)/\1li\2 damunt de \4\5/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) \(en\|sobre\) als \(\*\*\|\)\(botons\|punts\)\([^[:alnum:]]\)/\1li\2 damunt dels \4\5\6/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) \(en\|sobre\) el \(\*\*\|\)\(barret\|botó\|bloc\|camp\|circuit\|component\|control\|color\|cub\|dia\|document\|fitxer\|giny\|gradient\|mapa\|marcador\|nom\|número\|primer\|punt\|quadrat\|quadre\|signe\|[Ss]ol\|tambor\|text\|valor\)\([^[:alnum:]]\)/\1li\2 damunt del \4\5\6/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) \(en\|sobre\) els \(\*\*\|\)\(botons\|camps\|diferents\|elements\|enllaços\|ginys\|instruments\|nombres\|números\|objectes\|països\|punts\|quadrats\|quadres\|seguents\|termes\)\([^[:alnum:]]\)/\1li\2 damunt dels \4\5\6/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) \(en\|sobre\) l'\(\*\*\|\)\(activitat\|ànec\|animal\|àrea\|element\|enllaç\|esquerra\|estrela\|etiqueta\|objecte\|objectiu\|últim\)\([^[:alnum:]]\)/\1li\2 damunt de l'\4\5\6/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) \(en\|sobre\) la \(\*\*\|\)\(barra\|«Creu\|capçalera\|columna\|dreta\|finestra\|fitxa\|fletxa\|icona\|línia\|llavor\|lletra\|quadrícula\|seva\|via\|vostra\|zona\)\([^[:alnum:]]\)/\1li\2 damunt de la \4\5\6/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) \(en\|sobre\) les \(\*\*\|\)\(barres\|fletxes\|tasques\|tecles\)\([^[:alnum:]]\)/\1li\2 damunt de les \4\5\6/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) \(en\|sobre\) un \(\*\*\|\)\(animal\|àtom\|botó\|contenidor\|detall\|enllaç\|fitxer\|metacontacte\|parell\|planeta\|punt\|URL\|valor\)\([^[:alnum:]]\)/\1li\2 damunt d'un \4\5\6/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) \(en\|sobre\) una \(\*\*\|\)\(àrea\|de les imatges\|de les lletres\|carpeta\|categoria\|cel·la\|cistella\|entrada\|miniatura\|parella\|pestanya\|prova\|targeta\|tasca\)\([^[:alnum:]]\)/\1li\2 damunt d'una \4\5\6/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) sobre \(dos\)\([^[:alnum:]]\)/\1li\2 damunt de \3\4/g
s/\b\([Cc]\)li\(ca\|cant\|car\|que\|que[mu]\) sobre \(un\)\([^[:alnum:]]\)/\1li\2 damunt d'\3\4/g
s/\b\([Dd]\)esprés sobre un\([^[:alnum:]]\)/\1esprés damunt d'un\2/g
s/\bdamunt sobre d'este\([^[:alnum:]]\)/damunt d'este\1/g
s/\bdamunt sobre del botó\([^[:alnum:]]\)/damunt del botó\1/g
s/\bdamunt sobre per a\([^[:alnum:]]\)/damunt per a\1/g

# sobresortir -> sobreeixir
s/\bquan sobreeixi\([mu]\)\([^[:alnum:]]\)/quan sobreïsque\1\2/g     # hi ha cap manera millor de capturar el subjuntiu?

# sorra -> arena
s/\bSorr\(a\|es\)\([^[:alnum:]]\)/Aren\1\2/g
s/\bsorr\(a\|es\)\([^[:alnum:]]\)/aren\1\2/g

# sortir -> eixir
s/\bSortints\([^[:alnum:]]\)/Ixents\1/g
s/\bsortints\([^[:alnum:]]\)/ixents\1/g
s/\bSorti\([amrtu]\|da\|des\|e[nt]\|nt\|rà\|ran\|ts\)\([^[:alnum:]]\)/Eixi\1\2/g
s/\bsorti\([amrtu]\|da\|des\|e[nt]\|nt\|rà\|ran\|ts\)\([^[:alnum:]]\)/eixi\1\2/g
s/\bSortí\([^[:alnum:]]\)/Isquí\1/g
s/\bsortí\([^[:alnum:]]\)/isquí\1/g
s/\bSortís\([^[:alnum:]]\)/Isquera\1/g
s/\bsortís\([^[:alnum:]]\)/isquera\1/g
s/\bSortíssi\([mu]\)\([^[:alnum:]]\)/Isquére\1\2/g
s/\bsortíssi\([mu]\)\([^[:alnum:]]\)/isquére\1\2/g
s/\bSortissi\([ns]\)\([^[:alnum:]]\)/Isquere\1\2/g
s/\bsortissi\([ns]\)\([^[:alnum:]]\)/isquere\1\2/g
# SUBJUNTIU: isquem, isqueu
s/\bSurt\(en\|\)\([^[:alnum:]]\)/Ix\1\2/g
s/\bsurt\(en\|\)\([^[:alnum:]]\)/ix\1\2/g
s/\bSurti\([^[:alnum:]]\)/Isca\1/g
s/\bsurti\([^[:alnum:]]\)/isca\1/g
s/\bSurti\([ns]\)\([^[:alnum:]]\)/Isque\1\2/g
s/\bsurti\([ns]\)\([^[:alnum:]]\)/isque\1\2/g
s/\bSurto\([^[:alnum:]]\)/Isc\1/g
s/\bsurto\([^[:alnum:]]\)/isc\1/g
s/\bSurts\([^[:alnum:]]\)/Ixes\1/g
s/\bsurts\([^[:alnum:]]\)/ixes\1/g
 #
s/\ben ixen\([^[:alnum:]]\)/n'ixen\1/g
s/\b\([Ii]\)x del\([^[:alnum:]]\)/\1x de\2/g
    s/\b\([Ii]\)x de \(mode\|quadro\)\([^[:alnum:]]\)/\1x del \2\3/g
s/\b\([Ll]\)a &eixida\([^[:alnum:]]\)/\1'\&eixida\2/g
s/\b\([Ll]\)a eixida\([^[:alnum:]]\)/\1'eixida\2/g
s/\b\([Qq]\)uan eixi\([mu]\)\([^[:alnum:]]\)/\1uan isque\2\3/g        # hi ha cap manera millor de capturar el subjuntiu?
                                                                      # SUBJUNTIU: isquem, isqueu
s/\b\([Ss]\)e eixirà\([^[:alnum:]]\)/\1'eixirà\2/g
s/\b\([Ss]\)e ix\([^[:alnum:]]\)/\1'ix\2/g                            # SUBJUNTIU: sobreisquem, sobreisqueu
# SUBJUNTIU: sobreïsquem, sobreïsqueu

# tarda -> vesprada
s/\bdel vespre\([^[:alnum:]]\)/de la vesprada\1/g
s/\bVesprada molt més\([^[:alnum:]]\)/Tarda molt més\1/g
s/\bvesprada molt més\([^[:alnum:]]\)/tarda molt més\1/g

# transposa -> invertix
s/\bTransposa\([^[:alnum:]]\)/Invertix\1/g
s/\btransposa\([^[:alnum:]]\)/invertix\1/g

# treure -> traure
s/\b\([Tt]\)raie\(m\|nt\|u\)\([^[:alnum:]]\)/\1rae\2\3/g
s/\b\([Tt]\)ragués\([^[:alnum:]]\)/\1raguera\2/g
s/\b\([Tt]\)raguéssi\([mu]\)\([^[:alnum:]]\)/\1raguére\2\3/g
s/\b\([Tt]\)raguessi\([ns]\)\([^[:alnum:]]\)/\1raguere\2\3/g
s/\b\([Tt]\)re\(c\|u\|uen\|ur[àe]\|us\)\([^[:alnum:]]\)/\1ra\2\3/g
s/\b\([Tt]\)regui\([^[:alnum:]]\)/\1raga\2/g
s/\b\([Tt]\)regui\([ns]\)\([^[:alnum:]]\)/\1rague\2\3/g
s/\b\([Tt]\)reia\([^[:alnum:]]\)/\1ragué\2/g
s/\b\([Tt]\)reien\([^[:alnum:]]\)/\1ragueren\2/g
    # atreure -> atraure
    s/\b\([Aa]\)traie\(m\|nt\|u\)\([^[:alnum:]]\)/\1trae\2\3/g
    s/\b\([Aa]\)tragués\([^[:alnum:]]\)/\1traguera\2/g
    s/\b\([Aa]\)traguéssi\([mu]\)\([^[:alnum:]]\)/\1traguére\2\3/g
    s/\b\([Aa]\)traguessi\([ns]\)\([^[:alnum:]]\)/\1traguere\2\3/g
    s/\b\([Aa]\)tre\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1tra\2\3/g
    s/\b\([Aa]\)tregui\([^[:alnum:]]\)/\1traga\2/g
    s/\b\([Aa]\)tregui\([ns]\)\([^[:alnum:]]\)/\1trague\2\3/g
    s/\b\([Aa]\)treia\([^[:alnum:]]\)/\1tragué\2/g
    s/\b\([Aa]\)treien\([^[:alnum:]]\)/\1tragueren\2/g
    # contreure -> contraure
    s/\b\([Cc]\)ontraie\(m\|u\)\([^[:alnum:]]\)/\1ontrae\2\3/g
    s/\b\([Cc]\)ontragués\([^[:alnum:]]\)/\1ontraguera\2/g
    s/\b\([Cc]\)ontraguéssi\([mu]\)\([^[:alnum:]]\)/\1ontraguére\2\3/g
    s/\b\([Cc]\)ontraguessi\([ns]\)\([^[:alnum:]]\)/\1ontraguere\2\3/g
    s/\b\([Cc]\)ontre\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1ontra\2\3/g
    s/\b\([Cc]\)ontregui\([^[:alnum:]]\)/\1ontraga\2/g
    s/\b\([Cc]\)ontregui\([ns]\)\([^[:alnum:]]\)/\1ontrague\2\3/g
    s/\b\([Cc]\)ontreia\([^[:alnum:]]\)/\1ontragué\2/g
    s/\b\([Cc]\)ontreien\([^[:alnum:]]\)/\1ontragueren\2/g
    # distreure -> distraure
    s/\b\([Dd]\)istraie\(m\|nt\|u\)\([^[:alnum:]]\)/\1istrae\2\3/g
    s/\b\([Dd]\)istragués\([^[:alnum:]]\)/\1istraguera\2/g
    s/\b\([Dd]\)istraguéssi\([mu]\)\([^[:alnum:]]\)/\1istraguére\2\3/g
    s/\b\([Dd]\)istraguessi\([ns]\)\([^[:alnum:]]\)/\1istraguere\2\3/g
    s/\b\([Dd]\)istre\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1istra\2\3/g
    s/\b\([Dd]\)istregui\([^[:alnum:]]\)/\1istraga\2/g
    s/\b\([Dd]\)istregui\([ns]\)\([^[:alnum:]]\)/\1istrague\2\3/g
    s/\b\([Dd]\)istreia\([^[:alnum:]]\)/\1istragué\2/g
    s/\b\([Dd]\)istreien\([^[:alnum:]]\)/\1istragueren\2/g
    # extreure -> extraure
    s/\b\([Ee]\)xtraie\(m\|nt\|u\)\([^[:alnum:]]\)/\1xtrae\2\3/g
    s/\b\([Ee]\)xtragués\([^[:alnum:]]\)/\1xtraguera\2/g
    s/\b\([Ee]\)xtraguéssi\([mu]\)\([^[:alnum:]]\)/\1xtraguére\2\3/g
    s/\b\([Ee]\)xtraguessi\([ns]\)\([^[:alnum:]]\)/\1xtraguere\2\3/g
    s/\b\([Ee]\)xtre\(c\|u\|uen\|urà\|ure\|us\)\([^[:alnum:]]\)/\1xtra\2\3/g
    s/\b\([Ee]\)xtregui\([^[:alnum:]]\)/\1xtraga\2/g
    s/\b\([Ee]\)xtregui\([ns]\)\([^[:alnum:]]\)/\1xtrague\2\3/g
    s/\b\([Ee]\)xtreia\([^[:alnum:]]\)/\1xtragué\2/g
    s/\b\([Ee]\)xtreien\([^[:alnum:]]\)/\1xtragueren\2/g
    # retreure -> retraure
    s/\b\([Rr]\)etraie\(m\|nt\|u\)\([^[:alnum:]]\)/\1etrae\2\3/g
    s/\b\([Rr]\)etragués\([^[:alnum:]]\)/\1etraguera\2/g
    s/\b\([Rr]\)etraguéssi\([mu]\)\([^[:alnum:]]\)/\1etraguére\2\3/g
    s/\b\([Rr]\)etraguessi\([ns]\)\([^[:alnum:]]\)/\1etraguere\2\3/g
    s/\b\([Rr]\)etre\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1etra\2\3/g
    s/\b\([Rr]\)etregui\([^[:alnum:]]\)/\1etraga\2/g
    s/\b\([Rr]\)etregui\([ns]\)\([^[:alnum:]]\)/\1etrague\2\3/g
    s/\b\([Rr]\)etreia\([^[:alnum:]]\)/\1etragué\2/g
    s/\b\([Rr]\)etreien\([^[:alnum:]]\)/\1etragueren\2/g
    # sostreure -> sostraure
    s/\b\([Ss]\)ostraie\(m\|nt\|u\)\([^[:alnum:]]\)/\1ostrae\2\3/g
    s/\b\([Ss]\)ostragués\([^[:alnum:]]\)/\1ostraguera\2/g
    s/\b\([Ss]\)ostraguéssi\([mu]\)\([^[:alnum:]]\)/\1ostraguére\2\3/g
    s/\b\([Ss]\)ostraguessi\([ns]\)\([^[:alnum:]]\)/\1ostraguere\2\3/g
    s/\b\([Ss]\)ostre\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1ostra\2\3/g
    s/\b\([Ss]\)ostregui\([^[:alnum:]]\)/\1ostraga\2/g
    s/\b\([Ss]\)ostregui\([ns]\)\([^[:alnum:]]\)/\1ostrague\2\3/g
    s/\b\([Ss]\)ostreia\([^[:alnum:]]\)/\1ostragué\2/g
    s/\b\([Ss]\)ostreien\([^[:alnum:]]\)/\1ostragueren\2/g
 #
s/\bescollit d'extraure\([^[:alnum:]]\)/escollit extraure\1/g

# triar
s/\bs'trieu\([^[:alnum:]]\)/trieu\1/g

# trigar -> tardar
# s/\b\([Tt]\)riga\([^[:alnum:]]\)/\1arda\2/g # No es recomana
s/\b\([Qq]\)uant triga\([^[:alnum:]]\)/\1uant tarda\2/g
s/\b\([Tt]\)emps \(que \|\)triga\([^[:alnum:]]\)/\1emps \2tarda\3/g
s/\b\([Tt]\)riga \(alguns minuts\|el doble\|massa\|més\|moltíssim\|poc temps\|una estona\|Urà\)\([^[:alnum:]]\)/\1arda \2\3/g
s/\b\([Tt]\)riguera\([^[:alnum:]]\)/\1arda\2/g

# últim
s/\b\([Aa]\)l últim\(a\|\)\([^[:alnum:]]\)/\1 l'últim\2\3/g
s/\b\([Dd]\)el últim\(a\|\)\([^[:alnum:]]\)/\1e l'últim\2\3/g
s/\bEl últim\([^[:alnum:]]\)/L'últim\1/g
s/\bel últim\([^[:alnum:]]\)/l'últim\1/g
s/\b\([Ll]\)a última\([^[:alnum:]]\)/\1'última\2/g

# última
s/\b\([Aa]\) última hora\([^[:alnum:]]\)/\1 hora horada\2/g

# unir
s/\bBifurcaUneix\([^[:alnum:]]\)/BifurcaUnix\1/g

# venir -> vindre
s/\bEs venen\([^[:alnum:]]\)/Se venen\1/g
s/\bes venen\([^[:alnum:]]\)/se venen\1/g

# vermell -> roig
s/Creu_vermella_petita\([^[:alnum:]]\)/Creu_roja_xicoteta\1/g

# visualitzador -> visor
s/\bEina de visualització dels registres del sistema\([^[:alnum:]]\)/Eina de visor dels registres del sistema\1/g
s/\bObri amb el \(pre\|\)visualitzador predeterminat\([^[:alnum:]]\)/Obri amb el visor predeterminat\2/g

# xerrar -> xarrar
s/\b\([Xx]\)\([ae]\)rr\(a\|a[rt]\|ava\|àve[mu]\|ave[ns]\|e[mnsu]\)\([^[:alnum:]]\)/\1arr\3\4/g
s/\b\([Xx]\)\([ae]\)rrés\([^[:alnum:]]\)/\1arrara\3/g
s/\b\([Xx]\)\([ae]\)rréssi\([mu]\)\([^[:alnum:]]\)/\1arràre\3\4/g
s/\b\([Xx]\)\([ae]\)rressi\([ns]\)\([^[:alnum:]]\)/\1arrare\3\4/g
s/\b\([Xx]\)\([ae]\)rr\([io]\)\([^[:alnum:]]\)/\1arre\4/g
s/\b\([Xx]\)\([ae]\)rri\([ns]\)\([^[:alnum:]]\)/\1arre\3\4/g

# # Per mirar
# en / ca / va
# Failed / Ha fallat en / No s'ha pogut **
# uploader / pujador / Gestor de pujades
# Bookmarks / punts / marcadors
# per sobre i sota / per damunt i per davall

s/\b\([Pp]\)er el\([^[:alnum:]]\)/\1el\2/g

# -> es desprotegeix
s/\\\([nt]\)- /\\\1/g

# Apostrofacions incorrectes
s/\([^_&[:alnum:]]\)\([Dd]\)e \([aeiouAEIOU]\)/\1\2'\3/g
s/\([^_&[:alnum:]]\)Es \([aeiouAEIOU]\)/\1S'\2/g
s/\([^_&[:alnum:]]\)es \([aeiouAEIOU]\)/\1s'\2/g
s/\([^_&[:alnum:]]\)S'\([g]\)/\1Es \2/g
s/\([^_&[:alnum:]]\)s'\([g]\)/\1es \2/g

s/\([^-\|·_&[:alnum:]]\)\([Ll]\)a \([aeoAEO]\)/\1\2'\3/g
    # L'apostrofament de "la [iu]" depèn de si la primera síŀlaba
    # és àtona i per tant no es pot generalitzar.
    # El "-" és per evitar pífies de l'estil "convertiu-la en -> convertiu-l'en"
    # El "·" és per evitar pífies de l'estil "Instal·la el -> Instal·l'el"
s/\([^_&[:alnum:]]\)El \([aeiouAEIOU]\)/\1L'\2/g
s/\([^_&[:alnum:]]\)el \([aeiouAEIOU]\)/\1l'\2/g
# anti-anti-pífia ad-hoc
s/\([^_&[:alnum:]]\)\([Dd]\)'\(UNIX\|Unix\|unix\)/\1\2e \3/g
s/\([^_&[:alnum:]]\)L'\(UNIX\|Unix\|unix\)/\1El \2/g
s/\([^_&[:alnum:]]\)l'\(UNIX\|Unix\|unix\)/\1el \2/g
s/\ba el\([^[:alnum:]]\)/al\1/g
s/\bCliqueu-hi <em>guardar\([^[:alnum:]]\)/Cliqueu-hi per a <em>guardar\1/g
s/\bd'a l'equip\([^[:alnum:]]\)/de a l'equip\1/g
s/\bix de temple\([^[:alnum:]]\)/ix del temple\1/g
# femenins
    # 7.4.3 La formació de sigles i de mots creuats <https://aplicacions.llengua.gencat.cat/llc/AppJava/index.html?input>
s/\([^_&[:alnum:]]\)\([Ll]\)'IGU\([^[:alnum:]]\)/\1\2a IGU\3/g

# Per a reemplaçar Last-Translator si s'escau.
# Ha de ser al final!!  No volem que se'ns «valencianitze» el nom o l'adreça.
#s/^\(\"Last-Translator\): .*\\n/\1: Jo Mateix <jo@jo.cat>\\n/g

:END

}
