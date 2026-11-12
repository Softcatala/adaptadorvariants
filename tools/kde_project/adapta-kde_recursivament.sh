#!/usr/bin/env bash

# Best practices for robustness
set -euo pipefail

# Enables extended pattern matching features, such as @(pattern1|pattern2)
shopt -s extglob

# Camí base del repositori Git
DIR_GIT="$HOME/Documents/Treball/git/kde"
# Camí base del repositori SVN local
DIR_SVN="$DIR_GIT/Carpeta_nova/Treball"
REPO_DIR_SC="$HOME/Documents/Treball/svn/SoftCatala/adaptadorvariants/tools/kde_project/rules"
MEM_DIR="/run/user/$(id -u)"
RVF="$DIR_GIT/git-revision_ca-valencia.log"

# Detectem si estem a l'estructura Git (l10n-ca/...) o a l'SVN local (ca/...)
if   [[ -d "$PWD/l10n-ca" && -d "$PWD/l10n-ca-valencia" ]]; then
    VCS="git"
    BRANCA="git"
    CAT='l10n-ca'
    VAL='l10n-ca-valencia'
    TEM='l10n-templates'
    ESCRIPTORI="$CAT"
    DIR_CAT="$DIR_GIT/$CAT"
    DIR_VAL="$DIR_GIT/$VAL"
    DIR_TPL="$DIR_GIT/$TEM"
    DIRTR="$DIR_GIT"
elif [[ -d "$PWD/ca" && -d "$PWD/ca@valencia" ]]; then
    VCS="svn"
    BRANCA="${PWD%/*}" && BRANCA="${BRANCA##*/}"
    ESCRIPTORI="${PWD##*/}"
    CAT='ca'
    VAL='ca@valencia'
    TEM='templates'
    DIR_CAT="$DIR_SVN/$CAT"
    DIR_VAL="$DIR_SVN/$VAL"
    DIR_TPL="$DIR_SVN/$TEM"
    DIRTR="$DIR_SVN"
  else
    echo -e "\nError: carpeta de treball no reconeguda ($PWD)."
    echo -e "Executeu l'script «$0» des de:\n  • $DIR_GIT\n  • $DIR_SVN\n"
    exit 1
fi

RVINICI='0'
RVFINAL='0'
FITXERSPO=()
DOC=""
if [[ "${3:-}" == "doc" ]]; then
    DOC="doc"
    [[ "${4:-}" = 1 ]] && 3='1'
fi

# Afegeix suport per a les diferents branques
PRE_MSG='?(stable[56]/|trunk[56]/)messages'
REPETIT=
# Establir els usuaris seguits (format grep -E)
USUARIS_GIT="aacid@|antonibella5@|apol@|orestes@|txemaq@" # aacid|apol|bellaperez|jferrer|omas
# Establir els traductors seguits
USUARIS_VAL0="montoro_mde@|alviboi@"
USUARIS_VAL1="${USUARIS_VAL0//|/ }"

# Codis de color:
RESET='\e[0m'
 #
VERMELL_BLANC='\e[47;31m'

# Dependency Validation
for cmd in cpulimit git grep sed; do
    command -v "$cmd" &>/dev/null || msg_exit "el paquet «$cmd» de GNU: apt install $cmd"
done

msg_exit() {
  echo "Error: Penseu a instal·lar $1"
  exit 1
}

command -v awk      &>/dev/null || msg_exit "el paquet «gawk» de GNU: apt install gawk"
command -v msgmerge &>/dev/null || msg_exit "el paquet «gettext»: apt install gettext"
command -v posieve  &>/dev/null || msg_exit "les eines del Pology «http://pology.nedohodnik.net/doc/user/en_US/ch-about.html#sec-install»."
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

  [ -z "${RV_CADENA-}" ] && RV_CADENA="$RVINICI:$RVFINAL"
  echo -e "\n** \e[1m$BRANCA/$ESCRIPTORI\e[0m ** \e[1m->\e[0m $RV_CADENA\n  *************${extra_asterisk}\n"
}

