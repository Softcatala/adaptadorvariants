# #
# # # # # # # # # # # # # #
#
# extensions o
s/ \*\.\(exe\|ini\|torrent\)\([^[:alnum:]]\)/ «*.\1»\2/g
s/ \.\(exe\|ini\|torrent\)\([^[:alnum:]]\)/ «.\1»\2/g
s/\bkbits\([^[:alnum:]]\)/kbits\/s\1/g
    s/\bkbit\/s\/s\([^[:alnum:]]\)/kbits\/s\1/g
    s/\bkbits\/s\/s\([^[:alnum:]]\)/kbits\/s\1/g
    s/\bkbit\/seg\./kbits\/s/g
s/(kbit)/(kbits)/g

# gcompris/gcompris_lang._static_.po
5890,/^msgstr / s/\"estel\"/\"catxerulo\"/g

# #
# # # # # # # # # # # # # #
#
# host(s) - amfitrió(ons)
# atlantik/atlantik.po
552,/^msgstr / s/\"Nom del servidor:\"/\"Nom de l'amfitrió:\"/g
557,/^msgstr / s/\"Nom del servidor:\"/\"Nom de l'amfitrió:\"/g
417,/^msgstr / s/\"Servidor\"/\"Amfitrió\"/g
422,/^msgstr / s/\"Servidor\"/\"Amfitrió\"/g
577,/^msgstr / s/\"Servidor\"/\"Amfitrió\"/g
582,/^msgstr / s/\"Servidor\"/\"Amfitrió\"/g
# kaidan/kaidan_qt.po
2168,/^msgstr / s/\"Nom del servidor:\"/\"Nom de l'amfitrió:\"/g
2175,/^msgstr / s/\"Nom del servidor:\"/\"Nom de l'amfitrió:\"/g
2173,/^msgstr / s/\"Nom del servidor:\"/\"Nom de l'amfitrió:\"/g
# kasts/kasts.po
1681,/^msgstr / s/\"Nom del servidor:\"/\"Nom de l'amfitrió:\"/g
1933,/^msgstr / s/\"Nom del servidor:\"/\"Nom de l'amfitrió:\"/g
1584,/^msgstr / s/\"Servidor\"/\"Amfitrió\"/g
# kate/kategdbplugin.po
# kate/katesql.po
s/\"Màquina: %1. Objectiu: %1\"/\"Amfitrió: %1. Objectiu: %1\"/g
71,/^msgstr / s/\"Màquina\"/\"Amfitrió\"/g
# kio/kio5.po
# kio/kio6.po
s/\"Ordinador desconegut\([^[:alnum:]]\)/\"Amfitrió desconegut\1/g
# kldap/libkldap5.po
101,/^msgstr / s/\"Afegeix una màquina\"/\"Afegiu un amfitrió\"/g
117,/^msgstr / s/\"Edita la màquina\"/\"Editeu l'amfitrió\"/g
127,/^msgstr / s/\"Elimina la màquina\"/\"Elimineu un amfitrió\"/g
137,/^msgstr / s/\"&Afegeix una màquina…\"/\"\&Afegeix un amfitrió…\"/g
142,/^msgstr / s/\"&Edita la màquina…\"/\"\&Edita l'amfitrió…\"/g
147,/^msgstr / s/\"E&limina la màquina\"/\"E\&limina l'amfitrió\"/g
172,/^msgstr / s/\"Màquina:\"/\"Amfitrió:\"/g
# kldap/libkldap6.po
107,/^msgstr / s/\"Edita la màquina\"/\"Editeu l'amfitrió\"/g
122,/^msgstr / s/\"Edita la màquina\"/\"Editeu l'amfitrió\"/g
117,/^msgstr / s/\"Elimina la màquina\"/\"Elimineu un amfitrió\"/g
133,/^msgstr / s/\"Eliminació de màquina\"/\"Elimineu un amfitrió\"/g
127,/^msgstr / s/\"&Afegeix una màquina…\"/\"\&Afegeix un amfitrió…\"/g
145,/^msgstr / s/\"&Afegeix una màquina…\"/\"\&Afegeix un amfitrió…\"/g
132,/^msgstr / s/\"&Edita la màquina…\"/\"\&Edita l'amfitrió…\"/g
151,/^msgstr / s/\"&Edita la màquina…\"/\"\&Edita l'amfitrió…\"/g
137,/^msgstr / s/\"E&limina la màquina\"/\"E\&limina l'amfitrió\"/g
157,/^msgstr / s/\"E&limina la màquina\"/\"E\&limina l'amfitrió\"/g
162,/^msgstr / s/\"Màquina:\"/\"Amfitrió:\"/g
182,/^msgstr / s/\"Màquina:\"/\"Amfitrió:\"/g
# konsole/konsole.po
1488,/^msgstr / s/\"Servidor: %1/\"Amfitrió: %1/g
1497,/^msgstr / s/\"Servidor: %1/\"Amfitrió: %1/g
# ksystemlog/ksystemlog.po
2043,/^msgstr / s/\"Màquina\"/\"Amfitrió\"/g
# labplot/labplot2.po
17199,/^msgstr / s/\"Màquina:\"/\"Amfitrió:\"/g
17997,/^msgstr / s/\"Màquina:\"/\"Amfitrió:\"/g
# lokalize/lokalize.po
3666,/^msgstr / s/\"Màquina:\"/\"Amfitrió:\"/g
3760,/^msgstr / s/\"Màquina:\"/\"Amfitrió:\"/g
3810,/^msgstr / s/\"Màquina:\"/\"Amfitrió:\"/g
# smb4k/smb4k.po
1135,/^msgstr / s/\"Servidor\"/\"Amfitrió\"/g
1137,/^msgstr / s/\"Servidor\"/\"Amfitrió\"/g
1143,/^msgstr / s/\"Servidor\"/\"Amfitrió\"/g
1165,/^msgstr / s/\"Servidor:\"/\"Amfitrió:\"/g
1167,/^msgstr / s/\"Servidor:\"/\"Amfitrió:\"/g
1173,/^msgstr / s/\"Servidor:\"/\"Amfitrió:\"/g
# tokodon
2636,/^msgstr / s/\"Servidor\"/\"Amfitrió\"/g
4369,/^msgstr / s/\"Servidor\"/\"Amfitrió\"/g
4388,/^msgstr / s/\"Servidor\"/\"Amfitrió\"/g
 #
