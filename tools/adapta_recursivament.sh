#!/bin/bash

# TODO:
# Més proves i polir el codi.
# Si teniu cap idea...

# Si no existeix aquest fitxer es copiarà tot el repositori (format: 20151108)
DATAF="data_ca-valencia.log"
if [ -f $DATAF ]; then
    DATA=$(cat $DATAF)
  else
    DATA="Sense data d'inici."
fi
# Establir els usuaris seguits (els caràcters «\|» són per a l'ordre «grep»)
USUARIS_SVN="aacid\|bellaperez\|jferrer\|omas"
# Quan se solicita un interval al registre, cal demanar un dia més
DEMA=$(date +%Y%m%d -d "+1 days")
#
BRANCA_S=$(dirname $PWD | xargs basename)
BRANCA_K=$(basename $PWD)

error_comprova_data() {
  if [ ! -f $DATAF ]; then
      echo -e "\nError «$1»: No existeix el fitxer $DATAF."
      echo "  Creeu-lo manualment o empreu primer l'opció «recursiu»."
      echo "  Es tracta de no permetre executar aquesta opció"
      echo "  sobre tots els elements en el repositori."
      echo
      exit 0
  fi
}

# Establim la capçalera
capçalera() { echo -e "\n** $BRANCA_S/$BRANCA_K ** -> {$DATA}:{$DEMA}\n  ******************\n$1"
}

cerca_po() {
  cd ca
  FITXERPO=`find messages/* -type f -name "*.po"`
  cd ..
}

genera_copia() {
  PO=$1
  # Si no existeix el directori, el creem
  mkdir -p ca@valencia/$DIR

  echo " * ca@valencia/$PO"

  # Fem que les frases/paràgrafs siguin d'una sola línia:
  msgmerge --silent --no-wrap ca/$PO templates/${PO}t -o missatges-$FITX

  # Executem la conversió del fitxer PO
  ./src2valencia.sed < missatges-$FITX > missatges_2-$FITX && rm -f missatges-$FITX

  # Es torna a donar el format amb 78 files (es respecta la cadena msgid de la plantilla).
  msgmerge --silent --previous --width=80 missatges_2-$FITX templates/${PO}t -o ca@valencia/$PO && \
  rm -f missatges_2-$FITX

  # Es realitza un avís per si la nova traducció conté missatges sense fer
  msgfmt --statistics ca@valencia/$PO

  if [ $(which posieve) ]; then
      # Si es tracta de la branca «stable» esborrem els missatges obsolets (en silenci)
      if [ $BRANCA_S = "stable" ]; then
          # Es convida algun col·laborador/a
          if [ $FITX = "gcompris_qt.po" ];then
              echo -e "\n Avís: El fitxer «$FITX» conté una millora addicional.\n Torneu a afegir aquesta modificació a mà.\n"
          fi
          posieve --quiet remove-obsolete ca@valencia/$PO
      fi
      if [ $BRANCA_S = "trunk" ]; then
          # No es tradueixen les notícies del web 
          if [ $FITX = "www_www.po" ];then
              test -f ca@valencia/$PO && rm -f ca@valencia/$PO
              echo "Aquesta ha estat eliminada!"
          fi
       fi
    else
      MISSATGEPOS="Penseu a instal·lar les eines del Pology."
  fi
}