genera_copia() {
  # No cal processar (segons antiguitat)
  [ "$CANVIA" -eq 0 ] && echo -e " \e[38;5;82m-\e[0m $PO" && return 0
  [ -f "$DIR_CAT/$PO"    ] || return 0
  [ -f "$DIR_TPL/${PO}t" ] || return 0

  # Si no existeix el directori, el creem
  mkdir -p "$DIR_VAL/$DIR"

  # El caràcter «*» indica que aquest fitxer ha estat modificat
  echo -e " \e[44m*\e[0m $VAL/$PO"

  # Les primeres escriptures van a l'espai d'usuari en la memòria del sistema (molt més ràpid, alleuja i allarga la vida)
  cd "$MEM_DIR" || exit 1

  # Fem que les frases/paràgrafs siguin d'una sola línia:
  msgmerge --silent --previous --no-wrap "$DIR_CAT/$PO" "$DIR_TPL/${PO}t" --output-file="missatges-$FITX"

  if [[ ! -f 'kde-src2valencia.sed' || "${1-}" = 1 ]]; then
    cat "$DIRTR/kde-src2valencia_a.sed"      \
        "$DIRTR/kde-src2valencia_b.sed"      \
        "$DIRTR/kde-src2valencia-esmena.sed" > 'kde-src2valencia.sed'
    cat "$DIRTR/all-src2valencia-adapta.sed" \
        "$DIRTR/all-src2valencia.sed"        \
        "$DIRTR/all-src2valencia-esmena.sed" > 'all-src2valencia.sed'

    if ! pgrep -x "cpulimit" >/dev/null 2>&1; then
      cpulimit --background --quiet --path="$(command -v sed)" --limit='75' >/dev/null 2>&1 || true
    fi
  fi

  # Executem la conversió
  TARGET_FILE="missatges_2-$FITX"
  LC_ALL=ca_ES.UTF-8 sed -f kde-src2valencia.sed < "missatges-$FITX"   > "missatges_1-$FITX"
  LC_ALL=ca_ES.UTF-8 sed -f all-src2valencia.sed < "missatges_1-$FITX" > "$TARGET_FILE"
  rm -f "missatges-$FITX" "missatges_1-$FITX"

  # S'afegeixen els crèdits per al valencià
  local HEADERPO TOCAT
  HEADERPO="$(head -20 "$DIR_CAT/$PO")"
  TOCAT="$(grep -E "$USUARIS_VAL0" <<< "$HEADERPO" || true)"

  if [ -n "$TOCAT" ]; then
    local LINE_NAMES LINE_EMAIL
    LINE_NAMES="$(posieve find-messages -smsgctxt:'NAME OF TRANSLATORS'  "$TARGET_FILE" | grep '^msgstr ' || true)"
    LINE_EMAIL="$(posieve find-messages -smsgctxt:'EMAIL OF TRANSLATORS' "$TARGET_FILE" | grep '^msgstr ' || true)"

    if [ -n "$LINE_NAMES" ] && [ -n "$LINE_EMAIL" ]; then
      local USUARIS_VAL="" USUARIS_VAL_EMAIL=""

      for usuari_val in $USUARIS_VAL1
        do
          local linia_autor
          linia_autor="$(grep -E "$usuari_val" <<< "$TOCAT" | head -n 1 || true)"

          if [ -n "$linia_autor" ]; then
            # Extracció del nom de l'autor
            local nom="${linia_autor%%<*}"
            nom="$(sed -E 's/^# SPDX-FileCopyrightText: [0-9, -]*//; s/[[:space:]]+$//' <<< "$nom")"

            # Extracció del correu de l'autor
            local email="${linia_autor#*<}"
            email="${email%>*}"

            # Només l'afegim si no consta ja als crèdits del fitxer
            if [[ "$LINE_EMAIL" != *"$email"* ]]; then
              USUARIS_VAL+="${nom},"
              USUARIS_VAL_EMAIL+="${email},"
            fi
          fi
        done

      if [ -n "$USUARIS_VAL" ]; then
        echo -e "   ${VERMELL_BLANC}->${RESET} S'han afegit els crèdits: ${VERMELL_BLANC}${USUARIS_VAL_EMAIL/%,/ }${RESET}"
        # Inserció directa buscant el context msgctxt (segura davant caràcters especials)
        sed --in-place -e "/msgctxt \"NAME OF TRANSLATORS\"/{n;s|^msgstr \"|msgstr \"${USUARIS_VAL}|}" "$TARGET_FILE"
        sed --in-place -e "/msgctxt \"EMAIL OF TRANSLATORS\"/{n;s|^msgstr \"|msgstr \"${USUARIS_VAL_EMAIL}|}" "$TARGET_FILE"
      fi
    fi
  fi

  # Es torna a donar el format amb 78 files
  msgmerge --silent --previous --width='79' --lang='ca@valencia' "$TARGET_FILE" "$DIR_TPL/${PO}t" --output-file="$FITX"
  rm -f "$TARGET_FILE"

  if   [[ "$FITX" = *@(appdata.po|_qt.po|metainfo.po) ]]; then
      LBUGS=""
  elif [[ "$FITX" = @(docs_digikam_org_|docs_kdenlive_org_|docs_krita_org_|kstars_docs_)*'.po' ]]; then
      LBUGS=""
  elif [  "$FITX" = 'kajongg.po' ]; then
      LBUGS='wolfgang@rohdewald.de'
    else
      LBUGS='https://bugs.kde.org'
  fi

  if   [[ "$FITX" = @(docs_digikam_org_|kstars_docs_)* ]]; then
    grep --silent "^\"Plural-Forms: nplurals=2; plural=n != 1;"  "$FITX" || posieve set-header -sfield:"Plural-Forms:nplurals=2; plural=n != 1;" -screate -safter:'X-Generator:' -sreorder "$FITX"
  fi

  if   [ -n "$LBUGS" ]; then
    posieve set-header -sfield:"Report-Msgid-Bugs-To:$LBUGS" -screate -safter:'Project-Id-Version' -sreorder "$FITX"
  elif [[ "$FITX" = *@(appdata.po|metainfo.po) ]]; then
    posieve set-header -sremove:'Report-Msgid-Bugs-To:' -sreorder "$FITX"
  fi

  # Es realitza un avís per si la nova traducció conté missatges sense fer
  msgfmt --statistics "$FITX" || true

  # Esborrem els missatges obsolets (en silenci)
  posieve --quiet remove-obsolete "$FITX"

  # Es convida a algun col·laborador/a de valència
  if   [ "$FITX" = 'gcompris_qt.po' ]; then
    echo -e "\n Nota:  El fitxer «$FITX» conté una millora addicional\n\tper a convidar a traductors valencians.\n"
    sed --in-place -e "s/DOT com&gt; .2015-20...\.\"/DOT com\&gt; \(2015-$(date +%Y)\)\.<br \/\"\n\"><b>Atenció<\/b>: Cal ajuda per a la seva traducció al valencià. Volem que \"\n\"esta siga correcta i potser voldreu que les veus també estiguen en \"\n\"valencià. Escriviu-nos a la llista de correu \&lt;kde-i18n-ca@kde.org\&gt; i \"\n\"en parlarem.\"/g" "$FITX"
  fi

  # es fa el seguiment local de les esmenes en regressió
  echo -e " \e[1;37m* Es comproven les regles globals:\e[0m"
  posieve   check-rules -s rfile:"$REPO_DIR_SC/errors.rules"     "$FITX" || true

  if   [[ "$DIR" = $PRE_MSG'/'@(digikam-doc|websites-krita-org) ]]; then
    echo -e " \e[1;37m* Es comproven les regles multimedia:\e[0m"
    posieve check-rules -s rfile:"$REPO_DIR_SC/multimedia.rules" "$FITX" || true
  elif [[ "$DIR" = $PRE_MSG'/'@(kstars|documentation-kstars-docs-kde-org|websites-kstars-kde-org) ]]; then
    echo -e " \e[1;37m* Es comproven les regles del KStars:\e[0m"
    posieve check-rules -s rfile:"$REPO_DIR_SC/kstars.rules"     "$FITX" || true
  fi

  if [[ "$DIR" = $PRE_MSG'/'@(digikam-doc|documentation-kstars-docs-kde-org|websites-*) ]]; then
    echo -e " \e[1;37m* Es comproven les regles per a Sphinx:\e[0m"
    posieve check-rules -s rfile:"$REPO_DIR_SC/sphinx.rules"     "$FITX" || true
  fi

  echo -e " \e[1;37m* Es comproven les regles per a les esmenes als fitxers «*-esmena.sed»:\e[0m"
  posieve check-rules -s rfile:"$REPO_DIR_SC/esmenes.rules"      "$FITX" || true

  # Ja s'escriu al disc
  mv -f "$FITX" "$DIR_VAL/$PO"
  cd "$DIRTR" || exit 1
}

