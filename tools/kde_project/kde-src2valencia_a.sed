#!/bin/sed -f

# Recursos:
# ---------
# <https://geiec.iec.cat/>
# <https://giec.iec.cat/conjugacio>
# <https://www.avl.gva.es/lexicval/>

# Permet la traducció de linies que no pertanyin a un msgstr
/^msgstr/,/^#/ {

# No tradueixis les linies comentades ni els msgid
/^#/ b END
/^msgid/ b END

# Es protegeix \n i \t: les paraules enganxades
s/\\\([nt]\)/\\\1- /g

# S'esmena la cometa simple
s/\([’´]\)/'/g

s/\b\([Pp]\)er a \(ajud\|ell\|ella\|sempre\)/\1er \2/g

# #
# # # # # # # # # # # # # #
#
# plurals
s/à\/an\([^[:alnum:]]\)/an\1/g
s/a\/\(es\|s\)\([^[:alnum:]]\)/es\2/g
s/a\/en\([^[:alnum:]]\)/en\1/g
s/a\/ls\([^[:alnum:]]\)/als\1/g
s/à\/an\([^[:alnum:]]\)/an\1/g
s/ca\/ques\([^[:alnum:]]\)/ques\1/g
s/c\/s\b\([^[:alnum:]]\)/cs\1/g
s/\(e\|l\|n\|r\|t\)\/s\b\([^[:alnum:]]\)/\1s\2/g
s/\([Ee]\)l\/s\b\([^[:alnum:]]\)/\1ls\2/g
s/é\/enen\([^[:alnum:]]\)/enen\1/g
s/és\/essos\([^[:alnum:]]\)/essos\1/g
s/\bl'\/es\([^[:alnum:]]\)/les\1/g
s/\([óo]\)\/ns\([^[:alnum:]]\)/ons\2/g
s/ons\/s\([^[:alnum:]]\)/ons\1/g
s/ó\/\(o\|\)ns/ons/g
s/o\/s\b\([^[:alnum:]]\)/os\1/g
s/ont\/s\([^[:alnum:]]\)/onts\1/g
s/p\/s\b\([^[:alnum:]]\)/ps\1/g
s/\bURL\/s\([^[:alnum:]]\)/URL\1/g
s/u\/s\b\([^[:alnum:]]\)/us\1/g
#
s/\bal(s)\([^[:alnum:]]\)/als\1/g
s/\bany(s)\([^[:alnum:]]\)/anys\1/g
s/\bautor(s)\([^[:alnum:]]\)/autors\1/g
  s/\bdel seu autors\([^[:alnum:]]\)/dels seus autors\1/g
s/\bbus(os)\([^[:alnum:]]\)/busos\1/g
s/\bdel(s)\([^[:alnum:]]\)/dels\1/g
s/\bdia(es)\([^[:alnum:]]\)/dies\1/g
s/\belement(s)\([^[:alnum:]]\)/elements\1/g
  s/\belements seleccionat\([^[:alnum:]]\)/elements seleccionats\1/g
s/\b\([Ff]\)itxer(s)\([^[:alnum:]]\)/\1itxers\2/g
  s/\bdel fitxers\([^[:alnum:]]\)/dels fitxers\1/g
  s/\bel fitxers\([^[:alnum:]]\)/els fitxers\1/g
  s/\bnivell dels fitxers actual\([^[:alnum:]]\)/nivell actual dels fitxers\1/g
s/\bGPUs\([^[:alnum:]]\)/GPU\1/g
s/\bmes(os)\([^[:alnum:]]\)/mesos\1/g
s/\b\([Nn]\)om(s)\([^[:alnum:]]\)/\1oms\2/g
s/\bparticipant(s)\([^[:alnum:]]\)/participants\1/g
s/\bquadre(s)\([^[:alnum:]]\)/quadres\1/g
s/\b\([Ss]\)'ha\/n\([^[:alnum:]]\)/\1'han\2/g
s/\bsegon(s)\([^[:alnum:]]\)/segons\1/g
s/\bsetmana(es)\([^[:alnum:]]\)/setmanes\1/g
s/\b\([Ss]\)udokus\([^[:alnum:]]\)/\1udoku\2/g
s/\bURL(s)\([^[:alnum:]]\)/URL\1/g
s/\bvCards\([^[:alnum:]]\)/vCard\1/g
 #
s/\bl'\/els\([^[:alnum:]]\)/els\1/g
# #
# # # # # # # # # # # # # #
#
# punts suspensius
s/\.\.\./…/g
s/,…/…/g
s/1…, 9/1, «…», 9/g
# #
# # # # # # # # # # # # # #
#
# Miscelània
s/\bTanca &altres pestanyes\([^[:alnum:]]\)/Tanca les \&altres pestanyes\1/g
# #
# # # # # # # # # # # # # #
#
# dreceres de teclat
s/\bMaj\([^[:alnum:]]\)/Majús\1/g
s/&Majús;/\&Maj;/g
  s/\bamb la tecla Ctrl\([^[:alnum:]]\)/amb la tecla «Ctrl»\1/g
  s/\btecla ESC\([^[:alnum:]]\)/tecla Esc\1/g
  s/\bCTRL\([^[:alnum:]]\)/Ctrl\1/g
  s/(Suprimeix)/(«Suprimeix»)/g
  s/\"\(Cmd\|Ctrl\) + \(Alt\|Ctrl\|Meta\)\"/\"\1+\2\"/g
  s/\(\"\|[(t]\| \)\(Alt\|Ctrl\) + \(amunt\|avall\|[0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ]\|Alt\|Esc\|Meta\|número\|roda del ratolí\)\(\"\|[.,:)$]\| \)/\1«\2+\3»\4/g
  s/\(\"\|[(t]\| \)\(Alt\|Ctrl\) + Majúscules + \([0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ]\|número\)\([.,:)$]\| \)/\1«\2+Majúscules+\3»\4/g
  s/\(\"\|[(t]\| \)Bloq \(Despl\|Majús\|Núm\)\([.,:)$]\| \)/\1«Bloq \2»\3/g
  s/\b\(Alt\|Ctrl\)+[Bb]otó \(dret\|esquerre\)/«\1+botó \2»/g
  s/\b\(Alt\|Ctrl\) + [Bb]otó \(dret\|esquerre\)/«\1+botó \2»/g
  s/\"Alt Gr\s/\"«Alt Gr» /g
  s/&Av Pàg\/Re Pàg/«\&Av Pàg»\/«Re Pàg»/g
  s/\/\bCtrl /\/«Ctrl» /g
    s/\bMeta + \(Alt\|Ctrl\|Majús\) \([-+]\) \([Aa]\)rrossega\(r\|\)/Meta+\1+arrossega/g
  s/\b\(Alt\|Ctrl\|Majús\|Meta\) \([-+]\) \([Aa]\)rrossega\(r\|\)/\1+arrossega/g
  s/\bMajús \([-+]\) \([Cc]\)erca/Majús+cerca/g
  s/\b\(Alt\|Ctrl\|Majús\) \([-+]\) \([Ff]er \|\)\([Cc]\)lic/\1+fes clic/g
  s/\"Ctrl\([-+]\)clic /\"«Ctrl\1fer clic» /g
  s/\bCtrl+\([+-]\)/«Ctrl+\1»/g
    s/«Ctrl++»\/«Ctrl+-»/«Ctrl++» o «Ctrl+-»/g
    s/«Ctrl++»,+/«Ctrl++,+»/g
    s/\"«Ctrl+\([+-]\)»\"/\"Ctrl+\1\"/g
  s/Control\/Alt/«Control»\/«Alt»/g
  s/\bMajús+Re Pàg \/ Majús+Av Pàg/«Majús+Re Pàg»\/«Majús+Av Pàg»/g
  s/\bMajúscules: mou/«Majúscules»: mou/g
  s/\bRe Pàg\/Av Pàg/«Re Pàg»\/«Av Pàg»/g
  s/\bRe\/Av Pàg/«Re Pàg»\/«Av Pàg»/g
  s/\sRetorn\"/ «Retorn»\"/g
  s/\(\"\|[(t]\| \)Majúscules + Fletxes\([.,:)$]\| \)/\1«Majús+Fletxes»\2/g
    s/\([(t]\| \)Majúscules+Retorn\([.,)$]\| \)/\1«Majús+Retorn»\2/g
    s/\((\| [io] \)Majúscules/\1«Majúscules»/g
    s/\bpremuda Majúscules o/premuda «Majúscules» o/g
  s/\(\"\|[(t]\| \)Majús + arrossegar\([.,:)$]\| \)/\1«Majús+arrossegar»\2/g
  s/\bMajús\/Ctrl/«Majús»\/«Ctrl»/g
  s/\(\"\|[(t]\| \)Meta + Alt\(\"\|[.,:)$]\| \)/\1«Meta+Alt»\2/g
  s/\b\([Pp]\)remeu \(Escape\)\([^[:alnum:]]\)/\1remeu «\2»\3/g
  s/\btecla \(AltGr\|Bloq Despl\|Bloq Majús\|Bloq Núm\|Espai\|Majúscules\)\([^[:alnum:]]\)/tecla «\1»\2/g
# 1
s/\(\"\|[(t/]\|>\| \)\(Alt\|Av Pàg\|Control\|Ctrl\|Esc\|Espai\|F[123456789]\|F1[012]\|Fletxa amunt\|Fletxa avall\|Majús\|Meta\|Retorn\|Re Pàg\|Retrocés\|Supr\|Tab\|Tabulació\)\([.,:/)$]\|\"\| \)/\1«\2»\3/g
  s/Súper\/Windows\([^[:alnum:]]\)/«Súper»\/«Windows»\1/g
  s/«F5» BIG-IP\([^[:alnum:]]\)/F5 BIG-IP\1/g
  s/\b\([Bb]\)otó \(%[123456789]\|Enrere\|Genera\)\([^[:alnum:]]\)/\1otó «\2»\3/g
  s/«Ctrl»\/\([+-]\)/«Ctrl\/\1»/g
  s/«Ctrl» o Majúscules\([^[:alnum:]]\)/«Ctrl» o «Majúscules»\1/g
  s/\bFletxes:\([^[:alnum:]]\)/«Fletxes»:\1/g
  s/«Alt» o Meta/«Alt» o «Meta»/g
  s/«Alt»\. \(màx\|mín\)\./Alt. \1./g
  s/\b\([Pp]\)remeu \([0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ]\|Desbloqueja\|Inicia\)\([^[:alnum:]]\)/\1remeu «\2»\3/g
    s/\b\([Pp]\)remeu majúscules\([^[:alnum:]]\)/\1remeu «Majús»\2/g
  s/\bSupressió o «Retrocés»/«Supressió» o «Retrocés»/g
  s/\b\([Tt]\)ecla \([0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ]\|F%[123]\|F[123456789]\|F1[012]\|Majúscules\)\([.,:)$]\| \)\([^[:alnum:]]\)/\1ecla «\2»\3\4/g
  s/\b\([Tt]\)ecla \(d'\|\)espai\([^[:alnum:]]\)/\1ecla «Espai»\3/g
  s/\b\([Tt]\)ecla de control\([^[:alnum:]]\)/\1ecla «Ctrl»\2/g
  s/\b\([Tt]\)ecla de «Retorn»\([^[:alnum:]]\)/\1ecla «Retorn»\2/g
  s/\\t- Majús\([^[:alnum:]]\)/\t«Majús»\1/g
# 2
  s/+, -,/«+», «-»,/g
  s/«Ctrl» \([+-]\)/«Ctrl \1»/g
  s/+\([a-z]\)\b/+\U\1/g
  s/+Clic\([^[:alnum:]]\)/+clic\1/g
  s/+Arrossegar\([^[:alnum:]]\)/+arrossega\1/g
s/\(\"\|[(t]\| \)\(Alt\|Ctrl\|Esc\|Majús\|Meta\|Tab\)\([-+]\)\(Alt\|Amunt\|arrossega\|Av Pàg\|Avall\|clic\|clicar\|Ctrl\|deixa anar\|Dreta\|Esc\|Espai\|Esquerra\|fer clic\|Majús\|Meta\|Re Pàg\|Retorn\|Supr\|Tab\|Tecla\)\(\"\|[.,:/)$]\| \)/\1«\2+\4»\5/g
s/\(\"\|[(t]\| \)\(Alt\|Ctrl\|Esc\|Majús\|Meta\|Tab\)\([-+]\)\([0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ]\|F%[123]\|F[123456789]\|F1[012]\)\([.,:)$]\|\"\| \)/\1«\2+\4»\5/g
  s/\"«\(Alt\|Ctrl\|Esc\|Majús\|Meta\|Tab\)\([-+]\)\([0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ]\|Alt\|F%[123]\|F[123456789]\|\|F1[012]\|Meta\|Retorn\)»\"/\"\1+\3\"/g
  s/«+», «-», \//+, -, \//g
  s/(Ctrl+\(\.\|+\|\/\|[,-=]\))/(«Ctrl+\1»)/g
  s/\([(t]\| \)Alt+Tecla\([.,)$]\| \)/\1«Alt+Tecla»\2/g
  s/\([(t]\| \)Ctrl+c\([.,)$]\| \)/\1«Ctrl+C»\2/g
  s/\(\"\|[(t]\| \)Ctrl-\([0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ]\)\b/\1«Ctrl+\2»/g
  s/\([(t]\| \)Ctrl+v\([.,)$]\| \)/\1«Ctrl+V»\2/g
  s/\([(t]\| \)Majús-F\([123456789]\)/\1«Majús+F\2»/g
  s/\([(t]\| \)Majús-F1\([012]\)/\1«Majús+F1\2»/g
  s/&Majús+clic_del_mig\([^[:alnum:]]\)/«\&Majús+clic_del_mig»\1/g
  s/«Fletxa amunt»\/avall/«Fletxa amunt»\/«avall»/g
  s/«Fletxa amunt» o avall\([^[:alnum:]]\)/«Fletxa amunt» o «avall»\1/g
  s/\"«\(Alt\|Ctrl\)+clic»\"/\"\1+clic\"/g
# 3
s/\(\"\|[(t]\| \)\(Alt\|Ctrl\|Majús\|Meta\)\([-+]\)\(Alt\|Ctrl\|Majús\)\([-+]\)\([0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ]\|arrossega\|deixa anar\|Esc\|F%[123]\|F[123456789]\|F1[012]\|Fletxa amunt\|Fletxa avall\|Fletxa dreta\|Fletxa esquerra\|Retorn\|Tab\)\(\"\|[.,:)$]\| \)/\1«\2+\4+\6»\7/g
  s/\bRetrocés» o Suprimir/Retrocés» o «Suprimir»/g
  s/\bSuprimir o «Retrocés»/«Suprimir» o «Retrocés»/g
# errades
  s/\(\"\|[(t]\| \)\([0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ]\) o «/\1«\2» o «/g
  s/<shortcut>Meta + «Alt»\([^[:alnum:]]\)/<shortcut>Meta + Alt\1/g
  s/«Alt» (altitud)/Alt (altitud)/g
    s/«Alt»\/\(Az\|Dec\)/Alt\/\1/g
    s/\(Az\|Dec\)\/«Alt»/\1\/Alt/g
  s/«Alt»  D:M:S\([^[:alnum:]]\)/Alt D:M:S\1/g
  s/«Alt» \(>\|10\|4[24][24]\|Est\|Gr\|Loira\|màx\|mín\|Oest\|Paraguai\|risc\|secret\|Siang\|sòrab\|Subansiri\)\([^[:alnum:]]\)/Alt \1\2/g
  s/«Alt»\(. [(d]\|:\"\)/Alt\1/g
  s/«Alt»: fitxers\([^[:alnum:]]\)/Alt: fitxers\1/g
  s/«Control» \(\&\|amb\|automàtic\|avançat\|CAPI\|complet\|d\|de\|Debian\|del\|híbrid\|i estat\|Linux\|lliscant\|manual\|multimèdia\|principal\|remot\|terrestre\|total\|tres\)\([^[:alnum:]]\)/Control \1\2/g
  s/\"«Ctrl+Alt+B»\"/\"Ctrl+Alt+B\"/g
  s/\"«Ctrl+Majús+\([0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ]\)»\"/\"Ctrl+Majús+\1\"/g
  s/\"«Espai»\/esborra\"/\"Espai\/esborra\"/g
  s/«Espai» \(« »\|a\|addicional\|al\|capil·lar\|d\|de\|disponible\|elàstic\|e[mn]a\|en\|entre\|escàs\|exterior\|gran\|horitzontal\|individual\|irrompible\|lliu\|lliure\|màxim\|mitjà\|necessari\|normal\|ocupat\|per\|petit\|prim\|quatre\|requerit\|reservat\|total\|tres\|usat\|vertical\)\([^[:alnum:]]\)/Espai \1\2/g
    s/\bPremeu \([Ee]\)spai\([^[:alnum:]]\)/Premeu «Espai»\2/g
  s/«Espai» Sis-per-ema\([^[:alnum:]]\)/Espai sis-per-ema\1/g
  s/«F1» en clau/F1 en clau/g
  s/\"«Meta» esquerra\"/\"Meta esquerra\"/g
  s/«Majús».\/Min\([^[:alnum:]]\)/Majús.\/Min\1/g
  s/\bNota 10\([^[:alnum:]]\)/Note 10\1/g
  s/«Retorn» \(d\|de\)\([^[:alnum:]]\)/Retorn \1\2/g
  s/«Retrocés» (/Retrocés (/g
  s/«Retrocés» a <application>/Retrocediu a <application>/g
  s/\bAI de «Meta»/AI de Meta/g
  s/\bSagnat\/«Tabulació»/Sagnat\/Tabulació/g
  s/«Tab» S6\([^[:alnum:]]\)/Tab S6\1/g
  s/«Tabulació» -\([^[:alnum:]]\)/Tabulació -\1/g
  s/\bText «Alt»\([^[:alnum:]]\)/Text Alt\1/g
  # khotkeys
  s/\bEntrada o Retorn\\\\n\([^[:alnum:]]\)/«Entrada» o «Retorn»\\\\n\1/g
  s/\bA\\\\n\([^[:alnum:]]\)/«A»\\\\n\1/g
  s/\"«\(Ctrl\|Alt\|Meta\)» + «\(Ctrl\|[0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ]\)»\"/\"\1 + \2\"/g
  s/\"«Alt+Majús+D»\"/\"Alt+Majús+D\"/g
  s/\"«\(Alt\|AltGr\|Av Pàg\|Bloq Despl\|Bloq Majús\|Bloq Núm\|Control\|Ctrl\|Entrada\|Esc\|Espai\|F[123456789]\|F1[012]\|Fletxa amunt\|Fletxa avall\|Majús\|Majúscules\|Meta\|Re Pàg\|Retorn\|Retrocés\|Supr\|Tab\|Tabulació\)»\"/\"\1\"/g
  s/\"«Majús+Ctrl+C»\"/\"Majús+Ctrl+C\"/g
  s/\"«Majús+Tab»\"/\"Majús+Tab\"/g
  s/\"Bloq «Majús»\"/\"Bloq Majús\"/g
  s/\"Tecles de cursor + «Alt»\"/\"Tecles de cursor + Alt\"/g
  s/\"Wikimedia «Meta»\"/\"Wikimedia Meta\"/g
  s/\bMajús+«A»\\\\n\([^[:alnum:]]\)/«Majús+A»\\\\n\1/g
  s/\bMajús+.\\\\n\([^[:alnum:]]\)/«Majús+.»\\\\n\1/g
  s/  Espai\"/  «Espai»\"/g
  s/\"«Ctrl+\(Espai\|Supr\)»\"/\"Ctrl+\1\"/g
  s/\btecla \(AltGr\|Bloq Despl\|Bloq Majús\|Bloq Núm\|Espai\|Majúscules\)\([^[:alnum:]]\)/tecla «\1»\2/g
s/\\\"1+I\\\"/\\\"1+i\\\"/g
s/\\\"1,2+I\\\"/\\\"1,2+i\\\"/g
  s/«1,2+I»/«1,2+i»/g
s/\\\"12+I\\\"/\\\"12+i\\\"/g
s/(1+X)/(1+x)/g
  s/ 1+X / 1+x /g
s/(a+B+C)/(a+b+c)/g
s/(+H)/(+h)/g
s/(+O)/(+o)/g
s/(+P)/(+p)/g
s/(+V)/(+v)/g
s/0 és en +X/0 és en +x/g
s/\blínia 1+I\([^[:alnum:]]\)/línia 1+i\1/g
s/\bp\. ex\. +O\([^[:alnum:]]\)/p. ex., +o\1/g
s/\bx+Y+Z=/x+y+z=/g
# #
# # # # # # # # # # # # # #
#
# clicar
s/\bclic al botó \(central\|del mig\|dret\|esquerre\)\([^[:alnum:]]\)/clic amb el botó \1\2/g
  s/\bfeu clic al \([<«]\)/feu clic a \1/g
s/\b\(Clic\|Cliqui\) doble\([^[:alnum:]]\)/Faci doble clic\2/g
s/\bcliqui doble\([^[:alnum:]]\)/faci doble clic\1/g
s/\bclic doble\([^[:alnum:]]\)/doble clic\1/g
s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\)\(-hi\|-l[ao]\|\) amb l'esquerre\([^[:alnum:]]\)/\1\2 amb el botó esquerre\3/g
s/\b\([Cc]lic\|[Cc]\)lique\([^[:alnum:]]\)/\1liqui\2/
s/\bdret clicant\([^[:alnum:]]\)/fent clic dret\1/g
s/\bDretcliqueu\([^[:alnum:]]\)/Cliqueu amb el botó dret\1/g
s/\bDretacliqueu\([^[:alnum:]]\)/Cliqueu amb el botó dret\1/g
s/\b\([Pp]\)er fer clic\([^[:alnum:]]\)/\1er a clicar\2/g
s/\bFa \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\1Clica\2/g
s/\bfa \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\1clica\2/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)Clica \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/Fa \1clic \2\3/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clica \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/fa \1clic \2\3/g
s/\bFaci \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\1Cliqui\2/g
s/\bfaci \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\1cliqui\2/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)Cliqui \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/Faci \1clic \2\3/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)cliqui \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/faci \1clic \2\3/g
s/\bFaig \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\1Clico\2/g
s/\bfaig \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\1clico\2/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)Clico \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/Faig \1clic \2\3/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clico \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/faig \1clic \2\3/g
s/\bFem\(-hi\|-l[aio]\|\) \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\2Cliquem\1\3/g
s/\bfem\(-hi\|-l[aio]\|\) \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\2cliquem\1\3/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)Cliquem\(-hi\|-l[aio]\|\) \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/Fem\2 \1clic \3\4/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)cliquem\(-hi\|-l[aio]\|\) \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/fem\2 \1clic \3\4/g
s/\bFent\(-hi\|-l[aio]\|\) \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\2Clicant\1\3/g
s/\bfent\(-hi\|-l[aio]\|\) \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\2clicant\1\3/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)Clicant\(-hi\|-l[aio]\|\) \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/Fent\2 \1clic \3\4/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clicant\(-hi\|-l[aio]\|\) \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/fent\2 \1clic \3\4/g
s/\bFer\(-hi\|-l[aio]\|\) \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\2Clicar\1\3/g
s/\bfer\(-hi\|-l[aio]\|\) \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\2clicar\1\3/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)Clicar\(-hi\|-l[aio]\|\) \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/Fer\2 \1clic \3\4/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clicar\(-hi\|-l[aio]\|\) \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/fer\2 \1clic \3\4/g
s/\bFes\(-hi\|-l[aio]\|\) \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\2Clica\1\3/g
s/\bfes\(-hi\|-l[aio]\|\) \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\2clica\1\3/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)Clica\(-hi\|-l[aio]\|\) \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/Fes\2 \1clic \3\4/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clica\(-hi\|-l[aio]\|\) \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/fes\2 \1clic \3\4/g
s/\bFeu\(-hi\|-l[aio]\|\) \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\2Cliqueu\1\3/g
s/\bfeu\(-hi\|-l[aio]\|\) \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\2cliqueu\1\3/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)Cliqueu\(-hi\|-l[aio]\|\) \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/Feu\2 \1clic \3\4/g
  s/\b\(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)cliqueu\(-hi\|-l[aio]\|\) \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/feu\2 \1clic \3\4/g
s/\bFeu\(-hi\|-l[aio]\|\) un \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\2Cliqueu\1\3/g
s/\bfeu\(-hi\|-l[aio]\|\) un \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)clic\([^[:alnum:]]\)/\2cliqueu\1\3/g
  s/\bCliqueu \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/Feu clic \1\2/g
  s/\bcliqueu \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/feu clic \1\2/g
s/\bInicia en clicar\([^[:alnum:]]\)/Inicia quan es cliqui\1/g
s/\bIniciar en clicar[?]/Voleu iniciar quan es cliqui\?/g
s/\bPremeu clic en\([^[:alnum:]]\)/Cliqueu a\1/g
s/\bpremeu clic en\([^[:alnum:]]\)/cliqueu a\1/g
#
# s/\b\([Aa]\)coblador \(Paleta\)\([^[:alnum:]]\)/\1coblador «\2»\3/g
s/\bbotó \(Acaba\|Cancel·la\|Clau automàtica\|Comprova\|Configuració avançada\|Consell\|Continua\|D'acord\|Desa\|Edita\|Elimina\|Escull\|Neteja\|No\|Rebutja\|Següent\|Sí\|Torna a carregar\)\([^[:alnum:]]\)/botó «\1»\2/g
s/\bbotó d'actualització\([^[:alnum:]]\)/botó «Actualitza»\1/g
s/\b\([Dd]\)iàleg estàndard de selecció de color del KDE\([^[:alnum:]]\)/\1iàleg de selecció estàndard «Trieu un color» del KDE\2/g
s/\b\([Vv]\)ista \(Detalls\)\([^[:alnum:]]\)/\1ista «\2»\3/g
s/\b\([Cc]\)liqueu \(a \|damunt \|en \|sobre \|\)\(Bé\|[Ee]nvia\)\([^[:alnum:]]\)/\1liqueu a «\3»\4/g
s/\b\([Cc]\)liqueu &quot;encripta&quot;\([^[:alnum:]]\)/\1liqueu a «Encripta»\2/g
s/\b\([Cc]\)liqueu següent\([^[:alnum:]]\)/\1liqueu a «Següent»\2/g
s/\b\([Ee]\)scolliu \(No\|Sí\)\([^[:alnum:]]\)/\1scolliu «\2»\3/g
#
s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(a \|en \|\)\(Actualitza\|Ajuda\|Anota\|Cancel·la\|D'acord\|Detalls\|Explora\|Ignora\|Reanomena\|Tria\|Simula\)\([^[:alnum:]]\)/\1 a «\3»\4/g
  s/«Simula» i Step\([^[:alnum:]]\)/«Simula» i «Step»\1/g
s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(a \|en \|sobre \|\)Banca, Inversió o Cotitzacions\([^[:alnum:]]\)/\1 a «Banca», «Inversió» o «Cotitzacions»\2/g
s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a sobre d'un\(a\|\)\([^[:alnum:]]\)/\1 sobre un\2\3/g
s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(en \|sobre \|\)\([<«]\)/\1 a \3/g
  s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a \(<[^<]\{1,\}>\|«\|\[\|:ref:`\|`\|\)aquí\([^[:alnum:]]\)/\1 \2aquí\3/g
s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) el botó \(del mig\|dret\|esquerre\)\([^[:alnum:]]\)/\1 amb el botó \2\3/g
  s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) amb el botó \(del mig\|dret\|esquerre\) amb el ratolí\([^[:alnum:]]\)/\1 amb el botó \2 del ratolí\3/g
#
s/\bEn clicar\(-la\|\)\([^[:alnum:]]\)/Quan es cliqui\2/g
s/\ben clicar\(-la\|\)\([^[:alnum:]]\)/quan es cliqui\2/g
s/\bEn fer clic\([^[:alnum:]]\)/Quan es faça clic\1/g
s/\ben fer clic\([^[:alnum:]]\)/quan es faça clic\1/g
  s/\bquan es cliqui \(a <em>\|\)\(central\|del mig\|dret\|esquerre\)\([^[:alnum:]]\)/quan es faci clic \1\2\3/g
  s/\bcliqui \(central\|del mig\|dret\|esquerre\)\([^[:alnum:]]\)/faci clic \1\2/g
  s/\bquan es cliqui del ratolí\([^[:alnum:]]\)/quan es cliqui amb el ratolí\1/g
  s/\b\([Qq]\)uan es cliqui aquest botó\([^[:alnum:]]\)/\1uan es cliqui en aquest botó\2/g
    s/\bQuan es cliqui en aquest botó /Quan es cliqui en aquest botó, /g
  s/\b\([Qq]\)uan es cliqui el botó\([^[:alnum:]]\)/\1uan es cliqui al botó\2/g
  s/\b\([Qq]\)uan es cliqui-hi\([^[:alnum:]]\)/\1uan s'hi cliqui\2/g
  s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) aquest botó\([^[:alnum:]]\)/\1 en aquest botó\2/g
  s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) el botó\([^[:alnum:]]\)/\1 al botó\2/g
    s/\bclicant al botó d'eixida\([^[:alnum:]]\)/clicant el botó d'eixida\1/g
  s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) els \(botons\|elements\)\([^[:alnum:]]\)/\1 als \2\3/g
  s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) el ratolí\([^[:alnum:]]\)/\1 amb el ratolí\2/g
  s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) l'element\([^[:alnum:]]\)/\1 a l'element\2/g
  s/\b\([Cc]lic\|[Cc]lica\|[Cc]licant\|[Cc]licada\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) simultàniament el botó\([^[:alnum:]]\)/\1 simultàniament amb el botó\2/g
#
s/\b\([Aa]\)mb el clic amb el botó \(central\|del mig\|dret\|esquerre\)\([^[:alnum:]]\)/\1mb el clic \2\3/g
s/\bFeu clic dret per a més opcions\([^[:alnum:]]\)/Per a més opcions, feu clic dret\1/g
s/\bCliqueu on els fitxers\([^[:alnum:]]\)/Cliqueu en els fitxers\1/g
# #
# # # # # # # # # # # # # # ./c_crea_val-po.sh cerca_dir va "([Ee]rror|[Ff]allat|[Pp]roblema) (a|en) " kolourpaint
#
# en
  s/\bEn actualitzar crea\([^[:alnum:]]\)/Quan s'actualitzi, crea\1/g
s/\bEn actualitzar\(-ho\|-se\|\)\([^[:alnum:]]\)/Mentre s'actualitza\2/g
  s/\bEn analitzar\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\([^[:alnum:]]\)/Mentre s'analitzen \2\3/g
s/\bEn analitzar\(-ho\|-se\|\)\([^[:alnum:]]\)/Mentre s'analitza\2/g
  s/\bEn calcular\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\([^[:alnum:]]\)/Mentre es calculen \2\3/g
s/\bEn calcular\(-ho\|-se\|\) una\([^[:alnum:]]\)/Mentre es calculava una\2/g
s/\bEn calcular\(-ho\|-se\|\)\([^[:alnum:]]\)/Mentre es calcula\2/g
  s/\bEn establir\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\([^[:alnum:]]\)/Mentre s'establien \2\3/g
s/\bEn establir\(-ho\|-se\|\)\([^[:alnum:]]\)/Mentre s'estableix\2/g
s/\bEn seleccionar\(-ho\|-se\|\) \(«\|:guilabel\|aquest\b\|aquesta\|el\b\|l'\|la\b\|un\b\)/Quan se seleccioni \2/g
s/\bEn seleccionar\(-ho\|-se\|\) \(aquests\|aquestes\|els\|les\|uns\|unes\)\([^[:alnum:]]\)/Quan se seleccionin \2\3/g
 #
s/\berror durant en guardar automàticament\([^[:alnum:]]\)/error en guardar automàticament\1/g
# a
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(accedi\|afegi\|arrodoni\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre s'\3en \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(accedi\|afegi\|arrodoni\)r\(-ho\|-se\|\)\b/\1 mentre s'\3a/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(activa\|actualitza\|adjunta\|apila\|aplica\|arxiva\|associa\|atura\|autentica\|autoritza\|avalua\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre s'\3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(activa\|actualitza\|adjunta\|apila\|aplica\|arxiva\|associa\|atura\|autentica\|autoritza\|avalua\)r\(-ho\|-se\|\)\b/\1 mentre s'\3va/g
# b
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(baixa\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(baixa\)r\(-ho\|-se\|\)\b/\1 mentre es \3va/g
# c
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(comet\)re\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ien \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(comet\)re\(-ho\|-se\|\)\b/\1 mentre es \3ia/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(comparti\|concedi\|converti\|\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3en \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(comparti\|concedi\|converti\|\)r\(-ho\|-se\|\)\b/\1 mentre es \3a/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(calcula\|canvia\|carrega\|cava\|certifica\|codifica\|comença\|comprova\|comunica\|configura\|connecta\|consulta\|copia\|crea\|crida\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(calcula\|canvia\|carrega\|cava\|certifica\|codifica\|comença\|comprova\|comunica\|configura\|connecta\|consulta\|copia\|crea\|crida\)r\(-ho\|-se\|\)\b/\1 mentre es \3va/g
# d
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(desfe\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ien \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(desfe\)r\(-ho\|-se\|\)\b/\1 mentre es \3ia/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(desa\|desactiva\|desbloqueja\|descodifica\|desencripta\|desinstal·la\|desmunta\|determina\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(desa\|desactiva\|desbloqueja\|descodifica\|desencripta\|desinstal·la\|desmunta\|determina\)r\(-ho\|-se\|\)\b/\1 mentre es \3va/g
# e
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(emet\|extre\)\(u\|\)re\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre s'\3ien \6/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(emet\|extre\)\(u\|\)re\(-ho\|-se\|\)\b/\1 mentre s'\3ia/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(escri\)ure\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre s'\3vien \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(escri\)ure\(-ho\|-se\|\)\b/\1 mentre s'\3via/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(establi\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre s'\3en \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(establi\)r\(-ho\|-se\|\)\b/\1 mentre s'\3a/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(elimina\|encripta\|enganxa\|enregistra\|entrega\|envia\|escaneja\|exporta\|executa\|explora\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre s'\3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(elimina\|encripta\|enganxa\|enregistra\|entrega\|envia\|escaneja\|exporta\|executa\|explora\)r\(-ho\|-se\|\)\b/\1 mentre s'\3va/g
# f
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(fe\)r\('s\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ien \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(fe\)r\('s\|\)\b/\1 mentre es \3ia/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(formata\|fusiona\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(formata\|fusiona\)r\(-ho\|-se\|\)\b/\1 mentre es \3va/g
# g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(genera\|gestiona\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(genera\|gestiona\)r\(-ho\|-se\|\)\b/\1 mentre es \3va/g
# i
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(imprimi\|inseri\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre s'\3en \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(imprimi\|inseri\)r\(-ho\|-se\|\)\b/\1 mentre s'\3a/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(identifica\|importa\|inicia\|inicialitza\|instal·la\|intenta\|intercanvia\|interpreta\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre s'\3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(identifica\|importa\|inicia\|inicialitza\|instal·la\|intenta\|intercanvia\|interpreta\)r\(-ho\|-se\|\)\b/\1 mentre s'\3va/g
# ll
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(llegi\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3en \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(llegi\)r\(-ho\|-se\|\)\b/\1 mentre es \3a/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(llança\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(llança\)r\(-ho\|-se\|\)\b/\1 mentre es \3va/g
# m
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(mo\)ure\('s\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3vien \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(mo\)ure\('s\|\)\b/\1 mentre es \3via/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(marca\|migra\|modifica\|mostra\|munta\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(marca\|migra\|modifica\|mostra\|munta\)r\(-ho\|-se\|\)\b/\1 mentre es \3va/g
# n
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(neteja\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(neteja\)r\(-ho\|-se\|\)\b/\1 mentre es \3va/g
# o
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(obri\|obteni\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre s'\3en \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(obri\|obteni\)r\(-ho\|-se\|\)\b/\1 mentre s'\3a/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(optimitza\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre s'\3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(optimitza\)r\(-ho\|-se\|\)\b/\1 mentre s'\3va/g
# p
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(pren\)dre\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ien \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(pren\)dre\(-ho\|-se\|\)\b/\1 mentre es \3ia/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(prepara\|processa\|prova\|publica\|puja\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(prepara\|processa\|prova\|publica\|puja\)r\(-ho\|-se\|\)\b/\1 mentre es \3va/g
# r
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(reb\)re\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ien \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(reb\)re\(-ho\|-se\|\)\b/\1 mentre es \3ia/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(recolli\|reprodui\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3en \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(recolli\|reprodui\)r\(-ho\|-se\|\)\b/\1 mentre es \3a/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(redimensiona\|recopila\|recrea\|recupera\|reinicia\|renderitza\|reorganitza\|restaura\|revoca\)r\(-ho\|-se\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(redimensiona\|recopila\|recrea\|recupera\|reinicia\|renderitza\|reorganitza\|restaura\|revoca\)r\(-ho\|-se\|\)\b/\1 mentre es \3va/g
# s
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(suprimi\)r\(-se\|tots\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre se \3en \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(suprimi\)r\(-ho\|-se\|\)\b/\1 mentre se \3a/g
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(saneja\|serialitza\|signa\|sincronitza\|sol·licita\|soluciona\)r\(-se\|tots\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre se \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(saneja\|serialitza\|signa\|sincronitza\|sol·licita\|soluciona\)r\(-ho\|-se\|\)\b/\1 mentre se \3va/g
# t
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(torna\|troba\)r\(-se\|tots\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(torna\|troba\)r\(-ho\|-se\|\)\b/\1 mentre es \3va/g
# u
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(usa\|utilitza\)r\(-se\|tots\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre s'\3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(usa\|utilitza\)r\(-ho\|-se\|\)\b/\1 mentre s'\3va/g
# v
  s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(valida\|verifica\)r\(-se\|tots\|\) \([ae]ls\|les\|%1 objectes\|%1 paquets\|%1 peces\|%2$d de %3$d fitxers\|(«pop») les\|alguns\|algunes\|aquests\|aquestes\|canvis\|dades\|diverses\|fitxers\|marcadors\|paquets\|permisos\|tots\|totes\|valors\)\b/\1 mentre es \3ven \5/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|al\|en\) \(valida\|verifica\)r\(-ho\|-se\|\)\b/\1 mentre es \3va/g
 #
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) en analitzar el\([^[:alnum:]]\)/\1 durant l'anàlisi del\2/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) en analitzar\([^[:alnum:]]\)/\1 durant l'anàlisi\2/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(al\|en el\) \(bolcat\|càlcul\|calibratge\)\([^[:alnum:]]\)/\1 durant el \3\4/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) en esperar\([^[:alnum:]]\)/\1 durant l'espera\2/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|en\) l'\(acció\|alineació\|anàlisi\|arxiu\|execució\|exportació\|últim\)\([^[:alnum:]]\)/\1 durant l'\3\4/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|en\) la \(baixada\|captura\|connexió\|consulta\|còpia\|creació\|definició\|gestió\|indexació\|instal·lació\|prova\|recuperació\|suma\|transferència\)\([^[:alnum:]]\)/\1 durant la \3\4/g
s/\b\([Ee]rror\|[Ee]rrors\|[Ff]allat\|[Ff]allades\|[Pp]roblema\|[Pp]roblemes\) \(a\|en\) una \(transferència\)\([^[:alnum:]]\)/\1 durant una \3\4/g
 # Errors
s/\bconnectava al \(sembrador\|servei\|vostre\)\([^[:alnum:]]\)/connectava amb el \1\2/g
s/\bdurant l'anàlisi l'ordre\([^[:alnum:]]\)/durant l'anàlisi de l'ordre\1/g
s/\bERROR en crear l'observació\([^[:alnum:]]\)/ERROR menmtre es creava l'observació\1/g
s/\bERROR en pujar la fotografia\([^[:alnum:]]\)/ERROR mentre es pujava la fotografia\1/g
s/\bERROR en suprimir l'observació\([^[:alnum:]]\)/ERROR mentre se suprimia l'observació\1/g
s/\berror en zona horària\([^[:alnum:]]\)/error en la zona horària\1/g
s/\berror mentre es recuperava informació\([^[:alnum:]]\)/error mentre es recuperava la informació\1/g
s/\bfallat durant l'anàlisi els\([^[:alnum:]]\)/fallat durant l'anàlisi dels\1/g
s/\bhan fallat mentre es carregava\([^[:alnum:]]\)/han fallat mentre es carregaven\1/g
s/\bKompare pot tenir problemes mentre s'aplicaven els canvis\([^[:alnum:]]\)/Kompare pot tenir problemes mentre s'apliquen els canvis\1/g
s/\bL'<adreça> d'error mentre s'usava\([^[:alnum:]]\)/L'<adreça> d'error que s'ha d'usar\1/g
s/\bl'Script del KWin\([^[:alnum:]]\)/l'script del KWin\1/g
s/\bmentre es baixava dades\([^[:alnum:]]\)/mentre es baixaven les dades\1/g
  s/\brecuperava del repositori\([^[:alnum:]]\)/recuperava des del repositori\1/g
s/\bmentre es baixaven dades\([^[:alnum:]]\)/mentre es baixaven les dades\1/g
s/\bmentre es creava el PDF\([^[:alnum:]]\)/mentre es creava un PDF\1/g
s/\bmentre es desencriptava\/verificar els\([^[:alnum:]]\)/mentre es desencriptaven i verificaven els\1/g
s/\bmentre es desencriptava i verificar\([^[:alnum:]]\)/mentre es desencriptava i verificava\1/g
s/\bmentre es feia dels canvis\([^[:alnum:]]\)/mentre es feien els canvis\1/g
s/\bmentre es llegia de snapd\([^[:alnum:]]\)/mentre es llegia des de snapd\1/g
s/\bmentre es llegia del fitxer\([^[:alnum:]]\)/mentre es llegia des del fitxer\1/g
s/\bmentre es llegia el CD\([^[:alnum:]]\)/mentre es llegeix el CD\1/g
s/\bmentre es llegia un CD\([^[:alnum:]]\)/mentre es llegeix un CD\1/g
s/\bmentre es muntava\/desmuntar\([^[:alnum:]]\)/mentre es muntava o desmuntava\1/g
s/\bmentre s'afegia o emparellar una\([^[:alnum:]]\)/mentre s'afegia o s'emparellava una\1/g
s/\bmentre s'autoritzava o blocar un\([^[:alnum:]]\)/mentre s'autoritzava o blocava un\1/g
s/\bmentre s'enregistrava\([^[:alnum:]]\)/mentre es gravava\1/g
s/\bmentre s'escrivia-hi\([^[:alnum:]]\)/mentre s'hi escrivia\1/g
s/\bMentre s'estableix-lo a 100\([^[:alnum:]]\)/En establir-la a 100\1/g
s/\bmentre s'intentava carregar\/descarregar els\([^[:alnum:]]\)/mentre s'intentaven carregar o descarregar els\1/g
s/\bmentre s'intentava \(llistar\|recuperar\) \(els\|les\)\([^[:alnum:]]\)/mentre s'intentaven \1 \2\3/g
s/\bmentre s'obria el dispositiu\/fitxer\([^[:alnum:]]\)/mentre s'obria el dispositiu o fitxer\1/g
s/\bmentre se signava\/encriptar fitxers\([^[:alnum:]]\)/mentre se signaven i encriptaven els fitxers\1/g
  s/\bpodria donar problemes mentre se signava\/desencriptar\([^[:alnum:]]\)/podria donar problemes mentre se signa i desencripta\1/g
s/\bmentre se signava i encriptar\([^[:alnum:]]\)/mentre se signava i encriptava\1/g
s/\bmentre se suprimia o moure els\([^[:alnum:]]\)/mentre se suprimia o es movien els\1/g
s/\bOpenPGP mentre s'intentava desar la cartera\([^[:alnum:]]\)/OpenPGP quan s'intentava desar la cartera\1/g
  s/\bfitxers en intentar \(desar\|obrir\) la cartera\([^[:alnum:]]\)/fitxers quan s'intentava \1 la cartera\2/g
s/\bs'intentava executar-ho\([^[:alnum:]]\)/s'intentava executar\1/g
s/\bsupressió de la carpeta ha fallat mentre s'intentava llegir-la\([^[:alnum:]]\)/supressió de la carpeta ha fallat mentre s'intentava llegir\1/g
# #
# # # # # # # # # # # # # #
#
# escollir / seleccionar <-> triar
s/\bEscolliu\([^[:alnum:]]\)/Trieu\1/g
s/, escolliu\([^[:alnum:]]\)/, trieu\1/g
s/\bi escolliu\([^[:alnum:]]\)/i trieu\1/g
s/\bTrieu de l\(a\|es\)\([^[:alnum:]]\)/Trieu l\1\2/g
s/\bTrieu del\(s\|\)\([^[:alnum:]]\)/Trieu el\1\2/g
  s/(Selecció de)/(Trieu el)/g
  s/(Seleccioneu \(la\|una\) sessió)/(trieu \1 sessió)/g
  s/\bSelecció d'\(elements\|objectes\|orígens\)\([^[:alnum:]]\)/Trieu els \1\2/g
  s/\bSelecció d'\(etiquetes\|imatges\)\([^[:alnum:]]\)/Trieu les \1\2/g
  s/\bSelecció d'\(àlbum\|àrea\|arxiu\|element\|emplaçament\|encapçalament\|usuari\)\([^[:alnum:]]\)/Trieu un \1\2/g
  s/\bSelecció d'\(acció\|aplicació\|àrea\|imatge\|opció\|operació\|ubicació\)\([^[:alnum:]]\)/Trieu una \1\2/g
  s/\bSelecció d'imatge a comprimir\([^[:alnum:]]\)/Trieu la imatge que s'ha de comprimir\1/g
  s/\bSelecció d'una\([^[:alnum:]]\)/Trieu una\1/g
  s/\bSelecció de fabricant\/model d'impressora\([^[:alnum:]]\)/Trieu el fabricant i model d'impressora\1/g
  s/\bSelecció de Google\([^[:alnum:]]\)/Trieu a Google\1/g
  s/\bSelecció de pàgines múltiples\([^[:alnum:]]\)/Trieu múltiples pàgines\1/g
  # elements de menú
  s/&Selecció de clau pública…/\&Tria la clau pública…/g
  s/\bSelecció de fitxers de so…/Tria els fitxers de so…/g
  s/\bSelecció de la ubicació de la carpeta de còpies de seguretat…/Tria la ubicació de la carpeta de còpies de seguretat…/g
  s/\bSelecció de &traç…/Tria el \&traç…/g
  s/\bSelecció de &vores…/Tria les \&vores…/g
  s/\bSeleccioneu un procés al qual adjuntar…/Tria un procés al qual adjuntar…/g
 #
s/\bSelecció d'/Trieu /g
s/\bSelecció de l'/Trieu l'/g
  s/\bSelecció de \(múltiples\)\([^[:alnum:]]\)/Trieu \1\2/g
  s/\bSelecció de\(l\|\) \(camí\|clip\|diagrama\|disc\|dorsal\|format\|&grup\|pinzell\|nivell\|tema\|transbordament\)\([^[:alnum:]]\)/Trieu el \2\3/g
  s/\bSelecció de \(calendaris\|camps\|caràcters\|certificats\|connectors\|continents\|fitxers\|subtítols\|vectors\)\([^[:alnum:]]\)/Trieu els \1\2/g
  s/\bSelecció de text\([^[:alnum:]]\)/Seleccioneu el text\1/g
  s/\bSelecció de &text\([^[:alnum:]]\)/Seleccioneu el \&text\1/g
  s/\bSelecció de \(base de dades\|branca\|càmera\|clau\|data\|finestra\|generació\|&línia\|marca\|paleta\|pila\|prioritat\|programació\|regió\|sessió\|taula\|t&aula\|traça\)\([^[:alnum:]]\)/Trieu la \1\2/g
  s/\bSelecció de \(branques\|capes\|claus\|col·leccions\|connexions\|dades\|frases\|marques\|propietats\|variables\|vores\)\([^[:alnum:]]\)/Trieu les \1\2/g
  s/\bSelecció de \(caràcter\|certificat\|color\|compte\|directori\|dispositiu\|filtre\|fitxer\|full\|polígon\|script\|tipus de lletra\|vector\)\([^[:alnum:]]\)/Trieu un \1\2/g
  s/\bSelecció de \(carpeta\|fórmula\|targeta\)\([^[:alnum:]]\)/Trieu una \1\2/g
  s/\bSelecció de la disposició de la pàgina\([^[:alnum:]]\)/Trieu la disposició de la pàgina\1/g
s/\bSelecció de l\(a\|es\)\([^[:alnum:]]\)/Trieu l\1\2/g
s/\bSelecció del\(s\|\)\([^[:alnum:]]\)/Trieu el\1\2/g
  s/\bSeleccioneu una ordre a inserir en la plantilla\([^[:alnum:]]\)/Trieu una ordre a inserir dins de la plantilla\1/g
s/\bSeleccion\(a\|ada\|ades\|a[rt]\|ats\|eu\)\([^[:alnum:]]\)/Tri\1\2/g
s/, seleccion\(a\|ada\|ades\|a[rt]\|ats\|eu\)\([^[:alnum:]]\)/, tri\1\2/g
s/\b\([io]\) seleccion\(a\|ada\|ades\|a[rt]\|ats\|eu\)\([^[:alnum:]]\)/\1 tri\2\3/g
s/\b\([Ss]\)i se selecciona\([^[:alnum:]]\)/\1i es tria\2/g
s/\b\([Ss]\)i seleccioneu\([^[:alnum:]]\)/\1i trieu\2/g
 # 1a esmena
s/(el codificador tria)/(tria el codificador)/g
s/\b\([Pp]\)er a seleccionar un origen de la capa\([^[:alnum:]]\)/\1er a triar un origen des de la capa\2/g
s/\b\([Tt]\)ria clau\([^[:alnum:]]\)/\1ria la clau\2/g
s/\b\([Tt]\)ria fitxer\([^[:alnum:]]\)/\1ria un fitxer\2/g
s/\b\([Tt]\)ria objectes\([^[:alnum:]]\)/\1ria els objectes\2/g
s/\b\([Tt]\)ria \(carpeta\|operació\)\([^[:alnum:]]\)/\1ria una \2\3/g
s/\b\([Tt]\)ria \(claus\|eines\|línies\|regions\|variables\)\([^[:alnum:]]\)/\1ria les \2\3/g
  s/\b\([Tt]\)ria les eines i colors\([^[:alnum:]]\)/\1ria les eines i els colors\2/g
    s/\bi dibuixa imatges\([^[:alnum:]]\)/i dibuixa les imatges\1/g
s/\b\([Tt]\)riar \(diagrama\)\([^[:alnum:]]\)/\1riar el \2\3/g
s/\b\([Tt]\)riar \(peces\)\([^[:alnum:]]\)/\1riar les \2\3/g
s/\b\([Tt]\)rieu \(carpetes\|classes\)\([^[:alnum:]]\)/\1rieu les \2\3/g
s/\b\([Tt]\)rieu directori\([^[:alnum:]]\)/\1rieu el directori\2/g
s/\b\([Tt]\)rieu \(emoji\|fitxers\|idiomes\)\([^[:alnum:]]\)/\1rieu els \2\3/g
  s/\b\([Tt]\)ri\(a\|ant\|ar\|e[su]\) els fitxers o carpetes\([^[:alnum:]]\)/\1ri\2 els fitxers o les carpetes\3/g
 # 2a esmena
s/\bcapa triada\([^[:alnum:]]\)/capa seleccionada\1/g
s/\bCerca i tria l'ocurrència següent\([^[:alnum:]]\)/Cerca i selecciona l'ocurrència següent\1/g
s/\bCerca i tria totes les ocurrències\([^[:alnum:]]\)/Cerca i selecciona totes les ocurrències\1/g
s/\bTria automàticament \(la &primera entrada de compleció\)\([^[:alnum:]]\)/Selecciona automàticament \1\2/g
s/\bTria des del començament \(de la vista\|de la línia\|del document\)\([^[:alnum:]]\)/Selecciona des del començament \1\2/g
s/\bTria des de la línia prèvia\([^[:alnum:]]\)/Selecciona des de la línia prèvia\1/g
  s/\bTri\(a\|ant\|ar\|e[su]\) el text\([^[:alnum:]]\)/Seleccion\1 el text\2/g
  s/\btri\(a\|ant\|ar\|e[su]\) el text\([^[:alnum:]]\)/seleccion\1 el text\2/g
  s/\bTri\(a\|ant\|ar\|e[su]\) \(totes \|\)les \(línies\|regions\|vores\)\([^[:alnum:]]\)/Seleccion\1 \2les \3\4/g
  s/\btri\(a\|ant\|ar\|e[su]\) \(totes \|\)les \(línies\|regions\|vores\)\([^[:alnum:]]\)/seleccion\1 \2les \3\4/g
  s/\bTri\(a\|ant\|ar\|e[su]\) un \(caràcter\|polígon\|rectangle\)\([^[:alnum:]]\)/Seleccion\1 un \2\3/g
  s/\btri\(a\|ant\|ar\|e[su]\) un \(caràcter\|polígon\|rectangle\)\([^[:alnum:]]\)/seleccion\1 un \2\3/g
  s/\bTri\(a\|ant\|ar\|e[su]\) una \(àrea\|capa\|el·lipse\|paraula\|subparaula\)\([^[:alnum:]]\)/Seleccion\1 una \2\3/g
  s/\btri\(a\|ant\|ar\|e[su]\) una \(àrea\|capa\|el·lipse\|paraula\|subparaula\)\([^[:alnum:]]\)/seleccion\1 una \2\3/g
  s/\bTri\(a\|ant\|ar\|e[su]\) una \(pàgina avall\|pàgina amunt\)\([^[:alnum:]]\)/Seleccion\1 una \2\3/g
s/\bTria fins a baix de la vista\([^[:alnum:]]\)/Selecciona fins a baix de la vista\1/g
s/\bTria fins a la línia següent\([^[:alnum:]]\)/Selecciona fins a la línia següent\1/g
s/\bTria fins al final \(de la línia\|del document\)\([^[:alnum:]]\)/Selecciona fins al final \1\2/g
s/\bTria fins al parèntesi que concordi\([^[:alnum:]]\)/Selecciona fins al parèntesi que concordi\1/g
s/\bTria tot el text del document actual\([^[:alnum:]]\)/Selecciona tot el text del document actual\1/g
s/\btriant o desseleccionant\([^[:alnum:]]\)/seleccionant o desseleccionant\1/g
s/\bTriar, si\([^[:alnum:]]\)/Seleccionar, si\1/g
  s/\btriar-la des en la llista\([^[:alnum:]]\)/triar-la des de la llista\1/g
s/\bTrieu només les línies\([^[:alnum:]]\)/Seleccioneu només les línies\1/g
s/\bTrieu-ne un o més a la vegada i premeu un botó d'acció\([^[:alnum:]]\)/Seleccioneu-ne un o més a la vegada i premeu un botó d'acció\1/g
  # elements de menú
  s/\bTria-ho tot\"/Selecciona-ho tot\"/g
  s/\bTrieu…/Tria…/g
  s/\bTrieu el \(camí per a desar la imatge\|conjunt de nivells\|directori a usar\|dispositiu d'escaneig\|perfil ICC\)…/Tria el \1…/g
  s/\bTrieu els \(assistents\|tipus aquí\)…/Tria els \1…/g
#   s/\bTrieu l'\(\)…/Tria l'\1…/g
  s/\bTrieu la \(carpeta base\|corba\|font\|imatge\|informació a mostrar de la imatge\|lletra\|posició per al nou valor numèric\)…/Tria la \1…/g
  s/\bTrieu les \(etiquetes\|zones horàries\)…/Tria les \1…/g
    s/\bTria un punt on ha de passar la nova cònica…/Trieu un punt per on hagi de passar la cònica nova…/g
  s/\bTrieu un \(fitxer\|fitxer d'ajuda de les Qt\|fitxer de certificat\|fitxer de clau de certificat\|fitxer de nucli a examinar\|nom\)…/Tria un \1…/g
  s/\bTrieu una \(carpeta\|etiqueta numèrica que serà un pes de l'últim punt seleccionat\|icona\)…/Tria una \1…/g
# \(\|\)
# #
# # # # # # # # # # # # # #
#
# ser <-> estar / trobar
# 18.3 Usos dels verbs ser i estar <https://geiec.iec.cat/veure_taula_una.asp?id=166>
s/\b\([Jj]\)a \(és\|està\) \(a\|en\)\([^[:alnum:]]\)/\1a es troba en\4/g
s/\b\([Jj]\)a és a la seva\([^[:alnum:]]\)/\1a es troba en la seva\2/g
s/\b\([Jj]\)a estan \(a\|en\)\([^[:alnum:]]\)/\1a es troben a\3/g
  s/\bes troben a negreta\([^[:alnum:]]\)/estan en negreta\1/g
  s/\bes troben a una pila\([^[:alnum:]]\)/es troben en una pila\1/g
s/\b\([Jj]\)a esteu \(a\|en\)\([^[:alnum:]]\)/\1a us trobeu a\3/g
s/\bplafó és vertical\([^[:alnum:]]\)/plafó està en vertical\1/g
s/\bés \(actiu\|activa\|activada\|activat\|al compartiment\|buida\|buit\|disponible\|en aquesta\|en curs\|en majúscula\|en majúscules\|en minúscula\|en minúscules\|en un estat\|establert\|establerta\|inclòs\|operatiu\|present\)\([^[:alnum:]]\)/està \1\2/g
s/\bés \(als EUA\|dins\|sobre\)\([^[:alnum:]]\)/es troba \1\2/g
s/\bestà en \(aquesta sala\)\([^[:alnum:]]\)/es troba en \1\2/g
s/\b\([Ll]\)a partida és empatada\([^[:alnum:]]\)/\1a partida està empatada\2/g
s/\bon és la sortida correcta\([^[:alnum:]]\)/on està la sortida correcta\1/g
s/\bseran \(automàticament amb format\|disponibles\)\([^[:alnum:]]\)/estaran \1\2/g
s/\b\(hi \|\)són a la llista\([^[:alnum:]]\)/es troben a la llista\2/g
s/\bsón \(actius\|actives\|activades\|activats\|buides\|buits\|disponibles\|en curs\|en un estat\|operatius\|presents\)\([^[:alnum:]]\)/estan \1\2/g
  s/\b\([Nn]\)omés està \(actiu\|activa\|activada\|activat\|disponible\)\([^[:alnum:]]\)/\1omés estarà \2\3/g
  s/\b\([Nn]\)omés estan \(actius\|actives\|activades\|activats\|disponibles\)\([^[:alnum:]]\)/\1omés estaran \2\3/g
  s/\bLes coses són on esperaríeu\([^[:alnum:]]\)/Les coses es troben on esperaríeu\1/g
  s/\bperò es pot instal·lar a partir dels repositoris de desenvolupament\([^[:alnum:]]\)/però es poden instal·lar a partir dels repositoris de desenvolupament\1/g
  s/\bsí que ja es troben\([^[:alnum:]]\)/si ja es troben\1/g
s/\bsón \(als EUA\)\([^[:alnum:]]\)/es troben \1\2/g
s/\bestan definits\([^[:alnum:]]\)/es defineixen\1/g
s/\bser causada\([^[:alnum:]]\)/estar causada\1/g
s/\bpoden ser buits\([^[:alnum:]]\)/poden estar buits\1/g
s/\bquan les finestres són a pantalla completa\([^[:alnum:]]\)/quan les finestres estan a pantalla completa\1/g
#
s/\bmentre sigui acti\(u\|va\)\([^[:alnum:]]\)/mentre estigui acti\1\2/g
s/\bsigui disponible\([^[:alnum:]]\)/es trobi disponible\1/g
#
s/\ba on és\([^[:alnum:]]\)/a on es troba\1/g
s/\ba on són\( ara\|\) les\([^[:alnum:]]\)/a on es troben\1 les\2/g
s/\bEl contingut del missatge és als adjunts\([^[:alnum:]]\)/El contingut del missatge es troba en els adjunts\1/g
s/\bha de ser a la variable\([^[:alnum:]]\)/s'ha de trobar a la variable\1/g
s/\bencara són en la llista\([^[:alnum:]]\)/encara es troben a la llista\1/g
s/\bés a l'escriptori\([^[:alnum:]]\)/es troba a l'escriptori\1/g
s/\bés al fitxer\([^[:alnum:]]\)/es troba al fitxer\1/g
s/\bés a la llista\([^[:alnum:]]\)/es troba a la llista\1/g
  s/\b\([Nn]\)o hi es troba\([^[:alnum:]]\)/\1o es troba\2/g
s/\bestà a l'editor\([^[:alnum:]]\)/es troba a l'editor\1/g
s/\bestà a l'\(IGU\)\([^[:alnum:]]\)/es troba a la \1\2/g
s/\bestà a la \(llista\)\([^[:alnum:]]\)/es troba a la \1\2/g
s/\bestà instal·lat i a la PATH\([^[:alnum:]]\)/està instal·lat i que es troba en la PATH\1/g
  s/\bestiguin instal·lats i en el PATH\([^[:alnum:]]\)/estiguin instal·lats i que es trobin a la PATH\1/g
s/\bl'enemic és a mig camí\([^[:alnum:]]\)/l'enemic es trobi a mig camí\1/g
s/\bordre és o no a la variable\([^[:alnum:]]\)/ordre es troba o no a la variable\1/g
s/\bque és \(en el\|l'eixida\)\([^[:alnum:]]\)/que es troba \1\2/g
s/\bque són a la\([^[:alnum:]]\)/que es troben a la\1/g
s/\bsón a la safata del projecte\([^[:alnum:]]\)/es troben a la safata del projecte\1/g
s/\bsón a la ubicació\([^[:alnum:]]\)/es troben a la ubicació\1/g
# #
# # # # # # # # # # # # # #
#
# es manlleva una excessiva referència a «això»
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això a\(ctiva\|ctivarà\|fegeix\|grupa\|tura\|juda\|ugmenta\)\([^[:alnum:]]\)/\1A\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això b\(arrarà\)\([^[:alnum:]]\)/\1B\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això c\(alcula\|anvia\|ommuta\|ompara\|ontrola\|opia\|rea\)\(rà\|\)\([^[:alnum:]]\)/\1C\3\4\5/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això d\(efineix\|esactivarà\|esencadena\|esfà\|etermina\|ivideix\|onarà\)\([^[:alnum:]]\)/\1D\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això e\(ditarà\|liminarà\|nviarà\|scapçarà\|scriu\|specifica\|sperarà\|stableix\|stablirà\|vita\|vitarà\)\([^[:alnum:]]\)/\1E\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això s'emplenarà\([^[:alnum:]]\)/\1Emplenarà\3/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això f\(arà\|inalitzarà\|usionarà\)\([^[:alnum:]]\)/\1F\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això g\(enera\)\([^[:alnum:]]\)/\1G\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això i\(ndica\|nicia\|niciarà\|nicialitzarà\|niciarà\|nstal·larà\)\([^[:alnum:]]\)/\1I\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això m\(arcarà\|ostra\|ostrarà\|ou\|ourà\)\([^[:alnum:]]\)/\1M\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això n\(etejarà\|omés\)\([^[:alnum:]]\)/\1N\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això o\(bre\|culta\|cultarà\|cuparà\|brirà\)\([^[:alnum:]]\)/\1O\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això p\(ermet\|rodueix\)\([^[:alnum:]]\)/\1P\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això r\(eanomena\|edueix\|eformatarà\|einicia\|einicialitzarà\|einiciarà\|estableix\|establirà\|etorna\)\([^[:alnum:]]\)/\1R\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això s\(elecciona\|eleccionarà\|uprimeix\|uprimirà\|obreescriurà\)\([^[:alnum:]]\)/\1S\3\4/g
s/\(\"\|\"<p>\|\"<para>\|\"<qt>\|<qt><p>\|<\/b><p>\)\( \|\)Això t\(anca\|ancarà\)\([^[:alnum:]]\)/\1T\3\4/g
# #
# # # # # # # # # # # # # #
#
# s'esmenen certes referències
s/\b\([Aa]\) la Internet\([^[:alnum:]]\)/\1 Internet\2/g
s/\b\([Aa]\)l \(<[^<]\{1,\}>\|\[\|«\|\)\(BSD\|Debian\|Haiku\|Linux\|macOS\|MacOS\|MeeGo\|Solaris\|SteamOS\|TUXEDO\|Windows\)\([^[:alnum:]]\)/\1 \2\3\4/g
s/\b\([Dd]\)el \(<[^<]\{1,\}>\|\[\|«\|\)\(BSD\|Debian\|Haiku\|Linux\|macOS\|MacOS\|MeeGo\|Solaris\|SteamOS\|TUXEDO\|Windows\)\([^[:alnum:]]\)/\1e \2\3\4/g
s/\b\([Ll]\)'\(<[^<]\{1,\}>\|\[\|«\|\)\(Haiku\|SteamOS\)\([^[:alnum:]]\)/\2\3\4/g
  s/\ben el \(<[^<]\{1,\}>\|\[\|«\|\)\(BSD\|Debian\|Haiku\|Linux\|macOS\|MacOS\|MeeGo\|Solaris\|SteamOS\|TUXEDO\|Windows\)\([^[:alnum:]]\)/a \1\2\3/g
s/\bsobre MeeGo\([^[:alnum:]]\)/a MeeGo\1/g
#
s/\b\([Dd]\)e l'\(<[^<]\{1,\}>\|\[\|«\|\)\(Android\|Arduino\|Ard&uino\|iOS\|OS X\|Unix\|UNIX\)\([^[:alnum:]]\)/\1'\2\3\4/g
s/\b\([Ll]\)'\(<[^<]\{1,\}>\|\[\|«\|\)\(Android\|Arduino\|Ard&uino\|iOS\|OS X\|Unix\|UNIX\)\([^[:alnum:]]\)/\2\3\4/g
#
s/\bEl \(<[^<]\{1,\}>\|\[\|«\|\)\(Debian\|Fedora\|FreeBSD\|Kubuntu\|Mandrake\|Mandriva\|Manjaro\|Mobian\|openSUSE\|RedHat\|SuSE\|TUXEDO\|Ubuntu\)\([^[:alnum:]]\)/La \1\2\3/g
s/\bel \(<[^<]\{1,\}>\|\[\|«\|\)\(Debian\|Fedora\|FreeBSD\|Kubuntu\|Mandrake\|Mandriva\|Manjaro\|Mobian\|openSUSE\|RedHat\|SuSE\|TUXEDO\|Ubuntu\)\([^[:alnum:]]\)/la \1\2\3/g
#
s/\b\([Dd]\)e HP\([^[:alnum:]]\)/\1'HP\2/g
# #
# # # # # # # # # # # # # #
#
# Arranja/ment -> Configuració
s/\bArranjame&nt\([^[:alnum:]]\)/Co\&nfiguració\1/g
  s/\bal seu darrer arranjament\([^[:alnum:]]\)/a la seva última configuració\1/g
  s/\bAquest és un arranjament\([^[:alnum:]]\)/Aquesta és una opció de configuració\1/g
  s/\bArranjament del Plasma\([^[:alnum:]]\)/Configuració del Plasma\1/g
  s/\bel darrer arranjament\([^[:alnum:]]\)/l'última configuració\1/g
s/\bArranjament\([^[:alnum:]]\)/Configuració\1/g
s/\barranjament\([^[:alnum:]]\)/configuració\1/g
s/\bArranjaments\([^[:alnum:]]\)/Configuracions\1/g
s/\barranjaments\([^[:alnum:]]\)/configuracions\1/g
  s/\balguns configuracions\([^[:alnum:]]\)/algunes configuracions\1/g
  s/\b\([Cc]\)onfiguració del \([Ss]\)istema\([^[:alnum:]]\)/Configuració del sistema\3/g
    s/\b\(actualitzant la\|canvis de la\|cas poc freqüent que la\|cau de\|Comprova la\|comprovació de la\|comprovació i\|comprovarà la\|esmeneu la\|indicat a la\|és degut a la\|individuals per a la\|Mostra la\|opcions de\|Refà el cau de\|reviseu la\|s'usarà la\|un fitxer de\) Configuració del sistema\([^[:alnum:]]\)/\1 configuració del sistema\2/g
#     s/\bConfiguració del sistema de fitxers\([^[:alnum:]]\)/configuració del sistema de fitxers\1/g
    s/\bd'Configuració\([^[:alnum:]]\)/de Configuració\1/g
    s/\ba l'Configuració\([^[:alnum:]]\)/a Configuració\1/g
    s/\b\([Pp]\)roblemes \(amb\|en\) la Configuració del sistema\([^[:alnum:]]\)/\1roblemes \2 la configuració del sistema\3/g
    s/\bs'usarà l'Configuració del sistema\([^[:alnum:]]\)/s'usarà la configuració del sistema\1/g
  s/\bConfiguració del sistema \(de \|del \)KDE\([^[:alnum:]]\)/Configuració del sistema KDE\2/g
  s/\bConfiguració del sistema \(del \|\)KDE Connect\([^[:alnum:]]\)/Configuració del sistema de KDE Connect\2/g
  s/\b\([Mm]\)òdul de l'Configuració del sistema\([^[:alnum:]]\)/\1òdul de Configuració del sistema\2/g
  s/\ba l'Configuració del sistema\([^[:alnum:]]\)/a Configuració del sistema\1/g
  s/\b\([Ll]\)'Configuració del sistema\([^[:alnum:]]\)/Configuració del sistema\2/g
  s/\bl'\(<[^<]\{1,\}>\)Configuració\([^[:alnum:]]\)/\1Configuració\2/g
  s/\b\([Dd]\)iversos configuracions\([^[:alnum:]]\)/\1iverses configuracions\2/g
  s/\bArrangeu-los i publiqueu el resultat\([^[:alnum:]]\)/Esmeneu-los i publiqueu el resultat\1/g
  s/\bArranja els varis per a\([^[:alnum:]]\)/Configura els varis per a\1/g
  s/\bja s'ha arranjat\([^[:alnum:]]\)/ja s'ha configurat\1/g
  s/\bS'està arranjant el \(camp\|compte\|document\|LDAP\|servidor\|transport\)\([^[:alnum:]]\)/S'està configurant el \1\2/g
  s/\bS'ha arranjat el \(camp\|compte\|document\|LDAP\|servidor\|transport\)\([^[:alnum:]]\)/S'ha configurat el \1\2/g
  s/\bNo s'està arranjant el \(camp\|compte\|document\|LDAP\|servidor\|transport\)\([^[:alnum:]]\)/No s'està configurant el \1\2/g
  s/\bS'està arranjant la \(camp\|identitat\)\([^[:alnum:]]\)/S'està configurant la \1\2/g
  s/\bS'ha arranjat la \(identitat\)\([^[:alnum:]]\)/S'ha configurat la \1\2/g
  s/\bS'estan arranjant els \(camps\|colors\)\([^[:alnum:]]\)/S'estan configurant els \1\2/g
  s/\bsistema no sembla estar arranjat\([^[:alnum:]]\)/sistema no sembla estar configurat\1/g
  s/\barranjat l'Skype\([^[:alnum:]]\)/configurat Skype\1/g
  s/\barranjarà el KMail\([^[:alnum:]]\)/configurarà KMail\1/g
  s/\barranjarà erros\([^[:alnum:]]\)/esmenarà errors\1/g
  s/\berrors arranjats\([^[:alnum:]]\)/errors esmenats\1/g
  s/\bnecessària per a arranjar una\([^[:alnum:]]\)/necessària per a esmenar una\1/g
  s/\bLes dades s'arrangen\([^[:alnum:]]\)/Conjunts de dades\1/g
  s/\bLes &dades s'arrangen\([^[:alnum:]]\)/Conjunts de \&dades\1/g
  s/\bRearranja\([^[:alnum:]]\)/Torna a configurar\1/g
  s/\bS'està arranjant\([^[:alnum:]]\)/S'està configurant\1/g
  s/\bUsa un arranjament separat\([^[:alnum:]]\)/Utilitza una configuració a part\1/g
  s/\busant Configuració\([^[:alnum:]]\)/usant la configuració\1/g
  s/\bla configuració de la configuració\([^[:alnum:]]\)/la configuració\1/g
s/\barrangen\([^[:alnum:]]\)/estableixen\1/g
s/\barrangeu\([^[:alnum:]]\)/establiu\1/g
s/\bArranja\([^[:alnum:]]\)/Estableix\1/g
s/\barranja\([^[:alnum:]]\)/estableix\1/g
  s/\bAfegeix i estableix fitxers PDF\([^[:alnum:]]\)/Afegeix i arranja fitxers PDF\1/g
s/\barranjant\([^[:alnum:]]\)/establint\1/g
s/\barranjar\([^[:alnum:]]\)/establir\1/g
s/\barranjarà\([^[:alnum:]]\)/establirà\1/g
s/\barranja\(da\|des\|t\|ts\)\([^[:alnum:]]\)/establi\1\2/g
  s/\b\([Aa]\)quest configuració\([^[:alnum:]]\)/\1questa configuració\2/g
  s/\bconfiguració avançat era actiu\([^[:alnum:]]\)/configuració avançada estava activa\1/g
  s/\b\([Cc]\)onfiguració avançat\([^[:alnum:]]\)/\1onfiguració avançada\2/g
  s/\b\([Cc]\)onfiguració avançada de presència\([^[:alnum:]]\)/\1onfiguració avançada de la presència\2/g
  s/\b\([Cc]\)onfiguració avançada de muntatge\([^[:alnum:]]\)/\1onfiguració avançada del muntatge\2/g
  s/\b\([Cc]\)onfiguració de gestió d'energia\([^[:alnum:]]\)/\1onfiguració de la gestió d'energia\2/g
    s/\bPerfil de gestió d'energia\([^[:alnum:]]\)/Perfil de la gestió d'energia\1/g
    s/\baccions de gestió d'energia\([^[:alnum:]]\)/accions de la gestió d'energia\1/g
  s/\b\([Cc]\)onfiguració emprat\([^[:alnum:]]\)/\1onfiguració emprada\2/g
  s/\b\([Cc]\)onfiguració específic\([^[:alnum:]]\)/\1onfiguració específica\2/g
  s/\b\([Cc]\)onfiguració desat\([^[:alnum:]]\)/\1onfiguració desada\2/g
  s/\b\([Cc]\)onfiguració ràpid\([^[:alnum:]]\)/\1onfiguració ràpida\2/g
  s/\b\([Cc]\)onfiguració recomanat\([^[:alnum:]]\)/\1onfiguració recomanada\2/g
  s/\b\([Dd]\)'configuraci\(ó\|ons\)\([^[:alnum:]]\)/\1e configuraci\2\3/g
    s/\bels configuracions fixats\([^[:alnum:]]\)/les configuracions fixades\1/g
  s/\bEls configuracions\([^[:alnum:]]\)/Les configuracions\1/g
  s/\bels configuracions\([^[:alnum:]]\)/les configuracions\1/g
  s/\bconfiguracions definits\([^[:alnum:]]\)/configuracions definides\1/g
  s/\b\([Ll]\)'configuració\([^[:alnum:]]\)/\1a configuració\2/g
  s/\b\([Ll]\)a configuració predeterminat\([^[:alnum:]]\)/\1a configuració predeterminada\2/g
  s/\b\([Tt]\)ots les configuracions\([^[:alnum:]]\)/\1otes les configuracions\2/g
  s/\b\([Úú]\)ltim configuració\([^[:alnum:]]\)/\1ltima configuració\2/g
  s/\b\([Uu]\)n configuració\([^[:alnum:]]\)/\1na configuració\2/g
    s/\buna configuració genèric\([^[:alnum:]]\)/una configuració genèrica\1/g
  s/\bmòdul de configuració a Configuració del sistema\([^[:alnum:]]\)/mòdul a Configuració del sistema\1/g
  s/\bdels vostres configuracions de configuració\([^[:alnum:]]\)/dels vostres parametres de configuració\1/g
# #
# # # # # # # # # # # # # #
#
# per defecte / omissió -> predeterminat
s/,omissió,/,predeterminat,/g
s/\b\([Pp]\)er omissió\([^[:alnum:]]\)/\1er defecte\2/g
s/\bOmissió de filtratge\([^[:alnum:]]\)/Omet el filtratge\1/g
s/\bOmissió\([^[:alnum:]]\)/Predeterminat\1/g
s/\bomissió:\([^[:alnum:]]\)/predeterminat:\1/g
s/\bel d'omissió\([^[:alnum:]]\)/el predeterminat\1/g
s/\\(omissió\\)\([^[:alnum:]]\)/\(predeterminat\)\1/g
s/\bUbicació dels projectes per &omissió:\([^[:alnum:]]\)/Ubicació pre\&determinada dels projectes:\1/g
s/\bEdita l'àrea per &omissió\([^[:alnum:]]\)/Edita l'àrea pre\&determinada\1/g
s/\bestarà ocult per defecte\([^[:alnum:]]\)/estarà ocult de manera predeterminada\1/g
s/\bPe&r omissió\([^[:alnum:]]\)/Pre\&determinat\1/g
s/\bper &omissió\([^[:alnum:]]\)/pre\&determinat\1/g
s/\bcom &omissió\([^[:alnum:]]\)/com a pre\&determinat\1/g
s/\bcom a omissió\([^[:alnum:]]\)/com a predeterminat\1/g
s/\bRestaura per defecte\([^[:alnum:]]\)/Restaura als valors predeterminats\1/g
s/\bRestaura als valors per &defecte\([^[:alnum:]]\)/Restaura als valors pre\&determinats\1/g
s/\"per defecte\"/\"predeterminat\"/g
s/(per defecte=100)/(predeterminat=100)/g
s/(per defecte 0:INT_MAX)/(predeterminat 0:INT_MAX)/g
#
s/«%1» per defecte amb\([^[:alnum:]]\)/«%1» de manera predeterminada amb\1/g
s/%2» per defecte/%2» de manera predeterminada/g
s/[!]per_defecte\([^[:alnum:]]\)/\!predeterminat\1/g
s/(«div» per defecte)/(de manera predeterminada a «div»)/g
s/(per defecte «P» o «Esc»)/(de manera predeterminada «P» o «Esc»)/g
s/<tt>defecte<\/tt>\([^[:alnum:]]\)/<tt>predeterminat<\/tt>\1/g
s/<em>per defecte<\/em)>\([^[:alnum:]]\)/<em>predeterminada<\/em>\1/g
s/nom_camp=defecte/nom_camp=predeterminat/g
s/\b\([Aa]\)cció per defecte\([^[:alnum:]]\)/\1cció predeterminada\2/g
s/\b\([Aa]\)ccions per defecte\([^[:alnum:]]\)/\1ccions predeterminades\2/g
s/\b\([Aa]\)lçada per defecte\([^[:alnum:]]\)/\1lçada predeterminada\2/g
  s/\b\([Aa]\)&lçada per defecte\([^[:alnum:]]\)/\1\&lçada predeterminada\2/g
s/\b\([Aa]\)lineació de les particions per defecte\([^[:alnum:]]\)/\1lineació predeterminada de les particions\2/g
s/\b\([Aa]\)mplada per defecte\([^[:alnum:]]\)/\1mplada predeterminada\2/g
  s/\b\([Aa]\)&mplada per defecte\([^[:alnum:]]\)/\1\&mplada predeterminada\2/g
s/\b\([Aa]\)mple per defecte\([^[:alnum:]]\)/\1mplada predeterminada\2/g
s/\bAnima per defecte els canvis\([^[:alnum:]]\)/Anima de manera predeterminada els canvis\1/g
s/\b\([Aa]\)parença per defecte\([^[:alnum:]]\)/\1parença predeterminada\2/g
s/\b\([Aa]\)plicació per defecte\([^[:alnum:]]\)/\1plicació predeterminada\2/g
s/\b\([Aa]\)plicacions per defecte\([^[:alnum:]]\)/\1plicacions predeterminades\2/g
s/\b\([Àà]\)rea per defecte\([^[:alnum:]]\)/\1rea predeterminada\2/g
s/\b\([Àà]\)rea de codi per defecte\([^[:alnum:]]\)/\1rea de codi predeterminat\2/g
s/\b\([Aa]\)ssignació per defecte\([^[:alnum:]]\)/\1ssignació predeterminada\2/g
s/\b\([Aa]\)ssigni per defecte\([^[:alnum:]]\)/\1ssigni de manera predeterminada\2/g
s/\b\([Aa]\)tribut\(s\|\) per defecte\([^[:alnum:]]\)/\1tribut\2 predeterminat\2\3/g
s/\b\([Bb]\)iblioteca per defecte\([^[:alnum:]]\)/\1iblioteca predeterminada\2/g
s/\b\([Bb]\)iblioteques per defecte\([^[:alnum:]]\)/\1iblioteques predeterminades\2/g
s/\b\([Bb]\)yte per defecte\([^[:alnum:]]\)/\1yte predeterminat\2/g
s/\b\([Cc]\)alendari\(s\|\) per defecte\([^[:alnum:]]\)/\1alendari\2 predeterminat\2\3/g
s/\b\([Cc]\)amí per defecte\([^[:alnum:]]\)/\1amí predeterminat\2/g
s/\bcanvieu als configuracions per defecte\([^[:alnum:]]\)/canvieu a les opcions de configuració predeterminades\1/g
s/\b\([Cc]\)arpet\(a\|es\) per defecte\([^[:alnum:]]\)/\1arpet\2 predeterminad\2\3/g
  s/\bCarpeta per de&fecte\([^[:alnum:]]\)/Carpeta pre\&determinada\1/g
s/\bnova carpeta de baixades per defecte\([^[:alnum:]]\)/carpeta nova de baixades predeterminada\1/g
s/\b\([Cc]\)lau per defecte\([^[:alnum:]]\)/\1lau predeterminada\2/g
s/\b\([Cc]\)laus per defecte\([^[:alnum:]]\)/\1laus predeterminades\2/g
s/\b\([Cc]\)lient de correu per defecte\([^[:alnum:]]\)/\1lient de correu predeterminat\2/g
s/\b\([Cc]\)odificació\( de caràcters\|\) per defecte\([^[:alnum:]]\)/\1odificació\2 predeterminada\3/g
  s/\b\([Cc]\)odificació\( per\|\) \(&predeterminat\|pre&determinat\)\([^[:alnum:]]\)/\1odificació pre\&determinada\4/g
  s/\b\([Cc]\)o&dificació per defecte\([^[:alnum:]]\)/\1o\&dificació predeterminada\2/g
s/\b\([Cc]\)ol·lecció per defecte\([^[:alnum:]]\)/\1ol·lecció predeterminada\2/g
s/\b\([Cc]\)ol·leccions per defecte\([^[:alnum:]]\)/\1ol·leccions predeterminades\2/g
s/\b\([Cc]\)olor\(s\|\) per defecte\([^[:alnum:]]\)/\1olor\2 predeterminat\2\3/g
  s/\b\([Cc]olor\|[Tt]ipus\) del punt per defecte\([^[:alnum:]]\)/\1 predeterminat del punt\2/g
s/\b\([Cc]\)olor de \(primer pla \)per defecte\([^[:alnum:]]\)/\1olor de \2predeterminat\3/g
s/\bcom la <em>per defecte\([^[:alnum:]]\)/com la <em>predeterminada\1/g
s/\b\([Cc]\)ompte\(s\|\) per defecte\([^[:alnum:]]\)/\1ompte\2 predeterminat\2\3/g
s/\b\([Cc]\)omponent\(s\|\) per defecte\([^[:alnum:]]\)/\1omponent\2 predeterminat\2\3/g
s/\b\([Cc]\)omportament\(s\|\) per defecte\([^[:alnum:]]\)/\1omportament\2 predeterminat\2\3/g
  s/\b\([Nn]\)ive&ll de compressió per defecte\([^[:alnum:]]\)/\1ive\&ll de compressió predeterminat\2/g
s/\b\([Cc]\)ompressió per defecte\([^[:alnum:]]\)/\1ompressió predeterminada\2/g
s/\b\([Cc]\)onnector\(s\|\) per defecte\([^[:alnum:]]\)/\1onnector\2 predeterminat\2\3/g
s/\b\([Cc]\)onfiguració \(desada o \|\)per defecte\([^[:alnum:]]\)/\1onfiguració \2predeterminada\3/g
s/\b\([Cc]\)onnexió de xarxa per defecte\([^[:alnum:]]\)/\1onnexió de xarxa predeterminada\2/g
s/\b\([Cc]\)ontacte\(s\|\) per defecte\([^[:alnum:]]\)/\1ontacte\2 predeterminat\2\3/g
s/\b\([Cc]\)ontrasenya per defecte\([^[:alnum:]]\)/\1ontrasenya predeterminada\2/g
s/\b\([Cc]\)orba per defecte\([^[:alnum:]]\)/\1orba predeterminada\2/g
s/\b\([Cc]\)orrespondència per defecte\([^[:alnum:]]\)/\1orrespondència predeterminada\2/g
s/\b\([Cc]\)irectori temporal per defecte\([^[:alnum:]]\)/\1irectori temporal predeterminat\2/g
s/\b\([Cc]\)ursor \(per defecte\|predeterminada\)\([^[:alnum:]]\)/\1ursor predeterminat\3/g
s/\b\([Dd]\)efinició per defecte\([^[:alnum:]]\)/\1efinició predeterminada\2/g
s/\b\([Dd]\)efinicions per defecte\([^[:alnum:]]\)/\1efinicions predeterminades\2/g
s/\b\([Dd]\)esactivat per defecte\([^[:alnum:]]\)/\1esactivat de manera predeterminada\2/g
s/\b\([Dd]\)esaran per defecte\([^[:alnum:]]\)/\1esaran de manera predeterminada\2/g
s/\b\([Dd]\)ibuixat per defecte\([^[:alnum:]]\)/\1ibuixat de manera predeterminada\2/g
s/\b\([Dd]\)irectori \(de treball \|temporal \|\)per defecte\([^[:alnum:]]\)/\1irectori \2predeterminat\3/g
s/\b\([Dd]\)isseny per defecte\([^[:alnum:]]\)/\1isseny predeterminat\2/g
s/\b\([Dd]\)ispositiu \(video4linux \|\)per defecte\([^[:alnum:]]\)/\1ispositiu \2predeterminat\3/g
s/\b\([Dd]\)ocument mestre per defecte\([^[:alnum:]]\)/\1ocument mestre predeterminat\2/g
s/\b\([Dd]\)orsal per defecte\([^[:alnum:]]\)/\1orsal predeterminat\2/g
s/\b\([Dd]\)recera per defecte\([^[:alnum:]]\)/\1recera predeterminada\2/g
s/\b\([Ee]\)ditor per defecte\([^[:alnum:]]\)/\1ditor predeterminat\2/g
s/\b\([Ee]\)in\(a\|es\) per defecte\([^[:alnum:]]\)/\1in\2 predeterminad\2\3/g
  s/\b\([Ee]\)ines de floc per defecte\([^[:alnum:]]\)/\1ines de floc predeterminades\2/g
s/\bemprar-lo per defecte\([^[:alnum:]]\)/emprar-lo de manera predeterminada\1/g
s/\b\([Ee]\)ntorn per defecte\([^[:alnum:]]\)/\1ntorn predeterminat\2/g
s/\b\([Ee]\)ntrad\(a\|es\) per defecte\([^[:alnum:]]\)/\1ntrad\2 predeterminad\2\3/g
s/\bentrada d'arrencada serà la per defecte\([^[:alnum:]]\)/entrada d'arrencada serà la predeterminada\1/g
s/\bés per defecte\([^[:alnum:]]\)/és el predeterminat\1/g
s/\bEstà marca\(da\|t\) per defecte\([^[:alnum:]]\)/De manera predeterminada, està marca\1\2/g
s/\b\([Ee]\)stat per defecte\([^[:alnum:]]\)/\1stat predeterminat\2/g
s/\b\([Ee]\)stil\(s\|\) \(nou \|nous\|\)per defecte\([^[:alnum:]]\)/\1stil\2 \3predeterminat\2\4/g
  s/\bestil per &defecte\([^[:alnum:]]\)/estil pre\&determinat\1/g
s/\b\([Ee]\)tiqueta d'arrencada per defecte\([^[:alnum:]]\)/\1tiqueta d'arrencada predeterminada\2/g
s/\b\([Ee]\)xtensió \(gràfica \|\)per defecte\([^[:alnum:]]\)/\1xtensió \2predeterminada\3/g
s/\b\([Ff]\)actor d'ampliació per defecte\([^[:alnum:]]\)/\1actor predeterminat d'ampliació\2/g
s/\b\([Ff]\)arà servir per defecte\([^[:alnum:]]\)/\1arà servir de manera predeterminada\2/g
s/\b\([Ff]\)es per defecte\([^[:alnum:]]\)/\1es com a predeterminat\2/g
  s/\b\([Ff]\)es com a predeterminat la\([^[:alnum:]]\)/\1es com a predeterminada la\2/g
s/\b\([Ff]\)inestra per defecte\([^[:alnum:]]\)/\1inestra predeterminada\2/g
s/\b\([Ff]\)itxer per defecte\([^[:alnum:]]\)/\1itxer predeterminat\2/g
s/\b\([Ff]\)itxer CSS per defecte\([^[:alnum:]]\)/\1itxer CSS predeterminat\2/g
s/\b\([Ff]\)ormat numèric per defecte\([^[:alnum:]]\)/\1ormat numèric predeterminat\2/g
s/\b\([Ff]\)ormat\(s\|\) per defecte\([^[:alnum:]]\)/\1ormat\2 predeterminat\2\3/g
  s/\bEls formats predefinits\([^[:alnum:]]\)/Els formats predeterminats\1/g
  s/\bés un dels formats predefinits\([^[:alnum:]]\)/és un dels formats predeterminats\1/g
s/\b\([Ff]\)unció de compensació per defecte\([^[:alnum:]]\)/\1unció de compensació predeterminada\2/g
s/\b\([Gg]\)aletes de sessió per defecte\([^[:alnum:]]\)/\1aletes de sessió predeterminades\2/
s/\b\([Gg]\)enerador per defecte\([^[:alnum:]]\)/\1enerador predeterminat\2/
s/\b\([Gg]\)enera\(des\|t\) per defecte\([^[:alnum:]]\)/\1enera\2 de manera predeterminada\3/g
s/\b\([Gg]\)ir per defecte\([^[:alnum:]]\)/\1ir predeterminat\2/
s/\b\([Hh]\)abilita per defecte\([^[:alnum:]]\)/\1abilita de manera predeterminada\2/g
s/\b\([Hh]\)o estan per defecte\([^[:alnum:]]\)/\1o estan de manera predeterminada\2/g
s/\b\([Ii]\)cona per defecte\([^[:alnum:]]\)/\1cona predeterminada\2/g
s/\b\([Ii]\)dentificador per defecte\([^[:alnum:]]\)/\1dentificador predeterminat\2/g
s/\b\([Ii]\)dentitat per defecte\([^[:alnum:]]\)/\1dentitat predeterminada\2/g
s/\b\([Ii]\)dioma per defecte\([^[:alnum:]]\)/\1dioma predeterminat\2/g
  s/\b\([Ii]\)dioma natiu per defecte\([^[:alnum:]]\)/\1dioma natiu predeterminat\2/g
s/\b\([Ii]\)matge per defecte\([^[:alnum:]]\)/\1matge predeterminada\2/g
s/\b\([Ii]\)mpressora per defecte\([^[:alnum:]]\)/\1mpressora predeterminada\2/g
s/\b\([Ii]\)nici per defecte\([^[:alnum:]]\)/\1nici predeterminat\2/g
s/\b\([Ii]\)ntèrpret d'ordres per defecte\([^[:alnum:]]\)/\1ntèrpret d'ordres predeterminat\2/g
s/\b\([Ll]\)a simulació s'executa per defecte\([^[:alnum:]]\)/\1a simulació s'executa de manera predeterminada\2/g
s/\b\([Ll]\)licència per defecte\([^[:alnum:]]\)/\1licència predeterminada\2/g
  s/\b\([Dd]\)iàleg de llista per defecte\([^[:alnum:]]\)/\1iàleg predeterminat de llista\2/g
s/\b\([Ll]\)lista per defecte\([^[:alnum:]]\)/\1lista predeterminada\2/g
  s/\b\([Ll]\)lista de correu per defecte\([^[:alnum:]]\)/\1lista predeterminada de correu\2/g
s/\b\([Ll]\)loc per defecte\([^[:alnum:]]\)/\1loc predeterminat\2/g
s/\b\([Mm]\)arca per defecte\([^[:alnum:]]\)/\1arca predeterminada\2/g
s/\b\([Mm]\)emòria cau per defecte\([^[:alnum:]]\)/\1emòria cau predeterminada\2/g
s/\b\([Mm]\)id\(a\|es\) per defecte\([^[:alnum:]]\)/\1id\2 predeterminad\2\3/g
  s/\b\([Mm]\)ida del tipus de lletra del gràfic per defecte\([^[:alnum:]]\)/\1ida predeterminada del tipus de lletra del gràfic\2/g
s/\b\([Mm]\)ida de la lletra per defecte\([^[:alnum:]]\)/\1ida de la lletra predeterminada\2/g
s/\b\([Mm]\)issatge d'absència per defecte\([^[:alnum:]]\)/\1issatge d'absència predeterminat\2/g
s/\b\([Mm]\)ode \(d'escriptura \|\)per defecte\([^[:alnum:]]\)/\1ode \2predeterminat\3/g
s/\b\([Mm]\)odificacions per defecte\([^[:alnum:]]\)/\1odificacions predeterminades\2/g
s/\b\([Mm]\)oneda per defecte\([^[:alnum:]]\)/\1oneda predeterminada\2/g
s/\b\([Mm]\)otor per defecte\([^[:alnum:]]\)/\1otor predeterminat\2/g
  s/\b\([Mm]\)otor\(s\|\) de cerca per defecte\([^[:alnum:]]\)/\1otor\2 predeterminat\2 de cerca\3/g
s/\b\([Nn]\)avegació web per defecte\([^[:alnum:]]\)/\1avegació web predeterminada\2/g
s/\b\([Nn]\)avegador \(web \|\)per defecte\([^[:alnum:]]\)/\1avegador \2predeterminat\3/g
  s/\bnavega&dor per defecte\([^[:alnum:]]\)/navega\&dor predeterminat\1/g
  s/\bconjunt de nivells per defecte\([^[:alnum:]]\)/conjunt de nivells predeterminat\1/g
s/\bni el per defecte\([^[:alnum:]]\)/ni el predeterminat\1/g
s/\b\([Nn]\)ivell\(s\|\) per defecte\([^[:alnum:]]\)/\1ivell\2 predeterminat\2\3/g
s/\b\([Nn]\)om\(s\|\) per defecte\([^[:alnum:]]\)/\1om\2 predeterminat\2\3/g
s/\b\([Oo]\)bjectiu per defecte\([^[:alnum:]]\)/\1bjectiu predeterminat\2/g
  s/\bObjec&tiu de «make» per defecte\([^[:alnum:]]\)/Objec\&tiu predeterminat de «make»\1/g
s/\b\([Oo]\)bre per defecte\([^[:alnum:]]\)/\1bre de manera predeterminada\2/g
s/\b\([Oo]\)n es desen per defecte\([^[:alnum:]]\)/\1n es desaran de manera predeterminada\2/g
s/\b\([Oo]\)pció per defecte\([^[:alnum:]]\)/\1pció predeterminada\2/g
s/\b\([Oo]\)pcions per defecte\([^[:alnum:]]\)/\1pcions predeterminades\2/g
s/\b\([Oo]\)rdre per defecte\([^[:alnum:]]\)/\1rdre predeterminada\2/g
s/\b\([Oo]\)rdres per defecte\([^[:alnum:]]\)/\1rdres predeterminades\2/g
s/\b\([Oo]\)rientació per defecte\([^[:alnum:]]\)/\1rientació predeterminada\2/g
s/\b\([Oo]\)rtografia habilitada per defecte\([^[:alnum:]]\)/\1rtografia habilitada de manera predeterminada\2/g
s/\b\([Pp]\)àgina d'inici per defecte\([^[:alnum:]]\)/\1àgina d'inici predeterminada\2/g
s/\b\([Pp]\)aràmetre\(s\|\) per defecte\([^[:alnum:]]\)/\1aràmetre\2 predeterminat\2\3/g
  s/\bamb els paràmetres predeterminats\([^[:alnum:]]\)/amb els paràmetres definits\1/g
    s/\b\(configuracions\|lineal\|parcial\|sobreescriuran\|valoració\) amb els paràmetres definits\([^[:alnum:]]\)/\1 amb els paràmetres predeterminats\2/g
s/\b\([Pp]\)aràmetres d'arxivat per defecte\([^[:alnum:]]\)/\1aràmetres predeterminats d'arxivat\2/g
  s/\b\([Aa]\)rxivat per defecte\([^[:alnum:]]\)/\1rxivat predeterminat\2/g
  s/\bUna selecció predeterminada és una màscara\([^[:alnum:]]\)/Una selecció predefinida és una màscara\1/g
  s/\bSeleccions predeterminades\([^[:alnum:]]\)/Seleccions predefinides\1/g
  s/\b\([Pp]\)er defecte del sistema\([^[:alnum:]]\)/\1redeterminada del sistema\2/g
    s/\bPredeterminat del sistema\([^[:alnum:]]\)/Predeterminada del sistema\1/g
  s/\bper defecte és alineada\([^[:alnum:]]\)/de manera predeterminada està alineada\1/g
s/\b\([Pp]\)are per defecte\([^[:alnum:]]\)/\1are predeterminat\2/g
s/\b\([Pp]\)erfil\(s\|\) \(d'entorn\|de l'intermediari \|de vista prèvia \|\)per defecte\([^[:alnum:]]\)/\1erfil\2 \3predeterminat\2\4/g
s/\b\([Pp]\)lanificador integrat per defecte\([^[:alnum:]]\)/\1lanificador integrat predeterminat\2/g
s/\b\([Pp]\)lantill\(a\|es\) per defecte\([^[:alnum:]]\)/\1lantill\2 predeterminad\2\3/g
  s/\bUsa la plantilla nova com a plantilla predeterminada\([^[:alnum:]]\)/Usa la plantilla nova com a predeterminada\1/g
s/\b\([Pp]\)olítica per defecte\([^[:alnum:]]\)/\1olítica predeterminada\2/g
  s/\b\([Pp]\)olítica de l'OTR per defecte\([^[:alnum:]]\)/\1olítica predeterminada de l'OTR\2/g
s/\b\([Pp]\)ort\(s\|\) per defecte\([^[:alnum:]]\)/\1ort\2 predeterminat\2\3/g
s/\b\([Pp]\)recisió decimal defecte\([^[:alnum:]]\)/\1recisió decimal predeterminada\2/g
s/\b\([Pp]\)recisió per defecte\([^[:alnum:]]\)/\1recisió predeterminada\2/g
  s/\b\([Pp]\)recisió decimal per defecte\([^[:alnum:]]\)/\1recisió decimal predeterminada\2/g
s/\b\([Pp]\)rojecte\(s\|\) per defecte\([^[:alnum:]]\)/\1rojecte\2 predeterminat\2\3/g
  s/\bprojectes per &predeterminat\([^[:alnum:]]\)/projectes pre\&determinats\1/g
s/\b\([Pp]\)ropietats actuals com per defecte\([^[:alnum:]]\)/\1ropietats actuals com predeterminades\2/g
s/\b\([Qq]\)ualitat per defecte\([^[:alnum:]]\)/\1ualitat predeterminada\2/g
s/\bque \(ve \|\)per defecte\([^[:alnum:]]\)/que \1de manera predeterminada\2/g
s/\b\([Rr]\)àtio màxima de compartició per defecte\([^[:alnum:]]\)/\1àtio màxima de compartició predeterminada\2/g
s/\b\([Rr]\)ecordatori\(s\|\) per defecte\([^[:alnum:]]\)/\1ecordatori\2 predeterminat\2\3/g
s/\b\([Rr]\)ecurs per defecte\([^[:alnum:]]\)/\1ecurs predeterminat\2/g
s/\b\([Rr]\)egistre per defecte\([^[:alnum:]]\)/\1egistre predeterminat\2/g
s/\b\([Rr]\)ecursos per defecte\([^[:alnum:]]\)/\1ecursos predeterminats\2/g
s/\b\([Rr]\)esolució per defecte\([^[:alnum:]]\)/\1esolució predeterminada\2/g
  s/\b\([Rr]\)esolució per &defecte\([^[:alnum:]]\)/\1esolució pre\&determinada\2/g
s/\b\([Ss]\)'ha establit per defecte\([^[:alnum:]]\)/\1'ha establert de manera predeterminada\2/g
s/\b\([Ss]\)eguidor per defecte\([^[:alnum:]]\)/\1eguidor predeterminat\2/g
s/\b\([Ss]\)eleccionada per defecte\([^[:alnum:]]\)/\1eleccionada de manera predeterminada\2/g
s/\b\([Ss]\)ervidor per defecte\([^[:alnum:]]\)/\1ervidor predeterminat\2/g
s/\b\([Ss]\)essió per defecte\([^[:alnum:]]\)/\1essió predeterminada\2/g
s/\b\([Ss]\)imple per defecte\([^[:alnum:]]\)/\1enzill de manera predeterminada\2/g
s/\b\([Tt]\)asca per defecte\([^[:alnum:]]\)/\1asca predeterminada\2/g
s/\b\([Tt]\)asques per defecte\([^[:alnum:]]\)/\1asques predeterminades\2/g
s/\b\([Tt]\)ecla per defecte\([^[:alnum:]]\)/\1ecla predeterminada\2/g
s/\b\([Tt]\)ecles numèriques per defecte\([^[:alnum:]]\)/\1ecles numèriques predeterminades\2/g
s/\b\([Tt]\)ema \(d'impressió \|\)per defecte\([^[:alnum:]]\)/\1ema \2predeterminat\3/g
s/\b\([Tt]\)emps compartit per defecte\([^[:alnum:]]\)/\1emps compartit de manera predeterminada\2/g
s/\b\([Tt]\)emps per defecte\([^[:alnum:]]\)/\1emps predeterminat\2/g
s/\b\([Tt]\)emps màxim de sembrat per defecte\([^[:alnum:]]\)/\1emps màxim de sembrat predeterminat\2/g
s/\b\([Tt]\)ext per defecte\([^[:alnum:]]\)/\1ext predeterminat\2/g
s/\b\([Tt]\)indrà per defecte\([^[:alnum:]]\)/\1indrà de manera predeterminada\2/g
s/\b\([Tt]\)ipus de lletra per defecte\([^[:alnum:]]\)/\1ipus de lletra predeterminat\2/g
s/\b\([Tt]\)ítol per defecte\([^[:alnum:]]\)/\1ítol predeterminat\2/g
s/\b\([Uu]\)bicació per defecte\([^[:alnum:]]\)/\1bicació predeterminada\2/g
s/\b\([Uu]\)nitat per defecte\([^[:alnum:]]\)/\1nitat predeterminada\2/g
s/\b\([Uu]\)suari\(s\|\) per defecte\([^[:alnum:]]\)/\1suari\2 predeterminat\2\3/g
s/\b\([Uu]\)sar per defecte\([^[:alnum:]]\)/\1sar de manera predeterminada\2/g
s/\b\(guarden\|usarà\) per defecte\([^[:alnum:]]\)/\1 de manera predeterminada\2/g
s/\b\([Vv]\)alor\(s\|\) per defecte\([^[:alnum:]]\)/\1alor\2 predeterminat\2\3/g
  s/\b\([Vv]\)alor per &defecte\([^[:alnum:]]\)/\1alor pre\&determinat\2/g
s/\b\([Vv]\)enciment per defecte\([^[:alnum:]]\)/\1enciment predeterminat\2/g
s/\b\([Vv]\)ersió per defecte\([^[:alnum:]]\)/\1ersió predeterminada\2/g
s/\b\([Vv]\)olums per defecte\([^[:alnum:]]\)/\1olums predeterminats\2/g
#
s/\b\(CMYK\|codi WBS\|Gris\|RGB\) per defecte\([^[:alnum:]]\)/\1 predeterminat\2/g
  s/\bPer defecte a\([^[:alnum:]]\)/De manera predeterminada a\1/g
  s/\bPer defecte del\([^[:alnum:]]\)/De manera predeterminada del\1/g
  s/\bPer defecte des de\([^[:alnum:]]\)/De manera predeterminada des de\1/g
  s/\bPer defecte és\([^[:alnum:]]\)/De manera predeterminada és\1/g
  s/\bPer defecte s'usa\([^[:alnum:]]\)/De manera predeterminada s'usa\1/g
  s/\bel qual és el per defecte\([^[:alnum:]]\)/el qual que és el predeterminat\1/g
  s/\bla qual és la per defecte\([^[:alnum:]]\)/la qual que és la predeterminada\1/g
s/\"Per defecte\(\"\|:\| (\)/\"Predeterminat\1/g
  s/\bPer defecte (\([^[:alnum:]]\)/De manera predeterminada (\1/g
s/\b\([Vv]\)alor\(s\|\) per defecte\([^[:alnum:]]\)/\1alor\2 predeterminat\2\3/g
  s/\b\([Vv]\)alor per de&fecte\([^[:alnum:]]\)/\1alor pre\&determinat\2/g
  s/\b\([Vv]\)alors per &defecte\([^[:alnum:]]\)/\1alors pre\&determinats\2/g
  s/-per defecte-\([^[:alnum:]]\)/-de manera predeterminada-\1/g
  s/<Per defecte>\([^[:alnum:]]\)/<Predeterminada>\1/g
  s/(Per defecte:\([^[:alnum:]]\)/(De manera predeterminada:\1/g
  s/\. Per defecte:\([^[:alnum:]]\)/\. De manera predeterminada:\1/g
  s/(per defecte \(aquest \|la drecera \|\)és\([^[:alnum:]]\)/(de manera predeterminada \1és\2/g
  s/(per defecte\([,:]\)\([^[:alnum:]]\)/(de manera predeterminada\1\2/g
  s/(Per defecte)\([^[:alnum:]]\)/(De manera predeterminada)\1/g
  s/(per defecte)\([^[:alnum:]]\)/(de manera predeterminada)\1/g
    s/comportament per defecte\([^[:alnum:]]\)/comportament predeterminat\1/g
  s/per defecte)\([^[:alnum:]]\)/de manera predeterminada)\1/g
  s/\bPer defecte actual\([^[:alnum:]]\)/De manera predeterminada és l'actual\1/g
  s/\bPer defecte de l'usuari\(\"\|:\| (\)/Predeterminats de l'usuari\1/g
  s/\bdeixar buit per defecte\(\"\|:\| (\)/de manera predeterminada es deixa buit\1/g
s/\bPer defecte,\([^[:alnum:]]\)/De manera predeterminada,\1/g
  s/\bPer defecte \(aquest és\|aquest fitxer\|depèn\|es mostren\|per als fitxers\|s'usarà\|se us demanarà\)\([^[:alnum:]]\)/De manera predeterminada, \1\2/g
  s/\bPer defecte la \(<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)documentació de PHP\([^[:alnum:]]\)/De manera predeterminada, la \1\2documentació de PHP\3/g
  s/\bescriptori predeterminada\([^[:alnum:]]\)/escriptori predeterminat\1/g
#
s/-omissió-\([^[:alnum:]]\)/-predeterminat-\1/g
s/«omissió»\([^[:alnum:]]\)/«predeterminat»\1/g
s/omissió[)$]/predeterminat)/g
s/\"omissió\"/\"predeterminat\"/g
s/; per defecte;\([^[:alnum:]]\)/; predeterminat;\1/g
s/, per defecte\([^[:alnum:]]\)/, de manera predeterminada\1/g
s/\bes carregarà per defecte\([^[:alnum:]]\)/es carregarà de manera predeterminada\1/g
s/\bopcions d'inicialització per defecte\([^[:alnum:]]\)/opcions d'inicialització predeterminades\1/g
s/\bque per defecte és\([^[:alnum:]]\)/que de manera predeterminada és\1/g
s/\bs'oculten per defecte\([^[:alnum:]]\)/s'oculten de manera predeterminada\1/g
# s/\bper defecte:\([^[:alnum:]]\)/de manera predeterminada:\1/g # no es recomana
#
s/\bactivar per defecte\([^[:alnum:]]\)/activar de manera predeterminada\1/g
s/\bEls nombres s'alineen a la dreta per defecte\([^[:alnum:]]\)/De manera predeterminada, els nombres s'alineen a la dreta\1/g
s/\bels per defecte\([^[:alnum:]]\)/els predeterminats\1/g
s/\bes retornarà el valor especificat per defecte\([^[:alnum:]]\)/de manera predeterminada, es retornarà el valor especificat\1/g
s/\bi per defecte és 0\([^[:alnum:]]\)/i de manera predeterminada és 0\1/g
s/\bTotes les cel·les es protegeixen per defecte\([^[:alnum:]]\)/De manera predeterminada, es protegeixen totes les cel·les\1/g
s/\by és \(0\|zero\) per defecte\([^[:alnum:]]\)/y de manera predeterminada és \1\2/g
# #
# # # # # # # # # # # # # #
#
# (qüestió d'ordre)
s/\bformat actual com a predefinició\.\([^[:alnum:]]\)/format actual com a una predefinició nova\.\1/g
s/\bNova predefinició\([^[:alnum:]]\)/Predefinició nova\1/g
s/\bPredefinició de llista de reproducció sense nom\([^[:alnum:]]\)/Predefinició sense nom de llista de reproducció\1/g
s/\bgrans \(claus\|lletres X\)\([^[:alnum:]]\)/\1 grans\2/g
# aquí
s/\bSi aquí introduïu\([^[:alnum:]]\)/Si introduïu aquí\1/g
# diferents
s/\bdiferents formats de fitxer\([^[:alnum:]]\)/formats de fitxer diferents\1/g
  s/\bentre diferents vistes i entre <b>diferents disposicions\([^[:alnum:]]\)/entre vistes i <b>disposicions diferents\1/g
s/\bdiferents \(formats\|programes\|significats\|vistes\)\([^[:alnum:]]\)/\1 diferents\2/g
# dobles
s/\bdobles espais\([^[:alnum:]]\)/espais dobles\1/g
# nou(s) / nova(es)
  s/\bal nou URL\([^[:alnum:]]\)/a l'URL nou\1/g
  s/\bdel nou arc de cònica\([^[:alnum:]]\)/de l'arc de cònica nou\1/g
  s/\bel nou arc de cònica\([^[:alnum:]]\)/l'arc de cònica nou\1/g
  s/\bdel nou arc\([^[:alnum:]]\)/de l'arc nou\1/g
  s/\bel nou arc\([^[:alnum:]]\)/l'arc nou\1/g
  s/\bnou aspecte i comportament\([^[:alnum:]]\)/aspecte i el comportament nous\1/g
    s/\bdel aspecte\([^[:alnum:]]\)/de l'aspecte\1/g
s/\bnou \(article\|aspecte\|calendari\|camp\|cercle\|certificat\|compte\|contacte\|contenidor\|contingut\|diccionari\|directori de treball\|element\|fitxer\|graf\|menú\|missatge\|nom\|observador\|paràmetre\|polígon\|projecte\|punt\|segment\|símbol\|tipus\|triangle\|usuari\|valor numèric\|valor\|vector\|venciment\)\([^[:alnum:]]\)/\1 nou\2/g
  s/\bal usuari nou\([^[:alnum:]]\)/a l'usuari nou\1/g
s/\bnous \(articles\|bits\|camps\|certificats\|col·laboradors\|comptes\|contactes\|contenidors\|continguts\|diccionaris\|dispositius\|elements\|fitxers\|grafs\|menús\|missatges\|noms\|projectes\|punts\|símbols\|usuaris\|valors numèrics\|valors\)\([^[:alnum:]]\)/\1 nous\2/g
  s/\bla nova \(cúbica\|hipèrbola\|paràbola\|recta\)\([^[:alnum:]]\)/la \1 nova\2/g
  s/\bla nova l'etiqueta\([^[:alnum:]]\)/l'etiqueta nova\1/g
  s/\bla nova \(el·lipse\)\([^[:alnum:]]\)/l'\1 nova\2/g
  s/\bnova corba cúbica\([^[:alnum:]]\)/corba cúbica nova\1/g
  s/\bnova corba quadràtica\([^[:alnum:]]\)/corba quadràtica nova\1/g
  s/\bnova corba racional\([^[:alnum:]]\)/corba racional nova\1/g
s/\bnova \(activació\|carpeta\|cònica\|coordenada\|corba\|el·lipse\|entrada\|extensió web\|finestra\|frase de pas\|identitat\|línia poligonal\|longitud\|macro\|mida\|política\|semirecta\|tauleta\|ubicació\|unitat\)\([^[:alnum:]]\)/\1 nova\2/g
  s/\bfes noves amistats i no deixis\([^[:alnum:]]\)/fes amistats noves i no les deixis\1/g
s/\bnoves \(dades\|finestres\|imatges\|iniciatives\|persones\)\([^[:alnum:]]\)/\1 noves\2/g
# petits
s/\bpetits grups\([^[:alnum:]]\)/grups petits\1/g
# petites
s/\bpetites característiques\([^[:alnum:]]\)/característiques petites\1/g
# següent(s)
s/\bel següent error\([^[:alnum:]]\)/l'error següent\1/g
s/\bdel següent error\([^[:alnum:]]\)/de l'error següent\1/g
s/\bsegüent \(camí\|captura de pantalla\|clau privada\|connector\|controlador\|element\|expansió\|fitxer\|fitxer de desament automàtic\|formulari\|nivell\|nombre\|número\|objecte\|opció\|paquet\|paraula clau\|posició\|usuari\|tipus de fitxer\|variable de posició\|variable\)\([^[:alnum:]]\)/\1 següent\2/g
  s/\bsegüents tipus de fitxer\(s\|\)\([^[:alnum:]]\)/tipus de fitxer següents\2/g
   s/\bal element següent\([^[:alnum:]]\)/a l'element següent\1/g
   s/\bel element següent\([^[:alnum:]]\)/l'element següent\1/g
s/\bsegüents \(aplicacions\|calculadores\|camins\|cel·les\|connectors\|contenidors\|controladors\|errors i avisos\|errors\|expansions\|fitxers\|fitxers de desament automàtic\|gestos\|nivells\|nombres\|números\|objectes\|opcions\|paquets\|paraules clau\|posicions\|símbols\|tipus\|usuaris\|variables de posició\|variables\)\([^[:alnum:]]\)/\1 següents\2/g
  s/\bavançarà a la següent etapa\([^[:alnum:]]\)/avançarà fins a l'etapa següent\1/g
  s/\bfitxer següent «object»\([^[:alnum:]]\)/fitxer «object» següent\1/g
  s/\bfitxer següent d'autodesat/fitxer d'autodesat següent/
  s/\bfitxer següent GPX\([^[:alnum:]]\)/fitxer GPX següent\1/g
  s/\bl'element següent de menú\([^[:alnum:]]\)/l'element de menú següent\1/g
  s/\bla següent ordre\([^[:alnum:]]\)/l'ordre següent\1/g
# #
# # # # # # # # # # # # # #
#
# en anglès?
s/\bA l'Expression\([^[:alnum:]]\)/A l'expressió\1/g
s/\bAlex Fiestas and Aleix Pol\([^[:alnum:]]\)/Alex Fiestas i Aleix Pol\1/g
s/\bel Qt Framework\([^[:alnum:]]\)/el marc de treball de les Qt\1/g
s/\bElisa contributors\([^[:alnum:]]\)/els col·laboradors d'Elisa\1/g
s/\bKDE Community\([^[:alnum:]]\)/Comunitat KDE\1/g
s/\bKDE Information Control Module Samba Team\([^[:alnum:]]\)/Equip Samba del mòdul de control d'informació del KDE\1/g
s/\bKDE Connect Team\([^[:alnum:]]\)/Equip del KDE Connect\1/g
#
s/\bLabPlot authors\([^[:alnum:]]\)/Autors del LabPlot\1/g
  s/\bLabPlot Team\([^[:alnum:]]\)/Equip del LabPlot\1/g
s/\b\([Tt]\)he \(Kate\) \([Aa]\)uthors\([^[:alnum:]]\)/Els autors del \2\4/g
s/\b\([Tt]\)he \(KDE\) \([Dd]\)evelopers\([^[:alnum:]]\)/Els desenvolupadors del \2\4/g
s/\b\([Tt]\)he \(Akonadi\|Ark\) \([Dd]\)eveloper\(s\|\)\([^[:alnum:]]\)/Els desenvolupadors de l'\2\5/g
s/\b\([Tt]\)he \(curconvd\|Dolphin\|Karbon\|Karp\|KDE\|KEuroCalc\|KFM\/Konqueror\|Kleopatra\|Konqueror\) \([Dd]\)evelopers\([^[:alnum:]]\)/Els desenvolupadors del \2\4/g
s/\bThe KDE System Monitor Developers\([^[:alnum:]]\)/Els desenvolupadors del Monitor del sistema de KDE\1/g
s/\bApple Safari Developers\([^[:alnum:]]\)/Els desenvolupadors del Safari d'Apple\1/g
s/\bPlasma developers\([^[:alnum:]]\)/Els desenvolupadors del Plasma\1/g
s/ & the KDE Edu Developers\([^[:alnum:]]\)/ i els desenvolupadors del KDE Edu\1/g
#
s/\b\(Maui\|Nitrux\) \([Dd]\)evelopment \([Tt]\)eam\([^[:alnum:]]\)/L'equip de desenvolupament de \1\4/g
s/\b\([Tt]he \|\)\(Kopete\|KPhotoAlbum\) \([Dd]\)evelopment \([Tt]\)eam\([^[:alnum:]]\)/L'equip de desenvolupament del \2\5/g
#
s/\bby the Konversation \([Tt]\)eam\([^[:alnum:]]\)/per l'equip Konversation\2/g
s/\b\([Tt]\)he Calligra \(Plan\|Sheets\|Stage\|Words\) \([Tt]\)eam\([^[:alnum:]]\)/L'equip \2 del Calligra\4/g
s/\b\([Tt]\)he \(KDE\|KEXI\|Kirogi\|Yakuake\|Plan\|Sheets\|Stage\|Words\) \([Tt]\)eam\([^[:alnum:]]\)/L'equip \2\4/g
s/\b\([Tt]\)he ghostwriter \([Tt]\)eam\([^[:alnum:]]\)/L'equip de ghostwriter\3/g
s/\bThe KJournald Developers\([^[:alnum:]]\)/Els desenvolupadors del KJournald\1/g
s/\bThe Oxygen Project\([^[:alnum:]]\)/El projecte Oxygen\1/g
#
s/\bSolid Device Actions \([Tt]\)eam\([^[:alnum:]]\)/L'equip accions de dispositiu del Solid\2/g
#
s/\b\(Angelfish\) \([Dd]\)evelopers\([^[:alnum:]]\)/Els desenvolupadors de l'\1\3/g
s/\b\(Calligra\|DrKonqi2\|KDE\|Kopete\|KTimeTracker\|Rocs\) \([Dd]\)evelopers\([^[:alnum:]]\)/Els desenvolupadors del \1\3/g
s/\bMichael Pyne, and others\([^[:alnum:]]\)/Michael Pyne i altres\1/g
# #
# # # # # # # # # # # # # #
#
# gènere
s/\baccions estan desactivats\([^[:alnum:]]\)/accions estan desactivades\1/g
s/\bés el \(menys\|més\) restrictiu\([^[:alnum:]]\)/és la \1 restrictiva\2/g
# #
# # # # # # # # # # # # # #
#
# plurals redundants
s/\b\([Aa]\)ssociacions de fitxers\([^[:alnum:]]\)/\1ssociacions de fitxer\2/g
s/\b\([Aa]\)gents de correus\([^[:alnum:]]\)/\1gents de correu\2/g
  s/\bo «appimages\([^[:alnum:]]\)/o les «appimage\1/g
  s/\btambé AppImages\([^[:alnum:]]\)/també les AppImages\1/g
s/\b\([Aa]\)ppImages\([^[:alnum:]]\)/\1ppImage\2/g
s/\b\([Bb]\)arres de menús\([^[:alnum:]]\)/\1arres de menú\2/g
s/\b\([Bb]\)otons de fletxes\([^[:alnum:]]\)/\1otons de fletxa\2/g
s/\b\([Cc]\)arpetes d'índexs\([^[:alnum:]]\)/\1arpetes d'índex\2/g
s/\b\([Cc]\)ites de blocs\([^[:alnum:]]\)/\1ites de bloc\2/g
s/\b\([Cc]\)odis de colors\([^[:alnum:]]\)/\1odis de color\2/g
s/\b\([Cc]\)onsells d'eines\([^[:alnum:]]\)/\1onsells d'eina\2/g
s/\b\([Ee]\)ines d'imatges\([^[:alnum:]]\)/\1ines d'imatge\2/g
s/\b\([Ee]\)mojis\([^[:alnum:]]\)/\1moji\2/g
s/\b\([Ee]\)Pubs\([^[:alnum:]]\)/\1Pub\2/g
s/\b\([Ee]\)spais de colors\([^[:alnum:]]\)/\1spais de color\2/g
s/\b\([Ee]\)spais de noms\([^[:alnum:]]\)/\1spais de nom\2/g
s/\b\([Ee]\)squemes de colors\([^[:alnum:]]\)/\1squemes de color\2/g
s/\b\([Ee]\)tiquetes de noms\([^[:alnum:]]\)/\1tiquetes de nom\2/g
s/\b\([Ee]\)xtensions de fitxers\([^[:alnum:]]\)/\1xtensions de fitxer\2/g
s/\b\([Ff]\)itxers d'imatges\([^[:alnum:]]\)/\1itxers d'imatge\2/g
s/\b\([Ff]\)itxers de perfils\([^[:alnum:]]\)/\1itxers de perfil\2/g
s/\b\([Ff]\)itxers de projectes\([^[:alnum:]]\)/\1itxers de projecte\2/g
s/\b\([Ff]\)itxers de temes\([^[:alnum:]]\)/\1itxers de tema\2/g
s/\b\([Ff]\)itxers de registres\([^[:alnum:]]\)/\1itxers de registre\2/g
s/\b\([Ff]\)latpaks\([^[:alnum:]]\)/\1latpak\2/g
s/\b\([Ff]\)ormats de fitxers\([^[:alnum:]]\)/\1ormats de fitxer\2/g
s/\b\([Nn]\)oms d'usuaris\([^[:alnum:]]\)/\1oms d'usuari\2/g
s/\b\([Ii]\)nformes d'errors\([^[:alnum:]]\)/\1nformes d'error\2/g
s/\b\([Ii]\)nterfície dels connectors\([^[:alnum:]]\)/\1nterfície de connectors\2/g
s/\biPads\([^[:alnum:]]\)/iPad\1/g
s/\biPhones\([^[:alnum:]]\)/iPhone\1/g
s/\blímits de velocitats diferents\([^[:alnum:]]\)/límits diferents de velocitat\1/g
s/\b\([Mm]\)agnets\([^[:alnum:]]\)/\1agnet\2/g
s/\b\([Mm]\)arkDowns\([^[:alnum:]]\)/\1arkDown\2/g
s/\b\([Mm]\)arques de llocs\([^[:alnum:]]\)/\1arques de lloc\2/g
s/\b\([Bb]\)ombolles de missatges\([^[:alnum:]]\)/\1ombolles de missatge\2/g
  s/\b\([Bb]\)ombolles de missatge nous\([^[:alnum:]]\)/\1ombolles de missatge nou\2/g
s/\b\([Mm]\)òduls d'idiomes\([^[:alnum:]]\)/\1òduls d'idioma\2/g
s/\b\([Nn]\)oms d'usuaris bloquejats\([^[:alnum:]]\)/\1oms d'usuari bloquejats\2/g
s/\b\([Nn]\)oms de canals\([^[:alnum:]]\)/\1oms de canal\2/g
s/\b\([Nn]\)oms de carpetes\([^[:alnum:]]\)/\1oms de carpeta\2/g
s/\b\([Nn]\)oms de fitxers\([^[:alnum:]]\)/\1oms de fitxer\2/g
s/\b\([Nn]\)otificacions de sales\([^[:alnum:]]\)/\1otificacions de sala\2/g
s/\b\([Nn]\)úmeros de línies\([^[:alnum:]]\)/\1úmeros de línia\2/g
s/\bOpenStreetMaps\([^[:alnum:]]\)/OpenStreetMap\1/g
s/\b\([Pp]\)aquets d'idiomes\([^[:alnum:]]\)/\1aquets d'idioma\2/g
s/\b\([Pp]\)araules claus\([^[:alnum:]]\)/\1araules clau\2/g
s/\b\([Pp]\)atrons de les carpetes\([^[:alnum:]]\)/\1atrons de carpeta\2/g
s/\b\([Pp]\)atrons dels fitxers\([^[:alnum:]]\)/\1atrons de fitxer\2/g
s/\b\([Pp]\)lantilla de col·leccions\([^[:alnum:]]\)/\1lantilla de col·lecció\2/g
s/\b\([Pp]\)lantilles d'informes\([^[:alnum:]]\)/\1lantilles d'informe\2/g
s/\b\([Pp]\)lantilles de missatges\([^[:alnum:]]\)/\1lantilles de missatge\2/g
s/\b\([Pp]\)lantilles de projectes\([^[:alnum:]]\)/\1lantilles de projecte\2/g
s/\b\([Pp]\)\([òo]\)dcast\(s\|\)\([^[:alnum:]]\)/\1òdcast\4/g
s/\b\([Pp]\)olítiques d'activitats\([^[:alnum:]]\)/\1olítiques d'activitat\2/g
s/\b\([Rr]\)ecurs\(os\|\) de llibretes d'adreces\([^[:alnum:]]\)/\1ecurs\2 de llibreta d'adreces\3/g
s/\b\([Tt]\)orrents\([^[:alnum:]]\)/\1orrent\2/g
  s/\bmés tipus de fitxer\([^[:alnum:]]\)/més tipus de fitxers\1/g
s/\b\([Xx]\)ats de grups\([^[:alnum:]]\)/\1ats de grup\2/g
# #
# # # # # # # # # # # # # #
#
s/\bActua només en els elements\([^[:alnum:]]\)/Actua només sobre els elements\1/g
s/\b\([Pp]\)araules enganxades\([^[:alnum:]]\)/\1araules compostes\2/g
# #
# # # # # # # # # # # # # #
#
# amb
s/\bartistes nous i experimentats\([^[:alnum:]]\)/artistes nous i amb experiència\1/g
s/\bComencem en aquest efecte\([^[:alnum:]]\)/Comencem amb aquest efecte\1/g
s/\b\([Cc]\)onforme VS-NfD\([^[:alnum:]]\)/\1onforme amb VS-NfD\2/g
s/\b\([Cc]\)onnecta a Internet directament\([^[:alnum:]]\)/\1onnecta amb Internet directament\2/g
s/\b\([Cc]\)onnecta només a servidors\([^[:alnum:]]\)/\1onnecta només amb servidors\2/g
s/\bconnectades a \(ports en sèrie\|un amfitrió\|un servidor\|una xarxa\)\([^[:alnum:]]\)/connectades amb \1\2/g
s/\b\([Cc]\)onnecta\(des\|[rt]\) a \(aquest\|cap paquet\|diversos\|Internet\)\([^[:alnum:]]\)/\1onnecta\2 amb \3\4/g
s/\b\([Cc]\)onnexió a Internet\([^[:alnum:]]\)/\1onnexió amb Internet\2/g
s/\bconnexions a <resource>localhost\([^[:alnum:]]\)/connexions amb <resource>localhost\1/g
s/\bDeixeu-ho en blanc si no coincideix cap classe\([^[:alnum:]]\)/Deixeu-ho en blanc si no coincideix amb cap classe\1/g
s/\ben connectar a\([^[:alnum:]]\)/en connectar amb\1/g
s/\b\([Ee]\)nlla\(çar\|cen\) a \(diversos\|subcontenidors\)\([^[:alnum:]]\)/\1nlla\2 amb \3\4/g
s/\bIdeogrames de compatibilitats CJK\([^[:alnum:]]\)/Ideogrames de compatibilitat amb CJK\1/g
s/\bmaterial llicenciat\([^[:alnum:]]\)/material amb llicència\1/g
s/\bper a connectar a\([^[:alnum:]]\)/per a connectar amb\1/g
s/\b\([Pp]\)inzell fi («rigger»)\([^[:alnum:]]\)/\1inzell amb truges\2/g
s/\bponts a Matrix\([^[:alnum:]]\)/ponts amb Matrix\1/g
# amb l'
s/\b\([Aa]\)ssociada a l'\(esdeveniment\|ID\)\([^[:alnum:]]\)/\1ssociada amb l'\2\3/g
s/\b\([Cc]\)onne\(ctada\|ctat\|ctats\|cti\|xió\) a l'ordinador\([^[:alnum:]]\)/\1onne\2 amb l'ordinador\3/g
s/\b\([Cc]\)ontacteu l'administrador del sistema\([^[:alnum:]]\)/\1ontacteu amb l'administrador del sistema\2/g
s/\b\([Cc]\)rea un enllaç a l'URL\([^[:alnum:]]\)/\1rea un enllaç amb l'URL\2/g
s/\bintent de connexió a l'ordinador\([^[:alnum:]]\)/intent de connexió amb l'ordinador\1/g
s/\b\([Vv]\)isualitza les fotografies a l'estil de Matrix\([^[:alnum:]]\)/\1isualitza les fotografies amb l'estil de Matrix\2/g
s/\bvostre telescopi a l'objectiu\([^[:alnum:]]\)/vostre telescopi amb l'objectiu\1/g
# amb el(s)
s/\bajustar a les dades\([^[:alnum:]]\)/ajustar amb les dades\1/g
s/\bal qual voleu connectar\([^[:alnum:]]\)/amb el qual voleu connectar\1/g
s/\balinea el menú contextual del contenidor al plafó\([^[:alnum:]]\)/alinea el menú contextual del contenidor amb el plafó\1/g
s/\bassociat al projecte\([^[:alnum:]]\)/associat amb el projecte\1/g
s/\bcom aparellar les categories del fitxer a les vostres categories\([^[:alnum:]]\)/com aparellar les categories del fitxer amb les vostres categories\1/g
s/\b\([Cc]\)onnecta\(r\|\) a\(l\|\) \(GroupWise\|servei\|SERVIDOR\|servidor\)\([^[:alnum:]]\)/\1onnecta\2 amb el \4\5/g
s/\b\(connectada\|connectarà\|connexions\|telescopi\|vincular\) al port\([^[:alnum:]]\)/\1 amb el port\2/g
s/\b\([Cc]\)onnectar al \(dorsal\|gestor web\|vostre\)\([^[:alnum:]]\)/\1onnectar amb el \2\3/g
s/\bconnectat a StellarMate\([^[:alnum:]]\)/connectat amb l'StellarMate\1/g
s/\bconnectat al \(servei\|terminal\|vostre\)\([^[:alnum:]]\)/connectat amb el \1\2/g
s/\bconnecteu la unitat al dispositiu\([^[:alnum:]]\)/connecteu la unitat amb el dispositiu\1/g
s/\bconnexió al vostre compte\([^[:alnum:]]\)/connexió amb el vostre compte\1/g
s/\bconnexió amb èxit al servidor\([^[:alnum:]]\)/connexió amb èxit amb el servidor\1/g
s/\b\([Ee]\)nllaçat de fitxers a les activitats\([^[:alnum:]]\)/\1nllaçat de fitxers amb les activitats\2/g
s/\bfer-los servir a KTurtle\([^[:alnum:]]\)/fer-los servir amb el KTurtle\1/g
s/\bi els pot vincular al fitxer de desament KRA\([^[:alnum:]]\)/i les pot vincular amb el fitxer de desament KRA\1/g
s/\bL'anàlisi ha fallat el codi de sortida\([^[:alnum:]]\)/L'anàlisi ha fallat amb el codi de sortida\1/g
s/\bLa imatge té un perfil adjuntat que el Krita no pot editar\([^[:alnum:]]\)/La imatge té un perfil adjuntat amb el qual el Krita no pot editar\1/g
  s/\bURL a connectar\([^[:alnum:]]\)/Els URL amb els que connectar\1/g
s/\b\(Lector\|Ordinador\|Port\|URL\) a connectar\([^[:alnum:]]\)/\1 amb el qual connectar\2/g
s/\bmés fàcil i el menú\([^[:alnum:]]\)/més fàcil amb el menú\1/g
s/\b\(Ordinador\|Port\) a connectar-se\([^[:alnum:]]\)/\1 amb el que connectar-se\2/g
s/\bTrieu la connexió a servidor\([^[:alnum:]]\)/Trieu la connexió amb el servidor\1/g
s/\bsincronitzar-lo al Kontact\([^[:alnum:]]\)/sincronitzar-lo amb el Kontact\1/g
s/\bURL dels fitxers a enviar adjuntats al missatge\([^[:alnum:]]\)/URL dels fitxers que s'enviaran adjuntats amb el missatge\1/g
s/\bVincula les tecles del controlador remot de la Wii als botons\([^[:alnum:]]\)/Vincula les tecles del controlador remot de la Wii amb els botons\1/g
# amb la / les
s/\bafegint l'enllaç a la carpeta\([^[:alnum:]]\)/afegint l'enllaç amb la carpeta\1/g
s/\bajustar-se a la finestra\([^[:alnum:]]\)/ajustar-se amb la finestra\1/g
s/\balinea a la fila\([^[:alnum:]]\)/alinea amb la fila\1/g
s/\bAlinea el contorn de la vista prèvia del pinzell a la quadrícula de píxels\([^[:alnum:]]\)/Alinea el contorn de la vista prèvia del pinzell amb la quadrícula de píxels\1/g
s/\balinear el contorn del pinzell a la quadrícula de píxels\([^[:alnum:]]\)/alinear el contorn del pinzell amb la quadrícula de píxels\1/g
s/\bassociar el camí a la biblioteca d'àlbums\([^[:alnum:]]\)/associar el camí amb la biblioteca d'àlbums\1/g
s/\bcompartir a la selecció\([^[:alnum:]]\)/compartir amb la selecció\1/g
s/\bCompte enllaçat a la targeta\([^[:alnum:]]\)/Compte enllaçat amb la targeta\1/g
s/\b\([Cc]\)onnecta\([rt]\|r-se\|r-vos\|\) a la \(càmera\|base de dades\|impressora\|sala\|xarxa\)\([^[:alnum:]]\)/\1onnecta\2 amb la \3\4/g
s/\bconnectada a la visualització\([^[:alnum:]]\)/connectada amb la visualització\1/g
s/\b\([Cc]\)onnecteu\(-vos\|\) a la xarxa\([^[:alnum:]]\)/\1onnecteu\2 amb la xarxa\3/g
s/\b\([Cc]\)onnexió a la \(base de dades\|xarxa\)\([^[:alnum:]]\)/\1onnexió amb la \2\3/g
s/\bconnexió bàsica a la base de dades\([^[:alnum:]]\)/connexió bàsica amb la base de dades\1/g
s/\bconnexions a les bases de dades\([^[:alnum:]]\)/connexions amb les bases de dades\1/g
s/\benllaç %1 a la carpeta\([^[:alnum:]]\)/enllaç %1 amb la carpeta\1/g
s/\benllaç simbòlic a la carpeta\([^[:alnum:]]\)/enllaç simbòlic amb la carpeta\1/g
s/\benllaça els fitxers a la carpeta\([^[:alnum:]]\)/enllaça els fitxers amb la carpeta\1/g
s/\bestà connectat a la mateixa xarxa\([^[:alnum:]]\)/està connectat amb la mateixa xarxa\1/g
s/\binteractuar a la nostra comunitat\([^[:alnum:]]\)/interactuar amb la nostra comunitat\1/g
s/\bl'enllaç %1 a la carpeta\([^[:alnum:]]\)/l'enllaç %1 amb la carpeta\1/g
s/\bmemòria de traducció i a la funció\([^[:alnum:]]\)/memòria de traducció i amb la característica\1/g
s/\bNo hi ha cap \(col·lecció\|element\) a compartir\([^[:alnum:]]\)/No hi ha cap \1 que s'hagi de compartir\2/g
s/\bper Google a la Summer\([^[:alnum:]]\)/per Google amb la Summer\1/g
s/\bprocessament a la interfície\([^[:alnum:]]\)/processament amb la interfície\1/g
s/\bSegur que voleu continuar la connexió[?]/Voleu continuar amb la connexió\?/g
s/\bTrieu la instància a la qual voleu connectar\([^[:alnum:]]\)/Trieu la instància amb la qual voleu connectar\1/g
# amb un(a)
s/\bConnecta a una xarxa\([^[:alnum:]]\)/Connecta amb una xarxa\1/g
s/\bconnectar-se a un servidor\([^[:alnum:]]\)/connectar-se amb un servidor\1/g
s/\b\([Cc]\)onnexió a una base de dades\([^[:alnum:]]\)/\1onnexió amb una base de dades\2/g
s/\bconnexió nova a una xarxa\([^[:alnum:]]\)/connexió nova amb una xarxa\1/g

# into / on / onto / under
# #
# # # # # # # # # # # # # #
#
# cap a dins
s/\b\([Mm]\)o\(tra\|u\|ure\|ure'ls\|veu\|veu-l[ao]\) les col·leccions o els elements\( cap\|\) a dins\([^[:alnum:]]\)/\1o\2 les col·leccions o els elements cap a dins\4/g
# cap a dins d'un àlbum
s/\b\([Mm]\)o\(tra\|u\|ure\|ure'ls\|veu\|veu-l[ao]\) les imatges seleccionades a un àlbum\([^[:alnum:]]\)/\1o\2 les imatges seleccionades cap a dins d'un àlbum\3/g
# cap a dins d'una finestra
s/\b\([Mm]\)ou la conversa a una finestra\([^[:alnum:]]\)/\1ou la conversa cap a dins d'una finestra\2/g
# cap a dins de l'àlbum
s/\b\([Ii]\)mporta\(r\|\) a l'àlbum\([^[:alnum:]]\)/\1mporta\2 cap a dins de l'àlbum\3/g
  s/\bTrieu de les carpetes per a importar\([^[:alnum:]]\)/Trieu les carpetes que s'han d'importar\1/g
# cap a dins de la carpeta
s/\b\([Ii]mporta\|importa tots els fitxers\|importació del fitxer d'arxiu «%1»\|mouen\) a la \(carpeta\|col·lecció\)\([^[:alnum:]]\)/\1 cap a dins de la \2\3/g
# cap a dins de la base de dades
s/\bper a importar-lo a la base de dades\([^[:alnum:]]\)/per a importar-lo cap a dins de la base de dades\1/g
# cap a dins de la galeria
s/\b\(Importa un fitxer d'imatge\) a la galeria\([^[:alnum:]]\)/\1 cap a dins de la galeria\2/g
# cap a dins de la col·lecció
s/\b\([Ii]mporta les dades\|un trencaclosques nou des d'un fitxer\) a la col·lecció\([^[:alnum:]]\)/\1 cap a dins de la col·lecció\2/g
# cap a dins de la llista
s/\bimport\(ar\|eu\)-lo a la llista\([^[:alnum:]]\)/import\1-lo cap a dins de la llista\2/g
# cap a dins de la paperera
  s/\b\([Aa]\)nar a la \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)\([Pp]\)aperera\([^[:alnum:]]\)/\1nar a dins de la \2paperera\4/g
  s/\b\([Ee]\)nvia\(r\|\)\( el fitxer <b>%1<\/b>\| l'script seleccionat\|\) a la \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)\([Pp]\)aperera\([^[:alnum:]]\)/\1nvia\2\3 cap a dins de la \4paperera\6/g
  s/\b\([Ee]\)nviats a la \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)\([Pp]\)aperera\([^[:alnum:]]\)/\1nviats a dins de la \2paperera\4/g
  s/\b\([Ll]\)lença\(nt\|r\|r-los\|\)\( els fitxers\|\) a la \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)\([Pp]\)aperera\([^[:alnum:]]\)/\1lença\2\3 a dins de la \4paperera\6/g
s/\b\([Mm]\)o\(guin\|gut\|u\|uen\|u-ho\|uran\|ure\|ure'l\|ure'ls\|ure-ho\|ure-la\|us\|vent\|veu\|veu-l[ao]\|via\) a la \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)\([Pp]\)aperera\([^[:alnum:]]\)/\1o\2 cap a dins de la \3paperera\5/g
s/\b\([Mm]\)o\(guin\|gut\|u\|uen\|u-ho\|uran\|ure\|ure'l\|ure'ls\|ure-ho\|ure-la\|us\|vent\|veu\|veu-l[ao]\|via\) \(&tot\|%1\|%1 element\|%1 elements\|%1 fitxer\|%1 fitxers\|%2\|a una ubicació diferent o\|aquest %1 element\|aquest element\|aquesta peça\|aquests %1 elements\|aquesta imatge\|aquesta %1 peça\|aquestes %1 peces\|aquests fitxers\|directament\|el fitxer\|el missatge\|elements\|els elements de la selecció actual\|els elements seleccionats\|els fitxers\|els missatges\|fitxers\|fitxers o carpetes\|l'element\|l'element seleccionat\|la c&onversa\|la conversa\|peces\|tot\|tots els missatges\|tots els missatges de la carpeta <b>%1<\/b>\|un element o elements seleccionats\) a la \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)paperera\([^[:alnum:]]\)/\1o\2 \3 cap a dins de la \4paperera\5/g
s/\b\([Mm]\)o\(guin\|gut\|u\|uen\|u-ho\|uran\|ure\|ure'l\|ure'ls\|ure-ho\|ure-la\|us\|vent\|veu\|veu-l[ao]\|via\) els \(elements\|elements de la selecció actual\) a la \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)\([Pp]\)aperera\([^[:alnum:]]\)/\1o\2 els \3 cap a dins de la \4\5aperera\6/g
s/\b\([Mm]\)o\(guin\|gut\|u\|uen\|u-ho\|uran\|ure\|ure'l\|ure'ls\|ure-ho\|ure-la\|us\|vent\|veu\|veu-l[ao]\|via\) la \(carpeta\|col·lecció\|imatge\)\( %1\|\)\( cap\|\) a la paperera\([^[:alnum:]]\)/\1o\2 la \3\4\5 cap a dins de la paperera\6/g
  s/\bubicar-los a la paperera\([^[:alnum:]]\)/ubicar-los a dins de la paperera\1/g
# cap a dins del calendari
s/\barrossegar al calendari\([^[:alnum:]]\)/arrossegar cap a dins del calendari\1/g
# cap a dins del codi
s/\b\([Mm]\)o\(tra\|u\|ure\|ure'ls\|veu\|veu-l[ao]\) al codi\([^[:alnum:]]\)/\1o\2 cap a dins del codi\3/g
# cap a dins del grup
s/\bMou al grup\([^[:alnum:]]\)/Mou cap a dins del grup\1/g
# #
# # # # # # # # # # # # # #
#
# fins
s/\b\([Aa]\)n\(ar\|ar-l[ao]\|ava\|àve[mu]\|ave[ns]\|e[mu]\|eu-l[ao]\|irà\|iran\|ireu\) \(a\|al\|als\)\([^[:alnum:]]\)/\1n\2 fins \3\4/g
  s/\bana\(r\|va\) fins \(a crear\|a dormir\|a Internet\|a la paperera\|a la vista\|a tenir\|al centre\)\([^[:alnum:]]\)/ana\1 \2\3/g
  s/\banar fins a la unitat anterior o a la següent\([^[:alnum:]]\)/anar fins a la unitat anterior o fins a la següent\1/g
  s/\b\([Aa]\)nàvem fins a determinar\([^[:alnum:]]\)/\1nàvem a determinar\2/g
  s/\b\([Aa]\)nem fins a configurar\([^[:alnum:]]\)/\1nem a configurar\2/g
  s/\banirà fins a estos esdeveniments\([^[:alnum:]]\)/anirà a estos esdeveniments\1/g
  s/\banirà fins a \(l'esquerra\|la dreta\)\([^[:alnum:]]\)/anirà a \1\2/g
  s/\borg o al lloc\([^[:alnum:]]\)/org o fins al lloc\1/g
  s/\bi aneu fins a la pàgina\([^[:alnum:]]\)/i aneu cap a la pàgina\1/g
  s/\b\([Aa]\)neu fins al \(\[fòrum\|mode\)\([^[:alnum:]]\)/\1neu al \2\3/g
  s/\bAplicacions» i després a la secció\([^[:alnum:]]\)/Aplicacions» i després cap a la secció\1/g
  s/\bdeixa\(r\|\) anar fins a\([^[:alnum:]]\)/deixa\1 anar a\2/g
  s/\bdeixeu\(-l[eo]s\|\) anar fins a\([^[:alnum:]]\)/deixeu\1 anar a sobre de\2/g
  s/\b\([Dd]\)eix\(a\|ar|eu\) anar fins\([^[:alnum:]]\)/\1eix\2 anar\3/g
  s/\bper a anar fins a dins\([^[:alnum:]]\)/per a anar a dins\1/g
s/\b\([Aa]\)punt\(a\|ant\|ar\|ar-l[ao]\|arà\|ava\|ave[ns]\|àve[mu]\|e[mnsu]\|eu-l[ao]\) \(a\|al\|als\)\([^[:alnum:]]\)/\1punt\2 cap \3\4/g
s/\b\([Aa]\)rrib\(a\|ant\|ar\|ar-l[ao]\|arà\|ava\|ave[ns]\|àve[mu]\|e[mnsu]\|eu-l[ao]\) \(a\|al\|als\)\([^[:alnum:]]\)/\1rrib\2 fins \3\4/g
  s/\barribar fins a estar\([^[:alnum:]]\)/arribar a estar\1/g
  s/\bferro arriba fins a estar\([^[:alnum:]]\)/ferro arriba a estar\1/g
  s/\bque aneu fins al mateix\([^[:alnum:]]\)/que aneu al mateix\1/g
  s/\barribar fins a branques fins\([^[:alnum:]]\)/arribar fins a branques de fins\1/g
  s/\bno arribar fins a fer res útil\([^[:alnum:]]\)/no arribar a fer res útil\1/g
  s/\b\([Aa]\)rrib\(ar\|e[nu]\) fins \(a aquest servidor\|a complir\|a l'Índia\|a la conclusió\|a ser\|a tenir\)\([^[:alnum:]]\)/\1rrib\2 \3\4/g
  s/\barribant fins a ser\([^[:alnum:]]\)/arribant a ser\1/g
  s/\barribem fins a trobar el 90%\([^[:alnum:]]\)/arribem a trobar el 90%\1/g
  s/\barriben fins a conclusions\([^[:alnum:]]\)/arriben a conclusions\1/g
  s/\bcamí correcte fins a arribar fins al peix\([^[:alnum:]]\)/camí correcte per a arribar fins el peix\1/g
    s/\barriba fins al peix\([^[:alnum:]]\)/arriba fins el peix\1/g
  s/\bexcavant fins a arribar fins\([^[:alnum:]]\)/excavant per a arribar fins\1/g
  s/\bfins a %\([12]\)%\([^[:alnum:]]\)/fins al %\1%\2/g
  s/\bfins arribar fins a una solució\([^[:alnum:]]\)/fins arribar a una solució\1/g
  s/\bso fins a arribar fins\([^[:alnum:]]\)/so per a arribar fins\1/g
    s/\bfins a arribar fins\([^[:alnum:]]\)/fins a arribar\1/g
  s/\bfins al principi\([^[:alnum:]]\)/fins al començament\1/g
  s/\bpot arribar fins a \(entrar\|fer\)\([^[:alnum:]]\)/pot arribar a \1\2/g
  s/\bVa arribar fins a la badia\([^[:alnum:]]\)/Va arribar a la badia\1/g
s/\b\([Aa]\)rrosseg\(a\|at\|ar-l[ao]\|arà\|ava\|ave[ns]\|àve[mu]\|ue[mnsu]\|ueu-l[ao]\) \(un dit\) \(a\|al\|als\)\([^[:alnum:]]\)/\1rrosseg\2 \3 fins \4\5/g
s/\b\([Aa]\)rrosseg\(a\|at\|ar-l[ao]\|arà\|ava\|ave[ns]\|àve[mu]\|ue[mnsu]\|ueu-l[ao]\) \(a\|al\|als\)\([^[:alnum:]]\)/\1rrosseg\2 fins \3\4/g
s/\b\([Aa]\)van\(ça\|çant\|ça[rt]\|çar-l[ao]\|çarà\|çava\|çave[ns]\|çàve[mu]\|ce[mnsu]\|ceu-l[ao]\) \(a\|al\|als\)\([^[:alnum:]]\)/\1van\2 fins \3\4/g
  s/\bavançat fins a l'Observatori\([^[:alnum:]]\)/avançat a l'Observatori\1/g
s/\b\([Dd]\)espla\(ça\|çant\|ça[rt]\|çar-l[ao]\|çarà\|çava\|çave[ns]\|çàve[mu]\|ce[mnsu]\|ceu-l[ao]\) \(aquí\)\([^[:alnum:]]\)/\1espla\2 fins \3\4/g
s/\b\([Dd]\)espla\(ça\|çant\|ça[rt]\|çar-l[ao]\|çarà\|çava\|çave[ns]\|çàve[mu]\|ce[mnsu]\|ceu-l[ao]\) \(directament\|la vista\) \(a\|al\|als\|aquí\)\([^[:alnum:]]\)/\1espla\2 \3 fins \4\5/g
s/\b\([Cc]\)amí a l'arxiu o a la carpeta\([^[:alnum:]]\)/\1amí fins a l'arxiu o fins a la carpeta\2/g
s/\b\([Mm]\)o\(c\|u\|ure\|us\|vem\|via\|víe[mu]\|vie[ns]\) \(a\|al\)\([^[:alnum:]]\)/\1o\2 cap \3\4/g
  s/\bes mou cap al llarg\([^[:alnum:]]\)/es mou al llarg\1/g
  s/\b\([Mm]\)ou la disposició %1 \(amunt\|avall\)\([^[:alnum:]]\)/\1ou la disposició %1 cap \2\3/g
s/\b\([Mm]\)o\(c\|u\|ure\|us\|vem\|via\|víe[mu]\|vie[ns]\) el \(cursor\) \(a\|al\)\([^[:alnum:]]\)/\1o\2 el \3 cap \4\5/g
s/\b\([Mm]\)o\(c\|u\|ure\|us\|vem\|via\|víe[mu]\|vie[ns]\) l'\(«akonadiserverrc» nou\) \(a\|al\)\([^[:alnum:]]\)/\1o\2 l'\3 cap \4\5/g
s/\b\([Mm]\)o\(c\|u\|ure\|us\|vem\|via\|víe[mu]\|vie[ns]\) la \(base de dades\|base de dades migrada\|divisió dreta\|divisió esquerra\) \(a\|al\)\([^[:alnum:]]\)/\1o\2 la \3 cap \4\5/g
s/\b\([Mm]\)o\(c\|u\|ure\|us\|vem\|via\|víe[mu]\|vie[ns]\) la \(cúpula\)\( cap\|\) \(a\|al\)\([^[:alnum:]]\)/\1o\2 la \3\4 fins \5\6/g
s/\b\([Mm]\)o\(c\|u\|ure\|us\|vem\|via\|víe[mu]\|vie[ns]\) un \(clip agrupat\) \(a\|al\)\([^[:alnum:]]\)/\1o\2 un \3 cap \4\5/g
  s/\bMou\(re\|\) el cursor cap al\([^[:alnum:]]\)/Mou\1 el cursor fins el\2/g
  s/\bMou el cursor cap\([^[:alnum:]]\)/Mou el cursor fins\1/g
  s/\bmoure fins a causa\([^[:alnum:]]\)/moure a causa\1/g
  s/\bpogut moure fins a\([^[:alnum:]]\)/pogut moure cap a\1/g
# mo\(u\|ure\|ure'l\|ure'ls\|ure-la\|veu\|veu-l[ao]\)
# s/\b\([Mm]\)o\(tra\|u\|ure\|ure'ls\|veu\|veu-l[ao]\)
s/\b\([Nn]\)aveg\(ant\|at\|arà\|ava\|ave[ns]\|àve[mu]\|ue[mnsu]\) \(a\|al\|als\)\([^[:alnum:]]\)/\1aveg\2 fins \3\4/g
  s/\bEn obrir un enllaç nou, salteu a la\([^[:alnum:]]\)/En obrir un enllaç nou, se salta fins a la\1/g
  s/\bfins a través\([^[:alnum:]]\)/a través\1/g
  s/\bsaltaran de la barra\([^[:alnum:]]\)/saltaran des de la barra\1/g
s/\b\([Ss]\)alt\(a\|ant\|a[rt]\|ar-l[ao]\|arà\|ava\|ave[ns]\|àve[mu]\|e[mnsu]\|eu-l[ao]\|o\) \(a\|al\|als\)\([^[:alnum:]]\)/\1alt\2 fins \3\4/g
s/\b\([Ss]\)alt\(a\|ant\|a[rt]\|ar-l[ao]\|arà\|ava\|ave[ns]\|àve[mu]\|e[mnsu]\|eu-l[ao]\|o\) \(des de l'editor\|des de la barra\) \(a\|al\|als\)\([^[:alnum:]]\)/\1alt\2 fins \3 \4\5/g
  s/\b\([Ss]\)alt\(a\|ar\|es\) fins a \(dins\|l'esquerra\|la base\|la dreta\|la part\|terra\|través\)\([^[:alnum:]]\)/\1alt\2 a \3\4/g
  s/\bo saltar fins des de l'editor a la pàgina\([^[:alnum:]]\)/o saltar des de l'editor fins a la pàgina\1/g
  s/\bsalteu fins des de l'editor a la pàgina\([^[:alnum:]]\)/salteu des de l'editor fins a la pàgina\1/g
  s/\bes mou al parèntesi\([^[:alnum:]]\)/es mou fins al parèntesi\1/g
  s/\b\([Vv]\)a a \(quina sortida\|stdout\)\([^[:alnum:]]\)/\1a cap a \2\3/g
s/\b\([Vv]\)\(a\|aig\|[ae]s\) \(a\|al\|als\)\([^[:alnum:]]\)/\1\2 fins \3\4/g
  s/\b\([Vv]\)a fins al revés\([^[:alnum:]]\)/\1a al revés\2/g
  s/\bvan fins a sota\([^[:alnum:]]\)/van a sota\1/g
  s/\bven fins a la\([^[:alnum:]]\)/ven a la\1/g
  s/\b\([Vv]\)es fins al mode\([^[:alnum:]]\)/\1es al mode\2/g
  s/\b\([Vv]\)es fins \(a l'esquerra\|a la dreta\|amunt\|avall\|baix\)\([^[:alnum:]]\)/\1es cap \2\3/g
  s/\b\([Vv]\)a fins a les escombraries\([^[:alnum:]]\)/\1a a les escombraries\2/g
  s/\b\([Vv]\)es fins a pantalla completa\([^[:alnum:]]\)/\1es a pantalla completa\2/g
 #
s/\ba partir de la paraula %1 a la paraula\([^[:alnum:]]\)/a partir de la paraula %1 fins la paraula\1/g
s/\badreces d'interès a l'arrel\([^[:alnum:]]\)/adreces d'interès fins a l'arrel\1/g
s/\bcamins a la propera estació\([^[:alnum:]]\)/camins fins a la propera estació\1/g
s/\bclient al costat del servidor\([^[:alnum:]]\)/client fins al costat del servidor\1/g
s/\bDes de 2021-2022\([^[:alnum:]]\)/Des del 2021 fins al 2022\1/g
s/\bdes de 6 a 99 anys\([^[:alnum:]]\)/des de 6 fins a 99 anys\1/g
s/\bdes de diagrames a imatges\([^[:alnum:]]\)/des de diagrames fins a imatges\1/g
s/\bdes de gràfics a text\([^[:alnum:]]\)/des de gràfics fins a text\1/g
s/\bdes de la dreta a l'esquerra\([^[:alnum:]]\)/des de la dreta fins a l'esquerra\1/g
s/\bdes de la &dreta a l'esquerra\([^[:alnum:]]\)/des de la \&dreta fins a l'esquerra\1/g
s/\bdes de l'esquerra a la dreta\([^[:alnum:]]\)/des de l'esquerra fins a la dreta\1/g
s/\bdes de l'&esquerra a la dreta\([^[:alnum:]]\)/des de l'\&esquerra fins a la dreta\1/g
s/\bDes de les opcions del tema a la gestió de dispositiu\([^[:alnum:]]\)/Des de les opcions del tema fins a la gestió de dispositius\1/g
s/\bdes del centre a la vora\([^[:alnum:]]\)/des del centre fins a la vora\1/g
s/\bdetectar olors a 8 km\([^[:alnum:]]\)/detectar olors fins a 8 km\1/g
s/\bdispositiu a la posició <b>\(central\|màxima\|mínima\)\([^[:alnum:]]\)/dispositiu fins a la posició <b>\1\2/g
s/\bdos dits al centre\([^[:alnum:]]\)/dos dits fins al centre\1/g
s/\beixos a la posició\([^[:alnum:]]\)/eixos fins a la posició\1/g
s/\benrere \(a l'any\|al mes\)\([^[:alnum:]]\)/enrere fins \1\2/g
s/\bflueixi des d'un terminal de la bateria a l'altre\([^[:alnum:]]\)/flueixi des d'un terminal de la bateria fins a l'altre\1/g
s/\bhadrons_ a _Heroes\([^[:alnum:]]\)/hadrons_ fins a _Heroes\1/g
s/\bLlisca la imatge d'una banda a l'altra\([^[:alnum:]]\)/Llisca la imatge d'una banda fins a l'altra\1/g
s/\b\([Mm]\)ou el focus a\([^[:alnum:]]\)/\1ou el focus fins a\2/g
s/\b\([Mm]\)ou a la posició\([^[:alnum:]]\)/\1ou fins a la posició\2/g
s/\bmoure a qualsevol\([^[:alnum:]]\)/moure fins a qualsevol\1/g
s/\bmoure les boles d'una cel·la a una altre cel·la\([^[:alnum:]]\)/moure les boles des d'una cel·la fins a una altra\1/g
s/\bNavegueu a on heu baixat\([^[:alnum:]]\)/Navegueu fins on heu baixat\1/g
s/\bpermet navegar a qualsevol secció\([^[:alnum:]]\)/permet navegar fins a qualsevol secció\1/g
s/\bplanificació a la pròxima\([^[:alnum:]]\)/planificació fins a la pròxima\1/g
s/\bPlasma a les mascotes\([^[:alnum:]]\)/Plasma fins a les mascotes\1/g
s/\bseguir qualsevol camí al vostre ordinador\([^[:alnum:]]\)/seguir qualsevol camí fins al vostre ordinador\1/g
s/\bva a la posició\([^[:alnum:]]\)/va fins a la posició\1/g
s/\b\([Zz]\)oom per ajustar a\([^[:alnum:]]\)/\1oom fins ajustar a\2/g
  s/\barribar a la peça\([^[:alnum:]]\)/arribar fins a la peça\1/g
# #
# # # # # # # # # # # # # #
#
# s'eviten errades
s/\bimportar cap a través\([^[:alnum:]]\)/importar a través\1/g
s/\bres a ignorar a la columna\([^[:alnum:]]\)/res que s'hagi d'ignorar a la columna\1/g
s/\bres més a importar a la columna\([^[:alnum:]]\)/res que s'hagi d'ignorar a la columna\1/g
s/\b\([Tt]\)rieu els camins a ignorar\([^[:alnum:]]\)/\1rieu els camins que s'han d'ignorar\2/g
# #
# # # # # # # # # # # # # #
#
# cap a
s/\b\([Aa]\)dre\(ça\|ces\) d'interès \(a\|al\|als\)\([^[:alnum:]]\)/\1dre\2 d'interès cap \3\4/g
  s/\badreça d'interès cap al núvol\([^[:alnum:]]\)/adreça d'interès al núvol\1/g
  s/\b\([Aa]\)dreces d'interès cap a la \(carpeta\|barra\|base\)\([^[:alnum:]]\)/\1dreces d'interès a la \2\3/g
  s/\badreces d'interès cap a mostrar\([^[:alnum:]]\)/adreces d'interès a mostrar\1/g
  s/\bafegeixi una adreça d'interès cap a la vostra col·lecció\([^[:alnum:]]\)/afegeixi una adreça d'interès a la vostra col·lecció\1/g
  s/\bdeixeu-\(l[ao]\|les\) anar fins\([^[:alnum:]]\)/deixeu-\1 anar\2/g
  s/\bnova d'adreces d'interès cap a %1\([^[:alnum:]]\)/nova d'adreces d'interès a %1\1/g
  s/\bdesar les adreces d'interès cap a %1\([^[:alnum:]]\)/desar les adreces d'interès a %1\1/g
s/\b\([Aa]\)nant a \(l'esquerra\|la dreta\|la carpeta\)\([^[:alnum:]]\)/\1nant cap a \2\3/g
   s/\b\([Aa]\)n\(ar\|eu\) fins a \(l'esquerra\|la dreta\|la carpeta\)\([^[:alnum:]]\)/\1n\2 cap a \3\4/g
  s/\banant cap a la carpeta següent\([^[:alnum:]]\)/anant fins a la carpeta següent\1/g
  s/\bcal anar cap a la carpeta\([^[:alnum:]]\)/cal anar fins a la carpeta\1/g
  s/\bper a apuntar cap a la carpeta\([^[:alnum:]]\)/per a que apunti cap a la carpeta\1/g
s/\b\([Aa]\)punt\(a\|ant\|ar\|en\|eu\|i\)\( això\| directament\|\) \(a\|al\|als\)\([^[:alnum:]]\)/\1punt\2\3 cap \4\5/g
  s/\bapunta cap a cap executable\([^[:alnum:]]\)/apunta a cap executable\1/g
  s/\bquan apunteu cap a prop del meridià\([^[:alnum:]]\)/quan apunteu a prop del meridià\1/g
s/\b\([Aa]\)rrosseg\(a\|ant\|ar\|ueu\|ui\) \(a\|al\|als\)\([^[:alnum:]]\)/\1rrosseg\2 cap \3\4/g
  s/\barrossegar cap a l'esquerra o a la dreta\([^[:alnum:]]\)/arrossegar cap a l'esquerra o cap a la dreta\1/g
  s/<Camí> a l'executable\([^[:alnum:]]\)/<Camí> cap a l'executable\1/g
  s/\bcamí<\/emphasis> a la ubicació\([^[:alnum:]]\)/camí<\/emphasis> cap a la ubicació\1/g
  s/\b\([Cc]\)am\(í\|ins\) a usar\([^[:alnum:]]\)/\1am\2 que cal usar\3/g
s/\b\([Cc]\)am\(í\|ins\) \(«%1»\) \(a\|al\|als\)\([^[:alnum:]]\)/\1am\2 \3 cap \4\5/g
s/\b\([Cc]\)am\(í\|ins\)\( absolut\| absoluts\| complet\| complets\| correcte\| correctes\| sencer\| sencers\|\) \(a\|al\|als\)\([^[:alnum:]]\)/\1am\2\3 cap \4\5/g
  s/\b\([Cc]\)amí cap a mà alçada\([^[:alnum:]]\)/\1amí a mà alçada\2/g
  s/\b\([Cc]\)amí cap al predeterminat\([^[:alnum:]]\)/\1amí al predeterminat\2/g
  s/\b\([Cc]\)amí absolut cap al quadre\([^[:alnum:]]\)/\1amí absolut al quadre\2/g
  s/\bafegiu el camí cap al vostre\([^[:alnum:]]\)/afegiu el camí al vostre\1/g
  s/\b\([Cc]\)amí \(complet\|correcte\) cap a «Configuració\([^[:alnum:]]\)/\1amí \2 a «Configuració\3/g
  s/\b\([Cc]\)amí \(complet\|correcte\) cap a la configuració\([^[:alnum:]]\)/\1amí \2 a la configuració\3/g
  s/\b\([Dd]ibuixa un\|[Ee]ina de\) camí cap a mà\([^[:alnum:]]\)/\1 camí a mà\2/g
  s/\bel camí cap a seguir\([^[:alnum:]]\)/el camí a seguir\1/g
  s/\bcamí complet cap al lliure\([^[:alnum:]]\)/camí complet al lliure\1/g
  s/\b\([Ee]\)stabliu aquest camí cap a la carpeta que conté\([^[:alnum:]]\)/\1stabliu aquest camí a la carpeta que conté\2/g
  s/\bMo&stra el camí cap a la barra\([^[:alnum:]]\)/Mo\&stra el camí a la barra\1/g
  s/\b\([Mm]\)ostra\( sempre\|\) el camí\( sencer\|\) cap a \(la barra\|les pestanyes\)\([^[:alnum:]]\)/\1ostra\2 el camí\3 a \4\5/g

  s/\brestringits a 8 i els camins cap a\([^[:alnum:]]\)/restringits a 8 i els camins a\1/g
  s/\b\([Tt]\)riu un camí cap a\([^[:alnum:]]\)/\1rieu un camí a\2/g
s/\b\([Dd]\)espla\(ceu\|ça\|çament\|çar\|ci\) \(amunt\|avall\)\([^[:alnum:]]\)/\1espla\2 cap \3\4/g
s/\b\([Dd]\)espla\(ceu\|ça\|çament\|çar\|ci\) \(mitja pàgina\|una pàgina\) \(amunt\|avall\)\([^[:alnum:]]\)/\1espla\2 \3 cap \4\5/g
s/\b\([Dd]\)espla\(ceu\|ça\|çament\|çar\|ci\) \(a\|al\|als\)\([^[:alnum:]]\)/\1espla\2 cap \3\4/g
  s/\bAfegeix aquest desplaçament cap al llindar\([^[:alnum:]]\)/\1Afegeix aquest desplaçament al llindar\1/g
  s/\b\([Bb]\)arres de desplaçament cap a fora\([^[:alnum:]]\)/\1arres de desplaçament a fora\2/g
  s/\bdesplaça cap a través\([^[:alnum:]]\)/desplaça a través\1/g
  s/\bDesplaça cap a la setmana\([^[:alnum:]]\)/Desplaça fins a la setmana\1/g
  s/\bDesplaça cap al codi font\([^[:alnum:]]\)/Desplaça fins al codi font\1/g
  s/\bDesplaçament cap al llarg\([^[:alnum:]]\)/Desplaçament al llarg\1/g
  s/\bMostra \(l'escala i el\|la barra de\) desplaçament cap al costat\([^[:alnum:]]\)/Mostra \1 desplaçament al costat\2/g
s/\b\([Dd]\)recer\(a\|es\) \(a\|al\|als\)\([^[:alnum:]]\)/\1recer\2 cap \3\4/g
  s/\bassignar una icona i\/o una drecera cap a\([^[:alnum:]]\)/assignar una icona i\/o una drecera a\1/g
  s/\b\([Dd]\)esa les dreceres cap \(a\|al\|als\)\([^[:alnum:]]\)/\1esa les dreceres \2\3/g
  s/\"Enllaç a dispositiu\"/\"Enllaç cap a un dispositiu\"/g
  s/\b\([Ee]\)nllaç a mida\([^[:alnum:]]\)/\1nllaç personalitzat\2/g
  s/\bestabliu la drecera cap \(a\|al\|als\)\([^[:alnum:]]\)/establiu la drecera \1\2/g
  s/\bPodeu arrossegar els enllaços a baixar\([^[:alnum:]]\)/Podeu arrossegar els enllaços que es baixaran\1/g
s/\b\([Ee]\)nlla\(ç\|ços\)\( complet\| directe\| extern\| simbòlic\| simbòlics\|\) \(a\|al\|als\)\([^[:alnum:]]\)/\1nlla\2\3 cap \4\5/g
s/\b\([Ee]\)nllaç \(des d'una nota\) \(a\|al\|als\)\([^[:alnum:]]\)/\1nllaç \2 cap \3\4/g
  s/\bAdjunta només un enllaç cap al missatge\([^[:alnum:]]\)/Adjunta només un enllaç al missatge\1/g
  s/\b\([Aa]\)feg\(eix\|ir\) l'enllaç cap \(a\|al\|als\)\([^[:alnum:]]\)/\1feg\2 l'enllaç \3\4/g
  s/\b\([Aa]\)feg\(eix\|ir\) una nota d'enllaç cap a\([^[:alnum:]]\)/\1feg\2 una nota d'enllaç a\3/g
  s/\bCada enllaç simbòlic cap al projecte\([^[:alnum:]]\)/Cada enllaç simbòlic al projecte\1/g
  s/\bColor dels enllaços cap al xat\([^[:alnum:]]\)/Color dels enllaços al xat\1/g
  s/\b\([Ee]\)nllaç cap a l'escriptori\([^[:alnum:]]\)/\1nllaç a l'escriptori\2/g
  s/\b\([Ee]\)nllaç cap a\( una\|\) adreça d'interès\([^[:alnum:]]\)/\1nllaç a una adreça d'interès\3/g
  s/\b\([Ee]\)nllaços cap a adreces d'interès\([^[:alnum:]]\)/\1nllaços a adreces d'interès\2/g
  s/\b\enllaços cap al xat\([^[:alnum:]]\)/enllaços al xat\1/
  s/\b\([Ee]\)nllaç simbòlic cap al costat\([^[:alnum:]]\)/\1nllaç simbòlic al costat\2/g
  s/\bGestió dels enllaços simbòlics cap al projecte\([^[:alnum:]]\)/Gestió dels enllaços simbòlics al projecte\1/g
  s/\b\([Ii]\)nclou enllaços cap \(a\|al\|als\)\([^[:alnum:]]\)/\1nclou enllaços \2\3/g
  s/\bMTU d'enllaç cap a partir\([^[:alnum:]]\)/MTU d'enllaç a partir\1/g
  s/\bquant als enllaços externs cap a l'aplicació\([^[:alnum:]]\)/quant als enllaços externs a l'aplicació\1/g
s/\b\([Ee]\)nviad\(a\|es\) \(a\|al\|als\)\([^[:alnum:]]\)/\1nviad\2 cap \3\4/g
  s/\bresposta des de «%1» enviada cap a «%2»\([^[:alnum:]]\)/resposta des de «%1» enviada a «%2»\1/g
  s/\b\([Ee]\)nviad\(a\|es\) cap a l'script\([^[:alnum:]]\)/\1nviad\2 a l'script\3/g
  s/\bFalla alguns casos en importar «qif»\([^[:alnum:]]\)/Falla en alguns casos quan s'importa cap a «qif»\1/g
s/\b\([Ee]x\|[Ii]m\)port\(a\|ació\|ant\|ar\|es\|eu\|i\|va\) \(a\|al\|als\)\([^[:alnum:]]\)/\1port\2 cap \3\4/g
s/\b\([Ee]x\|[Ii]m\)port\(a\|ació\|ant\|ar\|es\|eu\|i\) \(dels certificats\|els altres camps del contacte\|els camps de negoci del contacte\|els camps privats del contacte\|la imatge del contacte\|les claus d'encriptatge del contacte\|les claus marcades\|les imatges\) \(a\|al\|als\)\([^[:alnum:]]\)/\1port\2 \3 cap \4\5/g
  s/\b\([Ee]x\|[Ii]m\)porta només a\(l\|ls\|\)\([^[:alnum:]]\)/\1porta només cap a\2\3/g
  s/\b\([Ee]\)xporta les contrasenyes a un fitxer\([^[:alnum:]]\)/\1xporta les contrasenyes cap a un fitxer\2/g
  s/\b\([Ee]\)xporta\(r\|\) col·leccions d'imatges a\(l\|\)\([^[:alnum:]]\)/\1xporta\2 col·leccions d'imatges cap a\3\4/g
  s/\bfeina important cap al Kig\([^[:alnum:]]\)/feina important al voltant del Kig\1/g
  s/\bimportació cap a la configuració\([^[:alnum:]]\)/importació a la configuració\1/g
  s/\bexportar el grup «%2» a\([^[:alnum:]]\)/exportar el grup «%2» cap a\1/g
  s/\bimportar cap a travésa\([^[:alnum:]]\)/importar a través\1/g
  s/\bimportar cap a «/importar a «/g
  s/\bcosa important cap a\([^[:alnum:]]\)/cosa important a\1/g
# s/\b\([Mm]\)igr\(a\|ació\|ant\|ar\|es\|eu\|i\) \(a\|al\|als\)\( les\|\)\([^[:alnum:]]\)/\1igr\2 cap \3\4\5/g
  s/\bcarpeta on moure les cistelles\([^[:alnum:]]\)/carpeta cap a on moure les cistelles\1/g
  s/\bdefinir a on moure\([^[:alnum:]]\)/definir cap a on s'ha de moure\1/g
  s/\bdirectori a on moure\([^[:alnum:]]\)/directori cap a on s'han de moure\1/g
  s/\bMou cap la ubicació blocada\([^[:alnum:]]\)/Mou cap a la ubicació blocada\1/g
  s/\b\([Mm]\)ou la finestra una pantalla \(a la dreta\|a l'esquerra\|amunt\|avall\)\([^[:alnum:]]\)/\1ou la finestra una pantalla cap \2\3/g
s/\b\([Mm]\)o\(gut\|u\|uen\|ure\|ure'l\|ure'ls\|ure't\|ure-la\|veu\|veu-l[ao]\) \(directament\) \(a\|al\|als\)\([^[:alnum:]]\)/\1o\2 \3 cap \4\5/g
s/\b\([Mm]\)o\(gut\|u\|uen\|ure\|ure'l\|ure'ls\|ure't\|ure-la\|veu\|veu-l[ao]\) \(a\|al\|als\)\([^[:alnum:]]\)/\1o\2 cap \3\4/g
s/\b\([Mm]\)o\(gut\|u\|uen\|ure\|ure'l\|ure'ls\|ure't\|ure-la\|us\|ou-te\|veu\|veu-l[ao]\) \(am&unt\|a&vall\|amunt\|avall\|\) \(a\|al\|als\)\([^[:alnum:]]\)/\1o\2 cap \3 \4\5/g
s/\b\([Mm]\)o\(gut\|u\|uen\|ure\|ure'l\|ure'ls\|ure't\|ure-la\|veu\|veu-l[ao]\) \(am&unt\|a&vall\|amunt\|avall\)\([^[:alnum:]]\)/\1o\2 cap \3\4/g
s/\b\([Mm]\)o\(gut\|u\|uen\|ure\|ure'l\|ure'ls\|ure't\|ure-la\|veu\|veu-l[ao]\) l'\(element\) \(a\|al\|als\)\([^[:alnum:]]\)/\1o\2 l'\3 cap \4\5/g
s/\b\([Mm]\)o\(gut\|u\|uen\|ure\|ure'l\|ure'ls\|ure't\|ure-la\|veu\|veu-l[ao]\) la \(dependència\|dependència seleccionada\|fila\|finestra\|pissarra\|tasca\)\( cap\|\) \(amunt\|avall\)\([^[:alnum:]]\)/\1o\2 la \3 cap \5\6/g
s/\b\([Mm]\)o\(gut\|u\|uen\|ure\|ure'l\|ure'ls\|ure't\|ure-la\|veu\|veu-l[ao]\) el\(s\|\) \(camí\|paquet\) \(a\|al\|als\)\([^[:alnum:]]\)/\1o\2 el\3 \4 cap \5\6/g
s/\b\([Mm]\)o\(gut\|u\|uen\|ure\|ure'l\|ure'ls\|ure't\|ure-la\|veu\|veu-l[ao]\) la \(cantonada més propera\|carpeta\|cita\|columna\|columna %2 des de la posició %3\|c&onversa\|conversa\|finestra\|fitxa\|galeria\|imatge\|pestanya\|pestanya actual\|pila sencera\|primera capa amb contingut visible\|sessió\|tasca\|tasca pendent\|tauleta\|torre\)\( %1\|\)\( cap\|\) \(a\|al\|als\)\([^[:alnum:]]\)/\1o\2 la \3\4 cap \6\7/g
s/\b\([Mm]\)o\(gut\|u\|uen\|ure\|ure'l\|ure'ls\|ure't\|ure-la\|veu\|veu-l[ao]\) les \(baixades completes\|boles d'una cel·la\|còpies de seguretat\|dades\|imatges seleccionades\|ordres\)\( cap\|\) \(a\|al\|als\)\([^[:alnum:]]\)/\1o\2 les \3 cap \5\6/g
# mouran
  s/\bcap a ella mateixa o a\([^[:alnum:]]\)/cap a ella mateixa o cap a\1/g
  s/\bes mouen cap a prop\([^[:alnum:]]\)/es mouen a prop\1/g
  s/\bmouen cap a cap\([^[:alnum:]]\)/mouen a cap\1/g
  s/\b\([Mm]\)ou\(re\|re-la\|veu\|\) cap al \(llarg\)\([^[:alnum:]]\)/\1ou\2 al \3\4/g
  s/\b\([Mm]\)o\(u\|ure\|ure'ls\|veu\|veu-l[ao]\) cap a \(causa\)\([^[:alnum:]]\)/\1o\2 a \3\4/g
  s/\b\([Mm]\)o\(u\|ure\|ure'ls\|veu\|veu-l[ao]\) cap al \(voltant\)\([^[:alnum:]]\)/\1o\2 al \3\4/g
  s/\b\([Mm]\)ou cap \(a la posició\|al parèntesi\)\([^[:alnum:]]\)/\1ou fins \2\3/g
  s/\bPodreu moure la carpeta on %1\([^[:alnum:]]\)/Podreu moure cap a la carpeta on %1\1/g
s/\b\([Nn]\)aveg\(a\|ant\|ar\|ues\|ueu\|ui\) \(a\|al\|als\)\([^[:alnum:]]\)/\1aveg\2 cap \3\4/g
  s/\bnavegar cap a través\([^[:alnum:]]\)/navegar a través\1/g
  s/\bpodeu navegar cap a la vista\([^[:alnum:]]\)/podeu navegar a la vista\1/g
# muntar
s/\bservidor on es troba la compartició a muntar\([^[:alnum:]]\)/servidor on es troba la compartició que es muntarà\1/g
# pujar
s/\b\([Oo]\)rient\(a\|ant\|ar\|es\|eu\|i\) \(a\|al\|als\)\([^[:alnum:]]\)/\1rient\2 cap \3\4/g
s/\b\([Rr]\)edirig\(eix\|iu\) \(a\|al\|als\)\([^[:alnum:]]\)/\1edirig\2 cap \3\4/g
s/\b\([Ss]\)ortid\(a\|es\) \(a\|al\|als\)\([^[:alnum:]]\)/\1ortid\2 cap \3\4/g
  s/\bfitxer de sortida cap a més del resultat\([^[:alnum:]]\)/fitxer de sortida a més del resultat\1/g
  s/\bSortida cap a:\([^[:alnum:]]\)/Sortida a:\1/g
  s/\bde sortida cap a emprar\([^[:alnum:]]\)/de sortida a emprar\1/g
  s/\bI&gnora la sortida cap a la finestra\([^[:alnum:]]\)/I\&gnora la sortida a la finestra\1/g
  s/\bsortida cap a \(recordar\|simular\|usar\)\([^[:alnum:]]\)/sortida a \1\2/g
  s/\bSortida cap a les:\([^[:alnum:]]\)/Sortida a les:\1/g
  s/\bsortida cap a una \(cara\|vista\)\([^[:alnum:]]\)/sortida a una \1\2/g
  s/\bsortida cap a la part\([^[:alnum:]]\)/sortida a la part\1/g
  s/\bTransfereix a\([^[:alnum:]]\)/Transfereix cap a\1/g
  s/\bveureu la sortida cap al mateix\([^[:alnum:]]\)/veureu la sortida al mateix\1/g
s/\b\([Tt]\)ransfer\(eix\|int\|ir\|ir-l[ao]\|ir-l[eo]s\|irà\|iran\|it\) \(%1 peces\|claus d'encriptatge i claus de signatura\|dades des de sectors reassignats\|des del fitxer RAW\|des del porta-retalls\|l'import\|la marca comercial\|peces\|una peça\|una peça gran que conté més de sis peces petites\) \(a\|al\|als\)\([^[:alnum:]]\)/\1ransfer\2 \3 cap \4\5/g
s/\b\([Tt]\)ransfer\(eix\|int\|ir\|ir-l[ao]\|ir-l[eo]s\|irà\|iran\|it\) \(a\|al\|als\)\([^[:alnum:]]\)/\1ransfer\2 cap \3\4/g
s/\b\([Tt]\)ransfer\(eix\|int\|ir\|ir-l[ao]\|ir-l[eo]s\|irà\|iran\|it\) el\(s\|\) \(compte\|fitxers següents des del vostre ordinador local\|menús d'aplicació\) \(a\|al\|als\)\([^[:alnum:]]\)/\1ransfer\2 el\3 \4 cap \5\6/g
s/\b\([Tt]\)ransfer\(eix\|int\|ir\|ir-l[ao]\|ir-l[eo]s\|irà\|iran\|it\) la \(configuració\|cua\|música\) \(a\|al\|als\)\([^[:alnum:]]\)/\1ransfer\2 la \3 cap \4\5/g
s/\b\([Tt]\)ransfer\(eix\|int\|ir\|ir-l[ao]\|ir-l[eo]s\|irà\|iran\|it\) les \(dades\|peces\) \(a\|al\|als\)\([^[:alnum:]]\)/\1ransfer\2 les \3 cap \4\5/g
  s/, a on transferir/, cap a on transferir/g
  s/\ba on es transferiran\([^[:alnum:]]\)/cap a on es transferiran\1/g
  s/\btransferències a\([^[:alnum:]]\)/transferències cap a\1/g
    s/\btransferències cap a l'informe\([^[:alnum:]]\)/transferències a l'informe\1/g
  s/\bTransferència de %1 a %2\([^[:alnum:]]\)/Transferència des de %1 cap a %2\1/g
  s/\btransferir cap a través\([^[:alnum:]]\)/transferir a través\1/g
  s/\btransferit \(%1 peces\|una peça\) cap a causa\([^[:alnum:]]\)/transferit \1 a causa\2/g
  s/\bMou totes les transferències amb l'expressió regular a\([^[:alnum:]]\)/Mou totes les transferències amb l'expressió regular cap a\1/g
s/\bteletransportar-les» al contenidor\([^[:alnum:]]\)/teletransportar-les» cap al contenidor\1/g
# enviar
#
  s/\"URL a obrir\.\"/\"URL que s'obrirà.\"/g
  s/\"URL a passar al\([^[:alnum:]]\)/\"Els URL que s'han de passar al\1/g
  s/\b\([Cc]\)amí o URL a explorar\([^[:alnum:]]\)/\1amí o URL que s'ha d'explorar\2/g
  s/\bcap URL a desar\([^[:alnum:]]\)/cap URL per a desar\1/g
  s/\bels URL a obrir\([^[:alnum:]]\)/els URL que s'obriran\1/g
  s/\bEls URL a baixar\([^[:alnum:]]\)/Els URL que s'han de baixar\1/g
  s/\b\(Esquemes d'URL\) a bloquejar\([^[:alnum:]]\)/\1 que s'han de bloquejar\2/g
  s/\bFitxers\/URL a obrir\([^[:alnum:]]\)/Fitxers o URL que s'han d'obrir\1/g
  s/\b\([Ff]\)itxers o URL a \(importar\|obrir\)\([^[:alnum:]]\)/\1itxers o URL que s'han d'\2\3/g
  s/\b\([Ff]\)itxers o URL a \(reproduir\)\([^[:alnum:]]\)/\1itxers o URL que s'han de \2\3/g
  s/\bL'URL a importar està\([^[:alnum:]]\)/L'URL que s'importarà està\1/g
  s/\bURL a \(compartir\)\([^[:alnum:]]\)/URL que s'ha de \1\2/g
  s/\bURL a \(instal·lar\|obrir\|obrirà\|usar\)\([^[:alnum:]]\)/URL que s'ha d'\1\2/g
s/\bURL \(a\|al\|als\)\([^[:alnum:]]\)/URL cap \1\2/g
  s/\baccions d'URL cap a\([^[:alnum:]]\)/accions d'URL a\1/g
  s/\bAfegeix un URL cap al\([^[:alnum:]]\)/Afegeix un URL al\1/g
  s/\bAfegeix alguns URL cap al\([^[:alnum:]]\)/Afegeix alguns URL al\1/g
  s/\bAfegeix fitxers\/URL cap a\([^[:alnum:]]\)/Afegeix fitxers i URL a\1/g
  s/\bAfegeix l'URL cap al filtre\([^[:alnum:]]\)/Afegeix l'URL al filtre\1/g
  s/\bcap URL cap a la línia\([^[:alnum:]]\)/cap URL a la línia\1/g
  s/\bCompartiu fitxers i URL cap a l'ordinador des de qualsevol aplicació\([^[:alnum:]]\)/Compartiu els fitxers i URL a l'ordinador des de qualsevol aplicació\1/g
  s/\bcopiar els URL cap \(a\|al\|als\)\([^[:alnum:]]\)/copiar els URL \1\2/g
  s/\bescurçar l'URL cap \(a\|al\|als\)\([^[:alnum:]]\)/escurçar l'URL \1\2/g
  s/\bexpressions URL cap a la llista\([^[:alnum:]]\)/expressions URL a la llista\1/g
  s/\b\([Oo]\)bre l'URL cap \(a\|al\|als\)\([^[:alnum:]]\)/\1bre l'URL \2\3/g
  s/\b\([Cc]omparteix\|ressaltar\) un URL cap a\([^[:alnum:]]\)/\1 un URL a\2/g
  s/\btransmetent els URL cap al KGet\([^[:alnum:]]\)/transmetent els URL al KGet\1/g
  s/\bURL cap a la inversa\([^[:alnum:]]\)/URL a la inversa\1/g
  s/\b\(URL cap a la xarxa\) a obrir\([^[:alnum:]]\)/\1 que cal obrir\2/g
s/\b\([Vv]\)es a \(baix\|dalt\|l'esquerra\|la dreta\)\([^[:alnum:]]\)/\1 cap a \2\3/g
s/\b\([Vv]\)\(an\) \(a\|al\|als\)\([^[:alnum:]]\)/\1\2 cap \3\4/g
s/\buna fita important cap al llarg camí\([^[:alnum:]]\)/una fita important al llarg camí\1/g

# #
# # # # # # # # # # # # # #
#
# a dins
s/\bcanviar-la a un polígon\([^[:alnum:]]\)/canviar-la a dins d'un polígon\1/g
s/\bfusionarà el contingut de «%1» \(a\|en\) «%2»\([^[:alnum:]]\)/fusionarà el contingut de «%1» a dins de «%2»\2/g
s/\bpotser no escriu aquesta informació a les imatges\([^[:alnum:]]\)/potser no escriurà aquesta informació a dins de les imatges\1/g
# cap a dins de l'àlbum
s/\bimportar a l'àlbum\([^[:alnum:]]\)/importar cap a dins de l'àlbum\1/g
# a dins de l'àrea
s/\b\([Aa]\)justa la imatge a l'àrea\([^[:alnum:]]\)/\1justa la imatge a dins de l'àrea\2/g
s/\bintroduir un filtre a mida directament a l'àrea\([^[:alnum:]]\)/introduir un filtre a mida directament a dins de l'àrea\1/g
# a dins de l'arxiu
s/\bafegir el fitxer a l'arxiu\([^[:alnum:]]\)/afegir el fitxer a dins de l'arxiu\1/g
# a dins de l'editor
s/\b\(Arrossegueu una clau pública\|deixant anar una imatge des del sistema de fitxers\) a l'editor\([^[:alnum:]]\)/\1 a dins de l'editor\2/g
# a dins de l'emmagatzematge
s/(a l'emmagatzematge simple\([^[:alnum:]]\)/(a dins de l'emmagatzematge senzill\1/g
s/\bdigiKam a l'emmagatzematge del Baloo\([^[:alnum:]]\)/digiKam a dins de l'emmagatzematge del Baloo\1/g
s/\bfetes al Baloo a l'emmagatzematge de metadades\([^[:alnum:]]\)/fetes al Baloo a dins de l'emmagatzematge de metadades\1/g
# a dins de l'entrada
s/\b\([Cc]\)amí com s'ha inserit a l'entrada\([^[:alnum:]]\)/\1amí com s'ha inserit a dins de l'entrada\2/g
# dins de l'informe d'error
s/\b\([Ee]\)nganxeu la informació següent a l'informe d'error\([^[:alnum:]]\)/\1nganxeu la informació següent a dins de l'informe d'error\2/g
# a dins de la barra
s/\b\(enganxar una adreça nova\|escriure\|incrustat\|introduït\) a la barra\([^[:alnum:]]\)/\1 a dins de la barra\2/g
s/\bintroduït a la barra\([^[:alnum:]]\)/introduït a dins de la barra\1/g
# a dins de la base de dades
s/\b\(s'inclouran\|l'insereix\) \(a\|en\) la base de dades\([^[:alnum:]]\)/\1 a dins de la base de dades\3/g
# a dins de la carpeta
s/\"\(Copia\|Mou\) a la carpeta\"/\"\1 a dins de la carpeta\"/g
s/\b\(Copia els correus enviats\|copiar els correus enviats\|copiar l'esquema de color\|copieu-lo\|copieu-ne un\|desarà informació del cronometratge\|desaran\|escrivia un missatge\|escriure un missatge\) a la carpeta\([^[:alnum:]]\)/\1 a dins de la carpeta\2/g
# a dins de la cartera
s/\bDesa la contrasenya (a la cartera\([^[:alnum:]]\)/Desa la contrasenya (a dins de la cartera\1/g
s/\bEn desar les contrasenyes, fer-ho a la cartera\([^[:alnum:]]\)/En desar les contrasenyes, fer-ho a dins de la cartera\1/g
# dintre de la casa
s/\bdistribuiran a les cases\([^[:alnum:]]\)/distribuiran dintre de les cases\1/g
# a dins de la categoria
s/\bs'ajusten a les altres categories\([^[:alnum:]]\)/s'ajusten a dins de les altres categories\1/g
# a dins de la cel·la
s/\bdes del porta-retalls a les cel·les\([^[:alnum:]]\)/des del porta-retalls a dins de les cel·les\1/g
# a dins de la col·lecció
s/\bImporta a la col·lecció local\([^[:alnum:]]\)/Importa a dins de la col·lecció local\1/g
s/\bimportar el contingut d'un fitxer iCalendar o vCalendar a la col·lecció\([^[:alnum:]]\)/importar el contingut d'un fitxer iCalendar o vCalendar a dins de la col·lecció\1/g
s/\bimportant «%1» a la col·lecció\([^[:alnum:]]\)/important «%1» a dins de la col·lecció\1/g
# a dins de la finestra
s/\b\(amollar-lo\|sistema de fitxers\) a la finestra\([^[:alnum:]]\)/\1 a dins de la finestra\2/g
s/\bInsereix una línia de recordatori a la finestra\([^[:alnum:]]\)/Insereix una línia de recordatori a dins de la finestra\1/g
# a dins de la línia
s/\bagrupar-les a les línies\([^[:alnum:]]\)/agrupar-les a dins de les línies\1/g
s/\bteclegi el contingut d'aquest quadre a la línia\([^[:alnum:]]\)/teclegi el contingut d'aquest quadre a dins de la línia\1/g
# cap a dins de la llibreta
s/\bimportar aquest contacte a la llibreta\([^[:alnum:]]\)/importar aquest contacte cap a dins de la llibreta\1/g
s/\bimportar-la a la llibreta\([^[:alnum:]]\)/importar-la cap a dins de la llibreta\1/g
# a dins de la pestanya
s/\bInsereix una línia horitzontal a la pestanya\([^[:alnum:]]\)/Insereix una línia horitzontal a dins de la pestanya\1/g
# a dins de la safata
s/\b\([Aa]\)cobla el mesclador a la safata\([^[:alnum:]]\)/\1cobla el mesclador a dins de la safata\2/g
s/\bincrustat a la safata\([^[:alnum:]]\)/incrustat a dins de la safata\1/g
# a dins de la ubicació
s/\binstal·lats a la ubicació\([^[:alnum:]]\)/instal·lats a dins de la ubicació\1/g
# a dins de la vista
s/\bvenen a la vista\([^[:alnum:]]\)/venen a dins de la vista\1/g
# a dins del blog
s/\benganxar al vostre blog\([^[:alnum:]]\)/enganxar a dins del vostre blog\1/g
# a dins del calendari
s/\bEmmagatzema una còpia de l'adjunt al calendari\([^[:alnum:]]\)/Emmagatzema una còpia de l'adjunt a dins del calendari\1/g
# a dins del camp
s/\bescrivint «^el» al camp\([^[:alnum:]]\)/escrivint «^el» a dins del camp\1/g
# cap a dins del codi
s/\bMou al codi\([^[:alnum:]]\)/Mou cap a dins del codi\1/g
# a dins del document
s/\b\([Ee]nganxa des del porta-retalls\) al document\([^[:alnum:]]\)/\1 a dins del document\2/g
# a dins del Discover
s/\bIntegra les aplicacions \(del Flatpak\|de l'Snap\|de la distribució\) al Discover\([^[:alnum:]]\)/Integra les aplicacions \1 a dins del Discover\2/g
# a dins del fitxer
s/\b\([Cc]opia\|[Cc]opiar les metadades\) al fitxer\([^[:alnum:]]\)/\1 a dins del fitxer\2/g
# a dins del KDevelop
s/\b\(existent\) al KDevelop\([^[:alnum:]]\)/\1 a dins del KDevelop\2/g
# a dins del Konqueror
s/\bincrustar al Konqueror\([^[:alnum:]]\)/incrustar a dins del Konqueror\1/g
s/\bpodeu emprar aquest &URL; al &konqueror;\([^[:alnum:]]\)/podeu emprar aquest \&URL; a dins del \&konqueror;\1/g
# a dins del Kontact
s/\bKAddressBook incrustat al Kontact\([^[:alnum:]]\)/KAddressBook incrustat a dins del Kontact\1/g
# a dins del porta-retalls
s/\bAl \(&\|\)porta-retalls\([^[:alnum:]]\)/A dins del \1porta-retalls\2/g
s/\b\([Cc]\)ol·loquen al \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)porta-retalls\([^[:alnum:]]\)/\1ol·loquen a dins del \2porta-retalls\3/g
  s/\" al porta-retalls\"/\" a dins del porta-retalls\"/g
  s/\bCopia el camí del fitxer del fitxer actual\([^[:alnum:]]\)/Copia el camí del fitxer actual\1/g
  s/\bCòpia \(el text\|les llibretes\)\([^[:alnum:]]\)/Copia \1\2/g
  s/\bC&opia els seleccionats al porta-retalls\([^[:alnum:]]\)/C\&opia els seleccionats a dins del porta-retalls\1/g
  s/\bCo&pia els seleccionats al porta-retalls\([^[:alnum:]]\)/Co\&pia els seleccionats a dins del porta-retalls\1/g
  s/\bExporta \(cap a un fitxer o\|les dades\|les dades de la taula seleccionada o consulta\) al porta-retalls\([^[:alnum:]]\)/Exporta \1 cap a dins del porta-retalls\2/g
  s/\b\([Mm]\)ou\(-lo\|\)\( els elements o text seleccionats\|\)\(cap \|\) al porta-retalls\([^[:alnum:]]\)/\1ou\2\3 cap a dins del porta-retalls\5/g
s/\b\([Cc]lona\|[Cc]opia\|[Dd]esa\|[Pp]osa\|[Rr]etalla\|[Tt]alla\|[Tt]roba\)\(da\|nt\|[rt]\|r-los\|rà\|ran\|\)\(<[^<]\{1,\}>\|\|\) \(cap \| \|\)al \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)porta-retalls\([^[:alnum:]]\)/\1\2\3 a dins del \5porta-retalls\6/g
s/\b\([Cc]lona\|[Cc]opia\|[Dd]esa\|[Pp]osa\|[Rr]etalla\|[Tt]alla\|[Tt]roba\)\(da\|nt\|[rt]\|r-los\|rà\|ran\|\)\(<[^<]\{1,\}>\|\|\) \(%[12]\|%1 línies del registre\|1 línia del registre\|automàticament\|automàticament el color\|Bibtex\|cap número vàlid de línia\|explícitament\|immediatament\|res\|tots els fotogrames clau\|totes les línies coincidents ressaltades de la cerca des del document actual\|totes les línies coincidents ressaltades de la cerca en el document actual\) \(cap \|\)al \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)porta-retalls\([^[:alnum:]]\)/\1\2\3 \4 a dins del \6porta-retalls\7/g
s/\b\([Cc]lona\|[Cc]opia\|[Dd]esa\|[Pp]osa\|[Rr]etalla\|[Tt]alla\|[Tt]roba\)\(da\|nt\|[rt]\|r-los\|rà\|ran\|\)\(<[^<]\{1,\}>\|\|\) l'\(adreça\|adreça web del proveïdor\|empremta digital\|enllaç\|etiqueta\|ID de la sala\|ID de Matrix de l'usuari\|informe\|origen\|URL\|URL de la font\) \(cap \|\)al \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)porta-retalls\([^[:alnum:]]\)/\1\2\3 l'\4 a dins del \6porta-retalls\7/g
s/\b\([Cc]lona\|[Cc]opia\|[Dd]esa\|[Pp]osa\|[Rr]etalla\|[Tt]alla\|[Tt]roba\)\(da\|nt\|[rt]\|r-los\|rà\|ran\|\)\(<[^<]\{1,\}>\|\|\) el\(s\|\) \(camí\|camí del fitxer actual\|camí del primer element seleccionat\|camí del projecte\|camí i el nom del fitxer\|contactes seleccionats\|contingut de la taula\|desplaçament\|detalls com a text\|detalls de l'error\|elements de la selecció actual\|elements o text seleccionats\|esdeveniments seleccionats\|fotogrames\|fotogrames seleccionats\|missatges seleccionats\|nom\|nom de la icona\|primer element\|resultat\|seleccionats\|testimoni d'accés\|text actualment seleccionat\|text d'un element de l'IGU\|text de cerca\|text seleccionat\|TLE\|URL\) \(cap \|\)al \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)porta-retalls\([^[:alnum:]]\)/\1\2\3 el\4 \5 a dins del \7porta-retalls\8/g
s/\b\([Cc]lona\|[Cc]opia\|[Dd]esa\|[Pp]osa\|[Rr]etalla\|[Tt]alla\|[Tt]roba\)\(da\|nt\|[rt]\|r-los\|rà\|ran\|\)\(<[^<]\{1,\}>\|\|\) la \(cadena de format\|capa\|destinació\|imatge\|imatge ampliada\|imatge escanejada\|informació de la fallada (traça inversa)\|llicència\|nota\|partició <filename>%1<\/filename>\|secció seleccionada\|secció seleccionada i la posa\|selecció\|suma de verificació\|taula o la consulta seleccionada\|ubicació\|ubicació de %2\|ubicació del fitxer\|vista ampliada\) \(cap \|\)al \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)porta-retalls\([^[:alnum:]]\)/\1\2\3 la \4 a dins del \6porta-retalls\7/g
s/\b\([Cc]lona\|[Cc]opia\|[Dd]esa\|[Pp]osa\|[Rr]etalla\|[Tt]alla\|[Tt]roba\)\(da\|nt\|[rt]\|r-los\|rà\|ran\|\)\(<[^<]\{1,\}>\|\|\) les \(accions d'usuari\|adreces d'interès de la vista actual\|cadenes seleccionades\|carpetes de calendari seleccionades\|carpetes seleccionades\|carpetes seleccionades de la llibreta d'adreces\|citacions bibtex\|columnes\|coordenades geogràfiques a la posició del cursor\|dades\|dades de la consulta\|dades de la taula\|dades seleccionades\|entrades seleccionades actualment des del llibre de frases\|frases seleccionades de l'historial\|línies d'estadístiques seleccionades\|llibretes seleccionades\|notes\|notes seleccionades\|taules o consultes seleccionades\) \(cap \|\)al \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)porta-retalls\([^[:alnum:]]\)/\1\2\3 les \4 a dins del \6porta-retalls\7/g
s/\b\([Ee]\)scri\(guin\|ure\) al \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)porta-retalls\([^[:alnum:]]\)/\1scri\2 a dins del \3porta-retalls\4/g
# a dins del quadre
s/\b\(inserir reserves de lloc\|Introduïu una cadena coincident\) al quadre\([^[:alnum:]]\)/\1 a dins del quadre\2/g
s/\bIntroduïu una cadena coincident en el quadre\([^[:alnum:]]\)/Introduïu una cadena coincident a dins del quadre\1/g
# a dins del vostre dispositiu
s/\bInseriu una targeta SIM en el vostre dispositiu\([^[:alnum:]]\)/Inseriu una targeta SIM a dins del vostre dispositiu\1/g
# #
# # # # # # # # # # # # # #
#
# cap a on
s/, a on transferir\([^[:alnum:]]\)/, cap a on s'han de transferir\1/g
s/\(->\|)\|HMS\|segons-d'arc\) a on està apuntant\([^[:alnum:]]\)/\1 cap a on està apuntant\2/g
s/\badreça d'interès a on ha d'apuntar\([^[:alnum:]]\)/adreça d'interès cap a on ha d'apuntar\1/g
s/\b\([Cc]\)omproveu a on apunten\([^[:alnum:]]\)/\1omproveu cap a on apunten\2/g
s/\bdiners i a on van\([^[:alnum:]]\)/diners i cap a on van\1/g
s/\bpodeu escollir a on\([^[:alnum:]]\)/podeu escollir cap a on\1/g
 #
s/\bcap a fitxer\([^[:alnum:]]\)/cap a un fitxer\1/g
s/\bcap a imatge\([^[:alnum:]]\)/cap a una imatge\1/g
 #
s/\bAjusta la mida de l'exportació cap al contingut\([^[:alnum:]]\)/Ajusta la mida de l'exportació al contingut\1/g
s/\bArrossegueu els sensors a les cel·les\([^[:alnum:]]\)/Arrossegueu els sensors cap a les cel·les\1/g
s/\b\([Cc]\)arpeta a la qual\([^[:alnum:]]\)/\1arpeta cap a la qual\2/g
s/\bconduir («pipe») el text a la consola\([^[:alnum:]]\)/conduir («pipe») el text cap a la consola\1/g
s/\benllaç apunta al programa\([^[:alnum:]]\)/enllaç apunta cap al programa\1/g
s/\b\([Ee]\)nllaç al blog\([^[:alnum:]]\)/\1nllaç cap al blog\2/g
s/\benllaços simbòlics que apunten a elements\([^[:alnum:]]\)/enllaços simbòlics que apunten cap a elements\1/g
s/\bEnvia la finestra una pantalla a \(l'esquerra\|la dreta\)\([^[:alnum:]]\)/Envia la finestra una pantalla cap a \1\2/g
s/\b\(es transferiran\) a la imatge\([^[:alnum:]]\)/\1 cap a la imatge\2/g
s/\bexportar els contactes del missatger a la llibreta\([^[:alnum:]]\)/exportar els contactes del missatger cap a la llibreta\1/g
s/\bExporta els detalls dels contactes a la llibreta\([^[:alnum:]]\)/Exporta els detalls dels contactes cap a la llibreta\1/g
s/\bExporta la imatge del cel al fitxer\([^[:alnum:]]\)/Exporta la imatge del cel cap al fitxer\1/g
s/\bExporta les claus \(dels contactes\|marcades\|públiques\) a la llibreta\([^[:alnum:]]\)/Exporta les claus \1 cap a la llibreta\2/g
s/\bExportador al\([^[:alnum:]]\)/Exportador cap al\1/g
s/\b\([Ee]\)xporteu el full de treball a formats\([^[:alnum:]]\)/\1xporteu el full de treball cap a formats\2/g
s/\b\([Gg]\)ira l'objecte 90° a la dreta\([^[:alnum:]]\)/\1ira l'objecte 90° cap a la dreta\2/g
s/\bl'eixida d'un dels filtres a l'entrada\([^[:alnum:]]\)/l'eixida d'un dels filtres cap a l'entrada\1/g
s/\b\([Ll]\)lança't a l'última peça d'or\([^[:alnum:]]\)/\1lança't cap a l'última peça d'or\2/g
s/\bmogut %1 missatges antics de la carpeta %2 a la carpeta\([^[:alnum:]]\)/mogut %1 missatges antics des de la carpeta %2 cap a la carpeta\1/g
s/\bmogut un missatge antic de la carpeta %2 a la carpeta\([^[:alnum:]]\)/mogut un missatge antic des de la carpeta %2 cap a la carpeta\1/g
s/\b\([Mm]ou el missatge\|[Mm]ou els fitxers\|[Mm]ou els missatges amb virus detectats\|[Mm]ou tots els missatges\|[Mm]oure els correus\|[Mm]oveu un fitxer\) a la carpeta\([^[:alnum:]]\)/\1 cap a la carpeta\2/g
s/\bMou els camps ressaltats des de la llista de dades \(disponibles\|seleccionades\) a la llista\([^[:alnum:]]\)/Mou els camps ressaltats des de la llista de dades \1 cap a la llista\2/g
s/\bMoveu el canal seleccionat a la llista\([^[:alnum:]]\)/Moveu el canal seleccionat cap a la llista\1/g
s/\bmoure el correu \(des \|\)de la carpeta %1 a la carpeta\([^[:alnum:]]\)/moure el correu des de la carpeta %1 cap a la carpeta\2/g
s/\bmoure el lateral \(des \|\)del fitxer %1 a l'àlbum\([^[:alnum:]]\)/moure el lateral des del fitxer %1 cap a l'àlbum\2/g
s/\bmoure la carpeta %1 \(des \|\)de la carpeta %2 a la carpeta\([^[:alnum:]]\)/moure la carpeta %1 des de la carpeta %2 cap a la carpeta\2/g
s/\bmovent %1 missatges antics \(des \|\)de la carpeta %2 a la carpeta\([^[:alnum:]]\)/movent %1 missatges antics des de la carpeta %2 cap a la carpeta\2/g
s/\bmovent un missatge antic \(des \|\)de la carpeta %2 a la carpeta\([^[:alnum:]]\)/movent un missatge antic des de la carpeta %2 cap a la carpeta\2/g
s/\b\(opcions importants i\) a la documentació\([^[:alnum:]]\)/\1 cap a la documentació\2/g
s/\bOrienta el telescopi a l'objecte\([^[:alnum:]]\)/Orienta el telescopi cap a l'objecte\1/g
s/\b\(Redirigeix els missatges d'estat\) a la finestra\([^[:alnum:]]\)/\1 cap a la finestra\2/g
s/\btransferència binària d'aquesta propietat al\([^[:alnum:]]\)/transferència binària d'aquesta propietat cap al\1/g
s/\btrasllat dels missatges antics \(des \|\)de la carpeta %1 a la carpeta\([^[:alnum:]]\)/trasllat dels missatges antics des de la carpeta %1 cap a la carpeta\2/g
s/\btrasllat dels missatges \(des \|\)de la carpeta %1 a la carpeta\([^[:alnum:]]\)/trasllat dels missatges des de la carpeta %1 cap a la carpeta\2/g
s/\bvegada d'una torre a l'altra\([^[:alnum:]]\)/vegada des d'una torre cap a l'altra\1/g

# #
# # # # # # # # # # # # # #
#
# actualitzar
  s/1 \(element\|paquet\) a actualitzar\([^[:alnum:]]\)/1 \1 que s'ha d'actualitzar\2/g
  s/1 \(elements\|paquets\) a actualitzar\([^[:alnum:]]\)/1 \1 que s'han d'actualitzar\2/g
  s/\bNo hi ha peces a actualitzar\([^[:alnum:]]\)/No hi ha cap peça que s'hagi d'actualitzar\1/g
  s/\bPenseu a actualitzar\([^[:alnum:]]\)/Penseu que cal actualitzar\1/g
s/\(L'element\) a actualitzar\([^[:alnum:]]\)/\1 que s'ha d'actualitzar\2/g
s/\b\(ha cap paquet\|ha cap títol\|trobar cap incidència\|trobar cap invitació\) a actualitzar\([^[:alnum:]]\)/\1 que s'hagi d'actualitzar\2/g
s/\b\([Aa]rrossegueu les icones entre les llistes\|[Nn]o hi ha peces\) a actualitzar\([^[:alnum:]]\)/\1 que s'hagin d'actualitzar\2/g
# adjuntar
s/\b\([Tt]rieu el fitxer\) a adjuntar\([^[:alnum:]]\)/\1 que s'ha d'adjuntar\2/g
s/\b\([Tt]rieu un fitxer\) a adjuntar\([^[:alnum:]]\)/\1 que calgui adjuntar\2/g
# afegir
  s/\b\([Dd]\)onem la benvinguda a tothom a \(<[^<]\{1,\}>\)afegir-se\([^[:alnum:]]\)/\1onem la benvinguda a tothom que vulgui \2afegir-se\3/g
  s/\bnombre = dies a afegir-hi\([^[:alnum:]]\)/nombre = dies que cal afegir-hi\1/g
  s/\bQuines pàgines existents a afegir[?]\([^[:alnum:]]\)/Quines pàgines existents s'han d'afegir\?\1/g
  s/\bTrieu \(un\|el\) fitxer a afegir\([^[:alnum:]]\)/Trieu el que cal afegir\2/g
s/\b\(Contacte\|Escull el fitxer\|especificat el nom del contacte\|La col·lecció\|La subcategoria\|Marge\|Opció del Meson\|Reanomena el compte\|Trieu la impressora\|Trieu la gràfica\|Trieu la vista d'eina\|Sufix\|Text\|Trieu el paràmetre\|ubicació de la biblioteca\|un objecte en cada línia\) a afegir\([^[:alnum:]]\)/\1 que s'ha d'afegir\2/g
s/\b\(Metadades\|Trieu els fitxers\|Trieu les imatges i\/o trajectes GPX\|[Tt]rieu les pàgines\) a afegir\([^[:alnum:]]\)/\1 que s'han d'afegir\2/g
s/\b\(Capa de fitxer\|Compte opcional\|El nom d'una etiqueta\|[Ee]specifiqueu el prefix\|Establiu aquí l'amplada de la vora en píxels\|Introduïu una data\|[Tt]ria el directori\|Trieu aquí el tipus de vora\|[Ss]embrador web\) a afegir\([^[:alnum:]]\)/\1 que s'afegirà\2/g
s/\b\(Llista dels clips\|[Tt]rieu els fotogrames\) a afegir\([^[:alnum:]]\)/\1 que s'afegiran\2/g
s/\b\(Àrea de pàgina\|cap element\|[Tt]rieu una imatge\|[Tt]rieu el fitxer\) a afegir\([^[:alnum:]]\)/\1 que s'hagi d'afegir\2/g
s/\b\(Trieu les divises\|Trieu un o més tipus de fitxers\) a afegir\([^[:alnum:]]\)/\1 que s'hagin d'afegir\2/g
# agafar
s/\b\(Trieu el directori\) a agafar\([^[:alnum:]]\)/\1 que s'ha d'agafar\2/g
s/\b\(Trieu la branca\) a agafar\([^[:alnum:]]\)/\1 que s'agafarà\2/g
# ajustar
  s/\bFunció a ajustar i opcions\([^[:alnum:]]\)/Funció per a ajustar i opcions\1/g
s/\b\(Dades\) a ajustar\([^[:alnum:]]\)/\1 que s'han d'ajustar\2/g
## alinear
# alliberar
s/\b\(Espai\) a alliberar\([^[:alnum:]]\)/\1 que s'ha d'alliberar\2/g
# ampliar
s/\b\(Regió\) a ampliar\([^[:alnum:]]\)/\1 que s'ha d'ampliar\2/g
# analitzar
  s/\b\([Cc]odi\) a analitzar\([^[:alnum:]]\)/\1 que s'ha d'analitzar\2/g
s/\(\"codi\|Trieu la carpeta\|Trieu la carpeta\) a analitzar\([^[:alnum:]]\)/\1 que s'ha d'analitzar\2/g
s/\b\(Els fitxers i directoris\|Els patrons de fitxer\|o més variables\|Trieu un o més objectes\) a analitzar\([^[:alnum:]]\)/\1 que s'analitzaran\2/g
s/\b\(Trieu un o més vectors numèrics\) a analitzar\([^[:alnum:]]\)/\1 que s'hagin d'analitzar\2/g
# annexar
s/\b\(llegir el fitxer de subtítols\) a annexar\([^[:alnum:]]\)/\1 que s'ha d'annexar\2/g
# aplicar
s/\b\(La plantilla\|Plan&tilla\|Trieu l'estil de full\) a aplicar\([^[:alnum:]]\)/\1 que s'ha de aplicar\2/g
s/\b\(Correccions de la lent\) a aplicar\([^[:alnum:]]\)/\1 que s'han de aplicar\2/g
s/\b\(Aquest és el filtre\|Establiu aquí el tipus de textura\|la quantitat de reacció\|Trieu aquí el mètode de reducció de soroll\|Trieu aquí el mètode de reducció del soroll\|Trieu aquí el tipus d'efecte\|Trieu aquí l'efecte de difuminat\|seleccioneu un filtre\) a aplicar\([^[:alnum:]]\)/\1 que s'aplicarà\2/g
# aprendre
s/\b\(Idioma\) a aprendre\([^[:alnum:]]\)/\1 que s'ha d'aprendre\2/g
# arxivar
s/\b\(URL de la pàgina web\) a arxivar\([^[:alnum:]]\)/\1 que s'ha d'arxivar\2/g
s/\b\(Tasques pendents\|Tipus d'elements\|URL de la pàgina web\) a arxivar\([^[:alnum:]]\)/\1 que s'han d'arxivar\2/g
s/\b\(i tasques pendents\|tires de còmic\) a arxivar\([^[:alnum:]]\)/\1 que s'arxivaran\2/g
# assignar
s/\bEl color a assignar el color de l'original\([^[:alnum:]]\)/El color que s'assignarà des del color original\1/g
# associar
s/\b\(Fitxer\) a associar\([^[:alnum:]]\)/\1 que s'ha d'associar\2/g
# assumir
s/\b\(Establix la codificació\) a assumir\([^[:alnum:]]\)/\1 que s'assumirà\2/g
# avaluar
s/\b\(Punts intermedis\) a avaluar\([^[:alnum:]]\)/\1 que s'han d'avaluar\2/g
s/\b\(Codi JavaScript\|Introduïu aquí l'equació\) a avaluar\([^[:alnum:]]\)/\1 que s'avaluarà\2/g
# baixar
  s/%1 a baixar\([^[:alnum:]]\)/%1 per a baixar\1/g
  s/\besperat a baixar i processar\([^[:alnum:]]\)/esperat que es baixarà i processarà\1/g
s/\b\(Controla el porta-retalls per als fitxers\|Els URL\|Fragments\|Trieu models nous\) a baixar\([^[:alnum:]]\)/\1 que s'han de baixar\2/g
s/\b\(Trieu el model\|Trieu la branca\) a baixar\([^[:alnum:]]\)/\1 que es baixarà\2/g
s/\b\(Indiqueu els episodis\|Indiqueu les temporades\|Podeu arrossegar els enllaços\) a baixar\([^[:alnum:]]\)/\1 que es baixaran\2/g
# barrejar
s/\b\(Trieu els canals\) a barrejar\([^[:alnum:]]\)/\1 que s'han de barrejar\2/g
# bloquejar
# bolcar
s/\b\(La col·lecció\|Repositori\) a bolcar\([^[:alnum:]]\)/\1 que s'ha de bolcar\2/g
# calcular
s/\b\(Expressió\) a calcular\([^[:alnum:]]\)/\1 que s'ha de calcular\2/g
s/\b\(Defineix les planificacions\) a calcular\([^[:alnum:]]\)/\1 que s'han de calcular\2/g
s/\b\(defineix la dada\|Especifiqueu la quantitat\|Tipus de tabulació \/ estadística\) a calcular\([^[:alnum:]]\)/\1 que es calcularà\2/g
s/\b\(canvieu els valors \/ unitats\|i les coordenades geogràfiques\) a calcular\([^[:alnum:]]\)/\1 que es calcularan\2/g
# calibrar
s/\b\(Trieu una estrella guia\) a calibrar\([^[:alnum:]]\)/\1 que s'hagi de calibrar\2/g
# canviar
s/\b\(No hi ha cap propietat\) a canviar\([^[:alnum:]]\)/\1 que calgui canviar\2/g
s/\buna llista de les finestres per a canviar\([^[:alnum:]]\)/una llista de les finestres per a canviar-hi\1/g
# capturar
s/\b\(Nombre d'imatges\) a capturar\([^[:alnum:]]\)/\1 que s'han de capturar\2/g
s/\b\(Trieu la finestra\) a capturar\([^[:alnum:]]\)/\1 que es capturarà\2/g
s/\b\(Conté la quantitat d'imatges\|El nombre d'imatges\|Nombre de fotogrames\) a capturar\([^[:alnum:]]\)/\1 que es capturaran\2/g
# carregar
  s/\bEl nom del fitxer del fitxer a carregar\([^[:alnum:]]\)/El nom del fitxer que s'ha de carregar\1/g
  s/\bEspecifica els connectors addicionals a carregar\.\([^[:alnum:]]\)/Especifica els connectors addicionals que es carregaran\.\1/g
  s/\bFitxer a carregar amb\([^[:alnum:]]\)/Fitxer que es carregarà amb\1/g
  s/\bFitxer de configuració de la \(redimensió\|restauració\) de fotografia a carregar\([^[:alnum:]]\)/Fitxer de configuració de la \1 de la fotografia que es carregarà\2/g
s/\b\(Configuració\|El diagrama\|El fitxer de col·lecció de nivells\|especificant el <file> QML inicial\|Fitxer de disposició JSON\|Nom de la «part»\|Pàgina\|Trieu el fitxer de nivells del Gimp\|Trieu el fitxer\|Tria el tipus de la melodia\|Trieu el fitxer\|Tria la configuració actual de la llista\) a carregar\([^[:alnum:]]\)/\1 que es carregarà\2/g
s/\b\(Connectors del Kate\|Nombre de peces\|Trieu la llista de fitxers d'imatge\) a carregar\([^[:alnum:]]\)/\1 que es carregaran\2/g
s/\b\(Diagrama\|El nom del fitxer\|Fitxer\|fitxer: el fitxer\|Fitxer de dades R\|L'entorn de proves\|Mida de l'arrencada\|Partida\|Trieu el fitxer d'historial d'ordres\|Trieu el fitxer GPX\|Trieu la imatge\|Trieu la llista de fitxers d'imatge\) a carregar\([^[:alnum:]]\)/\1 que s'ha de carregar\2/g
s/\b\(Especifica els connectors addicionals\|Fitxers\|Fitxers dels fulls de treball opcionals\|Fitxers o carpetes\|Projectes\) a carregar\([^[:alnum:]]\)/\1 que s'han de carregar\2/g
s/\b\(Trieu un directori\|Trieu un fitxer\) a carregar\([^[:alnum:]]\)/\1 que s'hagi de carregar\2/g
s/\b\(o directoris\) a carregar\([^[:alnum:]]\)/\1 que s'hagin de carregar\2/g
# centrar
s/\b\(Camí de fitxer o carpeta\) a centrar\([^[:alnum:]]\)/\1 que se centrarà\2/g
# cercar
  s/\bÀrea extra a cercar\([^[:alnum:]]\)/Àrea extra on cal cercar\1/g
  s/\bbase de dades a cercar\([^[:alnum:]]\)/base de dades on cercar\1/g
  s/\bCamps a cercar-hi\([^[:alnum:]]\)/Camps a on cercar\1/g
  s/\bcap terme a cercar\([^[:alnum:]]\)/cap terme que s'hagi de cercar\1/g
  s/\bGrau de precisió del GALR quan a cercar les peces\([^[:alnum:]]\)/Grau de precisió del GALR quan se cerquen les peces\1/g
  s/\bIntroduïu un patró a cercar\([^[:alnum:]]\)/Introduïu un patró de cerca\1/g
  s/\bNo s'ha trobat el text a cercar\([^[:alnum:]]\)/No s'ha trobat el text se cercava\1/g
  s/\bText a cercar o identificadorr\([^[:alnum:]]\)/Text que se cercarà o identificador\1/g
s/\b\(Adreça o terme\|Clau\|El text sencer\|Inseriu el text\|Introduïu aquí el text\|Introduïu aquí el terme\|Introduïu aquí una cadena\|Introduïu el terme\|Introduïu l'URL\/terme\|nom de pestanya\|Trieu la base de dades\|trieu la cadena\|Terme\|Text\|Tipus\) a cercar\([^[:alnum:]]\)/\1 que s'ha de cercar\2/g
s/\b\(Errors\|Introduïu aquí els termes\|Pronuncia les paraules\|Trieu què emprar per a les lletres\|Tipus de dades\) a cercar\([^[:alnum:]]\)/\1 que s'han de cercar\2/g
s/\b\(Heu d'introduir una cadena\|Introduïu aquí un terme\|Introduïu un terme\|No s'ha introduït cap terme\) a cercar\([^[:alnum:]]\)/\1 que calgui cercar\2/g
s/\b\(Mostra la imatge\|coincideixen amb l'expressió\) a cercar\([^[:alnum:]]\)/\1 que se cerca\2/g
s/\b\(Comenceu a escriure un terme\|delimitador de la paraula clau i el terme\|Heu d'introduir un text\|La cadena\|La data d'inici del període\|La data final del període\|Mostra la imatge\|separa la paraula clau de la frase o paraula\) a cercar\([^[:alnum:]]\)/\1 que se cercarà\2/g
s/\b\(especificar un o més dominis de DNS\|Introduïu aquí el patró de nom de fitxer dels fitxers\|introduir els termes\|Introduïu els bytes\|Llista dels tipus de fitxer\|Paraules\) a cercar\([^[:alnum:]]\)/\1 que se cercaran\2/g
# circular
  s/\bseleccionada a la llista de prioritats a circular\([^[:alnum:]]\)/seleccionada a la llista de prioritats que han de circular\1/g
# clonar
s/\b\(llegint la imatge\|Ubicació local\) a clonar\([^[:alnum:]]\)/\1 que s'ha de clonar\2/g
s/\b\(Trieu un directori\) a clonar\([^[:alnum:]]\)/\1 que s'hagi de clonar\2/g
# codificar
  s/\bObre fitxer a codificar\([^[:alnum:]]\)/Obre un fitxer que s'ha de codificar\1/g
# combinar
s/\b\(Nombre de files\) a combinar\([^[:alnum:]]\)/\1 que es combinaran\2/g
# cometre
s/\b\(Encara no hi ha res\|No hi ha cap canvi\|No hi ha cap fitxer\|No hi ha res\|No s'ha seleccionat cap fitxer\) a cometre\([^[:alnum:]]\)/\1 que s'hagi de cometre\2/g
s/\b\(Fitxers\|Trieu els fitxers\) a cometre\([^[:alnum:]]\)/\1 que s'han de cometre\2/g
# comparar
s/\b\(introduïu la suma MD5\) a comparar\([^[:alnum:]]\)/\1 que s'ha de comparar\2/g
s/\b\(Abans de res seleccioneu els fitxers\|Dades de perfilat base\|indicant dos intervals de dades\) a comparar\([^[:alnum:]]\)/\1 que es compararan\2/g
# compartir
s/\b\(Crea una pantalla virtual nova\) a compartir\([^[:alnum:]]\)/\1 que es compartirà\2/g
s/\b\(Els elements\) a compartir\([^[:alnum:]]\)/\1 que es compartiran\2/g
s/\b\(El text\|Trieu la pantalla\|Trieu la finestra\|URL\) a compartir\([^[:alnum:]]\)/\1 que s'ha de compartir\2/g
s/\b\(Trieu les finestres\|Trieu les pantalles\) a compartir\([^[:alnum:]]\)/\1 que s'han de compartir\2/g
s/\b\(hi ha cap col·lecció\|hi ha cap element \) a compartir\([^[:alnum:]]\)/\1 que s'hagi de compartir\2/g
# completar
s/\b\(Longitud mínima de la paraula\) a completar\([^[:alnum:]]\)/\1 que s'ha de completar\2/g
# comprimir
  s/\bFitxers\/carpetes a comprimir\([^[:alnum:]]\)/Fitxers i carpetes que s'han de comprimir\1/g
s/\b\(Trieu una imatge\) a comprimir\([^[:alnum:]]\)/\1 que s'ha de comprimir\2/g
# comprovar
s/\b\(Error en recopilar la llista\|error quan es recopilava la llista\) a comprovar\([^[:alnum:]]\)/\1 que s'ha de comprovar\2/g
s/\b\(Errors\) a comprovar\([^[:alnum:]]\)/\1 que s'han de comprovar\2/g
s/\b\(No hi ha res\|Qualsevol text\) a comprovar\([^[:alnum:]]\)/\1 que calgui comprovar\2/g
s/\b\(CRL, el certificat\|La recopilació de la llista\|La distància\) a comprovar\([^[:alnum:]]\)/\1 que es comprovarà\2/g
# configurar
s/\b\(Impressora\|Tria el servei\) a configurar\([^[:alnum:]]\)/\1 que s'ha de configurar\2/g
s/\b\(no s'ha especificat el projecte\) a configurar\([^[:alnum:]]\)/\1 que es configurarà\2/g
# confirmar
s/\b\(Introduïu el nom de la caixa forta\) a confirmar\([^[:alnum:]]\)/\1 que s'ha de confirmar\2/g
# connectar
# conquerir
  s/\bLlista dels continents a conquerir en un objectiu\([^[:alnum:]]\)/Llista dels continents que es conqueriran en un objectiu\1/g
  s/\bNombre de països a conquerir en un objectiu\([^[:alnum:]]\)/Nombre de països que es conqueriran en un objectiu\1/g
s/\b\(que el jugador triï un dels continents\) a conquerir\([^[:alnum:]]\)/\1 que s'ha de conquerir\2/g
s/\b\(Llista dels continents\|Nombre de països\|Trieu els continents\) a conquerir\([^[:alnum:]]\)/\1 que s'han de conquerir\2/g
s/\b\(un per a cada continent\) a conquerir\([^[:alnum:]]\)/\1 que es conquerirà\2/g
# conservar
s/\b\(Nombre de missatges\) a conservar\([^[:alnum:]]\)/\1 que s'han de conservar\2/g
s/\b\(seleccioneu el valor\|[Tt]rieu el valor\) a conservar\([^[:alnum:]]\)/\1 que es conservarà\2/g
s/\b\(Nombre d'articles\) a conservar\([^[:alnum:]]\)/\1 que es conservaran\2/g
# considerar
s/\b\(Especifiqueu l'element\) a considerar\([^[:alnum:]]\)/\1 que s'ha de considerar\2/g
s/\b\(capes de sistema\) a considerar\([^[:alnum:]]\)/\1 que s'han de considerar\2/g
s/\b\(ser la primera opció\) a considerar\([^[:alnum:]]\)/\1 que calgui considerar\2/g
# consultar
s/\b\(La cartera\) a consultar\([^[:alnum:]]\)/\1 que s'ha de consultar\2/g
s/\b\(La cartera\|Llista de les paraules\) a consultar\([^[:alnum:]]\)/\1 que s'han de consultar\2/g
# construir
s/\b\(Trieu l'objectiu\) a construir\([^[:alnum:]]\)/\1 que s'ha de construir\2/g
s/\b\(Característiques\) a construir\([^[:alnum:]]\)/\1 que s'han de construir\2/g
s/\b\(No hi ha cap objectiu anterior\) a construir\([^[:alnum:]]\)/\1 que calgui construir\2/g
# convertir
s/\b\(Codificació de la cadena\|El valor\|Número\|Una cadena d'un caràcter\|Valor booleà\|Valor enter\) a convertir\([^[:alnum:]]\)/\1 que s'ha de convertir\2/g
s/\b\(Els valors ASCII\|Fitxers\) a convertir\([^[:alnum:]]\)/\1 que s'han de convertir\2/g
s/\b\(No hi ha cap pista\) a convertir\([^[:alnum:]]\)/\1 que calgui convertir\2/g
s/\b\(\.desktop\|El dòlar fraccional és el nombre\)\(<[^<]\{1,\}>\|\) a convertir\([^[:alnum:]]\)/\1\2 que es convertirà\3/g
s/\b\(No heu especificat cap perfil\) a convertir\([^[:alnum:]]\)/\1 que s'hagi de convertir\2/g
s/\b\(No hi ha adreces IP\) a convertir\([^[:alnum:]]\)/\1 que s'hagin de convertir\2/g
# copiar
  s/\bCol·lecció de destinació a copiar dins de\([^[:alnum:]]\)/Col·lecció de destinació a on s'ha de copiar\1/g
  s/\bdesseleccioneu els fitxers a copiar\/moure\([^[:alnum:]]\)/desseleccioneu els fitxers que es copiaran\/mouran\1/g
s/\b\(Repositori\) a copiar\([^[:alnum:]]\)/\1 que s'ha de copiar\2/g
s/\b\(Col·leccions existents o elements\) a copiar\([^[:alnum:]]\)/\1 que s'han de copiar\2/g
s/\b\(Aquesta és la llista d'elements\|dir, es ressaltarà el text\) a copiar\([^[:alnum:]]\)/\1 que es copiarà\2/g
s/\b\(Dibuixa un rectangle al voltant del text\/gràfics\) a copiar\([^[:alnum:]]\)/\1 que es copiaran\2/g
# corregir
  s/\bres a corregir\([^[:alnum:]]\)/res per a corregir\1/g
# crear
s/\b\(Trieu el tipus d'alarma\|La col·lecció\|Tipus de bloc de notes\) a crear\([^[:alnum:]]\)/\1 que s'ha de crear\2/g
s/\b\(Component\) a crear\([^[:alnum:]]\)/\1 que es crearà\2/g
s/\b\(especifica el nombre de columnes\) a crear\([^[:alnum:]]\)/\1 que es crearan\2/g
# cronometrar
  s/\bnomés permet una tasca a cronometrar\([^[:alnum:]]\)/només permet que es cronometri una tasca\1/g
# definir
s/\b\(Introduïu aquí la paraula\) a definir\([^[:alnum:]]\)/\1 que s'ha de definir\2/g
# deixar
s/\b\(Dies\|Nom de l'objecte\|Nombre de peces\) a deixar\([^[:alnum:]]\)/\1 que s'han de deixar\2/g
# depurar
s/\b\(Màscara per als components\) a depurar\([^[:alnum:]]\)/\1 que s'han de depurar\2/g
# desactualitzar
  s/1 \(element\|paquet\) a desactualitzar\([^[:alnum:]]\)/1 \1 que s'ha de desactualitzar\2/g
  s/1 \(elements\|paquets\) a desactualitzar\([^[:alnum:]]\)/1 \1 que s'han de desactualitzar\2/g
# desar
  s/\b\(Directori\) a desar\([^[:alnum:]]\)/\1 on es desarà\2/g
  s/\bFitxer a desar amb\([^[:alnum:]]\)/Fitxer que es desarà amb\1/g
  s/\bFitxer de configuració de la redimensió de fotografia a desar\([^[:alnum:]]\)/Fitxer de configuració de la redimensió de la fotografia que es desarà\1/g
  s/\bNo hi ha cap URL a desar\([^[:alnum:]]\)/No hi ha cap URL per desar\1/g
  s/\bNo hi ha res a desar\([^[:alnum:]]\)/No hi ha res que s'hagi de desar\1/g
  s/\bNo s'ha trobat cap adjunt a desar\([^[:alnum:]]\)/No s'ha trobat cap adjunt per a desar\1/g
s/\b\(El nom de fitxer\|El tipus d'arxiu web\|Fitxer\|Fitxer de nivells del Gimp\|Introduïu el text\|Trieu la llista de fitxers d'imatge\) a desar\([^[:alnum:]]\)/\1 que s'ha de desar\2/g
s/\b\(El tipus d'imatge\|restauració de fotografia\|Trieu la llista de fitxers d'imatge\) a desar\([^[:alnum:]]\)/\1 que es desarà\2/g
s/\b\(Trieu els objectes\) a desar\([^[:alnum:]]\)/\1 que es desaran\2/g
s/\b\(Un o més objectes\) a desar\([^[:alnum:]]\)/\1 que s'han de desar\2/g
s/\b\(Trieu els elements candidats\) a desar-los\([^[:alnum:]]\)/\1 que s'hagin de desar\2/g
# descarregar
  s/\bHi ha un límit d'%n tessel·la a descarregar\([^[:alnum:]]\)/Hi ha un límit d'%n tessel·la que es pot descarregar\1/g
  s/\bHi ha un límit de %n tessel·les a descarregar\([^[:alnum:]]\)/Hi ha un límit de %n tessel·les que es poden descarregar\1/g
s/\b\(Tipus de mosaic\|Tipus de tessel·la\) a descarregar\([^[:alnum:]]\)/\1 que s'ha de descarregar\2/g
s/\b\(Mida aproximada de les tessel·les\|Nombre de mosaics\|Nombre de tessel·les\) a descarregar\([^[:alnum:]]\)/\1 que s'han de descarregar\2/g
s/\b\(de les dades dels asteroides\|Magnitud màxima dels asteroides\) a descarregar\([^[:alnum:]]\)/\1 que es descarregaran\2/g
# descodificar
  s/\bObre fitxer a descodificar\([^[:alnum:]]\)/Obre un fitxer que s'ha de descodificar\1/g
# desencriptar
s/\b\(Trieu un o més fitxers\) a desencriptar\([^[:alnum:]]\)/\1 que s'han de desencriptar\2/g
# desfer
  s/\bNo hi ha moviments a desfer\([^[:alnum:]]\)/No hi ha cap moviment per a desfer\1/g
  s/\bNombre màxim de passos a desfer per a l'àrea de treball\([^[:alnum:]]\)/Nombre màxim de passos que es desfaran per a l'àrea de treball\1/g
s/\b\(Dades\|Nombre màxim de passos\) a desfer\([^[:alnum:]]\)/\1 que s'han de desfer\2/g
s/\b\(Defineix el nombre de passos\) a desfer\([^[:alnum:]]\)/\1 que es desfaran\2/g
# desplaçar
s/\b\(Quantitat\) a desplaçar\([^[:alnum:]]\)/\1 que s'ha de desplaçar\2/g
s/\b\(Cal tenir present que un nombre negatiu de bits\|Nombre de columnes\|Nombre de files\|Nombre màxim de píxels\) a desplaçar\([^[:alnum:]]\)/\1 que s'han de desplaçar\2/g
s/\b\(El nombre de bits\) a desplaçar\([^[:alnum:]]\)/\1 que es desplaçaran\2/g
# destruir
s/\b\(no hi ha cap jugador\) a destruir\([^[:alnum:]]\)/\1 que s'hagi de destruir\2/g
s/\b\(El primer jugador\) a destruir\([^[:alnum:]]\)/\1 que destrueixi\2/g
# detectar
  s/\bEl llindar per al silenci continuat a detectar pel Konsole\([^[:alnum:]]\)/El llindar per al silenci continuat que ha de detectar el Konsole\1/g
# determinar
s/\b\(Paràmetre\) a determinar\([^[:alnum:]]\)/\1 que s'ha de determinar\2/g
# dibuixar
  s/\bNo s'ha seleccionat cap dada a dibuixar-ne el diagrama\([^[:alnum:]]\)/No s'ha seleccionat cap dada que s'hagi de dibuixar en el diagrama\1/g
s/\b\(Canal\|Nom de l'objecte\|Tria el model ajustat\) a dibuixar\([^[:alnum:]]\)/\1 que s'ha de dibuixar\2/g
s/\b\(Funcions inicials\) a dibuixar\([^[:alnum:]]\)/\1 que s'han de dibuixar\2/g
s/\b\(Per a seleccionar un camp\) a dibuixar\([^[:alnum:]]\)/\1 que s'hagi de dibuixar\2/g
s/\b\(magnitud de l'asteroide més feble\|Trieu un vector o un factor\|Trieu una matriu, un vector o un factor\) a dibuixar\([^[:alnum:]]\)/\1 que es dibuixarà\2/g
s/\b\(El nombre de bandes\|Trieu les dades numèriques\|Trieu un o més objectes\) a dibuixar\([^[:alnum:]]\)/\1 que es dibuixaran\2/g
# diferència
# disminuir
  s/\bProveu d'incrementar la mida del pas o a disminuir la tolerància\([^[:alnum:]]\)/Proveu incrementant la mida del pas o disminuïnt la tolerància\1/g
# editar
  s/\bTrieu la correspondència i imatge a editar\([^[:alnum:]]\)/Trieu la correspondència i la imatge que s'ha d'editar\1/g
s/\b\(Fitxer\|Fitxer PDF\|L'element\|la correspondència i la imatge\|No s'ha trobat la configuració\|Tipus de fitxer\|Trieu el paquet\) a editar\([^[:alnum:]]\)/\1 que s'ha d'editar\2/g
s/\b\(No hi ha cap element\) a editar\([^[:alnum:]]\)/\1 que s'hagi d'editar\2/g
s/\b\(Cal seleccionar un únic treball\|El subtítol de traducció\|El subtítol primari\|Nom de l'entorn o ordre\|Trieu un fitxer\|substituirà amb el nom del fitxer\) a editar\([^[:alnum:]]\)/\1 que s'editarà\2/g
s/\b\(Trieu els objectes\) a editar\([^[:alnum:]]\)/\1 que s'editaran\2/g
# efectuar
s/\b\(Acció\) a efectuar\([^[:alnum:]]\)/\1 que s'ha d'efectuar\2/g
# eliminar
  s/1 \(element\|paquet\) a eliminar\([^[:alnum:]]\)/1 \1 que s'ha d'eliminar\2/g
  s/1 \(elements\|paquets\) a eliminar\([^[:alnum:]]\)/1 \1 que s'han d'eliminar\2/g
  s/\bNo hi ha fitxers a eliminar\([^[:alnum:]]\)/No hi ha fitxers per a eliminar\1/g
  s/\bEl percentatge de les d'estrelles més \(brillants\|febles\) a eliminar\([^[:alnum:]]\)/El percentatge de les d'estrelles més \1 que s'han d'eliminar\2/g
s/\b\(Etiqueta\) a eliminar\([^[:alnum:]]\)/\1 que s'ha d'eliminar\2/g
s/\b\(Paquets\|Tria les entrades\|Trieu els enregistraments\|Trieu els fitxers\) a eliminar\([^[:alnum:]]\)/\1 que s'han d'eliminar\2/g
s/\b\(No s'ha pogut trobar cap incidència\) a eliminar\([^[:alnum:]]\)/\1 que calgui eliminar\2/g
s/\b\(No hi ha res\|No s'ha trobat cap entrada\) a eliminar\([^[:alnum:]]\)/\1 que s'hagi d'eliminar\2/g
# emmagatzemar
s/\b\(El nombre màxim d'elements de pòdcast\) a emmagatzemar\([^[:alnum:]]\)/\1 que s'han d'emmagatzemar\2/g
s/\b\(Nombre màxim de fitxers recents\|Nombre de símbols\) a emmagatzemar\([^[:alnum:]]\)/\1 que s'emmagatzemaran\2/g
s/\bNo hi ha cap dada a emmagatzemar\([^[:alnum:]]\)/No hi ha cap dada que s'hagi d'emmagatzemar\1/g
# encriptar
  s/\bLlista de fitxers a encriptar o desencriptar\.\([^[:alnum:]]\)/Llista de fitxers que s'encriptaran o desencriptaran\.\1/g
s/\b\(Introduïu un missatge\) a encriptar\([^[:alnum:]]\)/\1 que s'ha d'encriptar\2/g
# enfocar
s/\b\(Estrella\) a enfocar\([^[:alnum:]]\)/\1 que s'ha d'enfocar\2/g
s/\b\(Captureu i trieu una estrella\|en detectar una estrella\|Establiu la mida del requadre per a seleccionar l'estrella\|S'ha seleccionat l'estrella\|Tria automàticament l'estrella\|Trieu l'estrella\) a enfocar\([^[:alnum:]]\)/\1 que s'enfocarà\2/g
# enganxar
  s/\bNo hi ha cap element al porta-retalls a enganxar\([^[:alnum:]]\)/No hi ha cap element al porta-retalls que s'hagi d'enganxar\1/g
s/\b\(deuen ser d'un tipus incorrecte\|Tria el text\) a enganxar\([^[:alnum:]]\)/\1 que s'enganxarà\2/g
# enregistrar
s/\b\(Data de venciment del primer pagament\) a enregistrar\([^[:alnum:]]\)/\1 que s'enregistrarà\2/g
# entregar
s/\bres a entregar\([^[:alnum:]]\)/res per a entregar\1/g
s/\bTrieu el directori a entregar\([^[:alnum:]]\)/Trieu el directori que s'ha d'entregar\1/g
# enviar
  s/\bNo s'han seleccionat fitxers a enviar\([^[:alnum:]]\)/No s'ha seleccionat cap fitxer que s'hagi d'enviar\1/g
s/\b\(Comença cada línia\) a enviar\([^[:alnum:]]\)/\1 que calgui enviar\2/g
s/\b\(aquí el text\/imatge\|Missatge opcional\) a enviar\([^[:alnum:]]\)/\1 que s'ha d'enviar\2/g
s/\b\(compressió de les imatges JPEG\|Configura les notificacions d'absències\|Deixeu anar aquí els fitxers\|Els fitxers\|O&rdres\|Trieu els fitxers\|Trieu la mida de les imatges\) a enviar\([^[:alnum:]]\)/\1 que s'han d'enviar\2/g
s/\b\(Afegeix un punt al final de cada línia\|No hi ha cap fitxer\|No hi ha cap informació\) a enviar\([^[:alnum:]]\)/\1 que s'hagi d'enviar\2/g
s/\b\(Adreça IP personalitzada o nom de màquina\|El nom d'usuari\|La contrasenya\) a enviar\([^[:alnum:]]\)/\1 que s'enviarà\2/g
s/\b\(convertir la pressió de la tecla en caràcters\|Fitxers\|format dels fitxers d'imatge\|Trieu els fitxers\|Si activeu aquesta opció, totes les imatges\) a enviar\([^[:alnum:]]\)/\1 que s'enviaran\2/g
# escanejar
s/\b\(dels ID de la col·lecció\) a escanejar\([^[:alnum:]]\)/\1 que s'escanejarà\2/g
# escollir
s/\b\(el segon és el nombre d'elements\|el segon paràmetre és el nombre d'elements\) a escollir\([^[:alnum:]]\)/\1 que s'escolliran\2/g
# escoltar
s/\b\(Nom del sòcol Wayland\) a escoltar\([^[:alnum:]]\)/\1 que s'escoltarà\2/g
# escriure
  s/\b\(Activeu aquesta opció\) a escriure\([^[:alnum:]]\)/\1 per a escriure\2/g
  s/\bNo hi ha fitxers a escriure\([^[:alnum:]]\)/No hi ha cap fitxer que s'hagi d'escriure\1/g
s/\b\(Nombre de columnes\) a escriure\([^[:alnum:]]\)/\1 que cal escriure\2/g
s/\b\(Desa al cau del disc dur les dades\) a escriure\([^[:alnum:]]\)/\1 que s'hagin d'escriure\2/g
s/\b\(El valor\) a escriure\([^[:alnum:]]\)/\1 que s'escriurà\2/g
# esperar
s/\b\(El nombre de segons\|El temps\|Temps en segons\) a esperar\([^[:alnum:]]\)/\1 que s'ha d'esperar\2/g
# establir
  s/\bTrieu un directori a establir\/canviar\([^[:alnum:]]\)/Trieu un directori que s'establirà\/canviarà\1/g
s/\b\(ja que no hi ha cap tema\) a establir\([^[:alnum:]]\)/\1 que s'hagi d'establir\2/g
# estimar
s/\b\(Paràmetre\) a estimar\([^[:alnum:]]\)/\1 que s'estimarà\2/g
s/\b\(nombre de paràmetres\) a estimar\([^[:alnum:]]\)/\1 que s'estimaran\2/g
# etiquetar
s/\b\([Mm]agnitud de l'estrella més feble\) a etiquetar\([^[:alnum:]]\)/\1 que s'etiquetarà\2/g
# examinar
s/\b\(Tria el model ajustat\) a examinar\([^[:alnum:]]\)/\1 que s'ha d'examinar\2/g
s/\b\(com més remota sigui la data\|Tria un fitxer de nucli\) a examinar\([^[:alnum:]]\)/\1 que s'hagi d'examinar\2/g
# excloure
s/\b\(Afegeix l'etiqueta\|Patró de fitxer\) a excloure\([^[:alnum:]]\)/\1 que s'ha d'excloure\2/g
s/\b\(Directoris\|Fitxer amb noms de fitxer\|troba a la llista de les carpetes\) a excloure\([^[:alnum:]]\)/\1 que s'han d'excloure\2/g
s/\b\(Trieu una carpeta\) a excloure\([^[:alnum:]]\)/\1 que calgui excloure\2/g
s/\b\(Els patrons de carpeta\|Els patrons de fitxer\|Introduïu aquí el patró de nom de fitxer dels fitxers\|noms de fitxer o directoris\) a excloure\([^[:alnum:]]\)/\1 que s'exclouran\2/g
s/\b\(Llista de fitxers i directoris\) a excloure\([^[:alnum:]]\)/\1 que s'han d'excloure\2/g
# executar
  s/\bEstableix el camí de l'aplicació a executar que ha de generar\([^[:alnum:]]\)/Estableix el camí de l'aplicació que s'executarà per a generar\1/g
  s/\bL'script a executar\.\([^[:alnum:]]\)/L'script que s'executarà\.\1/g
  s/\bNo hi ha cap cua a executar\([^[:alnum:]]\)/No hi ha cap cua que s'hagi d'executar\1/g
  s/\bNo s'ha pogut trobar cap document actiu a executar\([^[:alnum:]]\)/No s'ha trobat cap document actiu que s'hagi d'executar\1/g
  s/\bOrdre a executar,\([^[:alnum:]]\)/Ordre que s'executarà,\1/g
  s/\bScript a executar\.\([^[:alnum:]]\)/Script que s'executarà.\1/g
  s/\bScript a executar després\([^[:alnum:]]\)/Script que s'executarà després\1/g
  s/\bseleccionar la millor tasca a executar\([^[:alnum:]]\)/seleccionar la millor tasca per executar\1/g
s/\b\(Acció\|Aplicació\|Trieu una ordre\|Especifica l'ordre\|Exploreu per a trobar el programa\|Introduïu a sota l'ordre\|Introduïu el camí absolut cap al fitxer de script\|L'ordre\|Mòdul de configuració\|No mostris en el diàleg l'ordre\|O&rdre\|Ordre\|Ordre SQL\|Script\|Tria l'acció\|Tria l'script\|Tria la macro\|Trieu l'ordre\|Trieu l'script\) a executar\([^[:alnum:]]\)/\1 que s'ha d'executar\2/g
s/\b\(arguments\|Comprovacions\|Establiu les ordres\|Llista de programes\|Llista de scripts\|Més ordres (opcions)\|Ordres\) a executar\([^[:alnum:]]\)/\1 que s'han d'executar\2/g
s/\b\(Especifiqueu un fitxer que contingui una aplicació\|Introduïu el contingut d'un script\|introduïu una ordre o script\|mostrar, l'ordre\|Podeu seleccionar un altre gestor de finestres\|Trieu un programa\|Trieu una ordre\) a executar\([^[:alnum:]]\)/\1 que s'hagi d'executar\2/g
s/\b\(El nom del fitxer de codi font\|El tipus de prova t\|especificar una ordre a mida\|Establiu aquí una ordre\|Heu seleccionat %1 fitxer\|i intentarà seleccionar la millor tasca\|Indiqueu l'ordre de l'editor de text personalitzat\|Introduïu l'script\|Introduïu una ordre\|L'ordre del Pology\|La consulta\|La sentència SQL\|Ordre predeterminada\|Procediment d'inici\|Procediment de tancament\|trobar cap document actiu\|Una ordre\) a executar\([^[:alnum:]]\)/\1 que s'executarà\2/g
s/\b\(Analitza tots els camins seleccionats amb els comprovadors\|cercarà programes\|Depèn de les accions\|Els fitxers amb els scripts\|Especifica les accions\|Heu seleccionat %1 fitxers\|Tria els passos\|Trieu les tasques\) a executar\([^[:alnum:]]\)/\1 que s'executaran\2/g
# exercitar
s/\b\(Nombre resultant de paraules\) a exercitar\([^[:alnum:]]\)/\1 que s'han d'exercitar\2/g
# expandir
s/\b\([Pp]araules clau\) a expandir\([^[:alnum:]]\)/\1 que s'expandiran\2/g
# explorar
  s/\bCarpeta a explorar per als\([^[:alnum:]]\)/Carpeta on explorar per als\1/g
  s/\bdigiKam a explorar\([^[:alnum:]]\)/digiKam a que explori\1/g
  s/\bNo hi ha cap fotograma per a explorar\([^[:alnum:]]\)/No hi ha cap fotograma que s'hagi d'explorar\1/g
s/\b\(Camí o URL\|Directori\|Trieu la carpeta\) a explorar\([^[:alnum:]]\)/\1 que s'ha d'explorar\2/g
s/\b\(No s'ha trobat cap font\) a explorar\([^[:alnum:]]\)/\1 que s'hagi d'explorar\2/g
s/\b\(Llista de carpetes\) a explorar\([^[:alnum:]]\)/\1 que s'exploraran\2/g
# exportar / importar
  s/\b\(Cerca calendaris\) a importar\.\([^[:alnum:]]\)/\1 per a importar\2/g
  s/\bcom a versió secundària d'extensió a importar\([^[:alnum:]]\)/com a versió secundària de l'extensió que s'importarà\1/g
  s/\bEl fitxer a exportar a\([^[:alnum:]]\)/El fitxer que s'ha d'exportar a\1/g
  s/\bEl fitxer a importar <filename>\([^[:alnum:]]\)/El fitxer que s'importarà <filename>\1/g
  s/\bEl fitxer a importar no s'ha trobat\([^[:alnum:]]\)/El fitxer que s'ha d'importar no s'ha trobat\1/g
  s/\bEl nom de\(l\|\) fitxer del fitxer\([^[:alnum:]]\)/El nom del fitxer\2/g
  s/\bEl nom del fitxer a importar\.\([^[:alnum:]]\)/El nom del fitxer que s'importarà\.\1/g
  s/\bFitxer PkPass o JSON-LD a importar\([^[:alnum:]]\)/Fitxer PkPass o JSON-LD per a importar\1/g
  s/\bIndiqueu la \(columna\|fila\) \(inicial\|final\) a importar\.\([^[:alnum:]]\)/Indiqueu la \1 \2 que s'importarà.\3/g
  s/\bNo heu seleccionat cap contacte a exportar\([^[:alnum:]]\)/No heu seleccionat cap contacte per a exportar\1/g
  s/\bNo hi ha \(cap dada\|res\|resultats\|cap text\) a \(im\|ex\)portar\([^[:alnum:]]\)/No hi ha \1 per a \2portar\3/g
  s/\bNo hi ha cap fotograma per explorar\([^[:alnum:]]\)/No hi ha cap fotograma que s'hagi d'importar\1/g
  s/\bNo hi ha cap metacontacte amb claus a exportar\([^[:alnum:]]\)/No hi ha cap metacontacte amb claus que s'hagi d'exportar\1/g
  s/\bNo s'ha \(proporcionat cap fitxer\|seleccionat cap taula\|trobat cap clau\|trobat cap configuració\|trobat cap fitxer\) a importar\([^[:alnum:]]\)/No s'ha \1 per a importar\2/g
  s/\bres més a importar a la columna\([^[:alnum:]]\)/res més per a importar la columna\1/g
  s/\bS'ha d'especificar una branca a exportar\([^[:alnum:]]\)/S'ha d'especificar una branca per a exportar\1/g
  s/\bTria un fitxer «csv» a \(im\|ex\)portar\([^[:alnum:]]\)/Tria un fitxer «csv» per a \1portar\2/g
  s/\bTrieu almenys un joc de canvis a exportar\([^[:alnum:]]\)/Trieu almenys un joc de canvis per a exportar\1/g
  s/\bus permetrà seleccionar un fitxer «csv» a exportar\([^[:alnum:]]\)/us permetrà seleccionar un fitxer «csv» per a exportar\1/g
s/\b\(Àrea\|Clau\|Compte\|descodificar la clau d'encriptatge\|El fitxer\|El nom del fitxer de codi font\|El nom del fitxer\|Trieu la biblioteca de recursos\|Especifica el full\|Especifica l'àrea\|Fitxer\|Fitxer QIF\|Indiqueu la columna final\|Indiqueu la fila final\|Indiqueu la columna inicial\|Indiqueu la fila inicial\|La col·lecció\|Marqueu la diapositiva\|o identificador de la clau\|Per a identificar una columna\|Projecte\|Script\|Trieu la vCard\|Trieu el fitxer de pestanya\|Trieu el calendari\|Trieu el diccionari\|Trieu el directori\|Trieu el fitxer CRL\|Trieu el fitxer d'arxiu del KMail\|Trieu el fitxer de calendari\|Trieu el nom de fitxer\|Tria la configuració\|Trieu el fitxer\|Trieu el material\|Trieu l'esquema\|Trieu la taula\|Trieu el fitxer\|Trieu un fitxer d'etiquetes\|URL del mbox\) a \(ex\|im\)portar\([^[:alnum:]]\)/\1 que s'ha d'\2portar\3/g
s/\b\(Camps\|Continguts\|Dades\|Els URL dels fitxers d'imatge\|Fitxer amb els en&llaços\|Mostra els consells d'eina dels elements\|Nombre màxim de files\|Objectes\|Trieu les claus\|Trieu les imatges\|Trieu les regles\|Trieu els fitxers\|Trieu els elements\|Trieu els fitxers\|Tria els elements\|Trieu el fitxer d'arxiu de KMail\|Trieu els documents\|Trieu els fitxers\|Trieu els fulls\|Teniu algunes operacions del Krunner\) a \(ex\|im\)portar\([^[:alnum:]]\)/\1 que s'han d'\2portar\3/g
s/\b\(No hi ha cap fotograma\|No hi ha cap propietat\|[Tt]rieu un fitxer\) a \(ex\|im\)portar\([^[:alnum:]]\)/\1 que s'hagi d'\2portar\3/g
s/\b\(Cerca calendaris\|O seleccioneu els tipus de material\) a \(ex\|im\)portar\([^[:alnum:]]\)/\1 que s'hagin d'\2portar\3/g
s/\b\(Com estan escrits els valors que manquen (SD) al fitxer\|dades, especifica el conjunt\|El fitxer\|especificar la disposició\|Especifiqueu l'interval\|Extensió\|Fitxer\|Índex numèric o nom\/etiqueta del full\|Indiqueu el nom del fitxer\|L'URL\|La llista de comptes\|nom\/etiqueta del full\|Primera columna de dades\|Primera fila de dades\|QtCurve<\/i> - un fitxer\|seleccionar un fitxer «csv»\|Trieu el fitxer de dades\|Trieu un objecte de base de dades vàlid (taula o resultats de la consulta)\|Trieu una sessió\|Trieu el fitxer CSV\|Trieu el fitxer de dades SPSS\|Trieu el fitxer de dades STATA\|Última columna de dades\|Última fila de dades\) a \(ex\|im\)portar\([^[:alnum:]]\)/\1 que s'\2portarà\3/g
s/\b\(Aquesta és la llista de les imatges\|Aquesta vista llista tots els elements\|o empremtes digitals de les claus\|En els continguts\|Objectes seleccionats\) a \(ex\|im\)portar\([^[:alnum:]]\)/\1 que s'\2portaran\3/g
s/\b\(Trieu un fitxer\|No s'ha especificat cap fitxer\|No s'ha trobat cap certificat\|Trieu el fitxer R\|Trieu un objecte de dades\) a \(ex\|im\)portar\([^[:alnum:]]\)/\1 que s'hagi d'\2portar\3/g
# extreure
  s/\b\([Ee]\)xtraure\([^[:alnum:]]\)/\1xtreure\2/g
s/\b\(Trieu el directori\|Trieu la branca\) a extreure\([^[:alnum:]]\)/\1 que s'ha d'extreure\2/g
s/\b\([Nn]ombre de boles\|Trieu les pistes\) a extreure\([^[:alnum:]]\)/\1 que s'han d'extreure\2/g
s/\b\(El nom del mòdul\) a extreure\([^[:alnum:]]\)/\1 que s'extreurà\2/g
s/\b\(Trieu les pistes\) a extreure\([^[:alnum:]]\)/\1 que s'extreuran\2/g
# evitar
s/\b\(Controla els duplicats\) a evitar\([^[:alnum:]]\)/\1 que s'han d'evitar\2/g
# filtrar
s/\b\(Introduïu una expressió\) a filtrar\([^[:alnum:]]\)/\1 per a filtrar\2/g
s/\b\(Prefixos\) a filtrar\([^[:alnum:]]\)/\1 que s'han de filtrar\2/g
s/\b\(La magnitud màxima (visibilitat)\) a filtrar\([^[:alnum:]]\)/\1 que es filtrarà\2/g
# finalitzar
s/\b\(El PID de l'aplicació\) a finalitzar\([^[:alnum:]]\)/\1 que s'ha de finalitzar\2/g
# fitxer(s)
s/\b\(escrivint\|Exporta\) a fitxer\([^[:alnum:]]\)/\1 a un fitxer\2/g
# fusionar
s/\b\(La primera font\|La segona font\|trobar el fitxer de plantilla\) a fusionar\([^[:alnum:]]\)/\1 que s'ha de fusionar\2/g
s/\b\(Cerca i selecció dels contactes\|mostren les dues operacions seleccionades\|Trieu els contactes\|Trieu els fitxers\) a fusionar\([^[:alnum:]]\)/\1 que s'han de fusionar\2/g
s/\b\(després la branca\|Destinació local\) a fusionar\([^[:alnum:]]\)/\1 que es fusionarà\2/g
s/\b\(Establiu aquí la llista de les imatges amb bràqueting\|Trieu els contactes\) a fusionar\([^[:alnum:]]\)/\1 que es fusionaran\2/g
s/\b\(Cal seleccionar una branca\|No hi ha res\) a fusionar\([^[:alnum:]]\)/\1 per a fusionar\2/g
# generar
  s/\bIndiqueu la mida de la matriu en bytes a generar\([^[:alnum:]]\)/Indiqueu la mida en bytes de la matriu que es generarà\1/g
s/\b\(Tipus d'impressió\) a generar\([^[:alnum:]]\)/\1 que s'ha de generar\2/g
s/\b\(El nombre de recordatoris\|El nombre de valors\) a generar\([^[:alnum:]]\)/\1 que s'han de generar\2/g
s/\b\(Nom de la classe del connector\) a generar\([^[:alnum:]]\)/\1 que es generarà\2/g
# gestionar
s/\b\(Dispositiu\) a gestionar\([^[:alnum:]]\)/\1 que s'ha de gestionar\2/g
# girar
s/\b\([Pp]àgines seleccionades\|Trieu les pàgines\) a girar\([^[:alnum:]]\)/\1 que s'han de girar\2/g
# gravar
s/\b\(Imatge\) a gravar\([^[:alnum:]]\)/\1 que s'ha de gravar\2/g
s/\b\(Cap dada\) a gravar\([^[:alnum:]]\)/\1 que s'hagi de gravar\2/g
s/\b\(i s'omplen amb les dades\) a gravar\([^[:alnum:]]\)/\1 que es gravaran\2/g
# ignorar
  s/\bOpcions per a ignorar\([^[:alnum:]]\)/Opcions que s'han d'ignorar\1/g
  s/\bres a ignorar\([^[:alnum:]]\)/res que s'hagi d'ignorar\1/g
s/\b\(Afegeix a la llista\|Afegeix o elimina un patró\) a ignorar\([^[:alnum:]]\)/\1 que s'ha d'ignorar\2/g
s/\b\(Directoris addicionals\|Opcions\|Trieu els camins\) a ignorar\([^[:alnum:]]\)/\1 que s'han d'ignorar\2/g
s/\b\(Edició del patró\|Establiu aquí una paraula nova\) a ignorar\([^[:alnum:]]\)/\1 que s'ignorarà\2/g
s/\b\(Aquí podeu afegir o eliminar paraules\|especificar múltiples extensions de fitxer\|especificar múltiples noms de fitxer\|Especifiqueu una llista de noms de carpeta\|que concordin amb els patrons\|salts de línia de patrons de fitxer\) a ignorar\([^[:alnum:]]\)/\1 que s'ignoraran\2/g
# imprimir
  s/\b\(Cap pàgina\|Nivell de confiança\|No hi ha cap fitxer\|res\) a imprimir\([^[:alnum:]]\)/\1 per a imprimir\2/g
s/\b\(El tipus MIME del fitxer\|Nivell de registre\|No s'ha pogut trobar el fitxer\) a imprimir\([^[:alnum:]]\)/\1 que s'ha d'imprimir\2/g
s/\b\(conté la llista de fonts\|desar la llista de fonts\|Trieu els contactes\|Expressions\|Tasques pendents\) a imprimir\([^[:alnum:]]\)/\1 que s'han d'imprimir\2/g
s/\b\(Sembla que no hi ha cap puzle\) a imprimir\([^[:alnum:]]\)/\1 que s'hagi d'imprimir\2/g
s/\b\(Defineix l'àrea\|Font\|Reinicia l'interval\) a imprimir\([^[:alnum:]]\)/\1 que s'imprimirà\2/g
s/\b\(Aquest assistent us guiarà per a agrupar les imatges\|com ara el nombre de còpies\) a imprimir\([^[:alnum:]]\)/\1 que s'imprimiran\2/g
# incloure
  s/\bamb definicions per a les carpetes i fitxers a incloure o excloure\([^[:alnum:]]\)/amb definicions per a les carpetes i fitxers que s'inclouran o exclouran\1/g
  s/\bTrieu un directori a incloure\.\([^[:alnum:]]\)/Trieu un directori que s'inclourà\.\1/g
s/\b\(1 carpeta\|Document\|Informació\) a incloure\([^[:alnum:]]\)/\1 que s'ha d'incloure\2/g
s/\b\(1 carpetes\|Aquesta vista llista tots els elements\|es troba a la llista de les carpetes\|Variables\) a incloure\([^[:alnum:]]\)/\1 que s'han d'incloure\2/g
s/\b\(La mida màxima de les estrelles\|La mida mínima de les estrelles\|La relació màxima entre l'eix semimajor i el semimenor de les estrelles\|Marqueu els dies de la setmana\|Marqueu els rols\) a incloure\([^[:alnum:]]\)/\1 que s'inclouran\2/g
s/\b\(Trieu un directori\|Trieu una carpeta\) a incloure\([^[:alnum:]]\)/\1 que s'hagi d'incloure\2/g
# indexar
s/\b\(Dades\) a indexar\([^[:alnum:]]\)/\1 que s'han d'indexar\2/g
s/\b\(Afegeix un directori\) a indexar\([^[:alnum:]]\)/\1 que s'hagi d'indexar\2/g
# iniciar
s/\b\(en especificar el programa\) a iniciar\([^[:alnum:]]\)/\1 que s'ha d'iniciar\2/g
s/\b\(aquest camp especifica el programa\|fitxer «desktop»\) a iniciar\([^[:alnum:]]\)/\1 que s'iniciarà\2/g
s/\b\(Les aplicacions\) a iniciar\([^[:alnum:]]\)/\1 que s'iniciaran\2/g
# inserir
  s/\bNo hi ha contingut a inserir\([^[:alnum:]]\)/No hi ha contingut per a inserir\1/g
  s/\bTrieu un fitxer de text a inserir:\([^[:alnum:]]\)/Trieu un fitxer de text que s'ha d'inserir:\1/g
s/\b\(Trieu el directori\|Trieu una ordre\) a inserir\([^[:alnum:]]\)/\1 que s'ha d'inserir\2/g
s/\b\(Especifica el nombre de camps de capçalera MIME personalitzats\|Introduïu el nombre de columnes\|Introduïu el nombre de files\) a inserir\([^[:alnum:]]\)/\1 que s'han d'inserir\2/g
s/\b\(Passeu per aquest menú per a trobar una ordre\|Tria gràficament una part d'un nom de fitxer\|Text\) a inserir\([^[:alnum:]]\)/\1 que s'inserirà\2/g
s/\b\(No s'ha trobat cap clip vàlid\|Trieu un fitxer de text\) a inserir\([^[:alnum:]]\)/\1 que s'hagi d'inserir\2/g
# instal·lar
  s/\b\(Paquets de l'R\|Programari\) a instal·lar\([^[:alnum:]]\)/\1 per a instal·lar\2/g
s/\b\(1 paquet\|Fitxer de paquet\|Fitxer local de paquet\|Paquet Adium\|Perfil de color\|Trieu l'arxiu d'aparença\|Trieu l'estil de finestra de xat\|URL\) a instal·lar\([^[:alnum:]]\)/\1 que s'ha d'instal·lar\2/g
s/\b\(1 paquets\|Trieu els fitxers de compleció\|S'estan cercant els fitxers addicionals\|temes d'emoticones\) a instal·lar\([^[:alnum:]]\)/\1 que s'han d'instal·lar\2/g
s/\b\(No hi ha cap paquet de l'R\|No hi ha cap programari\|No s'ha pogut trobar cap paquet\) a instal·lar\([^[:alnum:]]\)/\1 que s'hagi d'instal·lar\2/g
s/\b\(El tema\|Trieu la versió del CUDA\) a instal·lar\([^[:alnum:]]\)/\1 que s'instal·larà\2/g
s/\b\(junt amb els fitxers d'índex\|Trieu els paquets\) a instal·lar\([^[:alnum:]]\)/\1 que s'instal·laran\2/g
# interpretar
s/\b\(Camp\) a interpretar\([^[:alnum:]]\)/\1 que s'ha d'interpretar\2/g
# intersecar
s/\b\(Tria el primer objecte\|Tria el segon objecte\|Tria el segon polígon\) a \([^[:alnum:]]\)/\1 que s'ha d'intersecar\2/g
# introduir
s/\b\(Com trobar el nom\) a introduir\([^[:alnum:]]\)/\1 que cal introduir\2/g
s/\b\(Com trobar el nom\) per introduir\([^[:alnum:]]\)/\1 que cal introduir\2/g
# invitar
s/\b\(Trieu els contactes\) a invitar\([^[:alnum:]]\)/\1 que s'han d'invitar\2/g
# limitar
s/\b\(Nom del símbol de la variable d'entrada\) a limitar\([^[:alnum:]]\)/\1 que es limitarà\2/g
# llegir
s/\b\(Trieu el fitxer\) a llegir\([^[:alnum:]]\)/\1 que s'ha de llegir\2/g
s/\b\(Nombre màxim de files\|Nombre màxim de línies\|Porció de dades\) a llegir\([^[:alnum:]]\)/\1 que s'han de llegir\2/g
# llistar
s/\b\(Les fonts\) a llistar\([^[:alnum:]]\)/\1 que s'han de llistar\2/g
# manipular
  s/\bAixò alenteix el processat sobretot quan hi ha moltes estrelles a manipular\([^[:alnum:]]\)/Això alenteix el processat, sobretot quan hi ha moltes estrelles per a manipular\1/g
# mantenir
  s/\bles alarmes expirades estiguin configurades a mantenir.\([^[:alnum:]]\)/les alarmes expirades estiguin configurades per a mantenir-se\.\1/g
  s/\bles alarmes expirades estiguin configurades a mantenir-se\([^[:alnum:]]\)/les alarmes expirades estiguin configurades per a mantenir-se\1/g
s/\b\(Quantitat d'historial\|Trieu la imatge\) a mantenir\([^[:alnum:]]\)/\1 que s'ha de mantenir\2/g
s/\b\(Determina el nombre d'entrades\|Dies\|Màxim de megabytes\|Nombre de fitxers de còpia de seguretat\|[Nn]ombre de còpies de seguretat\|Nombre de còpies de seguretat completes\|Nombre de línies\) a mantenir\([^[:alnum:]]\)/\1 que s'han de mantenir\2/g
s/\b\(Defineix el nombre de línies\|El nombre d'accions que es poden desfer\|El nombre d'estrelles\|nombre de fitxers de còpia de seguretat\|Nombre de fotogrames amb veu\|Nombre de fotogrames en silenci\) a mantenir\([^[:alnum:]]\)/\1 que es mantindran\2/g
# memoritzar
s/\b\(Personalitza els camps\) a memoritzar\([^[:alnum:]]\)/\1 que s'han de memoritzar\2/g
# migrar
s/\b\(Tipus MIME\) a migrar\([^[:alnum:]]\)/\1 que s'ha de migrar\2/g
# millorar
s/\b\(Hi ha moltes coses divertides\) a millorar\([^[:alnum:]]\)/\1 que s'han de millorar\2/g
# modificar
s/\b\(La categoria\|Trieu el caràcter\) a modificar\([^[:alnum:]]\)/\1 que s'ha de modificar\2/g
# mostrar
  s/\bconté un nom a mostrar\([^[:alnum:]]\)/conté un nom per a mostrar\1/g
  s/\bEl nom a mostrar del contacte\.\([^[:alnum:]]\)/El nom que es mostrarà\.\1/g
  s/\bEl nom a mostrar del vostre compte AIM\.\([^[:alnum:]]\)/El nom que es mostrarà del vostre compte AIM\.\1/g
  s/\bEl nom a mostrar és\([^[:alnum:]]\)/El nom que es mostrarà és\1/g
  s/\bEncara podreu canviar el seu nom a mostrar\([^[:alnum:]]\)/Encara podreu canviar el nom que es mostrarà\1/g
  s/\bHeu d'introduir un nom a mostrar vàlid\([^[:alnum:]]\)/Heu d'introduir un nom vàlid que es mostrarà\1/g
  s/\bno vulgueu utilitzar cap nom a mostrar\([^[:alnum:]]\)/no vulgueu utilitzar cap nom per a mostrar\1/g
  s/\bNom a \(&mostrar\|mo&strar\)\([^[:alnum:]]\)/Nom que s'ha de \1\2/g
  s/\bNOM A MOSTRAR\([^[:alnum:]]\)/NOM QUE S'HA DE MOSTRAR\1/g
  s/\bNom a mostrar del \(primer\|segon\)\([^[:alnum:]]\)/Nom que es mostrarà del \1\2/g
  s/\bNom a mostrar\.\([^[:alnum:]]\)/Nom que es mostrarà\.\1/g
  s/\bNombre de missatges a mostrar\.\([^[:alnum:]]\)/Nombre de missatges que es mostraran\.\1/g
  s/\bseleccioneu aquí el monitor a mostrar els continguts\([^[:alnum:]]\)/seleccioneu aquí el monitor on mostrar els continguts\1/g
  s/\bveure el sobrenom del contacte com a nom a mostrar\([^[:alnum:]]\)/veure el sobrenom del contacte com a nom que es mostrarà\1/g
s/\b\(Aquest nom\|Cancel·la l'edició del nom\|Canvia el nom\|Canvia el vostre nom\|Confirmeu el nom\|Conjunt de camps\|contenen el meu nom\|Edita el nom\|El nom\|Exporta el nom\|Fitxer\|canviat el seu nom\|netejat el seu nom\|Informació\|Informació Exif\/IPTC\|Missatge de text\|Nom\|Nom nou\|Número d'inode del fitxer\|Origen del nom\|Pàgina\|Prefix\|Primera línia de la clau\|Trieu el tipus de dades\|Text\|Usa un altre nom com a nom\|Usa un dels meus noms MI com a nom\) a mostrar\([^[:alnum:]]\)/\1 que s'ha de mostrar\2/g
s/\b\(Aplicacions\|Col·leccions o elements\|Columnes\|Controls lliscants d'HS[ILV]\|Controls lliscants d'HSY'\|Dispositius\|El nombre dels elements de clau\|El registre ha de contenir almenys les línies\|element o elements\|Els elements\|Imatges i vídeos\|Indica com el Kopete baixarà les imatges\|Màxim de línies\|Mescladors\|Nombre d'alarmes\|Nombre d'entrades\|Nombre de columnes\|Nombre de missatges\|Nombre de símbols\|Nombre màxim d'alarmes\|Nombre màxim d'elements de llegenda\|Nombre mínim de línies de registre\|Període de temps de les dades\|Quantitat màxima d'elements de llegenda\|Tria les columnes\|Trieu els esdeveniments\|Trieu els idiomes\|Trieu els mescladors\) a mostrar\([^[:alnum:]]\)/\1 que s'han de mostrar\2/g
s/\b\(altre escriptori virtual\|necessitareu usar un nom\|No hi ha cap document\|No hi ha cap element\|No hi ha cap imatge\|No hi ha cap pressupost\|No hi ha res\|Trieu el fitxer de text o una imatge\|Tria la informació\|Trieu un bloc\|Trieu un fitxer\|Sense nom\) a mostrar\([^[:alnum:]]\)/\1 que s'hagi de mostrar\2/g
s/\b\(Encara no hi ha adreces d'interès\|No hi ha diferències\|No hi ha imatges\) a mostrar\([^[:alnum:]]\)/\1 que s'hagin de mostrar\2/g
s/\b\(Activeu aquesta casella si voleu exportar el nom\|Aquest botó permet canviar el nom\|Descripció opcional\|és a dir, recuperar la informació\|Feu clic i arrossegueu per a seleccionar la zona del patró\|Historial\|Introduïu el nom\|Introduïu el nom\|Introduïu el nom o l'URL del fitxer de text\/d'imatge\|l'URL del fitxer de text\|L'ús d'un nom\|Missatge\|Missatge d'error\|Missatges que continguin el meu nom\|Nom del grup del giny predeterminat\|Podeu limitar la llista de canals\|Trieu el nivell de detall\|Trieu un fitxer de text o una imatge\|Trieu un nom nou\|Un nom\|Vídeo de fons\) a mostrar\([^[:alnum:]]\)/\1 que es mostrarà\2/g
s/\b\(Aquí podeu seleccionar el nombre màxim de línies\|equidistants (logarítmiques opcionalment)\|Especifica les classes de fuites\|especifiqueu el nombre de quantils equidistants\|Especifica l'interval de dificultats de l'activitat\|Especifiqueu l'interval de dificultats de l'activitat\|Mostra un indicador de progrés amb els elements pendents\|Nombre màxim de grups\|Nombre màxim de missatges\|Tria els comptes\|Trieu les dates\|Trieu aquí el nombre màxim de línies\|Trieu els camps de metadades\|Trieu la classe de comptes\) a mostrar\([^[:alnum:]]\)/\1 que es mostraran\2/g
  s/\bnom a mostrar\( buit\|\)\([^[:alnum:]]\)/nom que es mostrarà\1\2/g
# moure
  s/\bCol·lecció de destinació a moure dins de\([^[:alnum:]]\)/Col·lecció de destinació a on s'ha de moure\1/g
  s/\bNo \(hi ha\|heu seleccionat\) res a moure\([^[:alnum:]]\)/No \1 res que s'hagi de moure\2/g
  s/\bPodeu introduir el nom de la ubicació desitjada a moure-la aquí\([^[:alnum:]]\)/Podeu introduir el nom de la ubicació desitjada per a moure-la allí\1/g
s/\b\(Tria el punt\|Punt\) a moure\([^[:alnum:]]\)/\1 que s'ha de moure\2/g
s/\b\(Col·leccions existents o elements\|[Pp]àgines seleccionades\|Trieu les pàgines\) a moure\([^[:alnum:]]\)/\1 que s'han de moure\2/g
s/\b\(El nombre de píxels\|Escull el nombre de batallons\) a moure\([^[:alnum:]]\)/\1 que es mouran\2/g
# netejar
  s/\bforçar al digiKam a netejar\([^[:alnum:]]\)/forçar al digiKam a que netegi\1/g
  s/\bNo hi ha res a netejar\([^[:alnum:]]\)/No hi ha res que s'hagi de netejar\1/g
s/\b\(Trieu el directori\) a netejar\([^[:alnum:]]\)/\1 que s'ha de netejar\2/g
s/\b\(Errors\) a netejar\([^[:alnum:]]\)/\1 que s'han de netejar\2/g
s/\b\(Les extensions de fitxer\) a netejar\([^[:alnum:]]\)/\1 que es netejaran\2/g
# optimitzar
  s/\bNo hi ha cap imatge a optimitzar\([^[:alnum:]]\)/No hi ha cap imatge que s'hagi d'optimitzar\1/g
# obrir
  s/\bDocument a obrir\.\([^[:alnum:]]\)/Document que s'obrirà\.\1/g
  s/\bDocuments a obrir\.\([^[:alnum:]]\)/Documents que s'obriran\.\1/g
  s/\"fitxer a obrir\"/\"fitxer que s'ha d'obrir\"/g
  s/\"fitxers a obrir\"/\"fitxers que s'han d'obrir\"/g
  s/\bProjecte a obrir\.\([^[:alnum:]]\)/Projecte que s'obrirà\.\1/g
s/\b\(Aspecte i comportament\|carpeta\|Document\|Documentació\|El document del Kdenlive\|El tema\|Trieu un llibre\|Escull una imatge\|Especifica la carpeta\|Fitxer\|Fitxer «desktop»\|Fitxer d'historial\|Fitxer de document\|Fitxer ELF\|Fitxer ISO\|Fitxer1\|Fitxer [23]\|Fitxer o URL\|Gràfic DOT\|Localització\|Mòdul de configuració\|Patata\|Perfil\|Sessió\|Tria l'espai de treball\|Tria l'objecte\|Trieu el fitxer de calendari\|Trieu un còmic\|Trieu un fitxer de projecte KEXI existent\|Trieu un fitxer de sortida del RKWard\|Trieu\|Trieu una aplicació\|URL\) a obrir\([^[:alnum:]]\)/\1 que s'ha d'obrir\2/g
s/\b\(Fitxers\|Fitxers d'imatge\|Fitxers FITS\|Fitxers Khipu\|Fitxers o carpetes\|Fitxers o URL\|o els URL del Kwave\|Trieu els fitxers o les carpetes\|Un o més fitxers de marques de lloc\) a obrir\([^[:alnum:]]\)/\1 que s'han d'obrir\2/g
s/\b\(Aquest és el nom del fitxer\|Camí o URL al fitxer iCalendar\|el directori del fitxer\|Estableix la codificació del fitxer\|Fitxer d'imatge\|La miniaplicació\|Trieu la ubicació de l'arxiu de còpia de seguretat\|Trieu un projecte\|Trieu un projecte en el servidor de bases de dades <resource>%1 (%2)<\/resource>\|triar un fitxer DOT de Graphviz\) a obrir\([^[:alnum:]]\)/\1 que s'obrirà\2/g
s/\b\(Aquesta és la llista dels fitxers\|Comptes\|El nombre de finestres\|els URL\|Fitxer o fitxers\|Quan se seleccionen múltiples torrents\) a obrir\([^[:alnum:]]\)/\1 que s'obriran\2/g
# observar
s/\b\(Trieu l'objecte celeste\) a observar\([^[:alnum:]]\)/\1 que s'observarà\2/g
# ocultar
s/\b\(Configura els objectes\|seleccionar individualment les barres d'eines\|[Tt]rieu els missatges\) a ocultar\([^[:alnum:]]\)/\1 que s'han d'ocultar\2/g
s/\b\(Magnitud de l'estrella més brillant\) a ocultar\([^[:alnum:]]\)/\1 que s'ocultarà\2/g
# ometre
s/\b\(Bytes\|Bytes inicials\|Nombre de files\) a ometre\([^[:alnum:]]\)/\1 que s'han d'ometre\2/g
s/\b\(Nombre de quadres\) a ometre\([^[:alnum:]]\)/\1 que s'ometran\2/g
# ordenar
  s/\(, l'objecte\|substituir l'objecte\) a ordenar\([^[:alnum:]]\)/\1 que s'ordena\2/g
s/\b\(Objecte\) a ordenar\([^[:alnum:]]\)/\1 que s'ha d'ordenar\2/g
s/\b\(Camps\) a ordenar\([^[:alnum:]]\)/\1 que s'han d'ordenar\2/g
s/\b\(L'objecte\|Trieu l'objecte\) a ordenar\([^[:alnum:]]\)/\1 que s'ordenarà\2/g
# pagar
s/\b\([Mm]ostra l'interès\) a pagar\([^[:alnum:]]\)/\1 que s'ha de pagar\2/g
# parlar
s/\bText a parlar\([^[:alnum:]]\)/Text que s'ha de parlar\1/g
# passar
  s/\bL'historial del dispositiu de pantalla proporciona una interfície a passar\([^[:alnum:]]\)/L'historial del dispositiu de pantalla proporciona una interfície que passarà\1/g
s/\b\(IP\|URL\) a passar\([^[:alnum:]]\)/\1 que s'ha de passar\2/g
s/\b\(Arguments de la línia d'ordres\|Especifiqueu els arguments\) a passar\([^[:alnum:]]\)/\1 que s'han de passar\2/g
s/\b\(URL opcional\) a passar\([^[:alnum:]]\)/\1 que es passarà\2/g
s/\b\(Els arguments\|Estableix els paràmetres\) a passar\([^[:alnum:]]\)/\1 que es passaran\2/g
# permutar
s/\b\(Nombre d'elements\) a permutar\([^[:alnum:]]\)/\1 que s'han de permutar\2/g
# planificar
s/\b\(Ha fallat en cercar l'escenari\) a planificar\([^[:alnum:]]\)/\1 que s'ha de planificar\2/g
s/\b\(No hi ha res\) a planificar\([^[:alnum:]]\)/\1 que s'hagi de planificar\2/g
s/\b\(Sense incidències\) a planificar\([^[:alnum:]]\)/\1 que s'hagin de planificar\2/g
# predir
s/\b\(Trieu la variable\) a predir\([^[:alnum:]]\)/\1 que es predirà\2/g
# prendre
s/\b\(acció de citació predeterminada\) a prendre\([^[:alnum:]]\)/\1 que es prendrà\2/g
# prestar
s/\b\(Seran eliminats de la llista d'elements\) a prestar\([^[:alnum:]]\)/\1 que es presten\2/g
# preveure
s/\b\(Dies\|Nombre de dies\) a preveure\([^[:alnum:]]\)/\1 que s'han de preveure\2/g
# previsualitzar
s/\b\(Nombre de dies\) a previsualitzar\([^[:alnum:]]\)/\1 que s'han de previsualitzar\2/g
# processar
s/\b\(1 element\) a processar\([^[:alnum:]]\)/\1 que s'ha de processar\2/g
s/\b\(1 àlbums\|1 elements\|1 elements d'entrada\|1 fluxos d'àudio d'entrada\|1 imatges d'entrada\|Fitxers\) a processar\([^[:alnum:]]\)/\1 que s'han de processar\2/g
s/\b\(La llista no conté cap fitxer digital\|La llista no conté cap fitxer RAW\|No hi ha cap col·lecció\|No hi ha cap element\) a processar\([^[:alnum:]]\)/\1 que s'hagi de processar\2/g
s/\b\(No hi ha més directoris\|No hi ha més fitxers\|No hi ha més orígens\|No hi ha més subcol·leccions\|Trieu les operacions de manteniment\) a processar\([^[:alnum:]]\)/\1 que s'hagin de processar\2/g
s/\b\(i de la tasca en seqüència\) a processar\([^[:alnum:]]\)/\1 que es processarà\2/g
s/\b\(Aquesta és la llista d'imatges\|Els elements\|Nombre de mostres (línies)\) a processar\([^[:alnum:]]\)/\1 que es processaran\2/g
# projectar
s/\b\(Trieu el punt\) a projectar\([^[:alnum:]]\)/\1 que s'ha de projectar\2/g
# proporcionar
  s/\bIntroduïu els arguments a proporcionar a l'executable\([^[:alnum:]]\)/Introduïu els arguments que es proporcionaran a l'executable\1/g
s/\b\(Introduïu els arguments\) a proporcionar\([^[:alnum:]]\)/\1 que s'han de proporcionar\2/g
# provar
s/\b\(aquí la probabilitat d'error d'una hipòtesi\|Hipòtesi alternativa\|Tria el model ajustat\) a provar\([^[:alnum:]]\)/\1 que s'ha de provar\2/g
s/\b\(Nom del fitxer\) a provar\([^[:alnum:]]\)/\1 que es provarà\2/g
s/\b\(Trieu una o més variables numèriques\) a provar\([^[:alnum:]]\)/\1 que es provaran\2/g
# publicar
  s/\bEncara no hi ha res a publicar\([^[:alnum:]]\)/Encara no hi ha res que s'hagi de publicar\1/g
  s/\bNo hi ha cap \(canvi\|fitxer\) a publicar\([^[:alnum:]]\)/No hi ha cap \1 que s'hagi de publicar\2/g
s/\bNombre de dies d'informació lliure\/ocupat a publicar\([^[:alnum:]]\)/Nombre de dies de la informació lliure\/ocupat que s'ha de publicar\1/g
s/\b\(Fitxers\|Trieu els fitxers\) a publicar\([^[:alnum:]]\)/\1 que s'han de publicar\2/g
s/\b\(Cal que seleccioneu el text\) a publicar\([^[:alnum:]]\)/\1 que es publicarà\2/g
# pujar
  s/\bAquesta és la llista d'imatges\([^[:alnum:]]\)/Aquesta és la llista de les imatges\1/g
  s/\bPots empènyer l'enemic a pujar\([^[:alnum:]]\)/Pots empènyer l'enemic per a que pugi\1/g
s/\b\(Trieu el suport\|Suport\) a pujar\([^[:alnum:]]\)/\1 que s'ha de pujar\2/g
s/\b\(Trieu els fitxers\) a pujar\([^[:alnum:]]\)/\1 que s'han de pujar\2/g
s/\b\(Res\) a pujar\([^[:alnum:]]\)/\1 que s'hagi de pujar\2/g
s/\b\(Aquesta és la llista de les imatges\|exportar les imatges finalitzades\|seleccioneu les fotografies\) a pujar\([^[:alnum:]]\)/\1 que es pujaran\2/g
# realitzar
  s/\"prova a realitzar\"/\"prova que s'ha de realitzar\"/g
s/\b\(Trieu l'operació\) a realitzar\([^[:alnum:]]\)/\1 que s'ha de realitzar\2/g
s/\b\(Trieu les operacions\) a realitzar\([^[:alnum:]]\)/\1 que s'han de realitzar\2/g
s/\b\(trieu el tipus de prova\|Variant de la prova\) a realitzar\([^[:alnum:]]\)/\1 que es realitzarà\2/g
s/\b\(Nombre d'iteracions\) a realitzar\([^[:alnum:]]\)/\1 que es realitzaran\2/g
# reanomenar
  s/\bNo es troba cap fitxer a reanomenar\([^[:alnum:]]\)/No s'ha trobat cap fitxer que s'hagi de reanomenar\1/g
s/\b\(La col·lecció\) a reanomenar\([^[:alnum:]]\)/\1 que s'ha de reanomenar\2/g
s/\b\(Cerca fitxers\) a reanomenar\([^[:alnum:]]\)/\1 que s'han de reanomenar\2/g
s/\b\(expressions regulars en el nom de fitxer a reanomenar\) a reanomenar\([^[:alnum:]]\)/\1 que es reanomenarà\2/g
s/\b\(Afegeix els fitxers\|per a cercar els fitxers\) a reanomenar\([^[:alnum:]]\)/\1 que es reanomenaran\2/g
# reassignar -> torna a assignar
s/\b\(Tria diversos codis de temps\) a reassignar\([^[:alnum:]]\)/\1 que s'han de tornar a assignar\2/g
# recodificar
  s/\bTrieu el vector a recodificar,/Trieu el vector que es recodificarà,/g
s/\b\(Trieu el vector\|Trieu la variable\) a recodificar\([^[:alnum:]]\)/\1 que s'ha de recodificar\2/g
s/\b\(afegiu-los als valors\|seleccioneu els valors antics\) a recodificar\([^[:alnum:]]\)/\1 que es recodificaran\2/g
# recol·lectar
  s/\bja que podria deixar el Cachegrind sense informació a recol·lectar\([^[:alnum:]]\)/ja que podria deixar el Cachegrind sense informació que recol·lectar\1/g
# recollir
s/\b\(mostrant la següent llavor d'or\) a recollir\([^[:alnum:]]\)/\1 que s'ha de recollir\2/g
s/\b\(i el nombre total de llavors\) a recollir\([^[:alnum:]]\)/\1 que s'han de recollir\2/g
# reconèixer
s/\b\(La distància mínima\) a reconèixer\([^[:alnum:]]\)/\1 en la que es reconeixerà\2/g
s/\b\(Afegiu els tipus de fitxer\) a reconèixer\([^[:alnum:]]\)/\1 que es reconeixeran\2/g
# recordar
s/\b\(Limita la sortida\) a recordar\([^[:alnum:]]\)/\1 que s'ha de recordar\2/g
s/\b\(Trieu els camps\|Nombre de línies de sortida\|Nombre màxim de fitxers usats recentment\) a recordar\([^[:alnum:]]\)/\1 que s'han de recordar\2/g
s/\b\(El nombre de fitxers recents\) a recordar\([^[:alnum:]]\)/\1 que es recordaran\2/g
# recuperar
s/\b\(Nombre de caràtules\) a recuperar\([^[:alnum:]]\)/\1 que s'han de recuperar\2/g
# reinstal·lar
s/\b\(1 paquet\) a reinstal·lar\([^[:alnum:]]\)/\1 que s'ha de reinstal·lar\2/g
s/\b\(1 paquets\) a reinstal·lar\([^[:alnum:]]\)/\1 que s'han de reinstal·lar\2/g
# repetir
  s/\bNo hi ha últim nivell a repetir\([^[:alnum:]]\)/No hi ha últim nivell que repetir\1/g
s/\b\(Nombre de cops\|Nombre de vegades\) a repetir\([^[:alnum:]]\)/\1 que s'ha de repetir\2/g
s/\b\(Trieu els dies\) a repetir\([^[:alnum:]]\)/\1 que s'han de repetir\2/g
s/\b\(Cops\|El nombre de cops\|Introduïu el nombre total de vegades\|Vegades\) a repetir\([^[:alnum:]]\)/\1 que es repetirà\2/g
# reprendre
s/\b\(Desa l'URL de la peça\) a reprendre\([^[:alnum:]]\)/\1 que s'ha de reprendre\2/g
s/\b\(URL de la peça\) a reprendre\([^[:alnum:]]\)/\1 que es reprendrà\2/g
# representar
s/\b\(introduïu un nom de fitxer\) a representar\([^[:alnum:]]\)/\1 que s'hagi de representar\2/g
s/\b\(El nombre de fotogrames per segon\) a representar\([^[:alnum:]]\)/\1 que es representaran\2/g
# reproduir
  s/\breferència «pista a reproduir»\([^[:alnum:]]\)/referència «pista que s'ha de reproduir»\1/g
s/\b\(Fitxer de so\|Flux de dades\|reproducció de «pista\|Trieu el fitxer\|Trieu el so\|Trieu un clip\|So\|Ubicació de l'element\) a reproduir\([^[:alnum:]]\)/\1 que s'ha de reproduir\2/g
s/\b\(Fitxers o URL\|Nombre de fotogrames\) a reproduir\([^[:alnum:]]\)/\1 que s'han de reproduir\2/g
s/\b\(Trieu un fitxer\) a reproduir\([^[:alnum:]]\)/\1 que s'hagi de reproduir\2/g
s/\b\(Configura un fitxer de so\|Introduïu el nom o l'URL del fitxer de so\|Trieu un fitxer de so\|una instrucció que us indica la lletra\) a reproduir\([^[:alnum:]]\)/\1 que es reproduirà\2/g
s/\b\(el nombre d'imatges\) a reproduir\([^[:alnum:]]\)/\1 que es reproduiran\2/g
# resoldre
s/\b\(Interval de probabilitat\) a resoldre\([^[:alnum:]]\)/\1 que s'ha de resoldre\2/g
# respondre
  s/\bcom el domini a respondre\([^[:alnum:]]\)/com el domini al qual respondre\1/g
# restaurar
s/\b\(No s'ha pogut trobar la col·lecció\) a restaurar\([^[:alnum:]]\)/\1 que cal restaurar\2/g
s/\b\(S'ha produït un problema en obtenir una llista de tots els fitxers\) a restaurar\([^[:alnum:]]\)/\1 que s'han de restaurar\2/g
s/\b\(desades\) a restaurar\([^[:alnum:]]\)/\1 que s'hagin de restaurar\2/g
# ressaltar
s/\b\(El fitxer de codi font\) a ressaltar\([^[:alnum:]]\)/\1 que es ressaltarà\2/g
s/\b\([Cc]odi font\) a ressaltar\([^[:alnum:]]\)/\1 que s'ha de ressaltar\2/g
s/\b\(Missatges\) a ressaltar\([^[:alnum:]]\)/\1 que s'han de ressaltar\2/g
# retallar
  s/\bNo hi ha cap clip a retallar\([^[:alnum:]]\)/No hi ha cap clip que s'hagi de retallar\1/g
# saltar
  s/\bSegons a sal&tar en cercar\([^[:alnum:]]\)/Segons que s'han de sal\&tar en cercar\1/g
s/\b\(Línies\|Quantitat de fotogrames\) a saltar\([^[:alnum:]]\)/\1 que s'han de saltar\2/g
# seleccionar
  s/\bLa UID del \(compte\|contacte\) a seleccionar prèviament\([^[:alnum:]]\)/La UID del \1 que s'ha seleccionat prèviament\2/g
  s/\bNo hi ha res a seleccionar\([^[:alnum:]]\)/No hi ha res que es pugui seleccionar\1/g
s/\b\(Color\) a seleccionar\([^[:alnum:]]\)/\1 que s'ha de seleccionar\2/g
s/\b\(No es pot identificar l'element\|Un botó que permet una superfície d'informe\) a seleccionar\([^[:alnum:]]\)/\1 que se seleccionarà\2/g
s/\b\(obtenir una llista dels tipus d'origen\) a seleccionar\([^[:alnum:]]\)/\1 que se seleccionaran\2/g
# signar
# s/\bfitxer a \(baixar\|signar\|verificar\)\([^[:alnum:]]\)/fitxer que s'ha de \1\2/g
s/\b\(Obre un fitxer\) a signar\([^[:alnum:]]\)/\1 que s'ha de signar\2/g
# simular
s/\b\(Perfil del dispositiu de sortida\) a simular\([^[:alnum:]]\)/\1 que s'ha de simular\2/g
# sincronitzar
s/\b\(Bústies\|per a seleccionar les bústies\|s'obrien els fitxers\|Trieu els camps\|Trieu les col·leccions\) a sincronitzar\([^[:alnum:]]\)/\1 que s'han de sincronitzar\2/g
# situar
  s/\b\(encara tenia %1 batallons\|encara tenia 1 batalló\) a situar\([^[:alnum:]]\)/\1 per a situar\2/g
s/\b\(1 batalló\) a situar\([^[:alnum:]]\)/\1 que s'ha de situar\2/g
s/\b\(1 batallons\) a situar\([^[:alnum:]]\)/\1 que s'han de situar\2/g
s/\b\(2 batallons\) a situar\([^[:alnum:]]\)/\1 que se situaran\2/g
# solucionar
s/\b\(Imatge\) a solucionar\([^[:alnum:]]\)/\1 que s'ha de solucionar\2/g
# substituir
  s/\bLlargada del byte de caràcters\([^[:alnum:]]\)/Llargada de byte dels caràcters\1/g
  s/\bQuina ocurrència a substituir\([^[:alnum:]]\)/Quina ocurrència s'ha de substituir\1/g
s/\b\(Part del text\) a substituir\([^[:alnum:]]\)/\1 que s'ha de substituir\2/g
s/\b\(Llargada de byte dels caràcters\|Nombre de caràcters\|Posició de byte dels caràcters\|Posició dels caràcters\) a substituir\([^[:alnum:]]\)/\1 que s'han de substituir\2/g
# subtitular
s/\b\(El vídeo\) a subtitular\([^[:alnum:]]\)/\1 que se subtitularà\2/g
# suprimir
  s/\bURL d'una etiqueta a suprimir\([^[:alnum:]]\)/o URL d'una etiqueta que se suprimirà\1/g
s/\b\(ID o URL d'una etiqueta\|Trieu la plantilla\) a suprimir\([^[:alnum:]]\)/\1 que s'ha de suprimir\2/g
s/\b\([Pp]àgines seleccionades\|Trieu les notes\|Trieu els símbols\|Trieu les pàgines\|Trieu les pistes\) a suprimir\([^[:alnum:]]\)/\1 que s'han de suprimir\2/g
s/\b\(El certificat\|El node\|Es desconeix la carpeta\|Ha fallat en cercar la carpeta\|L'aresta\|Trieu una tasca\|Un dels certificats\) a suprimir\([^[:alnum:]]\)/\1 que se suprimirà\2/g
s/\b\(Alguns dels certificats\|Tots els certificats\) a suprimir\([^[:alnum:]]\)/\1 que se suprimiran\2/g
s/\b\(No heu seleccionat res\|no hi ha cap caixa\|No hi ha res\|No s'ha especificat cap element\|incidència\) a suprimir\([^[:alnum:]]\)/\1 que s'hagi de suprimir\2/g
s/\b\(No hi ha fitxers\) a suprimir\([^[:alnum:]]\)/\1 que s'hagin de suprimir\2/g
# tancar
  s/\bNo hi ha fitxers a tancar…\([^[:alnum:]]\)/No hi ha cap fitxer per a tancar «…»\1/g
# tolerar
s/\b\(Nombre d'errors\) a tolerar\([^[:alnum:]]\)/\1 que s'han de tolerar\2/g
# totes
# traçar
s/\b\(Trieu els components\) a traçar\([^[:alnum:]]\)/\1 que s'han de traçar\2/g
# traduir
  s/\bTrieu l'idioma a traduir\([^[:alnum:]]\)/Trieu l'idioma per a traduir\1/g
s/\b\(Entrades\|plantilles\|Trieu la carpeta amb fitxers \.po del Gettext\) a traduir\([^[:alnum:]]\)/\1 que s'han de traduir\2/g
# transcodificar
s/\b\(Fitxers\) a transcodificar\([^[:alnum:]]\)/\1 que s'han de transcodificar\2/g
# transferir
s/\b\(Cal un import positiu\) a transferir\([^[:alnum:]]\)/\1 que s'hagi de transferir\2/g
s/\b\(Cal seleccionar una o més peces\|excloure selectivament determinats fitxers de la llista de fitxers\) a transferir\([^[:alnum:]]\)/\1 que es transferiran\2/g
# transformar
s/\b\(Fitxer\) a transformar\([^[:alnum:]]\)/\1 que s'ha de transformar\2/g
# transmetre
  s/\bNo hi ha elements a transmetre\([^[:alnum:]]\)/No hi ha cap element que s'hagi de transmetre\1/g
s/\b\(Costat\) a transmetre\([^[:alnum:]]\)/\1 que s'ha de transmetre\2/g
# transportar
s/\b\(Arc\|Segment\|Valor\) a transportar\([^[:alnum:]]\)/\1 que s'ha de transportar\2/g
# trobar
s/\b\(com de lluny esteu del número\|escoltareu la paraula\|està per sobre o per sota del número\|Llegiu les instruccions que us donen l'interval del número\|Nombre\) a trobar\([^[:alnum:]]\)/\1 que s'ha de trobar\2/g
s/\b\(Establiu aquí el nombre d'elements\) a trobar\([^[:alnum:]]\)/\1 que es trobaran\2/g
# trucar
s/\b\(El número\|Trieu el número\) a trucar\([^[:alnum:]]\)/\1 al que s'ha de trucar\2/g
# truncar
s/\b\([Ll]\)ongitud màxima a truncar el nom del contacte\([^[:alnum:]]\)/\1ongitud màxima a la que es truncarà el nom del contacte\2/g
# usar
  s/\\\"'@ a usar \\\"\([^[:alnum:]]\)/\\\"'@ per a que s'usin \\\"\1/g
  s/\bdefineix etiquetes\([^[:alnum:]]\)/estableix etiquetes\1/g
  s/\bDefineix la versió\([^[:alnum:]]\)/Estableix la versió\1/g
  s/\bsortida a emprar\([^[:alnum:]]\)/sortida que s'ha d'usar\1/g
# # # # # # # # #
  s/\bEl tipus de lletra a usar en \(el visor\|els botons\|l'historial\|la pantalla\)\.\([^[:alnum:]]\)/El tipus de lletra que s'usarà en \1\.\2/g
  s/\bLa lletra a usar en \(el visor\|els botons\|l'historial\|la pantalla\)\.\([^[:alnum:]]\)/La lletra que s'usarà en \1\.\2/g
  s/\bEstableix el tipus d'\(autenticació\|encriptatge\)\([^[:alnum:]]\)/Defineix el tipus d'\1\2/g
  s/\bEstableix la codificació estàndard\([^[:alnum:]]\)/Defineix la codificació estàndard\1/g
  s/\bEstabliu la unitat\/mètode a usar\([^[:alnum:]]\)/Especifiqueu la unitat\/mètode que s'usarà\1/g
  s/\bForça a l'aplicació a usar\([^[:alnum:]]\)/Força a l'aplicació a que usi\1/g
  s/\bK3b decideixi el mode a fer servir\([^[:alnum:]]\)/K3b decideixi el mode que s'usarà\1/g
  s/\bMolts terres falsos a usar i evitar\.\([^[:alnum:]]\)/Molts terres falsos que s'usaran i evitaran\.\1/g
  s/\bNombre de fils a usar per a \(construir les miniatures\|precarregar les imatges\)\([^[:alnum:]]\)/Nombre de fils que s'usaran per a \1\2/g
  s/\btingui alguna peça a usar\([^[:alnum:]]\)/tingui alguna peça per a usar\1/g
s/\b\(amb el patró\|Aspecte\|Calendari\|CDV\|Configuració de l'intèrpret de Python\|Defineix el tipus d'autenticació\|Defineix el tipus d'encriptatge\|Definiu el tipus d'autenticació\|Disposició de teclat\|Dispositiu UPnP\|El factor de format\|El fitxer \.css\|El fitxer XSLT\|El motor de dades\|El protocol\|El tipus de disposició\|El tipus de lletra\|Trieu el mapa\|Especifica el fitxer de terreny\|especifica el nombre de dígits\|Expressió\|Extensió\|Factor de l'escala\|Fitxer CSS\|Funció(_X_)\|i quin és el dit correcte\|Identitat del KMail\|L'<adreça> d'error\|L'aplicació externa\|L'estil\|L'extensió predeterminada\|l'idioma\|Lector de targetes intel·ligents\|La distribució\|La plantilla\|Micròfon\|Nom\|Nom de la regió\|Nom del perfil\|Ordre d'arxivat\|Paleta\|Pantalla\|Paquet\|Paquet gràfic\|Part\|Port\|Primer port\|Programa de suma de verificació\|Trieu aquí el filtre predefinit\|Trieu el còdec d'àudio\|Trieu el còdec de vídeo\|Trieu el compte de sortida\|Trieu el connector inicial\|Trieu el diccionari\|Tria el directori\|Trieu el directori\|Trieu el mode d'escriptura\|Trieu el teclat virtual\|Trieu la cartera\|Trieu la identitat\|Trieu un fitxer\|Sobrenom\|Tema\|Tipus d'emmagatzematge\|Tipus de lletra\|Tipus de sessió\|Tipus MIME\|Transport de correu\|URL\) a \(emprar\|usar\|utilitzar\)\([^[:alnum:]]\)/\1 que s'ha d'usar\3/g
s/\b\(Guies\|Icones\|Nombre de cicles\|Nombre de cicles històrics\|Nombre de fils\|Nombre màxim de nivells de factor\) a \(emprar\|usar\|utilitzar\)\([^[:alnum:]]\)/\1 que s'han d'usar\3/g
s/\b\(Trieu un connector de gestió\|Trieu un entorn\|Trieu un proveïdor d'escriptori social\) a \(emprar\|usar\|utilitzar\)\([^[:alnum:]]\)/\1 que s'hagi d'usar\3/g
s/\b\(A continuació, trieu l'aplicació de guia\|Adreça IP o nom de màquina del servidor intermediari HTTP\|Aquest mòdul permet triar el teclat virtual\|Aquest valor controla el nivell\|Aquest valor controla el nombre d'iteracions\|Aquesta és l'altitud mínima sobre l'horitzó\|aquí podeu especificar el caràcter de citació\|Aquí podeu limitar la quantitat màxima de memòria\|Cal definir una capturadora d'imatges\|cal especificar el dispositiu\|Color\|Defineix el byte\|Defineix la codificació estàndard\|Definiu el tipus d'autenticació\|determina el model d'aprenentatge profund\|determinar la codificació\|digiKam no ha pogut crear la carpeta\|Directori\|Distància focal del telescopi\|Editor de text\|El byte\|El camp de batalla\|El color\|El color de fons\|El color de ressaltat\|El connector de fons de pantalla\|El directori de treball inicial\|El dispositiu predeterminat\|El fons\|El joc de fitxes\|El KGpg necessita saber a on està el fitxer executable del GnuPG\|El missatge de registre estàndard\|El motor\|El nom de fitxer de la imatge de fons\|El perfil de l'StellarSolver\|El perfil\|El port local\|El procés del sistema de guiatge\|El protocol de transport primari\|El tipus de parametrització\|ls ports\|És possible especificar un bloqueig de filtre\|Trieu la clau\|Especifica el conjunt d'heurística de comprovació de fuites\|Especifica la hipòtesi\|Especifica la icona\|Especifica la lletra\|Especifica la política predeterminada\|Especifica la ubicació\|Especifiqueu l'ordre\|Estableix el color\|[Ee]stableix el nombre aleatori de llavors\|Establiu aquí el valor per al llindar de reducció del soroll\|Especifiqueu vós mateix l'ordre de disseny\|Estableix el factor de Kron\|Estableix explícitament el nivell de compressió\|Estableix la versió del Markdown\|establiu això a un nom de l'objecte\|Establiu aquí el color del tipus de lletra\|Establiu aquí el guany de relleu\|Establiu aquí la mida del pinzell\|Establiu aquí el valor del llindar per a la reducció del soroll\|Establiu el CCD\|Establiu el dispositiu\|Establiu el mètode\|Estadística\|Estil\|Etiqueta\|Factor\|Fitxer de filtres\|Full d'estil\|Hipòtesi alternativa\|i el camí de la carpeta\|[Ii]nstal·la el connector\|introduïu el camp de visió\|Introduïu el servidor intermediari\|Introduïu l'adreça del servidor de claus\|Introduïu l'ordre\|Introduïu un caràcter personalitzat\|Introduïu un nom i\/o una adreça de correu electrònic\|Introduïu un nom i una adreça de correu electrònic\|L'algorisme\|L'aparença\|L'exposició\|La base\|La carpeta\|La disposició de la pantalla d'inici\|La imatge de fons\|La pantalla Wayland\|La pantalla X11\|La variable\|Mètode de correlació\|Mètode de travessada de NAT\|Mida del pas\|Motor nou de base de dades\|Nom del símbol\|no és el connector\|Nucli de suavitzat\|Per a poder signar aquest missatge primer haureu de definir la clau de signatura\|per a trobar l'URI correcte\|Personalitzeu el color de fons\|podeu canviar el botó del ratolí\|potser haureu d'indicar aquí el port\|probablement el punt blanc E correcte\|Proporcioneu una contrasenya o una frase de pas\|Reinicia a l'acció predeterminada\|Reinicialitza l'ordre de disseny\|Tria la corba\|Tria la planificació\|Tria un color\|Trieu aquí la icona\|Trieu el fitxer FITS opcional\|Trieu el mètode\|Trieu el motor de cerca\|Trieu l'algorisme\|Trieu l'operació\|Trieu la identitat del remitent\|Trieu la plantilla\|Trieu la regió\|Trieu la temperatura de color predefinida per al balanç de blancs\|Trieu la zona horària\|Trieu un color\|Trieu un compte\|Trieu un mètode o sistema\|Trieu un so\|Trieu un transport\|Trieu un vector\|Trieu una cadena\|Trieu una carpeta\|Trieu un escalar\|[Tt]rieu una clau (OpenPGP o S\/MIME)\|[Tt]rieu una clau OpenPGP\|[Tt]rieu una clau S\/MIME\|Trieu una etiqueta\|Trieu una identitat\|Trieu una plantilla\|Símbol\|Sòcol Wayland\|Sòcol XWayland\|Tema de color\|triar l'aparença (mapa i països)\|trieu la roda de filtres des de la llista desplegable i el filtre\|un diàleg demanarà a l'usuari que esculli la codificació\) a \(emprar\|usar\|utilitzar\)\([^[:alnum:]]\)/\1 que s'usarà\3/g
s/\b\(amb els noms de les classes\|Aquí podeu seleccionar les tecles\|Cal introduir la llista de dorsals\|Els ports\|estableix etiquetes de variables\|i suprimir plantilles de missatge personalitzades\|Marcadors\|[Nn]ombre de fils\|Nombre de punts\|o donar una llista de valors\|o donar una matriu de valors\|Proporciona un resum dels paràmetres\|que contingui els noms\|se us preguntarà que indiqueu les claus\|Trieu les claus\|Trieu les columnes adequades\|Trieu les columnes apropiades\|Trieu la clau o claus\|Trieu les eines\|Trieu un vector de caràcters\|Senzillament introduïu tots els caràcters\|serveis\|si hi ha pàgines de rètol\|Tipus de colors\|Una llista dels dorsals\) a \(emprar\|usar\|utilitzar\)\([^[:alnum:]]\)/\1 que s'usaran\3/g
# validar
s/\b\(No hi ha dades JSON\) a validar\([^[:alnum:]]\)/\1 que s'hagin de validar\2/g
# verificar
s/\b\(Obre un fitxer\|Trieu el fitxer\|Tria el model ajustat\) a verificar\([^[:alnum:]]\)/\1 que s'ha de verificar\2/g
s/\b\(No hi ha res\|Qualsevol text\) a verificar\([^[:alnum:]]\)/\1 que s'hagi de verificar\2/g
s/\b\(i del nombre de certificats\|i el nombre de certificats\) a verificar\([^[:alnum:]]\)/\1 que es verificaran\2/g
# veure
s/\b\(Conjunt de colors\) a veure\([^[:alnum:]]\)/\1 que s'han de veure\2/g
s/\b\(Deixeu anar o obriu un document\) a veure\([^[:alnum:]]\)/\1 que s'hagi de visualitzar\2/g
# vigilar
s/\b\(El sobrenom\) a vigilar\([^[:alnum:]]\)/\1 que es vigilarà\2/g
# visualitzar
s/\b\(Nom del fitxer\|Trieu el canal de l'histograma\|Tria el nivell de severitat més baix de problema\) a visualitzar\([^[:alnum:]]\)/\1 que s'ha de visualitzar\2/g
s/\b\(Tria els compornents\|Trieu els vectors\) a visualitzar\([^[:alnum:]]\)/\1 que s'han de visualitzar\2/g
s/\b\(Trieu la font\) a visualitzar\([^[:alnum:]]\)/\1 que es visualitzarà\2/g
s/\b\(Aquí podeu afegir extensions addicionals de fitxers d'imatge (inclús fitxers RAW)\|Aquí podeu afegir extensions addicionals de fitxers d'àudio\|Aquí podeu afegir extensions addicionals de fitxers de vídeo\|connectors de resum\|El límit de línies\|Trieu els connectors de resum\|Trieu la quantitat de modificació de gamma\) a visualitzar\([^[:alnum:]]\)/\1 que es visualitzaran\2/g

s/\b\(recorda la seva última ubicació\) a visualitzar\([^[:alnum:]]\)/\1 on s'ha visualitzat\2/g

# #
# # # # # # # # # # # # # #
#
# a on cal
s/\bTrieu a on restaurar\([^[:alnum:]]\)/Trieu a on cal restaurar\1/g
# a on s'ha(n)
s/\ba on enviar el\([^[:alnum:]]\)/a on s'ha d'enviar el\1/g
s/\ba on avaluar l'\([^[:alnum:]]\)/a on s'ha d'avaluar l'\1/g
s/\ba on \(cercar\|baixar\|col·locar\|copiar\|desar\|emmagatzemar\|enviar\|moure\|pujar\|situar\|transferir\) el\([^[:alnum:]]\)/a on s'ha de \1 el\2/g
s/\ba on \(cercar\|baixar\|col·locar\|copiar\|desar\|emmagatzemar\|enviar\|moure\|pujar\|situar\|transferir\) la\([^[:alnum:]]\)/a on s'ha de \1 la\2/g
s/\ba on \(cercar\|baixar\|col·locar\|copiar\|desar\|emmagatzemar\|enviar\|moure\|pujar\|situar\|transferir\) els\([^[:alnum:]]\)/a on s'han de \1 els\2/g
s/\ba on \(cercar\|baixar\|col·locar\|copiar\|desar\|emmagatzemar\|enviar\|moure\|pujar\|situar\|transferir\) les\([^[:alnum:]]\)/a on s'han de \1 les\2/g
s/\bA on exportar\([^[:alnum:]]\)/A on s'ha d'exportar\1/g
s/\ba on \(cavar\|copiar\|desar\)\([^[:alnum:]]\)/a on s'ha de \1\2/g
  s/\ba on s'ha de desar-lo\([^[:alnum:]]\)/a on s'ha de desar\1/g
s/\bdestinació a on extreure\([^[:alnum:]]\)/destinació a on s'ha d'extreure\1/g
s/\b\([Dd]\)estinació a on \(deixar\|saltar\)\([^[:alnum:]]\)/\1estinació a on s'ha de \2\3/g
s/\bdirectori a on cercar\([^[:alnum:]]\)/directori a on s'ha de cercar\1/g
s/\blloc a on importar\([^[:alnum:]]\)/lloc a on s'ha d'importar\1/g
s/\b\([Uu]\)bicació a on desar\([^[:alnum:]]\)/\1bicació a on s'ha de desar\2/g

# #
# # # # # # # # # # # # # #
#
# addicional(s)
s/\bCaracterístiques extres\([^[:alnum:]]\)/Característiques addicionals\1/g

# #
# # # # # # # # # # # # # #
#
# Addicionalment / Alternativament / Opcionalment
s/\bAddicionalment\([^[:alnum:]]\)/De manera addicional\1/g
s/\baddicionalment\([^[:alnum:]]\)/de manera addicional\1/g
s/\bAlternativament\([^[:alnum:]]\)/De manera alternativa\1/g
s/\balternativament\([^[:alnum:]]\)/de manera alternativa\1/g
s/\bOpcionalment\([^[:alnum:]]\)/De manera opcional\1/g
s/\bopcionalment\([^[:alnum:]]\)/de manera opcional\1/g
  s/\bDe manera \(addicional\|alternativa\|opcional\) \([^[:alnum:]]\)/De manera \1, \2/g

# #
# # # # # # # # # # # # # #
#
# amb facilitat
  s/\bper adaptar-se més fàcilment\([^[:alnum:]]\)/per a adaptar-se amb més facilitat\1/g
s/\bmolt fàcilment\([^[:alnum:]]\)/amb molta facilitat\1/g
s/\bmés fàcilment\([^[:alnum:]]\)/amb més facilitat\1/g
s/\bfàcilment accessible\([^[:alnum:]]\)/accessible amb facilitat\1/g
s/\bfàcilment\([^[:alnum:]]\)/amb facilitat\1/g
  s/\bamb facilitat accessibles\([^[:alnum:]]\)/accessibles amb facilitat\1/g

# #
# # # # # # # # # # # # # #
#
# característica(ques)
# funcionalitat
  s/\bfuncionalitat a l'aplicació\([^[:alnum:]]\)/característica a l'aplicació\1/g
s/\b\(abusa de la\|[Aa]questa\|codifiqueu la\|Desactiva la\|emprant la\|faltar una\|falti una\|Heu accedit a una\|implementació integrada d'aquesta\|La\|la falta d'alguna\|La primera\|ofereix cap\|per a aconseguir la\|petició de\|[Pp]roveu la\|si falta una\|sol·licitud de\) funcionalitat\([^[:alnum:]]\)/\1 característica\2/g
s/\bfuncionalitat \(«Wake-On-LAN»\|d'accessibilitat\|d'historial\|de les paraules clau\|es coneix\|experimental\)\([^[:alnum:]]\)/característica \1\2/g
s/\bFuncionalitat \(Cucumber\|de cerca\|de la IGU\|experimental\|per a desactivar l'autenticació\|que afegeix la data\)\([^[:alnum:]]\)/Característica \1\2/g
# funcionalitats
s/\b\(afegir\|Ajuda amb les noves\|altres\|Comprova les\|descobrir més\|[Dd]escriu les\|Desenvolupament de\|editor de text ple de\|empaquetat amb\|esperar noves\|estadístiques de freqüència d'ús de\|Estat de les\|la majoria de les\|les altres\|les seves\|llista de les\|[Mm]oltes\|paquets de\|pedaços per a noves\|peticions de noves\|plena de\|proporciona diverses\|quines\|ric en\|Té\|té diverses\|[Tt]otes les\|Verifica les\) funcionalitats\([^[:alnum:]]\)/\1 característiques\2/g
  s/\bper a accedir a totes les característiques\([^[:alnum:]]\)/per a accedir a totes les funcions\1/g
s/\bfuncionalitats \(«Wake-On-LAN»\|avançades\|bàsiques\|d'accessibilitat\|d'exportació\|de navegació\|de veu\|específiques\|incompletes\|molt útils per a millorar\|noves\|típiques\)\([^[:alnum:]]\)/característiques \1\2/g
s/\bFuncionalitats \(avançades\|Cucumber\|de cerca\|definibles\|del programa\|i correcció d'errors\|per a negocis\|sense configurar\)\([^[:alnum:]]\)/Característiques \1\2/g
# funció
s/\b\(automàtica és una\|de desplaçament\|de zoom\) funció\([^[:alnum:]]\)/\1 característica\2/g
s/\bfunció \(«Insereix\|d'ocultació automàtica\|de desplaçament\|de reenviament\|de zoom\|experimental\)\([^[:alnum:]]\)/característica \1\2/g
# funcions
s/\b\(algunes\|en altres aplicacions per a\|proporciona als desenvolupadors moltes\) funcions\([^[:alnum:]]\)/\1 característiques\2/g
s/\bfuncions \(de la navegació\|de veu\|més avançades\|multicursor\|multiselecció\)\([^[:alnum:]]\)/característiques \1\2/g
s/\bFuncions \(multiselecció\)\([^[:alnum:]]\)/Característiques \1\2/g
# esmenes importants
s/\bla funció de consell de crida de funció podria fallar\([^[:alnum:]]\)/la crida a la funció de característica de consell podria fallar\1/g
s/\bprovar la vostra funcionalitat\([^[:alnum:]]\)/provar la vostra característica\1/g
s/\bprovar noves funcionalitats\([^[:alnum:]]\)/provar característiques noves\1/g

# #
# # # # # # # # # # # # # #
#
# càrrega -> carrega
s/\bCàrrega automàticament els subtítols\([^[:alnum:]]\)/Carrega automàticament els subtítols\1/g
s/\bRecàrrega automàtica del document\([^[:alnum:]]\)/Recarrega automàticament el document\1/g

# #
# # # # # # # # # # # # # #
#
# com a
s/\bcalendari d'alarma arxivada predeterminat\([^[:alnum:]]\)/calendari d'alarma arxivada com a predeterminat\1/g

# #
# # # # # # # # # # # # # #
#
# definir -> establir
s/\"Defineix\"/\"Estableix\"/g
s/(Sense definir)\([^[:alnum:]]\)/(Sense establir)\1/g
s/, es defineix\([^[:alnum:]]\)/, s'estableix\1/g
s/\bDefineix \(cadenes\|manualment\|textos\)\([^[:alnum:]]\)/Estableix \1\2/g
s/\bDefineix el \(camí\|caràcter\|color\|desplaçament\|diccionari\|directori\|factor\|format\|mode\|nivell\|nom\|nombre\|prefix\|ressaltat\|tipus\|valor\)\([^[:alnum:]]\)/Estableix el \1\2/g
  s/\bDefinir el criteri\([^[:alnum:]]\)/Defineix el criteri\1/g
s/\bDefineix \(els bytes\|els servidors\)\([^[:alnum:]]\)/Estableix \1\2/g
  s/\bDefineix l'antiguitat d'arxivat\([^[:alnum:]]\)/Estableix l'antiguitat de l'arxivat\1/g
    s/\bde l'antiguitat d'arxivament\([^[:alnum:]]\)/d'antiguitat de l'arxivament\1/g
s/\bDefineix l'\(<style>\|alarma\|alçada\|amplada\|eina\|esquema\|estil\|hora\|idioma\|ordenació\|ordre\)\([^[:alnum:]]\)/Estableix l'\1\2/g
s/\bdefineix l'ordre\([^[:alnum:]]\)/estableix l'ordre\1/g
s/\bDefineix la \(codificació\|columna\|data\|durada\|longitud\|lletra\|mida\|peça\|prioritat\|profunditat\|ubicació\|versió\)\([^[:alnum:]]\)/Estableix la \1\2/g
s/\bDefineix les \(opcions\|unitats\)\([^[:alnum:]]\)/Estableix les \1\2/g
s/\bDefineix o \(canvia\|suprimeix\)\([^[:alnum:]]\)/Estableix o \1\2/g
s/\bDefineix si \(els valors\|la pantalla\)\([^[:alnum:]]\)/Estableix si \1\2/g
  s/\bDefineix un &punt\([^[:alnum:]]\)/Estableix un \&punt\1/g
s/\bDefineix una \(icona\)\([^[:alnum:]]\)/Establiu una \1\2/g
  s/\bMode de definició del text\([^[:alnum:]]\)/Mode d'establir el text\1/g
s/\bdefineix etiquetes\([^[:alnum:]]\)/estableix etiquetes\1/g
s/\bdefinició del text\([^[:alnum:]]\)/s'estableix el text\1/g
s/\bdefinida al diàleg\([^[:alnum:]]\)/establerta al diàleg\1/g
s/\bdefinir la peça\([^[:alnum:]]\)/establir la peça\1/g
s/\bdefiniu \(<[^<]\{1,\}>\)KDE\([^[:alnum:]]\)/establiu \1KDE\2/g
s/\bDefiniu a sota les\([^[:alnum:]]\)/Establiu a sota les\1/g
s/\bDefiniu aquí el format\([^[:alnum:]]\)/Establiu aquí el format\1/g
s/\bDefiniu els límit\([^[:alnum:]]\)/Establiu els límits\1/g
s/\bDefiniu la variable\([^[:alnum:]]\)/Establiu la variable\1/g
s/\bDefiniu una nova mida\([^[:alnum:]]\)/Establiu una mida nova\1/g
  s/\bEl directori base es defineix a\([^[:alnum:]]\)/Estableix el directori base a\1/g
s/\bDefiniran diverses\([^[:alnum:]]\)/Establiran diverses\1/g
s/\bDeixeu-ho sense definir per al nivell\([^[:alnum:]]\)/Deixeu-ho sense establir per al nivell\1/g
s/\bdesitjareu definir una\([^[:alnum:]]\)/desitjareu establir una\1/g
s/\bara es pot definir un color\([^[:alnum:]]\)/ara es pot establir un color\1/g
s/\ben definir l'ordre\([^[:alnum:]]\)/en establir l'ordre\1/g
s/\ben un període de temps definit\([^[:alnum:]]\)/en un període de temps establert\1/g
s/\bes poden definir a l'editor\([^[:alnum:]]\)/es poden establir a l'editor\1/g
s/\bes pot definir el comportament\([^[:alnum:]]\)/es pot establir el comportament\1/g
s/\bestà definit a la vostra configuració\([^[:alnum:]]\)/està establert a la vostra configuració\1/g
s/\b\([Ff]\)eu clic per definir\([^[:alnum:]]\)/\1eu clic per a establir\2/g
s/\bgrup s'ha definit\([^[:alnum:]]\)/grup s'ha establert\1/g
s/\bi definir el camí\([^[:alnum:]]\)/i establir el camí\1/g
s/\bMarca \(no \|\)definida:\([^[:alnum:]]\)/Marca \1establerta:\2/g
s/\bmínima definida en\([^[:alnum:]]\)/mínima establerta en\1/g
s/\bNo s'ha definit el fitxer\([^[:alnum:]]\)/No s'ha establert el fitxer\1/g
s/\bnomés permeten definir una\([^[:alnum:]]\)/només permeten establir una\1/g
s/\bPer a definir el color\([^[:alnum:]]\)/Per a establir el color\1/g
s/\bperquè no s'ha definit\([^[:alnum:]]\)/perquè no s'ha establert\1/g
s/\b\([Pp]\)odeu definir \(combinacions\|el tipus\|etiquetes\|idiomes\|l'etiqueta\)\([^[:alnum:]]\)/\1odeu establir \2\3/g
s/\bpodeu definir les potents\([^[:alnum:]]\)/podeu especificar les potents\1/g
s/\bpot definir \(el mode\|el nom\|l'ordre\|qualsevol\)\([^[:alnum:]]\)/pot establir \1\2/g
s/\bque es van definir per a\([^[:alnum:]]\)/que es van establir per a\1/g
s/\bque \(no \|\)s'hagi definit\([^[:alnum:]]\)/que \1s'hagi establert\2/g
s/\bsegons la quantitat definida\([^[:alnum:]]\)/segons la quantitat establerta\1/g
s/\bvoleu definir una icona\([^[:alnum:]]\)/voleu establir una icona\1/g

# #
# # # # # # # # # # # # # #
#
# destinació
s/\b\(fitxer\|format\) destí\([^[:alnum:]]\)/\1 de destinació\2/g
s/\b\(directori\|element\|espaiat\|font\|Format\) de destí\([^[:alnum:]]\)/\1 de destinació\2/g
s/\bTrieu el destí…\([^[:alnum:]]\)/Trieu la destinació…\1/g
s/\bTrieu el destí %1\([^[:alnum:]]\)/Trieu la destinació %1\1/g
s/\bTrieu el destí de la sortida\([^[:alnum:]]\)/Trieu la destinació de la sortida\1/g

# al
# layerbox -> caixa de capes

# omplir -> emplenar
  s/\bpreomplerts\([^[:alnum:]]\)/preemplenats\1/g
s/\bOmple ara els &formularis\([^[:alnum:]]\)/Emplena ara els \&formularis\1/g
s/\bOmple automàticament \(els artistes\|els transbordaments\)\([^[:alnum:]]\)/Emplena automàticament \1\2/g
s/\bomple automàticament \(els artistes\|els transbordaments\)\([^[:alnum:]]\)/emplena automàticament \1\2/g
s/\bomple formulari\([^[:alnum:]]\)/emplena formulari\1/g
s/\bOmple l'adreça\([^[:alnum:]]\)/Emplena l'adreça\1/g
s/\bomple l'adreça\([^[:alnum:]]\)/emplena l'adreça\1/g
s/\bOmple la \(columna\|matriu\|selecció\) amb \(els números\|els valors\|nombres\|un valor\)\([^[:alnum:]]\)/Emplena la \1 amb \2\3/g
s/\bomple la \(columna\|matriu\|selecció\) amb \(els números\|els valors\|nombres\|un valor\)\([^[:alnum:]]\)/emplena la \1 amb \2\3/g
s/\bOmple la selecció amb un valor\([^[:alnum:]]\)/Emplena la selecció amb un valor\1/g
s/\bomple la selecció amb un valor\([^[:alnum:]]\)/emplena la selecció amb un valor\1/g
s/\bOmple les \(cel·les\|columnes\|matrius\) amb \(el número\|els números\|nombres\|valors\)\([^[:alnum:]]\)/Emplena les \1 amb \2\3/g
s/\bomple les \(cel·les\|columnes\|matrius\) amb \(el número\|els números\|nombres\|valors\)\([^[:alnum:]]\)/emplena les \1 amb \2\3/g
s/\bomplen amb les dades\([^[:alnum:]]\)/emplenen amb les dades\1/g
s/\bomplert amb el \(contingut\|número de mòbil\)\([^[:alnum:]]\)/emplenat amb el \1\2/g
s/\bomplert amb el contingut de la revisió\([^[:alnum:]]\)/emplenat amb el contingut de la revisió\1/g
s/\bomplerta al formulari\([^[:alnum:]]\)/emplenada al formulari\1/g
s/\bOmpliment del \(símbol\|text\)\([^[:alnum:]]\)/Emplenament del \1\2/g
s/\bompliment del \(símbol\|text\)\([^[:alnum:]]\)/emplenament del \1\2/g
s/\bOmpliment dels \(espais en blanc\)\([^[:alnum:]]\)/Emplenament dels \1\2/g
s/\bompliment dels \(espais en blanc\)\([^[:alnum:]]\)/emplenament dels \1\2/g
s/\bomplir amb el text\([^[:alnum:]]\)/emplenar amb el text\1/g
s/\bomplir amb el text\([^[:alnum:]]\)/emplenar amb el text\1/g
s/\bOmplir automàticament \(els artistes\|els transbordaments\)\([^[:alnum:]]\)/Emplenar automàticament \1\2/g
s/\bomplir automàticament \(els artistes\|els transbordaments\)\([^[:alnum:]]\)/emplenar automàticament \1\2/g
s/\bOmplir correctament la informació\([^[:alnum:]]\)/Emplenar correctament la informació\1/g
s/\bomplir correctament la informació\([^[:alnum:]]\)/emplenar correctament la informació\1/g
s/\bOmplir el plafó de configuraciós\([^[:alnum:]]\)/Emplenar el plafó de configuració\1/g
s/\bomplir el plafó de configuraciós\([^[:alnum:]]\)/emplenar el plafó de configuració\1/g
s/\bomplir els espais en blanc\([^[:alnum:]]\)/emplenar els espais en blanc\1/g
s/\bOmplir tots els camps\([^[:alnum:]]\)/Emplenar tots els camps\1/g
s/\bomplir tots els camps\([^[:alnum:]]\)/emplenar tots els camps\1/g
s/\bOmplir un \(informe\|text\)\([^[:alnum:]]\)/Emplenar un \1\2/g
s/\bomplir un \(informe\|text\)\([^[:alnum:]]\)/emplenar un \1\2/g
s/\bomplir-se amb qualsevol característica\([^[:alnum:]]\)/emplenar-se amb qualsevol característica\1/g
s/\bomplirà amb els paràmetres\([^[:alnum:]]\)/emplenarà amb els paràmetres\1/g
s/\bomplirà diversa informació\([^[:alnum:]]\)/emplenarà diversa informació\1/g
s/\bOmpliu aquí els detalls\([^[:alnum:]]\)/Empleneu aquí els detalls\1/g
s/\bompliu aquí els detalls\([^[:alnum:]]\)/empleneu aquí els detalls\1/g
s/\bOmpliu el \(codi\|formulari\|nombre\|vostre <b>nom\)\([^[:alnum:]]\)/Empleneu el \1\2/g
s/\bompliu el \(codi\|formulari\|nombre\|vostre <b>nom\)\([^[:alnum:]]\)/empleneu el \1\2/g
s/\bOmpliu els \(camps <interface>\|camps del formulari\|camps següents amb la informació\|destinataris\|els camps adequats\|paràmetres\)\([^[:alnum:]]\)/Empleneu els \1\2/g
s/\bompliu els \(camps <interface>\|camps del formulari\|camps següents amb la informació\|destinataris\|els camps adequats\|paràmetres\)\([^[:alnum:]]\)/empleneu els \1\2/g
s/\bOmpliu l'URL\([^[:alnum:]]\)/Empleneu l'URL\1/g
s/\bompliu l'URL\([^[:alnum:]]\)/empleneu l'URL\1/g
s/\bOmpliu la \(informació\)\([^[:alnum:]]\)/Empleneu la \1\2/g
s/\bompliu la \(informació\)\([^[:alnum:]]\)/empleneu la \1\2/g
s/\bOmpliu les \(adreces\|credencials\|dades\)\([^[:alnum:]]\)/Empleneu els \1\2/g
s/\bompliu les \(adreces\|credencials\|dades\)\([^[:alnum:]]\)/empleneu els \1\2/g
s/\bOmpliu totes les opcions\([^[:alnum:]]\)/Empleneu totes les opcions\1/g
s/\bompliu totes les opcions\([^[:alnum:]]\)/empleneu totes les opcions\1/g
s/\bOmpliu un informe\([^[:alnum:]]\)/Empleneu un informe\1/g
s/\bompliu un informe\([^[:alnum:]]\)/empleneu un informe\1/g
s/\bOmpliu-la amb algun valor\([^[:alnum:]]\)/Empleneu-la amb algun valor\1/g
s/\bompliu-la amb algun valor\([^[:alnum:]]\)/empleneu-la amb algun valor\1/g
s/\bOmpliu-lo en aquest camp\([^[:alnum:]]\)/Empleneu-lo en aquest camp\1/g
s/\bompliu-lo en aquest camp\([^[:alnum:]]\)/empleneu-lo en aquest camp\1/g
s/\bel nom de l'objecte corresponent s'omplirà\([^[:alnum:]]\)/el nom de l'objecte corresponent s'emplenarà\1/g
  s/%1: estableix el mètode de l'ompliment\([^[:alnum:]]\)/%1: estableix el mètode d'emplenament\1/g
  s/%1: estableix l'ompliment del símbol\([^[:alnum:]]\)/%1: estableix l'emplenament del símbol\1/g
  s/%1: s'ha canviat \(la posició de \|\)l'ompliment\([^[:alnum:]]\)/%1: s'ha canviat \1l'emplenament\2/g
  s/\b###Si us plau, ompliu-ho\([^[:alnum:]]\)/###Si us plau, empleneu-ho\1/g
  s/\baquest també s'ha d'omplir\([^[:alnum:]]\)/aquest també s'ha d'emplenar\1/g
  s/\bEmplenat altern» omplirà àrees\([^[:alnum:]]\)/Emplenat altern», emplenarà àrees\1/g
  s/\bEmplenat sinuós», omplirà tot l'interior\([^[:alnum:]]\)/Emplenat sinuós», emplenarà tot l'interior\1/g
  s/\bformulari per a omplir\([^[:alnum:]]\)/formulari per a emplenar\1/g
  s/\bformularis omplerts\([^[:alnum:]]\)/formularis emplenats\1/g
  s/\binstruccions sobre com omplir els camps\([^[:alnum:]]\)/instruccions sobre com emplenar els camps\1/g
  s/\bomplirà automàticament una petita seqüència de valors\([^[:alnum:]]\)/emplenarà automàticament una petita seqüència de valors\1/g
  s/\bparàgrafs de text, que es poden omplir\([^[:alnum:]]\)/paràgrafs de text, que es poden emplenar\1/g
  s/\bposició final del cursor després d'omplir-ho tot\([^[:alnum:]]\)/posició final del cursor després d'emplenar-ho tot\1/g
  s/\bpreemplenats són de l'ACBF, però també els podeu omplir\([^[:alnum:]]\)/preemplenats són de l'ACBF, però també els podeu emplenar\1/g
  s/\bs'omplirà amb un «0»\([^[:alnum:]]\)/s'emplenarà amb un «0»\1/g
  s/\bSi s'omple, el Kdenlive\([^[:alnum:]]\)/Si s'emplena, el Kdenlive\1/g


# esmenes
s/\"%1°\([ENOS]\)\"/\"%1° \1\"/g
s/\"Exclou finestres\"/\"Exclou les finestres\"/g
s/>Importa dades<\([^[:alnum:]]\)/>Importa les dades<\/\1/g
s/, sobreescriu els fitxers\([^[:alnum:]]\)/, se sobreescriuran els fitxers\1/g
s/\bA l'activitat actual\([^[:alnum:]]\)/En l'activitat actual\1/g
s/\ba on es pot canviar moltes\([^[:alnum:]]\)/a on es poden canviar moltes\1/g
s/\ba on emmagatzemar clips\([^[:alnum:]]\)/a on s'han d'emmagatzemar els clips\1/g
s/\ba on s'hi ha de pujar\([^[:alnum:]]\)/a on s'ha de pujar\1/g
s/\bA totes les activitats\([^[:alnum:]]\)/En totes les activitats\1/g
s/\b\([Aa]\)ctiva pels equips\([^[:alnum:]]\)/\1ctiva per als equips\2/g
s/\badmesos per a gairebé\([^[:alnum:]]\)/admesos per a gairebé\1/g
s/\bAfegeix usuaris al rol\([^[:alnum:]]\)/Afegeix els usuaris al rol\1/g
s/\bajuda a millor i perfeccionar\([^[:alnum:]]\)/ajuda a millorar i perfeccionar\1/g
s/\bajuda d'una funció en un paquet que no està carregat\([^[:alnum:]]\)/ajuda d'una funció en un paquet que no està carregada\1/g
s/\bAmarok reprén la reproducció\([^[:alnum:]]\)/Amarok reprendrà la reproducció\1/g
s/\bamb això, ara feu clic \(a\|en\)\([^[:alnum:]]\)/amb això, cliqueu \1\2/g
s/\bamb finalitat de filtratge de fitxers\([^[:alnum:]]\)/amb la finalitat del filtratge de fitxers\1/g
s/\bAplicació d'escanejat multipàgina, creat\([^[:alnum:]]\)/Aplicació d'escanejat multipàgina, creada\1/g
s/\baplicaci\(ó\|ons\) del terminal\([^[:alnum:]]\)/aplicaci\1 de terminal\2/g
s/\bassignacions recursos\([^[:alnum:]]\)/assignacions de recursos\1/g
s/\b\([Aa]\)tés\([^[:alnum:]]\)/\1tès\2/g
s/\bcal introduir la vostra clau\([^[:alnum:]]\)/cal que introduïu la vostra clau\1/g
s/\bcap trobar\([^[:alnum:]]\)/cal trobar\1/g
s/\bcarpeta de base\([^[:alnum:]]\)/carpeta base\1/g
  s/\bcrear la carpeta base de dades\([^[:alnum:]]\)/crear la carpeta de base de dades\1/g
s/\bcol·lideixen\([^[:alnum:]]\)/col·lisionen\1/g
s/\b\(com\|tant\) pels paquets\([^[:alnum:]]\)/\1 per als paquets\2/g
s/\bCommuta el ratolí tàctil\([^[:alnum:]]\)/Activa\/desactiva el ratolí tàctil\1/g
s/\bcompliment de \(cost\|projecte\)\([^[:alnum:]]\)/compliment del \1\2/g
s/\bcompliment de tasca\([^[:alnum:]]\)/compliment de la tasca\1/g
s/\b\([Cc]\)omproveu la vostra instal·lació\([^[:alnum:]]\)/\1omproveu la instal·lació\2/g
s/\bcompta com un\([^[:alnum:]]\)/compta com a un\1/g
s/\bConfiguració del servidor…\([^[:alnum:]]\)/Configura el servidor…\1/g
s/\bconfiguració usat\([^[:alnum:]]\)/configuració usada\1/g
s/\bdel dbus\([^[:alnum:]]\)/de «dbus»\1/g
s/\bde l'R proporcionen\([^[:alnum:]]\)/de l'R proporciona\1/g
s/\bdel l'AVPlayer\([^[:alnum:]]\)/de l'AVPlayer\1/g
s/\bdels marcador de capítols\([^[:alnum:]]\)/dels marcadors de capítol\1/g
s/\bdesar les vistes en el document en el directori\([^[:alnum:]]\)/desar les vistes del document en el directori\1/g
s/\bdesconegut[\;] no s'ha\([^[:alnum:]]\)/desconegut, no s'ha\1/g
s/\bDonem la benvinguda a tothom a afegir-se\([^[:alnum:]]\)/Donem la benvinguda a tothom per afegir-se\1/g
s/\bdrets de patent dels col·laboradors\([^[:alnum:]]\)/els drets de patent dels col·laboradors\1/g
s/\bDurant l'engegada el KDE\([^[:alnum:]]\)/Durant l'engegada, el KDE\1/g
s/\b\([Ee]\)fecte\(s\|\) d'escriptori\([^[:alnum:]]\)/\1fecte\2 de l'escriptori\3/g
s/\bEl format de fitxer d'imatge\([^[:alnum:]]\)/El format de fitxer de la imatge\1/g
s/\bEl nom de variable subministrat\([^[:alnum:]]\)/El nom subministrat a la variable\1/g
s/\bEl LUT\([^[:alnum:]]\)/La LUT\1/g
s/\bel LUT\([^[:alnum:]]\)/la LUT\1/g
s/\bEl nom de variable subministrat\([^[:alnum:]]\)/El nom subministrat a la variable\1/g
s/\bEl R\([^[:alnum:]]\)/L'R\1/g
s/\bEl SID\([^[:alnum:]]\)/L'SID\1/g
s/\bel SID\([^[:alnum:]]\)/l'SID\1/g
s/\bel temps especificat a sota\([^[:alnum:]]\)/el temps especificat a continuació\1/g
s/\bEmpra ponderacions\([^[:alnum:]]\)/Usa les ponderacions\1/g
s/\ben el camp Per a: o com a CC o com a BCC\([^[:alnum:]]\)/en el camp Per a:, com a CC o com a BCC\1/g
s/\bEn els casos ambigus un diàleg demanarà\([^[:alnum:]]\)/En els casos ambigus, un diàleg demanarà\1/g
s/\ben ratolí s'ha desendollat\([^[:alnum:]]\)/s'ha desendollat el ratolí\1/g
s/\b\([Ee]\)rror de còdec\([^[:alnum:]]\)/\1rror del còdec\2/g
s/\b\([Ee]\)rror de xarxa\([^[:alnum:]]\)/\1rror de la xarxa\2/g
s/\bés desconeguda[\;] no es\([^[:alnum:]]\)/és desconeguda, no es\1/g
s/\bes tanca una cartera\(, cal\| fa falta\)\( \)la contrasenya\([^[:alnum:]]\)/es tanca una cartera, farà falta la contrasenya\2/g
s/\bés una actualització recomanada per a tothom que usi l'Okular\([^[:alnum:]]\)/és una actualització recomanada per a tothom que l'usi\1/g
s/\bescriptura de metadades\([^[:alnum:]]\)/escriptura de les metadades\1/g
s/\bEspai de treball del Plasma\([^[:alnum:]]\)/Espai de treball Plasma\1/g
s/\bespecífic d'activitat\([^[:alnum:]]\)/específic de l'activitat\1/g
s/\bestablert com tema\([^[:alnum:]]\)/establert com a tema\1/g
s/\bEstil de barra lateral categoritzat\([^[:alnum:]]\)/Estil categoritzat de barra lateral\1/g
s/\bestil de taula\([^[:alnum:]]\)/estil de full\1/g
s/\bExamineu el contingut sencer del connector abans d'instal·lar\([^[:alnum:]]\)/Examineu el contingut sencer del connector abans d'instal·lar-lo\1/g
s/\bfarà opacs només\([^[:alnum:]]\)/només farà opacs\1/g
s/\bfins que els dos enemics puguin\([^[:alnum:]]\)/fins que els dos enemics pugin\1/g
s/\bfins que feu un segon toc\([^[:alnum:]]\)/fins que hi feu un segon toc\1/g
s/\bfitxers del kdesrc-buildrc\([^[:alnum:]]\)/fitxers de kdesrc-buildrc\1/g
s/\bfletxa inferior\([^[:alnum:]]\)/fletxa avall\1/g
s/\bfletxa superior\([^[:alnum:]]\)/fletxa amunt\1/g
s/\bGenera text\([^[:alnum:]]\)/Genera el text\1/g
s/\bgenerar els «locales»\([^[:alnum:]]\)/generar-los\1/g
s/\bha marcat com a favorit la vostra publicació\([^[:alnum:]]\)/ha marcat la vostra publicació com a preferida\1/g
s/\bhàbits d'audició i us proporciona\([^[:alnum:]]\)/hàbits d'audició i us proporcionarà\1/g
s/\b\([Hh]\)istorial desfés\([^[:alnum:]]\)/\1istorial Desfés\2/g
s/\bi el quin\([^[:alnum:]]\)/i quin\1/g
s/\b\([Ii]\)dioma origen\([^[:alnum:]]\)/\1dioma d'origen\2/g
s/\bimportades noves\([^[:alnum:]]\)/importades de nou\1/g
s/\bInclou altre utilitzats i suport per als formats de fitxer KRA, GIF\/WEBP i SVG\([^[:alnum:]]\)/Inclou altres utilitats petites i suport per als formats de fitxer KRA, GIF\/WEBP i SVG\1/g
s/\bincrementar les latències\([^[:alnum:]]\)/incrementar la latència\1/g
s/\bIndiqueu un valor superior a\([^[:alnum:]]\)/Indiqueu un valor més gran que\1/g
s/\bInforme de bateria\([^[:alnum:]]\)/Informe de la bateria\1/g
s/\binformeu-lo d'aquest error\([^[:alnum:]]\)/informeu-li d'aquest error\1/g
s/\binic de sessió\([^[:alnum:]]\)/inici de sessió\1/g
s/\bInsereix bloc de codi al\([^[:alnum:]]\)/Insereix el bloc de codi al\1/g
s/\bl'amplada del traç i l'estill\([^[:alnum:]]\)/l'amplada i l'estil del traç\1/g
s/\bl'aspecte i comportament\([^[:alnum:]]\)/l'aspecte i el comportament\1/g
s/\bla llengua requereix\([^[:alnum:]]\)/l'idioma requereix\1/g
s/\bMarcar tots els canals com a llegits\([^[:alnum:]]\)/Marca tots els canals com a llegits\1/g
s/\b\([Mm]\)ida de fotograma\([^[:alnum:]]\)/\1ida del fotograma\2/g
s/\b\([Mm]\)ode de copia\([^[:alnum:]]\)/\1ode de còpia\2/g
s/\bMostra \(blocs de codi\|blocs de cites\|enllaços\)\([^[:alnum:]]\)/Mostra els \1\2/g
s/\bMostra llistes ordenades\([^[:alnum:]]\)/Mostra ordenades les llistes\1/g
s/\bMostra \(capçaleres\|llistes de descripcions\)\([^[:alnum:]]\)/Mostra les \1\2/g
s/\bMostra text en negreta i en cursiva\([^[:alnum:]]\)/Mostra el text en negreta i en cursiva\1/g
s/\bno es trobin exemples o no hi ha cap argument\([^[:alnum:]]\)/no es trobin exemples o que no hi hagi cap argument\1/g
s/\b\([Nn]\)o està admés\([^[:alnum:]]\)/\1o s'admet\2/g
s/\bno estigui utilitzant-se\([^[:alnum:]]\)/no s'estigui usant\1/g
s/\bNo hi ha cap entrada sense llegir disponible\([^[:alnum:]]\)/No hi ha disponible cap entrada sense llegir\1/g
s/\bno la voleu afegir al diccionari\([^[:alnum:]]\)/no voleu afegir-la al diccionari\1/g
s/\bNo s'ha pogut «preview.sty»\([^[:alnum:]]\)/No s'ha pogut trobar «preview.sty»\1/g
s/\bnom d'una ordre Maxima o variable\([^[:alnum:]]\)/nom d'una ordre o variable de Maxima\1/g
s/\bNom de la vol&ta:\([^[:alnum:]]\)/Nom de la caixa for\&ta:\1/g
s/\bnom nou pel format\([^[:alnum:]]\)/nom nou per al format\1/g
s/\b\([Nn]\)ombre \([Ff]\)\([^[:alnum:]]\)/\1ombre f\3/g
s/\bNomés no llegits\([^[:alnum:]]\)/Només sense llegir\1/g
s/\bNumeració segons text aleatori\([^[:alnum:]]\)/Numeració segons un text aleatori\1/g
s/\boperacions del Krunner que s'importarà\([^[:alnum:]]\)/operacions del Krunner que s'importaran\1/g
s/\bOrganitzeu les vostres les tasques\([^[:alnum:]]\)/Organitzeu les vostres tasques\1/g
s/\bparts de l'escriptura de correus electrònics\([^[:alnum:]]\)/parts de l'escriptura dels correus electrònics\1/g
s/\bper a on caure\([^[:alnum:]]\)/per on caure\1/g
s/\bper a on enviar\([^[:alnum:]]\)/per on s'ha d'enviar\1/g
s/\bPer això /Per això, /g
s/\bPermet canviar la cistella actual\([^[:alnum:]]\)/Permet canviar de la cistella actual\1/g
s/\bperò s'esperava %2 dimensi/però s'esperaven %2 dimensi/g
s/\bperquè els dorsal del PackageKit\([^[:alnum:]]\)/perquè el dorsal del PackageKit\1/g
s/\bperquè ja existeix una carpeta amb el mateix nom\([^[:alnum:]]\)/perquè ja n'existeix una amb el mateix nom\1/g
s/\bperquè ja existeix un fitxer amb el mateix nom\([^[:alnum:]]\)/perquè ja n'existeix un amb el mateix nom\1/g
s/\bPGP\/MIME, i S\/MIME\([^[:alnum:]]\)/PGP\/MIME i S\/MIME\1/g
s/\b\([Pp]\)lantilla de serialitzador\([^[:alnum:]]\)/\1lantilla del serialitzador\2/g
s/\bPoden funcionar aplicacions múltiples a través dels perfils\([^[:alnum:]]\)/A través dels perfils s'admeten múltiples aplicacions\1/g
s/\bpodeu editar tasques al vol\([^[:alnum:]]\)/podeu editar-les al vol\1/g
s/\bPodeu intentar instal·lar manualment el connector\([^[:alnum:]]\)/Podeu intentar instal·lar-lo manualment\1/g
s/\bPodeu intentar usant el Kleopatra\([^[:alnum:]]\)/Podeu intentar-ho usant el Kleopatra,\1/g
s/\bpodreu configurar-la un cop i oblidar-la\([^[:alnum:]]\)/podreu establir-la un cop i oblidar-la\1/g
s/\bpodreu optar per a exportar l'etiqueta o\([^[:alnum:]]\)/podreu optar per exportar l'etiqueta o\1/g
s/\bpugueu-la vós mateix\([^[:alnum:]]\)/pugeu-la vós mateix\1/g
s/\bPremeu %1 mentre Bloq\([^[:alnum:]]\)/Premeu %1 mentre que Bloq\1/g
s/\bprogram\(a\|es\) del terminal\([^[:alnum:]]\)/program\1 de terminal\2/g
s/\bPublica el certificat seleccionat (clau pública) al directori web de claus del proveïdor si s'ofereix\([^[:alnum:]]\)/Si s'ofereix, publica el certificat seleccionat (clau pública) al directori web de claus del proveïdor\1/g
s/\bQuan una tasca es programa\([^[:alnum:]]\)/Quan es programa una tasca\1/g
s/\bQuadre\(s\|\) de diàleg\([^[:alnum:]]\)/Diàleg\1\2/g
s/\bquadre\(s\|\) de diàleg\([^[:alnum:]]\)/diàleg\1\2/g
  s/\bFinestra de diàleg\([^[:alnum:]]\)/Diàleg\1/g
  s/\bfinestra de diàleg\([^[:alnum:]]\)/diàleg\1/g
    s/\ba la diàleg\([^[:alnum:]]\)/al diàleg\1/g
s/\bque el Krita entengui\([^[:alnum:]]\)/que entengui el Krita\1/g
s/\bque es premi el botó\([^[:alnum:]]\)/quan es premi el botó\1/g
s/\bque venen amb un ordinador usualment\([^[:alnum:]]\)/que venen amb un ordinador, usualment\1/g
s/\bReparació d'actualització fora de línia\([^[:alnum:]]\)/Reparació de l'actualització fora de línia\1/g
s/\bresum de projectes\([^[:alnum:]]\)/resum dels projectes\1/g
s/\bS'usarà el valor predeterminat si no proporcioneu una hora d'inici\([^[:alnum:]]\)/Si no proporcioneu una hora d'inici, s'usarà el valor predeterminat\1/g
s/\bS'usarà la durada predeterminada si no proporcioneu una hora final\([^[:alnum:]]\)/Si no proporcioneu una hora final, s'usarà la durada predeterminada\1/g
s/\bScilab, i /Scilab i /g
s/\bscript de l'intèrpret d'ordes personalitzat\([^[:alnum:]]\)/script personalitzat de l'intèrpret d'ordes\1/g
s/\b\([Ss]\)cript\(s\|\) d'intèrpret d'ordres\([^[:alnum:]]\)/\1cript\2 de l'intèrpret d'ordres\3/g
s/\bsemblar estar desactivada\([^[:alnum:]]\)/sembla que està desactivada\1/g
s/\bSi es deixa buida aquest paràmetre\([^[:alnum:]]\)/Si es deixa buida aquesta opció\1/g
s/\bsi feu servir, p. ex.,\([^[:alnum:]]\)/p. ex., si utilitzeu\1/g
s/\bsi hi estiguessin al vostre escriptori\([^[:alnum:]]\)/si estiguessin al vostre escriptori\1/g
s/\bsi ja existeix un directori amb el mateix nom en importar\([^[:alnum:]]\)/si en importar ja existeix un directori amb el mateix nom\1/g
s/\b\([Ss]\)i no se selecciona cap\([^[:alnum:]]\)/\1i no se'n selecciona cap\2/g
  s/\b\([Ss]\)i no se'n selecciona cap sistema\([^[:alnum:]]\)/\1i no se selecciona cap sistema\2/g
s/\bSi s'ha activat les dades mòbils\([^[:alnum:]]\)/Si s'han activat les dades mòbils\1/g
s/\bSi s'intenta descarregar automàticament les caràtules\([^[:alnum:]]\)/Si s'intenten descarregar automàticament les caràtules\1/g
s/\b\([Ss]\)istem\(a\|es\) de control de codi\([^[:alnum:]]\)/\1istem\2 de control del codi\3/g
s/\bsuprimir la caixa forta[\;] hi ha altres caixes fortes\([^[:alnum:]]\)/suprimir la caixa forta perquè n'hi ha d'altres\1/g
s/\b\([Tt]\)em\(a\|es\) de cursor\([^[:alnum:]]\)/\1em\2 del cursor\3/g
s/\btemps d'inici de node\([^[:alnum:]]\)/temps d'inici del node\1/g
s/\btipus de lletra específics de la llengua\([^[:alnum:]]\)/tipus de lletra específics de l'idioma\1/g
s/\b\([Tt]\)orna a \(intentar\|provar\)-ho\([^[:alnum:]]\)/\1orna-ho a \2\3/g
s/\b\([Tt]\)orneu a \(intentar\|provar\)-ho\([^[:alnum:]]\)/\1orneu-ho a \2\3/g
s/\b\([Tt]\)ria revisió\([^[:alnum:]]\)/\1ria la revisió\2/g
s/\bUID \(màxim\|mínim\) d'usuari\([^[:alnum:]]\)/UID \1 de l'usuari\2/g
s/\bun equalitzador filtra el flux d'àudio\([^[:alnum:]]\)/un equalitzador filtrarà el flux d'àudio\1/g
s/\buna vegada per intentar\([^[:alnum:]]\)/una vegada per a intentar\1/g
s/\bUsa notificacions\([^[:alnum:]]\)/Usa les notificacions\1/g
s/\buseu el paràmetres\([^[:alnum:]]\)/utilitzeu l'opció\1/g
s/\bUseu un altre nom\([^[:alnum:]]\)/Useu-ne un altre\1/g
s/\bversió de 32 bits en un Windows de 64 bits\([^[:alnum:]]\)/versió de 32 bits sobre un Windows de 64 bits\1/g
s/\bVista prèvia per sobre el control lliscant del temps\([^[:alnum:]]\)/Vista prèvia del control lliscant del temps\1/g
s/\bVisualització del menú principal\([^[:alnum:]]\)/Vista del menú principal\1/g
# # # # # # # #


# # # # # # # #

# Ha fallat
s/\bEl servidor ha fallat la comprovació\([^[:alnum:]]\)/El servidor no ha pogut fer la comprovació\1/g
#
s/\bHa fallat l'\(analitzador\|assemblador\|ordre\|script\)\([^[:alnum:]]\)/No s'ha pogut executar l'\1\2/g
s/\bHa fallat\( en\|\) l'/No s'ha pogut fer l'/g
  s/\bfer l'inici de sessió\([^[:alnum:]]\)/fer l'inici de la sessió\1/g
  s/\bNo s'ha pogut fer el registre\([^[:alnum:]]\)/No s'ha pogut llegir el registre\1/g
  s/\bNo s'ha pogut fer l'execució de les\([^[:alnum:]]\)/No s'han pogut executar les\1/g
  s/\bNo s'ha pogut fer l'execució de\([^[:alnum:]]\)/No s'ha pogut executar\1/g
  s/\bNo s'ha pogut fer l'execució del\([^[:alnum:]]\)/No s'ha pogut executar el\1/g
  s/\bNo s'ha pogut fer l'obertura del fitxer\([^[:alnum:]]\)/No s'ha pogut obrir el fitxer\1/g
s/\bHa fallat en la\b\([^[:alnum:]]\)/No s'ha pogut fer la\1/g
#
s/\bHa fallat:\([^[:alnum:]]\)/No s'ha pogut:\1/g
s/\bHa fallat\.\([^[:alnum:]]\)/No s'ha pogut\.\1/g
s/\bHa fallat[!]/No s'ha pogut\./g
s/\"Ha fallat\"/\"No s'ha pogut\"/g
s/\bHa fallat %1\([^[:alnum:]]\)/No s'ha pogut %1\1/g
s/\bHa fallat \(arribar\)\([^[:alnum:]]\)/No s'ha pogut \1\2/g
s/\bHa fallat\( el\|\) «/No s'ha pogut executar «/g
s/\bHa fallat en\([^[:alnum:]]\)/No s'ha pogut\1/g
  s/\bNo s'ha pogut \(actualitzar\|cometre\|llençar\|trobar\) \(els\|les\)\([^[:alnum:]]\)/No s'han pogut \1 \2\3/g
  s/\bNo s'ha pogut actualitzar %1 paquets\([^[:alnum:]]\)/No s'han pogut actualitzar %1 paquets\1/g
  s/\bNo s'ha pogut afegir fitxers\([^[:alnum:]]\)/No s'han pogut afegir els fitxers\1/g
#
s/\b\ha fallat en l'autenticació\([^[:alnum:]]\)/no s'ha pogut fer l'autenticació\1/g
#
s/\bHa fallat el desament\([^[:alnum:]]\)/No s'ha pogut fer la guardada\1/g
s/\bHa fallat el desglossament dels\([^[:alnum:]]\)/No s'han pogut desglossar els\1/g
  s/\bHa fallat el desmuntatge d'una\([^[:alnum:]]\)/No s'ha pogut desmuntar una\1/g
  s/\bHa fallat el desmuntatge de\(l\|\)\([^[:alnum:]]\)/No s'ha pogut desmuntar el\2/g
s/\bHa fallat el desmuntatge\([^[:alnum:]]\)/No s'ha pogut desmuntar\1/g
s/\bHa fallat el duplicat de\([^[:alnum:]]\)/No s'ha pogut duplicar\1/g
  s/\bHa fallat el muntatge d'una\([^[:alnum:]]\)/No s'ha pogut muntar una\1/g
  s/\bHa fallat el muntatge de\(l\|\)\([^[:alnum:]]\)/No s'ha pogut muntar el\2/g
s/\bHa fallat el muntatge\([^[:alnum:]]\)/No s'ha pogut muntar\1/g
s/\bHa fallat el reconeixement de\([^[:alnum:]]\)/No s'ha pogut fer el reconeixement de\1/g
s/\bHa fallat el registre de\([^[:alnum:]]\)/No s'ha pogut fer el registre de\1/g
s/\bHa fallat el vídeo\([^[:alnum:]]\)/No s'ha pogut fer el vídeo\1/g
#
s/\bHa fallat en eliminar\([^[:alnum:]]\)/No s'ha pogut eliminar\1/g
#
s/\bHa fallat la cerca\([^[:alnum:]]\)/No s'ha pogut fer la cerca\1/g
s/\bHa fallat la captura\( de\|\)\([^[:alnum:]]\)/No s'ha pogut fer la captura\2/g
s/\bHa fallat la comissió\( de\|\)\([^[:alnum:]]\)/No s'ha pogut fer la comissió\2/g
s/\bHa fallat la comunicació\([^[:alnum:]]\)/No s'ha pogut comunicar\1/g
s/\bHa fallat la connexió\( de\|\)\([^[:alnum:]]\)/No s'ha pogut connectar\2/g
s/\bHa fallat la consulta\( de\|\)\([^[:alnum:]]\)/No s'ha pogut consultar\2/g
s/\bHa fallat la configuració del\([^[:alnum:]]\)/No s'ha pogut configurar el\1/g
s/\bHa fallat la configuració\( de\|\)\([^[:alnum:]]\)/No s'ha pogut configurar\2/g
s/\bHa fallat la còpia\/moviment\/transcodificació d'un\([^[:alnum:]]\)/No s'ha pogut copiar\/moure\/transcodificar un\1/g
s/\bHa fallat la còpia\/moviment\/transcodificació de\([^[:alnum:]]\)/No s'han pogut copiar\/moure\/transcodificar\1/g
s/\bHa fallat la creació d'un\([^[:alnum:]]\)/No s'ha pogut crear un\1/g
s/\bHa fallat la creació de menús\([^[:alnum:]]\)/No s'han pogut crear els menús\1/g
s/\bHa fallat la creació del\([^[:alnum:]]\)/No s'ha pogut crear el\1/g
s/\bHa fallat la creació\( de\|\)\([^[:alnum:]]\)/No s'ha pogut crear\2/g
  s/\bNo s'ha pogut crear categoria\([^[:alnum:]]\)/No s'ha pogut crear la categoria\1/g
s/\bHa fallat la definició\( de\|\)\([^[:alnum:]]\)/No s'ha pogut definir\2/g
s/\bHa fallat la desmultiplexació dels\([^[:alnum:]]\)/No s'han pogut desmultiplexar els\1/g
s/\bHa fallat la generació\( de\| del\|\)\([^[:alnum:]]\)/No s'ha pogut generar\2/g
s/\bHa fallat la fusió\( de\|\)\([^[:alnum:]]\)/No s'ha pogut fusionar\2/g
s/\bHa fallat la impressió\( de\|\)\([^[:alnum:]]\)/No s'ha pogut imprimir\2/g
s/\bHa fallat la inicialització del\([^[:alnum:]]\)/No s'ha pogut inicialitzar el\1/g
s/\bHa fallat la inserció del\([^[:alnum:]]\)/No s'ha pogut inserir el\1/g
s/\bHa fallat la inserció\( de\|\)\([^[:alnum:]]\)/No s'ha pogut inserir\2/g
s/\bHa fallat la instal·lació del\([^[:alnum:]]\)/No s'ha pogut instal·lar el\1/g
s/\bHa fallat la migració\( de\|\)\([^[:alnum:]]\)/No s'ha pogut migrar\2/g
s/\bha fallat la negociació\([^[:alnum:]]\)/no s'ha pogut fer la negociació\1/g
s/\bHa fallat la neteja\( de\|\)\([^[:alnum:]]\)/No s'ha pogut netejar\2/g
s/\bHa fallat la planificació del\([^[:alnum:]]\)/No s'ha pogut planificar el\1/g
s/\bHa fallat la planificació\( de\|\)\([^[:alnum:]]\)/No s'ha pogut planificar\2/g
s/\bHa fallat la simplificació\( de\|\)\([^[:alnum:]]\)/No s'ha pogut simplificar\2/g
s/\bHa fallat la sincronització d'una\([^[:alnum:]]\)/No s'ha pogut sincronitzar una\1/g
s/\bHa fallat la sincronització\( de\|\)\([^[:alnum:]]\)/No s'ha pogut sincronitzar\2/g
s/\bHa fallat la supressió del\([^[:alnum:]]\)/No s'ha pogut suprimir el\1/g
s/\bHa fallat la supressió dels\([^[:alnum:]]\)/No s'han pogut suprimir els\1/g
s/\bHa fallat la supressió\( de\|\)\([^[:alnum:]]\)/No s'ha pogut suprimir\2/g
s/\bHa fallat la transferència de peces\([^[:alnum:]]\)/No s'han pogut transferir les peces\1/g
s/\bHa fallat la validació\( de\|\)\([^[:alnum:]]\)/No s'ha pogut validar\2/g
#
s/\bHa fallat un\([^[:alnum:]]\)/No s'ha pogut fer un\1/g
s/\bHa fallat una ordre\([^[:alnum:]]\)/No s'ha pogut executar una ordre\1/g
#
  s/\b\([Nn]\)o s'ha pogut \(actualitzar\|afegir\|analitzar\|aplicar\|autenticar\|canviar\|carregar\|configurar\|consultar\|copiar\|crear\|desar\|desblocar\|descartar\|desempaquetar\|desencriptar\|detectar\|eliminar\|escriure\|establir\|explorar\|exportar\|extreure\|extreure\|importar\|instal·lar\|llistar\|moure\|negociar\|obtenir\|publicar\|recuperar\|refrescar\|renderitzar\|revertir\|revisar\|suprimir\|suprimir o moure\) \(els\|les\)\([^[:alnum:]]\)/\1o s'han pogut \2 \3\4/g
  s/\b\([Nn]\)o s'ha pogut \(desar\|importar\) tots els\([^[:alnum:]]\)/\1o s'han pogut \2 tots els\3/g
  s/\b\([Nn]\)o s'ha pogut \(establir diverses\|processar %1 peces\)\([^[:alnum:]]\)/\1o s'han pogut \2\3/g
  # s/\b\([Nn]\)o s'ha pogut l'autenticació\([^[:alnum:]]\)/\1o s'ha pogut fer l'autenticació\2/g
#
  s/\bNo s'han pogut \(desar la configuració\|extreure el\)\([^[:alnum:]]\)/No s'ha pogut \1\2/g
#
  s/\bNo s'ha pogut trobar cap\([^[:alnum:]]\)/No s'ha trobat cap\1/g
#
# s/\bha fallat\([^[:alnum:]]\)/no ha reeixit\1/g

# append
s/\bAfegeix contingut\"/Annexa contingut\"/g
s/\bAfegeix contingut a la pila de l'editor\([^[:alnum:]]\)/Annexa contingut a la pila de l'editor\1/g
s/\bAfegeix un camí \(a la col·lecció\|de xarxa\)\([^[:alnum:]]\)/Annexa un camí \1\2/g
s/\bde manera que no afegiu fitxers al CD\([^[:alnum:]]\)/de manera que no annexeu fitxers al CD\1/g
s/\bProblema en afegir una col·lecció\([^[:alnum:]]\)/Problema en annexar una col·lecció\1/g
# ja
s/\bja està \(adjuntat\|baixat\)\([^[:alnum:]]\)/ja s'ha \1\2/g
s/\bja està executant-se\([^[:alnum:]]\)/ja s'està executant\1/g
s/\bja està \(assignada\|bloquejada\|definida\|en curs\|en progrés\|obert\|oberta\)\([^[:alnum:]]\)/ja es troba \1\2/g
s/\bja està sent usat per a altres\([^[:alnum:]]\)/ja l'estan usant altres\1/g
s/\bja està usada\([^[:alnum:]]\)/ja l'estan usant\1/g
s/\bja no està\([^[:alnum:]]\)/ja no es troba\1/g

# múltiples
s/\bes pot indicar diverses vegades\([^[:alnum:]]\)/es poden indicar múltiples vegades\1/g

# per a
s/\ba mida a OSD\([^[:alnum:]]\)/a mida per a OSD\1/g
  s/\bcap \(fitxer\|fotograma\|propietat\|text\) que s'\(ex\|im\)portarà/cap \1 per a \2portar/g
  s/\b\(fitxer\|informació\|Preparat\) que s'\(ex\|im\)portarà/\1 per a \2portar/g
s/\bcanviar el paràmetre per cada sala per rebre totes les notificacions\([^[:alnum:]]\)/canviar el paràmetre per a cada sala per a rebre totes les notificacions\1/g
s/\bcap connector per:\([^[:alnum:]]\)/cap connector per a:\1/g
s/\bdiferents per les accions i el valor\([^[:alnum:]]\)/diferents per a les accions i el valor\1/g
s/\bdocumentació pels connectors\([^[:alnum:]]\)/documentació per als connectors\1/g
s/\beditor pels grups de restriccions\([^[:alnum:]]\)/editor per als grups de restriccions\1/g
s/\bEl símbol convencional per al corrent\([^[:alnum:]]\)/El símbol convencional per a la corrent\1/g
s/\bés un frontal a paquets matemàtics\([^[:alnum:]]\)/és un frontal per a paquets matemàtics\1/g
s/\bFormat estàndard per %1\([^[:alnum:]]\)/Format estàndard per a %1\1/g
  s/\bcap incidència a actualitzar\([^[:alnum:]]\)/cap incidència que s'hagi d'actualitzar\1/g
s/\bincidència a actualitzar\([^[:alnum:]]\)/incidència per a actualitzar\1/g
s/\bLlisca per acceptar\([^[:alnum:]]\)/Llisca per a acceptar\1/g
s/\b\([Nn]\)o heu seleccionat res a \(activar\|desactivar\|moure\|suprimir\)\([^[:alnum:]]\)/\1o heu seleccionat res per a \2\3/g
s/\b\([Nn]\)o hi ha res a \(activar\|desactivar\|fusionar\|mostrar\|moure\|publicar\|suprimir\)\([^[:alnum:]]\)/\1o hi ha res per a \2\3/g
s/\b\([Oo]\)pció per \(enganxar\|renderitzar\|usar\)\([^[:alnum:]]\)/\1pció per a \2\3/g
s/\bpel Falkon\([^[:alnum:]]\)/per al Falkon\1/g
s/\bpel membre amb el nom\([^[:alnum:]]\)/per al membre amb el nom\1/g
# aquests
  s/\bsuport per aquests\([^[:alnum:]]\)/suport per a aquests\1/g
  s/\b\(Akonadi\|persones de tot el món\) per proporcionar\([^[:alnum:]]\)/\1 per a proporcionar\2/g
s/\b\([Pp]\)er \(acabar\|accedir\|aconseguir\|activar\|actualitzar\|adormir\|afegir\|ajustar\|accelerar\|acceptar\|activar\|admetre\|afectar\|afegir\|agrupar\|ajustar\|alimentar\|allotjar\|ampliar\|anar\|anunciar\|aprendre\|aplicar\|arrencar\|arribar\|assegurar\|assignar\|augmentar\|autenticar\|automatitzar\|avançar\)\([^[:alnum:]]\)/\1er a \2\3/g
  s/\b\([Gg]\)ràcies a tothom per ajudar\([^[:alnum:]]\)/\1ràcies a tothom per ajudar\2/g
  s/\bper\( a\|\) vós\([^[:alnum:]]\)/per a tu\2/g
    s/\bper a tu mateix\([^[:alnum:]]\)/per a tu\1/g
  s/\baixò per a tu\([^[:alnum:]]\)/això per tu\1/g
  s/\bconegu\(da\|t\) només per a tu i\([^[:alnum:]]\)/conegu\1 només per tu i\2/g
  s/\bcreats per a tu\([^[:alnum:]]\)/creats per l'usuari\1/g
  s/\b\(calculi\|crear les operacions\|establert\|fa el clic de ratolí\|liquidi aquestes operacions\|marcar altres certificats com a %2\|marcar altres certificats com a vàlids\|marcar els certificats com a %2\|marcar els certificats com a vàlids\|recupera els continguts\) per a tu\([^[:alnum:]]\)/\1 per tu\2/g
  s/\blliure per a tu per a utilitzar-lo com vulgueu\([^[:alnum:]]\)/lliure per a vós, per a utilitzar-lo com vulgueu\1/g
  s/\bPer ajudar-me\([^[:alnum:]]\)/Per ajudar-me\1/g
  s/\bper ajudar a identificar les alarmes\([^[:alnum:]]\)/per ajudar a identificar-les\1/g
  s/<p><i>Per ajudar al desenvolupament\([^[:alnum:]]\)/<p><i>Per ajudar al desenvolupament\1/g
s/\b\([Pp]\)er \(bandejar\|baixar\|baixar-l[ao]\)\([^[:alnum:]]\)/\1er a \2\3/g
s/\b\([Pp]\)er \(cabre\|cancel·lar\|canviar\|carregar\|celebrar\|cercar\|certificar\|classificar\|coincidir\|començar\|comparar\|compartir\|complementar\|completar\|comprovar\|comunicar\|conèixer\|configurar\|connectar\|construir\|continuar\|controlar\|convertir\|córrer\|corregir\|cridar\|crides\)\([^[:alnum:]]\)/\1er a \2\3/g
s/\b\([Pp]\)er \(decidir\|definir\|delimitar\|demanar\|demostrar\|desactivar\|desar\|desbandejar\|desbloquejar\|desfer\|desenvolupar\|desseleccionar\|determinar\|dibuixar\|difuminar\|dirigir\|dispersar\|dormir\)\([^[:alnum:]]\)/\1er a \2\3/g
# enviar
s/\b\([Pp]\)er \(editar\|eliminar\|emmirallar\|emplenar\|emprar\|emular\|encriptar\|enganxar\|entendre\|esbrinar\|escanejar\|escriure\|establir\|estalviar\|evitar\|examinar\|executar\|explorar\|exportar\|expulsar\|extreure\)\([^[:alnum:]]\)/\1er a \2\3/g
  s/\bparticipant \(Alexey Subach\|anònim\|Salma Sultana\|Subhashish Pradhan\) per a escriure\([^[:alnum:]]\)/participant \1 per escriure\2/g
# fer
s/\b\([Pp]\)er \(finalitzar\|funcionalitat\|funcionar\)\([^[:alnum:]]\)/\1er a \2\3/g
    s/\bper fer del món\([^[:alnum:]]\)/per a fer del món\1/g
    s/\btreballs per fer que\([^[:alnum:]]\)/treballs per a fer que\1/g
s/\b\([Pp]\)er \(garantir\|gestionar\)\([^[:alnum:]]\)/\1er a \2\3/g
  s/\bllibertat per a totes les persones\([^[:alnum:]]\)/llibertat a totes les persones\1/g
s/\b\([Pp]\)er \(identificar\|implementar\|importar\|incloure\|indicar\|iniciar\|interactuar\|inspeccionar\|inspirar\|instal·lar\|intercanviar\|introduir\)\([^[:alnum:]]\)/\1er a \2\3/g
s/\bper la \(funció seleccionada\|nostra generació\|vostra plataforma\)\([^[:alnum:]]\)/per a la \1\2/g
s/\b\([Pp]\)er \(jugar\)\([^[:alnum:]]\)/\1er a \2\3/g
s/\b\([Pp]\)er \(llegir\|lliurar\)\([^[:alnum:]]\)/\1er a \2\3/g
s/\b\([Pp]\)er \(mantenir\|mesurar\|millorar\|minimitzar\|modificar\|mostrar\|moure\)\([^[:alnum:]]\)/\1er a \2\3/g
s/\b\([Pp]\)er \(navegar\)\([^[:alnum:]]\)/\1er a \2\3/g
s/\b\([Pp]\)er \(obrir\|obtenir\|ocultar\|omplir\|optimitzar\|organitzar\)\([^[:alnum:]]\)/\1er a \2\3/g
  s/\bper a omplir la pantalla completa\([^[:alnum:]]\)/per a omplir tota la pantalla\1/g
# proporcionar
  s/\btreballen per proporcionar\([^[:alnum:]]\)/treballen per a proporcionar\1/g
s/\b\([Pp]\)er \(paquets\|parlar\|permetre als\|personalitzar\|pintar\|portar\|posicionar\|preparar\|produir\|provar\|publicar\)\([^[:alnum:]]\)/\1er a \2\3/g
  s/\bper que s'\(im\|ex\)portarà/per a \1portar/g
  s/\bper que s'obrirà/per a obrir/g
  s/\b\([Pp]\)er que s'utilitzarà\([^[:alnum:]]\)/\1er a utilitzar\2/g
  s/\bTocs per radi \(bàsic\|real\)\([^[:alnum:]]\)/Tocs per al radi \1\2/g
s/\b\([Pp]\)er \(qualitats\|quantificar\)\([^[:alnum:]]\)/\1er a \2\3/g
s/\b\([Pp]\)er \(radi\|radio\|realitzar\|rebre\|reduir\|reenviar\|reordenar\|reproductors\|reservar\|resoldre\|restaurar\|revisar\|revitalitzar\)\([^[:alnum:]]\)/\1er a \2\3/g
  s/\bPer a reordenar seqüències simplement\([^[:alnum:]]\)/Per a reordenar les seqüències, senzillament\1/g
s/\b\([Pp]\)er \(saber\|satisfer\|seleccionar\|separar\|ser\|signar\|simulacions\|sincronitzar\|sobreescriure\|sol·licitar\|solucionar\|subscriure\|suspendre\)\([^[:alnum:]]\)/\1er a \2\3/g
  s/\bsón conegudes per a ser valors\([^[:alnum:]]\)/són conegudes per ser valors\1/g
s/\b\([Pp]\)er \(tancar\|tenir\|tornar\|traduir\|transferir\|treballar\|trobar\)\([^[:alnum:]]\)/\1er a \2\3/g
  s/\bPer a escriure el joc\([^[:alnum:]]\)/Per escriure el joc\1/g
  s/\bPer a tornar a escriure\([^[:alnum:]]\)/Per tornar a escriure\1/g
  s/\bper a traduir text d'un idioma\([^[:alnum:]]\)/per a traduir text des d'un idioma\1/g
s/\bPer un compte de\([^[:alnum:]]\)/Per a un compte de\1/g
s/\bper una o dues més\([^[:alnum:]]\)/per a una o dues més\1/g
s/\b\([Pp]\)er \(emprar\|unir\|usar\|utilitzar\)\([^[:alnum:]]\)/\1er a \2\3/g
  s/\bopteu per a utilitzar\([^[:alnum:]]\)/opteu per utilitzar\1/g
  s/\b\([Pp]\)er a usar el paràmetres\([^[:alnum:]]\)/\1er a usar l'opció\2/g
s/\b\([Pp]\)er \(validar\|vendre\|veure\|verificar\|viure»\|vós\)\([^[:alnum:]]\)/\1er a \2\3/g
s/\b\([Pp]\)er \(xatejar\)\([^[:alnum:]]\)/\1er a \2\3/g
  s/\b\([Gg]\)ràcies per a\([^[:alnum:]]\)/\1ràcies per\2/g
  s/\b\([Oo]\)ptar per a\([^[:alnum:]]\)/\1ptar per\2/g
s/\bratolí pel qual vulgueu\([^[:alnum:]]\)/ratolí per al qual vulgueu\1/g
s/\bs'agrupen en un lloc de la llista d'informes accedir-hi\([^[:alnum:]]\)/s'agrupen en un lloc de la llista d'informes per a accedir-hi\1/g
s/\btecla nova per %1\([^[:alnum:]]\)/tecla nova per a %1\1/g
s/\b\([Tt]\)eclegeu per filtrar\([^[:alnum:]]\)/\1eclegeu per a filtrar\2/g
s/\buna vegada per cada versió nova\([^[:alnum:]]\)/una vegada per a cada versió nova\1/g
s/\bURL a la xarxa\([^[:alnum:]]\)/URL per a la xarxa\1/g


# Per als detalls / Per a més detalls / Per a més informació
s/\bCliqueu en una prova per als detalls\([^[:alnum:]]\)/Per als detalls, cliqueu en una prova\1/g
s/\bComproveu la sortida de \(<icode>%1<\/icode>\|«gpgsm --call-dirmngr listcrls»\|«gpgsm --call-dirmngr loadcrl <nom_del_fitxer>»\|«gpgsm --dump-cert %1»\|%1\) per als detalls\([^[:alnum:]]\)/Per als detalls, comproveu la sortida de \1\2/g
s/\bFeu clic a la icona per a més detalls\([^[:alnum:]]\)/Per a més detalls, cliqueu a la icona\1/g
s/\bLlegiu el manual per als detalls\([^[:alnum:]]\)/Per als detalls, llegiu el manual\1/g
s/\bLlegiu la documentació de l'Skrooge per a més detalls\([^[:alnum:]]\)/Per a més detalls, llegiu la documentació de l'Skrooge\1/g
s/\bMireu el manual per a més detalls\([^[:alnum:]]\)/Per a més detalls, vegeu el manual\1/g
s/\bMireu la documentació per als detalls\([^[:alnum:]]\)/Per als detalls, vegeu la documentació\1/g
s/\bTrieu qualsevol de les certificacions per als detalls\([^[:alnum:]]\)/Per als detalls, trieu qualsevol de les certificacions\1/g
s/\bVegeu els detalls a %1 per a més informació sobre el Tesseract\([^[:alnum:]]\)/Per a més informació sobre el Tesseract, vegeu els detalls a %1\1/g
s/\bVegeu la documentació per als detalls\([^[:alnum:]]\)/Per als detalls, vegeu la documentació\1/g
s/\bVegeu la pestanya «Scripts» per a més informació\([^[:alnum:]]\)/Per a més informació, vegeu la pestanya «Scripts»\1/g
s/\bVegeu la seva documentació per als detalls\([^[:alnum:]]\)/Per als detalls, vegeu la seva documentació\1/g
s/\bVegeu més avall per a més detalls\([^[:alnum:]]\)/Per a més detalls, vegeu més avall\1/g
  s/\bPer a més \(detalls\|informació\) vegeu\([^[:alnum:]]\)/Per a més \1, vegeu\2/g

# !podeu
s/\bes poden trobar\([^[:alnum:]]\)/es troben\1/g
  s/\btroben enllaços cap a les imatges\([^[:alnum:]]\)/troben els enllaços cap a les imatges\1/g
  s/\bPodeu trobar-hi\([^[:alnum:]]\)/Hi trobareu\1/g
  s/\bpodeu trobar-hi\([^[:alnum:]]\)/hi trobareu\1/g
  s/\b\([Tt]\)ambé podeu trobar-la\([^[:alnum:]]\)/\1ambé la trobareu\2/g
s/\bPodeu trobar\([^[:alnum:]]\)/Trobareu\1/g
s/\bpodeu trobar\([^[:alnum:]]\)/trobareu\1/g

# qual
s/, que era propietari\([^[:alnum:]]\)/, el qual era propietari\1/g
s/, que és el motiu\([^[:alnum:]]\)/, el qual és el motiu\1/g
s/, que es pot\([^[:alnum:]]\)/, el qual es pot\1/g
  s/, el qual es pot personalitzar\([^[:alnum:]]\)/, la qual es pot personalitzar\1/g
s/, que és un requisit previ\([^[:alnum:]]\)/, el qual és un requisit previ\1/g
s/, que està empaquetat\([^[:alnum:]]\)/, el qual està empaquetat\1/g
s/, que més tard\([^[:alnum:]]\)/, el qual més tard\1/g
s/, que no sembla\([^[:alnum:]]\)/, el qual no sembla\1/g
s/, que organitza el\([^[:alnum:]]\)/, el qual organitza el\1/g
s/, que poden fer que\([^[:alnum:]]\)/, el qual pot fer que\1/g
s/, que podeu llegir\([^[:alnum:]]\)/, el qual es pot llegir\1/g
s/, que podrien presentar\([^[:alnum:]]\)/, les quals podrien presentar\1/g
s/, que pot ser-vos\([^[:alnum:]]\)/, el qual pot ser-vos\1/g
s/, que representa financerament\([^[:alnum:]]\)/, la qual representa financerament\1/g
s/, que representa més de 50 països\([^[:alnum:]]\)/, la qual representa més de 50 països\1/g
s/, que tingué lloc\([^[:alnum:]]\)/, la qual tingué lloc\1/g
s/, que va desenvolupar\([^[:alnum:]]\)/, la qual va desenvolupar\1/g
s/, que va ser el primer\([^[:alnum:]]\)/, el qual va ser el primer\1/g
s/\bdistància a on el potencial\([^[:alnum:]]\)/distància en la qual, el potencial\1/g
s/\bfesta, que posa l'art dels àlbums de la música\([^[:alnum:]]\)/festa, el qual posa l'art dels àlbums de música\1/g
  s/\bque del que\([^[:alnum:]]\)/del qual\1/g
  s/\bsafata del sistema\(<[^<]\{1,\}>\), que està\([^[:alnum:]]\)/safata del sistema\1, la qual es troba\2/g

# que
s/\bi siguin l'última versió\([^[:alnum:]]\)/i que siguin l'última versió\1/g

# que s'ha(n)
# s/\ba usar de manera predeterminada\([^[:alnum:]]\)/que s'ha d'usar de manera predeterminada\1/g
# s/\bboles a extreure\([^[:alnum:]]\)/boles que s'han d'extreure\1/g
# s/\bDispositius a mostrar\([^[:alnum:]]\)/Dispositius que s'han de mostrar\1/g
# s/\b\([Ff]\)itxers a baixar\([^[:alnum:]]\)/\1itxers que s'han de baixar\2/g
# s/\bNo hi ha res a verificar ortogràficament\([^[:alnum:]]\)/No hi ha res que s'haja de verificar ortogràficament\1/g
# s/\bordre per a executar l'emulador\([^[:alnum:]]\)/ordre que s'ha d'executar a l'emulador\1/g
# s/\b\(SPSS\|STATA\) a importar\([^[:alnum:]]\)/\1 que s'ha d'importar\2/g

# pres
s/\bhan fet les decisions\([^[:alnum:]]\)/han pres les decisions\1/g

# s'ha(n)
s/\bAcció no acceptada\([^[:alnum:]]\)/No s'ha acceptat l'acció\1/g
s/\bdades encara no s'ha desat\([^[:alnum:]]\)/dades encara no s'han desat\1/g
s/\bde destinació a \(on s'ha de \|\)\(copiar\|moure\) dins de\([^[:alnum:]]\)/de destinació a on s'ha de \2\3/g
s/\bJa s'ha completat les baixades\([^[:alnum:]]\)/Ja s'han completat les baixades\1/g
s/\bno s'ha trobat en els\([^[:alnum:]]\)/no s'han trobat en els\1/g
s/\bperò mai es van garantir que funcionessin\([^[:alnum:]]\)/però mai s'ha garantit que funcionin\1/g
s/\bquin «ScriptEngine» usar\([^[:alnum:]]\)/quin «ScriptEngine» s'ha d'usar\1/g
s/\bSi s'ha d'actualitzar automàticament els scripts integrats\([^[:alnum:]]\)/Si s'han d'actualitzar automàticament els scripts integrats\1/g

# ser
s/\bcom pot ser usat\([^[:alnum:]]\)/com es pot usar\1/g
s/\bhauria de ser usat\([^[:alnum:]]\)/s'hauria d'usar\1/g
  s/\bper a ser usada als tipus de canvi\([^[:alnum:]]\)/per a usar-la en els tipus de canvi\1/g
s/\bper a ser usada\([^[:alnum:]]\)/per a usar-la\1/g
s/\bPer a ser usat només pel kwalletd\([^[:alnum:]]\)/Per a ser usada només pel kwalletd\1/g
s/\bper a ser usat\([^[:alnum:]]\)/per a usar-se\1/g
s/\bPodrà ser usat\([^[:alnum:]]\)/Es podrà usar\1/g
s/\bpot o no ser usat\([^[:alnum:]]\)/pot o no usar-se\1/g
s/\bPot ser usa\(da\|t\)\([^[:alnum:]]\)/Pot usar-se\2/g
s/\bque pot ser usada\([^[:alnum:]]\)/que es pot usar\1/g
s/\bser usat\([^[:alnum:]]\)/usar-lo\1/g

# mantingueu / tingueu / estigueu
s/\b\([Mm]\)antingueu\([^[:alnum:]]\)/\1anteniu\2/g
s/\bTingues en compte\([^[:alnum:]]\)/Cal tenir en compte\1/g
s/\btingues en compte\([^[:alnum:]]\)/cal tenir en compte\1/g
  s/\bTingueu un control\([^[:alnum:]]\)/Tindreu un control\1/g
s/\bTingueu cura\([^[:alnum:]]\)/Cal tenir cura\1/g
s/\btingueu cura\([^[:alnum:]]\)/cal tenir cura\1/g
s/\bTingueu en compte\([^[:alnum:]]\)/Cal tenir en compte\1/g
s/\btingueu en compte\([^[:alnum:]]\)/cal tenir en compte\1/g
s/\bTingueu present\([^[:alnum:]]\)/Cal tenir present\1/g
s/\btingueu present\([^[:alnum:]]\)/cal tenir present\1/g
s/\bTingueu-ho present\([^[:alnum:]]\)/Cal tenir-ho present\1/g
s/\btingueu-ho present\([^[:alnum:]]\)/cal tenir-ho present\1/g
s/\b\([Cc]\)omproveu que tingueu\([^[:alnum:]]\)/\1omproveu que teniu\2/g
s/\b\([Ee]\)stigueu\([^[:alnum:]]\)/\1steu\2/g
