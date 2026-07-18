#!/usr/bin/env bash

# Best practices for robustness
set -euo pipefail

# Enables extended pattern matching features, such as @(pattern1|pattern2)
shopt -s extglob

# En aquest fitxer es desa la revisió del darrer commit (format: 1641759)
RVF='svn-revision_ca-valencia.log'
# Mira si es treballa sobre la branca «stable» o «trunk» (stable/l10n-kf6)
BRANCA="${PWD%/*}" && BRANCA="${BRANCA##*/}"
# Mira si es treballa sobre la versió «kde5» o «kf6» (stable/l10n-kf6)
ESCRIPTORI="${PWD##*/}"
REPETIT=
# Establir els usuaris seguits (format grep -E)
USUARIS_SVN="aacid|apol|bellaperez|jferrer|omas"
# Establir els traductors seguits
USUARIS_VAL0="montoro_mde@|alviboi@"
USUARIS_VAL1="${USUARIS_VAL0//|/ }"

msg_exit() {
  echo "Error: Penseu a instal·lar $1"
  exit 1
}

command -v awk      &>/dev/null || msg_exit "el paquet «gawk» de GNU: apt install gawk"
command -v cpulimit &>/dev/null || msg_exit "el paquet «cpulimit»: apt install cpulimit"
command -v msgmerge &>/dev/null || msg_exit "el paquet «gettext»: apt install gettext"
command -v grep     &>/dev/null || msg_exit "el paquet «grep» de GNU: apt install grep"
command -v posieve  &>/dev/null || msg_exit "les eines del Pology «http://pology.nedohodnik.net/doc/user/en_US/ch-about.html#sec-install»."
command -v sed      &>/dev/null || msg_exit "el paquet «sed» de GNU: apt install sed"
command -v svn      &>/dev/null || msg_exit "el paquet «subversion»: apt install subversion"

# Establim la capçalera
capçalera() {
  if [ "$BRANCA" = 'Carpeta_nova' ]; then
    BRANCA='trunk'
    ESCRIPTORI='l10n-kf5 (SVN local)'
  fi

  [ -n "${1:-}" ] && echo -e "$1"

  local extra_asterisk=""
  if [[ "$ESCRIPTORI" == "l10n-kf5-plasma-lts" || "$ESCRIPTORI" == "l10n-kf5 (SVN local)" ]]; then
    extra_asterisk="************"
  fi
  echo -e "\n** \e[1m$BRANCA/$ESCRIPTORI\e[0m ** \e[1m->\e[0m $RVINICI:$RVFINAL\n  ****************${extra_asterisk}\n"
}

