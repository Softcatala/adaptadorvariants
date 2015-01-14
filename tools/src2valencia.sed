#!/bin/sed -f

# "tradueix" la capçalera
#1,/^msgid / s/\([^[:alnum:]]\)catalan/\1Catalan (Valencian)/g
#1,/^msgid / s/\([^[:alnum:]]\)Catalan/\1Catalan (Valencian)/g
#1,/^msgid / s/\([^[:alnum:]]\)català/\1català (valencià)/g
#1,/^msgid / s/\([^[:alnum:]]\)Català/\1Català (valencià)/g

s/\([^[:alnum:]]\)Language: ca/\1Language: ca-XV/g


# Treure per a eMule. No tradueixis linies que no pertanyin a un msgstr
/^msgstr/,/^#/ {
# /[^[:alnum:]]\"/ { //Afegir per a eMule

# Treure per a eMule. No tradueixis linies comentades
/^#/ b END

# formes verbals complicades.  s'inclouen explícitament les declinacions
# que ens interessen.
s/\([^[:alnum:]]\)\(p\|P\)ugui\([^[:alnum:]]\|$\)/\1\2uga\3/g
s/\([^[:alnum:]]\)\(p\|P\)uguin\([^[:alnum:]]\|$\)/\1\2uguen\3/g
s/\([^[:alnum:]]\)\(a\|A\|desa\|Desa\)ctivi\(n\?[^[:alnum:]]\|$\)/\1\2ctive\3/g
s/\([^[:alnum:]]\)\(a\|A\)grupi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2grupe\3\4/g
s/\([^[:alnum:]]\)\(c\|C\)liqui\(n\?[^[:alnum:]]\|$\)/\1\2lique\3/g
s/\([^[:alnum:]]\)\(a\|A\)propi\(n\?[^[:alnum:]]\|$\)/\1\2prope\3/g
s/\([^[:alnum:]]\)\(a\|A\)justi\(n\?[^[:alnum:]]\|$\)/\1\2juste\3/g
s/\([^[:alnum:]]\)\(c\|C\)onfirmi\(n\?[^[:alnum:]]\|$\)/\1\2onfirme\3/g
s/\([^[:alnum:]]\)\(v\|V\)isiti\(n\?[^[:alnum:]]\|$\)/\1\2isite\3/g
s/\([^[:alnum:]]\)\(b\|B\)uidi\(n\?[^[:alnum:]]\|$\)/\1\2uide\3/g
s/\([^[:alnum:]]\)\(p\|P\)regunti\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2regunte\3\4/g
s/\([^[:alnum:]]\)\(e\|E\)xecuti\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2xecute\3\4/g
s/\([^[:alnum:]]\)\(s\|S\)olucioni\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2olucione\3\4/g
s/\([^[:alnum:]]\)\(r\|R\)ecordi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2ecorde\3\4/g
s/\([^[:alnum:]]\)\(tr\|Tr\|canv\|Canv\|ampl\|Ampl\|env\|Env\|reenv\|Reenv\|inic\|Inic\|reinic\|Reinic\)iï\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2ie\3\4/g
s/\([^[:alnum:]]\)\(m\|M\)ostri\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2ostre\3\4/g
s/\([^[:alnum:]]\)\(a\|A\)turi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2ture\3\4/g
s/\([^[:alnum:]]\)\(p\|P\)ari\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2are\3\4/g
s/\([^[:alnum:]]\)\(b\|B\)aixi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2aixe\3\4/g
s/\([^[:alnum:]]\)\(i\|I\|rei\|Rei\)ntenti\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2ntente\3\4/g
s/\([^[:alnum:]]\)\(Desc\|desc\|c\|C\)onnecti\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2onnecte\3\4/g
s/\([^[:alnum:]]\)\(P\|p\)rovi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2rove\3\4/g
s/\([^[:alnum:]]\)\(M\|m\|T\|t\)anqui\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2anque\3\4/g
s/\([^[:alnum:]]\)\(A\|a\)rribi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2rribe\3\4/g
s/\([^[:alnum:]]\)\(U\|u\)tilitzi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2tilitze\3\4/g
s/\([^[:alnum:]]\)\(Q\|q\)uedi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2uede\3\4/g
s/\([^[:alnum:]]\)\(A\|a\)dreci\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2drece\3\4/g
s/\([^[:alnum:]]\)\(M\|m\)arqui\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2arque\3\4/g
s/\([^[:alnum:]]\)\(P\|p\)osi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2ose\3\4/g
s/\([^[:alnum:]]\)\(E\|e\)mmagatzemi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2mmagatzeme\3\4/g
s/\([^[:alnum:]]\)\(G\|g\)estioni\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2estione\3\4/g
s/\([^[:alnum:]]\)\(A\|a\)nalitzi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2nalitze\3\4/g
s/\([^[:alnum:]]\)\(I\|i\)nstal·li\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2nstal·le\3\4/g
s/\([^[:alnum:]]\)\(I\|i\)nstaŀli\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2nstaŀle\3\4/g
s/\([^[:alnum:]]\)\(P\|p\)arpellegi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2arpellege\3\4/g
s/\([^[:alnum:]]\)\(C\|c\)reï\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2ree\3\4/g
s/\([^[:alnum:]]\)\(I\|i\)mplementi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2mplemente\3\4/g
s/\([^[:alnum:]]\)\(U\|u\)tilitzi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2tilitze\3\4/g
s/\([^[:alnum:]]\)\(C\|c\)erqui\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2erque\3\4/g
s/\([^[:alnum:]]\)\(P\|p\)engi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2enge\3\4/g
s/\([^[:alnum:]]\)\(F\|f\)uncioni\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2uncione\3\4/g
s/\([^[:alnum:]]\)\(E\|e\)specifiqui\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2specifique\3\4/g
s/\([^[:alnum:]]\)\(H\|h\)ereti\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2erete\3\4/g
s/\([^[:alnum:]]\)\(V\|v\)isualitzi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2isualitze\3\4/g
s/\([^[:alnum:]]\)\(P\|p\)ubliqui\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2ublique\3\4/g
s/\([^[:alnum:]]\)\(C\|c\)odifiqui\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2odifique\3\4/g

