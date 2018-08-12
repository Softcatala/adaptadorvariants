#!/bin/bash

# TODO:
# Més proves i polir el codi.
# Si teniu cap idea...

# Mira si es treballa sobre la branca «stable» o «trunk» (stable/l10n-kf5)
BRANCA=$(dirname $PWD | xargs basename)
# Mira si es treballa sobre la versió «kde4» o «kf5» (stable/l10n-kf5-plasma-lts)
ESCRIPTORI=$(basename $PWD)
# Se segueix si s'ha fet cap canvi
CANVIAT='0'

# Comprova la disponibilitat del servidor
if [ $(ping -c 1 -4 anonsvn.kde.org &> /dev/null) ]; then
    echo "No es pot fer ping amb el servidor «anonsvn.kde.org»! Es finalitza."
    exit 1
  else
    echo "ping -c 1 -4 anonsvn.kde.org: Molt bé!"
    # Es modifica l'URL svn+ssh per a que les connexions siguin al SVN anònim
    cd ca
    SVN_URL=$(svn info | grep "^URL" | awk '{print $2}' | sed -e s,+ssh,, -e s,svn@,anon,)
    cd ..
fi

# Si no existeix aquest fitxer es copiarà tot el repositori (format: 20151211 184747)
DATAF='data_ca-valencia.log'
CANVIA='1'
if [ -f $DATAF ]; then
    DATA=$(cat $DATAF | awk '{print $1}')
    # Ens calen uns valors inicials
    [ $DATA ] && HORA=$(cat $DATAF | awk '{print $2}')
    [ $HORA ] || HORA='000000'
    # S'afegeix 1 segon per ometre els últims fitxers ja revisats
    HORA=$(($HORA + 1))
    DATA_CANVI_SVN=$DATA
    HORA_CANVI_SVN=$HORA
    # Establir els usuaris seguits (els caràcters «\|» són per a l'ordre «grep»)
    USUARIS_SVN="aacid\|apol\|bellaperez\|jferrer\|omas"
    # Establir els coordinadors de les traduccions (només s'aplica sobre «stable»)
    [ $BRANCA = "stable" ] && USUARIS_SVN="$USUARIS_SVN\|lueck\|ltoscano"
    # Quan se sol·licita un interval al registre, cal demanar un dia més
    DEMA=$(date +%Y%m%d -d "+1 days")
  else
    DATA="Sense data d'inici."
fi

error_obten_data() {
  if [ ! -f $DATAF ]; then
      echo -e "\nError «$1»: No existeix el fitxer $DATAF."
      echo    "  Creeu-lo manualment o empreu primer l'opció «recursiu»."
      echo    "  Es tracta de no permetre executar aquesta opció"
      echo -e "  sobre tots els elements en el repositori.\n"
      exit 0
  fi
}

# Establim la capçalera
capçalera() { echo -e "\n** $BRANCA/$ESCRIPTORI ** -> {$DATA_CANVI_SVN}:{$DEMA} $HORA_CANVI_SVN\n  ******************\n$1"; }

