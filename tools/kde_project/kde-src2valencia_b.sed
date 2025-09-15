#
# # #
# # #
# Millores en el valencià
#
s/\"ID d'usuaris\(:\|\)\"/\"Els ID d'usuari\1\"/g
s/\ba la porció inferior del ratolí tàctil\([^[:alnum:]]\)/a la part inferior del ratolí tàctil\1/g
s/\bAccepto el risc i continua\([^[:alnum:]]\)/Accepte el risc i continua\1/g
# #
# # # # # # # # # # # # # #
#
# actualitzar
    s/\bCertificat actualitzat\([^[:alnum:]]\)/S'ha actualitzat el certificat\1/g
    s/\b\([Ee]\)rror en actualitzar\([^[:alnum:]]\)/\1rror durant l'actualització\2/g
    s/\b\([Ee]\)rror en l'actualització\([^[:alnum:]]\)/\1rror durant l'actualització\2/g
        s/\bdurant l'actualització els paràmetres\([^[:alnum:]]\)/durant l'actualització dels paràmetres\1/g
        s/\bdurant l'actualització el \(pòdcast\|programari\)\([^[:alnum:]]\)/durant l'actualització del \1\2/g
        s/\bdurant l'actualització la \(col·lecció\|imatge\|regla\)\([^[:alnum:]]\)/durant l'actualització de la \1\2/g
        s/\bactualització el \(certificat\|missatge\)\([^[:alnum:]]\)/actualització del \1\2/g
    s/\bEl certificat s'ha actualitzat\([^[:alnum:]]\)/El certificat ha sigut actualitzat\1/g
    s/\bLa clau no ha canviat\([^[:alnum:]]\)/No s'ha canviat la clau\1/g
    s/\bLa clau s'ha actualitzat\([^[:alnum:]]\)/La clau ha sigut actualitzada\1/g
    s/\bL'actualització ha fallat\([^[:alnum:]]\)/No s'ha pogut fer l'actualització\1/g
s/\baquesta ocurrència\([^[:alnum:]]\)/este cas\1/g
s/\bAugment el límit d'instàncies\([^[:alnum:]]\)/Augmenta el límit d'instàncies\1/g
    s/\bd'autocentrat\([^[:alnum:]]\)/de centrat automàtic\1/g
s/\bautocentrat\([^[:alnum:]]\)/centrat automàtic\1/g
s/\bcanviar de nom l'entrada\([^[:alnum:]]\)/canviar el nom a l'entrada\1/g
s/\b\([Cc]\)om a una pestanya nova\([^[:alnum:]]\)/\1om a pestanya nova\2/g
s/\b\([Cc]\)om si fossin teclejats\([^[:alnum:]]\)/\1om si es teclejaren\2/g
# #
# # # # # # # # # # # # # #
#
# # ** concordant
    s/\b\([Pp]\)arèntesis concordants\([^[:alnum:]]\)/\1arèntesis emparellats\2/g
s/\bConfigura els connectors de l'aplicació i l'aspecte i el comportament\([^[:alnum:]]\)/Configura els connectors de l'aplicació, així com l'aspecte i el comportament\1/g
s/\bDesa els canvis al paràmetre\([^[:alnum:]]\)/Desa els canvis del paràmetre\1/g
s/\b\([Dd]\)isting\(eix\|int\|ir\) majúscules i minúscules\([^[:alnum:]]\)/\1isting\2 entre majúscules i minúscules\3/g
s/\bEl dorsal potser no admet la gravació\([^[:alnum:]]\)/Pot ser que el dorsal no admeti la gravació\1/g
s/\bEl fitxer XML no conté una cartera\([^[:alnum:]]\)/El fitxer XML no conté cap cartera\1/g
s/\b\(el\|la\) qual té\([^[:alnum:]]\)/que té\2/g
    s/, que té com/, el qual té com/g
    s/\bBoltzman, que té com a valor\([^[:alnum:]]\)/Boltzman, la qual té com a valor\1/g
s/\b\([Ee]\)n desactivar la vista dividida\([^[:alnum:]]\)/\1n treure la vista dividida\2/g
s/\ben guanyar accés\([^[:alnum:]]\)/en obtenir accés\1/g
s/\ben la que l'editor\([^[:alnum:]]\)/en què l'editor\1/g
s/\bEncert\: /Ha tingut èxit: /g
s/\bEs poden usar les variables següents de substitució en l'ordre\([^[:alnum:]]\)/En l'ordre es poden usar les variables de substitució següents\1/g
s/\bes torna de nou a l'actual\([^[:alnum:]]\)/s'està tornant de nou a l'actual\1/g
s/\bEscolliu quin final de línia s'haurà d'emprar\([^[:alnum:]]\)/Trieu quin final de línia s'haurà d'usar\1/g
s/\bEstic d'acord que es registri la meva adreça IP\([^[:alnum:]]\)/Accepte que la meua adreça IP es registre\1/g
s/\bFer-se un fan\([^[:alnum:]]\)/Feu-vos fan\1/g
s/\bFunciona bé\([^[:alnum:]]\)/Treballa bé\1/g
s/\bfunciona bé\([^[:alnum:]]\)/treballa bé\1/g
s/\bJo asseguro\([^[:alnum:]]\)/Assegure\1/g
s/\bEngega\/apaga\([^[:alnum:]]\)/Activa\/desactiva\1/g
# #
# # # # # # # # # # # # # #
#
# invàlid
    s/\bés invàlid\(a\|\)\([^[:alnum:]]\)/no és vàlid\1\2/g
    s/\binvàlid\(a\|es\|\)\([^[:alnum:]]\)/no vàlid\1\2/g
s/\bL'última vegada que aquestes propietats foren canviades per l'usuari\([^[:alnum:]]\)/L'última vegada que l'usuari canvià aquestes propietats\1/g
s/\bllavors se cercaran\([^[:alnum:]]\)/se cercaran\1/g
s/\b\([Mm]\)ai més es tornarà\([^[:alnum:]]\)/\1ai més tornarà\2/g
s/\bmassa aplicacions que voleu monitorar\([^[:alnum:]]\)/massa aplicacions de les que voleu monitorar\1/g
s/\bmassa fitxers cercant canvis\([^[:alnum:]]\)/massa fitxers a la cerca de canvis\1/g
s/\bmés baixa\. Gràcies./més baixa./g
s/\bMés baixats\([^[:alnum:]]\)/Els més baixats\1/g
s/\bMés recent\([^[:alnum:]]\)/Els més recents\1/g
# #
# # # # # # # # # # # # # #
#
# # ** motiu
s/\bMotiu pel preu\([^[:alnum:]]\)/Raonament del preu\1/g
s/\bmotiu pel preu\([^[:alnum:]]\)/raonament del preu\1/g
s/\bNo puc establir la data\([^[:alnum:]]\)/No es pot establir la data\1/g
# #
# # # # # # # # # # # # # #
#
# # ** en línia
s/\bnom en línia\([^[:alnum:]]\)/nom inserit\1/g
# #
# # # # # # # # # # # # # #
#
# # ** oculta
s/\bOculta a la barra d'eines\([^[:alnum:]]\)/Amaga a la barra d'eines\1/g
s/\bpart inferior mitja\([^[:alnum:]]\)/part inferior central\1/g
s/\bper als tipus de lletra disponibles només a vós mateix\([^[:alnum:]]\)/sols per als vostres tipus de lletra\1/g
s/\bPer consegüent, /Per tant, /g
s/\bPlom i àcid\([^[:alnum:]]\)/Àcid de plom\1/g
s/\b\([Pp]\)odeu provar\([^[:alnum:]]\)/\1odeu intentar\2/g
s/\b\([Pp]\)odríeu estar\([^[:alnum:]]\)/\1odeu estar\2/g
s/\bprotecció millor\([^[:alnum:]]\)/millor protecció\1/g
# s/\bPuntuació\([^[:alnum:]]\)/Valoració\1/g # aquestes contradeixen unes altres
# s/\bpuntuació\([^[:alnum:]]\)/valoració\1/g # cal mirar d'unificar el català
s/\bRepeteix, zero o més vegades\([^[:alnum:]]\)/Ho repeteix, zero o més vegades\1/g
s/\bRepeteix, una o més vegades\([^[:alnum:]]\)/Ho repeteix, una o més vegades\1/g
# #
# # # # # # # # # # # # # #
#
# reserva -> alternatiu, alternativa
s/\b\([Cc]\)odi de reserva\([^[:alnum:]]\)/\1odi alternatiu\2/g
s/\b\([Cc]\)odificació de reserva\([^[:alnum:]]\)/\1odificació alternativa\2/g
s/\b\([Dd]\)isposicions de reserva\([^[:alnum:]]\)/\1isposicions alternatives\2/g
s/\b\([Ii]\)dioma de reserva\([^[:alnum:]]\)/\1dioma alternatiu\2/g
s/\b\([Pp]\)rogramari de reserva\([^[:alnum:]]\)/\1rogramari alternatiu\2/g
# #
# # # # # # # # # # # # # #
#
# retall -> fragment
    s/&Retall\(:\|s\|\)\([^[:alnum:]]\)/F\&ragment\1\2/g
    s/\"Retalls\"/\"Fragments\"/g
    s/%1 retalls\([^[:alnum:]]\)/%1 fragments\1/g
    s/\b\(Actualitza\|actualitzar\|Edita\|Elimina\|eliminar\|suprimir\) el retall\([^[:alnum:]]\)/\1 el fragment\2/g
    s/\b\(Afegeix\|Insereix\) un retall\([^[:alnum:]]\)/\1 un fragment\2/g
    s/\baquest retall\([^[:alnum:]]\)/aquest fragment\1/g
    s/\bcadena del retall\([^[:alnum:]]\)/cadena del fragment\1/g
    s/\bCrea un retall nou al repositori\([^[:alnum:]]\)/Crea un fragment nou al repositori\1/g
        s/\bCrea un retall\([^[:alnum:]]\)/Crea un fragment\1/g
    s/\bcreat un retall\([^[:alnum:]]\)/creat un fragment\1/g
    s/\beina de retalls\([^[:alnum:]]\)/eina de fragments\1/g
    s/\bEl nom del retall\([^[:alnum:]]\)/El nom del fragment\1/g
    s/\bEl retall conté canvis\([^[:alnum:]]\)/El fragment conté canvis\1/g
    s/\bels retalls que conté\([^[:alnum:]]\)/els fragments que conté\1/g
    s/\bels seus retalls\([^[:alnum:]]\)/els seus fragments\1/g
    s/\ben els retalls\([^[:alnum:]]\)/en els fragments\1/g
    s/\ben un\( altre\|\) retall\([^[:alnum:]]\)/en un\1 fragment\2/g
    s/\bFitxer de retall\([^[:alnum:]]\)/Fitxer de fragment\1/g
    s/\binsereix el retall\([^[:alnum:]]\)/insereix el fragment\1/g
    s/\bper als retalls d'ús\([^[:alnum:]]\)/per als fragments d'ús\1/g
    s/\bProva aquest retall\([^[:alnum:]]\)/Prova aquest fragment\1/g
    s/\brepositori\( nou\|\) de retalls\([^[:alnum:]]\)/repositori\1 de fragments\2/g
    s/\bRetall\(:\|\) %1\([^[:alnum:]]\)/Fragment\1 %1\2/g
    s/\bretall buit\([^[:alnum:]]\)/fragment buit\1/g
    s/\bRetall\(s\|\) de \(codi\|text\)\([^[:alnum:]]\)/Fragment\1 de \2\3/g
    s/\bretall\(s\|\) de \(codi\|text\)\([^[:alnum:]]\)/fragment\1 de \2\3/g
        s/\bgestió de retalls\([^[:alnum:]]\)/gestió de fragments\1/g
    s/ retalls,/ fragments,/g
    s/\bRetalls de l'editor\([^[:alnum:]]\)/Fragments de l'editor\1/g
    s/\bRetalls en Ruby\([^[:alnum:]]\)/Fragments en Ruby\1/g
    s/\bretalls nous\([^[:alnum:]]\)/fragments nous\1/g
    s/\bUn retall pot contenir\([^[:alnum:]]\)/Un fragment pot contenir\1/g
        s/\b\(Afegeix\|Edita\) \(un\|el\) fragment de clip\([^[:alnum:]]\)/\1 \2 retall de clip\3/g
# #
# # # # # # # # # # # # # #
#
# sagnar
    s/\bindentadors\([^[:alnum:]]\)/sagnats\1/g
    s/\bl'indentador\([^[:alnum:]]\)/el sagnat\1/g
    s/\bSagna usant\([^[:alnum:]]\)/Ús del sagnat\1/g
    s/\bTreu el sagnat\([^[:alnum:]]\)/Elimina el sagnat\1/g
    s/\btreu el sagnat\([^[:alnum:]]\)/elimina el sagnat\1/g
    s/\bTreure el sagnat\([^[:alnum:]]\)/Eliminar el sagnat\1/g
    s/\btreure el sagnat\([^[:alnum:]]\)/eliminar el sagnat\1/g
s/\bTria una imatge de vista prèvia\([^[:alnum:]]\)/Trieu una imatge de vista prèvia\1/g
s/\b\([Ss]\)i és d'aplicació\([^[:alnum:]]\)/\1i és aplicable\2/g
s/\bTambé podria ser\([^[:alnum:]]\)/També pot ser\1/g
    s/\b\([Dd]\)esa tanmateix\([^[:alnum:]]\)/\1esa de totes maneres\2/g
    s/\b\([Ii]\)nclou tanmateix\([^[:alnum:]]\)/\1nclou de totes maneres\2/g
    s/\bperò tanmateix\([^[:alnum:]]\)/però de totes maneres\1/g
    s/\bque tanmateix\([^[:alnum:]]\)/que de totes maneres\1/g
    s/\b\([Tt]\)anca tanmateix\([^[:alnum:]]\)/\1anca de totes maneres\2/g
s/\([Tt]\)emps excedit\([^[:alnum:]]\)/\1emps límit excedit\2/g
    s/ha excedit el temps límit\([^[:alnum:]]\)/ha excedit el temps\1/g
s/\btindran efecte\([^[:alnum:]]\)/s'efectuaran\1/g
s/\b\([Tt]\)ipus de lletra d'amplada\([^[:alnum:]]\)/\1ipus de lletra\2/g
s/\bun diàleg que us permetrà escollir una\([^[:alnum:]]\)/un diàleg i us permet escollir la\1/g
s/\b\([Uu]\)na \(fletxa\|línia vertical\) indicant\([^[:alnum:]]\)/\1na \2 que indica\3/g
# #
# # # # # # # # # # # # # #
#
# referència a una opció
s/\bDesmarqueu\( això\|-ho\)\([^[:alnum:]]\)/Desmarqueu-la\2/g
s/\bMarqueu\( això\|-ho\)\([^[:alnum:]]\)/Marqueu-la\2/g
    s/\bEmpreu-ho per a\([^[:alnum:]]\)/Empreu-la per a\1/g
s/\b\(Inh\|[H]\)abiliteu aquesta \(casella\|opció\)\([^[:alnum:]]\)/Marqueu aquesta \2\3/g
s/\b\(in\|\)habiliteu aquesta \(casella\|opció\)\([^[:alnum:]]\)/marqueu aquesta \2\3/g
s/\bMarqueu\( això\|-ho\)\([^[:alnum:]]\)/Marqueu-la\2/g
    s/\bActiveu\(-la\|\) \(per a\|si\)\([^[:alnum:]]\)/Marqueu-la \2\3/g
    s/\bs'activa aquesta \(casella\|opció\)\([^[:alnum:]]\)/es marca aquesta \1\2/g
s/\bActivada: quan\([^[:alnum:]]\)/Marcada: quan\1/g
    s/\bDesactivada: quan\([^[:alnum:]]\)/Desmarcada: quan\1/g
    s/\b\([Dd]\)esactiveu-la si no voleu\([^[:alnum:]]\)/\1esmarqueu-la si no voleu\2/g
s/\bActiv\(a\|ant\|a[rt]\) aquesta \(casella\|opció\)\([^[:alnum:]]\)/Marc\1 aquesta \2\3/g
s/\bactiv\(a\|ant\|a[rt]\) aquesta \(casella\|opció\)\([^[:alnum:]]\)/marc\1 aquesta \2\3/g
    s/\bActiveu aquesta \(casella\|opció\)\([^[:alnum:]]\)/Marqueu aquesta \1\2/g
    s/\bactiveu aquesta \(casella\|opció\)\([^[:alnum:]]\)/marqueu aquesta \1\2/g
