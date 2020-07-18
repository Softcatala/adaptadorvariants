#/bin/bash

wd="programs/libreoffice"
translator="Artur V. <artur@softcatala.org>"
team="Catalan (Valencian) <adaptacions@softvalencia.org>"

# Ens movem al directori de treball
pushd $wd

# Copiem els scripts d'adaptació
cp -R ../../tools .

# Els adaptem amb les dades del responsable i de l'equip d'adaptacions
#s/^\(\"Last-Translator\): .*\\n/\1: Jo Mateix <jo@jo.cat>\\n/g
sed -i -e "s|^:END$|s\/^\\\(\\\\\"Last-Translator\\\): .*\\\\\\\n/\\\\1: $translator\\\\\\\n/g\\n\\n:END|" ./tools/src2valencia.sed
sed -i -e "s|^:END$|s\/^\\\(\\\\\"Language-Team\\\): .*\\\\\\\n/\\\\1: $team\\\\\\\n/g\\n\\n:END|" ./tools/src2valencia.sed

# Neteja general
rm -R "translations/*"

# Cridem l'script de Python que fa la feina
pip3 install pipenv
pipenv install requests
pipenv run python ./libreoffice-valencia.py


# Neteja
rm -R tools

# Tornem al directori inicial
popd