s/\([^[:alnum:]]\)enllaci\([^[:alnum:]]\|$\)/\1enllace\2/g
s/\([^[:alnum:]]\)Enllaci\([^[:alnum:]]\|$\)/\1Enllace\2/g
s/\([^[:alnum:]]\)surti\([^[:alnum:]]\|$\)/\1isca\2/g
s/\([^[:alnum:]]\)Surti\([^[:alnum:]]\|$\)/\1Isca\2/g
s/\([^[:alnum:]]\)surtin\([^[:alnum:]]\|$\)/\1isquen\2/g
s/\([^[:alnum:]]\)Surtin\([^[:alnum:]]\|$\)/\1Isquen\2/g
s/\([^[:alnum:]]\)\(a\|A\)paregui\([^[:alnum:]]\|$\)/\1\2parega\3/g
s/\([^[:alnum:]]\)\(a\|A\)paregui\(n\|s\)\([^[:alnum:]]\|$\)/\1\2paregue\3\4/g
s/\([^[:alnum:]]\)\(e\|E\)scrigui\([^[:alnum:]]\|$\)/\1\2scriga\3/g
s/\([^[:alnum:]]\)\(e\|E\)scrigui\(n\|s\)\([^[:alnum:]]\|$\)/\1\2scrigue\3\4/g
s/\([^[:alnum:]]\)\(p\|P\)rengui\([^[:alnum:]]\|$\)/\1\2renga\3/g
s/\([^[:alnum:]]\)\(p\|P\)rengui\(n\|s\)\([^[:alnum:]]\|$\)/\1\2rengue\3\4/g
s/\([^[:alnum:]]\)\(c\|C\)algui\([^[:alnum:]]\|$\)/\1\2alga\3/g
s/\([^[:alnum:]]\)\(c\|C\)algui\(n\|s\)\([^[:alnum:]]\|$\)/\1\2algue\3\4/g
s/\([^[:alnum:]]\)\(s\|S\)igui\([^[:alnum:]]\|$\)/\1\2iga\3/g
s/\([^[:alnum:]]\)\(s\|S\)iguin\([^[:alnum:]]\|$\)/\1\2iguen\3/g
s/\([^[:alnum:]]\)\(e\|E\)stigui\([^[:alnum:]]\|$\)/\1\2stiga\3/g
s/\([^[:alnum:]]\)\(e\|E\)stiguin\([^[:alnum:]]\|$\)/\1\2stiguen\3/g
s/\([^[:alnum:]]\)\(p\|P\)ermeti\([^[:alnum:]]\|$\)/\1\2ermeta\3/g
s/\([^[:alnum:]]\)\(p\|P\)ermeti\(n\|s\)\([^[:alnum:]]\|$\)/\1\2ermete\3\4/g
s/\([^[:alnum:]]\)\(obt\|Obt\|cont\|Cont\|t\|T\)ingui\([^[:alnum:]]\|$\)/\1\2inga\3/g
s/\([^[:alnum:]]\)\(obt\|Obt\|cont\|Cont\|t\|T\)ingui\(n\|s\)\([^[:alnum:]]\|$\)/\1\2ingue\3\4/g
s/\([^[:alnum:]]\)\(v\|V\)ulgui\([^[:alnum:]]\|$\)/\1\2ulga\3/g
s/\([^[:alnum:]]\)\(v\|V\)ulgui\(n\|s\)\([^[:alnum:]]\|$\)/\1\2ulgue\3\4/g
s/\([^[:alnum:]]\)\(v\|V\)egi\([^[:alnum:]]\|$\)/\1\2eja\3/g
s/\([^[:alnum:]]\)\(v\|V\)egi\(n\|s\)\([^[:alnum:]]\|$\)/\1\2ege\3\4/g
s/\([^[:alnum:]]\)\(i\|I\)nclogui\([^[:alnum:]]\|$\)/\1\2ncloga\3/g
s/\([^[:alnum:]]\)\(i\|I\)nclogui\(n\|s\)\([^[:alnum:]]\|$\)/\1\2nclogue\3\4/g
s/\([^[:alnum:]]\)\(h\|H\)agi\([^[:alnum:]]\|$\)/\1\2aja\3/g
s/\([^[:alnum:]]\)\(h\|H\)àgiu\([^[:alnum:]]\|$\)/\1\2àgeu\3/g
s/\([^[:alnum:]]\)\(h\|H\)agi\(n\|s\)\([^[:alnum:]]\|$\)/\1\2age\3\4/g
s/\([^[:alnum:]]\)\(v\|V\)enci\([^[:alnum:]]\|$\)/\1\2ença\3/g
s/\([^[:alnum:]]\)\(v\|V\)enci\(n\|s\)\([^[:alnum:]]\|$\)/\1\2ence\3\4/g
s/\([^[:alnum:]]\)\(r\|R\)ebi\([^[:alnum:]]\|$\)/\1\2eba\3/g
s/\([^[:alnum:]]\)\(r\|R\)ebi\(n\|s\)\([^[:alnum:]]\|$\)/\1\2eben\3\4/g
s/\([^[:alnum:]]\)\(f\|F\)aci\([^[:alnum:]]\|$\)/\1\2aça\3/g
s/\([^[:alnum:]]\)\(f\|F\)aci\(n\|s\)\([^[:alnum:]]\|$\)/\1\2ace\3\4/g
s/\([^[:alnum:]]\)\(d\|D\)igui\([^[:alnum:]]\|$\)/\1\2iga\3/g
s/\([^[:alnum:]]\)\(d\|D\)igui\(n\|s\)\([^[:alnum:]]\|$\)/\1\2igue\3\4/g
s/\([^[:alnum:]]\)\(p\|P\)remi\([^[:alnum:]]\|$\)/\1\2rema\3/g
s/\([^[:alnum:]]\)\(p\|P\)remi\(n\|s\)\([^[:alnum:]]\|$\)/\1\2reme\3\4/g