s/\bActiv\(a\|ant\|a[rt]\) \(la casella\|l'opció\)\([^[:alnum:]]\)/Marc\1 \2\3/g
s/\bactiv\(a\|ant\|a[rt]\) \(la casella\|l'opció\)\([^[:alnum:]]\)/marc\1 \2\3/g
    s/\bActiveu \(la casella\|l'opció\)\([^[:alnum:]]\)/Marqueu \1\2/g
    s/\bactiveu \(la casella\|l'opció\)\([^[:alnum:]]\)/marqueu \1\2/g
s/\bDesactiv\(a\|ant\|a[rt]\) aquesta \(casella\|opció\)\([^[:alnum:]]\)/Desmarc\1 aquesta \2\3/g
s/\bdesactiv\(a\|ant\|a[rt]\) aquesta \(casella\|opció\)\([^[:alnum:]]\)/desmarc\1 aquesta \2\3/g
    s/\bDesactiveu aquesta \(casella\|opció\)\([^[:alnum:]]\)/Desmarqueu aquesta \1\2/g
    s/\bdesactiveu aquesta \(casella\|opció\)\([^[:alnum:]]\)/desmarqueu aquesta \1\2/g
s/\bDesactiv\(a\|ant\|a[rt]\) \(la casella\|l'opció\)\([^[:alnum:]]\)/Desmarc\1 \2\3/g
s/\bdesactiv\(a\|ant\|a[rt]\) \(la casella\|l'opció\)\([^[:alnum:]]\)/desmmarc\1 \2\3/g
s/\bDesactiveu \(la casella\|l'opció\)\([^[:alnum:]]\)/Desmarqueu \1\2/g
s/\bdesactiveu \(la casella\|l'opció\)\([^[:alnum:]]\)/desmarqueu \1\2/g
        s/\bd'seleccionar\([^[:alnum:]]\)/de marcar\1/g
    s/\b\(des\|\)activat aquesta opció\([^[:alnum:]]\)/\1marcat aquesta opció\2/g
        s/\bper tant, s'ha \(des\|\)seleccionat aquesta opció\([^[:alnum:]]\)/per tant, s'ha \1marcat aquesta opció\2/g
    s/\baquesta \(casella\|opció\) està \(des\|\)activada\([^[:alnum:]]\)/aquesta \1 està \2marcada\3/g
    s/\baquesta \(casella\|opció\) haurà d'estar \(des\|\)activada\([^[:alnum:]]\)/aquesta \1 haurà d'estar \2marcada\3/g
    s/\bdeixar aquesta \(casella\|opció\) \(<[^<]\{1,\}>\|\)\(des\|\)activada\([^[:alnum:]]\)/deixar aquesta \1 \2\3marcada\4/g
    s/\bdeixeu \(des\|\)activada aquesta opció\([^[:alnum:]]\)/deixeu \1marcada aquesta opció\2/g
    s/\bEn seleccionar aquesta opció,/Quan es marca aquesta opció,/g
    s/\bEn seleccionar aquesta opció /Quan es marca aquesta opció, /g
    s/\bheu \(des\|\)activat aquesta opció\([^[:alnum:]]\)/heu \1marcat aquesta opció\2/g
    s/\bintenteu \(des\|\)activar també l'opció\([^[:alnum:]]\)/intenteu \1marcar també l'opció\2/g
    s/\bl'activació de l'opció\([^[:alnum:]]\)/el marcatge de l'opció\1/g
    s/\b\([Qq]uan\|[Ss]i\) aquesta \(casella\|opció\) està seleccionada\([^[:alnum:]]\)/\1 es marca aquesta \2\3/g
    s/\b\([Qq]uan\|[Ss]i\) s'ha \(des\|\)activat \(la casella\|l'opció\)\([^[:alnum:]]\)/\1 s'ha \2marcat \3\4/g
    s/\b\([Qq]uan\|[Ss]i\) aquesta \(casella\|opció\) està seleccionada\([^[:alnum:]]\)/\1 es marca aquesta \2\3/g
        s/opció de </opció </g
    s/\b\([Ss]\)i està activada,/\1i està marcada,/g
    s/\b\([Ss]\)i està desactivada,/\1i no està marcada,/g
    s/\b\([Ss]\)i està activada l'opció/\1i es marca l'opció/g
    s/\b\([Ss]\)i està desactivada l'opció/\1i no es marca l'opció/g
    s/\b\([Ss]\)i la primera opció està activada\([^[:alnum:]]\)/\1i es marca la primera opció\2/g
    s/\b\([Ss]\)i no està activada,/\1i no està marcada,/g
    s/\b\([Ss]\)i no està desactivada,/\1i no es desmarca,/g
    s/\b\([Ss]\)i no està ja activada\([^[:alnum:]]\)/\1i no està ja marcada\2/g
s/\bDesactivada: la gestió del color està inactivada\([^[:alnum:]]\)/Desmarcada: la gestió del color està desactivada\1/g
    s/\bquedarà inactivada fins\([^[:alnum:]]\)/quedarà desactivada fins\1/g
s/\bEn marcar-lo\([^[:alnum:]]\)/En marcar-la\1/g
s/\bestà desactivat per motius\([^[:alnum:]]\)/està desactivada per motius\1/g
s/\b\([Qq]\)uan \(això \|això no \|no \|\)està activa\(da\|t\)\([^[:alnum:]]\)/\1uan \2es marca\4/g
s/\b\([Qq]\)uan \(això \|això no \|no \|\)està \(des\|\)marca\(da\|t\),/\1uan \2es \3marca,/g
s/\b\([Qq]\)uan \(això \|això no \|no \|\)està \(des\|\)marca\(da\|t\) /\1uan \2es \3marca, /g
s/\b\([Qq]\)uan \(això \|això no \|no \|\)està seleccionat,/\1uan \2es marca,/g
s/\b\([Qq]\)uan \(això \|això no \|no \|\)estigui activat\([^[:alnum:]]\)/\1uan \2està activada\3/g
s/\b\([Qq]\)uan \(això \|això no \|no \|\)s'activa\([^[:alnum:]]\)/\1uan \2està activada\3/g
    s/\bQuan això s'activa, aquests paràmetres\([^[:alnum:]]\)/Quan està marcada, aquests paràmetres\1/g
s/\b\([Qq]\)uan aquesta \(casella\|opció\) està habilitada,/\1uan es marca aquesta \2,/g
s/\b\([Qq]\)uan aquesta \(casella\|opció\) està inhabilitada,/\1uan no està marcada,/g
s/\b\([Qq]\)uan \(la casella\|l'opció\) està \(des\|\)activada\([^[:alnum:]]\)/\1uan \2 està \3marcada\4/g
s/\b\([Qq]\)uan \(la casella\|l'opció\) està \(in\|\)habilitada\([^[:alnum:]]\)/\1uan \2 està \3marcada\4/g
s/\bQuan aquest està activat,/Quan està marcada,/g
s/\bQuan està desactivada,/Quan no està marcada,/g
s/(si està activat)\([^[:alnum:]]\)/(si està activada)\1/g
    s/\bBloqueja automàticament la cel·la després del gir\./Si està marcada, es bloquejarà automàticament la cel·la després del gir./g
    s/\bSI està activat, converteix els espais\([^[:alnum:]]\)/Si està marcada, es convertiran els espais\1/g
    s/\bSi està activat, \(cada pestanya mostrarà\|el clic del mig\|el doble clic\|es calcularà\|l'Amarok llençarà\|les pestanyes prendran\)\([^[:alnum:]]\)/Si està marcada, \1\2/g
s/\b\([Ss]\)i \(això \|això no \|no \|\)està \(actiu\|activat\)\([^[:alnum:]]\)/\1i \2es marca\4/g
    s/\b\([Ss]\)i està activa,/\1i està marcada,/g
s/\b\([Ss]\)i \(això \|això no \|no \|\)està desactivat\([^[:alnum:]]\)/\1i \2està marcada\3/g
s/\b\([Ss]\)i està activada,/\1i està marcada,/g
s/\b\([Ss]\)i \(això \|això no \|no \|\)està establert\([^[:alnum:]]\)/\1i \2està establerta\3/g
s/\b\([Ss]\)i \(això \|això no \|no \|\)està inactiu\([^[:alnum:]]\)/\1i \2està inactiva\3/g
s/\b\([Ss]\)i \(això \|això no \|no \|\)està \(in\|\)habilitat/\1i \2està \3habilitada/g
    s/\bSi està habilitada, llavors\([^[:alnum:]]\)/Si està marcada, llavors\1/g
    s/\bopció si està activa\(da\|\)\([^[:alnum:]]\)/opció si s'ha marcat\2/g
    s/\b\([Ss]\)i s'ha activat\([^[:alnum:]]\)/\1i s'ha marcat\2/g
    s/\bSi s'ha seleccionat,/Si està marcada,/g
s/\b\([Ss]\)i \(això \|això no \|no \|\)està selecciona\(da\|t\)\([^[:alnum:]]\)/\1i \2es marca\4/g
s/\b\([Ss]\)i \(això \|això no \|no \|\)està desselecciona\(da\|t\)\([^[:alnum:]]\)/\1i \2es desmarca\4/g
    s/\b\([Qq]uan\|[Ss]i\) això \(no \|\)\(es\|està\|s'ha\|se\)\([^[:alnum:]]\)/\1 \2\3\4/g
s/\bEn marcar aquesta \(casella\|opció\)\([^[:alnum:]]\)/Quan es marca aquesta \1\2/g
    s/\bQuan es marca aquesta opció i triar una clau\([^[:alnum:]]\)/Quan es marca aquesta opció i es tria una clau\1/g
s/\bEn marcar-la,/Quan està marcada,/g
s/\bHauríeu de marcar aquesta \(casella\|opció\)\([^[:alnum:]]\)/Hauríeu de marcar-la\2/g
s/\bla casella de selecció del visor ha d'estar marcada\([^[:alnum:]]\)/la casella de selecció del visor haurà d'estar marcada\1/g
    s/\bTrieu aquesta casella de selecció\([^[:alnum:]]\)/Marqueu aquesta casella de selecció\1/g
s/\bMarcar si voleu activar\([^[:alnum:]]\)/Marqueu-la si voleu activar\1/g
s/\bSi aquesta \(casella\|opció\) està marcada,/Si està marcada,/g
s/\bSi \(la casella\|l'opció\) següent no està marcada\([^[:alnum:]]\)/Si \1 següent no està marcada\2/g
s/\bSi aquesta \(casella\|opció\) \(no \|\)està activada\([^[:alnum:]]\)/Si \2es marca aquesta \1\3/g
s/\b\([Ss]\)i \(no \|\)\(es\|se\) marca,/\1i \2està marcada,/g
s/\b\([Ss]\)i \(no \|\)està marcat,/\1i \2està marcada,/g
s/\b\([Ss]\)i \(no \|\)s'ha marcat,/\1i \2està marcada,/g
s/\baquesta \(casella\|opció\) està marcada\([^[:alnum:]]\)/es marca aquesta \1\2/g
s/\bSi aquesta \(casella\|opció\) \(no \|\)està \(des\|\)marcada\([^[:alnum:]]\)/Si \2es \3marca aquesta \1\4/g
s/\bQuan es marca aquesta opció /Quan es marca aquesta opció, /g
s/\b\([Ss]\)i aquesta opció està establerta\([^[:alnum:]]\)/\1i s'ha establert aquesta opció\2/g
s/\bDesactiveu-ho\([^[:alnum:]]\)/Desactiveu-la\1/g
s/\bActiveu-ho\([^[:alnum:]]\)/Activeu-la\1/g
s/\bd'marcar aquesta\([^[:alnum:]]\)/de marcar aquesta\1/g


s/\baccions extres\([^[:alnum:]]\)/accions addicionals\1/g
s/\bdel Konqueror\/Dolphin\([^[:alnum:]]\)/del Konqueror o el Dolphin\1/g
s/\bLlenguatge de Marcat Matemàtic\([^[:alnum:]]\)/Llenguatge de Marcatge Matemàtic\1/g
s/\bmarcar el missatge com a preferida\([^[:alnum:]]\)/marcar el missatge com a preferit\1/g
s/\bparell nou de claus com a parell de claus predeterminades\([^[:alnum:]]\)/parell de claus nou com a parell de claus predeterminat\1/g
s/\bSi es marca aquesta opció, els certificats d'emissor que falten s'obtenen quan és necessari\([^[:alnum:]]\)/Si es marca aquesta opció, els certificats d'emissor que falten s'obtindran quan sigui necessari\1/g

s/\bUseu això\([^[:alnum:]]\)/Useu-la\1/g
    s/\bestà activada el registre\([^[:alnum:]]\)/s'activa el registre\1/g
    s/\bposició del cursor del ratolí quan se selecciona\([^[:alnum:]]\)/posició del cursor del ratolí quan està activat\1/g
    s/\bQuan se selecciona, aquesta casella,/Quan se selecciona,/g
    s/\bquan està activada una alarma\([^[:alnum:]]\)/quan s'activa una alarma\1/g
    s/\b\([Qq]\)uan se selecciona \(el vigilant\)\([^[:alnum:]]\)/\1uan està activat \2\3/g
    s/\b\([Qq]\)uan se selecciona l'estalvi de pantalla\([^[:alnum:]]\)/\1uan està activat l'estalvi de pantalla\2/g
    s/\bquè passa quan està activada\([^[:alnum:]]\)/què passa quan s'activa\1/g
    s/\bSi està activada el moviment natiu\([^[:alnum:]]\)/Si està activat el moviment natiu\1/g
    s/\b\([Ss]\)i s'ha seleccionat \(el resolutor\|el suport\|l'enfocament adaptatiu\)\([^[:alnum:]]\)/\1i s'ha activat \2\3/g
    s/\b\([Ss]\)i se selecciona \(el bloqueig\)\([^[:alnum:]]\)/\1i està actiu \2\3/g
    s/\b\([Ss]\)i se selecciona \(el resolutor\|el suport\|el vigilant\|l'enfocament adaptatiu\|la compressió\|la incrustació\)\([^[:alnum:]]\)/\1i s'ha activat \2\3/g
    s/\b\([Ss]\)i se selecciona llavors\([^[:alnum:]]\)/\1i se selecciona, llavors\2/g
    s/\bs'ha seleccionat \(la «Resposta directa\|la detecció\|la vibració\)\([^[:alnum:]]\)/s'ha activat \1\2/g
# #
# # # # # # # # # # # # # #
#
# segur?
s/\bDe veres \(desitgeu\|voleu\)\([^[:alnum:]]\)/Segur que voleu\2/g
s/\bde veres \(desitgeu\|voleu\)\([^[:alnum:]]\)/segur que voleu\2/g
s/\b\(Desitgeu\|Voleu\) realment\([^[:alnum:]]\)/Segur que voleu\2/g
s/\b\(desitgeu\|Voleu\) realment\([^[:alnum:]]\)/segur que voleu\2/g
s/\bEstàs segur\([^[:alnum:]]\)/Segur\1/g
# s/\bestàs segur\([^[:alnum:]]\)/segur\1/g
s/\bEsteu realment segur\([^[:alnum:]]\)/Segur\1/g
s/\bEsteu segur de voler\([^[:alnum:]]\)/Esteu segur que voleu\1/g
s/\besteu segur de voler\([^[:alnum:]]\)/esteu segur que voleu\1/g
s/\bEsteu segur \(de\|que\)\([^[:alnum:]]\)/Segur \1\2/g
s/\besteu segur \(de\|que\)\([^[:alnum:]]\)/segur \1\2/g

    s/\b\([Ss]\)egur de voler\([^[:alnum:]]\)/\1egur que voleu\2/g
    s/\bSegur que voleu-lo canviar de nom[?]/Segur que voleu canviar-lo de nom\?/g
    s/\b\([Ss]\)i no segur\([^[:alnum:]]\)/\1i no esteu segur\2/g
    s/\bi no segur que això\([^[:alnum:]]\)/i no esteu segur que això\1/g
    s/\bsi segur que voleu tancar\([^[:alnum:]]\)/si esteu segur de voler tancar\1/g
s/\bRealment \(desitgeu\|voleu\)\([^[:alnum:]]\)/Segur que voleu\2/g
s/\brealment \(desitgeu\|voleu\)\([^[:alnum:]]\)/segur que voleu\2/g
# #
# # # # # # # # # # # # # #
#
# Si us plau / Per favor
s/\bSi us plau, a\(bans\|ctualitzeu\|neu\|ssegureu\)\([^[:alnum:]]\)/A\1\2/g
s/\bsi us plau, \(abans\|actualitzeu\|aneu\|assegureu\)\([^[:alnum:]]\)/\1\2/g
s/\bSi us plau, c\(al\|anvieu\|omproveu\|onfigureu\|ontacteu\|orregiu\|reeu\)\([^[:alnum:]]\)/C\1\2/g
s/\bsi us plau, \(cal\|canvieu\|comproveu\|configureu\|contacteu\|corregiu\|creeu\)\([^[:alnum:]]\)/\1\2/g
s/\bSi us plau, e\(mpleneu\|mpreu\|nvieu\|scolliu\|smeneu\|spereu\|specifiqueu\|stabliu\|xtraieu\)\([^[:alnum:]]\)/E\1\2/g
s/\bsi us plau, \(empleneu\|empreu\|envieu\|escolliu\|esmeneu\|espereu\|especifiqueu\|establiu\|extraieu\)\([^[:alnum:]]\)/\1\2/g
s/\bSi us plau, feu\([^[:alnum:]]\)/Feu\1/g
s/\bsi us plau, feu\([^[:alnum:]]\)/feu\1/g
s/\bSi us plau, deseu\([^[:alnum:]]\)/Guardeu\1/g
s/\bsi us plau, deseu\([^[:alnum:]]\)/guardeu\1/g
s/\bSi us plau, i\(ndiqueu\|nformeu\|ntenteu\|ntroduïu\|nseriu\|nstal·leu\)\([^[:alnum:]]\)/I\1\2/g
s/\bsi us plau, \(indiqueu\|informeu\|intenteu\|introduïu\|inseriu\|instal·leu\)\([^[:alnum:]]\)/\1\2/g
s/\bSi us plau, llegiu\([^[:alnum:]]\)/Llegiu\1/g
s/\bsi us plau, llegiu\([^[:alnum:]]\)/llegiu\1/g
s/\bSi us plau, moveu\([^[:alnum:]]\)/Moveu\1/g
s/\bsi us plau, moveu\([^[:alnum:]]\)/moveu\1/g
s/\bSi us plau, ompliu\([^[:alnum:]]\)/Empleneu\1/g
s/\bsi us plau, ompliu\([^[:alnum:]]\)/empleneu\1/g
s/\bSi us plau, p\(oseu\|rimer\|roveu\)\([^[:alnum:]]\)/P\1\2/g
s/\bsi us plau, \(poseu\|primer\|proveu\)\([^[:alnum:]]\)/\1\2/g
s/\bSi us plau, r\(epasseu\|eviseu\)\([^[:alnum:]]\)/R\1\2/g
s/\bsi us plau, \(repasseu\|reviseu\)\([^[:alnum:]]\)/\1\2/g
s/\bSi us plau, trieu\(-ne\|\)\([^[:alnum:]]\)/Trieu\1\2/g
s/\bsi us plau, trieu\(-ne\|\)\([^[:alnum:]]\)/trieu\1\2/g
s/\bSi us plau, t\(anqueu\|orneu\|rieu\)\([^[:alnum:]]\)/T\1\2/g
s/\bsi us plau, \(tanqueu\|torneu\|trieu\)\([^[:alnum:]]\)/\1\2/g
s/\bSi us plau, useu\([^[:alnum:]]\)/Useu\1/g
s/\bsi us plau, useu\([^[:alnum:]]\)/useu\1/g
s/\bSi us plau, verifiqueu\([^[:alnum:]]\)/Verifiqueu\1/g
s/\bsi us plau, verifiqueu\([^[:alnum:]]\)/verifiqueu\1/g
# #
# # # # # # # # # # # # # #
#
# error
s/\bmsgstr \"Error\"/msgstr \"S'ha produït un error\"/g
s/<h3>Error<\/h3>\([^[:alnum:]]\)/<h3>S'ha produït un error<\/h3>\1/g
s/\"Error:\([^[:alnum:]]\)/\"S'ha produït un error:\1/g
s/\"error:\([^[:alnum:]]\)/\"s'ha produït un error:\1/g
s/\bError. Memòria exhaurida\([^[:alnum:]]\)/S'ha produït un error. Memòria exhaurida\1/g
s/\bEnvia un informe d'error\([^[:alnum:]]\)/Envieu un informe d'error\1/g
s/\bError (%1)\([^[:alnum:]]\)/S'ha produït un error (%1)\1/g
s/\bError NFS\([^[:alnum:]]\)/S'ha produït un error NFS\1/g
s/\bError a l'\(estructura\|extensió\)\([^[:alnum:]]\)/S'ha produït un error a l'\1\2/g
s/\bError a la \(connexió\|transferència\|vista\)\([^[:alnum:]]\)/S'ha produït un error a la \1\2/g
s/\bError amb la carpeta\([^[:alnum:]]\)/S'ha produït un error amb la carpeta\1/g
s/\bError al \(nom de format\|patró\)\([^[:alnum:]]\)/S'ha produït un error al \1\2/g
s/\bError analitzant:\([^[:alnum:]]\)/S'ha produït un error analitzant:\1/g
s/\bError d'aplicació:\([^[:alnum:]]\)/S'ha produït un error de l'aplicació:\1/g
    s/\bError d'escriptura\([^[:alnum:]]\)/S'ha produït un error mentre s'escrivia\1/g
    s/\"error d'escriptura\([^[:alnum:]]\)/\"s'ha produït un error mentre s'escrivia\1/g
s/\bError \(d\|de\|del\|desconegut\|en\|inesperat\)\([^[:alnum:]]\)/S'ha produït un error \1\2/g
    s/\bS'ha produït un error en el fitxer del tema\([^[:alnum:]]\)/Error en el fitxer del tema\1/g
    s/\bS'ha produït un error en invocar\([^[:alnum:]]\)/Error en cridar\1/g
    s/\bError de lectura\([^[:alnum:]]\)/S'ha produït un error mentre es llegia\1/g
    s/\"error de lectura\([^[:alnum:]]\)/\"s'ha produït un error mentre es llegia\1/g
s/\bError en el\([^[:alnum:]]\)/S'ha produït un error en el\1/g
    s/: S'ha produït un error en el fitxer\([^[:alnum:]]\)/: Error en el fitxer\1/g
s/\bError durant l'actualització\([^[:alnum:]]\)/S'ha produït un error durant l'actualització\1/g
s/\bError en actualitzar\([^[:alnum:]]\)/S'ha produït un error durant l'actualització\1/g
    s/\bError en escriure\([^[:alnum:]]\)/S'ha produït un error mentre s'escrivia\1/g
    s/\"error en escriure\([^[:alnum:]]\)/\"s'ha produït un error mentre s'escrivia\1/g
s/\bError intern\([^[:alnum:]]\)/S'ha produït un error intern\1/g
    s/\berror intern del \(component\|depurador\|dispositiu\|motor\|servei\|servidor\|sistema\)\([^[:alnum:]]\)/error intern en el \1\2/g
s/\bError mentre\([^[:alnum:]]\)/S'ha produït un error mentre\1/g
    s/\"error mentre\([^[:alnum:]]\)/\"s'ha produït un error mentre\1/g
s/\bError no gestionat\([^[:alnum:]]\)/S'ha produït un error no gestionat\1/g
s/\b\([Ee]\)rror obtingut\([^[:alnum:]]\)/\1rror reportat\2/g
s/\bError total\([^[:alnum:]]\)/S'ha produït un error total\1/g
s/\bHi ha \(hagut \|\)un error\([^[:alnum:]]\)/S'ha produït un error\2/g
s/\bL'error informat ha estat\([^[:alnum:]]\)/S'ha informat de l'error\1/g
s/\bInforma d'un \(error\|problema\)\([^[:alnum:]]\)/Informeu d'un \1\2/g
    s/\bS'ha produït un error del tipus de fitxer\([^[:alnum:]]\)/S'ha produït un error amb el tipus de fitxer\1/g
    s/\berror del JSON\([^[:alnum:]]\)/error amb el JSON\1/g
    s/\bS'ha produït un error: quan\([^[:alnum:]]\)/Hi ha un error: quan\1/g
# #
# # # # # # # # # # # # # #
#
# preguntes
s/\bAccepto\([? ]\)/Voleu acceptar\1/g
s/\bActualitzo\([? ]\)/Voleu actualitzar\1/g
s/\bActivo\([? ]\)/Voleu activar\1/g
    s/\bL'Activo[?]/Voleu activar-lo\?/g
    s/\bAfegeixo fitxer[?]/Voleu afegir un fitxer\?/g
s/\bAfegeixo\([? ]\)/Voleu afegir\1/g
s/\bAplico o descarto\([? ]\)/Voleu aplicar o descartar\1/g
s/\bAplico\([? ]\)/Voleu aplicar\1/g
s/\bBaixo\([^[:alnum:]]\)/Voleu baixar\1/g
s/\bCancel·lo\([? ]\)/Voleu cancel·lar\1/g
s/\bCanvio\([? ]\)/Voleu canviar\1/g
s/\bCarrego\([? ]\)/Voleu carregar\1/g
s/\bCerco\([? ]\)/Voleu cercar\1/g
s/\bComparteixo\([? ]\)/Voleu compartir\1/g
s/\bCondueixo\([? ]\)/Voleu conduir\1/g
s/\bConfio\([? ]\)/Voleu confiar\1/g
s/\bConfirmo\([? ]\)/Voleu confirmar\1/g
s/\bContinuo\([? ]\)/Voleu continuar\1/g
s/\bCre\(a\|o\) o actualitz\(a\|o\)[?]/Voleu crear o actualitzar\?/g
    s/\bLa voleu crear ara[?]/Voleu crear-la ara\?/g
s/\bCreo\([? ]\)/Voleu crear\1/g
    s/\bVoleu crear Leaf\([^[:alnum:]]\)/Cree Leaf\1/g
# #
# # # # # # # # # # # # # #
#
# de debò
    s/\bDe debò elimino\([^[:alnum:]]\)/De debò voleu eliminar\1/g
    s/\bDe debò habilito\([^[:alnum:]]\)/De debò voleu habilitar\1/g
    s/\bDe debò reordeno\([^[:alnum:]]\)/De debò voleu reordenar\1/g
    s/\bDe debò suprimeixo\([^[:alnum:]]\)/De debò voleu suprimir\1/g
s/\bDescarto\([? ]\)/Voleu descartar\1/g
s/\bDeso\([? ]\)/Voleu desar\1/g
    s/\bEl voleu desar[?]/Voleu desar-lo\?/g
    s/\bEls deso[?]/Voleu desar-los\?/g
    s/\bLa voleu desar[?]/Voleu desar-la\?/g
s/\bDibuixo\([^[:alnum:]]\)/Voleu dibuixar\1/g
s/\bEl voleu posar en línia[?]/Voleu posar-lo en línia\?/g
    s/\bLa voleu posar en línia[?]/Voleu posar-la en línia\?/g
s/\bElimino\([? ]\)/Voleu eliminar\1/g
    s/\bL'elimino/Voleu eliminar-lo/g
s/\bEmpenyo\([? ]\)/Voleu empènyer\1/g
s/\bEmpr\([ao]\) el nom de fitxer original[?]/Voleu emprar el nom de fitxer original\?/g
s/\bEncripto\([? ]\)/Voleu encriptar\1/g
s/\b\(Engego\|Inicio\)\([? ]\)/Voleu iniciar\2/g
    s/\bHaig d'engegar\([^[:alnum:]]\)/Voleu iniciar\1/g
s/\bEnvio\([? ]\|\)/Voleu enviar\1/g
    s/\bL'envio igualment[?]/Voleu enviar-lo igualment\?/g
s/\bEscric/Voleu escriure-hi/g
s/\bExecuto\([? ]\)/Voleu executar\1/g
s/\bExporto\([? ]\)/Voleu exortar\1/g
s/\bFinalitzo\([? ]\)/Voleu finalitzar\1/g
s/\bHo esmeno[?]/Voleu esmerar-ho\?/g
s/\bHo netejo tot[?]/Voleu netejar-ho tot\?/g
s/\bIgnoro\([? ]\)/Voleu ignorar\1/g
    s/\bi torno a sembrar\([^[:alnum:]]\)/i tornar a sembrar\1/g
s/\bImporto\([? ]\)/Voleu importar\1/g
s/\bInterrompo\([? ]\)/Voleu interrompre\1/g
s/\bLlevo\([? ]\)/Voleu llevar\1/g
s/\bMato\([? ]\)/Voleu matar\1/g
# Necessito (No!)
    s/\bMostro imatges incloses en el cel[?]/Voleu que es mostrin com a incloses les imatges en el cel\?/g
    s/\bnova sense clau, voleu tornar a intentar-ho[?]/nova sense clau. Voleu tornar a intentar-ho\?/g
s/\bNetejo\([? ]\)/Voleu netejar\1/g
s/\bObro\([? ]\)/Voleu obrir\1/g
s/\bOblido\([? ]\)/Voleu oblidar\1/g
s/\bOculto\([? ]\)/Voleu amagar\1/g
s/\bPerdo\([? ]\)/Voleu perdre\1/g
    s/\bReanomeno el \(document\|recurs\)\([^[:alnum:]]\)/Voleu canviar el nom del \1\2/g
s/\bReanomeno\([? ]\)/Voleu canviar el nom\1/g
    s/\bEncara \(el\|la\) voleu canviar de nom[?]/Segur que voleu canviar-ne el nom\?/g
s/\bLa voleu reassignar[?]/Voleu tornar-la a assignar\?/g
    s/\bProcedeixo igualment\./Es procedirà igualment./g
s/\bProcedeixo\([? ]\)/Voleu procedir\1/g
s/\bRecursiu[?]/És recursiu\?/g
s/\bReinicio\([? ]\)/Voleu reiniciar\1/g
    s/\bEl reinicio\([^[:alnum:]]\)/Voleu reiniciar-lo\1/g
    s/\bEl voleu provar de reiniciar[?]/Voleu provar de reiniciar-lo\?/g
    s/\bLa voleu provar de reiniciar[?]/Voleu provar de reiniciar-la\?/g
s/\bRepeteixo\([? ]\)/Voleu repetir\1/g
s/\bRestableixo\([? ]\)/Voleu restablir\1/g
s/\bRestauro\([? ]\)/Voleu restaurar\1/g
s/\bRetallo\([? ]\)/Voleu retallar\1/g
s/\bReverteixo\([? ]\)/Voleu revertir\1/g
s/\bSigno\/Voleu encriptar\([^[:alnum:]]\)/Voleu signar\/encriptar\1/g
s/\bSigno\([? ]\)/Voleu signar\1/g
s/\bSobreescric\([? ]\)/Voleu sobreescriure\1/g
    s/\bEl voleu sobreescriure[?]/Voleu sobreescriure'l\?/g
    s/\bLa voleu sobreescriure[?]/Voleu sobreescriure-la\?/g
    s/\bS'ha de sobreescriure[?]/Voleu sobreescriure'l\?/g
s/\bSubstitueixo\([? ]\)/Voleu substituir\1/g
s/\bSuprimeixo\([? ]\)/Voleu suprimir\1/g
    s/\bEncara el voleu suprimir[?]/Encara voleu suprimir-lo\?/g
    s/\bEncara la voleu \(reanomenar\|suprimir\)[?]/Encara voleu \1-la\?/g
s/\bSurto i abandono\([? ]\)/Voleu sortir i abandonar\1/g
s/\bSurto\([? ]\)/Voleu sortir\1/g
s/\bTanco i abandono\([? ]\)/Voleu tancar i abandonar\1/g
    s/\bTanco i descarto\\n/Voleu tancar i descartar\\n/g
s/\bTanco i descarto\([? ]\)/Voleu tancar i descartar\1/g
    s/\bVoleu desar ara el document[?]/Voleu desar-lo ara\?/g
s/\bTorno\([? ]\)/Voleu tornar\1/g
s/\bUso\([^[:alnum:]]\)/Voleu usar\1/g

# #
# # # # # # # # # # # # # #
#
# signes d'exclamació
s/\bde la cartera[!]/de la cartera./g
s/\bno existeix[!]/no existeix./g
s/\bObtén les novetats candents[!]/Obtén les novetats candents./g
s/\bSigues lliure[!]/Sigueu lliure/g
s/\bZel de grum\(:\|,\) quètxup, whisky, cafè, bon vi; ja[!]/Jove xef, porte ací per a beure whisky amb quinze glaçons d'hidrogen/g
s/\(<p>\)Zel de grum\(:<br\/>\)quètxup, whisky, cafè, bon vi; ja[!]/\1Jove xef\2porte ací per a beure whisky amb quinze glaçons d'hidrogen/g

# #
# # # # # # # # # # # # # #
#
# Adaptació per aplicació
s/\bAnimació 2D\([^[:alnum:]]\)/Animació en 2D\1/g
s/\bAquesta \(acció\|operació\) no es pot desfer\./Aquesta \1 no es podrà desfer./g
s/\bCAD 3D\([^[:alnum:]]\)/CAD en 3D\1/g
s/\b\([Cc]\)onnector Python\([^[:alnum:]]\)/\1onnector en Python\2/g
s/\bdocumentació a \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)markdown\([^[:alnum:]]\)/documentació en \1markdown\2/g
s/\b\([Dd]\)ocument\(s\|\) \(Markdown\|RMarkdown\)\([^[:alnum:]]\)/\1ocument\2 en \3\4/g
s/\b\([Ee]\)xtensió QML\([^[:alnum:]]\)/\1xtensió en QML\2/g
s/\bfeta amb el Markdown\([^[:alnum:]]\)/en Markdown\1/g
s/\b\([Ff]\)itxer\(s\|\) \(<[^<]\{1,\}>\|:ref:`\|[&«]\|\[\|\)\(DocBook\|javascript\|Logo\|[Mm]arkdown\|QML\|[Rr][Mm]arkdown\|XML\)\([^[:alnum:]]\)/\1itxer\2 en \3\4\5/g
    s/\b\([Ff]\)itxer\(s\|\) en DocBook en &XML;\([^[:alnum:]]\)/\1itxer\2 DocBook en \&XML;\3/g
    s/\b\([Ff]\)ormat\(s\|\) de fitxer en \(DocBook\|Logo\)\([^[:alnum:]]\)/\1ormat\2 de fitxer \3\4/g
s/\b\([Gg]\)uia d'aprenentatge \(ODF\|PDF\)\([^[:alnum:]]\)/\1uia d'aprenentatge en \2\3/g
s/\b\([Mm]\)iniaplicació QML\([^[:alnum:]]\)/\1iniaplicació en QML\2/g
s/\b\([Ss]\)cript\(s\|\) del Logo\([^[:alnum:]]\)/\1cript\2 en Logo\3/g
s/\b\([Ss]\)cript\(s\|\) \(Javascript\|Python\|R\)\([^[:alnum:]]\)/\1cript\2 en \3\4/g
s/\b\([Tt]auler\|versió\) QML\([^[:alnum:]]\)/\1 en QML\2/g
s/\bQuadre de diàleg\([^[:alnum:]]\)/Diàleg\1/g
s/\bquadre de diàleg\([^[:alnum:]]\)/diàleg\1/g
s/\b\([Tt]\)orneu\(-ho\|\) a \(intentar\|provar\)\(-ho\|\)\([^[:alnum:]]\)/\1orneu-ho a provar\5/g
    s/\b\([Tt]\)orneu-ho a provar en mode\([^[:alnum:]]\)/\1orneu-ho a provar en el mode\2/g
    s/\b\([Tt]\)orneu-ho a provar la \(baixada\|petició\)\([^[:alnum:]]\)/\1orneu a provar la \2\3/g

#
# Akonadi
s/\bEAutocomprovació del servidor\([^[:alnum:]]\)/Autocomproveu el servidor\1/g
s/\bCanvia el nom d'una preferida\([^[:alnum:]]\)/Canvieu el nom d'una preferida\1/g
 #
s/\" \[(s)í\/(N)o\] \"/\" \[(s)í o (N)o\] \"/g
s/\" \[(s)í\/(N)o\/(o)met\] \"/\" \[(s)í, (N)o o (o)met\] \"/g
s/\bcontingut \(a\|en\) memòria cau\([^[:alnum:]]\)/contingut a la memòria cau\2/g
s/\bdestí pare\([^[:alnum:]]\)/pare de destinació\1/g
s/\bEspai de nom per a iniciar diverses instàncies de l'Akonadi\([^[:alnum:]]\)/Espai de nom per a iniciar múltiples instàncies de l'Akonadi\1/g
s/\bfitxer lliure\/ocupat\([^[:alnum:]]\)/fitxer de lliure\/ocupat\1/g
s/\bja existeix\. Voleu sobreescriure[?]\([^[:alnum:]]\)/ja existeix. Voleu sobreescriure'l?\1/g
s/\bles peces afegides en el mode dinàmic poden\([^[:alnum:]]\)/les peces afegides en el mode dinàmic podran\1/g
s/\bSi està marcada, baixarà\([^[:alnum:]]\)/Si està marcada, es baixarà\1/g
s/\bUtilitzeu-lo sota la vostra responsabilitat\([^[:alnum:]]\)/Useu-la sota la vostra responsabilitat\1/g
s/\bVRefs\([^[:alnum:]]\)/VRef\1/g
# akonadi-calendar
s/\btorna mostra la notificació\([^[:alnum:]]\)/es tornarà a mostrar la notificació\1/g
# akonadiclient
s/\bEl servidor Akonadi està aturant-se\([^[:alnum:]]\)/El servidor Akonadi s'està aturant\1/g
s/\bS'han reanomenat %1 grups\([^[:alnum:]]\)/S'ha canviat el nom de %1 grups\1/g
# Akregator
s/\bImpressió del document\"/Imprimiu el document\"/g
 #
s/\ben analitzar\([^[:alnum:]]\)/en l'anàlisi sintàctica de\1/g
    s/\bde el\(s\|\)\([^[:alnum:]]\)/del\1\2/g
# Alpaka
s/\bOllama, que permet executar\([^[:alnum:]]\)/Ollama, el qual permet executar\1/g
# Alligator
s/\b\([Ll]\)lista de fonts a l'Alligator a l'escriptori\([^[:alnum:]]\)/\1lista de fonts de l'Alligator a l'escriptori\2/g
# Amarok
s/\bConfiguració->Configura Amarok->Connectors\([^[:alnum:]]\)/Configuració -> Configura Amarok… -> Connectors\1/g
s/\bConfirmació de moure\([^[:alnum:]]\)/Confirmeu el moure\1/g
s/\bConfirmació de la supressió\([^[:alnum:]]\)/Confirmeu la supressió\1/g
s/\bMoure fitxers\"/Moveu els fitxers\"/g
 #
s/\bActiva\/\([Dd]es\|[Ii]n\)activa\([^[:alnum:]]\)/Activa o desactiva\2/g
s/\bdiàleg per les transferències futures\([^[:alnum:]]\)/diàleg per a les transferències futures\1/g
s/\bFitxers de predefinicions\([^[:alnum:]]\)/Fitxers de predefinits\1/g
s/\bperò ha fallat la transferència d'altres peces\([^[:alnum:]]\)/però ha fallat la transferència d'altres\1/g
s/\b\([Ss]\)'estan executant diverses tasques\([^[:alnum:]]\)/\1'estan executant múltiples tasques\2/g
s/\bSi està marcada, afegeix els\([^[:alnum:]]\)/Si està marcada, s'afegiran els\1/g
s/\bSi està marcada, converteix els\([^[:alnum:]]\)/Si està marcada, es convertiran els\1/g
s/\bSi està marcada, el mode dinàmic s'engegarà, i\([^[:alnum:]]\)/Si està marcada, s'iniciarà el mode dinàmic i\1/g
s/\bSi està marcada, habilita\([^[:alnum:]]\)/Si està marcada, s'habilitarà\1/g
s/\bSi està marcada, l'Amarok reprén\([^[:alnum:]]\)/Si està marcada, l'Amarok reprendrà\1/g
s/\bSilenci\(a\|\)\/\([Aa]\)ctiva\([^[:alnum:]]\)/Silenci\1 o activa\3/g
s/\bsuports del pòdcast\([^[:alnum:]]\)/suports de pòdcast\1/g
# Arca
s/\bNavegueu, creeu, i editeu arxius\([^[:alnum:]]\)/Navegueu, creeu i editeu arxius\1/g
# Arianna
s/\bObre altres…\([^[:alnum:]]\)/Obre'n altres…\1/g
# Ark
s/, que actualment no s'admet\([^[:alnum:]]\)/, el qual actualment no s'admet\1/g
s/\bQuan es cliqui a un fitxer en un arxiu\([^[:alnum:]]\)/Quan es cliqui a un fitxer d'un arxiu\1/g
# Artikulate
s/\bReprodueix una gravació emmagatzemat\([^[:alnum:]]\)/Reprodueix una gravació emmagatzemada\1/g
# Atlantik
# Audex
s/\"Definiu un esquema\"/\"Establiu un esquema\"/g
s/\"Definiu un esquema d'ordres\"/\"Establiu un esquema d'ordres\"/g
s/\ben la pista %1 a la posició\([^[:alnum:]]\)/a la pista %1 a la posició\1/g
s/\bEl format del fitxer de la\([^[:alnum:]]\)/El format de fitxer de la\1/g
s/\bels sectors trencats s'ompliran de silenci\([^[:alnum:]]\)/els sectors trencats s'ompliran amb silenci\1/g
s/\berror intern\. \(Si us plau, i\|I\)nformeu-ho\([^[:alnum:]]\)/error intern. Informeu-ne\2/g
s/\bés desconegut\. Escolliu un dels formats següents:/és desconegut. Escolliu-ne un dels següents:/g
s/\bÉs disponible la correcció d'errors C2\([^[:alnum:]]\)/Està disponible la correcció d'errors C2\1/g
s/\bNom\/Esquema:\([^[:alnum:]]\)/Nom i esquema:\1/g
s/\bsi són disponibles\([^[:alnum:]]\)/si estan disponibles\1/g
s/\bTrieu un dels formats següents:/Trieu-ne un dels següents:/g
# audiocd-kio
s/\b\([Mm]\)arca al fitxer\([^[:alnum:]]\)/\1arca el fitxer\2/g
# Baloo
# Basket
s/\bSi la restauració ha estat amb èxit i heu restaurat el que volíeu restaurar\([^[:alnum:]]\)/Si la restauració ha estat amb èxit i heu restaurat el que volíeu\1/g
# Bonsai
s/\bFiltre %1 repositoris\([^[:alnum:]]\)/Filtra %1 repositoris\1/g
s/\bo en crea un de nou\([^[:alnum:]]\)/o crea'n un de nou\1/g
s/\bRes a veure\./Res que s'hagi de veure./g
# calendarsupport
s/\bArxiva\/elimina els esdeveniments\"/Arxiveu i elimineu els esdeveniments"/g
s/\bCreació de nota\"/Creeu una nota"/g
# Calligra
s/(NaN) i es marca un error\([^[:alnum:]]\)/(NaN) i s'estableix un error\1/g
s/\bAfe\(&\|\)geix grup…/Afe\1geix un grup…/g
s/\bGira\/Pessiga\([^[:alnum:]]\)/Gira i pessiga\1/g
s/\bNomés exporta\([^[:alnum:]]\)/Exporta només\1/g
s/\bnomés exporta\([^[:alnum:]]\)/exporta només\1/g
s/\bSi està marcada, el contingut de la cel·la no s'imprimirà\([^[:alnum:]]\)/Si està marcada, no s'imprimirà el contingut de la cel·la\1/g
s/\bSi està marcada, el text de la cel·la actual se subratllarà\([^[:alnum:]]\)/Si està marcada, se subratllarà el text de la cel·la actual\1/g
s/\bQuan es marca, el Words mostra \(totes \|\)les\([^[:alnum:]]\)/Quan es marca, el Words mostrarà \1les\2/g
s/\bQuan es marca, la cel·la encara és visible\([^[:alnum:]]\)/Quan es marca, la cel·la encara serà visible\1/g
s/\b\([Vv]\)isualització de miniatures\([^[:alnum:]]\)/\1ista de miniatures\2/g
# Calligra Plan
s/\bAdjunta el document\"/Adjunteu el document\"/g
s/\b\([Aa]\)fegeix \(fita\|subtasca\|tasca\)\([^[:alnum:]]\)/\1fegeix una \2\3/g
s/\bConfigura la \(categoria\|visualització\)\"/Configureu la \1\"/g
s/\bConfiguració de \(la cartera\|la imatge\|les barres\)\([^[:alnum:]]\)/Configureu \1\2/g
s/\bDesament dels documents\"/Deseu els documents\"/g
s/\bEdita|\(Afegeix\|Elimina\)\([^[:alnum:]]\)/Edita -> \1\2/g
s/\bEdita la dependència\"/Editeu la dependència\"/g
s/\bEnvia els paquets de feina\"/Envieu els paquets de feina\"/g
s/\bModifica l'\(entrada\|URL\)\"/Modifiqueu l'\1\"/g
s/\bque ara ja s'haurien\([^[:alnum:]]\)/que ja s'haurien\1/g
# Cantor
s/\bAquest pas no es pot desfer\./Aquest pas no es podrà desfer./g
s/\bExtracció en mode re&cursiu\([^[:alnum:]]\)/Extreu en mode re\&cursiu\1/g
s/\bPer això, executeu\([^[:alnum:]]\)/Per a fer això, executeu\1/g
s/\bsi s'ha seleccionat la incrustació\([^[:alnum:]]\)/si s'ha activat la incrustació\1/g
s/\bSi està marcada, totes les entrades sota de l'actual s'avaluaran automàticament\([^[:alnum:]]\)/Si està marcada, s'avaluaran automàticament totes les entrades sota de l'actual\1/g
s/\bVerifiqueu la instal·lació \(del Julia\|de l'Octave\|de l'Scilab\|del Lua\|del Maxima\|del Python\|de l'R\|del Sage\)\([^[:alnum:]]\)/Verifiqueu la seva instal·lació\2/g
# Chessament
s/\bDiversos paràgrafs de descripció\([^[:alnum:]]\)/Múltiples paràgrafs de descripció\1/g
s/\bFitxers d'informe d'importació de torneig/Importa un fitxer d'informe del torneig/g
s/\bInforme d'exportació de torneig/Exporta l'informe del torneig/g
s/\bInforme d'importació de torneig/Importa l'informe del torneig/g
# Choqok
s/(activar\/desactivar)/(activar o desactivar)/g
    s/carregar el connector (activar o desactivar)/carregar el connector (activar i desactivar)/g
# crow-translate
s/\bper protegir la vostra privadesa\([^[:alnum:]]\)/per a protegir la vostra privadesa\1/g
# Daykountdown
s/\bAfegeix un compte enrere\"/Afegiu un compte enrere\"/g
s/\bEdita el compte enrere\"/Editeu el compte enrere\"/g
s/\bElimina tots els comptes enrere\"/Elimineu tots els comptes enrere\"/g
# digiKam
s/\"Aplica metadades\"/\"Aplica les metadades\"/g
s/\"FastStone Image Viewer\"/\"Visor d'imatges FastStone\"/g
s/\bActiveu això si voleu un fons emplenant\([^[:alnum:]]\)/Marqueu-la si voleu un fons emplenant\1/g
    s/\bDesactiveu això si no voleu \(convertir\|veure icones\)\([^[:alnum:]]\)/Desmarqueu-la si no voleu \1\2/g
s/\bActiveu aquest botó\([^[:alnum:]]\)/Useu aquest botó\1/g
s/\bAdaptació a Windows i gestor de llançaments\([^[:alnum:]]\)/Adaptació a Windows i encarregat dels llançaments\1/g
s/\bAfegeix una etiqueta nova:\"/Afegiu una etiqueta nova:\"/g
s/\bbase de dades de cares per a desar els histogrames\([^[:alnum:]]\)/base de dades de cares per a allotjar els histogrames\1/g
s/\b\(carpeta\|col·lecció\) que hostatja\([^[:alnum:]]\)/\1 que allotja\2/g
s/\bcom a deteccions d'objectes\([^[:alnum:]]\)/com la detecció d'objectes\1/g
s/\bComparteix fitxers amb el servidor \(de flux MJPEG\|multimèdia DLNA\)\"/Compartiu fitxers amb el servidor \1\"/g
s/\bde petita escala\([^[:alnum:]]\)/d'escala petita\1/g
s/\b\([Dd]\)eixeu el botó \(central\|del mig\|dret\|esquerre\)\([^[:alnum:]]\)/\1eixeu anar el botó \2\3/g
s/\bdeixeu aquest paràmetre a Sense\([^[:alnum:]]\)/deixeu aquest paràmetre a «Sense»\1/g
s/\bdesar miniatures d'imatges amb\([^[:alnum:]]\)/allotjar miniatures d'imatges amb\1/g
s/\bEdició de fotografies al Showfoto\([^[:alnum:]]\)/Editeu fotografies al Showfoto\1/g
s/\bEspecifica la qualitat de mapa que es mostrarà durant les animacions del mapa\([^[:alnum:]]\)/Especifica la qualitat del mapa que es mostrarà durant les animacions\1/g
s/\bEstabliment de les imatges del panorama\"/Establiu les imatges del panorama\"/g
s/\bEstablir les imatges amb bràqueting\"/Establiu les imatges amb bràqueting\"/g
s/\bForça la renderització del programari OpenGL\([^[:alnum:]]\)/Força la renderització OpenGL per programari\1/g
s/\bgraus-minuts-segons\([^[:alnum:]]\)/graus, minuts i segons\1/g
s/\bpartir de fitxers de memòria cau\([^[:alnum:]]\)/partir dels fitxers de memòria cau\1/g
s/\bVoleu eliminar el camí afegit\([^[:alnum:]]\)/Voleu eliminar el camí annexat\1/g
 #
s/\bla nova reproducció engegarà\([^[:alnum:]]\)/la reproducció nova començarà\1/g
s/\bLa terra vista des de l'espai\([^[:alnum:]]\)/La Terra vista des de l'espai\1/g
# docs.digikam.org
s/` està desactivada,/` està desseleccionada,/g
s/\baquesta opció activarà l'algorisme\([^[:alnum:]]\)/aquesta opció cridarà l'algorisme\1/g
s/\bdocs\.digikam\.org\/ca\/epub\([^[:alnum:]]\)/docs.digikam.org\/ca-va\/epub\1/g
s/\bes fa automàticament a l'inici\([^[:alnum:]]\)/es fa automàticament durant l'inici\1/g
s/\bLa nostra recomanació és deixar-lo desactivat\([^[:alnum:]]\)/La nostra recomanació és deixar-la desseleccionada\1/g
s/\bLa nostra recomanació és deixar-la desactivada\([^[:alnum:]]\)/La nostra recomanació és deixar-la desseleccionada\1/g
s/\bmarqueu més d'una etiqueta\([^[:alnum:]]\)/seleccioneu més d'una etiqueta\1/g
s/\bmonitoratge dels àlbums en el digiKam haurà d'estar desactivada\([^[:alnum:]]\)/monitoratge dels àlbums en el digiKam haurà d'estar desactivat\1/g
s/\bper a activar\/desactivar\([^[:alnum:]]\)/per a activar o desactivar\1/g
s/\b\(permet\|podreu\) activar\/desactivar\([^[:alnum:]]\)/\1 activar i desactivar\2/g
s/\bTrieu \(el fitxer\|l'estil\|la imatge\|la versió\|les condicions\|un fitxer\|una carpeta\|un directori\|quin\)\([^[:alnum:]]\)/Trieu \1\2/g
# Discover
s/%1 no està instal·lat, però encara té dades presents\([^[:alnum:]]\)/%1 no està instal·lada, però encara té dades presents\1/g
s/\binform\(ar\|eu\)-ho a %1, no a KDE\([^[:alnum:]]\)/inform\1-ne a %1, no al KDE\2/g
s/\bper començar a utilitzar-lo\([^[:alnum:]]\)/per a començar a utilitzar-la\1/g
s/\bVisualització de les actualitzacions\([^[:alnum:]]\)/Veure les actualitzacions\1/g
# Dolphin
s/\bActualització a <application>Hg<\/application>\"/Actualitzeu a <application>Hg<\/application>\"/g
s/\bConfigura el Dolphin > Visualitza > General\([^[:alnum:]]\)/«Configura el Dolphin -> Visualitza -> General»\1/g
s/\bConfigura la vista prèvia per a %1\"/Configureu la vista prèvia per a %1\"/g
s/\bConfiguració del repositori <application>Hg<\/application>\"/Configureu el repositori <application>Hg<\/application>\"/g
s/\bCreació d'una etiqueta a\([^[:alnum:]]\)/Creeu una etiqueta a\1/g
 #
s/- el <emphasis>directori arrel<\/emphasis>\./-el <emphasis>directori arrel<\/emphasis>-./g
s/\bAjuda|Manual del Dolphin\([^[:alnum:]]\)/Ajuda -> Manual del Dolphin\1/g
s/\barrossegant carpetes a aquest plafó\([^[:alnum:]]\)/arrossegant carpetes cap a aquest plafó\1/g
s/\bReanomena elements individuals en línia\([^[:alnum:]]\)/Canvia el nom d'elements individuals inclosos\1/g
s/\beina per a assignar metadades de \(llegendes\|rètols\)\([^[:alnum:]]\)/eina per a assignar les metadades de \1\2/g
    s/\bpropietat de rètol de selecció\([^[:alnum:]]\)/propietat del rètol de selecció\1/g
s/\bEls canvis que no es poden desfer\([^[:alnum:]]\)/Els canvis que no es podran desfer\1/g
s/\bEntrega al repositori <application>Hg<\/application>\"/Entregueu al repositori <application>Hg<\/application>\"/g
s/\bEtiquetatge a <application>Hg<\/application>\"/Etiqueteu a <application>Hg<\/application>\"/g
s/\bExportació des de <application>Hg<\/application>\"/Exporteu des de <application>Hg<\/application>\"/g
s/\bExtracció de <application>Git<\/application>\"/Extraieu des de <application>Git<\/application>\"/g
s/\bFusió a <application>Hg<\/application>\"/Fusioneu a <application>Hg<\/application>\"/g
s/\b\(Import\|Incorpor\)ació a <application>\(Git\|Hg\)<\/application>\"/\1eu a <application>\2<\/application>\"/g
s/\bMenú|Plafons\([^[:alnum:]]\)/Menú --> Plafons\1/g
s/\bMou els elements seleccionats des de la vista <emphasis>activa<\/emphasis> a la vista\([^[:alnum:]]\)/Mou els elements seleccionats des de la vista <emphasis>activa<\/emphasis> cap a la vista\1/g
s/\bmoviment<\/interface> a una ubicació\([^[:alnum:]]\)/moviment<\/interface> cap a una ubicació\1/g
    s/\bcap a una ubicació diferent o a la <filename>Paperera\([^[:alnum:]]\)/cap a una ubicació diferent o cap a dins de la <filename>Paperera\1/g
s/\bnavegar per diverses carpetes al mateix temps\([^[:alnum:]]\)/navegar per múltiples carpetes al mateix temps\1/g
s/\bObtenció de <application>Git<\/application>\"/Obteniu de <application>Git<\/application>\"/g
s/\bordinador o a la xarxa\([^[:alnum:]]\)/ordinador o amb la xarxa\1/g
s/\bpersonals, això com les carpetes ocultes de les dades\([^[:alnum:]]\)/personals, així com les carpetes ocultes de les dades\1/g
s/\bPublicació a <application>\(Git\|Hg\)<\/application>\([^[:alnum:]]\)/Publiqueu a <application>\1<\/application>\2/g
s/\bQuan se selecciona, els fitxers i carpetes \(<[^<]\{1,\}>\)ocultes\(<[^<]\{1,\}>\) són visibles\([^[:alnum:]]\)/Quan se selecciona, els fitxers i carpetes \1ocultes\2 seran visibles\3/g
s/\bReanomenat a <application>Hg<\/application>\"/Reanomeneu a <application>Hg<\/application>\"/g
s/\bRecuperació en el repositori <application>Hg<\/application>\"/Recupereu en el repositori <application>Hg<\/application>\"/g
s/\bRetrocés a <application>Hg<\/application>\"/Retrocediu a <application>Hg<\/application>\"/g
s/\bVisualitza|Plafons\([^[:alnum:]]\)/Visualitza --> Plafons\1/g
# dolphin-plugins
s/\b\([Ee]\)xtrau de\([^[:alnum:]]\)/\1xtrau des de\2/g
s/\bObre una finestra nova de terminal per a veure la sortida de fer el «make» de l'objectiu triat\([^[:alnum:]]\)/Obre una finestra nova de terminal per a veure la sortida de crear l'objectiu triat\1/g
s/\bS'ha produït un error en intentar fer «make» de l'objectiu «%1»\([^[:alnum:]]\)/S'ha produït un error en intentar fer l'objectiu «%1»\1/g
# Dragon
s/\bReproducció de fitxer multimèdia\([^[:alnum:]]\)/Reproduïu un fitxer multimèdia\1/g
# drkonqi
s/\bés molt limitada\([^[:alnum:]]\)/està molt limitada\1/g
s/\bper generar\([^[:alnum:]]\)/per a generar\1/g
# Els/\bisa
s/\"Cerca i filtre\"/\"Cerca i filtratge\"/g
    s/\b\([Bb]\)arra d'eines de cerca i filtre\([^[:alnum:]]\)/\1arra d'eines de cerca i filtratge\2/g
# eventviews
s/\b\(des\|\)seleccioneu-la per a seleccionar\([^[:alnum:]]\)/\1seleccioneu-la per a triar\2/g
# Falkon
s/\bEls esquemes de permesos es poden afegir per extensions\([^[:alnum:]]\)/Els esquemes de permesos poden ser afegits per les extensions\1/g
s/\bllista \(blanca\|negra\); primer elimineu-lo\([^[:alnum:]]\)/llista \1. Primer elimineu-lo\2/g
s/\bPermet l'animació d'imatges\([^[:alnum:]]\)/Permet l'animació de les imatges\1/g
s/\bSi no està marcada, evita la sortida de l'aplicació si la drecera «Ctrl+W» estava prevista\([^[:alnum:]]\)/Si no està marcada, s'evitarà la sortida accidental de l'aplicació si es pretén la drecera «Ctrl+W»\1/g
# Fielding
s/\bAPI REST\([^[:alnum:]]\)/API del Rest\1/g
# flatpak-kcm
s/\b\([Ff]\)itxers de sistema\([^[:alnum:]]\)/\1itxers del sistema\2/g
s/\b\([Rr]\)enderització directa de gràfics\([^[:alnum:]]\)/\1enderització directa dels gràfics\2/g
# GCompris
s/, podeu traduir el GCompris\([^[:alnum:]]\)/, el podeu traduir\1/g
s/\barrossega'ls al punt corresponent\([^[:alnum:]]\)/arrossega'ls fins al punt corresponent\1/g
s/\bbaixades\/actualitzacions\([^[:alnum:]]\)/baixades o actualitzacions\1/g
s/\bcorreccions d'errors en diverses activitats\([^[:alnum:]]\)/correccions d'errors en múltiples activitats\1/g
s/\b\(dividir\|multiplicar\) de l'1 al 10\([^[:alnum:]]\)/\1 des de l'1 fins al 10\2/g
s/\bEquip de traducció de KDE al català\([^[:alnum:]]\)/Equip de traducció de KDE al català (valencià)\1/g
s/\bGraduació a trobar\([^[:alnum:]]\)/Graduació que s'ha de trobar\1/g
s/\bnatura actual a la paraula actual\([^[:alnum:]]\)/natura seleccionada a la paraula actual\1/g
s/\bnúmeros entre -10 i -1\([^[:alnum:]]\)/números entre el -10 i el -1\1/g
s/\bnúmeros entre -10 i 10\([^[:alnum:]]\)/números entre el -10 i el 10\1/g
s/\bnúmeros entre 0 i 20\([^[:alnum:]]\)/números entre el 0 i el 20\1/g
s/\bnúmeros entre 0 i 100\([^[:alnum:]]\)/números entre el 0 i el 100\1/g
s/\bnúmeros entre 1 i 10\([^[:alnum:]]\)/números entre l'1 i el 10\1/g
s/\bomplir la quadrícula\([^[:alnum:]]\)/emplenar la quadrícula\1/g
    s/\binformació sobre com omplir-les\([^[:alnum:]]\)/informació sobre com emplenar-les\1/g
s/\bper Samuel\([^[:alnum:]]\)/per en Samuel\1/g
s/\bservir amb --launch activity)/servir amb «--launch activitat»)/g
    s/\bespecífic (--start-level level,/específic («--start-level nivell»,/g
s/\bsobre el Tux\([^[:alnum:]]\)/sobre en Tux\1/g
s/\b\([Rr]estes\|[Ss]umes\) \(amb\|de\) nombres fins a \(10\|15\|20\|100\)\([^[:alnum:]]\)/\1 \2 nombres fins al \3\4/g
s/\bté la voltant\([^[:alnum:]]\)/té al voltant\1/g
s/\btraduccions a l'àrab\([^[:alnum:]]\)/traduccions per a l'àrab\1/g
s/\bTroba el bongo\([^[:alnum:]]\)/Troba els bongos\1/g
s/\bUtilitzeu el teclat numèric o el teclat per a introduir el valor corresponent al punt indicat en la línia graduada\([^[:alnum:]]\)/Useu el teclat numèric o el teclat per a introduir el valor corresponent al punt indicat en la línia graduada\1/g
s/\bUtilitzeu les fletxes per a moure el cursor a la posició corresponent al valor indicat a la línia graduada\([^[:alnum:]]\)/Useu les fletxes per a moure el cursor fins a la posició corresponent pel valor indicat a la línia graduada\1/g
# GitKlient
s/\bNavegació pels fitxers:\([^[:alnum:]]\)/Navegueu pels fitxers:\1/g
s/\bTancament de la vista prèvia\([^[:alnum:]]\)/Tanqueu la vista prèvia\1/g
s/\bVisualització del fitxer:\([^[:alnum:]]\)/Visualitzeu el fitxer:\1/g
#
s/\bdel «stash\([^[:alnum:]]\)/de l'«stash\1/g
s/\bel «stash\([^[:alnum:]]\)/l'«stash\1/g
s/\bés en aquesta etiqueta\([^[:alnum:]]\)/està en aquesta etiqueta\1/g
s/\bés a la comissió\([^[:alnum:]]\)/està a la comissió\1/g
# Glaxnimate
s/\bCanvia el nom del color de la mostra\([^[:alnum:]]\)/Canvia el nom de la mostra de color\1/g
s/\bDe la paleta…/Des de la paleta…/g
s/\b\([Dd]\)esenllaça \(el color\|el traç\|l'emplenament\)\([^[:alnum:]]\)/\1esvincula \2\3/g
s/\bEnllaça \(el color\|el traç\|l'emplenament\|les formes\)\([^[:alnum:]]\)/Vincula \1\2/g
s/\benllaça \(el color\|el traç\|l'emplenament\|les formes\)\([^[:alnum:]]\)/vincula \1\2/g
    s/\b\([Vv]\)incula el color de %1\([^[:alnum:]]\)/\1incula amb el color %1\2/g
    s/\b\([Vv]\)incula les formes a la mostra\([^[:alnum:]]\)/\1incula les formes amb la mostra\2/g
s/\bLes imatges ràster s'han de traçar en vectors\([^[:alnum:]]\)/Les imatges ràster s'han de traçar a dins de vectors\1/g
s/\bPredefinits de degradat\([^[:alnum:]]\)/Predefinits amb degradats\1/g
# Ghostwriter
s/\bCoincideix &automàticament els caràcters\([^[:alnum:]]\)/Fes coincidir \&automàticament els caràcters\1/g
s/\bFitxer de &còpia de seguretat en desar\([^[:alnum:]]\)/Fes una \&còpia de seguretat del fitxer en desar\1/g
# Grantlee-editor
s/\b\([Pp]\)àgina extra\([^[:alnum:]]\)/\1àgina addicional\2/g
# Gwenview
s/\bEnllaça a…\([^[:alnum:]]\)/Enllaça amb…\1/g
s/\bpantalles que es calibraran amb l'espai de color sRGB\([^[:alnum:]]\)/pantalles calibrades amb l'espai de color sRGB\1/g
# Haruna
s/, l'estat (visible\/ocult) de la llista de reproducció es recorda en els reinicis\([^[:alnum:]]\)/, es recordarà l'estat (visible\/ocult) de la llista de reproducció en els reinicis\1/g
s/\bComproveu els paràmetres de «Reproducció» per a més detalls\([^[:alnum:]]\)/Per a més detalls, comproveu les opcions de configuració de «Reproducció»\1/g
s/\bQuan se selecciona, els subtítols es poden representar\([^[:alnum:]]\)/Quan se selecciona, els subtítols es podran representar\1/g
# Hash-o-Matic
# Heaptrack
s/\bQuan no se selecciona, de manera predeterminada està activada\([^[:alnum:]]\)/Quan no se selecciona, de manera predeterminada estarà activada\1/g
# incidenceeditor
s/\bposant els vostres valors predeterminats a l'editor automàticament\([^[:alnum:]]\)/posant automàticament els vostres valors predeterminats a l'editor\1/g
# index-fm
s/\bExploració i navegació\([^[:alnum:]]\)/Exploreu i navegueu\1/g
# Juk
s/\b\([Mm]\)arques de peça\([^[:alnum:]]\)/\1arques de la peça\2/g
# K3b
s/\bAfegeix fitxer de subtítols\([^[:alnum:]]\)/Afegeix un fitxer de subtítols...\1/g
s/\bdades a gravar\([^[:alnum:]]\)/dades que es gravaran\1/g
s/\bD'aquesta manera els sectors que són illegibles de manera intencionada es poden llegir\([^[:alnum:]]\)/D'aquesta manera es podran llegir els sectors que són illegibles de manera intencionada\1/g
s/\bEscull fitxer d'imatge\([^[:alnum:]]\)/Escolliu un fitxer d'imatge\1/g
s/\besborrarà automàticament els CD-RW i formatarà els DVD-RW abans de l'escriptura es troba un suport no buit\([^[:alnum:]]\)/esborrarà automàticament els CD-RW i els formatarà abans de l'escriptura si troba un suport no buit\1/g
s/\bFormata\/esborra\([^[:alnum:]]\)/Formata i esborra\1/g
s/\bGrava imatge…\([^[:alnum:]]\)/Grava la imatge…\1/g
s/\bImporta sessió…\([^[:alnum:]]\)/Importa la sessió…\1/g
s/\brendiment de lectura\/escriptura\([^[:alnum:]]\)/rendiment de lectura i escriptura\1/g
s/\bseguir enllaços a carpetes\([^[:alnum:]]\)/seguir enllaços cap a carpetes\1/g
s/\bSi es marca aquesta opció, el K3b fa servir un espai\([^[:alnum:]]\)/Si es marca aquesta opció, el K3b usarà un espai\1/g
# KAddressBook
# kaidan
s/\"Afegeix contacte\"/\"Afegeix un contacte\"/g
s/\b\([Aa]\)dreça de xat\([^[:alnum:]]\)/\1dreça del xat\2/g
s/\bAfegeix una part oculta del missatge\([^[:alnum:]]\)/Afegeix una part oculta al missatge\1/g
s/\bAixò no es pot desfer\([^[:alnum:]]\)/Això no es podrà desfer\1/g
s/\bCanvia els paràmetres del vostre compte\([^[:alnum:]]\)/Canvia la configuració del vostre compte\1/g
s/\bConfigureu aquest dispositiu per a no exposar la contrasenya per a canviar-lo o canviar a un altre dispositiu. Si voleu canviar la contrasenya o utilitzar el vostre compte en un altre dispositiu més tard, <b>considereu desar la contrasenya en un altre lloc\([^[:alnum:]]\)/Configureu aquest dispositiu perquè no s'exposi la contrasenya quan es canviï aquesta o es canviï a un altre dispositiu. Si voleu canviar la contrasenya o utilitzar el vostre compte en un altre dispositiu més tard, <b>considereu emmagatzemar la contrasenya en un altre lloc\1/g
s/\bDemana al contacte compartir la disponibilitat del contacte\([^[:alnum:]]\)/Demana al contacte compartir la disponibilitat\1/g
s/\bdesprés que us hàgiu connectat\([^[:alnum:]]\)/una vegada us hàgiu connectat\1/g
s/\bIntroduïu alguns paràmetres de connexió diferents per a canviar-los\([^[:alnum:]]\)/Introduïu paràmetres de connexió diferents per a canviar-los\1/g
s/\blletres d'a a f\([^[:alnum:]]\)/lletres des de l'a fins la f\1/g
s/\bPara compartir\([^[:alnum:]]\)/Per a compartir\1/g
s/\bVerifica dispositius\([^[:alnum:]]\)/Verifica els dispositius\1/g
# kajongg
s/\bConfiguració|Jugadors\([^[:alnum:]]\)/Configuració -> Jugadors\1/g
s/\bja està executant-se\([^[:alnum:]]\)/ja s'està executant\1/g
# Kalarm
s/\b\([Cc]\)om enviar els correus electrònics\([^[:alnum:]]\)/\1om s'enviarà el correu electrònic\2/g
    s/\bquan s'activa una alarma\([^[:alnum:]]\)/quan s'activi una alarma\1/g
s/\bMarqueu\(-la\|\) \(per a executar\|perquè es demani\|perquè se us requereixi\)\([^[:alnum:]]\)/Trieu\1 \2\3/g
s/\bSi està marcada, la finestra serà una finestra normal amb una barra de títol, que quan es mostra, captura l'entrada de teclat\([^[:alnum:]]\)/Si està marcada, la finestra serà una normal amb una barra de títol, que quan es mostri, capturarà l'entrada del teclat\1/g
# Kalendar
s/\"Calendar\"/\"Calendari\"/g
s/\"Kalendar Mail\"/\"Correu del Kalendar\"/g
    s/\bGestioneu el correu amb el Kalendar Mail\([^[:alnum:]]\)/Gestioneu la correspondència amb el Correu del Kalendar\1/g
s/\bamb el Calendar\([^[:alnum:]]\)/amb el Calendari\1/g
s/\bamb el Contacts del Kalendar\([^[:alnum:]]\)/amb els Contactes del Kalendar\1/g
s/\bConfiguració de publicació de lliure\/ocupat\([^[:alnum:]]\)/Configuració de la publicació de lliure\/ocupat\1/g
s/\bPublica la informació de lliure\/ocupat automàticament\([^[:alnum:]]\)/Publica automàticament la informació de lliure\/ocupat\1/g
# KAlgebraposició vertical i relaxat
# Kalm
s/\bAl principi,/Al començament,/g
s/\b\([Aa]lmenys\|[Rr]epetiu\) \(5\|10\)-\(10\|30\) vegades\([^[:alnum:]]\)/\1 de \2 fins a \3 vegades\4/g
s/\bamb la barbeta amb un angle\([^[:alnum:]]\)/amb la barbeta en un angle\1/g
s/\bBaixeu la mà al melic\([^[:alnum:]]\)/Baixeu la mà fins al melic\1/g
s/\bdurant 5-10 minuts\([^[:alnum:]]\)/durant 5 o 10 minuts\1/g
s/\bposició vertical i relaxat\([^[:alnum:]]\)/posició vertical i relaxada\1/g
s/\brespiració iòguica\([^[:alnum:]]\)/respiració lòguica\1/g
s/\b\(respirar només\|[Rr]espireu\) \(al\|en el\) ventre\([^[:alnum:]]\)/\1 a dins del ventre\3/g
s/\bSentiu com s'enfonsen les clavícules\([^[:alnum:]]\)/Sentiu ara com s'enfonsen\1/g
# Kalzium
# Kamoso
s/\"Comparteix element…\"/\"Comparteix l'element…\"/g
# kapptemplate
s/\b\([Pp]\)er a les Frameworks\([^[:alnum:]]\)/\1er als Frameworks\2/g
# KArchive
s/\bEl fitxer %1 és \(a\|en\) la carpeta\([^[:alnum:]]\)/El fitxer %1 es troba a la carpeta\2/g
s/\bés massa grossa\([^[:alnum:]]\)/és massa gran\1/g
s/\bLa partició és plena[?]\([^[:alnum:]]\)/La partició està plena\?\1/g
s/\bper afegir-lo a l'arxiu\([^[:alnum:]]\)/per a afegir-lo a l'arxiu\1/g
# Karp
# Kasts
s/\bde: Configuració > Xarxa/de «Configuració -> Xarxa»/g
s/\bMou pòdcast\([^[:alnum:]]\)/Mou els pòdcast\1/g
s/\breproduir\/fer pausa\([^[:alnum:]]\)/reproduir o fer pausa\1/g
s/\bSense títol de peça\([^[:alnum:]]\)/Peça sense títol\1/g
# Kate
s/\bCanvi d'escala del contingut:\([^[:alnum:]]\)/Canvieu l'escala del contingut:\1/g
s/\bConfigura el connector de CTags\([^[:alnum:]]\)/Configureu el connector de CTags\1/g
s/\bConfirmació pel tancament de fitxers\([^[:alnum:]]\)/Confirmeu per al tancament de fitxers\1/g
s/\bHistorial Desfés\([^[:alnum:]]\)/Historial «Desfés»\1/g
s/\bObre recursivament els fitxers\([^[:alnum:]]\)/Obriu recursivament els fitxers\1/g
s/\bPersonalització de la sortida\([^[:alnum:]]\)/Personalitzeu la sortida\1/g
#
s/» pel \(nom del \|\)directori base del projecte\([^[:alnum:]]\)/» per al \1directori base del projecte\2/g
s/\banar fins a la configuració\([^[:alnum:]]\)/anar a la configuració\1/g
s/\bDescarta línies\([^[:alnum:]]\)/Descarta les línies\1/g
s/\bdiagnòstics, ignorant la resta de diagnòstics\([^[:alnum:]]\)/diagnòstics, s'ignoren la resta\1/g
s/\beina s'executarà a tots\([^[:alnum:]]\)/eina s'executarà sobre tots\1/g
s/\bExecuta l'ESLint en el fitxer actual\([^[:alnum:]]\)/Executa l'ESLint sobre el fitxer actual\1/g
s/\bFixa\/deixa de fixar\([^[:alnum:]]\)/Fixa o deixa de fixar\1/g
s/\bHa finalitzat l'anàlisi de %\([12]\) fitxer\./Ha finalitzat l'anàlisi d'%\1 fitxer./g
s/\bJa està construint-se\([^[:alnum:]]\)/Ja s'està construint\1/g
s/\b\([Pp]\)arèntesis acolorits\([^[:alnum:]]\)/\1arèntesis en color\2/g
    s/\bper a l'acoloriment dels parèntesis\([^[:alnum:]]\)/per a donar color als parèntesis\1/g
s/\bportar a terme diverses operacions a múltiples projectes\([^[:alnum:]]\)/portar a terme diverses operacions a través de múltiples projectes\1/g
s/\bRessalta la línia de destí quan s'hi salta\([^[:alnum:]]\)/Ressalta la línia de destinació quan s'hi salta\1/g
s/\bSi està marcada, això permet desplaçar\([^[:alnum:]]\)/Si està marcada, es permetrà desplaçar\1/g
s/\bSi està marcada, el text de les pestanyes es pot\([^[:alnum:]]\)/Si està marcada, el text de les pestanyes es podrà\1/g
s/\bSTDOUT i STDERR i no\([^[:alnum:]]\)/STDOUT i STDERR, i no\1/g
s/\bsuppressed:\([^[:alnum:]]\)/suprimit:\1/g
s/\bteclegeu el terme a buscar\([^[:alnum:]]\)/teclegeu el terme que se cercarà\1/g
# KBibTeX
# KBlackBox
# KCachegrind
s/\bfer servir el de cost més elevat\([^[:alnum:]]\)/s'usarà el de cost més elevat\1/g
s/\bLa KPluginFactory\([^[:alnum:]]\)/KPluginFactory\1/g
s/\bKPluginFactory no ha pogut carregar una instància\([^[:alnum:]]\)/KPluginFactory no ha pogut crear una instància\1/g
s/\bNo s'ha pogut localitzar o carregar KPart del KUiViewer\([^[:alnum:]]\)/No s'ha pogut localitzar o crear una KPart del KUiViewer\1/g
s/\bSi no s'ha visitat cap cridador\([^[:alnum:]]\)/Si no se n'ha visitat cap\1/g
# Kcalutils
s/\bLa resposta <b>%1<\/b> s'ha enregistrat/S'ha enregistrat la resposta <b>%1<\/b>/g
# KClock
s/\bAquest temporitzador és en mode\([^[:alnum:]]\)/Aquest temporitzador es troba en el mode\1/g
s/\bEl cronòmetre és en mode\([^[:alnum:]]\)/El cronòmetre es troba en el mode\1/g
s/\b\([Ii]\)matge en la imatge\([^[:alnum:]]\)/\1matge a la imatge\2/g
# kde-cli-tools
s/\bA l'acció que heu demanat li calen\([^[:alnum:]]\)/A l'acció que heu demanat calen\1/g
s/\bels paràmetres de configuració\([^[:alnum:]]\)/les opcions de configuració\1/g
# kde-inotify-survey
s/\bAugment\(a\|\) el límit \(d'instàncies\|de vigilància\)\([^[:alnum:]]\)/Augmenta el límit \2\3/g
s/\bBaixa capacitat \(d'instàncies\|de vigilància\)\([^[:alnum:]]\)/Baixa la capacitat \1\2/g
# KDE Connect
s/\bEnvia notificacions\([^[:alnum:]]\)/Envia les notificacions\1/g
    s/\bEnvia les notificacions per a les trucades entrants\([^[:alnum:]]\)/Envia notificacions per a les trucades entrants\1/g
# KDE Itinerary
s/\bArribada a %1\([^[:alnum:]]\)/Arribada a les %1\1/g
s/\bPortabilitat de dades\([^[:alnum:]]\)/Portabilitat de les dades\1/g
# kdeconnect
s/\banterior\/següent\([^[:alnum:]]\)/anterior o següent\1/g
s/\bMoveu un dit a la pantalla\([^[:alnum:]]\)/Moveu un dit sobre la pantalla\1/g
# kdelibs4support
# Kdenlive
s/\bDifuminat i agudització\([^[:alnum:]]\)/Difumineu i aguditzeu\1/g
s/\bNavegació i reproducció\([^[:alnum:]]\)/Navegueu i reproduïu\1/g
 #
s/, una llista desplegable de valors possibles que es mostraran en/, apareixerà una llista desplegable de valors possibles que s'oferiran durant/g
s/, una lli sta de cUna llista separada per salts de línia de valors possibles que s'oferiran en/, apareixerà una llista separada per salts de línia de valors possibles que s'oferiran durant/g
    s/\bagrupa temporalment els clips separats i crea o elimina\([^[:alnum:]]\)/agruparà temporalment els clips separats i crearà o eliminarà\1/g
    s/\ballarga o escurça el clip i mou\([^[:alnum:]]\)/allargarà o escurçarà el clip i mourà\1/g
    s/\bllisca el clip sota la finestra\([^[:alnum:]]\)/farà lliscar el clip sota la finestra\1/g
# s/\bAfegeix una seqüència d'imatges\([^[:alnum:]]\)/Afegiu una seqüència d'imatges\1/g
s/\b\([Aa]\)fecta a tots els clips d'àudio per igual\([^[:alnum:]]\)/\1fectarà a tots els clips d'àudio per igual\2/g
s/\bArxivament del projecte\([^[:alnum:]]\)/Arxiveu el projecte\1/g
s/\bCliqueu anàlisi per a aplicar l'efecte\([^[:alnum:]]\)/Analitza per a aplicar l'efecte\1/g
s/\bcomparar els paràmetres\([^[:alnum:]]\)/comparar les opcions de configuració\1/g
s/\bDesament d'una còpia\([^[:alnum:]]\)/Deseu una còpia\1/g
s/\bDesament de la imatge\"/Deseu la imatge\"/g
s/\bEdició de la categoria \(de les guies\|dels marcadors\)\([^[:alnum:]]\)/Editeu la categoria \1\2/g
s/\bEstabilització del clip\([^[:alnum:]]\)/Estabilitzeu el clip\1/g
s/\bEsteu utilitzant diversos predefinits en un perfil\([^[:alnum:]]\)/Esteu emprant múltiples predefinits en un perfil\1/g
s/\bExemple: Per a ajustar el llindar de lluminositat, marqueu aquesta casella i ajusteu el llindar fins que es ressalti tota la font de llum\([^[:alnum:]]\)/Exemple: Per a ajustar el llindar de brillantor, marqueu aquesta casella i ajusteu el llindar fins que es ressalti tota la font de llum\1/g
s/\bExporta marcadors\([^[:alnum:]]\)/Exporta els marcadors\1/g
s/\bExportació d'efecte personalitzat\([^[:alnum:]]\)/Exporteu un efecte personalitzat\1/g
s/\bExportació de guies\([^[:alnum:]]\)/Exporteu les guies\1/g
s/\bExportació de les dades de guies\([^[:alnum:]]\)/Exporteu les dades de les guies\1/g
s/\bIntroducció del camí de les plantilles\([^[:alnum:]]\)/Introduïu el camí de les plantilles\1/g
s/\bIntroducció del nom dels valors predefinits\([^[:alnum:]]\)/Introduïu el nom dels valors predefinits\1/g
s/\bLlindar de la lluminositat\([^[:alnum:]]\)/Llindar de la brillantor\1/g
s/\bLluminositat \(de cada píxel\|de la imatge\|de les àrees\|dels píxels\)\([^[:alnum:]]\)/Brillantor \1\2/g
    s/\blluminositat \(de cada píxel\|de la imatge\|de les àrees\|dels píxels\)\([^[:alnum:]]\)/brillantor \1\2/g
    s/\bPunta del pinzell\([^[:alnum:]]\)/Punta de pinzell\1/g
    s/\bpunta de pinzell\([^[:alnum:]]\)/punta del pinzell\1/g
    s/\bBrillantor de la imatge de la punta del pinzell\([^[:alnum:]]\)/Lluminositat de la imatge de la punta del pinzell\1/g
    s/\bbrillantor de la imatge de la punta del pinzell\([^[:alnum:]]\)/lluminositat de la imatge de la punta del pinzell\1/g
    s/\bconservar la brillantor de la imatge\([^[:alnum:]]\)/conservar la lluminositat de la imatge\1/g
    s/\bvalors de brillantor de la imatge\([^[:alnum:]]\)/valors de lluminositat de la imatge\1/g
        s/\bescala els valors de lluminositat de la imatge\([^[:alnum:]]\)/escala els valors de lluminositat de la imatge\1/g
s/\b\([Mm]\)arc actual de clip\([^[:alnum:]]\)/\1arc actual del clip\2/g
s/\bMostra les estadístiques de la lluminositat\([^[:alnum:]]\)/Mostra les estadístiques de la brillantor\1/g
s/\b\([Mm]\)ultiplicador d'augment d'escalat de la lluminositat\([^[:alnum:]]\)/\1ultiplicador d'augment d'escalat de la brillantor\2/g
s/\bno funciona amb diversos subtítols\([^[:alnum:]]\)/no funciona amb múltiples subtítols\1/g
s/\b\([Nn]\)o s'ha pogut trobar el %1/\1o s'ha pogut trobar el «%1»/g
s/\bObre un projecte arxivat\([^[:alnum:]]\)/Obriu un projecte arxivat\1/g
s/\bper a fer activa\/inactiva\([^[:alnum:]]\)/per a fer activa o inactiva\1/g
s/\bper fer-lo servir\([^[:alnum:]]\)/per a utilitzar-lo\1/g
s/\bPrimer definiu els punts\([^[:alnum:]]\)/Primer establiu els punts\1/g
s/\bQuan el paràmetre es defineix a\([^[:alnum:]]\)/Quan el paràmetre s'estableix a\1/g
s/\bRestauració de fitxer de còpia de seguretat\([^[:alnum:]]\)/Restaureu el fitxer de còpia de seguretat\1/g
s/\bsi no s'indica cap\([^[:alnum:]]\)/si no se n'indica cap\1/g
s/\bTranscodificació del clip\([^[:alnum:]]\)/Transcodifiqueu el clip\1/g
s/\bTria la versió del fitxer\([^[:alnum:]]\)/Trieu la versió del fitxer\1/g
#
s/\bcal %1 pistes\([^[:alnum:]]\)/calen %1 pistes\1/g
s/\bCarpeta predeterminada de destí\([^[:alnum:]]\)/Carpeta predeterminada de destinació\1/g
s/\bCàrrega de disposició\([^[:alnum:]]\)/Carrega la disposició\1/g
s/\bCmd\([^[:alnum:]]\)/Ordre\1/g
s/\bdessincronització d'àudio\/vídeo\([^[:alnum:]]\)/dessincronització de l'àudio i el vídeo\1/g
s/\bDiàleg de clip\([^[:alnum:]]\)/Diàleg del clip\1/g
s/\bEn prémer el botó del ratolí i després movent el ratolí /Premeu el botó del ratolí i després moveu el ratolí, /g
s/\bExtensió de fitxer del fitxer de sortida\([^[:alnum:]]\)/Extensió del fitxer de sortida\1/g
s/\bfiltre gaussià\([^[:alnum:]]\)/filtre «Gaussià»\1/g
s/\bno a producció\([^[:alnum:]]\)/no per a producció\1/g
s/\bnomées\([^[:alnum:]]\)/només\1/g
s/\bper a cada un\([^[:alnum:]]\)/per a cadascun\1/g
s/\bpercentatge de gran aplicat la canal\([^[:alnum:]]\)/percentatge de gra aplicat al canal\1/g
s/\bPila d'efectes\/composicions\([^[:alnum:]]\)/Pila d'efectes i composicions\1/g
s/\bpodeu seleccionar una secció de la pantalla per a obtenir-ne un color mitjà/podreu seleccionar una secció de la pantalla per a obtenir-ne un color mitjà/g
s/\bQuan s'ha activat, el Kdenlive\([^[:alnum:]]\)/Quan se selecciona, el Kdenlive\1/g
s/\bQuan se selecciona, un clic en un recurs de la línia de temps selecciona el recurs\([^[:alnum:]]\)/Quan se selecciona, un clic sobre un recurs de la línia de temps el seleccionarà\1/g
s/\bReinicialitza efecte\([^[:alnum:]]\)/Reinicialitza l'efecte\1/g
# kdepim-addons
s/\bVacuum de l'Akonadi\([^[:alnum:]]\)/Buidatge de l'Akonadi\1/g
# kdepim-runtime
s/\bNo s'ha definit cap nom d'usuari\([^[:alnum:]]\)/No s'ha establert cap nom d'usuari\1/g
s/\bNomés sincronitza les dades\([^[:alnum:]]\)/Sincronitza només les dades\1/g
s/\bPhi 4 mini reasoning\([^[:alnum:]]\)/Phi 4 «reasoning mini»\1/g
s/\bSi està marcada, els missatges més recents es mantenen fins que s'ocupa la quota i després se suprimeixen\([^[:alnum:]]\)/Si està marcada, els missatges més recents es mantindran fins que s'ocupi la quota i després se suprimiran\1/g
# kdeplasma-addon
s/\"Mostra quan se selecciona:\"/\"Mostra quan està activada:\"/g
# Kdesvn
s/\bla comissió no manllevarà els blocatges\([^[:alnum:]]\)/la comissió no treurà els blocatges\1/g
s/\bExtracció des d\(el\|'un\) repositori…\([^[:alnum:]]\)/Extreu des d\1 repositori…\2/g
s/\bQuan se selecciona, Kdesvn obté\([^[:alnum:]]\)/Quan se selecciona, el Kdesvn obtindrà\1/g
# kdev-embedded
# kdev-python
s/\b\([Pp]\)rogram\(a\|es\) Python\([^[:alnum:]]\)/\1rogram\2 en Python\3/g
# kdev-valgrind
s/\bQuan es marca (no de manera predeterminada), el Helgrind tracta\([^[:alnum:]]\)/Quan es marca (no de manera predeterminada), el Helgrind tractarà\1/g
s/\bQuan es marca (predeterminat), el Helgrind porta\([^[:alnum:]]\)/Quan es marca (predeterminat), el Helgrind portarà\1/g
s/\bQuan es marca, el Memcheck comprova\([^[:alnum:]]\)/Quan es marca, el Memcheck comprovarà\1/g
s/\bQuan es marca, el Valgrind atura l'informe d'errors després trobar-ne\([^[:alnum:]]\)/Quan es marca, el Valgrind deixarà d'informe d'errors una vegada s'hagin vist\1/g
# KDevelop
s/\"\(no \|\)definida actualment\"/\"\1establerta actualment\"/g
s/\bDades de projecte de l'API del fitxer CMake no vàlides\([^[:alnum:]]\)/Dades de projecte no vàlides segons l'API del fitxer de CMake\1/g
s/\bQuan se selecciona, els connectors poden\([^[:alnum:]]\)/Quan se selecciona, els connectors podran\1/g
s/\b\([Ss]\)i aquesta opció està activada\([^[:alnum:]]\)/\1i s'ha marcat aquesta opció\2/g
# kdebugsettings
s/\bReanomena un grup…\([^[:alnum:]]\)/Reanomena el grup…\1/g
# KDiff3
s/\bEl fitxer %1 és massa gran per a processar\./El fitxer %1 és massa gran per a processar-lo./g
# KeepSecret
s/\bCreació de cartera nova\([^[:alnum:]]\)/Creeu una cartera nova\1/g
s/\bTrieu una cartera de la llista\([^[:alnum:]]\)/Trieu una cartera des de la llista\1/g
 #
s/\bGestiona contrasenyes\([^[:alnum:]]\)/Gestiona les contrasenyes\1/g
# KEXI
s/\bconnexió amb el servidor de base de dades amb el projecte\([^[:alnum:]]\)/connexió del servidor de base de dades amb el projecte\1/g
# kfilemetadata
s/\b\(Guany d'àlbum\|Guany de peça\)\( de\|:\) ReplayGain\([^[:alnum:]]\)/\1 en el guany de reproducció\3/g
s/\bReplayGain: \(Pic d'àlbum\|Pic de peça\)\([^[:alnum:]]\)/\1 en el guany de reproducció\2/g
# KFourInLine
# KGeography
s/\bSi el consell d'eina del mapa seguirà el ratolí quan es prem i es mou cap a través del mapa\([^[:alnum:]]\)/Si quan es premi el consell d'eina del mapa seguirà el ratolí i es mourà a través del mapa\1/g
s/\bVoleu baixar Alentejo\([^[:alnum:]]\)/Baixo Alentejo\1/g
# Kget
s/\bEl torno a baixar\([^[:alnum:]]\)/El voleu tornar a baixar\1/g
s/\bfitxers\/transferències\([^[:alnum:]]\)/fitxers i transferències\1/g
s/\bLa transferència següent s'ha iniciat\([^[:alnum:]]\)/S'ha iniciat la transferència següent\1/g
s/\bLes transferències següents s'han afegit\([^[:alnum:]]\)/S'han afegit les transferències següents\1/g
s/\bL\(a\|es\) suprimeixo i torno a baixar-l\(a\|es\)\([^[:alnum:]]\)/L\1 voleu suprimir i tornar a baixar\3/g
# KGoldrunner
s/\bpots anar fins a un diàleg en el qual pots editar els detalls\([^[:alnum:]]\)/pots anar fins a un diàleg en el qual podràs editar els detalls\1/g
s/\bves cap a dalt a atrapar\([^[:alnum:]]\)/ves cap a dalt per a atrapar\1/g
# KGpg
s/\bEn marcar aquesta opció i seleccionar una clau\([^[:alnum:]]\)/Quan es marca esta opció, i se seleccioni una clau\1/g
# KGraphViewer
s/\bConfiguració de pàgina…\([^[:alnum:]]\)/Configura la pàgina…\1/g
# KHangman
s/\bEs selecciona una paraula aleatòriament\([^[:alnum:]]\)/Es tria una paraula aleatòriament\1/g
# KHelpCenter
s/(a la carpeta que el conté)/(en la carpeta que el conté)/g
s/, que per descomptat\([^[:alnum:]]\)/, el qual per descomptat\1/g
s/\b1459, que manipula\([^[:alnum:]]\)/1459, el qual manipula\1/g
s/\bAquesta icona tan sols s'activa si\([^[:alnum:]]\)/Aquesta icona tan sols s'activarà si\1/g
s/\bfiltres», que converteixen\([^[:alnum:]]\)/filtres», els quals converteixen\1/g
s/\bgui\(button\|label\|menuitem>\)>Per defecte</gui\1>Per omissió</g
s/\bkde; 3, al que substitueix\([^[:alnum:]]\)/kde; 3, al qual substitueix\1/g


# escollint -> triant


# KHTML
# Kid3
s/, que no té dependències/, el qual no té dependències/g
# Kig
s/\bCanvia la part mostrada a pantalla\([^[:alnum:]]\)/Canvia la part mostrada a la pantalla\1/g
# Kile
s/\"\(«\|\)\(Alt\|Ctrl\|Meta\|Ordre\)\(»\|\) +\(»\|\) \(Ctrl\|Majúscules\|Ordre\)\"/\"\2+\5\"/g
s/\bConfiguració -> Configura el Kile ->/Configuració -> Configura el Kile… ->/g
s/\bmenú Configuració i trieu «Configura el Kile»\([^[:alnum:]]\)/menú Configuració i trieu «Configura el Kile…»/g
s/\b\([Vv]\)ector diferència\([^[:alnum:]]\)/\1ector de la diferència\2/g
# KImageMapEditor
s/\bEditant una correspondència a imatge amb HTML\([^[:alnum:]]\)/Editant una correspondència d'imatge en l'HTML\1/g
# kimap
s/\bsessió, no s'ha pogut fer la negociació\([^[:alnum:]]\)/sessió, ha fallat la negociació\1/g
# KInfoCenter
s/\bp…er maquinari\([^[:alnum:]]\)/per maquinari\1/g
# KIO
s/\bDefineix l'eina predeterminada\([^[:alnum:]]\)/Estableix l'eina predeterminada\1/g
s/\b\([Ee]\)nllaç nou a una aplicació\([^[:alnum:]]\)/\1nllaç nou amb una aplicació\2/g
s/\bindicador està activat\([^[:alnum:]]\)/indicador està establert\1/g
    s/\bindicador d'apegalós està activat\([^[:alnum:]]\)/indicador d'apegalós està establert\1/g
s/\bIntroduïu aquí els arguments a fer servir en iniciar\([^[:alnum:]]\)/Introduïu aquí els arguments que s'usaran quan s'iniciï\1/g
s/\b\([Nn]\)avegar cap a una ubicació\([^[:alnum:]]\)/\1avegar fins a una ubicació\2/g
s/\bopenSUSE Bugzilla\([^[:alnum:]]\)/Bugzilla de l'openSUSE\1/g
s/\bPer això, tot el que cal fer\([^[:alnum:]]\)/Per a fer això, tot el que cal fer\1/g
s/\bquadre del diàleg\([^[:alnum:]]\)/diàleg\1/g
s/\bquan s'hagi completat la transferència\([^[:alnum:]]\)/una vegada s'hagi completat la transferència\1/g
s/\buna vegada que la transferència hagi estat completada\([^[:alnum:]]\)/una vegada s'hagi completat la transferència\1/g
s/\bwww\.example\.com\([^[:alnum:]]\)/www.exemple.com\1/g
    s/\bgaletes originades a www.exemple.com\([^[:alnum:]]\)/galetes originades des de www.exemple.com\1/g
# kio-extras
s/, que els permetrà/, el qual els permetrà/g
# KIPI plugins
s/\bSi està marcada, podeu establir etiquetes extres\([^[:alnum:]]\)/Si està marcada, podreu establir etiquetes addicionals\1/g
# Kirigami
s/\ba els nostres\([^[:alnum:]]\)/als nostres\1/g
s/\b\(Capçalera\|Peu de pàgina\) de full\([^[:alnum:]]\)/\1 del full\2/g
s/\bPer a donar suport al desenvolupament la comunitat\([^[:alnum:]]\)/Per a donar suport al desenvolupament, la comunitat\1/g
s/\bposar-la a «CardsLayout\([^[:alnum:]]\)/posar-la en una «CardsLayout\1/g
s/\bS'utilitza %1 i s'ha construït amb %2\([^[:alnum:]]\)/usa la %1 i s'ha construït amb la %2\1/g
s/\busar-la a «ColumnLayout\([^[:alnum:]]\)/usar-la en una «ColumnLayout\1/g
# kiss
s/\bCerca idiomes\([^[:alnum:]]\)/Cerca els idiomes\1/g
s/\bFeu-vos vostre el Plasma\([^[:alnum:]]\)/Feu vostre el Plasma\1/g
# kldap
# Kleopatra
s/\bConcessió del dret de certificació\([^[:alnum:]]\)/Concediu el dret de certificació\1/g
s/\bGeneració de les claus\([^[:alnum:]]\)/Genereu les claus\1/g
 #
s/\bÉs útil si no es troba cap \([Cc]\)onfiguració del sistema adequada per a \(EMAIL_prefill\|NAME_prefill\)\([^[:alnum:]]\)/És útil si no es troba cap configuració del sistema adequada\3/g
s/\bGestiona grups…/Gestiona els grups…/g
s/\bIntroduïu noms de domini\([^[:alnum:]]\)/Introduïu els noms de domini\1/g
s/\bllavors podeu desactivar-ho\([^[:alnum:]]\)/llavors podeu desactivar-la\1/g
s/\bnom@example.com\([^[:alnum:]]\)/nom@exemple.cat\1/g
s/\bOrdres del servidor IU i diàlegs\([^[:alnum:]]\)/Ordres i diàlegs del servidor d'IU\1/g
s/\bSigna\/encripta\([^[:alnum:]]\)/Signa i encripta\1/g
s/\b\([Vv]\)alor preomplert\([^[:alnum:]]\)/\1alor emplenat prèviament\2/g
# KleverNotes
s/\bCategoria\/Grup\/Nota\([^[:alnum:]]\)/Categoria, Grup o Nota\1/g
s/\bEncapçalament\([12234567890]\)\([^[:alnum:]]\)/Encapçalament \1\2/g
s/\bhttps:\/\/www\.example\.com/https:\/\/www.exemple.com/g
s/\bMostra\/oculta\([^[:alnum:]]\)/Mostra o oculta\1/g
# KMail
s/\bbiblioteca adblock rust nova\([^[:alnum:]]\)/biblioteca adblock nova escrita en Rust\1/g
s/\bDefiniu la vostra adreça\([^[:alnum:]]\)/Configureu la vostra adreça\1/g
s/\bCliqueu a la icona per a més detalls\([^[:alnum:]]\)/Per a més detalls, cliqueu a la icona\1/g
s/\bFent servir la clau serà més fiable\([^[:alnum:]]\)/Usant la clau serà més fiable\1/g
s/\bImporta\/Exporta\([^[:alnum:]]\)/Importa o exporta\1/g
s/\bQuan es comprovi,/Quan se seleccioni,/g
s/\bTrieu els certificats que s'hauria\([^[:alnum:]]\)/Trieu els certificats que s'haurien\1/g
# kmailtransport
# KMix
s/\bThe KMix Authors\([^[:alnum:]]\)/Els autors del KMix\1/g
s/\bUtilitat per a guardar\/restaurar\([^[:alnum:]]\)/Utilitat per a guardar i restaurar\1/g
# KMuddy
# KMymoney
s/\bEdició d'institució\([^[:alnum:]]\)/Edició de la institució\1/g
s/\"Edita el compte\"/\"Editeu un compte\"/g
 #
s/\bActiveu-la si esteu refinançant\([^[:alnum:]]\)/Marqueu-la si esteu refinançant\1/g
s/\bAneu fins a l'editor actual\([^[:alnum:]]\)/Aneu cap a l'editor actual\1/g
s/\bAquest títol es fa servir en diversos comptes\([^[:alnum:]]\)/Aquest títol es fa servir en múltiples comptes\1/g
s/\bAturada d'introducció de planificació\([^[:alnum:]]\)/Atureu la introducció a la planificació\1/g
s/\bcolumna \(Acció\|Accions\|Beneficiari\|Categoria\|Compte\|Conciliació\|Etiqueta\|Número\|Preu\|Recordatori\|Saldo\)\([^[:alnum:]]\)/columna «\1»\2/g
s/\bConfirmació de còpia de seguretat\([^[:alnum:]]\)/Confirmeu una còpia de seguretat\1/g
s/\bcaràcter delimitador\/separador de camp\([^[:alnum:]]\)/caràcter delimitador o separador de camp\1/g
s/\bDesament de fitxer\([^[:alnum:]]\)/Deseu un fitxer\1/g
s/\bEdita una institució…/Edita la institució…/g
s/\bEliminació de pressupost\([^[:alnum:]]\)/Elimineu un pressupost\1/g
s/\bExporta en un directori\([^[:alnum:]]\)/Exporta dins d'un directori\1/g
s/\bcotització és derivada de\([^[:alnum:]]\)/cotització deriva des de\1/g
s/\bGestor de llançaments\([^[:alnum:]]\)/Encarregat dels llançaments\1/g
    s/\bMotor del nucli, Encarregat dels llançaments, administrador del projecte\([^[:alnum:]]\)/Motor del nucli, encarregat dels llançaments i administrador del projecte\1/g
s/\bmodificar diverses operacions en \(aquesta vista\|comptes\)\([^[:alnum:]]\)/modificar múltiples operacions en \1\2/g
s/\bNom d'etiqueta duplicat\([^[:alnum:]]\)/Nom duplicat de l'etiqueta\1/g
s/\bNom de beneficiari duplicat\([^[:alnum:]]\)/Nom duplicat del beneficiari\1/g
s/\bestarà disponible quan s'ha assignat\([^[:alnum:]]\)/estarà disponible quan s'hagi assignat\1/g
s/\bPredeterminat d'operació planificada\([^[:alnum:]]\)/Ometeu l'operació planificada\1/g
s/\bquan les operacions desglossades són part de la selecció\([^[:alnum:]]\)/quan les operacions desglossades formen part de la selecció\1/g
s/\bque es farà servir\([^[:alnum:]]\)/que s'usarà\1/g
s/\bResolució d'assignació de camp\([^[:alnum:]]\)/Resoleu una assignació de camp\1/g
s/\bS'ha produït un error en carregar la plantilla\([^[:alnum:]]\)/S'ha produït un error mentre es carregava la plantilla\1/g
s/\bSupressió d'institució\([^[:alnum:]]\)/Suprimiu una institució\1/g
s/\bSupressió d'una font de cotitzacions\([^[:alnum:]]\)/Suprimiu una font de cotitzacions\1/g
s/\bSupressió de categoria\([^[:alnum:]]\)/Suprimiu una categoria\1/g
s/\bSupressió de perfil QIF\([^[:alnum:]]\)/Suprimiu un perfil QIF\1/g
s/\bSupressió de planificació\([^[:alnum:]]\)/Suprimiu la planificació\1/g
#
s/\bles entrades del llibre major\([^[:alnum:]]\)/les entrades en el llibre major\1/g
s/\bPer això, el perfil no es pot usar\([^[:alnum:]]\)/El perfil no es pot utilitzar per a fer això\1/g
s/\bseleccionades perquè algunes d'aquestes\([^[:alnum:]]\)/seleccionades perquè algunes\1/g
# KNavalBattle
s/\bHostatja una partida\([^[:alnum:]]\)/Allotja una partida\1/g
# KNewStuff
s/\bInformeu-ho a la comunitat KDE amb un informe d'error\([^[:alnum:]]\)/Informeu-ne a la comunitat KDE amb un informe d'error\1/g
# KNotes
s/\b\([Aa]\)rrossegar al calendari\([^[:alnum:]]\)/\1rrossegar a dins del calendari\2/g
# Kooka
# Kommit
s/\bComet\/\([Pp]\)uja\([^[:alnum:]]\)/Comet i puja\2/g
s/\bNo s'ha pogut trobar la comissió de destí de l'etiqueta\([^[:alnum:]]\)/No s'ha pogut trobar la comissió de destinació de l'etiqueta\1/g
s/\bNo seleccionat la comissió\([^[:alnum:]]\)/No s'ha seleccionat la comissió\1/g
s/\bPujada\/Comissió\([^[:alnum:]]\)/Pujada o comissió\1/g
s/\bS'ha produït un error en canviar al destí nou\([^[:alnum:]]\)/S'ha produït un error en canviar a la destinació nova\1/g
# KomoDo
s/\b\([Tt]\)ornar a carregar-la\([^[:alnum:]]\)/\1ornar-la a carregar\2/g
# Kompare
s/\bAmb aquesta opció seleccionada el «diff»\([^[:alnum:]]\)/Amb aquesta opció seleccionada, el «diff»\1/g
s/\bSi està marcada, podeu\([^[:alnum:]]\)/Si està marcada, podreu\1/g
# Konqueror
s/\bapreciaran el Konsole que podeu incrustar\([^[:alnum:]]\)/apreciaran que el Konsole es pot incrustar\1/g
s/\bDefinició del temps d'espera\([^[:alnum:]]\)/Establiu el temps d'espera\1/g
s/\bes troba sobre el que es mostrarà el text predeterminat\([^[:alnum:]]\)/és el que es mostrarà darrere del text predeterminat\1/g
s/\bhi ha diverses plantilles\([^[:alnum:]]\)/hi ha múltiples plantilles\1/g
s/\b\([Mm]\)òdul de barra\([^[:alnum:]]\)/\1òdul de la barra\2/g
    s/\b\([Bb]\)arra lateral d'arbre\([^[:alnum:]]\)/\1arra lateral Arbre\2/g
    s/\b\([Bb]\)arra lateral d'adreces d'interès\([^[:alnum:]]\)/\1arra lateral Adreces d'interès\2/g
    s/\b\([Bb]\)arra lateral d'historial\([^[:alnum:]]\)/\1arra lateral Historial\2/g
    s/\b\([Bb]\)arra lateral de llocs\([^[:alnum:]]\)/\1arra lateral Llocs\2/g
    s/\b\([Bb]\)arra lateral web\([^[:alnum:]]\)/\1arra lateral Web\2/g
    s/\b\([Bb]\)arra vertical de pestanyes\([^[:alnum:]]\)/\1arra vertical Pestanyes\2/g
s/\b\([Pp]\)\. ex\. /\1. ex., /g
s/\bPermet de modificar\([^[:alnum:]]\)/Permet modificar\1/g
s/\bporta aquest botó a <b>Configuració\([^[:alnum:]]\)/porta aquest botó sota <b>Configuració\1/g
s/\bSi no està marcada, les adreces d'interès fins a l'arrel de la jerarquia (en cap carpeta) no es visualitzen\([^[:alnum:]]\)/Si no està marcada, no es visualitzaran les adreces d'interés a l'arrel de la jerarquia (en cap carpeta)\1/g
s/\bSi ses marca, s'agrupen\([^[:alnum:]]\)/Si està marcada, s'agruparan\1/g
s/\bVista de mida de fitxers\([^[:alnum:]]\)/Vista de la mida dels fitxers\1/g
s/\bVoleu acceptar o rebutjar aquesta galeta\([^[:alnum:]]\)/La voleu acceptar o rebutjar\1/g
# Konsole
    s/\buna a Connectors -> Gestor de SSH\([^[:alnum:]]\)/una a «Connectors -> Gestor de SSH»\1/g
    s/\buna a Connectors -> Ordres\([^[:alnum:]]\)/una a «Connectors -> Ordres»\1/g
s/\b\([Cc]\)om a mínim cal definir el nom\([^[:alnum:]]\)/\1om a mínim cal establir el nom\2/g
s/\b\([Ll]\)letra negreta\([^[:alnum:]]\)/\1letra en negreta\2/g
s/\b\([Mm]\)onitors d'una única vegada\([^[:alnum:]]\)/\1onitors d'una sola vegada\2/g
s/\b\([Nn]\)úmeros de línies\([^[:alnum:]]\)/\1úmeros de línia\2/g
s/\bSi està informat, no es té en compte\([^[:alnum:]]\)/Si està informat, no es tindrà en compte\1/g
    s/\btindrà en compte la clau SSH definida més\([^[:alnum:]]\)/tindrà en compte la clau SSH establerta més\1/g
s/\bzoom-maximització\([^[:alnum:]]\)/zoom i la maximització\1/g
# Kontact
# Kontrast
# Konversation
s/\bEl fitxer s'està utilitzant per una altra transferència\([^[:alnum:]]\)/El fitxer s'està utilitzant en una altra transferència\1/g
s/\bEl sobrenom doble clicat\([^[:alnum:]]\)/El sobrenom en el qual s'ha fet doble clic\1/g
s/\bencarregat de les versions\([^[:alnum:]]\)/encarregat dels llançaments\1/g
s/\bper a fer-lo servir\([^[:alnum:]]\)/per a usar-lo\1/g
    s/\bla configuració actual per a usar-lo\([^[:alnum:]]\)/la configuració actual per a usar-la\1/g
# Konvex
s/\bVisualitzador de models 3D\([^[:alnum:]]\)/Visor de models en 3D\1/g
# Kopete
s/\bconnectar directament als servidors\([^[:alnum:]]\)/connectar directament amb els servidors\1/g
s/\bmostra l'eixida\([^[:alnum:]]\)/mostra la sortida\1/g
s/\b\([Pp]\)aràmetres de transferència de fitxer\([^[:alnum:]]\)/\1aràmetres de la transferència de fitxer\2/g
s/\bSi no està marcada, les imatges no s'escalen i apareixen\([^[:alnum:]]\)/Si no està marcada, les imatges no s'escalaran i apareixeran\1/g
s/\bSi no està marcada, totes les finestres de xat excepte l'activa /Si no està marcada, totes les finestres de xat, excepte l'activa, /g
s/\bSi està marcada, les imatges previsualitzades s'amiden\([^[:alnum:]]\)/Si està marcada, les imatges previsualitzades s'amidaran\1/g
s/\bSi està marcada, només es descarrega la quantitat d'imatges seleccionada i es mostren\([^[:alnum:]]\)/Si està marcada, només es descarregarà la quantitat d'imatges seleccionada i es mostraran\1/g
s/\b\([Tt]\)ransferència de fitxer entrant de\([^[:alnum:]]\)/\1ransferència de fitxer entrant des de\2/g
# KOrganizer
s/\bVistes->Vistes d'agenda\([^[:alnum:]]\)/«Vistes -> Vistes d'agenda»\1/g
# KPhotoAlbum
s/\bdescripció per defecte\([^[:alnum:]]\)/descripció predeterminada\1/g
s/\bespai extra\([^[:alnum:]]\)/espai addicional\1/g
s/\bestabliu grups d'etiquetes podeu veure\([^[:alnum:]]\)/establiu grups d'etiquetes veureu\1/g
s/\bExif. Per això, el KPhotoAlbum necessita\([^[:alnum:]]\)/Exif. Per a fer això, el KPhotoAlbum necessita\1/g
s/\bExif<\/emphasis> a <interface>Configuració\([^[:alnum:]]\)/Exif<\/emphasis> sota <interface>Configuració\1/g
s/\bExporta\/copia\([^[:alnum:]]\)/Exporta i copia\1/g
s/\bque aquí s'indica\([^[:alnum:]]\)/que s'indica aquí\1/g
s/\bSeleccioneu les regions de dies festius\([^[:alnum:]]\)/Trieu les regions de dies festius\1/g
s/\bSi està activa, les miniatures es construeixen\([^[:alnum:]]\)/Si està activa, les miniatures es construiran\1/g
# Krdc
s/\b\([Ee]\)scala d'escriptori\([^[:alnum:]]\)/\1scala de l'escriptori\2/g
# KRegExpEditor
# Krfb
# Krita
s/https:\/\/docs\.krita\.org\/en\//https:\/\/docs.krita.org\/ca\//g
    s/https:\/\/docs\.krita\.org\/ca\/untranslatable_pages\//https:\/\/docs.krita.org\/en\/untranslatable_pages\//g
s/, i també capes\([^[:alnum:]]\)/, així com també capes\1/g
s/\ba dins el pare\([^[:alnum:]]\)/a dins del pare\1/g
s/\ba dins la capa\([^[:alnum:]]\)/a dins de la capa\1/g
s/\bacció «Mutació», que muta\([^[:alnum:]]\)/acció «Mutació», la qual fa mutar\1/g
s/\bActiveu per a emplenar\([^[:alnum:]]\)/Trieu per a emplenar\1/g
s/\bAjudeu el Krita[!]\([^[:alnum:]]\)/Ajudeu al Krita\1/g
s/\bAixò s'ha d'habilitar si veieu algun defecte mentre utilitzeu assistents\([^[:alnum:]]\)/S'ha d'habilitar si veieu algun defecte mentre utilitzeu els assistents\1/g
s/\bantic a Configuració->Configura el Krita->General->Eines->Mode de barreja CMYK\([^[:alnum:]]\)/antic a «Configuració -> Configura el Krita… -> General -> Eines -> Mode de barreja CMYK»\1/g
s/\b\([Aa]\)parença no texturada i la texturada\([^[:alnum:]]\)/\1parença sense textura i amb textura\2/g
s/\b\([Aa]\)rt de píxel\([^[:alnum:]]\)/\1rt de píxels\2/g
s/\b\([Bb]\)otons de flux de treball\([^[:alnum:]]\)/\1otons del flux de treball\2/g
s/\bde l'Adobe\([^[:alnum:]]\)/d'Adobe\1/g
s/\bEmplena la selecció activa, o el llenç sencer\([^[:alnum:]]\)/Emplena la selecció activa o tot el llenç\1/g
s/\ben lloc de totes les direccions\([^[:alnum:]]\)/en lloc de en totes les direccions\1/g
s/\bEspereu que es completi el procés de generació dels fotogrames\([^[:alnum:]]\)/Espereu que es completi el procés de generació de fotogrames\1/g
s/\bfa una renderització prèvia de la memòria cau de l'animació en segon pla\([^[:alnum:]]\)/fa una renderització prèvia en segon pla de la memòria cau de l'animació\1/g
s/\bhttps:\/\/krita.org\/ca\//https:\/\/krita.org\/ca-va\//g
s/\b\(màxima\|mínima\) velocitat\([^[:alnum:]]\)/velocitat \1\2/g
s/\bMemòria cau de l'animació\([^[:alnum:]]\)/Memòria cau per a l'animació\1/g
s/\bMemòria cau \(gran \|\)dels mapes de píxels\([^[:alnum:]]\)/Memòria cau \1per als mapes de píxels\2/g
    s/\bCanviar la mida de la memòria cau dels mapes de píxels\([^[:alnum:]]\)/Canviar la mida de la memòria cau per als mapes de píxels\1/g
s/\b\([Mm]\)iniatures de la capa\([^[:alnum:]]\)/\1iniatures de les capes\2/g
s/\bla predefinició de l'esborrador\([^[:alnum:]]\)/l'esborrador predefinit\1/g
s/\bla predefinició del pinzell\([^[:alnum:]]\)/el pinzell predefinit\1/g
s/\b\([Ll]\)ongitud no vàlida de nom de capa\([^[:alnum:]]\)/\1ongitud no vàlida del nom de capa\2/g
s/\bo no hi té cap imatge\([^[:alnum:]]\)/o no hi ha cap imatge\1/g
s/\bPaleta en Python\([^[:alnum:]]\)/Paletes en Python\1/g
s/\b\([Pp]\)atró de moaré de Wolthera\([^[:alnum:]]\)/\1atró de moaré d'en Wolthera\2/g
s/\b\([Pp]\)inzell de Krita\([^[:alnum:]]\)/\1inzell del Krita\2/g
s/\b\([Pp]\)remeu %\([1234567890]\)\(\| \)/\1remeu «%\2» /g
    s/\bTeclegeu %\([1234567890]\)\(\| \)/Premeu «%\1» /g
    s/\bteclegeu %\([1234567890]\)\(\| \)/premeu «%\1» /g
s/\bQuan se selecciona, clona des de totes\([^[:alnum:]]\)/Quan se selecciona, es clonarà des de totes\1/g
s/\b\([Rr]\)educció de mostreig\([^[:alnum:]]\)/\1educció del mostreig\2/g
s/\bS'importarà una imatge aplanada\([^[:alnum:]]\)/S'importarà com una imatge aplanada\1/g
s/\belecciona píxels similars al que heu fet clic\([^[:alnum:]]\)/Tria els píxels similars al que heu fet clic\1/g
s/\bTrieu per a emplenar regions oposades\([^[:alnum:]]\)/Activeu per a emplenar regions oposades\1/g
s/\bSi no, caldrà activar manualment l'script mitjançant\([^[:alnum:]]\)/Si no, caldrà seleccionar-la manualment mitjançant\1/g
    s/\bSi no està activa, \(les capes es rasteritzaran\)\([^[:alnum:]]\)/Si no està marcada, \1\2/g
s/\bSi està marcada, exporta\([^[:alnum:]]\)/Si està marcada, s'exportarà\1/g
    s/\bNo s'aplica el filtratge en bucle\([^[:alnum:]]\)/No s'aplicarà el filtratge en bucle\1/g
s/\bSi està marcada, intenta i usa\([^[:alnum:]]\)/Si està marcada, s'intentarà i usarà\1/g
s/\bSi està marcada, la capa es fixa\([^[:alnum:]]\)/Si està marcada, la capa es fixarà\1/g
s/\bSi està marcada, les imatges amb canals sobreexposats es processen\([^[:alnum:]]\)/Si està marcada, les imatges amb canals sobreexposats es processaran\1/g
s/\bSi està marcada, manté els\([^[:alnum:]]\)/Si està marcada, es mantindran els\1/g
    s/\bAltrament, descarta aquesta\([^[:alnum:]]\)/Altrament, es descartarà aquesta\1/g
s/\bSi està marcada, permet\([^[:alnum:]]\)/Si està marcada, es permetrà\1/g
s/\bSi està marcada, redueix l'ús de la memòria (però augmenta\([^[:alnum:]]\)/Si està marcada, es reduirà l'ús de la memòria (però farà augmentar\1/g
s/\bUsa una memòria cau gran de mapes de píxels\([^[:alnum:]]\)/Usa una memòria cau gran per als mapes de píxels\1/g
# krunner
# Krusader
s/\bclicant a «Ctrl»/prement «Ctrl»/g
s/\bDefiniu una mida nova\([^[:alnum:]]\)/Establiu una mida nova\1/g
s/\bMou &tot cap a dins de la paperera\([^[:alnum:]]\)/Mou-ho \&tot cap a dins de la paperera\1/g
s/\b\([Ss]\)i aneu cap a la carpeta pare\([^[:alnum:]]\)/\1i aneu fins a la carpeta pare\2/g
s/\bSi està marcada, quan cliqueu amb el botó \(dret\|esquerre\) del ratolí, triareu un\([^[:alnum:]]\)/Si està marcada, quan cliqueu amb el botó \1 del ratolí, se seleccionarà un\2/g
    s/\bun element sense desseleccionar els altres elements\([^[:alnum:]]\)/un element sense desseleccionar els altres\1/g
s/\bSi està marcada, quan es prem la barra\([^[:alnum:]]\)/Si està marcada, quan es premi la barra\1/g
# KScreen
s/\b\([Cc]\)alibra\(r\|\) la lluminositat\([^[:alnum:]]\)/\1alibra\2 la brillantor\3/g
s/\bcontrol lliscant normal de lluminositat\([^[:alnum:]]\)/control lliscant normal de brillantor\1/g
s/\bControla la lluminositat del maquinari\([^[:alnum:]]\)/Controla la brillantor del maquinari\1/g
s/\bEstableix la lluminositat del contingut\([^[:alnum:]]\)/Estableix la brillantor del contingut\1/g
s/\bLluminositat \(màxima \|\)de l'SDR\([^[:alnum:]]\)/Brillantor \1de l'SDR\2/g
s/\bmostrin colors més lluminosos\([^[:alnum:]]\)/mostrin colors més brillants\1/g
s/\bNo té cap efecte a on apareixeran les notificacions de pantalla o altres finestres\([^[:alnum:]]\)/No té cap efecte sobre a on apareixeran les notificacions de pantalla o les altres finestres\1/g
# KService
# KsirK
s/\bProbablement aquest serà l'error\([^[:alnum:]]\)/Probablement aquest sigui l'error\1/g
# KSquares
# KStars
# append - afegir
13535,/^msgstr / s/\"Configuració\([^[:alnum:]]\)/\"Configureu\1/g
63558,/^msgstr / s/\"Configuració\([^[:alnum:]]\)/\"Configureu\1/g
67368,/^msgstr / s/\"Exportació\"/\"Exporteu\"/g
 #
s/\b2\. Inicia i atura l'Ekos\([^[:alnum:]]\)/2. Inicieu i atureu l'Ekos\1/g
s/\b3\. Connecta i desconnecta els dispositius\([^[:alnum:]]\)/3. Connecteu i desconnecteu els dispositius\1/g
s/\bActualització d'elements orbitals dels satèl·lits\([^[:alnum:]]\)/Actualitzeu els elements orbitals dels satèl·lits\1/g
    s/\bdiàleg Afegeix\/Edita un DSO\([^[:alnum:]]\)/diàleg «Afegiu\/editeu un DSO»\1/g
s/\bAfegeix\/edita un DSO\([^[:alnum:]]\)/Afegiu\/editeu un DSO\1/g
s/\bAfegeix un URL personalitzat a %1\([^[:alnum:]]\)/Afegiu un URL personalitzat a %1\1/g
s/\bAlineació de fotograma\([^[:alnum:]]\)/Alineeu el fotograma\1/g
s/\bCàrrega d'una imatge\([^[:alnum:]]\)/Carregueu una imatge\1/g
s/\bCerca d'un objecte\([^[:alnum:]]\)/Cerqueu un objecte\1/g
s/\bConfiguració - KStars\([^[:alnum:]]\)/Configureu - KStars\1/g
s/\bConfiguració del filtre\([^[:alnum:]]\)/Configureu el filtre\1/g
s/\bEstabliment de l'emplaçament\([^[:alnum:]]\)/Establiu l'emplaçament\1/g
s/\bEstabliment de la data i l'hora\([^[:alnum:]]\)/Establiu la data i l'hora\1/g
s/\bEstabliment manual de les coordenades\([^[:alnum:]]\)/Establiu manualment les coordenades\1/g
s/\bCreació\/edició d'un catàleg\([^[:alnum:]]\)/Creeu\/editeu un catàleg\1/g
s/\bEdició d'imatge en miniatura\([^[:alnum:]]\)/Editeu la imatge en miniatura\1/g
s/\bEdició d'enllaç\([^[:alnum:]]\)/Editeu l'enllaç\1/g
s/\bEstableix el temps UTC\([^[:alnum:]]\)/Establiu el temps UTC\1/g
s/\bEstableix l'emplaçament geogràfic\([^[:alnum:]]\)/Establiu l'emplaçament geogràfic\1/g
s/\bEstableix l'indicador del CDV\([^[:alnum:]]\)/Establiu l'indicador del CDV\1/g
s/\bEstableix la regulació de la temperatura\([^[:alnum:]]\)/Establiu la regulació de la temperatura\1/g
s/\bExecució de la sessió\([^[:alnum:]]\)/Executeu una sessió\1/g
s/\bExportació d'eclipsis\([^[:alnum:]]\)/Exporteu les eclipsis\1/g
s/\bExportació d'imatge del cel\([^[:alnum:]]\)/Exporteu una imatge del cel\1/g
s/\bExportació d'una imatge\([^[:alnum:]]\)/Exporteu una imatge\1/g
s/\bExportació de catàleg\([^[:alnum:]]\)/Exporteu un catàleg\1/g
s/\bImprimeix el cel\([^[:alnum:]]\)/Imprimiu el cel\1/g
s/\bImprimeix una gràfica de l'elevació en funció del temps\([^[:alnum:]]\)/Imprimiu una gràfica de l'elevació en funció del temps\1/g
s/\bImpressió del calendari del cel\([^[:alnum:]]\)/Imprimiu el calendari del cel\1/g
s/\bPlanificació de la sessió\([^[:alnum:]]\)/Planifiqueu la sessió\1/g
 #
s/\bdibuixar objectes del cel profund\([^[:alnum:]]\)/dibuixar els objectes del cel profund\1/g
s/\bGirona, Espanya\([^[:alnum:]]\)/València, Espanya\1/g
s/\bNom de fitxer d'imatges de terreny\([^[:alnum:]]\)/Nom de fitxer de les imatges de terreny\1/g
s/\bNo s'ha pogut processar les\([^[:alnum:]]\)/No s'han pogut processar les\1/g
s/\bLin\( \|\) Guider\([^[:alnum:]]\)/Lin-Guider\2/g
    s/ \([Ll]\)in_guider\([^[:alnum:]]\)/ «lin_guider»\2/g
s/\b\([Ss]\)implement\([^[:alnum:]]\)/\1enzillament\2/g
# KSudoku
s/\bopció Simetria a «Sense simetria»\([^[:alnum:]]\)/opció «Simetria» a «Sense simetria»\1/g
s/\btrieu Joc -> Nou,/trieu «Joc -> Nou»,/g
# KSystemLog
# KTechlab
# KTextAddons
s/\bMistral AI\([^[:alnum:]]\)/IA Mistral\1/g
    s/\bConfigura IA Mistral\([^[:alnum:]]\)/Configura la IA Mistral\1/g
s/\bMou el cursor fins a \(la dreta\|l'esquerra\)\([^[:alnum:]]\)/Mou el cursor cap a \1\2/g
s/\bPermet tabulacions\([^[:alnum:]]\)/Permet les tabulacions\1/g
# KTextEditor
s/\bdes en la\([^[:alnum:]]\)/des de la\1/g
s/\bdesprés la selecció s'actualitza contínuament\([^[:alnum:]]\)/després s'actualitza contínuament la selecció\1/g
s/\bmida de la lletra de visualització\([^[:alnum:]]\)/mida de la lletra que es visualitza\1/g
s/\bnúmero de línia del porta-retalls\([^[:alnum:]]\)/número de línia des del porta-retalls\1/g
s/\bQuan se selecciona, les ordres del vi substitueixen\([^[:alnum:]]\)/Quan se selecciona, les ordres del vi substituiran\1/g
s/\bsigui inserit o que sobreescrigui\([^[:alnum:]]\)/s'insereixi o que sobreescrigui\1/g
# KTextWidgets
s/, o trieu un \(desplaçament\|patró\) anterior\([^[:alnum:]]\)/ o trieu-ne un anterior\2/g
s/, o trieu-ne una anterior\([^[:alnum:]]\)/ o trieu-ne una anterior\1/g
s/\banterior de la llista\([^[:alnum:]]\)/anterior des de la llista\1/g
# ktnef
s/\bÉs prohibit de reassignar el destinatari\([^[:alnum:]]\)/Està prohibit reassignar el destinatari\1/g
# KTorrent
s/, cal activar això/, cal seleccionar això/g
s/, si està activada/, si està seleccionada/g
s/\b\([Aa]\)daptació al KF\([56]\)\([^[:alnum:]]\)/\1daptació als KF\2\3/g
s/\b\([Aa]\)dreça IP personalitzada o \(un \|\)nom de màquina\([^[:alnum:]]\)/\1dreça IP o \2nom de màquina personalitzat\3/g
s/\bAmb això activat, el gestor\([^[:alnum:]]\)/Amb això seleccionat, el gestor\1/g
s/\bcal tenir activada aquesta opció\([^[:alnum:]]\)/cal tenir seleccionada aquesta opció\1/g
s/\bConfigura el KTorrent»\([^[:alnum:]]\)/Configura el KTorrent…»\1/g
s/\bd'acabar el torrent\([^[:alnum:]]\)/de finalitzar el torrent\1/g
s/\bEs pot desactivar si no voleu el trànsit\([^[:alnum:]]\)/Es pot desseleccionar si no voleu el trànsit\1/g
s/\bllicència Creative Commons Attribution 4.0 International License\([^[:alnum:]]\)/llicència Creative Commons Reconeixement 4.0 Internacional\1/g
s/\bquan es marca el salvapantalla\([^[:alnum:]]\)/quan està activat el salvapantalla\1/g
s/\bQuan està activada, aquests paràmetres\([^[:alnum:]]\)/Quan se selecciona, aquests paràmetres\1/g
s/\bQuan tots els torrent hagin acabat de \(baixar\|sembrar\)\([^[:alnum:]]\)/Quan tots els torrent s'hagin acabat de \1\2/g
s/\bS'ha marcat l'acció\([^[:alnum:]]\)/S'ha seleccionat l'acció\1/g
s/\bSi es desactiva, s'aturarà\([^[:alnum:]]\)/Si es desselecciona, s'aturarà\1/g
s/\bSi no s'activa, els paràmetres\([^[:alnum:]]\)/Si no se selecciona, els paràmetres\1/g
# ktp-*
# KWallet
s/\bestà \(oberta\|tancada\) actualment\([^[:alnum:]]\)/està \1\2/g
s/\bsincronitzar \(la cartera <b>%1<\/b>\|un fitxer de cartera\) al disc\([^[:alnum:]]\)/sincronitzar \1 amb el disc\2/g
# KWave
s/\bd'altra manera desarà tot el fitxer\([^[:alnum:]]\)/d'altra manera es desarà tot el fitxer\1/g
s/\bSi està marcada, \(<[^<]\{1,\}>\|\)desa només els blocs que se superposen\([^[:alnum:]]\)/Si està marcada, \1només es desaran els blocs que se superposin\2/g
# kweather
s/\b\([Dd]\)eseu diverses ubicacions\([^[:alnum:]]\)/\1eseu múltiples ubicacions\2/g
# kwidgetsaddons
s/\bCJK suplementaris\([^[:alnum:]]\)/CJK addicionals\1/g
s/\bDingbats\([^[:alnum:]]\)/Ornaments d'impressió\1/g
s/\b\([Hh]\)exagrames\([^[:alnum:]]\)/\1exagrams\2/g
s/\bIdeogrames unificats del CJK\([^[:alnum:]]\)/Ideogrames unificats CJK\1/g
s/\bItàlic antic\([^[:alnum:]]\)/Cursiva antiga\1/g
s/\bMarques diacrítiques de combinació per als símbols\([^[:alnum:]]\)/Combinació de marques diacrítiques per a símbols\1/g
s/\bMarques diacrítiques de combinació suplementàries\([^[:alnum:]]\)/Suplement de combinació de marques diacrítiques\1/g
s/\bOperadors matemàtics suplementaris\([^[:alnum:]]\)/Operadors matemàtics addicionals\1/g
s/\bOsmaniya\([^[:alnum:]]\)/Osmanià\1/g
s/\bPuntuació suplementària\([^[:alnum:]]\)/Puntuació addicional\1/g
s/\bSíl·labes lineal B\([^[:alnum:]]\)/Conjunt de síl·labes lineal B\1/g
s/\bSíl·labes xipriota\([^[:alnum:]]\)/Conjunt de síl·labes xipriotes\1/g
s/\bSil·labari\([^[:alnum:]]\)/Síl·labes\1/g
s/\bSil·labaris aborígens del Canadà unificats\([^[:alnum:]]\)/Sil·làbic unificat aborigen canadenc\1/g
s/\bSímbols-\(A\|B\) matemàtics variats\([^[:alnum:]]\)/Miscel·lània de símbols matemàtics-A\1\2/g
s/\bValoració suplementària\([^[:alnum:]]\)/Puntuació addicional\1/g
# KWin
s/\b\([Cc]\)oincidència de cadena\([^[:alnum:]]\)/\1oincidència de la cadena\2/g
    s/\b\([Cc]\)adena d'etiqueta de finestra\([^[:alnum:]]\)/\1adena etiqueta de la finestra\2/g
    s/\b\([Cc]\)adena de \(classe\|funció\|títol\) de finestra\([^[:alnum:]]\)/\1adena \2 de la finestra\3/g
    s/\b\([Cc]\)adena de la màquina\([^[:alnum:]]\)/\1adena màquina\2/g
s/\bCom a dalt, més qualsevol\([^[:alnum:]]\)/Com l'anterior, a més de qualsevol\1/g
s/\bConfiguració dels escriptoris virtuals…/Configura els escriptoris virtuals…/g
s/\bdrecera de teclat %1\./drecera de teclat «%1»./g
s/\bÉs en canvi de mode\([^[:alnum:]]\)/És un canvi de mode\1/g
s/\bespai de color d'entrada\/sortida\([^[:alnum:]]\)/espai de color d'entrada i de sortida\1/g
s/\besquinçament \(de \|\)pantalla en finestres\([^[:alnum:]]\)/esquinçament de la pantalla a les finestres\2/g
    s/\b\([Ee]\)squinçament de pantalla\([^[:alnum:]]\)/\1squinçament de la pantalla\2/g
s/\b\([Mm]\)enú de finestra\([^[:alnum:]]\)/\1enú de la finestra\2/g
s/\b\([Mm]\)ida de finestres\([^[:alnum:]]\)/\1ida de les finestres\2/g
s/\bMostra els noms de les pantalles\([^[:alnum:]]\)/Mostra el nom de les pantalles\1/g
s/\bMotor de tema de decoració\([^[:alnum:]]\)/Motor del tema de decoració\1/g
s/\bNomés tecles que no siguin caràcters\([^[:alnum:]]\)/Només les tecles que no siguin caràcters\1/g
s/\bquan s'utilitzen diverses pantalles\([^[:alnum:]]\)/quan s'usen múltiples pantalles\1/g
s/\bseguretat del i permetrà\([^[:alnum:]]\)/seguretat del sistema i permetrà\1/g
# KWordQuiz
s/\bNeteja l'enllaç cap \(a la imatge\|al so\) de les entrades seleccionades\([^[:alnum:]]\)/Neteja l'enllaç cap \1 a les entrades seleccionades\2/g
# Labplot
s/\bamb valors que manquen\([^[:alnum:]]\)/amb els valors que manquen\1/g
s/\bcal que sigui superior a\([^[:alnum:]]\)/cal que sigui més gran que\1/g
s/\bcanvia la mida de la columna automàticament\([^[:alnum:]]\)/canvia automàticament la mida de la columna\1/g
s/\bCanvia la mida automàticament\([^[:alnum:]]\)/Canvia automàticament la mida\1/g
s/ datahora\([^[:alnum:]]\)/ «data i hora»\1/g
    s/«datahora»\([^[:alnum:]]\)/«data i hora»\1/g
s/\bels diagrames del full de treball o reaccionen als esdeveniments\([^[:alnum:]]\)/els diagrames del full de treball no reaccionaran als esdeveniments\1/g
s/\b\([Ff]\)orma de vora\([^[:alnum:]]\)/\1orma de la vora\2/g
    s/\b\([Aa]\)mplada de vora\([^[:alnum:]]\)/\1mplada de la vora\2/g
    s/\b\([Cc]\)olor de vora\([^[:alnum:]]\)/\1olor de la vora\2/g
s/\bKaggle CLI\([^[:alnum:]]\)/CLI de Kaggle\1/g
s/\bNo s'ha definit cap \(destinació\|mode\)\([^[:alnum:]]\)/No s'ha establert cap \1\2/g
s/\bSi està marcada, connecta\([^[:alnum:]]\)/Si està marcada, connectarà\1/g
s/\bSi està marcada, l'interval del diagrama s'amplia\([^[:alnum:]]\)/Si està marcada, l'interval del diagrama s'ampliarà\1/g
s/\bSi està marcada, l'amplada del quadre es fa\([^[:alnum:]]\)/Si està marcada, l'amplada del quadre es farà\1/g
s/\bSostracció de valor\([^[:alnum:]]\)/Sostrau un valor\1/g
s/\bTipus de dades columna\([^[:alnum:]]\)/Tipus de dades de columna\1/g
s/\b\([Vv]\)isualitza i analitza dades\([^[:alnum:]]\)/\1isualitza i analitza les dades\2/g
# Latte
s/\bLes finestres van cap a sota\([^[:alnum:]]\)/Les finestres van a sota\1/g
# libkeduvocdocument
# libkleo
s/\bCertificats pels quals\([^[:alnum:]]\)/Certificats per als quals\1/g
s/\b\([Ss]\)ignatura no verificada\([^[:alnum:]]\)/\1ignatura sense verificar\2/g
# licentia
s/\bpermís a l'usuari per fer el que\([^[:alnum:]]\)/permís a l'usuari per a fer el que\1/g
# lightdm-kde-greeter
s/\bConnecto a\([^[:alnum:]]\)/Voleu connectar amb\1/g
s/\bDesconnecto de\([^[:alnum:]]\)/Voleu desconnectar de\1/g
s/\b\([Cc]\)onnexió a %1\([^[:alnum:]]\)/\1onnexió amb %1\2/g
s/\bper a connectar a %1\([^[:alnum:]]\)/per a connectar amb %1\1/g
# Lokalize
s/\b\([Aa]\)quest és una\([^[:alnum:]]\)/\1questa és una\2/g
s/\bexplorar o en fer clic dret a una entrada que manca\([^[:alnum:]]\)/explorar o quan feu clic dret sobre una entrada que manca\1/g
s/\bSi està marcada, el programa extreu\([^[:alnum:]]\)/Si està marcada, el programa extreurà\1/g
s/\bSi està marcada, obtén\([^[:alnum:]]\)/Si està marcada, obtindrà\1/g
# mailcommon
s/\bsegüent\/anterior\([^[:alnum:]]\)/següent o anterior\1/g
# Marble
s/(Activada només en el mode\([^[:alnum:]]\)/(activada només en el mode\1/g
s/(Desactivat en el mode\([^[:alnum:]]\)/(desactivada en el mode\1/g
s/\bActiva l'ordenació segons qualitat d'imatge\([^[:alnum:]]\)/Activa l'ordenació segons la qualitat d'imatge\1/g
s/\bActivada: la gestió del color\([^[:alnum:]]\)/Triada: la gestió del color\1/g
s/\bDesmarcada: la gestió del color\([^[:alnum:]]\)/Desseleccionada: la gestió del color\1/g
s/\bdesactiveu-la per a conservar\([^[:alnum:]]\)/desseleccioneu-la per a conservar\1/g
s/\bàlbum de destinació per les baixades\([^[:alnum:]]\)/àlbum de destinació per a les baixades\1/g
s/\bbase de dades Lensfun\([^[:alnum:]]\)/base de dades de Lensfun\1/g
s/\b\([Cc]\)onnector de quadrícula de coordenades\([^[:alnum:]]\)/\1onnector de la quadrícula de coordenades\2/g
s/\b\([Cc]\)u\(a\|es\) de\(l\|ls\|\) lots\([^[:alnum:]]\)/\1u\2 per lots\4/g
    s/\bgestor de cues per lots\([^[:alnum:]]\)/gestor de la cua per lots\1/g
    s/\bLa cua del lot\([^[:alnum:]]\)/La cua per lots\1/g
s/\bdigiKam 4 a digiKam nou\([^[:alnum:]]\)/digiKam 4 en un digiKam nou\1/g
s/\bdissenyat per a deteccions d'objectes\([^[:alnum:]]\)/dissenyat per a detecció d'objectes\1/g
s/\bdocuments a text que usa l'OCR\([^[:alnum:]]\)/documents a text emprant l'OCR\1/g
s/\ben el PATH\([^[:alnum:]]\)/en la PATH\1/g
s/\bimatges des de carpeta\([^[:alnum:]]\)/imatges des d'una carpeta\1/g
s/\bmetadades d'etiquetes\([^[:alnum:]]\)/etiquetes de metadades\1/g
s/\bmetadades de les etiquetes\([^[:alnum:]]\)/etiquetes de metadades\1/g
s/\bmetadades de valoració, o color, o rètols de selecció\([^[:alnum:]]\)/metadades de valoració, rètols de color o de selecció\1/g
s/\b\([Nn]\)om de\(l\|\) fitxer del fitxer\([^[:alnum:]]\)/\1om del fitxer\3/g
s/\bnom de fitxer original\([^[:alnum:]]\)/nom del fitxer original\1/g
s/\bOCR en metadades XMP\([^[:alnum:]]\)/OCR en les metadades XMP\1/g
s/\bper a seleccionar diversos elements\([^[:alnum:]]\)/per a seleccionar múltiples elements\1/g
s/\bTrieu-la per a seleccionar\([^[:alnum:]]\)/Activeu-la per a seleccionar\1/g
s/\bSi es marca aquesta opció, l'àrea de vista prèvia es dividirà \(horitzontalment\|verticalment\)\([^[:alnum:]]\)/Si es marca aquesta opció, es dividirà \1 l'àrea de vista prèvia\2/g
s/\bSi s'activa, la BD del nucli sempre es neteja\([^[:alnum:]]\)/Si està marcada, sempre es netejarà la BD del nucli\1/g
# Merkuro
s/\"Manual del Calendar\"/\"Manual del Calendari\"/g
s/\bMerkuro Calendar\([^[:alnum:]]\)/Calendari del Merkuro\1/g
s/\bMerkuro Contact\([^[:alnum:]]\)/Contactes del Merkuro\1/g
    s/\bContacts del Merkuro\([^[:alnum:]]\)/Contactes del Merkuro\1/g
s/\bMerkuro Mail\([^[:alnum:]]\)/Correu del Merkuro\1/g
# marknote
# Merkuro
# messagelib
s/\bDesactiveu per a ocultar els nivells de text citat\([^[:alnum:]]\)/Desseleccioneu-la per a ocultar els nivells de text citat\1/g
s/\bFeu clic amb el botó dret en els elements dins la vista per a més opcions\([^[:alnum:]]\)/Per a més opcions, feu clic dret en els elements dins la vista\1/g
s/\b\([Ff]\)ormat del text ràpid\([^[:alnum:]]\)/\1ormat ràpid del text\2/g
s/\bvista predeterminada en la icona\([^[:alnum:]]\)/vista d'icones predeterminada\1/g
# mimetreeparser
s/\"Importa certificat\"/\"Importa certificats\"/g
# Okteta
s/\bcontinuar des de l'inici\([^[:alnum:]]\)/continuar des del començament\1/g
s/\bS'ha arribat fins al final del fitxer prematurament\([^[:alnum:]]\)/S'ha arribat prematurament fins al final del fitxer\1/g
# Okular
s/\bDefineix l'ordre de l'editor extern\([^[:alnum:]]\)/Estableix l'ordre de l'editor extern\1/g
# OptiImage
s/\bNivell d'optimització predeterminat d'optimització\([^[:alnum:]]\)/Nivell d'optimització predeterminat\1/g
s/\bOptimitzador d'imatges per a reduir la mida de les imatges\([^[:alnum:]]\)/Optimitzador d'imatges per a reduir-ne la mida\1/g
# Oxygen
# Marble
# Maui
s/\bEdició de les etiquetes Exif\([^[:alnum:]]\)/Editeu les etiquetes Exif\1/g
s/\bFiltra\/Afegeix\([^[:alnum:]]\)/Filtra o afegeix\1/g
s/\bhi ha diverses finestres obertes\([^[:alnum:]]\)/hi ha múltiples finestres obertes\1/g
s/\bmanteniu premuda la tecla de majúscules\([^[:alnum:]]\)/manteniu premuda la tecla «Majús»\1/g
s/\bPer a seleccionar diversos blocs\([^[:alnum:]]\)/Per a seleccionar múltiples blocs\1/g
s/\bRestaurar la sessió\([^[:alnum:]]\)/Restaura la sessió\1/g
s/\btasca en execució ha estat en silenci\([^[:alnum:]]\)/tasca en execució hagi estat en silenci\1/g
s/\bVoleu retrocedir i desar-los o descartar tots els canvis\([^[:alnum:]]\)/Voleu retrocedir i desar-los o descartar-los tots\1/g
# Neochat
s/«Espai» nou\([^[:alnum:]]\)/Espai nou\1/g
s/\"ha definit\([^[:alnum:]]\)/\"ha establert\1/g
s/\bAixò inclou esdeveniments d'estat\([^[:alnum:]]\)/Això inclou els esdeveniments d'estat\1/g
s/\bara està ignorat\([^[:alnum:]]\)/ara és ignorat\1/g
s/\bContacteu amb l'administrador del servidor Matrix per a suport\([^[:alnum:]]\)/Per a suport, contacteu amb l'administrador del servidor de Matrix\1/g
s/\bConvida aquest usuari\([^[:alnum:]]\)/Convida a aquest usuari\1/g
s/\bEnviar reaccions\([^[:alnum:]]\)/Envia les reaccions\1/g
s/\bEstablir un títol d'adjunt…\([^[:alnum:]]\)/Estableix un títol d'adjunt…\1/g
s/\bID d'usuari Matrix\([^[:alnum:]]\)/ID d'usuari de Matrix\1/g
s/\bInvitació de trucades\([^[:alnum:]]\)/Invitació de trucada\1/g
s/\bInvitacions a una sala\([^[:alnum:]]\)/Convida a una sala\1/g
s/\b\([Jj]\)a està ignorat\([^[:alnum:]]\)/\1a és ignorat\2/g
s/\bMissatges que contenen el meu nom a mostrar\([^[:alnum:]]\)/Missatges que contenen el meu nom que s'ha de mostrar\1/g
s/\bNo s'ha definit cap àlies canònic\([^[:alnum:]]\)/No s'ha establert cap àlies canònic\1/g
s/\bNo s'ha pogut unir-se a la sala\([^[:alnum:]]\)/No s'ha pogut unir a la sala\1/g
s/\bNotificacions de tota sala\([^[:alnum:]]\)/Notificacions de tota la sala\1/g
s/\bper cada sala\([^[:alnum:]]\)/per a cada sala\1/g
s/\bQualsevol en els espais seleccionats ho pot trobar i unir-se\([^[:alnum:]]\)/Qualsevol persona dels espais seleccionats ho pot trobar i unir-se\1/g
s/\bs'ha convidat en aquesta sala\([^[:alnum:]]\)/se l'ha convidat a aquesta sala\1/g
s/\bsi no s'ha indicat cap\([^[:alnum:]]\)/si no se n'ha indicat cap\1/g
s/\buna invitació per a unir-se a la sala\([^[:alnum:]]\)/una invitació per a unir-s'hi\1/g
s/\bxats de grups\([^[:alnum:]]\)/xats de grup\1/g
  s/\bxats encriptats de grups\([^[:alnum:]]\)/xats de grup encriptats\1/g
# optiimage
# perceptualcolor
s/\bla gama més proper\"/la gamma més propera\"/g
# Peruse
s/\bcontrol de Referència nova\([^[:alnum:]]\)/control «Referència nova»\1/g
# pimcommon
s/\bBing de la versió web\([^[:alnum:]]\)/Bing des de la versió web\1/g
# plasma-bigscreen
s/(Resolució i freqüència d'actualització)/(resolució i freqüència d'actualització)/g
s/\bAparença i comportament de la Big Screen del Plasma del Mycroft\([^[:alnum:]]\)/Aparença i comportament de la Big Screen amb Mycroft en el Plasma\1/g
s/\b\([Dd]\)recera definida actualment a\([^[:alnum:]]\)/\1recera establerta actualment a\2/g
s/\bEls fons de les fitxes s'acoloriran\([^[:alnum:]]\)/El fons de les fitxes s'acolorirà\1/g
s/\b\([Ii]\)nhibició d'energia\([^[:alnum:]]\)/\1nhibició de l'energia\2/g
s/\b\([Ss]\)elector de fons de pantalla\([^[:alnum:]]\)/\1elector del fons de pantalla\2/g
# plasma-browser-integration
s/\bComunitat KDE Wiki\([^[:alnum:]]\)/wiki de la comunitat KDE\1/g
# plasma-desktop
s/\bGestió de plafons i escriptoris\([^[:alnum:]]\)/Gestioneu els plafons i escriptoris\1/g
 #
s/» però el plafó roman visible\([^[:alnum:]]\)/», però el plafó romandrà visible\1/g
s/\ba través de diverses pantalles\([^[:alnum:]]\)/a través de múltiples pantalles\1/g
s/\bAfegeix o gestiona ginys\([^[:alnum:]]\)/Afegeix o gestiona els ginys\1/g
s/\b\([Aa]\)plicació de terminal predeterminada\([^[:alnum:]]\)/\1plicació predeterminada de terminal\2/g
s/\b\([Aa]\)questa acció no es pot desfer\([^[:alnum:]]\)/\1questa acció no es podrà desfer\2/g
    s/; aquesta acció no es podrà desfer\([^[:alnum:]]\)/. Aquesta acció no es podrà desfer\1/g
s/\bCanvia l'associació de tipus de fitxer manualment\([^[:alnum:]]\)/Canvia manualment l'associació de tipus de fitxer\1/g
s/\bcanvis com el volum i el nivell de lluminositat\([^[:alnum:]]\)/canvis com el volum i el nivell de brillantor\1/g
s/\bconfiguració no té cap efecte en els consells d'eina\([^[:alnum:]]\)/configuració no tindrà cap efecte sobre els consells d'eina\1/g
s/\bConsells del plafó i dels ginys\([^[:alnum:]]\)/Un plafó i els consells d'eina dels ginys\1/g
s/\b\([Dd]\)esar elements baixats\([^[:alnum:]]\)/\1esar els elements baixats\2/g
s/\bel gestor de sessió\([^[:alnum:]]\)/el gestor de la sessió\1/g
s/\bEl plafó és opac quan el toca\([^[:alnum:]]\)/El plafó serà opac quan el toqui\1/g
s/\bfinestres emergents petites dels canvis d'estat\([^[:alnum:]]\)/finestres emergents petites per als canvis d'estat\1/g
s/\bMostra consells grans del plafó i dels ginys\([^[:alnum:]]\)/Mostra un plafó gran i els consells d'eina dels ginys\1/g
    s/\bmostrin consells d'eina un plafó grans del plafó i dels ginys\([^[:alnum:]]\)/mostrin un plafó gran i els consells d'eina dels ginys\1/g
    s/\bmostrin consells descriptius quan es passa\([^[:alnum:]]\)/mostrin consells d'eina descriptius quan es passi\1/g
s/\bNo es pot definir una etiqueta\([^[:alnum:]]\)/No es pot establir una etiqueta\1/g
s/\bno oblideu d'aplicar els canvis\([^[:alnum:]]\)/no oblideu aplicar els canvis\1/g
s/\bno té cap efecte si el plafó està maximitzat\([^[:alnum:]]\)/no tindrà cap efecte si el plafó està maximitzat\1/g
    s/; no tindrà cap efecte si el plafó està maximitzat\([^[:alnum:]]\)/. No tindrà cap efecte si el plafó està maximitzat\1/g
s/\bperò es mostra quan el cursor toca\([^[:alnum:]]\)/però es mostrarà quan el cursor toqui\1/g
s/\bQuan aquest paràmetre està actiu\([^[:alnum:]]\)/Quan aquesta opció de configuració està activa\1/g
s/\bqueden sota el plafó com si no existís\([^[:alnum:]]\)/quedaran per sota del plafó com si no existís\1/g
s/\b\([Rr]\)etard de temps d'espera\([^[:alnum:]]\)/\1etard del temps d'espera\2/g
s/\bS'han fet comprovacions a\([^[:alnum:]]\)/S'han fet comprovacions en\1/g
s/\bun gest de tocar i arrossegar finalitza quan s'allibera el dit\([^[:alnum:]]\)/un gest de tocar i arrossegar finalitzarà quan s'aixequi el dit\1/g
s/\b\([Vv]\)ista de carpeta\([^[:alnum:]]\)/\1ista de carpetes\2/g
# plasma-disks
s/\bprevi\(s\|\) a fallada\([^[:alnum:]]\)/previ\1 a la fallada\2/g
# plasma-framework
# plasma-keyboard
s/\b\([Rr]\)eacció de tecla premuda\([^[:alnum:]]\)/\1eacció de la tecla premuda\2/g
# plasma-mobile
s/\bAjusteu la lluminositat de la pantalla\([^[:alnum:]]\)/Ajusteu la brillantor de la pantalla\1/g
s/\bes controla separadament\([^[:alnum:]]\)/es controla per separat\1/g
s/\bgravant…\([^[:alnum:]]\)/escrivint…\1/g
s/\bMostra les opcions addicionals de %1\([^[:alnum:]]\)/Mostra les opcions addicionals per a %1\1/g
# plasma-nm
s/\bArray SSL VPN\([^[:alnum:]]\)/VPN de matriu sobre SSL\1/g
    s/\bArray Networks\([^[:alnum:]]\)/xarxes de matriu\1/g
s/\bF5 BIG-IP SSL VPN\([^[:alnum:]]\)/VPN de F5 en BIG-IP sobre SSL\1/g
    s/\bF5 BIG-IP\([^[:alnum:]]\)/F5 en BIG-IP\1/g
s/\bFortinet SSL VPN\([^[:alnum:]]\)/VPN de Fortinet sobre SSL\1/g
s/\bopció es desactiva\([^[:alnum:]]\)/opció està desactivada\1/g
s/\b\([Pp]\)ort\(s\|\) en \(paral·lel\|sèrie\)\([^[:alnum:]]\)/\1ort\2 \3\4/g
s/\b\([Ss]\)upressió de carpeta\([^[:alnum:]]\)/\1upressió de la carpeta\2/g
# plasma-pa
s/\bNomés l'utilitzeu temporalment\([^[:alnum:]]\)/Useu-la només temporalment\1/g
# plasma-pk-updates
# plasma-sdk
s/\btambé proporciona un connector per al Kate i el KDevelop per a ser\([^[:alnum:]]\)/també proporciona un connector per al Kate i el KDevelop, per a ser\1/g
# plasma-settings
s/\bConfiguració;Configuració;\([^[:alnum:]]\)/Configuració;\1/g
# plasma-systemmonitor
s/\bHistorial (Versió antiga)/Historial (versió antiga)/g
# plasma-vault
# plasma-welcome
s/\bExploreu les seves funcions\([^[:alnum:]]\)/Exploreu les seves característiques\1/g
s/\bmostrar les notes de la versió\([^[:alnum:]]\)/mostrar les notes de llançament\1/g
# plasma-workspace
s/; clic del mig per a tornar-ho a activar\([^[:alnum:]]\)/. Clic del mig per a tornar-ho a activar\1/g
s/; desplaceu per a canviar-ho\([^[:alnum:]]\)/. Desplaceu per a canviar-ho\1/g
s/\bActualitzeu el Plasma per tal de fer servir el giny\([^[:alnum:]]\)/Actualitzeu el Plasma per tal d'emprar-lo\1/g
s/\bConfiguració específica d'aplicació\([^[:alnum:]]\)/Configuració específica de l'aplicació\1/g
s/\bcrida GetAll %1\([^[:alnum:]]\)/crida «GetAll» %1\1/g
s/\b\([Dd]\)ecoració de finestres\([^[:alnum:]]\)/\1ecoració de les finestres\2/g
s/\bdefinir el fons de pantalla\([^[:alnum:]]\)/establir el fons de pantalla\1/g
s/\bInformeu-ho als desenvolupadors de l'aplicació\([^[:alnum:]]\)/Informeu-ne als desenvolupadors de l'aplicació\1/g
s/\bLluminositat \(del teclat\|de la pantalla\)\([^[:alnum:]]\)/Brillantor \1\2/g
s/\blluminositat \(del teclat\|de la pantalla\)\([^[:alnum:]]\)/brillantor \1\2/g
s/\bLluminositat i color\([^[:alnum:]]\)/Brillantor i color\1/g
s/\blluminositat i color\([^[:alnum:]]\)/brillantor i color\1/g
s/\bNo s'han pogut activar els registres\([^[:alnum:]]\)/No s'han pogut carregar els registres\1/g
s/\bPlasma de KDE %1 Dev\([^[:alnum:]]\)/Plasma de KDE %1 dev\1/g
s/\bPoseu-vos en contacte amb l'autor del giny\([^[:alnum:]]\)/Poseu-vos en contacte amb el seu autor\1/g
s/\bPPP de la pantalla per fer que\([^[:alnum:]]\)/PPP de la pantalla per a fer que\1/g
s/\bProveu d'instal·lar el paquet\([^[:alnum:]]\)/Proveu instal·lant el paquet\1/g
s/\bsi està seleccionada a la pàgina\([^[:alnum:]]\)/si està activada a la pàgina\1/g
s/\b\([Uu]\)tilitat d'historial de retallar\([^[:alnum:]]\)/\1tilitat de l'historial per a retallar\2/g
# plasma5support
s/\bEstat del teclat i ratolí\([^[:alnum:]]\)/Estat del teclat i del ratolí\1/g
# plasmatube
s/\bNo s'ha definit cap descripció d'aquest vídeo\([^[:alnum:]]\)/No s'ha establert cap descripció d'aquest vídeo\1/g
# PowerDevil
s/\bAutenticació per a \(establir\|veure\) el nivell \(màxim \|\)de lluminositat\([^[:alnum:]]\)/Autenticació per a \1 el nivell \2de brillantor\3/g
s/\b\([Bb]\)loqueig de pantalla\([^[:alnum:]]\)/\1loqueig de la pantalla\2/g
    s/\b\([Ee]\)stil de pantalla\([^[:alnum:]]\)/\1stil de la pantalla\2/g
s/\bcaigui a aquest nivell\([^[:alnum:]]\)/caigui fns a aquest nivell\1/g
s/\bCanvia la lluminositat de la p&antalla\([^[:alnum:]]\)/Canvia la brillantor d\&e la pantalla\1/g
s/\bCanvia la lluminositat del te&clat\([^[:alnum:]]\)/Canvia la brillantor del te\&clat\1/g
s/\bConfiguració avançada d'energia\([^[:alnum:]]\)/Configuració avançada de l'energia\1/g
s/\bdesa la sessió a la memòria i al disc\([^[:alnum:]]\)/desa la sessió tan a la memòria com al disc\1/g
s/\bde %1 \(minut\|segon\)\([^[:alnum:]]\)/d'%1 \1\2/g
s/\bEn adormir-se, \(entra\|passa\)\([^[:alnum:]]\)/Quan s'adorm, \1\2/g
s/\bEn e&ntrar en aquest\([^[:alnum:]]\)/Quan s'e\&ntri en aquest\1/g
s/\bEn &sortir d'aquest\([^[:alnum:]]\)/Quan se \&surti d'aquest\1/g
s/\bencesa\/apagat\([^[:alnum:]]\)/encesa o apagada\1/g
s/\benergia d'activitat\([^[:alnum:]]\)/energia de l'activitat\1/g
s/\bFa pausa dels reproductors\([^[:alnum:]]\)/Fes pausa en els reproductors\1/g
s/\bInicia la càrrega per &sota de:/Inicia la càrrega per \&sota del:/g
s/\bIntroduïu una ordre o seleccioneu un fitxer…\([^[:alnum:]]\)/Introdueix una ordre o selecciona un fitxer…\1/g
s/\bLimitant la càrrega màxima de la bateria, podeu ajudar a allargar\([^[:alnum:]]\)/Limitant la càrrega màxima, ajudareu a allargar\1/g
s/\bnivell de bateria crítica\([^[:alnum:]]\)/nivell crític de bateria\1/g
s/\b\([Pp]\)àgina de configuració \(d'\|de \)«/\1àgina de configuració «/g
s/\bPantalla i lluminositat\([^[:alnum:]]\)/Pantalla i brillantor\1/g
s/\bportàtil Inclús quan\([^[:alnum:]]\)/portàtil, inclús quan\1/g
    s/\bquan hi hagi un monitor extern connectat\([^[:alnum:]]\)/quan hi hagi connectat un monitor extern\1/g
s/\bqueaprecieu\([^[:alnum:]]\)/que aprecieu\1/g
s/\bTrieu les condicions d'execució…\([^[:alnum:]]\)/Tria les condicions d'execució…\1/g
s/\bTrieu un fitxer executable…\([^[:alnum:]]\)/Tria un fitxer executable…\1/g
s/\bTrieu les condicions d'execució…\([^[:alnum:]]\)/Tria les condicions d'execució…\1/g
# PowerPlant
s/\bAlguna de les plantes requereixen atenció\([^[:alnum:]]\)/Alguna de les plantes requereix atenció\1/g
s/\bCom està la planta actualment\([^[:alnum:]]\)/Com està la planta en aquest moment\1/g
s/\bHistorial d'estat\([^[:alnum:]]\)/Historial de l'estat\1/g
# print-manager
s/\"Informa del problema a %1\"/\"Informeu del problema a %1\"/g
s/\bconnectades a aquest sistema\([^[:alnum:]]\)/connectades amb aquest sistema\1/g
s/\bDefineix les opcions predeterminades\([^[:alnum:]]\)/Estableix les opcions predeterminades\1/g
s/\bdefiniu una altra impressora\([^[:alnum:]]\)/establiu una altra impressora\1/g
    s/\bescollir el \([Ff]\)abricant\/\([Mm]\)odel/triar-los/g
    s/\bel \([Ff]\)abricant\/\([Mm]\)odel/el fabricant i el model/g
s/\bEliminació d'impressora[?]/Elimineu la impressora\?/g
s/\bEliminació de grup[?]/Elimineu el grup\?/g
s/\bFabricant\/Model:/Fabricant i model:/g
s/\b\([Ff]\)itxer\(s\|\) PostScript Printer Description\([^[:alnum:]]\)/\1itxer\2 de descripció d'impressora PostScript\3/g
s/\bnom de cua\. Introduïu un nom únic de cua\([^[:alnum:]]\)/nom de cua. Introduïu un nom únic\1/g
s/\bPàgina d'administració d'impressora\/dispositiu\([^[:alnum:]]\)/Pàgina d'administració d'impressora o dispositiu\1/g
s/\btornar-ho a provar o triar manualment un controlador\([^[:alnum:]]\)/tornar-ho a provar o triar-ne un manualment\1/g
# qmlkonsole
# qtcurve
s/\bconfiguració de l'opacitat la part de la decoració\([^[:alnum:]]\)/configuració de l'opacitat a la part de la decoració\1/g
s/\bels elements del menú marcats només tindran una marca de selecció\([^[:alnum:]]\)/els elements de menú seleccionats només tindran una marca de selecció\1/g
s/\bopció haurà d'estar activada\([^[:alnum:]]\)/opció haurà d'estar seleccionada\1/g
s/\bcolor que s'usarà per a la vista\([^[:alnum:]]\)/color que s'usarà a la vista\1/g
s/\bpot desactivar en activar aquesta opció\([^[:alnum:]]\)/pot desactivar seleccionant aquesta opció\1/g
s/\bsegüents dues caselles de color\([^[:alnum:]]\)/dues caselles de color següents\1/g
s/\bsegüents elements de configuració\([^[:alnum:]]\)/elements de configuració següents\1/g
s/\bSi està activada i no s'activa\([^[:alnum:]]\)/Si es marca i no s'ha marcat\1/g
# qvk
s/\bTeclat virtual Qt\([^[:alnum:]]\)/Teclat virtual de les Qt\1/g
# RKWard
s/ \.GlobalEnv\([^[:alnum:]]\)/ «.GlobalEnv»\1/g
s/\bA «Contributions\([^[:alnum:]]\)/En «Contributions\1/g
s/\bactivant «/seleccionant «/g
s/\bActiveu això per a\([^[:alnum:]]\)/Marqueu-la per a\1/g
s/\bDesactiveu això per a\([^[:alnum:]]\)/Desmarqueu-la per a\1/g
s/\bcal un compte d'usuari per això\([^[:alnum:]]\)/cal un compte d'usuari per a fer això\1/g
s/\bConfiguració -> Configura el RKWard ->/Configuració -> Configura el RKWard… ->/g
s/\bdeixeu això buit, i marqueu\([^[:alnum:]]\)/deixeu això buit i marqueu\1/g
s/\b\([Ff]\)itxer de destí\([^[:alnum:]]\)/\1itxer de destinació\2/g
s/\bLes observacions atípiques es dibuixen amb punts, si s'ha seleccionat aquesta opció\([^[:alnum:]]\)/Si s'ha seleccionat aquesta opció, les observacions atípiques es dibuixaran amb punts\1/g
s/\bMarqueu les dues caselles\([^[:alnum:]]\)/Trieu les dues caselles\1/g
s/\bNo s'ha pogut copiar el fitxer de sortida cap a\([^[:alnum:]]\)/No s'ha pogut copiar l'arxiu de sortida a\1/g
s/\bnomés mostrar\([^[:alnum:]]\)/mostrar només\1/g
s/\bquan s'ha activat «/quan s'ha seleccionat «/g
s/\bque no s'hagi activat </que no s'hagi seleccionat </g
s/\bSi està activa, el mode de navegació sensible al context de \(<[^<]\{1,\}>\|\)l'historial d'ordres\(<[^<]\{1,\}>\|\) és el predeterminat\([^[:alnum:]]\)/Si marca, el mode de navegació sensible al context de \1l'historial d'ordres\2 serà el predeterminat\3/g
s/\bSi està activa i les files tenen\([^[:alnum:]]\)/Si es marca i les files tenen\1/g
s/\bSi l'opció de dalt està activada\([^[:alnum:]]\)/Si es marca l'opció de dalt\1/g
s/\bSi no està activa, els valors que manquen\([^[:alnum:]]\)/Si no està marcada, els valors que manquen\1/g
s/\bSi està marcada, el fitxer de codi font s'interpreta\([^[:alnum:]]\)/Si està marcada, el fitxer de codi font s'interpretarà\1/g
s/\bSi està marcada, els errors estàndard es calculen\([^[:alnum:]]\)/Si està marcada, es calcularan els errors estàndard\1/g
s/\bSi està marcada, l'estimació dels coeficients s'informa sota\([^[:alnum:]]\)/Si està marcada, l'estimació dels coeficients s'informarà sota\1/g
s/\bSi està marcada, s'assumeix\([^[:alnum:]]\)/Si està marcada, s'assumirà\1/g
s/\btornant a activar això. En activar-ho, el RKWard intenta\([^[:alnum:]]\)/tornant a marcar-la. Quan es marqui, el RKWard intentarà\1/g
# Rolisteam
s/\b\([Dd]\)au 3D\([^[:alnum:]]\)/\1au en 3D\2/g
s/\bVoleu continuar i compartir el PDF\([^[:alnum:]]\)/Voleu continuar i compartir-lo\1/g
# Ruqola
s/\"Baixa el \(so\|vídeo\)\"/\"Baixeu el \1\"/g
s/\"Còpia de contrasenya\"/\"Copieu la contrasenya\"/g
s/\"Desa el vídeo\"/\"Deseu el vídeo\"/g
s/%1 (Activa)/%1 (activa)/g
s/\bAquest paràmetre \(atura\|desactiva\|evita\)\([^[:alnum:]]\)/Aquesta opció de configuració \1\2/g
s/\baugmentar\/disminuir\([^[:alnum:]]\)/augmentar o disminuir\1/g
    s/\bSales de la base de dades\([^[:alnum:]]\)/Base de dades de les sales\1/g
    s/\bGlobal de la base de dades\([^[:alnum:]]\)/Base de dades global\1/g
s/\bbotó Obre amb en\([^[:alnum:]]\)/botó «Obre amb» en\1/g
s/\bclau per a codificar\/descodificar\([^[:alnum:]]\)/clau per a codificar i descodificar\1/g
s/\bcondensada\/mitjana\/ampliada\([^[:alnum:]]\)/condensada, mitjana o ampliada\1/g
s/\bConfiguració d'administració del servidor\([^[:alnum:]]\)/Configureu l'administració del servidor\1/g
s/\bdesactiva la funció de menció\([^[:alnum:]]\)/desactiva la característica de menció\1/g
s/\bDesseleccionant aquesta opció pot ajudar a mantenir\([^[:alnum:]]\)/Desseleccionar aquesta opció pot ajudar a mantenir\1/g
s/\ben tractar diagrames grans\([^[:alnum:]]\)/en tractar amb diagrames grans\1/g
s/\bEs mostra un diàleg d'avís quan passa açò\([^[:alnum:]]\)/Quan passa això, es mostra un diàleg d'avís\1/g
s/\bes poden activar\/desactivar\([^[:alnum:]]\)/es poden activar o desactivar\1/g
s/\bfalti informació pel sistema\([^[:alnum:]]\)/falti informació del sistema\1/g
s/\bImplementa accions de bloqueig\./Implementa les accions de bloqueig./g
s/\bImplementa la previsualització d'URL\([^[:alnum:]]\)/Implementa la previsualització dels URL\1/g
s/\bImplementació de missatges de vídeo\/so\([^[:alnum:]]\)/Implementació de missatges de vídeo i so\1/g
s/\binstal·lar o eliminar activant o desactivant les caselles\([^[:alnum:]]\)/instal·lar o eliminar, triant o desseleccionant les caselles\1/g
s/\bmode desconnectada\([^[:alnum:]]\)/mode desconnectat\1/g
s/\bNombre de suggeriments de compleció automàtica d'usuaris\([^[:alnum:]]\)/Nombre de suggeriments a la compleció automàtica dels usuaris\1/g
s/\bparal·lel» pels humans\([^[:alnum:]]\)/paral·lel» per humans\1/g
s/\bPermet enviar diversos fitxers\([^[:alnum:]]\)/Permet enviar múltiples fitxers\1/g
s/\bQuè hi ha de nou al\([^[:alnum:]]\)/Què hi ha de nou en\1/g
s/\bRols predeterminats per a usuaris\([^[:alnum:]]\)/Rols predeterminats per als usuaris\1/g
s/\bs'intercanvien directa i de manera encriptada\([^[:alnum:]]\)/s'intercanvien de manera directa i encriptada\1/g
s/\bSi es marca l'opció de dalt, això afecta si aquestes ordres\([^[:alnum:]]\)/Si es marca l'opció de dalt, això afectarà a si aquestes ordres\1/g
s/\bsala Livechat\([^[:alnum:]]\)/sala de Livechat\1/g
s/\bTemporalment s'ha bloquejat\([^[:alnum:]]\)/S'ha bloquejat temporalment\1/g
s/\btemporalment s'ha bloquejat\([^[:alnum:]]\)/s'ha bloquejat temporalment\1/g
s/\bvoleu calcular\/imprimir\([^[:alnum:]]\)/voleu calcular o imprimir\1/g
# Skanpage
s/\bS'estan cercant dispositius disponibles\([^[:alnum:]]\)/S'estan cercant els dispositius disponibles\1/g
# SKrooge
s/\"Importa \(categories estàndard\|regles\|unitats\)/\"Importa algunes \1/g
s/\"\( \|\)Importa \(actius\|bancs\|beneficiaris\|comptes\|modes de pagament\|paràmetres\|valors\)/\"\1Importa alguns \2/g
s/\bpodeu definir un límit mínim i màxim\([^[:alnum:]]\)/podeu establir un límit mínim i màxim\1/g
s/\bSabíeu que…[?]/Sabíeu que\?/g
# sddm-kcm
s/\btecla de fixació de teclat numèric\([^[:alnum:]]\)/tecla de fixació del teclat numèric\1/g
# SystemSettings
s/\bConfiguració del sistema;configuració;systemsettings\([^[:alnum:]]\)/configuració del sistema;configuració\1/g
s/\bMostra les pàgines que no apliquin\([^[:alnum:]]\)/Mostra les pàgines que no s'aplicaran\1/g
# Skanpage
# Skrooge
s/\bel número de xec, o\([^[:alnum:]]\)/el número de xec o\1/g
s/\bi processat\([^[:alnum:]]\)/i processament\1/g
    s/\b\(capturat\|llegit\|s'ha rebut\) i processament\([^[:alnum:]]\)/\1 i processat\2/g
s/\bpoder fer aquesta diferència. Per això, cal introduir\([^[:alnum:]]\)/poder fer aquesta diferència. Per a fer això, cal introduir\1/g
# Smb4K
s/\bAra anireu fins a la pàgina\([^[:alnum:]]\)/Ara aneu fins a la pàgina\1/g
    s/\bel la compartició\([^[:alnum:]]\)/la compartició\1/g
s/\bdesades prèviament en diferents perfils ja estan disponibles\([^[:alnum:]]\)/desades prèviament en perfils diferents ja estaran disponibles\1/g
s/\bdesprés ja no poden utilitzar-se en els seus perfils originals\([^[:alnum:]]\)/després ja no es podran utilitzar en els seus perfils originals\1/g
s/\bseleccionant la regla\([^[:alnum:]]\)/triant la regla\1/g
s/\bsi la transferència s'interromp\([^[:alnum:]]\)/si s'interromp la transferència\1/g
# snap-kcm
s/\bconnectar a snapd\([^[:alnum:]]\)/connectar amb snapd\1/g
s/\bllegir de snapd\([^[:alnum:]]\)/llegir des de snapd\1/g
# Spectacle
s/%\([23]\) %1pt\(s\|\)\([^[:alnum:]]\)/%\1 %1 pt\2\3/g
s/%1px\([^[:alnum:]]\)/%1 px\1/g
s/«Control»: canvia\([^[:alnum:]]\)/Control: canvia\1/g
s/\benregistrament de \(finestra\|pantalla\)\([^[:alnum:]]\)/enregistrament de la \1\2/g
s/\bNo s'ha pogut seleccionar la finestra: no s'ha trobat cap finestra\([^[:alnum:]]\)/No s'ha pogut seleccionar la finestra: no se n'ha trobat cap\1/g
s/\bPlasma de KDE\([^[:alnum:]]\)/Plasma del KDE\1/g
s/\bSi està inactiva, es capturarà\([^[:alnum:]]\)/Si no està marcada, es capturarà\1/g
s/\busat en enregistrar\([^[:alnum:]]\)/usat quan s'enregistra\1/g
s/\bUseu l'Spectacle en el Plasma del KDE, o useu una eina diferent\([^[:alnum:]]\)/Useu l'Spectacle en el Plasma del KDE o useu una eina diferent\1/g
# Step
s/\bles quals defineixen la seva mida\([^[:alnum:]]\)/els quals defineixen la seva mida\1/g
# stopmotion
# SubtitleComposer
# Tellico
s/, aquest camp es pot usar per a agrupar\([^[:alnum:]]\)/, aquest camp es podrà usar per a agrupar\1/g
s/\bpermetrà de seleccionar-la\([^[:alnum:]]\)/permetrà seleccionar-la\1/g
s/\bun element d'una entrada\([^[:alnum:]]\)/un element d'entrada\1/g
# Tokodon
s/\bActualització de regla\([^[:alnum:]]\)/Actualització de la regla\1/g
 #
s/\bAssigna'l a mi\([^[:alnum:]]\)/Assigna-me'l\1/g
s/\bCaduca dins de\([^[:alnum:]]\)/Caduca dintre de\1/g
s/\bEdició de bloc de domini\([^[:alnum:]]\)/Edició del bloc de domini\1/g
s/\bEl compte de %1\([^[:alnum:]]\)/El compte %1\1/g
s/\bheu votat ha finalitzat\([^[:alnum:]]\)/heu votat, ha finalitzat\1/g
s/\bi torneu a iniciar-la\([^[:alnum:]]\)/i torneu-la a iniciar\1/g
s/\b\(no \|\)estigui executant-se\([^[:alnum:]]\)/\1s'estigui executant\2/g
s/\bRegla IP nova\([^[:alnum:]]\)/Regla d'IP nova\1/g
    s/\b\([Rr]\)egla nova d'IP\([^[:alnum:]]\)/\1egla d'IP nova\2/g
s/\bS'ha desfet el forçat com a confidencial correctament el compte de\([^[:alnum:]]\)/S'ha desfet correctament el forçat com a confidencial del compte\1/g
s/\bs'ha eliminat del silenci correctament\([^[:alnum:]]\)/s'ha eliminat correctament del silenci\1/g
s/\bs'ha tret de la suspensió correctament\([^[:alnum:]]\)/s'ha tret correctament de la suspensió\1/g
# Trojita
s/, podeu definir l'acció predeterminada\([^[:alnum:]]\)/, podreu establir l'acció predeterminada\1/g
    s/\bfocus fins en la cerca\([^[:alnum:]]\)/focus fins a la cerca\1/g
s/\bActiveu-la per a afegir\([^[:alnum:]]\)/Marqueu-la per a afegir\1/g
s/\bConsidereu deixar aquesta opció activa\([^[:alnum:]]\)/Considereu deixar seleccionada aquesta opció\1/g
s/\bS'està esperant les dades\([^[:alnum:]]\)/S'estan esperant les dades\1/g
# Umbrello
s/, crea els «getters» amb el prefix\([^[:alnum:]]\)/, es crearan els «getters» amb el prefix\1/g
s/, elimina el prefix «\(\[\|\)a-zA-Z\([^[:alnum:]]\)/, s'eliminarà el prefix «\1a-zA-Z\2/g
s/, els mètodes d'accés comencen\([^[:alnum:]]\)/, els mètodes d'accés començaran\1/g
s/\bConfiguració dels continguts\([^[:alnum:]]\)/Configuració del contingut\1/g
# websites
s/\ba les 1\([0123456789]\):00 UTC\([^[:alnum:]]\)/a les 1\1,00 UTC\2/g
s/\bKDE Frameworks\([^[:alnum:]]\)/Frameworks del KDE\1/g
    s/\b\([Dd]\|\)\([Ee]\)l Frameworks de\(l\|\) KDE\([^[:alnum:]]\)/\1\2ls Frameworks del KDE\4/g
    s/\bFrameworks del KDE&nbsp;5\([^[:alnum:]]\)/Frameworks 5 del KDE\1/g
    s/\bper a les Frameworks\([^[:alnum:]]\)/pels Frameworks\1/g
 # Google Summer of Code - GSoC
 s/\bGoogle Summer Of Code/Google Summer of Code/g
 s/\bGSOC\([^[:alnum:]]\)/GSoC\1/g
    s/\bde SoK i GSoC\([^[:alnum:]]\)/del SoK i la GSoC\1/g
    s/\bdel \(\[\|«\|\)Google Summer of Code\([^[:alnum:]]\)/de la \1Google Summer of Code\2/g
        s/\bdel \(\[\|«\|\)GSoC\([^[:alnum:]]\)/de la \1GSoC\2/g
    s/\ba Google Summer of Code\([^[:alnum:]]\)/en la Google Summer of Code\1/g
    s/\bal Google Summer of Code\([^[:alnum:]]\)/en la Google Summer of Code\1/g
    s/\bEl \(\[\|«\|\)Google Summer of Code\([^[:alnum:]]\)/La \1Google Summer of Code\2/g
    s/\bEl \(\[\|«\|\)GSoC\([^[:alnum:]]\)/La \1GSoC\2/g
    s/\bel \(\[\|«\|\)Google Summer of Code\([^[:alnum:]]\)/la \1Google Summer of Code\2/g
    s/\bel \(\[\|«\|\)GSoC\([^[:alnum:]]\)/la \1GSoC\2/g
    s/\bGoogle Summer of Code\(\-\| \)20/Google Summer of Code de 20/g
    s/\bGSoC\(\-\| \)20/GSoC de 20/g
    s/\bper al Google Summer of Code\([^[:alnum:]]\)/per a la Google Summer of Code\1/g
    s/\bque Google Summer of Code\([^[:alnum:]]\)/que la Google Summer of Code\1/g
    s/\bOrganitzat per Google, la\([^[:alnum:]]\)/Organitzada per Google, la\1/g
s/\bKDE Forums\([^[:alnum:]]\)/Fòrums del KDE\1/g
# wacomtablet
# websites-25years-kde-org
s/\barribar fins a saber\([^[:alnum:]]\)/arribar a saber\1/g
s/\bfins a on heu\([^[:alnum:]]\)/fins on heu\1/g
    s/\bdipòsit de GitLab\([^[:alnum:]]\)/repositori de GitLab\1/g
s/\brepositori GitLab\([^[:alnum:]]\)/repositori de GitLab\1/g
s/\btrobeu-vos per fer\([^[:alnum:]]\)/trobeu-vos per a fer\1/g
s/\bvelocitat extra\([^[:alnum:]]\)/velocitat addicional\1/g
# websites-apps-kde-org
s/\bajustable i per proporcionar\([^[:alnum:]]\)/ajustable i per a proporcionar\1/g
s/\bamb fitxers «ogg» curts\([^[:alnum:]]\)/amb els fitxers «ogg» curts\1/g
s/\bConfiguració» -> «Configura\([^[:alnum:]]\)/Configuració -> Configura\1/g
s/\bElecció múltiple o Escrit (teclegeu la paraula) o gramàtica\([^[:alnum:]]\)/«Elecció múltiple» o «Escrit» (teclegeu la paraula) o «Gramàtica»\1/g
s/\bEs mostraran als diàlegs\([^[:alnum:]]\)/Es mostraran els diàlegs\1/g
s/\bExercita» -> «Configura\([^[:alnum:]]\)/Exercita -> Configura\1/g
s/\bIdioma» -> «Articles\([^[:alnum:]]\)/Idioma -> Articles\1/g
s/\bInkscape\(<[^<]\{1,\}>\|\) per això\([^[:alnum:]]\)/Inkscape\1 per a fer això\2/g
s/\bintroduir els \*\*símbols\*\* als quadrats buits\([^[:alnum:]]\)/introduir els \*\*símbols\*\* dins dels quadrats buits\1/g
s/\bnomés funcionen els fitxers locals per a les imatges\([^[:alnum:]]\)/per a les imatges només funcionen els fitxers locals\1/g
s/\bprémer Maj o Ctrl\([^[:alnum:]]\)/prémer «Maj» o «Ctrl»\1/g
s/\bnoves boles de colors\([^[:alnum:]]\)/boles de color noves\1/g
s/\bogg` treballa bé\([^[:alnum:]]\)/ogg\` funciona bé\1/g
s/\bi reinicieu les qualificacions\./i les reiniciareu./g
s/\bquines paraules practiqueu comproveu les lliçons de l'esquerra\([^[:alnum:]]\)/quines paraules practicareu, marqueu les lliçons de l'esquerra\1/g
s/\breporteu-ho als desenvolupadors\([^[:alnum:]]\)/informeu-ne als desenvolupadors\1/g
s/\bseleccionat diverses files\([^[:alnum:]]\)/seleccionat múltiples files\1/g
s/\bTrieu diverses files\([^[:alnum:]]\)/Trieu múltiples files\1/g
s/\bSi heu de canviar el tipus d'exercici sovint\([^[:alnum:]]\)/Si heu de canviar sovint el tipus d'exercici\1/g
s/\bSi nofuncionen\([^[:alnum:]]\)/Si no funcionen\1/g
s/\bStep per fer\([^[:alnum:]]\)/Step per a fer\1/g
s/\buna altra per a agrupar-les\([^[:alnum:]]\)/una altra agrupant-les\1/g
s/\bUtilitzeu el ratolí per a moure les boles\([^[:alnum:]]\)/Utilitzeu el ratolí per a moure-les\1/g
# websites-eco-kde-org
s/\bel Dia\([^[:alnum:]]\)/el dia\1/g
s/Hurka, que té una\([^[:alnum:]]\)/Hurka, qui té una\1/g
s/\bconsum d'energia de programari\([^[:alnum:]]\)/consum d'energia del programari\1/g
s/\bcontacteu amb nosaltres per als detalls\([^[:alnum:]]\)/per als detalls, contacteu amb nosaltres\1/g
s/\bdels sistemes que en forma part\([^[:alnum:]]\)/dels sistemes dels quals forma part\1/g
s/\bdimecres 19:00\([^[:alnum:]]\)/dimecres a les 19,00\1/g
s/\bedició de vídeo professional\([^[:alnum:]]\)/edició professional de vídeo\1/g
s/\bés \[en curs\([^[:alnum:]]\)/està \[en curs\1/g
s/\bés important en definir\([^[:alnum:]]\)/és important quan es defineix\1/g
s/\bGràcies per prendre's temps per a llegir aquesta actualització\([^[:alnum:]]\)/Gràcies per prendre el temps per a llegir aquesta actualització\1/g
s/\b\(hora\|KDAB\) Berlín\([^[:alnum:]]\)/\1 de Berlín\2/g
s/\bmón real de programari\([^[:alnum:]]\)/món real del programari\1/g
s/\bplanificat per a principis\([^[:alnum:]]\)/planificada per a principis\1/g
s/\bprogramari que s'executa en ell\([^[:alnum:]]\)/programari que executa\1/g
s/\brendiment de maquinari\([^[:alnum:]]\)/rendiment del maquinari\1/g
s/\btres dipòsits\([^[:alnum:]]\)/tres repositoris\1/g
# websites-edu-kde-org
# websites-endof10-org
s/(\b\([Aa]\)\(ssistència\)\([^[:alnum:]]\)/(a\2\3/g
s/(\b\([Dd]\)\(esenvolupament\|ivulgació\)\([^[:alnum:]]\)/(d\2\3/g
s/(\b\([Ee]\)\(quip\|sdeveniments\)\([^[:alnum:]]\)/(e\2\3/g
s/(\b\([Ll]\)\(loc web\|locs\)\([^[:alnum:]]\)/(l\2\3/g
    s/(llocs\/esdeveniments)/(llocs i esdeveniments)/g
s/(\b\([Oo]\)pció verda de KDE)/(opció verda del KDE)/g
s/(\b\([Tt]\)\(aller\|raducció\)\([^[:alnum:]]\)/(t\2\3/g
    s/(traducció alemany)/(traducció a l'alemany)/g
s/\bAjuda la nostra presència\([^[:alnum:]]\)/Ajuda amb la nostra presència\1/g
s/\bAmb sort, hi ha gent a prop\([^[:alnum:]]\)/Amb sort, hi haurà gent a prop\1/g
s/\baquest web et pot ajudar\([^[:alnum:]]\)/aquest web t'ajudarà\1/g
s/\bAquí hi ha una llista d'esdeveniment\([^[:alnum:]]\)/Aquí hi ha una llista dels esdeveniment\1/g
s/\bAssistència comunitària i professional\([^[:alnum:]]\)/Assistència de la comunitat i professional\1/g
s/\bAviat afegirem les persones de l'equip\([^[:alnum:]]\)/Aviat afegirem els membres de l'equip\1/g
s/\bbo serà oficialment\([^[:alnum:]]\)/bo estarà oficialment\1/g
s/\bcontacta amb nosaltres per a poder\([^[:alnum:]]\)/contacta'ns per a poder\1/g
s/\bde fa 10-20 anys\([^[:alnum:]]\)/de fa 10 o 20 anys\1/g
s/\bdivulgació a Llatinoamèrica\([^[:alnum:]]\)/divulgació a Amèrica Llatina\1/g
s/\ben fòrums en línia\([^[:alnum:]]\)/als fòrums en línia\1/g
s/\bendof10\.org\/ca\"/endof10.org\/ca-va\"/g
s/\bendof10\.org\/ca\//endof10.org\/ca-va\//g
s/\bendof10\.org\/ca)/endof10.org\/ca-va\/)/g
s/\bendof10\.org\/)/endof10.org\/ca-va\/)/g
s/\bEquip del «Final del 10»\([^[:alnum:]]\)/Equip darrere d'«End of 10»\1/g
s/\bEs pot trobar suport comunitari\([^[:alnum:]]\)/Trobaràs suport comunitari\1/g
s/\bestà llicenciat segons la\([^[:alnum:]]\)/està llicenciat d'acord amb la\1/g
s/\b\(Final de\(l\|\)\(&nbsp;\| \)10\|La fi del 10\)\([^[:alnum:]]\)/Final de la 10\4/g
s/\bequip de disseny de GNOME\([^[:alnum:]]\)/equip de disseny del GNOME\1/g
s/\bhi ha una probabilitat gran\([^[:alnum:]]\)/hi ha una probabilitat molt gran\1/g
s/\bhostatjant\([^[:alnum:]]\)/allotjant\1/g
s/\bimpressum\/) per a més informació\([^[:alnum:]]\)/impressum\/)\1/g
s/\binfraestructura. Podeu contactar amb\([^[:alnum:]]\)/infraestructura. Per a més informació, podeu contactar amb\1/g
s/\bllocs preparats per donar-te\([^[:alnum:]]\)/llocs preparats per a donar-te\1/g
s/\bnomés passa que el\([^[:alnum:]]\)/passa que el\1/g
s/\boperatiu Linux pots utilitzar\([^[:alnum:]]\)/operatiu Linux podràs utilitzar\1/g
s/\bportàtil nou costa molts,/portàtil nou costa molts diners,/g
s/\b\([Pp]\)ot adequat\([^[:alnum:]]\)/\1ot ser adequat\2/g
s/\bPots obtenir més informació aquí\([^[:alnum:]]\)/Obtindràs més informació aquí\1/g
s/\bPots trobar una descripció\([^[:alnum:]]\)/Trobaràs una descripció\1/g
s/\b\([Pp]\)rogramari extra\([^[:alnum:]]\)/\1rogramari addicional\2/g
s/\bque et poden ajudar a instal·lar\([^[:alnum:]]\)/on t'ajudaran a instal·lar\1/g
s/\b\([Ss]\)ovint es pot trobar suport comunitari en els fòrums en línia, també\([^[:alnum:]]\)/\1ovint també trobaràs suport comunitari en els fòrums en línia\2/g
s/\bTambé \(podràs\|pots\) cercar \[llocs\([^[:alnum:]]\)/També podràs cercar [llocs\2/g
s/\bTambé \(podràs\|pots\) trobar\([^[:alnum:]]\)/També trobaràs\2/g
s/\bTambé pots veure\([^[:alnum:]]\)/També veuràs\1/g
    s/\b\([Ee]\)quip de\(l\|\) «Final de la 10»\([^[:alnum:]]\)/\1quip «End of 10»\3/g
# websites-kontact-kde-org
# websites-gcompris-net
s/, que vol dir\([^[:alnum:]]\)/, el qual vol dir\1/g
s/\bCamí en\([^[:alnum:]]\)/Camí a\1/g
s/\bde la seva llengua\([^[:alnum:]]\)/del seu idioma\1/g
s/\bels baixin del programari\([^[:alnum:]]\)/els baixin des del programari\1/g
s/\bés omplir una quadrícula\([^[:alnum:]]\)/és emplenar una quadrícula\1/g
s/\bmillores gràfiques en diverses activitats\([^[:alnum:]]\)/millores gràfiques en múltiples activitats\1/g
s/\bPodeu baixar els recursos extres\([^[:alnum:]]\)/Podeu baixar els recursos addicionals\1/g
s/\bSón les dues coses. Des del principi\([^[:alnum:]]\)/És ambdues coses. Des del principi\1/g
s/\bveus per a totes les llengües\([^[:alnum:]]\)/veus per a tots els idiomes\1/g
# websites-ghostwriter-kde-org
s/\bdirectrius de triatge d'error\([^[:alnum:]]\)/directrius del triatge d'errors\1/g
s/\bdisponible a la barra de menús a l'opció\([^[:alnum:]]\)/disponible a la barra de menús sota l'opció\1/g
s/\bInformeu-lo en el\([^[:alnum:]]\)/Informeu-ne en el\1/g
# websites-hugo-kde
s/, l'etiqueta ambiental oficial del govern alemany,\([^[:alnum:]]\)/ -l'etiqueta ambiental oficial del govern alemany-\1/g
s/\badaptar els camins cap a les vostres necessitats\([^[:alnum:]]\)/adaptar els camins a les vostres necessitats\1/g
s/\bAixò eliminarà l'aplicació %1. No tocarà les dades que heu vist\([^[:alnum:]]\)/Això eliminarà l'aplicació sense tocar les dades que heu vist\1/g
s/\befecte directe en el consum d'energia i recursos\([^[:alnum:]]\)/efecte directe en el consum d'energia i els recursos\1/g
s/\bfòrums o a llistes de correus\([^[:alnum:]]\)/fòrums o les llistes de correu\1/g
s/\bo només voleu descobrir més característiques de l'aplicació %1\([^[:alnum:]]\)/o només voleu descobrir més característiques\1/g
s/\bGCompris està hostatjat\([^[:alnum:]]\)/GCompris s'allotja\1/g
s/\bguies d'aprenentatge noves,…\([^[:alnum:]]\)/guies d'aprenentatge noves…\1/g
s/\bha anat malament en cercar\([^[:alnum:]]\)/ha anat malament mentre se cercava\1/g
s/\bheu vist, creat o modificat amb l'aplicació %1\([^[:alnum:]]\)/heu vist, creat o modificat amb l'aplicació\1/g
s/\binformeu-los al\([^[:alnum:]]\)/informeu-ne al\1/g
s/\bpossible, informeu-lo\([^[:alnum:]]\)/possible, informeu-ne\1/g
s/\binvolved) que conté\([^[:alnum:]]\)/involved), la qual conté\1/g
s/\bPer a desinstal·lar l'aplicació %1 seguiu\([^[:alnum:]]\)/Per a desinstal·lar l'aplicació %1, seguiu\1/g
s/\bque heu utilitzat per a instal·lar l'aplicació %1\([^[:alnum:]]\)/que heu utilitzat per a instal·lar l'aplicació\1/g
s/software\()\) que també es pot\([^[:alnum:]]\)/software\1, la qual també es pot\2/g
# websites-kate-editor-org
s/, que ajuda a comprovar\([^[:alnum:]]\)/, el qual ajudarà a comprovar\1/g
s/, que es \(\[\|\)publiquen\([^[:alnum:]]\)/, els quals es \1publiquen\2/g
s/, que s'\(\[\|\)actualitzen mensualment\([^[:alnum:]]\)/, els quals s'\1actualitzen mensualment\2/g
s/) que conté %1 temes\([^[:alnum:]]\)/), el qual conté %1 temes\1/g
    s/#introduction) per als detalls\./#introduction)./g
s/\bAneu fins al \(\[\|\)README del repositori del KSyntaxHighlighting\([^[:alnum:]]\)/Per als detalls, aneu fins al \1README del repositori del KSyntaxHighlighting\2/g
s/\bautomàticament diversos nuclis\([^[:alnum:]]\)/automàticament múltiples nuclis\1/g
s/\bBug Charts for Kate and KWrite\([^[:alnum:]]\)/Gràfics d'errors per al Kate i el KWrite\1/g
s/\bBug Charts for KSyntaxHighlighting\([^[:alnum:]]\)/Gràfics d'errors per al KSyntaxHighlighting\1/g
s/\bcol·laboradors amb nom explícit als components relacionats amb l'editor de text\([^[:alnum:]]\)/col·laboradors amb nom explícit als nostres components relacionats amb l'editor de text\1/g
s/\bComença\/finalitza\([^[:alnum:]]\)/Comença o finalitza\1/g
s/\bconfigurar l'entorn adequadament\([^[:alnum:]]\)/configurar adequadament l'entorn\1/g
s/\bconstruir el Kate\/KWrite basat en\([^[:alnum:]]\)/construir el Kate i el KWrite basats en\1/g
s/\bCrea diversos cursors amb el ratolí\([^[:alnum:]]\)/Crea múltiples cursors amb el ratolí\1/g
s/\bcrear un petit script d'embolcall\([^[:alnum:]]\)/crear un script petit d'embolcall\1/g
s/\bcrides de la línia d'ordres git\([^[:alnum:]]\)/crides de «git» des de la línia d'ordres\1/g
s/\bde cerca\/substitució\([^[:alnum:]]\)/de cerca i substitució\1/g
s/\bdurant la construcció veureu qualsevol\([^[:alnum:]]\)/durant la construcció veieu qualsevol\1/g
s/\ben assignacions\/macros; etc\.\([^[:alnum:]]\)/en assignacions, macros, etc.\1/g
s/\ben el fitxer katerc\/kwriterc\/kdeveloprc\([^[:alnum:]]\)/en els fitxers katerc, kwriterc o kdeveloprc\1/g
s/\benllaçarà simbòlicament de nou als vostres\([^[:alnum:]]\)/enllaçarà simbòlicament de nou amb els vostres\1/g
s/\bextreure els canvis nous dels repositoris\([^[:alnum:]]\)/extreure els canvis nous des dels repositoris\1/g
s/\bfunciona amb el Framework \(\[\|\)KSyntaxHighlighting\([^[:alnum:]]\)/funciona amb el marc de treball \1KSyntaxHighlighting\2/g
s/\bGitLab, CI, …\([^[:alnum:]]\)/GitLab, CI…\1/g
s/\bGitLab \(\[\|\)invent.kde.org\([^[:alnum:]]\)/GitLab a \1invent.kde.org\2/g
s/\bGràcies a totes les persones noves per a unir-se\([^[:alnum:]]\)/Gràcies a totes les persones noves per unir-se\1/g
s/\bi els Frameworks subjacents\([^[:alnum:]]\)/i els marcs de treball subjacents\1/g
s/\binstal·lar de manera relatiu al\([^[:alnum:]]\)/instal·lar relatiu al\1/g
s/\binvent.kde.org documentació\([^[:alnum:]]\)/documentació a invent.kde.org\1/g
s/\bIRC Channel for KDE Development\([^[:alnum:]]\)/Canal IRC per al desenvolupament del KDE\1/g
s/\bKate\/KWrite Bug Tracker\([^[:alnum:]]\)/Seguidor d'errors del Kate i el KWrite\1/g
s/\b\(Kate\|KDE\) IRC Channel\([^[:alnum:]]\)/Canal IRC del \1\2/g
s/\bKate and KWrite \([Mm]\)ailing \([Ll]\)ist\([^[:alnum:]]\)/Llista de correu per al Kate i KWrite\3/g
s/\bKate and KWrite Mailing List Archive\([^[:alnum:]]\)/Arxiu de la llista de correu per al Kate i KWrite\1/g
s/\bKDE Bug Tracking System\([^[:alnum:]]\)/Sistema de seguiment d'errors del KDE\1/g
s/\bKDE i construir-los\/instal·lar-los\([^[:alnum:]]\)/KDE, construir-los i instal·lar-los\1/g
s/\bKSyntaxHighlighting Bug Tracker\([^[:alnum:]]\)/Seguidor d'errors del KSyntaxHighlighting\1/g
s/\bKSyntaxHighlighting repository README\([^[:alnum:]]\)/README en el repositori de KSyntaxHighlighting\1/g
    s/\bque s'han perdut malaguanyadament\([^[:alnum:]]\)/que malauradament s'han perdut\1/g
s/\bla vista d'eina «Projecte actual» inferior\([^[:alnum:]]\)/la vista inferior de l'eina «Projecte actual»\1/g
s/\bLes eines CMake\([^[:alnum:]]\)/Les eines del CMake\1/g
s/\b\([Mm]\)alaguanyadament\([^[:alnum:]]\)/\1alauradament\2/g
s/\bmillors frameworks\([^[:alnum:]]\)/millors marcs de treball\1/g
s/\b\([Mm]\)ou endavant\/avall\([^[:alnum:]]\)/\1ou cap endavant i cap avall\2/g
s/\b\([Mm]\)ou enrere\/amunt\([^[:alnum:]]\)/\1ou cap enrere i cap amunt\2/g
s/\bno hi haurà res fora d'aquest directori contaminat\([^[:alnum:]]\)/no hi haurà res contaminat fora d'aquest directori\1/g
s/\bno oblideu demanar-vos estar\([^[:alnum:]]\)/no oblideu demanar-nos estar\1/g
s/\bon és el directori\([^[:alnum:]]\)/on es troba el directori\1/g
s/\bper a l'hugo\([^[:alnum:]]\)/per a l'Hugo\1/g
s/\bque la «manera del Vim»\([^[:alnum:]]\)/que el «mode del Vim»\1/g
s/\bsi voleu \(\[\|\)col·laborar a KDE/si voleu \1col·laborar amb el KDE/g
s/\bsubstitució en fitxers múltiples oberts\([^[:alnum:]]\)/substitució en múltiples fitxers oberts\1/g
s/\bteniu per defecte dos terminals\([^[:alnum:]]\)/de manera predeterminada teniu dos terminals\1/g
s/\b\([Tt]\)reballeu amb diversos fitxers a la vegada\([^[:alnum:]]\)/\1reballeu amb múltiples fitxers a la vegada\2/g
s/\bWeekly Summary for Kate\/KWrite\([^[:alnum:]]\)/Resum setmanal per al Kate i el KWrite\1/g
# websites-kde-org/kde-org.po
s/\ba les Qt, que proporcionen\([^[:alnum:]]\)/a les Qt, els quals proporcionen\1/g
s/\bAvui KDE\([^[:alnum:]]\)/Avui, el KDE\1/g
s/\bCorrecció d'\(&\|\)error\(s\|\)\([^[:alnum:]]\)/Esmena d'\1errors\3/g
s/\bcorrecció d'\(&\|\)error\(s\|\)\([^[:alnum:]]\)/esmena d'\1errors\3/g
s/\bCorreccions d'\(&\|\)error\(s\|\)\([^[:alnum:]]\)/Esmenes d'\1errors\3/g
s/\bcorreccions d'\(&\|\)error\(s\|\)\([^[:alnum:]]\)/esmenes d'\1errors\3/g
s/\bCorrecció de seguretat\([^[:alnum:]]\)/Esmena de seguretat\1/g
s/\bcorrecció de seguretat\([^[:alnum:]]\)/esmena de seguretat\1/g
s/\bCorreccions de seguretat\([^[:alnum:]]\)/Esmenes de seguretat\1/g
s/\bcorreccions de seguretat\([^[:alnum:]]\)/esmenes de seguretat\1/g
s/\bnous voluntaris i col·laboradors\([^[:alnum:]]\)/voluntaris i col·laboradors nous\1/g
s/\bVeure totes les aplicacions\([^[:alnum:]]\)/Vegeu totes les aplicacions\1/g
# websites-kde-org/promo.po
s/\ba vells i nous problemes\([^[:alnum:]]\)/a problemes vells i nous\1/g
s/\babans d'anar fins al llit\([^[:alnum:]]\)/abans d'anar al llit\1/g
s/\bactualitzeu-vos tan bon punt\([^[:alnum:]]\)/actualitzeu-los tan bon punt\1/g
s/\bcol·lecció de fotos\([^[:alnum:]]\)/col·lecció de fotografies\1/g
s/\bcompartir fotos i fitxers RAW\([^[:alnum:]]\)/compartir fotografies i fitxers RAW\1/g
s/\bFins i tot podeu ampliar el monitor del sistema\([^[:alnum:]]\)/Fins i tot podeu estendre el monitor del sistema\1/g
s/\bfons de pantalla d'escriptori\([^[:alnum:]]\)/fons de pantalla de l'escriptori\1/g
s/\bfrom the FSFE\([^[:alnum:]]\)/des dels FSFE\1/g
s/\bfulls d'estil comuns que s'utilitzen en diversos llocs\([^[:alnum:]]\)/fulls d'estil comuns que s'utilitzen en múltiples llocs\1/g
s/\bGoogle Play i el logo de Google Play\([^[:alnum:]]\)/Google Play i el seu logo\1/g
s/ «\([Dd]\)ev\([Oo]\)ps»\([^[:alnum:]]\)/ operacions de desenvolupador\3/g
    s/\b\([Dd]\)ev\([Oo]\)ps\([^[:alnum:]]\)/operacions de desenvolupador\3/g
s/\bincloent-hi suport per a diversos comptes\([^[:alnum:]]\)/incloent-hi suport per a múltiples comptes\1/g
s/\"KDE per als \(creadors\|desenvolupadors\|jugadors\|viatgers\)\([^[:alnum:]]\)/\"KDE per a \1\2/g
s/\bKDE \[Season of KDE/KDE, el \[Season of KDE/g
s/\bllengua noruega Bokmål i Nynorsk, que no era\([^[:alnum:]]\)/llengua noruega Bokmål i Nynorsk, el qual no era\1/g
s/\blluminositat de 450-nit\([^[:alnum:]]\)/brillantor de 450 nits\1/g
s/\bmàquines virtuals, que allotgen\([^[:alnum:]]\)/màquines virtuals, les quals allotgen\1/g
s/\bno paguen per guanyar\([^[:alnum:]]\)/no s'ha de pagar per a guanyar\1/g
s/\bObteniu-lo de F-Droid\([^[:alnum:]]\)/Obteniu-lo des de F-Droid\1/g
s/\bon són els lavabos\([^[:alnum:]]\)/on es troben els lavabos\1/g
s/\bpòdcast preferits i actualitzeu-vos tan\([^[:alnum:]]\)/pòdcast preferits i actualitzeu tan\1/g
s/\bprivacitat de KDE, que dona\([^[:alnum:]]\)/privacitat de KDE, el qual dona\1/g
s/\bprogramari de KDE\([^[:alnum:]]\)/programari KDE\1/g
s/\bque s'adapta a vós\([^[:alnum:]]\)/que s'adapta a tu\1/g
s/\bs'executa en diversos sistemes\([^[:alnum:]]\)/s'executa en múltiples sistemes\1/g
s/\btelemetria, que proporcionen\([^[:alnum:]]\)/telemetria, els quals proporcionen\1/g
s/\bTokodon admet la majoria de les funcions\([^[:alnum:]]\)/Tokodon admet la majoria de les característiques\1/g
s/\bvostra posició actual i de qualsevol anunci\([^[:alnum:]]\)/vostra posició actual, així com de qualsevol anunci\1/g
s/\bvostres viatges amb els vostres amics\([^[:alnum:]]\)/vostres viatges amb els amics\1/g
# websites-kontact-kde-org
s/\bamb servidors remots estan encriptades per defecte\([^[:alnum:]]\)/amb servidors remots estan encriptades de manera predeterminada\1/g
s/\bconnectar amb diversos servidors LDAP\([^[:alnum:]]\)/connectar amb múltiples servidors LDAP\1/g
s/\bIdentitats múltiples\([^[:alnum:]]\)/Múltiples identitats\1/g
s/\bquan es tracta de contingut en diversos idiomes\([^[:alnum:]]\)/quan es tracta de contingut en múltiples idiomes\1/g
s/\bservidors LDAP, que després\([^[:alnum:]]\)/servidors LDAP, els quals després\1/g
s/\bSincronització del correu, el calendari, les llibretes d'adreces a servidors remots\([^[:alnum:]]\)/Sincronització del correu, el calendari, les llibretes d'adreces amb servidors remots\1/g
s/\bSuport per a calendaris múltiples\([^[:alnum:]]\)/Suport per a múltiples calendaris\1/g
# websites-krita-org
s/\bca\/index.xml)\([^[:alnum:]]\)/ca-va\/index.xml)\1/g
s/\ba través de distintius comunitaris\([^[:alnum:]]\)/mitjançant distintius comunitaris\1/g
s/\bde 32-Bits\([^[:alnum:]]\)/de 32 bits\1/g
s/\bde Windows Store\([^[:alnum:]]\)/de la Windows Store\1/g
s/\bDiversos tipus de pinzells\([^[:alnum:]]\)/Múltiples tipus de pinzells\1/g
s/\bfuncionalitats i connectors\([^[:alnum:]]\)/característiques i connectors\1/g
s/\bgaire bé; aparentment\([^[:alnum:]]\)/gaire bé. Aparentment\1/g
s/\bi relatives a escenes\([^[:alnum:]]\)/i en referència a l'escena\1/g
s/\bLlegeix sobre què poden fer les donacions\([^[:alnum:]]\)/Llegiu sobre què poden fer les donacions\1/g
s/\bllibre d'art\([^[:alnum:]]\)/llibre artístic\1/g
s/\bpells de ceba («onion skinning»)\([^[:alnum:]]\)/pells de ceba\1/g
s/\bper no fer el seguiment\([^[:alnum:]]\)/per a no fer el seguiment\1/g
s/\bPodeu modificar la selecció difuminant-la i invertint-la\([^[:alnum:]]\)/Es pot modificar difuminant-la i invertint-la\1/g
s/\bquin donatiu era vostre\([^[:alnum:]]\)/quin donatiu era el vostre\1/g
s/\btambé ha estat abordant\([^[:alnum:]]\)/també ha anat abordant\1/g
# websites-manifesto-kde-org
s/\b\([Dd]\)rets d'autors\([^[:alnum:]]\)/\1rets d'autor\2/g
# websites-okular-kde-org
s/\bCliqueu a l'etiqueta per a trobar més informació\([^[:alnum:]]\)/Per a trobar més informació, cliqueu a l'etiqueta\1/g
# websites-plasma-bigscreen-org
s/, als dispositius\([^[:alnum:]]\)/, en els dispositius\1/g
s/\bactivat a la implementació\([^[:alnum:]]\)/activat sota la implementació\1/g
s/\bbeta és en fase de proves\([^[:alnum:]]\)/beta es troba en fase de proves\1/g
# websites-plasma-mobile-org
s/\[Website\]/\[Lloc web\]/g
s/\bempaquetat en diversos repositoris\([^[:alnum:]]\)/empaquetat en múltiples repositoris\1/g
s/\bper a si mateixos, o en els seus productes\([^[:alnum:]]\)/per a si mateixes o en els seus productes\1/g
s/\bPlasma 6\*\* estan disponibles actualment\([^[:alnum:]]\)/Plasma 6\*\* actualment estan disponibles\1/g
s/\bWayland, i proporciona\([^[:alnum:]]\)/Wayland, proporciona\1/g
# websites-skrooge-org
s/, i informeu la vostra distribució/ i informeu a la vostra distribució/g
s/, que no coincideix/, el qual no coincideix/g
s/, però de vegades utilitzat/, però de vegades és utilitzat/g
s/\ba la meva llengua\([^[:alnum:]]\)/al meu idioma\1/g
s/\bAixò no és tan fàcil de definir\([^[:alnum:]]\)/No és tan fàcil definir\1/g
s/\baneu a \(\[\|\)obtenir-lo\([^[:alnum:]]\)/\1obteniu-lo\2/g
s/\bAquest fitxer ha de ser un fitxer de text\([^[:alnum:]]\)/Aquest fitxer haurà de ser de text\1/g
s/\bbeneficiari si es troba\([^[:alnum:]]\)/beneficiari, si es troba\1/g
s/\bbuscant una inversió que val la pena\([^[:alnum:]]\)/buscant una inversió que valgui la pena\1/g
s/\b\([Cc]\)odi del banc\([^[:alnum:]]\)/\1odi bancari\2/g
s/\bCoverity Scan Build Status\([^[:alnum:]]\)/Estat de la construcció de Coverity Scan\1/g
s/\bd'accions i de monedes de moltes\([^[:alnum:]]\)/d'accions i de monedes des de moltes\1/g
s/\bdesprés de presentar només el tauler\([^[:alnum:]]\)/després de només introduir en el tauler\1/g
s/\bdisponible en els repositoris oficials sigui normalment\([^[:alnum:]]\)/disponible en els repositoris oficials estigui normalment\1/g
s/\bEines\/Reinicia\([^[:alnum:]]\)/Eines -> Reinicia\1/g
s/\bEines\/Obre\([^[:alnum:]]\)/Eines -> Obre\1/g
s/\bexecutar ordres «sql» múltiples\([^[:alnum:]]\)/executar múltiples ordres «sql»\1/g
s/\bformat d'arxiu específic financer\([^[:alnum:]]\)/format de fitxer específic de finances\1/g
s/\bgestor de finances personals basada\([^[:alnum:]]\)/gestor de finances personals basat\1/g
s/\bHa fallat la importació de\([^[:alnum:]]\)/Fallada durant la importació de\1/g
s/\bimportar documents de moltes\([^[:alnum:]]\)/importar documents des de moltes\1/g
s/\bInstal·lar l'Skrooge:/Instal·leu l'Skrooge:/g
s/\bno hi és, o està obsolet\([^[:alnum:]]\)/no hi és, o està obsoleta\1/g
s/\bObrint error o desitjos\([^[:alnum:]]\)/Obrint errors o desitjos\1/g
s/\bPer això, cal/Per a fer això, cal/g
s/\bPlatform\/\/5\.15 que és el final de la vida\([^[:alnum:]]\)/Platform\/\/5.15, el qual ha arribat al final\1/g
s/\bQuan s'obre un document els paràmetres emmagatzemats en el document (subratllat) cal tornar-los a carregar\([^[:alnum:]]\)/Quan s'obre un document, cal tornar a carregar els paràmetres emmagatzemats en el document (subratllat)\1/g
s/\bquan una importació s'activa\([^[:alnum:]]\)/quan s'activa una importació\1/g
s/\bque aquest problema ja no s'hagi informat abans\([^[:alnum:]]\)/que aquest problema no s'hagi informat abans\1/g
s/\brecuperarà de la Configuració\([^[:alnum:]]\)/recuperarà des de la Configuració\1/g
s/\bSkrooge del sistema de paquets\([^[:alnum:]]\)/Skrooge des del sistema de paquets\1/g
s/\btraduirà a diversos idiomes\([^[:alnum:]]\)/traduirà a múltiples idiomes\1/g
s/\b\([Tt]\)robareu estadístiques\([^[:alnum:]]\)/\1robareu les estadístiques\2/g
s/\bVersió de desenvolupament\([^[:alnum:]]\)/Versió en desenvolupament\1/g
s/\b\([Vv]\)ersió Snap de l'Skrooge\([^[:alnum:]]\)/\1ersió snap de l'Skrooge\2/g
s/\bVeure totes\([^[:alnum:]]\)/Vegeu totes\1/g
# websites-timeline-kde-org
s/\bagraïxen\([^[:alnum:]]\)/agraeixen\1/g
s/\bBarcelona de l'1 al 7 d'octubre\([^[:alnum:]]\)/Barcelona des de l'1 fins al 7 d'octubre\1/g
s/\bdonant suport el programari\([^[:alnum:]]\)/donant suport al programari\1/g
s/\bel \[PinePhone KDE Community Edition\([^[:alnum:]]\)/l'\[edicio de la comunitat KDE per a PinePhone\1/g
s/\bEls Konqis comunitat\([^[:alnum:]]\)/Els Konqis de la comunitat\1/g
s/\bGitLab es pot trobar\([^[:alnum:]]\)/GitLab es troba\1/g
s/\bi Frameworks\([^[:alnum:]]\)/i els Frameworks\1/g
s/\bKDE executa dos recaptacions de fons consecutius i els completa tots dos\([^[:alnum:]]\)/El KDE executa dues recaptacions de fons consecutives i les completa totes dues\1/g
s/\bmigració a la plataforma\([^[:alnum:]]\)/migració cap a la plataforma\1/g
s/\bplataforma operacions de desenvolupador principal\([^[:alnum:]]\)/plataforma principal de les operacions de desenvolupador\1/g
s/\bproductes de la comunitat, que es llançarien\([^[:alnum:]]\)/productes de la comunitat, els quals es llançarien\1/g
s/\bQt al seu cor\([^[:alnum:]]\)/Qt en el seu cor\1/g
s/\btransició a l'última\([^[:alnum:]]\)/transició cap a l'última\1/g
# websites-video-subtitles
s/\bVoleu obrir el KMines\([^[:alnum:]]\)/Obro el KMines\1/g
 # #
s/\"Anem fins a repassar-ho\"/\"Repassem'ho\"/g
s/, iniciar sessió i parlar\([^[:alnum:]]\)/, iniciar la sessió i parlar\1/g
s/, la qual cosa és una bona idea/, el qual és una bona idea/g
s/, que encara és molt de temps/, el qual encara és molt de temps/g
s/, que sempre s'agraeix/, això sempre s'agraeix/g
s/\ba la sèrie de vídeos del Ramón\([^[:alnum:]]\)/a la sèrie de vídeos d'en Ramón\1/g
s/\bacceleració de GPU abans del Photoshop\([^[:alnum:]]\)/acceleració de GPU abans que el Photoshop\1/g
s/\bacoblador Pinzells pots\([^[:alnum:]]\)/acoblador «Pinzells» pots\1/g
s/\bAixí és com es poden escriure proves diverses\([^[:alnum:]]\)/Així és com es poden escriure múltiples proves\1/g
s/\bAixò és lògic perquè no hi ha res amb el que treballar\([^[:alnum:]]\)/Això és lògic perquè no hi ha res amb què treballar\1/g
s/\bAixò va ser genial adonar-nos\([^[:alnum:]]\)/Va ser genial adonar-nos\1/g
s/\balgunes parts de la interfície del Krita no funcionen\([^[:alnum:]]\)/algunes parts de la interfície del Krita no funcionaran\1/g
s/\bamb aquest augment augmentem\([^[:alnum:]]\)/amb aquest augment fem augmentar\1/g
s/\bAnava fins a acabar la Universitat\([^[:alnum:]]\)/Anava a acabar la Universitat\1/g
s/\bAra comencem amb el Plasma de confiança\([^[:alnum:]]\)/Ara comencem amb un Plasma de confiança\1/g
s/\bAra, si vas més enllà de\([^[:alnum:]]\)/Ara, si aneu més enllà\1/g
s/\bBig», que era\([^[:alnum:]]\)/Big», la qual era\1/g
s/\bbotigues d'aplicacions\. Botigues d'aplicacions\([^[:alnum:]]\)/botigues d'aplicacions. Aquestes botigues\1/g
s/\bCom a últimes paraules, moltes gràcies per estar disponible per aquesta\([^[:alnum:]]\)/Com a últimes paraules. Moltes gràcies per estar disponible per a aquesta\1/g
s/\bConfiguració\/acobladors\/predefinit del pinzell i el Krita recorda la\([^[:alnum:]]\)/«Configuració -> Acobladors -> Pinzells predefinits» i el Krita recordarà la\1/g
s/\bcórrer per donar-nos suport\([^[:alnum:]]\)/córrer per a donar-nos suport\1/g
s/\bcreació de scripts de Python, que és una mica\([^[:alnum:]]\)/creació de scripts en Python, la qual està una mica\1/g
s/\bcuriositat pel programari del Krita\([^[:alnum:]]\)/curiositat per aquest programari\1/g
s/\bde l'estilet\([^[:alnum:]]\)/del llapis\1/g
s/\bDesament d'imatges i treball segur\([^[:alnum:]]\)/Deseu les imatges i treballeu amb seguretat\1/g
s/\bdesenvolupadors i comparteix les teves idees o afegeix\([^[:alnum:]]\)/desenvolupadors i compartir les teves idees o afegir\1/g
s/\bdesenvolupadors per construir i fer quelcom genial\([^[:alnum:]]\)/desenvolupadors que construiran i faran quelcom genial\1/g
s/\bdiners que no teníem quan això\([^[:alnum:]]\)/uns diners que no teníem quan\1/g
s/\beines, comencen a afegir fases\([^[:alnum:]]\)/eines, es comencen a afegir fases\1/g
s/\bel nivell de la pròpia aplicació\([^[:alnum:]]\)/del nivell de la pròpia aplicació\1/g
s/\bel ús més\([^[:alnum:]]\)/l'ús més\1/g
s/\bEl zoom, la panoràmica i el gir i també\([^[:alnum:]]\)/El zoom, la panoràmica, el gir i també\1/g
s/\bemmirallar la imatge, girar la imatge\([^[:alnum:]]\)/emmirallar la imatge, girar-la\1/g
s/\bEn aquell moment Lukas va dir\([^[:alnum:]]\)/En aquell moment, en Lukas va dir\1/g
s/\bencara és al meu porta-retalls\([^[:alnum:]]\)/encara està al meu porta-retalls\1/g
s/\benllaçat al compte oficial\([^[:alnum:]]\)/enllaçat amb el compte oficial\1/g
s/\bés absolutament essencial i\([^[:alnum:]]\)/que és absolutament essencial i\1/g
s/\bés per fer-te\([^[:alnum:]]\)/és per a fer-te\1/g
s/\bEspera[!] En realitat, això no\([^[:alnum:]]\)/Espera\! En realitat, aquesta no\1/g
s/\bFas alguns traços i dius que aquest aspecte és molt bo i el pinzell m'agrada com és\([^[:alnum:]]\)/Fas algunes pinzellades i penses que es veu molt bé, és molt bo i m'agrada tal com és\1/g
s/\bfitxer per a instal·lar\"/fitxer per a instal·lar-lo\"/g
s/\bfuncions molt sol·licitades\([^[:alnum:]]\)/caraterístiques molt sol·licitades\1/g
s/\b\([Ff]\)undació Krita\([^[:alnum:]]\)/Krita Foundation\2/g
s/\bgràcies, gràcies» i això és només\([^[:alnum:]]\)/gràcies, gràcies» i això és senzillament\1/g
s/\bHi ha més de 600\([^[:alnum:]]\)/N'hi ha més de 600\1/g
s/\bHola Ramon, encantat de veure't\([^[:alnum:]]\)/Hola Ramon, encantada de veure't\1/g
s/\bi això és un viatge increïble\([^[:alnum:]]\)/el qual és un viatge increïble\1/g
s/\bi bolígrafs d'art\([^[:alnum:]]\)/i llapis d'art\1/g
s/\bI puc executar això diverses\([^[:alnum:]]\)/I puc executar-ho múltiples\1/g
s/\bIndica una mida i fes clic al botó de creació\([^[:alnum:]]\)/Indica una mida i fes clic al botó «Crea»\1/g
s/\bInicialment Lukas\([^[:alnum:]]\)/Inicialment, en Lukas\1/g
s/\bjove, Cyrille Berger\([^[:alnum:]]\)/jove, en Cyrille Berger\1/g
    s/\bperò Cyrille\([^[:alnum:]]\)/però en Cyrille\1/g
s/\bKate de KDE i vaig copiar-ho\([^[:alnum:]]\)/Kate del KDE i vaig copiar-lo\1/g
s/\bKDE, que va ser molta feina\([^[:alnum:]]\)/KDE, el qual va ser molta feina\1/g
s/\bKrita desa el vostre treball en silenci\([^[:alnum:]]\)/Krita desarà el vostre treball en silenci\1/g
s/\bKrita sap que molts pinzells poden desbordar\([^[:alnum:]]\)/Krita sap que ub munt de pinzells pot desbordar\1/g
s/\bla mida o cap a l'esquerra per a disminuir la mida\([^[:alnum:]]\)/la mida o cap a l'esquerra per a disminuir-la\1/g
s/\bLa Restauració d'un punt\([^[:alnum:]]\)/La restauració d'un punt\1/g
s/\bLa selecció de pinzell,/La selecció del pinzell,/g
s/\bles teves capes amb el que vulguis\([^[:alnum:]]\)/les vostres capes amb el que vulgueu\1/g
s/\bli ho expliques\([^[:alnum:]]\)/li ho expliqués\1/g
s/\bmenú Configuració\/Configurar el Krita \/ General \/ Secció/menú «Configuració -> Configura el Krita… -> General/g
    s/\/Gestió de fitxers i allí/-> pestanya Gestió de fitxers» i allí/g
s/\bmode d'esborrador\([^[:alnum:]]\)/mode esborrador\1/g
s/\bMoltes gràcies per veure-ho\([^[:alnum:]]\)/Moltes gràcies per veure'l\1/g
s/\bmotors dels pinzells\([^[:alnum:]]\)/motors de pinzell\1/g
s/\bNo ho faria. No ho faré\([^[:alnum:]]\)/Jo no ho faria. No ho faré\1/g
s/\bpensa a dir-nos que t'agrada\([^[:alnum:]]\)/pensa a dir-nos-ho\1/g
s/\bper Kross, que és el que va\([^[:alnum:]]\)/per Kross, el qual és el que va\1/g
s/\bper pagar el lloguer\([^[:alnum:]]\)/per a pagar el lloguer\1/g
s/\bper a veure només alguns pinzells\([^[:alnum:]]\)/per a veure'n només alguns\1/g
s/\bPer descomptat, això venia amb\([^[:alnum:]]\)/Per descomptat, aquest venia amb\1/g
s/\bperdre'l pel projecte\([^[:alnum:]]\)/perdre'l per al projecte\1/g
s/\bpermís per contestar\([^[:alnum:]]\)/permís per a contestar\1/g
s/\bperò el resultat del pinzell és molt fresc\([^[:alnum:]]\)/però el resultat del pinzell és molt xulo\1/g
s/\bpersones a la llista de comissions\([^[:alnum:]]\)/a la llista de comissions\1/g
s/\bpinzell i tornes a seleccionar el pinzell anterior\([^[:alnum:]]\)/pinzell i tornes a seleccionar l'anterior\1/g
s/\bpot ser realment molest, oi\([^[:alnum:]]\)/pot ser realment molest. Oi\1/g
s/\bpràctica al principi perquè\([^[:alnum:]]\)/pràctica al començament perquè\1/g
s/\bQuan estem pintant, hem de situar-nos d'on triar els colors\([^[:alnum:]]\)/Quan pintem, necessitem un lloc per a triar els colors\1/g
s/\"que és «Ctrl+Alt+S»/\"la qual és «Ctrl+Alt+S»/g
s/\bque és exempta\([^[:alnum:]]\)/que està exempta\1/g
s/\bque són molt complexes i ens superen\([^[:alnum:]]\)/que són molt complexes i que ens superen\1/g
s/\bque utilitzar el Krita\([^[:alnum:]]\)/que utilitza el Krita\1/g
s/\bRamón per a treballar amb nosaltres\([^[:alnum:]]\)/Ramón per treballar amb nosaltres\1/g
s/\bs'ha desat amb el seu estat exactament\([^[:alnum:]]\)/s'ha desat exactament amb el seu estat\1/g
s/\bselecciona propietats i després\([^[:alnum:]]\)/selecciona «Propietats» i després\1/g
s/\bapareixerà una finestra nova i veig moltes opcions. tu\([^[:alnum:]]\)/apareixerà una finestra nova i hi veuràs moltes opcions. Tu\1/g
s/\bsigne «+», que també\([^[:alnum:]]\)/signe «+», el qual també\1/g
s/\bsimulant fallades diverses\([^[:alnum:]]\)/simulant múltiples fallades\1/g
s/\bsuficients per patrocinar\([^[:alnum:]]\)/suficients per a patrocinar\1/g
s/\bsuport i tenim un fons de desenvolupament\([^[:alnum:]]\)/suport i que tenim un fons de desenvolupament\1/g
s/\btauleta, verifica que la tauleta és compatible\([^[:alnum:]]\)/tauleta, verifica que és compatible\1/g
s/\bUn cop creis una imatge pots començar a treballar-hi\([^[:alnum:]]\)/Un cop creis una imatge podràs començar a treballar-hi\1/g
s/\bUna vegada que el Krita es descarrega i has actualitzat els controladors\([^[:alnum:]]\)/Una vegada descarregat el Krita i hagis actualitzat els controladors\1/g
s/\bÚs comercial del Krita\([^[:alnum:]]\)/L'ús comercial del Krita\1/g
s/\butilitzem per defecte la tecla\([^[:alnum:]]\)/utilitzem de manera predeterminada la tecla\1/g
s/\bútil de Ton\([^[:alnum:]]\)/útil d'en Ton\1/g
s/\bútils, si feu informes d'error\([^[:alnum:]]\)/útils, si en feu\1/g
s/\bva crear el primer cop/va crear per primer cop,/g
s/\bvam adonar-nos que en especial la comunitat\([^[:alnum:]]\)/vam adonar-nos que en especial a la comunitat\1/g
s/\bvam començar a construir-ho\([^[:alnum:]]\)/vam començar a construir-lo\1/g
s/\bVam començat a implementar\([^[:alnum:]]\)/Vam començar a implementar\1/g
s/\bveiem «fitxer nou»\([^[:alnum:]]\)/veiem «Fitxer nou»\1/g
s/\bVen el Krita en diverses\([^[:alnum:]]\)/Es ven el Krita en diverses\1/g
 #
s/\bAnem al Sway\([^[:alnum:]]\)/Anem cap al Sway\1/g
s/\bPodem saltar al Gnome\([^[:alnum:]]\)/Podem saltar fins al Gnome\1/g
s/\bPuc anar al Hyprland\([^[:alnum:]]\)/Puc anar fins al Hyprland\1/g
# welcome-app
s/\btant com ho vam gaudir fent-lo\([^[:alnum:]]\)/tant com vam gaudir fent-lo\1/g
# xdg-desktop-portal-kde
s/\bEstabliment de fons de pantalla\([^[:alnum:]]\)/Establiu el fons de pantalla\1/g
 #
s/\bAixò podria causar la pèrdua de dades si l'aplicació té canvis sense desar quan s'esdevingui\([^[:alnum:]]\)/Això podria causar la pèrdua de dades si quan esdevingui l'aplicació té canvis sense desar\1/g
s/\bha demanat accés a controlar remotament\([^[:alnum:]]\)/ha demanat accés per a controlar remotament\1/g
s/\bIncloure\([^[:alnum:]]\)/Inclou\1/g
  s/\bInclou adreces &MI\([^[:alnum:]]\)/Inclou les adreces de \&MI\1/g
  s/\bInclou o excloure\([^[:alnum:]]\)/Inclou o exclou\1/g
  s/\bInclou operacions\([^[:alnum:]]\)/Inclou les operacions\1/g
# yakuake
s/\bes mogui sobre ells\([^[:alnum:]]\)/es mogui sobre seu\1/g
s/\bL'activació d'aquesta opció\([^[:alnum:]]\)/La selecció d'aquesta opció\1/g
# Zanshin
s/\bAviat deixarà de sentir aquesta veu queixant-se\([^[:alnum:]]\)/Aviat deixareu de queixar-vos\1/g
     s/\bo del que haurien de fer\([^[:alnum:]]\)/o del que s'ha de fer\1/g
s/\bper ser completament\([^[:alnum:]]\)/per a ser completament\1/g
#
s/\bSi s'activa, el mode dinàmic s'iniciarà, i\([^[:alnum:]]\)/Si està marcada, s'iniciarà el mode dinàmic i\1/g

