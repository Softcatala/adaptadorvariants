
#/bin/bash

wd="programs/libreoffice"

cd $wd

if [ -d "translations/.git" ]; then
 # Actualitzem les traduccions des d'upstream
 git pull origin master
 git checkout master
else
  # Baixem les traduccions des d'upstream
  git clone "https://git.libreoffice.org/translations"
fi

# Esborrem tots els fitxers de ca-valencia
rm -R "translations/source/ca-valencia"

# Tornem a generar els fitxers de ca-valencia
../../tools/adapta_arbre ./translations/source/ca ../../tools/src2valencia.sed
  
# Comprovacions mínimes?

# Si tot sembla correcte, enviem els canvis
# cd translations
# git add source/ca-valencia/*
# git commit -m "Update Catalan (Valencian) ca-valencia files"
# git pull origin master
# git push
# cd ..

# Tornem al directori inicial
cd ../../