s/\([^[:alnum:]]\)\Ompli\(n\|s\)\([^[:alnum:]]\|$\)/\1Òmpligue\2\3/g
s/\([^[:alnum:]]\)\Ompli\([^[:alnum:]]\|$\)/\1Òmpliga\2/g
s/\([^[:alnum:]]\)\ompli\(n\|s\)\([^[:alnum:]]\|$\)/\1òmpligue\2\3/g
s/\([^[:alnum:]]\)\ompli\([^[:alnum:]]\|$\)/\1òmpliga\2/g
s/\([^[:alnum:]]\)\Obri\(n\|s\)\([^[:alnum:]]\|$\)/\1Òbrigue\2\3/g
s/\([^[:alnum:]]\)\Obri\([^[:alnum:]]\|$\)/\1Òbriga\2/g
s/\([^[:alnum:]]\)\obri\(n\|s\)\([^[:alnum:]]\|$\)/\1òbrigue\2\3/g
s/\([^[:alnum:]]\)\obri\([^[:alnum:]]\|$\)/\1òbriga\2/g



s/\([^[:alnum:]]\)\(ret\|Ret\|t\|T\)orni\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2orne\3\4/g
s/\([^[:alnum:]]\|^\)\(p\|P\)assi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2asse\3\4/g
s/\([^[:alnum:]]\|^\)\(c\|C\)omenci\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2omence\3\4/g
s/\([^[:alnum:]]\|^\)\(t\|T\)robi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2robe\3\4/g
s/\([^[:alnum:]]\|^\)\(d\|D\)emani\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2emane\3\4/g
s/\([^[:alnum:]]\|^\)\(p\|P\)regunti\(n\|s\|\)\([^[:alnum:]]\|$\)/\1\2regunte\3\4/g

## sufix -eix
# formes diferents d'-ix
s/\([^[:alnum:]]\)\([lL]\)legeix\(en\|es\|\)\([^[:alnum:]]\|$\)/\1\2lig\3\4/g
s/\([^[:alnum:]]\)\([aA]_\?\)fegeix\(en\|es\|\)\([^[:alnum:]]\|$\)/\1\2fig\3\4/g
s/\([^[:alnum:]]\)\([lL]\)legeixi\([^[:alnum:]]\|$\)/\1\2lija\3/g
s/\([^[:alnum:]]\)\([lL]\)legeixi\(n\|s\)\([^[:alnum:]]\|$\)/\1\2lige\3\4/g
s/\([^[:alnum:]]\)\([aA]_\?\)fegeixi\([^[:alnum:]]\|$\)/\1\2fija\3/g
s/\([^[:alnum:]]\)\([aA]_\?\)fegeixi\(n\|s\)\([^[:alnum:]]\|$\)/\1\2fige\3\4/g