case $1 in
  usuari)
    error_comprova_data $1
    [ "$USUARIS_SVN" ] || $(echo -e "\nError: no heu establert cap usuari seguit!\n"; exit 0)
  ;;
  hora)
    error_comprova_data $1
    # Si s'ha indicat una hora, es comprova que és correcta
    HORA=$2
    error_hora() { echo -e "\nError: el paràmetre ha de ser una hora, p. ex: $1$2"; exit 0; }
    [ ${#HORA}  =  "4"    ] || error_hora 1234 " -amb quatre dígits-"
    [ "$HORA"  -ge "0000" ] || error_hora 0000 " -amb números positius-"
    [ "$HORA"  -le "2359" ] || error_hora 2359 " -dins l'interval de 24 hores"
  ;;
  recursiu)
    if [ -f $DATAF ]; then
        if [ $(date +%Y%m%d) -eq $DATA ]; then
            echo -e "\n - Ja es troba actualitzada. Data: $DATA\n"
            exit 0
        fi
    fi
  ;;
  fitxer)
    if [ -f ca/$2 ]; then
        FITX=$(basename $2)
        if   [ $(file ca/$2 | awk '{print $2$3$4$5$6}') = "GNUgettextmessagecatalogue,UTF-8" ]; then
            capçalera && genera_copia $2 && exit 0
        elif [ $(file ca/$2 | awk '{print $2$3$4$5$6}') = "HTMLdocument,UTF-8Unicodetext" ]; then
            capçalera && genera_copia $2 && exit 0
          else
            echo -e "\nError: «$FITX» no és un fitxer PO.\n"
            exit 0
        fi
      else
        echo -e "\nError: «$2» no existeix. Heu d'indicar un fitxer PO existent."
        echo -e "messages/carpeta/fitxer.po\n"
        exit 0
    fi
  ;;
  arranja_po)
    cerca_po
    echo -en "\nS'arranjen les traduccions: "
    for PO in $FITXERPO
      do
        msgmerge --silent --update --previous --width=80 ca@valencia/$PO templates/${PO}t
      done
    echo -e "- Fet! -\n"
    [ $BRANCA_S = "stable" ] && posieve --quiet remove-obsolete ca@valencia/messages/*
    exit 0
  ;;
  *)
    echo "$0 [ usuari | hora (4 dígits) | recursiu | fitxer (po) | arranja_po ]"
    echo
    echo    " usuari       : Mode SVN: mira l'última data de canvi pels usuaris seguits."
    echo -e "                Empra la data al fitxer $DATAF i processa les\n\t\tiguals o posteriors."
    echo -e "                Usuaris seguits = $(echo $USUARIS_SVN | sed -e s,.\|,\ , -e s,.\|,\ , -e s,.\|,\ ,)\n"
    echo -e " hora [0000]  : Mode SVN: mira i actualitza a partir de l'última hora de\n\t\tcanvi establerta."
    echo -e "                Empra la data al fitxer $DATAF.\n"
    echo -e " recursiu     : Mode local: actualitza els fitxers en base a la data\n\t\testablerta al fitxer $DATAF."
    echo -e "                Si aquest no existeix, ho actualitza tot.\n"
    echo    " fitxer [po]  : Mode local: actualitza el fitxer sense emprar cap data."
    echo -e "                Útil si observem alguna desactualització puntual."
    echo    "                No actualiza la data al fitxer $DATAF."
    echo -e "                po = messages/carpeta/fitxer.po\n"
    echo    " arranja_po   : Mode local: S'arranjen les cadenes amb l'estil de la plantilla."
    echo -e "                No actualiza la data al fitxer $DATAF.\n"
    echo "Recomanació:"
    echo "Cal haber creat l'script ssh-add.sh i tenir instal·lada l'ordre «ksshaskpass»:"
    echo "KDE4: ~/.kde/Autostart/ssh-add.sh"
    echo "KF5:  ~/.config/autostart/ssh-add.sh"
    echo
    echo "#!/bin/sh"
    echo "ssh-add \$HOME/.ssh/id_dsa </dev/null"
    echo
    exit 0
  ;;
esac

# Aquest és el millor lloc doncs només demanarà la contrasenya una vegada
# - Se suposa que hi ha establerta una configuració local
# - Per a revocar l'autorització cal anar al «kwalletmanager»
#   (si es vol automatitzar penso que cal crear un usuari nou per aquesta tasca)
if [ $(which ksshaskpass) ];then
    if [ ! -f ~/.config/autostart/ssh-add.sh ]; then
        echo "Cal crear el fitxer ~/.config/autostart/ssh-add.sh"
        exit 0
    fi
    # Aquí es comprova si heu introduït la contrasenya al KWallet
    [ -S $PAM_KWALLET5_LOGIN ] || ~/.config/autostart/ssh-add.sh
  else
    echo -e "\nError: Heu d'instal·lar l'ordre «ksshaskpass».\n"
    exit 0
fi

test -z $ANULA && capçalera "Llegenda: * s'ha modificat, - no cal actualitzar\n" && ANULA="1"

cerca_po

for PO in $FITXERPO
  do
    # Extraiem el nom de directori i el nom de fitxer
    DIR=$(dirname $PO)
    FITX=$(basename $PO)

    # Es comprova si cal actualitzar (es redueix la càrrega)
    comprova_data() { [ $(ls -l --time-style=+%Y%m%d ca/$PO | awk '{print $6}') -ge $DATA ]; }
    comprova_hora() { [ $(svn --verbose list ca/$PO | awk '{print $6}' | sed -e s,:,,) -ge "$HORA_CA" ]; }
    comprova_usuari() {
      # Mira al registre si cap usuari seguit ha realitzat canvis al fitxer
      DATA_U_CANVI=$(svn log ca/$PO -r {$DATA}:{$DEMA} | grep $USUARIS_SVN | awk '{print $5}' | sort | tail -1 | sed -e s,-,, -e s,-,,)
      if   [ -z $DATA_U_CANVI ]; then
          # El registre no conté cap entrada de les que es busquen (està actualitzat)
          echo " - $PO"
      elif [ "${#DATA_U_CANVI}" != "8" ]; then
          echo
          echo "$PO -> Comprovar i fer-ho manualment: codi extret «$DATA_U_CANVI»"
          echo "./src2valencia.sed < ca/$PO > ca@valencia/$PO"
          echo
          echo "svn log ca/$PO -r {$DATA}:{$DEMA}"
          echo
      fi
      [ $DATA_U_CANVI ]
    }

    if [ -f $DATAF ]; then
        # En el cas que es proporcioni una hora de canvi (quatre dígits)
        # - Per a un ajustament fi, modifiqueu la data al fitxer
        if [ $HORA ]; then
            comprova_data && comprova_hora   && genera_copia $PO
        elif [ $1 = "usuari" ]; then
            comprova_data && comprova_usuari && genera_copia $PO
            DATA_U_CANVI=""
          else
            comprova_data && genera_copia $PO
        fi
      else
        # S'actualitza tota la branca
        genera_copia $PO
    fi
  done

# El fitxer conté la data de l'última còpia
date +%Y%m%d > $DATAF

test -z $MISSATGEPOS || echo -e "\nError: $MISSATGEPOS\n"

exit 0