genera_copia() {
  # No cal processar (segons antiguitat)
  [ "$CANVIA" -eq 0 ] && echo -e " \e[38;5;82m-\e[0m $PO" && return 0
  [ -f "ca/$PO"           ] || return 0
  [ -f "templates/${PO}t" ] || return 0

  # Si no existeix el directori, el creem
  mkdir -p "ca@valencia/$DIR"

  # El caràcter «*» indica que aquest fitxer ha estat modificat
  echo -e " \e[44m*\e[0m ca@valencia/$PO"

  # Les primeres escriptures van a l'espai d'usuari en la memòria del sistema (molt més ràpid, alleuja i allarga la vida)
  MEM_DIR="/run/user/$(id -u)"
  DIRTR="$PWD"
  cd "$MEM_DIR" || exit 1

  # Fem que les frases/paràgrafs siguin d'una sola línia:
  msgmerge --silent --previous --no-wrap "$DIRTR/ca/$PO" "$DIRTR/templates/${PO}t" --output-file="missatges-$FITX"

  if [ ! -f 'kde-src2valencia.sed' ]; then
    cp  "$DIRTR/kde-src2valencia_a.sed"         'kde-src2valencia.sed'
    cat "$DIRTR/kde-src2valencia_b.sed"      >> 'kde-src2valencia.sed'
    cat "$DIRTR/kde-src2valencia-esmena.sed" >> 'kde-src2valencia.sed'
    cp  "$DIRTR/all-src2valencia-adapta.sed"    'all-src2valencia.sed'
    cat "$DIRTR/all-src2valencia.sed"        >> 'all-src2valencia.sed'
    cat "$DIRTR/all-src2valencia-esmena.sed" >> 'all-src2valencia.sed'

    if ! pgrep -x "cpulimit" >/dev/null 2>&1; then
      cpulimit --background --quiet --path="$(which sed)" --limit='75' >/dev/null 2>&1 || true
    fi
  fi

  # Executem la conversió del fitxer PO
  TARGET_FILE="missatges_2-$FITX"
  sed -f kde-src2valencia.sed < "missatges-$FITX"   > "missatges_1-$FITX"
  sed -f all-src2valencia.sed < "missatges_1-$FITX" > "$TARGET_FILE"
  rm -f "missatges-$FITX" "missatges_1-$FITX"

  # S'afegeixen els crèdits per al valencià
  local HEADERPO
  HEADERPO="$(head -20 "$DIRTR/ca/$PO")"

  TOCAT="$(echo "$HEADERPO" | grep -E "$USUARIS_VAL0" || true)"
  if [ -n "$TOCAT" ]; then
    MSG_TEXT="$(posieve find-messages -smsgctxt:'NAME OF TRANSLATORS' "$TARGET_FILE" | grep 'msgstr' || true)"
    if [ -n "$MSG_TEXT" ]; then
      local USUARIS_VAL=""
      local USUARIS_VAL_EMAIL=""

      for usuari_val in $USUARIS_VAL1
        do
          if echo "$TOCAT" | grep -q "$usuari_val"; then
            # Extracció del nom de l'autor
            USUARI_VAL="$(echo "$HEADERPO" | grep "$usuari_val" | cut -f 1 -d'<' | sed -e 's/\# //g' -e 's/ *$//g' -e 's/[^A-Z]\{10\}/ /g' -e 's/SPDX-FileCopyright. //g'),"
            USUARI_VAL="${USUARI_VAL//# /}"

            # Extracció del correu de l'autor
            USUARI_VAL_EMAIL="$(echo "$HEADERPO" | grep "$usuari_val" | cut -f 2 -d'<' | sed -e 's/,.*//g' -e 's/>$//g'),"

            # Acumulació de les dades
            USUARIS_VAL="$USUARIS_VAL$USUARI_VAL"
            USUARIS_VAL_EMAIL="$USUARIS_VAL_EMAIL$USUARI_VAL_EMAIL"
          fi
        done

      echo "$USUARIS_VAL_EMAIL"
      # NAME OF TRANSLATORS
      LINE1="$(posieve find-messages -smsgctxt:'NAME OF TRANSLATORS' "$TARGET_FILE"  | grep 'msgstr')"
      LINE2="$(echo "$LINE1" | sed -s "s/^msgstr \"/msgstr \"${USUARIS_VAL}/")"
      sed --in-place -e "s/$LINE1/$LINE2/" "$TARGET_FILE"
      # EMAIL OF TRANSLATORS
      LINE1="$(posieve find-messages -smsgctxt:'EMAIL OF TRANSLATORS' "$TARGET_FILE" | grep 'msgstr')"
      LINE2="$(echo "$LINE1" | sed -s "s/^msgstr \"/msgstr \"${USUARIS_VAL_EMAIL}/")"
      sed --in-place -e "s/$LINE1/$LINE2/" "$TARGET_FILE"

      USUARIS_VAL=""
      USUARIS_VAL_EMAIL=""
    fi
  fi

  # Es torna a donar el format amb 78 files
  msgmerge --silent --previous --width='79' --lang='ca@valencia' "$TARGET_FILE" "$DIRTR/templates/${PO}t" --output-file="$FITX"
  rm -f "$TARGET_FILE"

  if   [[ "$FITX" = *@(appdata.po|_qt.po|metainfo.po) ]]; then
      LBUGS=""
  elif [[ "$FITX"  = @(docs_digikam_org_|docs_kdenlive_org_|docs_krita_org_|kstars_docs_)*.po ]]; then
      LBUGS=""
  elif [  "$FITX"  = 'kajongg.po' ]; then
      LBUGS='wolfgang@rohdewald.de'
    else
      LBUGS='https://bugs.kde.org'
  fi

  if [[ "$FITX" = @(docs_digikam_org_|kstars_docs_)* ]]; then
    grep --silent "^\"Plural-Forms: nplurals=2; plural=n != 1;"  "$FITX" || posieve set-header -sfield:"Plural-Forms:nplurals=2; plural=n != 1;" -screate -safter:'X-Generator:' -sreorder "$FITX"
  fi

  if [ -n "$LBUGS" ]; then
    posieve set-header -sfield:"Report-Msgid-Bugs-To:$LBUGS" -screate -safter:'Project-Id-Version' -sreorder "$FITX"
  elif  [[ "$FITX" = *@(appdata.po|metainfo.po) ]]; then
    posieve set-header -sremove:'Report-Msgid-Bugs-To:' -sreorder "$FITX"
  fi

  # Es realitza un avís per si la nova traducció conté missatges sense fer
  msgfmt --statistics "$FITX" || true

  # Esborrem els missatges obsolets (en silenci)
  posieve --quiet remove-obsolete "$FITX"

  # Es convida a algun col·laborador/a de valència
  if [ "$FITX" = 'gcompris_qt.po' ]; then
    echo -e "\n Nota:  El fitxer «$FITX» conté una millora addicional\n\tper a convidar a traductors valencians.\n"
    sed --in-place -e "s/DOT com&gt; .2015-20...\.\"/DOT com\&gt; \(2015-$(date +%Y)\)\.<br \/\"\n\"><b>Atenció<\/b>: Cal ajuda per a la seva traducció al valencià. Volem que \"\n\"esta siga correcta i potser voldreu que les veus també estiguen en \"\n\"valencià. Escriviu-nos a la llista de correu \&lt;kde-i18n-ca@kde.org\&gt; i \"\n\"en parlarem.\"/g" "$FITX"
  fi

  # es fa el seguiment local de les esmenes en regressió
  PO_RULES="$HOME/Documents/Treball/svn/SoftCatala/adaptadorvariants/tools/kde_project/rules"
  echo -e " \e[1;37m* Es comproven les regles globals:\e[0m"

  posieve check-rules -s rfile:"$PO_RULES/errors.rules"     "$FITX"
  if   [[ "$DIR" = 'messages/'@(digikam-doc|websites-krita-org) ]]; then
    echo -e " \e[1;37m* Es comproven les regles multimedia:\e[0m"
    posieve check-rules -s rfile:"$PO_RULES/multimedia.rules" "$FITX"
  elif [[ "$DIR" = 'messages/'@(kstars|documentation-kstars-docs-kde-org|websites-kstars-kde-org) ]]; then
    echo -e " \e[1;37m* Es comproven les regles del KStars:\e[0m"
    posieve check-rules -s rfile:"$PO_RULES/kstars.rules"     "$FITX"
  elif [[ "$DIR" = 'messages/'@(digikam-doc|documentation-kstars-docs-kde-org|websites-*) ]]; then
    echo -e " \e[1;37m* Es comproven les regles per a Sphinx:\e[0m"
    posieve check-rules -s rfile:"$PO_RULES/sphinx.rules"     "$FITX"
  fi

  # Ja s'escriu al disc
  mv -f "$FITX" "$DIRTR/ca@valencia/$PO"
  cd "$DIRTR" || exit 1
}