# formes ja suportades per la regla genèrica
#s/\([^[:alnum:]]\)\(I\|i\)nsereix\([^[:alnum:]]\|$\)/\1\2nserix\2/g
# regla genèrica (quina por..)
#s/\([[:alnum:]]\)gueix\([^[:alnum:]]\|$\)/\1guix\2/g
#s/\([[:alnum:]]\)gueixes\([^[:alnum:]]\|$\)/\1guixes\2/g
#s/\([[:alnum:]]\)gueixen\([^[:alnum:]]\|$\)/\1guixen\2/g
#s/\([[:alnum:]]\)ueix\([^[:alnum:]]\|$\)/\1uïx\2/g
#s/\([[:alnum:]]\)ueixes\([^[:alnum:]]\|$\)/\1uïxes\2/g
#s/\([[:alnum:]]\)ueixen\([^[:alnum:]]\|$\)/\1uïxen\2/g
#s/\([[:alnum:]]\)eix\([^[:alnum:]]\|$\)/\1ix\2/g
#s/\([[:alnum:]]\)eixes\([^[:alnum:]]\|$\)/\1ixes\2/g
#s/\([[:alnum:]]\)eixen\([^[:alnum:]]\|$\)/\1ixen\2/g
# pífies
#s/\([^[:alnum:]]\|^\)aparix\([^[:alnum:]]\|$\)/\1apareix\2/g
#s/\([^[:alnum:]]\|^\)Aparix\([^[:alnum:]]\|$\)/\1Apareix\2/g
#s/\([^[:alnum:]]\|^\)aparixes\([^[:alnum:]]\|$\)/\1apareixes\2/g
#s/\([^[:alnum:]]\|^\)Aparixes\([^[:alnum:]]\|$\)/\1Apareixes\2/g
#s/\([^[:alnum:]]\|^\)aparixen\([^[:alnum:]]\|$\)/\1apareixen\2/g
#s/\([^[:alnum:]]\|^\)Aparixen\([^[:alnum:]]\|$\)/\1Apareixen\2/g
#s/\([^[:alnum:]]\|^\)reconix\([^[:alnum:]]\|$\)/\1reconeix\2/g
#s/\([^[:alnum:]]\|^\)Reconix\([^[:alnum:]]\|$\)/\1Reconeix\2/g
#s/\([^[:alnum:]]\|^\)reconixes\([^[:alnum:]]\|$\)/\1reconeixes\2/g
#s/\([^[:alnum:]]\|^\)Reconixes\([^[:alnum:]]\|$\)/\1Reconeixes\2/g
#s/\([^[:alnum:]]\|^\)reconixen\([^[:alnum:]]\|$\)/\1reconeixen\2/g
#s/\([^[:alnum:]]\|^\)Reconixen\([^[:alnum:]]\|$\)/\1Reconeixen\2/g
#s/\([^[:alnum:]]\|^\)reduix\([^[:alnum:]]\|$\)/\1reduïx\2/g
#s/\([^[:alnum:]]\|^\)Reduix\([^[:alnum:]]\|$\)/\1Reduïx\2/g
#s/\([^[:alnum:]]\|^\)reduixes\([^[:alnum:]]\|$\)/\1reduïxes\2/g
#s/\([^[:alnum:]]\|^\)Reduixes\([^[:alnum:]]\|$\)/\1Reduïxes\2/g
#s/\([^[:alnum:]]\|^\)reduixen\([^[:alnum:]]\|$\)/\1reduïxen\2/g
#s/\([^[:alnum:]]\|^\)Reduixen\([^[:alnum:]]\|$\)/\1Reduïxen\2/g
#s/\([^[:alnum:]]\|^\)matix\([^[:alnum:]]\|$\)/\1mateix\2/g
#s/\([^[:alnum:]]\|^\)conix\([^[:alnum:]]\|$\)/\1coneix\2/g
#s/\([^[:alnum:]]\|^\)Conix\([^[:alnum:]]\|$\)/\1Coneix\2/g
#s/\([^[:alnum:]]\|^\)conixes\([^[:alnum:]]\|$\)/\1coneixes\2/g
#s/\([^[:alnum:]]\|^\)Conixes\([^[:alnum:]]\|$\)/\1Coneixes\2/g
#s/\([^[:alnum:]]\|^\)conixen\([^[:alnum:]]\|$\)/\1coneixen\2/g
#s/\([^[:alnum:]]\|^\)Conixen\([^[:alnum:]]\|$\)/\1Coneixen\2/g
#s/\([^[:alnum:]]\|^\)desconix\([^[:alnum:]]\|$\)/\1desconeix\2/g
#s/\([^[:alnum:]]\|^\)Desconix\([^[:alnum:]]\|$\)/\1Desconeix\2/g
#s/\([^[:alnum:]]\|^\)desconixes\([^[:alnum:]]\|$\)/\1desconeixes\2/g
#s/\([^[:alnum:]]\|^\)Desconixes\([^[:alnum:]]\|$\)/\1Desconeixes\2/g
#s/\([^[:alnum:]]\|^\)desconixen\([^[:alnum:]]\|$\)/\1desconeixen\2/g
#s/\([^[:alnum:]]\|^\)Desconixen\([^[:alnum:]]\|$\)/\1Desconeixen\2/g
#s/\([^[:alnum:]]\|^\)parix\([^[:alnum:]]\|$\)/\1pareix\2/g
#s/\([^[:alnum:]]\|^\)Parix\([^[:alnum:]]\|$\)/\1Pareix\2/g
#s/\([^[:alnum:]]\|^\)parixes\([^[:alnum:]]\|$\)/\1pareixes\2/g
#s/\([^[:alnum:]]\|^\)Parixes\([^[:alnum:]]\|$\)/\1Pareixes\2/g
#s/\([^[:alnum:]]\|^\)parixen\([^[:alnum:]]\|$\)/\1pareixen\2/g
#s/\([^[:alnum:]]\|^\)Parixen\([^[:alnum:]]\|$\)/\1Pareixen\2/g
#s/\([^[:alnum:]]\|^\)crix\([^[:alnum:]]\|$\)/\1creix\2/g
#s/\([^[:alnum:]]\|^\)Crix\([^[:alnum:]]\|$\)/\1Creix\2/g
#s/\([^[:alnum:]]\|^\)crixes\([^[:alnum:]]\|$\)/\1creixes\2/g
#s/\([^[:alnum:]]\|^\)Crixes\([^[:alnum:]]\|$\)/\1Creixes\2/g
#s/\([^[:alnum:]]\|^\)crixen\([^[:alnum:]]\|$\)/\1creixen\2/g
#s/\([^[:alnum:]]\|^\)Crixen\([^[:alnum:]]\|$\)/\1Creixen\2/g
#s/\([^[:alnum:]]\|^\)pix\([^[:alnum:]]\|$\)/\1peix\2/g
#s/\([^[:alnum:]]\|^\)Pix\([^[:alnum:]]\|$\)/\1Peix\2/g
# benvolgut Aleix Badia, no ens facis malbé elscript ;-)
#s/\([^[:alnum:]]\|^\)Alix\([^[:alnum:]]\|$\)/\1Aleix\2/g
#s/matix\([^[:alnum:]]\|$\)/mateix\1/g		# val per a tantmateix, etc
#s/Matix\([^[:alnum:]]\|$\)/Mateix\1/g
#Correcccions de sobre fer
#s/\([^[:alnum:]]\|^\)aquix\([^[:alnum:]]\|$\)/\1eixe\2/g
#s/\([^[:alnum:]]\|^\)aquïx\([^[:alnum:]]\|$\)/\1eixe\2/g
#s/\([^[:alnum:]]\|^\)Aquix\([^[:alnum:]]\|$\)/\1Eixe\2/g
#s/\([^[:alnum:]]\|^\)Aquïx\([^[:alnum:]]\|$\)/\1Eixe\2/g
#s/\([^[:alnum:]]\|^\)aquixes\([^[:alnum:]]\|$\)/\1eixes\2/g
#s/\([^[:alnum:]]\|^\)aquïxes\([^[:alnum:]]\|$\)/\1eixes\2/g
#s/\([^[:alnum:]]\|^\)Aquixes\([^[:alnum:]]\|$\)/\1Eixes\2/g
#s/\([^[:alnum:]]\|^\)Aquïxes\([^[:alnum:]]\|$\)/\1Eixes\2/g
s/\([^[:alnum:]]\|^\)aqueix\([^[:alnum:]]\|$\)/\1eixe\2/g
s/\([^[:alnum:]]\|^\)Aqueix\([^[:alnum:]]\|$\)/\1Eixe\2/g
s/\([^[:alnum:]]\|^\)aqueixes\([^[:alnum:]]\|$\)/\1eixes\2/g
s/\([^[:alnum:]]\|^\)Aqueixes\([^[:alnum:]]\|$\)/\1Eixes\2/g
s/\([^[:alnum:]]\|^\)aqueixos\([^[:alnum:]]\|$\)/\1eixos\2/g
s/\([^[:alnum:]]\|^\)Aqueixos\([^[:alnum:]]\|$\)/\1Eixos\2/g
s/\([^[:alnum:]]\|^\)aqueixa\([^[:alnum:]]\|$\)/\1eixa\2/g
s/\([^[:alnum:]]\|^\)Aqueixa\([^[:alnum:]]\|$\)/\1Eixa\2/g

