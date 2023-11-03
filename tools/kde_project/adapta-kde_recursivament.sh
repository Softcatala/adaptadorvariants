#!/bin/bash
#
# TODO:
# Més proves i polir el codi.
# Si teniu cap idea...

# En aquest fitxer es desa la revisió del darrer commit (format: 1641759)
RVF='svn-revision_ca-valencia.log'
# Mira si es treballa sobre la branca «stable» o «trunk» (stable/l10n-kf5)
BRANCA=$(dirname $PWD | xargs basename)
# Mira si es treballa sobre la versió «kde4» o «kf5» (stable/l10n-kf5-plasma-lts)
ESCRIPTORI=$(basename $PWD)
REPETIT=
# Establir els usuaris seguits (els caràcters «\|» són per a l'ordre «grep»)
USUARIS_SVN="aacid\|apol\|bellaperez\|jferrer\|omas"
# Establir els traductors seguits
USUARIS_VAL0="montoro_mde@\|alviboi@"
USUARIS_VAL1="$(echo $USUARIS_VAL0 | sed -e 's,\\|, ,g')"

[ $(command -v awk)     ] || $(echo "Error: Penseu a instal·lar el paquet «gawk» de GNU: apt install gawk"; exit 0)
[ $(command -v egrep)   ] || $(echo "Error: Penseu a instal·lar el paquet «grep» de GNU: apt install grep"; exit 0)
[ $(command -v posieve) ] || $(echo "Error: Penseu a instal·lar les eines del Pology. http://pology.nedohodnik.net/doc/user/en_US/ch-about.html#sec-install"; exit 0)
[ $(command -v sed)     ] || $(echo "Error: Penseu a instal·lar el paquet «sed» de GNU: apt install sed"; exit 0)
[ $(command -v svn)     ] || $(echo "Error: Penseu a instal·lar el paquet «subversion»: apt install subversion"; exit 0)

# Establim la capçalera
capçalera() {
  if [ "$BRANCA" = 'Carpeta_nova' ]; then
    BRANCA="trunk"
    ESCRIPTORI="l10n-kf5 (SVN local)"
  fi
  echo -e "\n** \e[1m$BRANCA/$ESCRIPTORI\e[0m ** \e[1m->\e[0m $RVINICI:$RVFINAL\n  ****************$([[ "$ESCRIPTORI" = "l10n-kf5"@(-plasma-lts| \(SVN local\)) ]] && echo "************")\n$1"
}

genera_copia() {
  # No cal processar (segons antiguitat)
  [ $CANVIA -eq 0 ] && echo -e " \e[38;5;82m-\e[0m $PO" && return 0
  [ -f ca/$PO           ] || return 0
  [ -f templates/${PO}t ] || return 0

  # Si no existeix el directori, el creem
  mkdir -p ca@valencia/$DIR

  # El caràcter «*» indica que aquest fitxer ha estat modificat
  echo -e " \e[44m*\e[0m ca@valencia/$PO"

  # Les primeres escriptures van a l'espai d'usuari en la memòria del sistema (molt més ràpid, alleuja i allarga la vida)
  MEM_DIR="$(echo /run/user/$(id -u))"
  DIRTR="$PWD"
  cd $MEM_DIR

  # Fem que les frases/paràgrafs siguin d'una sola línia:
  msgmerge --silent --previous --no-wrap $DIRTR/ca/$PO $DIRTR/templates/${PO}t --output-file=missatges-$FITX

  # Executem la conversió del fitxer PO
  $DIRTR/kde-src2valencia.sed < missatges-$FITX   > missatges_1-$FITX
  $DIRTR/all-src2valencia-adapta.sed < missatges_1-$FITX > missatges_2-$FITX
  $DIRTR/all-src2valencia.sed < missatges_2-$FITX > missatges_3-$FITX
  [ -f "missatges-$FITX"   ] && rm -f missatges-$FITX
  [ -f "missatges_1-$FITX" ] && rm -f missatges_1-$FITX
  [ -f "missatges_2-$FITX" ] && rm -f missatges_2-$FITX

  # S'afegeixen els crèdits per al valencià
  TOCAT=$(head -20 $DIRTR/ca/$PO | grep "$USUARIS_VAL0")
  if [ "$TOCAT" ]; then
    if [ "$(posieve find_messages -smsgctxt:"NAME OF TRANSLATORS" missatges_3-$FITX | grep msgstr)" ]; then
      for usuari_val in $USUARIS_VAL1
        do
          if [ "$(echo $TOCAT | grep $usuari_val)" ]; then
            USUARI_VAL="$(head -20 $DIRTR/ca/$PO | grep $usuari_val | cut -f 1 -d'<' | sed -e 's/\# //g' -e 's/ $//g'),"
            USUARI_VAL_EMAIL="$(head -20 $DIRTR/ca/$PO | grep $usuari_val | cut -f 2 -d'<' | sed -e 's/,.*//g' -e 's/>$//g'),"
            USUARIS_VAL="$USUARIS_VAL$USUARI_VAL"
            USUARIS_VAL_EMAIL="$USUARIS_VAL_EMAIL$USUARI_VAL_EMAIL"
          fi
        done
      echo "$USUARIS_VAL_EMAIL"
      LINE1="$(posieve find_messages -smsgctxt:"NAME OF TRANSLATORS" missatges_3-$FITX | grep msgstr)"
      LINE2="$(echo $LINE1 | sed -s "s/^msgstr \"/msgstr \"${USUARIS_VAL}/")"
      sed --in-place -e "s/$LINE1/$LINE2/" missatges_3-$FITX
      LINE1="$(posieve find_messages -smsgctxt:"EMAIL OF TRANSLATORS" missatges_3-$FITX | grep msgstr)"
      LINE2="$(echo $LINE1 | sed -s "s/^msgstr \"/msgstr \"${USUARIS_VAL_EMAIL}/")"
      sed --in-place -e "s/$LINE1/$LINE2/" missatges_3-$FITX
      USUARIS_VAL=""
      USUARIS_VAL_EMAIL=""
    fi
  fi

  # Es torna a donar el format amb 78 files
  msgmerge --silent --previous --width=79 --lang=ca@valencia missatges_3-$FITX $DIRTR/templates/${PO}t --output-file=missatges_3-$FITX

  # Es realitza un avís per si la nova traducció conté missatges sense fer
  msgfmt --statistics missatges_3-$FITX

  # Esborrem els missatges obsolets (en silenci)
  posieve --quiet remove-obsolete missatges_3-$FITX

  # Es convida a algun col·laborador/a de valència
  if [ $FITX = "gcompris_qt.po" ]; then
    echo -e "\n Nota:  El fitxer «$FITX» conté una millora addicional\n\tper a convidar a traductors valencians.\n"
    sed --in-place -e "s/DOT com&gt; .2015-20...\.\"/DOT com\&gt; \(2015-$(date +%Y)\)\.<br \/\"\n\"><b>Atenció<\/b>: Cal ajuda per a la seva traducció al valencià. Volem que \"\n\"esta siga correcta i potser voldreu que les veus també estiguen en \"\n\"valencià. Escriviu-nos a la llista de correu \&lt;kde-i18n-ca@kde.org\&gt; i \"\n\"en parlarem.\"/g" missatges_3-$FITX
  fi

  # Ja s'escriu al disc
  mv -f missatges_3-$FITX $DIRTR/ca@valencia/$PO
  cd $DIRTR
}