cerca_po() {
  [[ -z "${FOUND:-}" || "$FOUND" =~ messages/[[:alnum:]-]{3,} ]] || exit 0

  # Cerca les plantilles de traducció i les ordena
  cd ca || exit 1
  mapfile -t FITXERSPO < <(find 'messages/' -type f -name "*.po" | LC_ALL=C sort)
  cd ..
}

ACTION="${1:-}"
case $ACTION in
  usuari)
    CANVIA='1'
    if [ -f "$RVF" ]; then
        RV="$(cat "$RVF")"
        # S'afegeix 1 a la revisió per a ometre els últims canvis
        RVINICI="$(printf "%06d" $(( 10#$RV + 1 )))"
        echo -e "\e[1m\e[97m|--------------------\e[0m\n"

        SVN_REPO="$(svn info 'ca' | grep "^Relative URL:" | cut -f 3 -d' ' | sed -e 's,\^\/,,')"
        # S'obté la darrera modificació SVN des de la carpeta
        echo "1 - svn info /home/kde/$SVN_REPO"
        RVFINAL="$(LANG=C; svn info 'ca/' | grep "^Revision:" | awk '{print $2}')"

        if [ "$ESCRIPTORI" = 'l10n-kf5-plasma-lts' ]; then
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

    if [ -z "$USUARIS_SVN" ]; then
      echo -e "\nError: no heu establert cap usuari seguit!\n"
      exit 1
    fi

    echo "2 - svn log --verbose -r $RVINICI:$RVFINAL /home/kde/$SVN_REPO"
    mapfile -t COMMITS < <(LANG=C; svn log --verbose -r "$RVINICI:$RVFINAL" 'ca/' | grep -E "$USUARIS_SVN" | awk '{print $1}' | sed 's/^r//' || true)

    commits_num() {
      echo "3 - svn log --verbose -r $1 /home/kde/$SVN_REPO/messages"
      mapfile -t FITXERS < <(LANG=C; svn log --verbose -r "$1" 'ca/' | grep 'ca/messages/' | grep '.po' | sed 's/^\(.*\)\/ca\///g' || true)
    }

    FITXERST=""
    for arg in "${COMMITS[@]}"
      do
        commits_num "$arg"
        [ -z "$FITXERS" ] && continue

        if [ -z "$FITXERST" ]; then
            FITXERST="$FITXERS"
          else
            FITXERST="${FITXERST}\n${FITXERS}"
        fi

        FITXERS=""
      done

    capçalera "\e[1mLlegenda:\e[0m \e[44m*\e[0m s'ha modificat, \e[38;5;82m-\e[0m no cal actualitzar\n\t  \e[44mo\e[0m no es tradueix, \e[38;5;46mo\e[0m mantingut per l'equip valencià\n"
  ;;
  recursiu)
    CANVIA='1'
    FOUND="${2:-}"
    # S'estableix a zero (no s'usa)
    RVINICI='0'
    RVFINAL="$(LANG=C; svn info 'ca/' | grep "^Revision:" | awk '{print $2}')"
    capçalera
    cerca_po
  ;;
  fitxer)
    CANVIA='1'
    PO="${2:-}"
    DIR="${PO%/*}"
    # S'estableixen a zero (no s'usen)
    RVINICI="0"
    RVFINAL="0"

    capçalera
    if [ -f "ca/$PO" ]; then
        FITX="${PO##*/}"
        genera_copia
      else
        echo -e "\nError: «$PO» no existeix.\nHeu d'indicar un fitxer PO existent."
        echo -e "messages/carpeta/fitxer.po\n"
    fi

    # Suprimeixo el fitxer creat per les eines gettext de GNU
    rm -f 'messages.mo'
    exit 0
  ;;
  arranja_po)
    FOUND="${2:-}"
    cerca_po

    echo -en "\nS'arranjen les traduccions: "
    for PO in "${FITXERSPO[@]}"
      do
        msgmerge --silent --update --previous --width='79' "ca@valencia/$PO" "templates/${PO}t"
      done

    echo -e "- Fet! -\n"
    [ "${BRANCA:-}" = 'stable' ] && posieve --quiet remove-obsolete 'ca@valencia/messages/'*
    exit 0
  ;;
  *)
    echo "$0 [ usuari | recursiu | fitxer (po) | arranja_po ]"
    echo
    echo    " usuari       : Mode SVN: mira l'última data i hora de canvi per als usuaris seguits."
    echo -e "                • Empra la revisió en el fitxer $RVF i processa els\n\t\tmodificats."
    echo -e "                • Usuaris seguits = ${USUARIS_SVN//|/ }\n"
    echo    " recursiu [messages/«mòdul»]?"
    echo -e "              : Mode local: actualitza tots els fitxers en base a la revisió\n\t\testablerta en el fitxer $RVF."
    echo    "                • Si aquest no existeix, ho actualitza tot."
    echo -e "                • Es pot especificar un mòdul per a començar per allà.\n"
    echo    " fitxer [po]  : Mode local: actualitza el fitxer sense emprar cap data."
    echo    "                • Útil si observem alguna desactualització puntual."
    echo -e "                Nota: No actualitza la revisió en el fitxer $RVF."
    echo -e "                po = messages/carpeta/fitxer.po\n"
    echo    " arranja_po   : Mode local: s'arranjen les cadenes amb l'estil de la plantilla."
    echo -e "                Nota: No actualitza la data en el fitxer $RVF.\n"
    exit 0
  ;;
