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

if [ -d "translations/.git" ]; then
 # Actualitzem les traduccions des d'upstream
 git reset --hard HEAD
 git checkout master
 git pull origin master
else
  # Baixem les traduccions des d'upstream
  git clone "https://git.libreoffice.org/translations"
fi

# Esborrem tots els fitxers de ca-valencia
rm -R "translations/source/ca-valencia"

# Tornem a generar els fitxers de ca-valencia
./tools/adapta_arbre ./translations/source/ca ./tools/src2valencia.sed
  
# Comprovacions mínimes?

# Si tot sembla correcte, enviem els canvis
# cd translations
# git add source/ca-valencia/*
# git commit -m "Update Catalan (Valencian) ca-valencia files"
# git pull origin master
# ./logerrit submit master
# cd ..

# Neteja
rm -R tools
# Tornem al directori inicial
popd