cerca_po() {
  [ -z $(echo $FOUND | grep -E 'messages/[[:alnum:]-]{3,}*$') ] && exit 0
  # Cerca les plantilles de traducció i les ordena
  cd ca
  FITXERSPO=$(find messages/* -type f -name "*.po" | sort)
  cd ..
}

ACTION="$1"
case $ACTION in
  usuari)
    CANVIA='1'
    if [ -f $RVF ]; then
        RV=$(cat $RVF)
        # S'afegeix 1 a la revisió per a ometre els últims canvis
        RVINICI="$(printf %06d $[10#$RV + 1])"

        # S'obté la darrera modificació SVN des de la carpeta
        RVFINAL=$(LANG=C; svn info ca/ | grep "^Revision:" | awk '{print $2}')
        if [ $ESCRIPTORI = "l10n-kf5-plasma-lts" ]; then
          capçalera "\e[1mLlegenda:\e[0m \e[44m*\e[0m s'ha modificat, \e[38;5;82m-\e[0m no cal actualitzar\n\t  \e[44mo\e[0m no es tradueix, \e[38;5;46mo\e[0m mantingut per l'equip valencià\n"
          echo -e " \e[38;5;82m-\e[0m Aquestes traduccions són mantingudes per l'equip de valencià.\n"
          exit 0
        fi
      else
        echo -e "\nError «$1»: No existeix el fitxer $RVF."
        echo    "  Creeu-lo manualment o empreu primer l'opció «recursiu»."
        echo    "  Es tracta de no permetre executar aquesta opció"
        echo    "  sobre tots els elements en el repositori."
        echo -e "  Format: 1641759\n"
        exit 0
    fi

    [ "$USUARIS_SVN" ] || $(echo -e "\nError: no heu establert cap usuari seguit!\n"; exit 0)
    COMMITS=$(LANG=C; svn log --verbose -r $RVINICI:$RVFINAL ca/  | grep $USUARIS_SVN | cut -f 1 -d' ' | sed 's/^r//g')
    commits_num() {
      FITXERS=$(LANG=C; svn log --verbose -r $1 ca/ | grep 'ca/messages/' | grep '\.po' | sed 's/^\(.*\)\/ca\///g')
    }

    N='0'
    for arg in ${COMMITS[@]}
      do
        if [ "$N" ]; then
          commits_num "$arg"
          FITXERST="$FITXERST\n$FITXERS"
        fi
        N='1'
      done

    FITXERSPO="`echo -e "$FITXERST" | sort | uniq | tr "\n" " "`"
    capçalera "\e[1mLlegenda:\e[0m \e[44m*\e[0m s'ha modificat, \e[38;5;82m-\e[0m no cal actualitzar\n\t  \e[44mo\e[0m no es tradueix, \e[38;5;46mo\e[0m mantingut per l'equip valencià\n"
  ;;
  recursiu)
    CANVIA='1'
    FOUND="$2"
    RVFINAL=$(LANG=C; svn info ca/ | grep "^Revision:" | awk '{print $2}')
    capçalera
    cerca_po
  ;;
  fitxer)
    CANVIA='1'
    PO="$2"
    DIR=$(dirname $PO)

    capçalera
    if [ -f ca/$PO ]; then
        FITX=$(basename $PO)
        if [ -f ca/$PO ]; then
            genera_copia
          else
            echo -e "\nError: «$FITX» no és un fitxer.\n"
        fi
      else
        echo -e "\nError: «$PO» no existeix. Heu d'indicar un fitxer PO existent."
        echo -e "messages/carpeta/fitxer.po\n"
    fi

    # Suprimeixo el fitxer creat per les eines gettext de GNU
    [ -e messages.mo ] && rm -f messages.mo
    exit 0
  ;;
  arranja_po)
    FOUND="$2"
    cerca_po
    echo -en "\nS'arranjen les traduccions: "
    for PO in $FITXERSPO
      do
        msgmerge --silent --update --previous --width=79 ca@valencia/$PO templates/${PO}t
      done
    echo -e "- Fet! -\n"
    [ $BRANCA = "stable" ] && posieve --quiet remove-obsolete ca@valencia/messages/*
    exit 0
  ;;
  *)
    echo "$0 [ usuari | recursiu | fitxer (po) | arranja_po ]"
    echo
    echo    " usuari       : Mode SVN: mira l'última data i hora de canvi per als usuaris seguits."
    echo    "                • Empra la revisió en el fitxer $RVF i processa els\n\t\tmodificats."
    echo -e "                • Usuaris seguits = $(echo $USUARIS_SVN | sed -e s,.\|,\ ,g)\n"
    echo    " recursiu [messages/«mòdul»]?"
    echo    "              : Mode local: actualitza tots els fitxers en base a la revisió\n\t\testablerta en el fitxer $RVF."
    echo    "                • Si aquest no existeix, ho actualitza tot."
    echo -e "                • Es pot especificar un mòdul per a començar per allà.\n"
    echo    " fitxer [po]  : Mode local: actualitza el fitxer sense emprar cap data."
    echo    "                • Útil si observem alguna desactualització puntual."
    echo    "                Nota: No actualitza la revisió en el fitxer $RVF."
    echo -e "                po = messages/carpeta/fitxer.po\n"
    echo    " arranja_po   : Mode local: s'arranjen les cadenes amb l'estil de la plantilla."
    echo -e "                Nota: No actualitza la data en el fitxer $RVF.\n"
    exit 0
  ;;
esac

for PO in $FITXERSPO
  do
    # Extraiem el nom de directori i el nom de fitxer
    DIR=$(dirname $PO)
    FITX=$(basename $PO)

    if [ -z "$FOUND" -o "$2" = "$DIR" ]; then
      FOUND=""
      message_removed() {
        [ "$REPETIT" = "$DIR" ] && return
        echo -e " \e[44mo\e[0m $DIR"
        REPETIT="$DIR"
      }

      # Es desactiven les traduccions següents:
      [ "$DIR"  = "messages/documentation-develop-kde-org" ]    && message_removed && continue # https://develop.kde.org/ca/docs/
      [ "$DIR"  = "messages/documentation-docs-kdenlive-org" ]  && message_removed && continue # https://docs.kdenlive.org/ca/
      # messages/websites-kde-org:
      [ "$FITX" = "release_announcements.po" ]                  && message_removed && continue  # https://kde.org/ca/announcements/
      [ "$FITX" = "www_www.po" ]                                && message_removed && continue
      [ "$DIR"  = "messages/websites-planet-kde-org" ]          && message_removed && continue # https://planet.kde.org/ca/
      [ "$DIR"  = "messages/websites-kdevelop-org" ]            && message_removed && continue # https://kdevelop.org/ca/
      # desactivades temporalment (a l'espera de temps per a revisar):
      # desactivades temporalment (la traducció en valencià no funciona a l'aplicació font):
      # ERROR: 459247 <https://bugs.kde.org/show_bug.cgi?id=459247>
      # Fet! - https://krita.org/ca/
      [ "$DIR"  = "messages/websites-docs-krita-org" ]          && message_removed && continue # https://docs.krita.org/ca/
      # Es desactiven les traduccions revisades per l'equip valencià (ja no s'empra):
      # kdeutils
#       [[ "$DIR" = "messages/"@(ark|filelight) ]] && VAL='1' && message_removed && continue
      genera_copia
    fi
  done

# Actualització normal
[[ "$ACTION" = @(usuari|recursiu) ]] && echo "$RVFINAL" > $RVF

[ -z $MISSATGEPOS ] || echo -e "\nError: $MISSATGEPOS\n"

# Suprimeixo el fitxer creat per les eines gettext de GNU
[ -e messages.mo ] && rm -f messages.mo

exit 0