esac

message_removed() {
  [[ "$REPETIT" == "$DIR" ]] && return 0
  echo -e " \e[44mo\e[0m $DIR"
  REPETIT="$DIR"
}

for PO in "${FITXERSPO[@]}"
  do
    # Extraiem el nom de directori i el nom de fitxer
    DIR="${PO%/*}"
    FITX="${PO##*/}"

    if [[ -z "${FOUND:-}" || "${FOUND:-}" == "$DIR" ]]; then
      FOUND=""

      # Es desactiven les traduccions següents:
      [ "$DIR"  = 'messages/documentation-develop-kde-org' ]     && message_removed && continue # https://develop.kde.org/ca/docs/
      [ "$DIR"  = 'messages/documentation-docs-kdenlive-org' ]   && message_removed && continue # https://docs.kdenlive.org/ca/
      # messages/websites-kde-org:
      [ "$FITX" = 'release_announcements.po' ]                   && message_removed && continue # https://kde.org/ca/announcements/
      [ "$FITX" = 'www_www.po' ]                                 && message_removed && continue
      [ "$DIR"  = 'messages/websites-planet-kde-org' ]           && message_removed && continue # https://planet.kde.org/ca/
      [ "$DIR"  = 'messages/websites-docs-glaxnimate-org' ]      && message_removed && continue # https://docs.glaxnimate.org/ca/
      [ "$DIR"  = 'messages/websites-glaxnimate-org' ]           && message_removed && continue # https://glaxnimate.org/ca/
      [ "$DIR"  = 'messages/websites-kdenlive-org' ]             && message_removed && continue # https://kdenlive.org/ca/
      [ "$DIR"  = 'messages/websites-kdevelop-org' ]             && message_removed && continue # https://kdevelop.org/ca/
      # desactivades temporalment (la traducció en valencià no funciona a l'aplicació font):
      # ERROR: 459247 <https://bugs.kde.org/show_bug.cgi?id=459247>
      # Fet! - https://krita.org/ca/
      [ "$DIR"  = 'messages/documentation-docs-krita-org' ]      && message_removed && continue # https://docs.krita.org/ca/
      # Es desactiven les traduccions revisades per l'equip valencià:
      [[ "$DIR" = 'messages/'@(digikam-doc|documentation-kstars-docs-kde-org|kstars|websites-hugo-kde|websites-krita-org|websites-kstars-kde-org) ]] && message_removed && continue
      genera_copia
    fi
  done

# Actualització normal
[[ "$ACTION" = @(usuari|recursiu) ]] && echo "$RVFINAL" > "$RVF"

[ -n "${MISSATGEPOS:-}" ] && echo -e "\nError: $MISSATGEPOS\n"

# Suprimeixo el fitxer creat per les eines gettext de GNU
rm -f 'messages.mo' "${MEM_DIR:-}/messages.mo"

exit 0