cerca_po() {
  # Cerca les plantilles de traducció i les ordena
  cd "$DIR_CAT" || exit 1
  mapfile -t FITXERSPO < <(find 'messages/' -type f -name "*.po" | LC_ALL=C sort)
  cd "$DIRTR"   || exit 1
}

ACTION="${1:-}"
ACTIVAT='0'

case $ACTION in
  usuari)
    if   [ "$VCS" != "git" ]; then
      echo -e "\nError: L'opció «usuari» només està disponible per al repositori Git ($DIR_GIT)."
      echo -e "       Al repositori SVN local no s'empra fitxer de registre «$RVF».\n"
      exit 1
    elif [[ ! -f "$RVF" ]]; then
      cat <<EOF

Error «$1»: No existeix el fitxer $RVF.
  Creeu-lo manualment o empreu primer l'opció «recursiu».
  Es tracta de no permetre executar aquesta opció
  sobre tots els elements en el repositori.
  Format: e3df5a8302ca78ef334f21019b31105c08c82e24

EOF
      exit 1
    elif [[ -z "$USUARIS_GIT" ]]; then
      echo -e "\nError: no heu establert cap usuari seguit!\n"
      exit 1
    fi

    CANVIA='1'
    RV="$(<"$RVF")"
    RVINICI="$RV"
    echo -e "\e[1m\e[97m|--------------------\e[0m\n"

    GIT_REPO="$(git -C "$CAT" config --get remote.origin.url)"
    echo  "  - $GIT_REPO"

    # S'obté el hash complet de HEAD dins de la carpeta
    echo  "1 - git -C \"$CAT\" rev-parse HEAD"
    RVFINAL="$(git -C  "$CAT"  rev-parse HEAD 2>/dev/null)"

    # if [[ "$ESCRIPTORI" == 'l10n-kf5-plasma-lts' ]]; then
    #   capçalera "\e[1mLlegenda:\e[0m \e[44m*\e[0m s'ha modificat, \e[38;5;82m-\e[0m no cal actualitzar\n\t  \e[44mo\e[0m no es tradueix, \e[38;5;46mo\e[0m mantingut per l'equip valencià\n"
    #   echo -e " \e[38;5;82m-\e[0m Aquestes traduccions són mantingudes per l'equip de valencià.\n"
    #   exit 0
    # fi

    if [[ "$RV" != "$RVFINAL" ]]; then
        echo "2 - git -C \"$CAT\" log --extended-regexp --author=\"$USUARIS_GIT\" --pretty=format:\"%H\" \"$RV..$RVFINAL\""
        mapfile -t COMMITS < <(git -C "$CAT" log --extended-regexp --author="$USUARIS_GIT" --pretty=format:"%H" "$RV..$RVFINAL")

        commits_num() {
          echo "3 - git -C \"$CAT\" show --name-only --pretty=format: \"$1\""
          mapfile -t FITXERS < <(git -C "$CAT" show --name-only --pretty=format: "$1" 2>/dev/null | grep -E "^([^/]+/)?${DOC}messages/.*\.po$" || true)
        }

        FITXERST=""
        for arg in "${COMMITS[@]}"
          do
            commits_num "$arg"
            [ ${#FITXERS[@]} -eq 0 ] && continue
            printf -v FITXERS "%s\n" "${FITXERS[@]}"

            FITXERST+="$FITXERS"
            FITXERS=()
          done

        mapfile -t FITXERSPO < <(printf '%s' "$FITXERST" | LC_ALL=C sort -u)
        capçalera "\e[1mLlegenda:\e[0m \e[44m*\e[0m s'ha modificat, \e[38;5;82m-\e[0m no cal actualitzar\n\t  \e[44mo\e[0m no es tradueix, \e[38;5;46mo\e[0m mantingut per l'equip valencià\n"
      else
        echo -e "2 - No hi ha cap comissió nova des de la revisió $RV.\n"
    fi
  ;;
  recursiu)
    CANVIA='1'
    MODUL="${2:-}" && MODUL="${MODUL%/}"
    # S'estableix a zero (no s'usa)
    RVINICI='0'
    [ "$VCS" = "git" ] && RVFINAL="$(git -C "$CAT" rev-parse HEAD 2>/dev/null)"
    capçalera
    cerca_po
  ;;
  fitxer)
    CANVIA='1'
    PO="${2:-}"
    DIR="${PO%/*}"
    # S'estableixen a zero (si no s'usen)
    [ -z "${RVINICI-}" ] && RVINICI='0'
    [ -z "${RVFINAL-}" ] && RVFINAL='0'
    [ -n "${3-}" ] && [ "$3" != 1 ] && RV_CADENA="$3"

    capçalera
    if [ -f "$CAT/$PO" ]; then
        FITX="${PO##*/}"
        genera_copia "${3-}"
      else
        echo -e "\nError: «$PO» no existeix.\nHeu d'indicar un fitxer PO existent."
        echo -e "messages/carpeta/fitxer.po\n"
    fi

    # Suprimeixo el fitxer creat per les eines gettext de GNU
    rm -f 'messages.mo'
    exit 0
  ;;
  arranja_po)
    MODUL="${2:-}" && MODUL="${MODUL%/}"
    cerca_po

    echo -en "\nS'arranjen les traduccions: "
    for PO in "${FITXERSPO[@]}"
      do
        msgmerge --silent --update --previous --width='79' "$VAL/$PO" "$TEM/${PO}t"
      done

    echo -e "- Fet! -\n"
    [ "${BRANCA:-}" = 'stable' ] && posieve --quiet remove-obsolete "$VAL/messages/"*
    exit 0
  ;;
  *)
    echo "$0 [ usuari | recursiu | fitxer (po) | arranja_po ]"
    echo
    echo    " usuari     : Mode Git: cerca les comissions noves dels usuaris seguits."
    echo    "              • Empra la revisió desada a: $RVF"
    echo    "              • (No disponible en el repositori SVN local)"
    echo -e "              • Usuaris seguits = ${USUARIS_GIT//|/ }\n"
    echo    " recursiu [messages/«mòdul»]?"
    echo -e "            : Mode local: actualitza tots els fitxers en base a la revisió\n\t\testablerta en el fitxer $RVF."
    echo    "              • Si aquest no existeix, ho actualitza tot."
    echo    "              Nota: No modifica el hash desat a $RVF."
    echo -e "              \e[47;31m* = Si s'especifica una carpeta, la cerca començarà en aquesta.\e[0m\n"
    echo    " fitxer [po] 1?"
    echo    "            : Mode local: actualitza el fitxer sense emprar cap data."
    echo    "              • Útil si observem alguna desactualització puntual."
    echo -e "              Nota: No modifica el hash desat a $RVF."
    echo    "              po = messages/carpeta/fitxer.po"
    echo -e "              Nota: Es pot indicar 1 com a tercer paràmetre i reconstruir els fitxers en sed.\n"
    echo    " arranja_po : Mode local: s'arranjen les cadenes amb l'estil de la plantilla."
    echo    "              Nota: No modifica el hash desat a $RVF."
    echo -e "              \e[47;31m* = Si s'especifica una carpeta, la cerca començarà en aquesta.\e[0m\n"
    exit 0
  ;;