cerca_po() {
  # Cerca les plantilles de traducció i les ordena
  cd ca
  FITXERPO=$(find messages/* -type f -name "*.po" | sort)
  cd ..
}

genera_copia() {
  # No cal processar (segons antiguitat)
  [ $CANVIA -eq 0 ] && echo " - $PO -> $DATA_CANVI $HORA_CANVI" && return 0
  # Sí que s'ha canviat ;-)
  CANVIAT='1'

  # Si no existeix el directori, el creem
  mkdir -p ca@valencia/$DIR

  # El caràcter «*» indica que aquest fitxer ha estat modificat
  echo " * ca@valencia/$PO -> $DATA_CANVI $HORA_CANVI"

  # Fem que les frases/paràgrafs siguin d'una sola línia:
  msgmerge --silent --previous --no-wrap ca/$PO templates/${PO}t --output-file=missatges-$FITX

  # Executem la conversió del fitxer PO
  ./src2valencia.sed < missatges-$FITX > missatges_2-$FITX && rm -f missatges-$FITX

  # Es torna a donar el format amb 78 files (es respecta la cadena msgid de la plantilla).
  msgmerge --silent --previous --width=80 missatges_2-$FITX templates/${PO}t --output-file=ca@valencia/$PO && \
  rm -f missatges_2-$FITX

  # Es realitza un avís per si la nova traducció conté missatges sense fer
  msgfmt --statistics ca@valencia/$PO

  # Es convida algun col·laborador/a de València
  if [ $FITX = "gcompris_qt.po" ]; then
      echo -e "\n Nota:  El fitxer «$FITX» conté una millora addicional\n\tper convidar a traductors valencians.\n"
      sed --in-place -e "s/DOT com&gt; .2015-20...\.\"/DOT com\&gt; \(2015-$(date +%Y)\)\.<br \/\"\n\"><b>Atenció<\/b>: Cal ajuda per a la seva traducció al valencià. Volem que \"\n\"esta sigui correcta i potser voldreu que les veus també estiguen en \"\n\"valencià. Escriviu-nos a la llista de correu \&lt;kde-i18n-ca@kde.org\&gt; i \"\n\"en parlarem.\"/g" ca@valencia/$PO
  fi

  if [ $(which posieve) ]; then
      # Si es tracta de la branca «stable» esborrem els missatges obsolets (en silenci)
      if [ $BRANCA = "stable" ]; then
          posieve --quiet remove-obsolete ca@valencia/$PO
      fi
    else
      MISSATGEPOS="Penseu a instal·lar les eines del Pology."
  fi
}

case $1 in
  usuari)
    error_obten_data $1
    [ "$USUARIS_SVN" ] || $(echo -e "\nError: no heu establert cap usuari seguit!\n"; exit 0)
  ;;
  recursiu)
    if [ -f $DATAF ]; then
        if [ $(date +%Y%m%d) -eq $DATA_CANVI_SVN ]; then
            echo -e "\n - Ja es troba actualitzada. Data: $DATA_CANVI_SVN\n"
            exit 0
        fi
    fi
  ;;
  fitxer)
    PO="$2"
    if [ -f ca/$PO ]; then
        FITX=$(basename $PO)
        if   [ $(file ca/$PO | awk '{print $2$3$4$5$6}') = "GNUgettextmessagecatalogue,UTF-8" ]; then
            capçalera && genera_copia && exit 0
        elif [ $(file ca/$PO | awk '{print $2$3$4$5$6}') = "HTMLdocument,UTF-8Unicodetext" ]; then
            capçalera && genera_copia && exit 0
          else
            echo -e "\nError: «$FITX» no és un fitxer PO.\n"
            exit 0
        fi
      else
        echo -e "\nError: «$PO» no existeix. Heu d'indicar un fitxer PO existent."
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
    [ $BRANCA = "stable" ] && posieve --quiet remove-obsolete ca@valencia/messages/*
    exit 0
  ;;
  *)
    echo "$0 [ usuari | recursiu | fitxer (po) | arranja_po ]"
    echo
    echo    " usuari       : Mode SVN: mira l'última data i hora de canvi pels usuaris seguits."
    echo    "                Empra la data al fitxer $DATAF i processa les\n\t\tiguals o posteriors."
    echo -e "                Usuaris seguits = $(echo $USUARIS_SVN | sed -e s,.\|,\ , -e s,.\|,\ , -e s,.\|,\ ,)\n"
    echo    " recursiu     : Mode local: actualitza els fitxers en base a la data\n\t\testablerta al fitxer $DATAF."
    echo -e "                Si aquest no existeix, ho actualitza tot.\n"
    echo    " fitxer [po]  : Mode local: actualitza el fitxer sense emprar cap data."
    echo    "                Útil si observem alguna desactualització puntual."
    echo    "                No actualitza la data al fitxer $DATAF."
    echo -e "                po = messages/carpeta/fitxer.po\n"
    echo    " arranja_po   : Mode local: s'arranjen les cadenes amb l'estil de la plantilla."
    echo -e "                No actualitza la data al fitxer $DATAF.\n"
    echo    "Recomanació:"
    echo    "Cal haver creat el script ssh-add.sh i tenir instal·lada l'ordre «ksshaskpass»:"
    echo    "KDE4: $HOME/.kde/Autostart/ssh-add.sh"
    echo -e "KF5 : $HOME/.config/autostart-scripts/ssh-add.sh\n"
    echo    "#!/bin/sh"
    echo -e "ssh-add \$HOME/.ssh/id_dsa </dev/null\n"
    exit 0
  ;;
esac

# Aquest és el millor lloc doncs només demanarà la contrasenya una vegada
# - Se suposa que hi ha establerta una configuració local
# - Per a revocar l'autorització cal anar al «kwalletmanager»
#   (si es vol automatitzar penso que cal crear un usuari nou per aquesta tasca)
# if [ $(which ksshaskpass) ];then
#     if [ ! -f $HOME/.config/autostart-scripts/ssh-add.sh ]; then
#         echo "Cal crear el fitxer $HOME/.config/autostart-scripts/ssh-add.sh"
#         exit 0
#     fi
#     # Si no hi és, s'afegeix la clau. El qual llançarà el «ksshaskpass», si escau.
#     [ $(ssh-add -l | awk '{print $3}' | sed -e s,$HOME/,,) != ".ssh/id_dsa" ] && $HOME/.config/autostart-scripts/ssh-add.sh
#   else
#     echo -e "\nError: Heu d'instal·lar l'ordre «ksshaskpass».\n"
#     exit 0
# fi

test -z $ANULA && capçalera "Llegenda: * s'ha modificat, - no cal actualitzar\n" && ANULA="1"

cerca_po

comprova_usuari() {
  # Mira al registre si cap usuari seguit ha realitzat canvis al fitxer
  if [ "$(svn log -r {$DATA}:{$DEMA} $SVN_URL/$PO | grep "$USUARIS_SVN" | awk '{print $3}' | sort | tail -1)" ]; then
      # S'actualitzen DATA_CANVI_SVN i HORA_CANVI_SVN per a desar-les al final
      # Si es canvia a una data major, es pren l'hora d'aquest últim
      [ $DATA_CANVI -gt $DATA_CANVI_SVN ] && DATA_CANVI_SVN=$DATA_CANVI && HORA_CANVI_SVN=$HORA_CANVI
      hora_major() { [ $HORA_CANVI -gt $HORA_CANVI_SVN ] && HORA_CANVI_SVN=$HORA_CANVI; }
      # Si la data de canvi local és igual que l'última al cau, es comprova hora_major
      [ $DATA_CANVI -eq $DATA_CANVI_SVN ] && hora_major
      CANVIA='1'
    else
      CANVIA='0'
  fi
}

for PO in $FITXERPO
  do
    # Extraiem el nom de directori i el nom de fitxer
    DIR=$(dirname $PO)
    FITX=$(basename $PO)

    message_removed() {
      [ $REPETIT ] && [ $REPETIT = $1 ] && return
      REPETIT=$1
      echo "$REPETIT: Aquesta traducció ha estat eliminada!"
    }
    # Es desactiven les traduccions següents:
    [ $DIR  = 'messages/wikitolearn' ] && message_removed $DIR  && continue # WikiToLearn - ca.wikitolearn.org
    [ $FITX = 'www_www.po' ]           && message_removed $FITX && continue # Notícies del KDE - https://www.kde.org/announcements

    # S'obté l'hora de modificació local
    DATA_CANVI=$(svn info ca/$PO | grep "^Text Last Updated:" | awk '{print $4}' | tr -d "-") # 2015-12-11 -> 20151211
    HORA_CANVI=$(svn info ca/$PO | grep "^Text Last Updated:" | awk '{print $5}' | tr -d ":") # 18:47:47   -> 184747
    # Es comprova si cal comprovar segons DATA i HORA originals (es redueix la càrrega)
    if [ $DATA_CANVI -ge $DATA ]; then
        if [ $DATA_CANVI -eq $DATA ];then
            [ $HORA_CANVI -ge $HORA ] || continue
        fi
      else
        continue
    fi

    if [ -f $DATAF ]; then
        case $1 in
          usuari)
            CANVIA='0'
            comprova_usuari && genera_copia
          ;;
          *)
            genera_copia
          ;;
        esac
      else
        # S'actualitza tota la branca
        genera_copia
    fi
  done

if [ -f $DATAF ]; then
    # Si no s'ha realitzat cap canvi, llavors s'actualitzarà al moment actual descomptant 
    # una hora (la propera vegada es comprovaran molts menys fitxers -cas d'ús: el codi 
    # canvia però les traduccions són les mateixes-).
    if [ $CANVIAT -eq '0' ]; then
        # Per a respectar un possible canvi de dia
        TEMPS="$(date +%Y%m%d\ %H%M%S -d "-1 hours")"
        DATA_CANVI_SVN=$(echo $TEMPS | awk '{print $1}')
        HORA_CANVI_SVN=$(echo $TEMPS | awk '{print $2}')
    fi
fi

# Actualització normal 
echo "$DATA_CANVI_SVN $HORA_CANVI_SVN" > $DATAF

# Amb aquesta informació es pot seguir com queda establert el temps per a la propera vegada
echo -e "\nDATA_CANVI_SVN=\"$DATA_CANVI_SVN\"\nHORA_CANVI_SVN=\"$HORA_CANVI_SVN\"\n"
[ -z $MISSATGEPOS ] || echo -e "\nError: $MISSATGEPOS\n"

# Suprimeixo el fitxer creat per l'ordre «msgfmt --statistics»
[ -f messages.mo ] && rm -f messages.mo

exit 0

