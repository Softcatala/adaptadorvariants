#/bin/bash

wd="programs/filezilla"
translator="Artur V. <artur@softcatala.org>"
team="Catalan (Valencian) <adaptacions@softvalencia.org>"
ca_file="ca.po"
va_file="ca-valencia.po"

# Ens movem al directori de treball
pushd $wd

# Copiem els scripts d'adaptació
cp -R ../../tools .

# Els adaptem amb les dades del responsable i de l'equip d'adaptacions
#s/^\(\"Last-Translator\): .*\\n/\1: Jo Mateix <jo@jo.cat>\\n/g
sed -i -e "s|^:END$|s\/^\\\(\\\\\"Last-Translator\\\): .*\\\\\\\n/\\\\1: $translator\\\\\\\n/g\\n\\n:END|" ./tools/src2valencia.sed
sed -i -e "s|^:END$|s\/^\\\(\\\\\"Language-Team\\\): .*\\\\\\\n/\\\\1: $team\\\\\\\n/g\\n\\n:END|" ./tools/src2valencia.sed


# Si cal, creem el directori per a desar les traduccions
 mkdir -p translations/

# Baixem la traducció des d'upstream
  wget -O translations/$ca_file https://filezilla-project.org/locales/$ca_file

# Esborrem tots els fitxers de ca-valencia
#rm -R "translations/$va_file"

# Tornem a generar els fitxers de ca-valencia
./tools/src2valencia.sed < ./translations/$ca_file > ./translations/$va_file
  
# Comprovacions mínimes?

# Amb el Filezilla cal enviar la traducció valenciana per correu electrònic, manualment
# Vegeu: https://filezilla-project.org/translations.php

# Neteja
rm -R tools

# Tornem al directori inicial
popd