esac

message_removed() {
  [[ "$REPETIT" == "$DIR" ]] && return 0
  { [[ "${VALID-}" -eq 1 ]] && echo -e " \e[38;5;46mo\e[0m $DIR"; } || echo -e " \e[44mo\e[0m $DIR"
  REPETIT="$DIR"
  VALID='0'
}

for PO in "${FITXERSPO[@]}"
  do
    # Extraiem el nom de directori i el nom de fitxer
    DIR="${PO%/*}"
    FITX="${PO##*/}"
    MODUL="${DIR##*/}"

    [[ "$DIR" = $PRE_MSG'/'${MODUL-} ]] && ACTIVAT='1'

    if [ "$ACTIVAT" -eq 1 ] || [ -z "${MODUL:-}" ]; then
      # Es desactiven les traduccions següents:
      [[ "$DIR"  = $PRE_MSG'/documentation-develop-kde-org' ]]   && message_removed && continue # https://develop.kde.org/ca/docs/
      [[ "$DIR"  = $PRE_MSG'/documentation-docs-kdenlive-org' ]] && message_removed && continue # https://docs.kdenlive.org/ca/
      # messages/websites-kde-org:
      [  "$FITX" = 'release_announcements.po' ]                  && message_removed && continue # https://kde.org/ca/announcements/
      [  "$FITX" = 'www_www.po' ]                                && message_removed && continue
      [[ "$DIR"  = $PRE_MSG'/websites-planet-kde-org' ]]         && message_removed && continue # https://planet.kde.org/ca/
      [[ "$DIR"  = $PRE_MSG'/websites-docs-glaxnimate-org' ]]    && message_removed && continue # https://docs.glaxnimate.org/ca/
      [[ "$DIR"  = $PRE_MSG'/websites-glaxnimate-org' ]]         && message_removed && continue # https://glaxnimate.org/ca/
      [[ "$DIR"  = $PRE_MSG'/websites-kdenlive-org' ]]           && message_removed && continue # https://kdenlive.org/ca/
      [[ "$DIR"  = $PRE_MSG'/websites-kdevelop-org' ]]           && message_removed && continue # https://kdevelop.org/ca/
      # desactivades temporalment (la traducció en valencià no funciona a l'aplicació font):
      # ERROR: 459247 <https://bugs.kde.org/show_bug.cgi?id=459247>
      # Fet! - https://krita.org/ca/
      [[ "$DIR"  = $PRE_MSG'/documentation-docs-krita-org' ]]    && message_removed && continue # https://docs.krita.org/ca/
      # Es desactiven les traduccions revisades per l'equip valencià:
      [[ "$DIR"  = $PRE_MSG'/'@(digikam-doc|documentation-kstars-docs-kde-org|kstars|websites-hugo-kde|websites-krita-org|websites-kstars-kde-org) ]]                       && VALID='1' message_removed && continue
      [[ "$FITX" = @(cervisia._json_|ffmpegthumbs._json_|kbibtex._json_|kdenlive._json_|oom_notifier|org.kde.plasmasetup|org.rolisteam.rolisteam.appdata|rolisteam._desktop_|svgpart._json_)'.po' ]] && VALID='1' message_removed && continue
      # Aquest fitxer està buit i dona error
      [  "$FITX" = 'libkscreen6_qt.po' ]                         && message_removed && continue
      [  "$FITX" = 'knotifications6_qt.po' ]                     && message_removed && continue
      [  "$FITX" = 'kreport_webplugin_qt.po' ]                   && message_removed && continue

      genera_copia
    fi
  done

[ -n "${MISSATGEPOS:-}" ] && echo -e "\nError: $MISSATGEPOS\n"

# Suprimeixo el fitxer creat per les eines gettext de GNU
rm -f 'messages.mo' "${MEM_DIR:-}/messages.mo"

# Actualització normal
[[ "$VCS" = "git" && "$ACTION" = 'usuari' ]] && echo "$RVFINAL" > "$RVF"

exit 0