s/\"Configuració de l'ordinador/\"Configuració de l'amfitrió/g
s/\"host:port\"/\"amfitrió:port"/g
s/\"Màquina local/\"Amfitrió local/g
s/\"Màquina remota/\"Amfitrió remot/g
s/\"nom de la màquina\"/\"nom de l'amfitrió\"/g
s/\"Ordinadors\"/\"Amfitrions\"/g
s/«%1» des de la màquina «%2»/«%1» des de l'amfitrió «%2»/g
s/%1: No s'ha pogut accedir al servidor\([^[:alnum:]]\)/%1: No s'ha pogut accedir a l'amfitrió\1/g
s/\bNo s'ha pogut accedir al servidor «%1»/No s'ha pogut accedir a l'amfitrió «%1»/g
s/(nom de la màquina)/(nom de l'amfitrió)/g
s/\bAfegeix un amfitrió\([^[:alnum:]]\)/Afegiu un amfitrió\1/g
s/\bhost:port/amfitrió:port/g
s/\b\(http\|https\|ipp\|lpd\|socket\):\/\/hostname/\1:\/\/nom_amfitrió/g
s/\bNom del &servidor o domini\([^[:alnum:]]\)/Nom de l'am\&fitrió o domini\1/g
s/\bordinador\(\[\|\):port\([^[:alnum:]]\)/amfitrió\1:port\2/g
s/\bOrdinador: %1:%2\([^[:alnum:]]\)/Amfitrió: %1:%2\1/g
 #
s/\bActivant el servidor…/Activant l'amfitrió…/g
s/\bActivant els servidors remots…/Activant els amfitrions remots…/g
s/\badreça IP o el nom de la màquina\([^[:alnum:]]\)/adreça IP o el nom de l'amfitrió\1/g
s/\bassignació dinàmica de màquines\([^[:alnum:]]\)/assignació dinàmica d'amfitrions\1/g
s/\bcanonada amb nom per a connectar-vos a una aplicació del servidor\([^[:alnum:]]\)/canonada amb nom per a connectar-vos a una aplicació de l'amfitrió\1/g
s/\bCerca de nom de màquina\([^[:alnum:]]\)/Cerca del nom de l'amfitrió\1/g
s/\bCercant servidors en el domini\([^[:alnum:]]\)/Cercant amfitrions en el domini\1/g
s/\bclau %1 de l'ordinador\([^[:alnum:]]\)/clau %1 de l'amfitrió\1/g
s/\bclau %2 enviada pel servidor remot\([^[:alnum:]]\)/clau %2 enviada per l'amfitrió remot\1/g
s/\bclau de l'ordinador per al servidor\([^[:alnum:]]\)/clau de l'amfitrió per al servidor\1/g
s/\bcol·lecció remota des de l'ordinador\([^[:alnum:]]\)/col·lecció remota des de l'amfitrió\1/g
s/\bConfigura el nom del servidor i el port\([^[:alnum:]]\)/Configura el nom de l'amfitrió i el port\1/g
s/\bconfiguració personalitzada per al servidor\([^[:alnum:]]\)/configuració personalitzada per a l'amfitrió\1/g
s/\bconnecta\([rt]\) amb l'ordinador\([^[:alnum:]]\)/connecta\1 amb l'amfitrió\2/g
    s/\bconnectat amb l'amfitrió o amb la xarxa\([^[:alnum:]]\)/connectat amb l'ordinador o amb la xarxa\1/g
s/\bconnectar amb la màquina\([^[:alnum:]]\)/connectar amb l'amfitrió\1/g
s/\bconnectant amb l'ordinador remot\([^[:alnum:]]\)/connectant amb l'amfitrió remot\1/g
s/\bconnecteu de nou amb aquest servidor\([^[:alnum:]]\)/connecteu de nou amb aquest amfitrió\1/g
s/\bconnexió amb l'ordinador\([^[:alnum:]]\)/connexió amb l'amfitrió\1/g
s/\bconnexió SFTP amb el servidor\([^[:alnum:]]\)/connexió SFTP amb l'amfitrió\1/g
s/\bcontrasenya per a la màquina \(<[^<]\{1,\}>\|\)%1\([^[:alnum:]]\)/contrasenya per a l'amfitrió \1%1\2/g
s/\bcòpia inversa a la memòria de la màquina\([^[:alnum:]]\)/còpia inversa a la memòria de l'amfitrió\1/g
s/\bDefineix els servidors que\([^[:alnum:]]\)/Defineix els amfitrions que\1/g
s/\bdes de quins servidors voleu executar programes\([^[:alnum:]]\)/des de quins amfitrions voleu executar programes\1/g
s/\bDes del nom d'ordinador\([^[:alnum:]]\)/Des del nom d'amfitrió\1/g
s/\bdominis i ordinadors\([^[:alnum:]]\)/dominis o amfitrions\1/g
s/\bdominis o servidors\([^[:alnum:]]\)/dominis o amfitrions\1/g
s/\bEl nom de màquina i el port\([^[:alnum:]]\)/El nom d'amfitrió i el port\1/g
s/\bEl nom del servidor no pot contenir espais en blanc\([^[:alnum:]]\)/El nom de l'amfitrió no pot contenir espais en blanc\1/g
s/\bel servidor o domini\([^[:alnum:]]\)/l'amfitrió o domini\1/g
s/\bEl servidor predeterminat és l'ordinador local\([^[:alnum:]]\)/L'amfitrió predeterminat és l'ordinador local\1/g
s/\belement de domini o servidor\([^[:alnum:]]\)/element de domini o amfitrió\1/g
s/\bels dominis i servidors\([^[:alnum:]]\)/els dominis i amfitrions\1/g
s/\bels elements de domini i el servidor\([^[:alnum:]]\)/els elements de domini i l'amfitrió\1/g
s/\bemès per a aquest ordinador\([^[:alnum:]]\)/emès per a aquest amfitrió\1/g
s/\bEn el camp \*\*Nom de la màquina\([^[:alnum:]]\)/En el camp \*\*Nom de l'amfitrió\1/g
s/\bEnvia les pulsacions de tecla a la màquina\([^[:alnum:]]\)/Envia les pulsacions de tecla a l'amfitrió\1/g
s/\berror d'ordinador desconegut\([^[:alnum:]]\)/error d'amfitrió desconegut\1/g
s/\bError: Introduïu un nom de servidor en el format correcte\([^[:alnum:]]\)/Error: Introduïu un nom d'amfitrió en el format correcte\1/g
s/\bEstableix els servidors que s'haurien d'activar\([^[:alnum:]]\)/Defineix els amfitrions que s'haurien d'activar\1/g
s/\bestablir l'autenticitat de l'ordinador\([^[:alnum:]]\)/establir l'autenticitat de l'amfitrió\1/g
s/\bestablir la identitat de l'ordinador\([^[:alnum:]]\)/establir la identitat de l'amfitrió\1/g
s/\bEstabliu un nom de màquina\([^[:alnum:]]\)/Establiu un nom d'amfitrió\1/g
s/\betiquetes d'aplicació del servidor\([^[:alnum:]]\)/etiquetes d'aplicació de l'amfitrió\1/g
s/\bExecuta en la màquina\([^[:alnum:]]\)/Executa a l'amfitrió\1/g
s/\bexecutant-se en el servidor «%4»\([^[:alnum:]]\)/executant-se a l'amfitrió «%4»\1/g
s/\bFallada en la verificació de l'ordinador\([^[:alnum:]]\)/Fallada en la verificació de l'amfitrió\1/g
s/\bFalta el nom de la màquina\([^[:alnum:]]\)/Falta el nom de l'amfitrió\1/g
s/\bgestors de contrasenyes admesos a màquines remotes\([^[:alnum:]]\)/gestors de contrasenyes admesos a amfitrions remots\1/g
s/\bgrups de treball (actius), servidors i comparticions\([^[:alnum:]]\)/grups de treball (actius), amfitrions i comparticions\1/g
s/\bgrups de treball, dominis i servidors\([^[:alnum:]]\)/grups de treball, dominis i amfitrions\1/g
s/\bgrups de treball, servidors i comparticions\([^[:alnum:]]\)/grups de treball, amfitrions i comparticions\1/g
s/\bha pogut establir el servidor\([^[:alnum:]]\)/ha pogut establir l'amfitrió\1/g
s/\bidentitat de l'ordinador\([^[:alnum:]]\)/identitat de l'amfitrió\1/g
s/\bimpressora en el servidor\([^[:alnum:]]\)/impressora a l'amfitrió\1/g
s/\bintroduir el nom de la màquina que fa de servidor\([^[:alnum:]]\)/introduir el nom de l'amfitrió que fa de servidor\1/g
s/\bIntroduïu l'\(adreça\|URI\) del servidor\([^[:alnum:]]\)/Introduïu l'\1 de l'amfitrió\2/g
s/\bIntroduïu l'adreça de l'amfitrió\/dispositiu\([^[:alnum:]]\)/Introduïu l'adreça de l'amfitrió o dispositiu\1/g
s/\bIntroduïu el nom d'ordinador\([^[:alnum:]]\)/Introduïu el nom d'amfitrió\1/g
s/\bIntroduïu el nom d'un servidor (com\([^[:alnum:]]\)/Introduïu el nom d'un amfitrió (com\1/g
s/\bIntroduïu una màquina remota\([^[:alnum:]]\)/Introduïu un amfitrió remot\1/g
s/\bIP \(personalitzada \|\)o \(el \|un \|\)nom de màquina\([^[:alnum:]]\)/IP \1o \2nom d'amfitrió\3/g
s/\bL'ordinador remot no ha enviat\([^[:alnum:]]\)/L'amfitrió remot no ha enviat\1/g
s/\bL'ordinador seleccionat no es pot gestionar\([^[:alnum:]]\)/L'amfitrió seleccionat no es pot gestionar\1/g
s/\bLa màquina no pot estar buida\([^[:alnum:]]\)/L'amfitrió no pot estar buit\1/g
s/\bManca el nom de la màquina\([^[:alnum:]]\)/Manca el nom de l'amfitrió\1/g
s/\bMàquina (nom de la màquina)/Màquina (nom de l'amfitrió)/g
s/\bMQTTClient amb aquesta màquina\([^[:alnum:]]\)/MQTTClient amb aquest amfitrió\1/g
s/\bnativament per la màquina actual\([^[:alnum:]]\)/nativament per l'amfitrió actual\1/g
s/\bno es pot accedir a la màquina\([^[:alnum:]]\)/no es pot accedir a l'amfitrió\1/g
s/\bNo s'ha especificat cap \(nom d'\|\)ordinador\([^[:alnum:]]\)/No s'ha especificat cap nom d'amfitrió\2/g
s/\bNo s'ha establert la màquina\([^[:alnum:]]\)/No s'ha establert l'amfitrió\1/g
    s/\bamfitrió remota\([^[:alnum:]]\)/amfitrió remot\1/g
s/\"Nom d'ordinador desconegut\"/\"Nom d'amfitrió desconegut\"/g
s/\bnom d'ordinador del servidor\([^[:alnum:]]\)/nom d'amfitrió del servidor\1/g
# s/\bnom d'usuari i una contrasenya per al servidor\([^[:alnum:]]\)/nom d'usuari i una contrasenya per a l'amfitrió\1/g
s/\bnom de la màquina remota\([^[:alnum:]]\)/nom de l'amfitrió remot\1/g
s/\bnom de \(la \|\)màquina del \(motor\|parell\)\([^[:alnum:]]\)/nom d'amfitrió del \2\3/g
s/\bnom de màquina que s'enviarà\([^[:alnum:]]\)/nom d'amfitrió que s'enviarà\1/g
s/\bnoms de màquina es resoldran\([^[:alnum:]]\)/noms d'amfitrió es resoldran\1/g
s/\bnom de l'ordinador del servidor \([^[:alnum:]]\)/nom d'amfitrió del servidor \1/g
    s/\"\(&Nom\|Nom\|Port\) de \(l'ordinador\|la &màquina\|la màquina\)/\"\1 de l'amfitrió/g
s/\bnom de l'ordinador o del domini\([^[:alnum:]]\)/nom de l'amfitrió o del domini\1/g
s/\b\([Nn]\)om d'ordinador \(real \|\)del \(servidor\|sistema\)\([^[:alnum:]]\)/\1om d'amfitrió \2del \3\4/g
s/\bnom d'ordinador personalitzat\([^[:alnum:]]\)/nom personalitzat d'amfitrió\1/g
s/\bnom de màquina del servidor\([^[:alnum:]]\)/nom d'amfitrió del servidor\1/g
s/\bNom del servidor que es farà servir\([^[:alnum:]]\)/Nom del servidor (amfitrió) que es farà servir\1/g
s/\b\([Nn]\)om del servidor \(IMAP\|SMTP\)\"/\1om de l'amfitrió \2\"/g
s/\bnoms d'ordinador\([^[:alnum:]]\)/noms d'amfitrió\1/g
s/\bOrdinador predeterminat per a les partides\([^[:alnum:]]\)/Amfitrió predeterminat per a les partides\1/g
s/\bordinador remot ha tancat\([^[:alnum:]]\)/amfitrió remot ha tancat\1/g
s/\bordinador servidor\([^[:alnum:]]\)/ordinador amfitrió\1/g
s/\bpel nom de la màquina\([^[:alnum:]]\)/pel nom de l'amfitrió\1/g
s/\bper a excloure tots els servidors\([^[:alnum:]]\)/per a excloure tots els amfitrions\1/g
s/\bper al servidor o domini\([^[:alnum:]]\)/per a l'amfitrió o domini\1/g
s/\bper a un servidor o domini\([^[:alnum:]]\)/per a un amfitrió o domini\1/g
s/\bPID %1, apl %2, màquina %3\([^[:alnum:]]\)/PID %1, apl %2, amfitrió %3\1/g
s/\bproporcionades pel servidor %1\([^[:alnum:]]\)/proporcionades per l'amfitrió %1\1/g
s/\bqualsevol servidor o domini\([^[:alnum:]]\)/qualsevol amfitrió o domini\1/g
s/\bque admeta la màquina\([^[:alnum:]]\)/que admeta l'amfitrió\1/g
s/\bque l'adreça IP del servidor i la seva clau de servidor\([^[:alnum:]]\)/que la seva adreça IP així com la clau\1/g
s/\brecursos compartits i les màquines remotes\([^[:alnum:]]\)/recursos compartits i els amfitrions remots\1/g
s/\bResol el nom de la màquina\([^[:alnum:]]\)/Resol el nom d'amfitrió\1/g
s/\bResol els noms de les màquines\([^[:alnum:]]\)/Resol els noms d'amfitrió\1/g
s/\bresoldre un nom de servidor\([^[:alnum:]]\)/resoldre un nom d'amfitrió\1/g
s/\bs'enviaran a la màquina connectada\([^[:alnum:]]\)/s'enviaran a l'amfitrió connectat\1/g
s/\bS'està resolent el nom de la màquina\([^[:alnum:]]\)/S'està resolent el nom de l'amfitrió\1/g
s/\bservei de versionat s'executen al mateix servidor\([^[:alnum:]]\)/servei de versionat s'executen al mateix amfitrió\1/g
s/\"Servidor\/Domini\"/\"Amfitrió o domini\"/g
s/\bservidor OFX\([^[:alnum:]]\)/amfitrió OFX\1/g
    s/\bdel amfitrió OFX\([^[:alnum:]]\)/de l'amfitrió OFX\1/g
s/\bSi voleu excloure tots els servidors d'un domini donat\([^[:alnum:]]\)/Si voleu excloure tots els amfitrions d'un domini donat\1/g
s/\bsol·licitada per a aquest nom d'ordinador\([^[:alnum:]]\)/sol·licitada per a aquest nom d'amfitrió\1/g
s/\bsolament a les màquines configurades\([^[:alnum:]]\)/solament als amfitrions configurats\1/g
s/\bsuports amb l'ordinador remot\([^[:alnum:]]\)/suports amb l'amfitrió remot\1/g
s/\buna altra vegada per a aquest ordinador\([^[:alnum:]]\)/una altra vegada per a aquest amfitrió\1/g
s/\busuari@màquina\([^[:alnum:]]\)/usuari\@amfitrió\1/g
s/\bversió de NFS que admeti la màquina\([^[:alnum:]]\)/versió de NFS que admeti l'amfitrió\1/g
s/\bVoleu eliminar la configuració per a la màquina\([^[:alnum:]]\)/Voleu eliminar la configuració per a l'amfitrió\1/g
 #
s/\bde l'amfitrió de claus\([^[:alnum:]]\)/del servidor de claus\1/g

# Atlantik
s/: connexió refusada pel servidor\([^[:alnum:]]\)/: connexió refusada per l'amfitrió\1/g
s/: no s'ha trobat el servidor\([^[:alnum:]]\)/: no s'ha trobat l'amfitrió\1/g
s/\bConnecta amb aquest servidor\([^[:alnum:]]\)/Connecta amb aquest amfitrió\1/g
s/\b\([Nn]\)om de màquina del servidor\([^[:alnum:]]\)/\1om de l'amfitrió del servidor\2/g

# #
# # # # # # # # # # # # # #
#
# lightness - claredat
# calligra/calligra.po
2645,/^msgstr / s/\"Lluminositat\"/\"Claredat\"/g
3099,/^msgstr / s/\"Augmenta la brillantor\"/\"Augmenta la claredat\"/g
3105,/^msgstr / s/\"Disminueix la brillantor\"/\"Disminueix la claredat\"/g
2585,/^msgstr / s/\"Lluminositat\"/\"Claredat\"/g
3039,/^msgstr / s/\"Augmenta la brillantor\"/\"Augmenta la claredat\"/g
3045,/^msgstr / s/\"Disminueix la brillantor\"/\"Disminueix la claredat\"/g
# calligra/kocolorspaces.po
125,/^msgstr / s/\"Lluminositat\"/\"Claredat\"/g
# kontrast/kontrast.po
161,/^msgstr / s/\"Lluminositat %1\"/\"Claredat %1\"/g
253,/^msgstr / s/\"Lluminositat: %1\"/\"Claredat: %1\"/g
# okular/okular.po
s/\"Inverteix la &lluminositat\"/\"Inverteix la c\&laredat\"/g
2406,/^msgstr / s/\"Inverteix la lluminositat\"/\"Inverteix la claredat\"/g
2483,/^msgstr / s/\"Inverteix la lluminositat\"/\"Inverteix la claredat\"/g
 #
s/\bvalor del grau de lluminositat del color\([^[:alnum:]]\)/valor del grau de claredat del color\1/g

# #
# # # # # # # # # # # # # #
#
# brightness - brillantor
# luminosity - lluminositat
# arianna/arianna.po
253,/^msgstr / s/\"Lluminositat:/\"Brillantor:/g
288,/^msgstr / s/\"Lluminositat:/\"Brillantor:/g
300,/^msgstr / s/\"Lluminositat:/\"Brillantor:/g
370,/^msgstr / s/\"Lluminositat:/\"Brillantor:/g
386,/^msgstr / s/\"Lluminositat:/\"Brillantor:/g
# calligra/calligra.po
2937,/^msgstr / s/\bAugmenta la brillantor\([^[:alnum:]]\)/Augmenta la lluminositat\1/g
2925,/^msgstr / s/\bAugmenta la brillantor\([^[:alnum:]]\)/Augmenta la lluminositat\1/g
2997,/^msgstr / s/\bAugmenta la brillantor\([^[:alnum:]]\)/Augmenta la lluminositat\1/g
# calligra/kocolorspaces.po
125,/^msgstr / s/\"Brillantor\"/\"Lluminositat\"/g
# dragon/dragonplayer.po
450,/^msgstr / s/\"Lluminositat:\"/\"Brillantor:\"/g
# haruna/haruna.po
1773,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
1972,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
# kdenlive/kdenlive.po
1066,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
2681,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
2683,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
7387,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
7395,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
# kmplayer/kmplayer.po
s/\bLluminositat\/contrast\([^[:alnum:]]\)/Brillantor\/contrast\1/g
# kooka
168,/^msgstr / s/\"Lluminositat\([^[:alnum:]]\)/\"Brillantor\1/g
178,/^msgstr / s/\"Lluminositat\([^[:alnum:]]\)/\"Brillantor\1/g
# kooka/libkookascan.po
133,/^msgstr / s/\"\(Claredat\|Lluminositat\)\"/\"Brillantor\"/g
168,/^msgstr / s/\"\(Claredat\|Lluminositat\)\"/\"Brillantor\"/g
# kontrast
178,/^msgstr / s/\"Brillantor: %1\"/\"Lluminositat: %1\"/g
# kopete/kopete.po
4586,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
# krita/krita.po
17828,/^msgstr / s/\bAugmenta la brillantor\([^[:alnum:]]\)/Augmenta la lluminositat\1/g
17843,/^msgstr / s/\bAugmenta la brillantor\([^[:alnum:]]\)/Augmenta la lluminositat\1/g
21612,/^msgstr / s/\bAugmenta la brillantor\([^[:alnum:]]\)/Augmenta la lluminositat\1/g
# kscreen/kcm_kscreen.po
507,/^msgstr / s/\"Lluminositat:\"/\"Brillantor:\"/g
# libksane/libksane.po
465,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
470,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
# maui-booth/booth.po
155,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
# plasma-workspace/plasma_applet_org.kde.plasma.battery.po
15,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
115,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
# powerdevil/plasma_applet_org.kde.plasma.brightness.po
62,/^msgstr / s/\"Lluminositat\"/\"Brillantor\"/g
# haruna/haruna.po
# skanpage/skanpage.po
451,/^msgstr / s/\"Lluminositat:\"/\"Brillantor:\"/g
 #
s/\bConfigura com de lluminós hauria de ser el «100%» en el control lliscant la lluminositat normal/Configura com de brillant hauria de ser el «100%» normal en el control lliscant de la brillantor/g
s/\"Lluminositat: %1/\"Brillantor: %1/g
s/\"Lluminositat: 0/\"Brillantor: 0/g
s/\bLluminositat màxima de la pantalla\([^[:alnum:]]\)/Brillantor màxima de la pantalla\1/g
s/\blluminositat màxima de la pantalla\([^[:alnum:]]\)/brillantor màxima de la pantalla\1/g
s/\b\([Vv]\)alors de lluminositat de la imatge\([^[:alnum:]]\)/\1alors de brillantor de la imatge\2/g

# localització
s/\bLocalitzaci\(ó\|ons\)\([^[:alnum:]]\)/Ubicaci\1\2/g
s/\blocalitzaci\(ó\|ons\)\([^[:alnum:]]\)/ubicaci\1\2/g
s/\[Ubicació\]/\[Localització\]/g
    s/\bconfiguració de ubicació a Configuració\([^[:alnum:]]\)/configuració de la localitzacio a Configuració\1/g
    s/\bde ubicació\([^[:alnum:]]\)/d'ubicació\1/g
    s/\bidioma d'ubicació\([^[:alnum:]]\)/idioma de traducció\1/g
    s/\b\([Ii]\)nternacionalització i ubicació\([^[:alnum:]]\)/\1nternacionalització i localització\2/g
    s/\b\([Ll]\)loc web d'ubicació\([^[:alnum:]]\)/\1loc web de localització\2/g
    s/\bMillora d'ubicació\([^[:alnum:]]\)/Millora de la localització\1/g
    s/\bmillorar la ubicació del sistema\([^[:alnum:]]\)/millorar la localització del sistema\1/g
    s/\b\([Nn]\)om la ubicació\([^[:alnum:]]\)/\1om de la ubicació\2/g

# #
# # # # # # # # # # # # # #
#
# les
s/\b\([Aa]\)\(l\|\) \(\[\|\*\|\*\*\|\*\*\*\|[|&«]\|<[^<]\{1,\}>\|\)\(KPart\|KParts\)\(;\|\)\([^[:alnum:]]\)/\1 les \3\4\5\6/g
s/\b\([Dd]\)e \(\[\|\*\|\*\*\|\*\*\*\|[|&«]\|<[^<]\{1,\}>\|\)\(KPart\|KParts\)\(;\|\)\([^[:alnum:]]\)/\1e les \2\3\4\5/g
s/\bKParts\([^[:alnum:]]\)/KPart\1/g

#
s/\b\([Mm]\)ode d'administrador\([^[:alnum:]]\)/\1ode administrador\2/g
s/\b\([Mm]\)ode d'edició\([^[:alnum:]]\)/\1ode edició\2/g
s/\b\([Mm]\)ode d'icones\([^[:alnum:]]\)/\1ode icones\2/g

# #
# # # # # # # # # # # # # #
#
# Títols
# title:window (també ajuda a detectar les que no s'han tocat abans)
# s/\bBaixada d'/Baixeu /g
# s/\bBaixada de l'/BaixConfigureu l'/g
# s/\bBaixada de l\(a\|es\)\([^[:alnum:]]\)/Baixeu l\1\2/g
# s/\bBaixada del\(s\|\)\([^[:alnum:]]\)/Baixeu el\1\2/g
#
# Actualització
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Actualització de \(cerca\)\([^[:alnum:]]\)/\1Actualitzeu la \2\3/g
#
# Ajust
#
# Càrrega
#
# Compartició
    s/\bCompartició d'\(aliens\)\([^[:alnum:]]\)/Compartiu els \1\2/g
    s/\bCompartició de cotxes\([^[:alnum:]]\)/Compartiu cotxes\1/g
    s/\bCompartició de \(fitxer\)\([^[:alnum:]]\)/Compartiu el \1\2/g
    s/\bCompartició de \(fitxers\|suports\)\([^[:alnum:]]\)/Compartiu els \1\2/g
    s/\bCompartició de \(música\|pantalla\)\([^[:alnum:]]\)/Compartiu la \1\2/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Compartició d'/\1Compartiu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Compartició de l'/\1Compartiu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Compartició de l\(a\|es\)\([^[:alnum:]]\)/\1Compartiu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Compartició del\(s\|\)\([^[:alnum:]]\)/\1Compartiu el\2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Compartició\([^[:alnum:]]\)/\1Compartiu\2/g
    s/\bCompartiu \(de Samba\|desmuntada\|muntada\|nova\|remota\)\([^[:alnum:]]\)/Compartició \1\2/g
    s/\bCompartiu (%1)\([^[:alnum:]]\)/Compartició (%1)\1/g
#- Configuració
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Configuració d'\(àudio\|energia\|entrada\|inici\)\([^[:alnum:]]\)/\1Configureu l'\2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Configuració d'\(etiquetes\)\([^[:alnum:]]\)/\1Configureu les \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Configuració d'\(equivalència\)\([^[:alnum:]]\)/\1Configureu una \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Configuració del Brisa\([^[:alnum:]]\)/\1Configuració de Brisa\2/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Configuració de passi\([^[:alnum:]]\)/\1Configuració del passi\2/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Configuració d'/\1Configureu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Configur\(ació\|eu\) de l'/\1Configureu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Configuració de l\(a\|es\)\([^[:alnum:]]\)/\1Configureu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Configuració del\(s\|\)\([^[:alnum:]]\)/\1Configureu el\2\3/g
    s/\bConfiguració de &kstars;\([^[:alnum:]]\)/Configureu el &kstars\1/g;
    s/\bConfigureu el \(llançament\|repositori\) no vàlida\([^[:alnum:]]\)/Configuració del \1 no vàlida\2/g
    s/\bConfigureu el sistema\([^[:alnum:]]\)/Configuració del sistema\1/g
        s/\bConfiguració del sistema de fitxers\([^[:alnum:]]\)/Configureu el sistema de fitxers\1/g
    s/\bdiàleg Configuració de la pàgina\([^[:alnum:]]\)/diàleg Configureu la pàgina\1/g
    s/\bfinestra Configuració de la televisió\([^[:alnum:]]\)/finestra Configureu la televisió\1/g
    s/\bfont-weight:600;\\\">Configuració de les galetes\([^[:alnum:]]\)/font-weight:600;\\\">Configureu les galetes\1/g
    s/\bla sortida d'imatges\([^[:alnum:]]\)/la sortida de les imatges\1/g
    s/\bmenú Configureu KStars\([^[:alnum:]]\)/menú Configuració de KStars\1/g
    s/\bmenú nou Configuració de l'activitat\([^[:alnum:]]\)/menú nou Configureu l'activitat\1/g
    s/\bpàgina Configuració de la sortida\([^[:alnum:]]\)/pàgina Configureu la sortida\1/g
    s/\bpàgina Configuració del vídeo\([^[:alnum:]]\)/pàgina Configureu el vídeo\1/g
    s/\bplafó de la Configuració de la cua\([^[:alnum:]]\)/plafó Configureu la cua\1/g
    #
    s/\bassistent \(\*\*\)Selecció de la disposició de la pàgina\([^[:alnum:]]\)/assistent \1Seleccioneu la disposició de la pàgina\2/g
    s/\bdiàleg \(\*\*\)Configuració del correu electrònic\([^[:alnum:]]\)/diàleg \1Configureu el correu electrònic\2/g
    s/\bgrup \(\*\*\)Configuració de la marca de temps\([^[:alnum:]]\)/grup \1Configureu la marca de temps\2/g
    s/\bmètode per a la \(\*\*\)Gestió de les dades de cares\([^[:alnum:]]\)/mètode per a \1Gestioneu les dades de cares\2/g
    s/\bmodificar la \(\*\*\)Configuració d'«Enfuse»\([^[:alnum:]]\)/modificar \1Configureu «Enfuse»\2/g
    s/\bsobre la \(\*\*\)Configuració de la traducció\([^[:alnum:]]\)/sobre \1Configureu la traducció\2/g
    s/\bsobre la \(\*\*\)Configuració del corrector ortogràfic\([^[:alnum:]]\)/sobre \1Configureu el corrector ortogràfic\2/g
    s/\bvista \(\*\*\)Configuració de la navegació\([^[:alnum:]]\)/vista \1Configureu la navegació\2/g
#
#- Confirmació
    s/\bConfirmació d'\(accés\|acció\|adjunt\|eliminació\|enganxat\|exportació\|obertura\|ordre\)\([^[:alnum:]]\)/Confirmeu l'\1\2/g
    s/\bConfirmació de \(desfer\|tancament\)\([^[:alnum:]]\)/Confirmeu el \1\2/g
    s/\bConfirmació de \(contrasenya\|desencriptació\|finestra\|recàrrega\|sortida\|supressió\)\([^[:alnum:]]\)/Confirmeu la \1\2/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Confirmació d'/\1Confirmeu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Confirmació de l'/\1Confirmeu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Confirmació de l\(a\|es\)\([^[:alnum:]]\)/\1Confirmeu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Confirmació del\(s\|\)\([^[:alnum:]]\)/\1Confirmeu el\2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Confirmació\([^[:alnum:]]\)/\1Confirmeu\2/g
    s/\bConfirmeu addicional\([^[:alnum:]]\)/Confirmació addicional\1/g
#- Creació
    s/\bCreació d'enquesta\([^[:alnum:]]\)/Creeu una enquesta\1/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Creació d'encapçalament\([^[:alnum:]]\)/\1Creeu un encapçalament\2/g
    s/\bcreació d'etiqueta\([^[:alnum:]]\)/creació de l'etiqueta\1/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Creació d'unitat\([^[:alnum:]]\)/\1Creeu la unitat\2/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Creació de \(clip\)\([^[:alnum:]]\)/\1Creeu el \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Creació de \(cerca\)\([^[:alnum:]]\)/\1Creeu la \2\3/g
    s/\bCreació d'\(etiqueta\|operació\)\([^[:alnum:]]\)/Creeu una \1\2/g
    s/\bCreació de \(calendari\|vídeo\)\([^[:alnum:]]\)/Creació d'un \1\2/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Creació d'/\1Creeu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Creació de l'/\1Creeu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Creació de l\(a\|es\)\([^[:alnum:]]\)/\1Creeu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Creació del\(s\|\)\([^[:alnum:]]\)/\1Creeu el\2\3/g
#- Desament
    s/\bDesament de llista\([^[:alnum:]]\)/Desament de la llista\1/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Desament d'/\1Deseu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Desament de l'/\1Deseu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Desament de l\(a\|es\)\([^[:alnum:]]\)/\1Deseu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Desament del\(s\|\)\([^[:alnum:]]\)/\1Deseu el\2\3/g
#- Edició
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Edició d'\(àlbum\|àudio\|eina\|etiqueta\|ordre\|usuari\)\([^[:alnum:]]\)/\1Editeu l'\2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Edició d'\(etiquetes\)\([^[:alnum:]]\)/\1Editeu les \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Edició d'\(efectes\|estats\)\([^[:alnum:]]\)/\1Editeu els \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Edició d'\(animacions\|imatges\|operacions\)\([^[:alnum:]]\)/\1Editeu les \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Edició d'\(element\|escalar\)\([^[:alnum:]]\)/\1Editeu un \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Edició de carpeta\([^[:alnum:]]\)/\1Editeu la carpeta\2/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Edició de\(l\|\) \(comentari\|contacte\|grup de contactes\|flux\|punt\|nom del contacte\|número de telèfon\|progrés\)\([^[:alnum:]]\)/\1Editeu el \3\4/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Edició de les \(metadades\)\([^[:alnum:]]\)/\1Editeu les \2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Edició d'/\1Editeu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Edició de l'/\1Editeu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Edició de l\(a\|es\)\([^[:alnum:]]\)/\1Editeu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Edició del\(s\|\)\([^[:alnum:]]\)/\1Editeu el\2\3/g
    s/\bEdició de metadades\([^[:alnum:]]\)/Editeu les metadades\1/g
    s/\bEditeu el nom o del consell\([^[:alnum:]]\)/Editeu el nom o el consell\1/g
#- Estableix
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Estableix emplaçament/\1Establiu un emplaçament/g
#- Exploració
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Exploració d'/\1Exploreu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Exploració de l'/\1Exploreu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Exploració de l\(a\|es\)\([^[:alnum:]]\)/\1Exploreu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Exploració del\(s\|\)\([^[:alnum:]]\)/\1Exploreu el\2\3/g
#- Ex/Importació
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)\(Ex\|Im\)portació cap a\(l\|ls\|\)\([^[:alnum:]]\)/\1\2porteu cap a\3\4/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)\(Ex\|Im\)portació d'informació\([^[:alnum:]]\)/\1\2porteu la informació\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)\(Ex\|Im\)portació d'/\1\2porteu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)\(Ex\|Im\)portació de l'/\1\2porteu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)\(Ex\|Im\)portació de l\(a\|es\)\([^[:alnum:]]\)/\1\2porteu l\3\4/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)\(Ex\|Im\)portació del\(s\|\)\([^[:alnum:]]\)/\1\2porteu el\3\4/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Importació des del\([^[:alnum:]]\)/\1Importeu des del\2/g
    s/\bImportació\/exportació cap a Smug\([^[:alnum:]]\)/Importeu\/exporteu cap a Smug\1/g
    s/\bexportació cap al digiKam\([^[:alnum:]]\)/exportació al digiKam\1/g
    s/\bExporteu les animacions:/Exportació de les animacions:/g
#- Gestió
    s/\b\([Gg]\)estió d'energia\([^[:alnum:]]\)/\1estió de l'energia\2/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Gestió d'\(atributs\|episodis\|errors\|usuaris\)\([^[:alnum:]]\)/\1Gestioneu els \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Gestió d'\(estructures\|etiquetes\|operacions\|unitats\)\([^[:alnum:]]\)/\1Gestioneu les \2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Gestió d'/\1Gestioneu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Gestió de l'/\1Gestioneu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Gestió de l\(a\|es\)\([^[:alnum:]]\)/\1Gestioneu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Gestió del\(s\|\)\([^[:alnum:]]\)/\1Gestioneu el\2\3/g
    s/\b\([Gg]\)estió d'energia\([^[:alnum:]]\)/\1estió de l'energia\2/g
    s/\b\([Gg]\)estioneu el color\([^[:alnum:]]\)/\1estió del color\2/g
    s/\b\([Gg]\)estioneu l'energia\([^[:alnum:]]\)/\1estió de l'energia\2/g
#- Impressió
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Impressió de calendari\([^[:alnum:]]\)/\1Imprimiu el calendari\2/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Impressió de la imatge\([^[:alnum:]]\)/\1Imprimiu la imatge\2/g
    s/\bImpressió i exportació\([^[:alnum:]]\)/Imprimiu i exporteu\1/g
#- Modificació
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Modificació d'/\1Modifiqueu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Modificació de l'/\1Modifiqueu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Modificació de l\(a\|es\)\([^[:alnum:]]\)/\1Modifiqueu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Modificació del\(s\|\)\([^[:alnum:]]\)/\1Modifiqueu el\2\3/g
#
#- Navegació
    s/\bNavegació del Rocker\([^[:alnum:]]\)/Navegueu de Rocker\1/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Navegació d'/\1Navegueu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Navegació de l'/\1Navegueu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Navegació de l\(a\|es\)\([^[:alnum:]]\)/\1Navegueu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Navegació del\(s\|\)\([^[:alnum:]]\)/\1Navegueu el\2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Navegació\([^[:alnum:]]\)/\1Navegueu\2/g
    s/\bNavegueu \(de l'OpenStreetMap\|de Rails\|de transport\|externa\|LEO de Rússia\|millorada\|personalitzada\|privada\|segura\|tàctil\|web\)\([^[:alnum:]]\)/Navegació \1\2/g
    s/\bNavegueu el navegador\([^[:alnum:]]\)/Navegació del navegador\1/g
    s/\bNavegueu el sistema\([^[:alnum:]]\)/Navegueu pel sistema\1/g
    s/\bNavegueu de \(botons\|gestos\)\([^[:alnum:]]\)/Navegueu amb els \1\2/g
#- Obertura
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Obertura de \(carpeta\)\([^[:alnum:]]\)/\1Obriu una \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Obertura de fitxer de substitució\([^[:alnum:]]\)/\1Obriu el fitxer de substitució\2/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Obertura d'imatges\([^[:alnum:]]\)/\1Obriu les imatges\2/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Obertura de \(fitxer\|saldo de passiu\)\([^[:alnum:]]\)/\1Obriu un \2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Obertura d'/\1Obriu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Obertura de l'/\1Obriu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Obertura de l\(a\|es\)\([^[:alnum:]]\)/\1Obriu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Obertura del\(s\|\)\([^[:alnum:]]\)/\1Obriu el\2\3/g
#
#- Reproducció
    s/\bReproducció de \(&multimèdia\)\([^[:alnum:]]\)/Reproduïu el \1\2/g
    s/\bReproducció de \(música\)\([^[:alnum:]]\)/Reproduïu la \1\2/g
    s/\bReproducció d'\(àlbum\|àudio\)\([^[:alnum:]]\)/Reproduïu l'\1\2/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Reproducció d'/\1Reproduïu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Reproducció de l'/\1Reproduïu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Reproducció de l\(a\|es\)\([^[:alnum:]]\)/\1Reproduïu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Reproducció del\(s\|\)\([^[:alnum:]]\)/\1Reproduïu el\2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Reproducció\([^[:alnum:]]\)/\1Reproduïu\2/g
    s/\bReproduïu \(&automàtica\|aleatòria\|automàtica\|progressiva\)\([^[:alnum:]]\)/Reproducció \1\2/g
    s/\bReproduïu\/\([Pp]\)ausa\([^[:alnum:]]\)/Reproduïu o pausa\2/g
#- Selecció
s/\bd'el\([^[:alnum:]]\)/del\1/g
    s/\bdel·lipse\(s\|\)\([^[:alnum:]]\)/d'el·lipse\1\2/g
#
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció d'\(elements\|objectes\|orígens\)\([^[:alnum:]]\)/\1Seleccioneu els \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció d'\(etiquetes\|imatges\)\([^[:alnum:]]\)/\1Seleccioneu les \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció d'\(àlbum\|àrea\|arxiu\|element\|emplaçament\|encapçalament\|usuari\)\([^[:alnum:]]\)/\1Seleccioneu un \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció d'\(aplicació\|àrea\|imatge\|opció\|operació\|ubicació\)\([^[:alnum:]]\)/\1Seleccioneu una \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció de \(múltiples\)\([^[:alnum:]]\)/\1Seleccioneu \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció de\(l\|\) \(camí\|clip\|diagrama\|disc\|dorsal\|format\|&grup\|no text\|pinzell\|nivell\|tema\|text\|&text\|transbordament\)\([^[:alnum:]]\)/\1Seleccioneu el \3\4/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció de \(calendaris\|camps\|caràcters\|certificats\|connectors\|continents\|fitxers\|subtítols\|vectors\)\([^[:alnum:]]\)/\1Seleccioneu els \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció de \(base de dades\|branca\|càmera\|clau\|data\|finestra\|generació\|&línia\|marca\|paleta\|pila\|prioritat\|programació\|regió\|sessió\|taula\|t&aula\|traça\)\([^[:alnum:]]\)/\1Seleccioneu la \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció de \(branques\|capes\|claus\|col·leccions\|connexions\|dades\|frases\|marques\|propietats\|variables\|vores\)\([^[:alnum:]]\)/\1Seleccioneu les \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció de \(caràcter\|certificat\|color\|compte\|directori\|dispositiu\|filtre\|fitxer\|full\|polígon\|script\|tipus de lletra\|vector\)\([^[:alnum:]]\)/\1Seleccioneu un \2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció de \(carpeta\|fórmula\|targeta\)\([^[:alnum:]]\)/\1Seleccioneu una \2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció d'/\1Seleccioneu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció de l'/\1Seleccioneu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció de l\(a\|es\)\([^[:alnum:]]\)/\1Seleccioneu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Selecció del\(s\|\)\([^[:alnum:]]\)/\1Seleccioneu el\2\3/g
    s/(Selecció de)/(Seleccioneu el)/g
    s/&Selecció de clau pública…\([^[:alnum:]]\)/\&Selecciona la clau pública…\1/g
    s/\bacoblable\\n- Selecció de traça\([^[:alnum:]]\)/acoblable\nSeleccioneu la traça\1/g
    s/\bdiàleg Selecció d'una partida\([^[:alnum:]]\)/diàleg Seleccioneu una partida\1/g
    s/\bSelecció de &traç…\([^[:alnum:]]\)/Selecciona el \&traç…\1/g
    s/\bSelecció de &vores…\([^[:alnum:]]\)/Selecciona les \&vores…\1/g
    s/\bSelecció de Google\([^[:alnum:]]\)/Seleccioneu a Google\1/g
    s/\bdiàleg Selecció d'una partida\([^[:alnum:]]\)/diàleg Seleccioneu una partida\1/g
#- Sincronització
    s/\bSincronització multimèdia\([^[:alnum:]]\)/Sincronitzeu el multimèdia\1/g
    s/\bSincronització d'\(estadístiques\|opcions\)\([^[:alnum:]]\)/Sincronitzeu les \1\2/g
    s/\bSincronització de \(dispositius\)\([^[:alnum:]]\)/Sincronitzeu els \1\2/g
    s/\bSincronització de \(lletres\|notificacions\)\([^[:alnum:]]\)/Sincronitzeu les \1\2/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Sincronització d'/\1Sincronitzeu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Sincronització de l'/\1Sincronitzeu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Sincronització de l\(a\|es\)\([^[:alnum:]]\)/\1Sincronitzeu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Sincronització del\(s\|\)\([^[:alnum:]]\)/\1Sincronitzeu el\2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Sincronització\([^[:alnum:]]\)/\1Sincronitzeu\2/g
    s/\bSincronitzeu \([12]\|acabada\|adaptativa\|automàtica\|completada\|desactivada\|incremental\|interrompuda\|primària\|secundària\)\([^[:alnum:]]\)/Sincronització \1\2/g
#- Supressió
    s/\bSupressió d'\(adjunt\|article\|eliminació\|equip\|etiqueta\)\([^[:alnum:]]\)/Suprimiu l'\1\2/g
    s/\bSupressió d'\(adjunts\|elements\)\([^[:alnum:]]\)/Suprimiu els \1\2/g
    s/\bSupressió d'\(imatge\)\([^[:alnum:]]\)/Suprimiu la \1\2/g
    s/\bSupressió d'\(etiquetes\)\([^[:alnum:]]\)/Suprimiu les \1\2/g
    s/\bSupressió de %1\([^[:alnum:]]\)/Suprimiu %1\1/g
    s/\bSupressió de tota una conversa\([^[:alnum:]]\)/Suprimiu tota una conversa\1/g
    s/\bSupressió de \(bloc de notes\|calendari\|conjunt\|fitxer\|missatge\|parpelleig\|punt\|registre\)\([^[:alnum:]]\)/Suprimiu el \1\2/g
    s/\bSupressió de \(directoris\|fitxers\|missatges\|símbols\)\([^[:alnum:]]\)/Suprimiu els \1\2/g
    s/\bSupressió de \(carpeta\|font\|nota\|regla\|sala\)\([^[:alnum:]]\)/Suprimiu la \1\2/g
    s/\bSupressió de \(regles\|subcarpetes\)\([^[:alnum:]]\)/Suprimiu les \1\2/g
    s/\bSupressió definitiva\([^[:alnum:]]\)/Suprimiu definitivament\1/g
    s/\bSupressió múltiple d'agents\([^[:alnum:]]\)/Suprimiu múltiples agents\1/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Supressió d'/\1Suprimiu /g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Supressió de l'/\1Suprimiu l'/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Supressió de l\(a\|es\)\([^[:alnum:]]\)/\1Suprimiu l\2\3/g
s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Supressió del\(s\|\)\([^[:alnum:]]\)/\1Suprimiu el\2\3/g
    s/\(\*\*\|\*\*\*\|\"\|\"&\|\"<p>\|[:«(]\|[-•] \|<b>\|<body><p>\|<h[12]>\|<item>\|<phrase>\|<[qt][dt]>\|<screeninfo>\|<title>\|botó \|característica \|eina \|finestra \|finestres de \|mosaic de botons \|opcions de \|pestanya \|subfinestra \)Supressió\([^[:alnum:]]\)/\1Suprimiu\2/g
    s/\bSuprimiu \(alternativa\|obligatòria\)\([^[:alnum:]]\)/Supressió \1\2/g
# #
# #

s/\\\([nt]\)- /\\\1/g

:END

}