#Crisca -> Cresca
s/\([^[:alnum:]]\)\([cC]\)risca\([^[:alnum:]]\|$\)/\1\2resca\3/g

#General d'uï i iï
s/\([[:alnum:]]\)quï\([^[:alnum:]]\|$\)/\1qüe\2/g
s/\([[:alnum:]]\)quïs\([^[:alnum:]]\|$\)/\1qües\2/g
s/\([[:alnum:]]\)quïn\([^[:alnum:]]\|$\)/\1qüen\2/g
s/\([[:alnum:]]\)uï\([^[:alnum:]]\|$\)/\1ue\2/g
s/\([[:alnum:]]\)uïs\([^[:alnum:]]\|$\)/\1ues\2/g
s/\([[:alnum:]]\)uïn\([^[:alnum:]]\|$\)/\1uen\2/g
s/\([[:alnum:]]\)iï\([^[:alnum:]]\|$\)/\1ie\2/g
s/\([[:alnum:]]\)iïs\([^[:alnum:]]\|$\)/\1ies\2/g
s/\([[:alnum:]]\)iïn\([^[:alnum:]]\|$\)/\1ien\2/
#Typos üü i ïï
s/\([[:alnum:]]\)üü\([[:alnum:]]\|$\)/\1ü\2/
s/\([[:alnum:]]\)ïï\([[:alnum:]]\|$\)/\1ï\2/

## sufix -eixi
# regla genèrica again
s/\([[:alnum:]]\)ueixi\([^[:alnum:]]\|$\)/\1uïsca\2/g
s/\([[:alnum:]]\)ueixis\([^[:alnum:]]\|$\)/\1uïsques\2/g
s/\([[:alnum:]]\)ueixin\([^[:alnum:]]\|$\)/\1uïsquen\2/g
s/\([[:alnum:]]\)eixi\([^[:alnum:]]\|$\)/\1isca\2/g
s/\([[:alnum:]]\)eixis\([^[:alnum:]]\|$\)/\1isques\2/g
s/\([[:alnum:]]\)eixin\([^[:alnum:]]\|$\)/\1isquen\2/g
# pífies again
s/\([^[:alnum:]]\|^\)disca\([^[:alnum:]]\|$\)/\1deixi\2/g
s/\([^[:alnum:]]\|^\)disques\([^[:alnum:]]\|$\)/\1deixis\2/g
s/\([^[:alnum:]]\|^\)disquen\([^[:alnum:]]\|$\)/\1deixin\2/g

# s/sortir/eixir/g i derivats
s/\([^[:alnum:]]\)quan sortiu\([^[:alnum:]]\|$\)/\1quan isqueu\2/g		# hi ha cap manera millor de capturar el subjuntiu?
s/\([^_&[:alnum:]]\|^\)surt\([^[:alnum:]]\|$\)/\1ix\2/g
s/\([^_&[:alnum:]]\|^\)la sorti\([[:alnum:]]\)/\1l'eixi\2/g
s/\([^_&[:alnum:]]\|^\)sorti\([[:alnum:]]\)/\1eixi\2/g
s/\([^_&[:alnum:]]\|^\)Surt\([^[:alnum:]]\|$\|\"\)/\1Ix\2/g
s/\([^_&[:alnum:]]\|^\)Sorti\([[:alnum:]]\)/\1Eixi\2/g
s/\([^[:alnum:]]\)\_Surt\([^[:alnum:]]\|$\)/\1I_x\2/g
s/\([^_&[:alnum:]]\|^\)_sorti\([[:alnum:]]\)/\1ei_xi\2/g
s/\([^_&[:alnum:]]\|^\)s_orti\([[:alnum:]]\)/\1ei_xi\2/g

s/\([^[:alnum:]]\)\(O\|o\)bre\([^[:alnum:]]\|$\)/\1\2bri\3/g
s/\([^[:alnum:]]\|^\)\(O\|o\)rdre\(s\|\)\([^[:alnum:]]\|$\)/\1\2rde\3\4/g
s/\([^[:alnum:]]\)\(O\|o\)brís\([^[:alnum:]]\|$\)/\1\2brira\3/g
s/\([^[:alnum:]]\|^\)\(O\|o\)bríssiu\([^[:alnum:]]\|$\)/\1\2brireu\3/g
s/\([^[:alnum:]]\|^\)\(O\|o\)brissin\([^[:alnum:]]\|$\)/\1\2briren\3/g

#s/\([^_&[:alnum:]]\|^\)mid\(a\|es\)\([^[:alnum:]]\|$\)/\1grandàri\2\3/g
#s/\([^_&[:alnum:]]\|^\)Mid\(a\|es\)\([^[:alnum:]]\|$\)/\1Grandàri\2\3/g
s/\([^_&[:alnum:]]\|^\)aquests\([^[:alnum:]]\|$\)/\1estos\2/g
s/\([^_&[:alnum:]]\|^\)aquesta\([^[:alnum:]]\|$\)/\1esta\2/g
s/\([^_&[:alnum:]]\|^\)aquestes\([^[:alnum:]]\|$\)/\1estes\2/g
s/\([^_&[:alnum:]]\|^\)aquest\([^[:alnum:]]\|$\)/\1este\2/g
s/\([^_&[:alnum:]]\|^\)Aquests\([^[:alnum:]]\|$\)/\1Estos\2/g
s/\([^_&[:alnum:]]\|^\)Aquesta\([^[:alnum:]]\|$\)/\1Esta\2/g
s/\([^_&[:alnum:]]\|^\)Aquestes\([^[:alnum:]]\|$\)/\1Estes\2/g
s/\([^_&[:alnum:]]\|^\)Aquest\([^[:alnum:]]\|$\)/\1Este\2/g
s/\([^_&[:alnum:]]\|^\)_aquest\([^[:alnum:]]\|$\)/\1_este\2/g
s/\([^_&[:alnum:]]\|^\)AQUEST\([^[:alnum:]]\|$\)/\1ESTE\2/g

s/\([^[:alnum:]]\|^\)\(A\|a\)quí\([^[:alnum:]]\|$\)/\1\2cí\3/g
s/\([^_&[:alnum:]]\|^\)octet\([^[:alnum:]]\|$\)/\1byte\2/g
s/\([^_&[:alnum:]]\|^\)Octet\([^[:alnum:]]\|$\)/\1Byte\2/g
s/\([^[:alnum:]]\|^\)\(s\|S\|m\|M\)eva\([^[:alnum:]]\|$\)/\1\2eua\3/g
s/\([^[:alnum:]]\|^\)\(s\|S\|m\|M\)eves\([^[:alnum:]]\|$\)/\1\2eues\3/g
s/\([^_&[:alnum:]]\|^\)escull\([^[:alnum:]]\|$\)/\1trieu\2/g
s/\([^_&[:alnum:]]\|^\)Escull\([^[:alnum:]]\|$\)/\1Trieu\2/g
s/\([^_&[:alnum:]]\|^\)enrere\([^[:alnum:]]\|$\)/\1arrere\2/g
s/\([^_&[:alnum:]]\|^\)Enrere\([^[:alnum:]]\|$\)/\1Arrere\2/g
s/\([^_&[:alnum:]]\|^\)endarrere\([^[:alnum:]]\|$\)/\1arrere\2/g
s/\([^_&[:alnum:]]\|^\)Endarrere\([^[:alnum:]]\|$\)/\1Arrere\2/g
s/\([^[:alnum:]]\|^\)d'ara endavant\([^[:alnum:]]\|$\)/\1d'ara en avant\2/g
s/\([^_&[:alnum:]]\|^\)endavant\([^[:alnum:]]\|$\)/\1avant\2/g
s/\([^_&[:alnum:]]\|^\)Endavant\([^[:alnum:]]\|$\)/\1Avant\2/g
s/\([^[:alnum:]]\|^\)\([Ff]\)eina\([^[:alnum:]]\|$\)/\1\2aena\3/g
s/\([^_&[:alnum:]]\|^\)aviat\([^[:alnum:]]\|$\)/\1prompte\2/g
s/\([^_&[:alnum:]]\|^\)Aviat\([^[:alnum:]]\|$\)/\1Prompte\2/g
s/\([^_&[:alnum:]]\|^\)Avui\([^[:alnum:]]\|$\)/\1Hui\2/g
s/\([^_&[:alnum:]]\|^\)avui\([^[:alnum:]]\|$\)/\1hui\2/g
s/\([^[:alnum:]]\|^\)\([Dd]\)e franc\([^[:alnum:]]\|$\)/\1\2ebades\3/g
s/\([^_&[:alnum:]]\|^\)si us plau\([^[:alnum:]]\|$\)/\1per favor\2/g
s/\([^_&[:alnum:]]\|^\)Si us plau\([^[:alnum:]]\|$\)/\1Per favor\2/g
s/\([^_&[:alnum:]]\|^\)de cop\([^[:alnum:]]\|$\)/\1de colp\2/g
s/\([^[:alnum:]]\|^\)\([Oo]\)fert\([^[:alnum:]]\|$\)/\1\2ferit\3/g
s/\([^[:alnum:]]\|^\)\([Oo]\)mplert\([^[:alnum:]]\|$\)/\1\2mplit\3/g
s/\([^[:alnum:]]\|^\)\([Ee]\)stablert\([^[:alnum:]]\|$\)/\1\2stablit\3/g

s/\([^[:alnum:]]\|^\)semblar\([^[:alnum:]]\|$\)/\1paréixer\2/g
s/\([^[:alnum:]]\|^\)Sembla\([^[:alnum:]]\|$\)/\1Pareix\2/g
s/\([^[:alnum:]]\|^\)sembla\([^[:alnum:]]\|$\)/\1pareix\2/g
s/\([^[:alnum:]]\|^\)Semblen\([^[:alnum:]]\|$\)/\1Pareixen\2/g
s/\([^[:alnum:]]\|^\)semblen\([^[:alnum:]]\|$\)/\1pareixen\2/g
s/\([^[:alnum:]]\|^\)sembli\([^[:alnum:]]\|$\)/\1parega\2/g
s/\([^[:alnum:]]\|^\)semblin\([^[:alnum:]]\|$\)/\1pareguen\2/g
s/\([^[:alnum:]]\|^\)semblant\([^[:alnum:]]\|$\)/\1paregut\2/g
#s/\([^[:alnum:]]\|^\)\(S\|s\)ervei\(s\|\)\([^[:alnum:]]\|$\)/\1\2ervici\3\4/g
s/\([^[:alnum:]]\|^\)vermells\([^[:alnum:]]\|$\)/\1rojos\2/g
s/\([^[:alnum:]]\|^\)vermell\([^[:alnum:]]\|$\)/\1roig\2/g
s/\([^[:alnum:]]\|^\)Vermell\([^[:alnum:]]\|$\)/\1Roig\2/g
s/\([^[:alnum:]]\|^\)\(A\|a\)ccepto\([^[:alnum:]]\|$\)/\1\2ccepte\3/g
s/\([^[:alnum:]]\|^\)\(P\|p\)rometo\([^[:alnum:]]\|$\)/\1\2romet\3/g
s/\([^[:alnum:]]\|^\)\(T\|t\)orno\([^[:alnum:]]\|$\)/\1\2orne\3/g
#us -> vos
s/\([^[:alnum:]]\|^\)us\([^[:alnum:]]\|$\)/\1vos\2/g
s/\([^[:alnum:]]\|^\)Us\([^[:alnum:]]\|$\)/\1Vos\2/g
s/\([^_[:alnum:]]\|^\)en-vos\([^[:alnum:]]\|$\)/\1en-us\2/g
#s/\([^[:alnum:]]\|^\)\(D\|d\)ispositi&vos\([^[:alnum:]]\|$\)/\1\2ispositi\&us\3/g
s/\([:alnum:]\)&vos\([^[:alnum:]]\|$\)/\1\&us\2/g


s/\([^[:alnum:]]\|^\)\(Cont\|cont\|T\|t\|V\|v\|Obt\|obt\|Ret\|ret\|Mant\|mant\)enir-ne\([^[:alnum:]]\|$\)/\1\2indre'n\3/g
s/\([^[:alnum:]]\|^\)\(Cont\|cont\|T\|t\|V\|v\|Obt\|obt\|Ret\|ret\|Mant\|mant\)enir\([^[:alnum:]]\|$\)/\1\2indre\3/g
s/\([^[:alnum:]]\|^\)\(C\|c\)aler\([^[:alnum:]]\|$\)/\1\2aldre\3/g
s/\([^[:alnum:]]\|^\)\(V\|v\)aler\([^[:alnum:]]\|$\)/\1\2aldre\3/g
s/\([^[:alnum:]]\|^\)\(C\|c\)aber\([^[:alnum:]]\|$\)/\1\2abre\3/g
#Forma veure -> vore
#s/\([^[:alnum:]]\|^\)\(V\|v\)eure\([^[:alnum:]]\|$\)/\1\2ore\3/g

#Correccions d'accents tancats - oberts

#Fotudes amb a i e, balear distingeix però central no
s/\([[:alnum:]]\|^\)àssi\(m\|u\)\([^[:alnum:]]\|$\)/\1àre\2\3/g
s/\([[:alnum:]]\|^\)assin\([^[:alnum:]]\|$\)/\1aren\2/g
#s/\([[:alnum:]]\|^\)éssi\(m\|u\)\([^[:alnum:]]\|$\)/\1ére\2\3/g
#s/\([[:alnum:]]\|^\)essin\([^[:alnum:]]\|$\)/\1eren\2/g
s/\([[:alnum:]]\|^\)íssi\(m\|u\)\([^[:alnum:]]\|$\)/\1íreu\2\3/g
s/\([[:alnum:]]\|^\)issin\([^[:alnum:]]\|$\)/\1iren\2/g

#Prova gués
s/\([[:alnum:]]\|^\)gués\([^[:alnum:]]\|$\)/\1guera\2/g
s/\([[:alnum:]]\|^\)guéssi\(m\|u\)\([^[:alnum:]]\|$\)/\1guére\2\3/g
s/\([[:alnum:]]\|^\)guessin\([^[:alnum:]]\|$\)/\1gueren\2/g

s/\([^[:alnum:]]\|^\)\(r\|R\)eprèn\([^[:alnum:]]\|$\)/\1\2eprén\3/g
s/\([^[:alnum:]]\|^\)\(i\|I\)nterès\([^[:alnum:]]\|$\)/\1\2nterés\3/g

#Accents tipus anglès o emès
s/\([[:alnum:]]\|^\)\(m\|n\|d\|l\|gu\|c\|b\|r\|o\|t\)ès\([^[:alnum:]]\|$\)/\1\2és\3/g
#Corregeix atès
s/\([^[:alnum:]]\|^\)\(A\|a\)tés\([^[:alnum:]]\|$\)/\1\2tès\3/g

#Correcions on hi ha &

s/\([^[:alnum:]]\|^\)S&urt\([^[:alnum:]]\|$\)/\1I\&x\2/g
s/\([^[:alnum:]]\|^\)s&urt\([^[:alnum:]]\|$\)/\1i\&x\2/g
s/\([^[:alnum:]]\|^\)&Desa\([^[:alnum:]]\|$\)/\1Al\&ça\2/g
s/\([^[:alnum:]]\|^\)&desa\([^[:alnum:]]\|$\)/\1al\&ça\2/g
s/\([^[:alnum:]]\|^\)_Desa\([^[:alnum:]]\|$\)/\1Al_ça\2/g
s/\([^[:alnum:]]\|^\)_desa\([^[:alnum:]]\|$\)/\1al_ça\2/g
s/\([^[:alnum:]]\|^\)De_sa\([^[:alnum:]]\|$\)/\1Al_ça\2/g
s/\([^[:alnum:]]\|^\)de_sa\([^[:alnum:]]\|$\)/\1al_ça\2/g
s/\([^[:alnum:]]\|^\)De&sa\([^[:alnum:]]\|$\)/\1Al\&ça\2/g
s/\([^[:alnum:]]\|^\)de&sa\([^[:alnum:]]\|$\)/\1al\&ça\2/g
s/\([^[:alnum:]]\|^\)Des&a\([^[:alnum:]]\|$\)/\1Al\&ça\2/g
s/\([^[:alnum:]]\|^\)des&a\([^[:alnum:]]\|$\)/\1al\&ça\2/g
#s/\([^[:alnum:]]\|^\)Mi&da\([^[:alnum:]]\|$\)/\1Gran\&dària\2/g
#s/\([^[:alnum:]]\|^\)mi&da\([^[:alnum:]]\|$\)/\1gran\&dària\2/g
#s/\([^[:alnum:]]\|^\)Re&duix\([^[:alnum:]]\|$\)/\1Re\&duïx\2/g
s/\([^[:alnum:]]\|^\)Afegei&x\([^[:alnum:]]\|$\)/\1Afi\&g\2/g
s/\([^[:alnum:]]\|^\)A&fegeix\([^[:alnum:]]\|$\)/\1A\&fig\2/g
s/\([^[:alnum:]]\|^\)Obr&e\([^[:alnum:]]\|$\)/\1Obr\&i\2/g
s/\([^[:alnum:]]\|^\)&Reprèn\([^[:alnum:]]\|$\)/\1\&Reprén\2/g
s/\([^[:alnum:]]\|^\)&Enrere\([^[:alnum:]]\|$\)/\1A\&rrere\2/g
s/\([^[:alnum:]]\|^\)En&rere\([^[:alnum:]]\|$\)/\1A\&rrere\2/g
s/\([^[:alnum:]]\|^\)En&davant\([^[:alnum:]]\|$\)/\1Avan\&t\2/g
s/\([^[:alnum:]]\|^\)Enda&vant\([^[:alnum:]]\|$\)/\1Avan\&t\2/g
s/\([^[:alnum:]]\|^\)Endavan&t\([^[:alnum:]]\|$\)/\1Avan\&t\2/g
#s/\([^[:alnum:]]\|^\)Suprim&eix\([^[:alnum:]]\|$\)/\1Suprim\&ix\2/g
#s/\([^[:alnum:]]\|^\)Suprimei&x\([^[:alnum:]]\|$\)/\1Suprimi\&x\2/g
s/\([^[:alnum:]]\|^\)Aques&t\([^[:alnum:]]\|$\)/\1Es\&te\2/g
s/\([^[:alnum:]]\|^\)Aq&uest\([^[:alnum:]]\|$\)/\1Es\&te\2/g
s/\([^[:alnum:]]\|^\)Dese&u\([^[:alnum:]]\|$\)/\1Alce\&u\2/g
s/\([^[:alnum:]]\|^\)c&ontinguin\([^[:alnum:]]\|$\)/\1c\&ontinguen\2/g
s/\([^[:alnum:]]\|^\)&marquis\([^[:alnum:]]\|$\)/\1\&marques\2/g
s/\([^[:alnum:]]\|^\)A&fegix\([^[:alnum:]]\|$\)/\1\A\&fig\2/g

# errada->error NO es toca per que porta problemes amb el canvi de gènere
# a banda què:
# 17:25 < nyu> jordim: errada->error ?
# 17:26 < jordim> jo eixa no la canviaria


# desar -> guardar
	# Podria anar separat del pronom, però aleshores ens faria malbé
	# l'apostrofament.  Si trobem altres construccions amb "desarà" pense que
	# és millor fer-les per inclussió (rmh)
s/\([^_&[:alnum:]]\|^\)es desar\(à\|an\)\([^[:alnum:]]\|$\)/\1es guardar\2\3/g
s/\([^_&[:alnum:]]\|^\)Es desar\(à\|an\)\([^[:alnum:]]\|$\)/\1Es guardar\2\3/g
s/\([^_&[:alnum:]]\|^\)es desi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1es guarde\2\3/g
s/\([^_&[:alnum:]]\|^\)desi\(n\|s\|\)\([^[:alnum:]]\|$\)/\1guarde\2\3/g
s/\([^_&[:alnum:]]\|^\)desa\(t\|da\|ts\|des\)\([^[:alnum:]]\|$\)/\1guarda\2\3/g
s/\([^_&[:alnum:]]\|^\)des\(a\|en\|ar\|eu\|at\|ada\|ats\|ades\)\([^[:alnum:]]\|$\)/\1guard\2\3/g
s/\([^_&[:alnum:]]\|^\)Des\(a\|en\|ar\|eu\|at\|ada\|ats\|ades\)\([^[:alnum:]]\|$\)/\1Guard\2\3/g


# Anti-pífies genèrics
s/çe/ce/g
s/ÇE/CE/g
s/çi/ci/g
s/ÇI/CI/g

s/\([^_&[:alnum:]]\)\([dD]\)e \([aeiouAEIOU]\)/\1\2'\3/g
s/\([^_&[:alnum:]]\)es \([aeiouAEIOU]\)/\1s'\2/g
s/\([^_&[:alnum:]]\)Es \([aeiouAEIOU]\)/\1s'\2/g
s/\([^[-\|·]_&[:alnum:]]\)\([lL]\)a \([aeoAEO]\)/\1\2'\3/g
	# L'apostrofament de "la [iu]" depèn de si la primera síŀlaba
	# és àtona i per tant no es pot generalitzar.
	# El "-" és per evitar pífies de l'estil "convertiu-la en -> convertiu-l'en"
	# El "·" és per evitar pífies de l'estil "Instal·la el -> Instal·l'el"
s/\([^_&[:alnum:]]\)el \([aeiouAEIOU]\)/\1l'\2/g
s/\([^_&[:alnum:]]\)El \([aeiouAEIOU]\)/\1L'\2/g
# anti-anti-pífia ad-hoc
s/\([^_&[:alnum:]]\)\([dD]\)'\(UNIX\|Unix\|unix\)/\1\2e \3/g
s/\([^_&[:alnum:]]\)L'\(UNIX\|Unix\|unix\)/\1El \2/g
s/\([^_&[:alnum:]]\)l'\(UNIX\|Unix\|unix\)/\1el \2/g

s/\([[:alnum:]]\)àn /\1an /g
s/\([[:alnum:]]\)òn /\1on /g
s/\([[:alnum:]]\)ún /\1un /g
	# Accents impossibles.  Podriem arribar a generar-los a les nostres
	# pròpies regles (tot i que, de moment, no conec cap lloc on ho fem)
	# "ón" no es toca per evitar problemes amb el monosíŀlab "són"

# Per reemplaçar Last-Translator si s'escau.
# Ha de ser al final!!  No volem que se'ns "valencianitzi" el nom o l'adreça.
#s/^\(\"Last-Translator\): .*\\n/\1: Jo Mateix <jo@jo.cat>\\n/g

:END

}
