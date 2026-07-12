#!/usr/bin/env bash

# Best practices for robustness
set -euo pipefail

# Configuration & Paths
ROOT_SCRIPT="$PWD"
ROOT_TREE="$(cd ../../../../ ; pwd)"
cd "$ROOT_SCRIPT" || exit 1

STABLE="stable/l10n-kf5"
TRUNK="trunk/l10n-kf5"
STABLE6="stable/l10n-kf6"
TRUNK6="trunk/l10n-kf6"
MEM_DIR="/run/user/$(id -u)"
MSG='msgstr'
SOURCE_0='ca@valencia'

# Dependency Validation
msg_exit() {
  echo "Error: Penseu a instal·lar $1"
  exit 1
}

command -v cpulimit &>/dev/null || msg_exit "el paquet «cpulimit»: apt install cpulimit"
command -v /usr/lib/qt6/bin/lconvert &>/dev/null || msg_exit "el paquet «qt6-l10n-tools»: apt install qt6-l10n-tools"
command -v msgmerge &>/dev/null || msg_exit "el paquet «gettext»: apt install gettext"
command -v posieve  &>/dev/null || msg_exit "les eines del Pology «http://pology.nedohodnik.net/doc/user/en_US/ch-about.html#sec-install»."
command -v sed      &>/dev/null || msg_exit "el paquet «sed» de GNU: apt install sed"
command -v svn      &>/dev/null || msg_exit "el paquet «subversion»: apt install subversion"

# Per a trobar els resultats amb un enllaç o caràcter especial (p. ex., va rebre el [premi a -en aquest cas «[»-)
TEMPORAL=":(alt|command|dfn|doc|file|guilabel|kbd|literal|menuselection|program|ref|su[bp]|term):\`"
APPEND="\`\`|\`|\*\*\*|\*\*|\*|$TEMPORAL|\.|\(|\)|\[|\]|\(\[|\)\[|\(\[«|\)\[«|«?\$|[,&«»]|<[^<]{1,}>"

# Es descarten les paraules annexades abans (p. ex., accedint recentment a la -en aquest cas «accedint recentment»-)
[ -f 'append-a_en.in' ] && APPEND_0="$(tr -d '\n' < append-a_en.in)"

# Es descarten les paraules annexades després (p. ex., Ha fallat l'extracció a causa -en aquest cas «causa»-)
APPEND_A="[0123456789]|\d{3}|«Escala|acte (es bus|se cer)caran|baix|banda|bord|cada segon|causa|celebrar|cinc bandes|class=|completar|continuació|costa|curt termini|dalt|davall|diferència|dins|dintre|dret|dreta|esquerra|est|estar|facilitar|faltar|fer|Fourier|freqüències|hores d'ara|href|individus|longitud d'ona|llarg termini|menys que|mesura|més,|més d'|més de|més del resultat|més dels|mida|molts|motius|name=|ningú|nivell intern|nord|oest|partir|penes|primera vista|principis|prop|punt|qualsevol valor|qui|Seaside|simple|sud|tall|temps complet|terme|tindre en compte|title=|tort|través|trobar|una distància|una gran distància|unir-se a nosaltres|vegades|voluntat"
APPEND_A_L="aire lliure|escala especificada|especificat|espera|esquerra|est del nord|estar|estil|extrem baix|hivern|hora|inrevés|instant|oest de Greenwich|oli|usuari"
APPEND_A_LA="conclusió|distància en micres|dreta|dreta, davall|gent|inversa|Krita Foundation|llarga|manera de fer|manera tradicional|millor|nit seleccionada|normal|part|posició (apuntada|d'enfocament)|pèrdua|posta de sol|qual|rotació|vegada|versió [0123456789]|visualització|vostra opció"
APPEND_A_LES="[01][0123456789][:,]|2[01234][:,]|dotze del migdia|persones|quals"
# Inclou «AL»
APPEND_ALS="100%|19[6789][0123456789]|20[012][0123456789]|canvis ambientals|capdamunt|capdavant|carbonet|començament|costat|darrere|davant|desenvolupadors?|Dhanab|dia|efectes del càlcul|espectadors|fet|final|Gieba|Giedi|japon[èé]s|Jawf|jugador|llarg|Manamah|mateix (ritme|temps)|màxim|mig del gris|migdia|millors artistes|moment d'escriure|Nair|Nasl|NGC|Niyat|[nv]ostre (gust|voltant)|paràmetres per a configurar|participant|primer pla|principi|quadrat de l'ajust|qual s'accedix|qual sovint es refer(eix|ix)|Rai|Saif|seu (torn|voltant)|seus valors predeterminats|Shuja|sis anys|Thalimain|ultraviolats|valor calculat automàticament|valors? predeterminats?|voltant|xin[èé]s"

sortida_po() {
  echo -e "$0 [opció] (arguments)?

  \033[1;37mAJUDA\n  -----\e[0m
  troba_po (nom|exp. reg.)        Cerca \033[1;37ma on es troba ara aquest fitxer\e[0m.
  crea_po_linia ruqola/ruqola.po (cadena de lletres)
                                  * \033[1;37mCrea un fitxer amb les entrades en una sola línia\e[0m,
                                  de manera que es poden esmenar els números de línia
                                  a l'script en sed.
  po_nou (dir)[/fitxer.po]? (doc)?
                                  Tenim una traducció nova i \033[1;37mla volem revisar\e[0m amb
                                  totes les regles que s'han emprat.
                                  Apareix un indicatiu en canviar de regla.
                                  Permet especificar un sol fitxer.
                                  \033[47;31mNOTA:\e[0m Primer s'ha de generar la traducció!

  \033[1;37mCERCAR\n  ------\e[0m
  cerca_dir va (text_cerca) (dir))[/fitxer.po]? [doc]?
                                  \033[1;37mCerca a la carpeta indicada\e[0m.
                                  Es pot especificar l'idioma (ca, en -a «va»- i va).
                                  Amb el caràcter de punt «.» se cerca a totes.
                                  De manera predeterminada a «va».
  cerca_all_dir va (text_cerca) (dir)?
                                  \033[1;37mApareix un indicatiu en passar per cada carpeta\e[0m (va).
                                  Es pot especificar l'idioma (ca, en -a «va»- i va).
                                  Si s'especifica una carpeta, la cerca començarà en
                                  aquesta.
  cerca_dir_a    va (paraula)     \033[1;37mSe cerca «a »+«paraula».\e[0m
  cerca_dir_a_l  va (paraula)     \033[1;37mSe cerca «a l'»+«paraula».\e[0m
  cerca_dir_ala  va (paraula)     \033[1;37mSe cerca «a la »+«paraula».\e[0m
  cerca_dir_ales va (paraula)     \033[1;37mSe cerca «a les »+«paraula».\e[0m
  cerca_dir_al   va (paraula)     \033[1;37mSe cerca «al »+«paraula».\e[0m
  cerca_dir_als  va (paraula)     \033[1;37mSe cerca «als »+«paraula».\e[0m
  cerca_dir_auns va (paraula)     \033[1;37mSe cerca «a uns? »+«paraula».\e[0m
                                  Es pot especificar l'idioma (ca i va).

  cerca_dir_ab (dir)?             --Expressió regular--- emprada per a fer neteja.
  cerca        (text_cerca)       És una \033[1;37mcerca més ràpida per carpeta\e[0m (va).

  \033[1;37mTÍTOLS\n  ------\e[0m
  cerca_titols (dir)?             * \033[1;37mEs miren els títols\e[0m (va).
  cerca_titols_dir (dir)?         * \033[1;37mEs miren els títols per carpeta\e[0m (va).
                                  Si s'especifica una carpeta, la cerca començarà en
                                  aquesta.
  comprova_titols                 * \033[1;37mEs comproven els títols modificats\e[0m (va).

  \033[1;37mCREAR\n  -----\e[0m
  adapta                          * \033[1;37mAdapta recursivament la IGU\e[0m en el SVN local.
  adapta_doc                      * \033[1;37mAdapta i genera la documentació\e[0m en el SVN local.
                                  \033[47;31mNOTA:\e[0m Després s'han de moure manualment!
  \033[47;31madapta_dir (dir)\e[0m                \033[1;37mPROVES! Adapta i genera només una carpeta\e[0m en el SVN local.
  \033[47;31madapta_dir_va (dir)\e[0m             \033[1;37mPROVES! El mateix pero només amb els fitxers ja en valencià\e[0m.
  modifica_capçalera fitxer.po    * \033[1;37mActualitza la informació a la capçalera\e[0m.
  adapta_valencia (recursiu|usuari)
                                  * \033[47;31mAdapta el SVN de KDE en totes les branques.\e[0m
  crea_po   (gui|doc)             * \033[1;37mCrea els fitxers PO que es mantenen\e[0m.
  neteja_ca (gui|doc)             * \033[1;37mEs fan còpies de seguretat tot netejant l'arbre\e[0m.
  adapta_mod                      * \033[47;31mAdapta tots els fitxers mantinguts en el SVN local.\e[0m

  \033[1;37mMANTENIMENT\n  -----------\e[0m
  \033[47;31mactualitza_svn_local\e[0m            \033[1;37mActualitza l'SVN local amb trunk\e[0m.
                                  \033[47;31mNOTA:\e[0m Després s'han d'entregar manualment els canvis!
  copia_a_svn_local kdenlive/kdenlive.po
                                  * Copia algun fitxer des de trunk a dins del SVN local.
                                    - També l'adapta al valencià.
  \033[47;31mcopia_aquests\e[0m \"[núm. comissió]\" * \033[1;37mAdapta els PO amb modificacions\e[0m en el SVN de KDE.
  \033[47;31minstalla_va\e[0m                     * \033[1;37mInstal·la les traduccions\e[0m.
  sense_installar                 \033[1;37mObjectius futurs\e[0m [?].
  revisa                          Revisa la documentació del digiKam.
  \033[47;31minforma_diff\e[0m websites-* (gui|doc)
                                  * Es crea un diff amb el qual enviar informes a l'equip de català.
                                    - Responeu al primer «Sí» i feu la comissió en el repo
                                      de proves.
                                    - Responeu al segon «Sí» i extreieu el diff (caldrà
                                      revisar els valencianismes).
                                    - Responeu al tercer «Sí» i es restaurarà el seu
                                      darrer estat.
                                    Tot plegat esdevé una eina de revisió a dues bandes \033[47;31m;-)\e[0m

  \033[1;37mARBRE DE CARPETES\n  -----------------\e[0m
  - stable / l10n-kf5 /                          \033[1;37m[repositoris SVN de KDE]\e[0m
  - stable / l10n-kf6 /
  - trunk  / l10n-kf5 /
  - trunk  / l10n-kf6 /

  - trunk  / l10n-kf5 / Carpeta_nova / Treball / \033[1;37m[repositori SVN local i carpeta
                                                 base d'aquest script]\e[0m

  \033[1;37mCONTINGUT\n  ---------\e[0m
  - ca                          \033[1;37m[SVN de les traduccions al català]\e[0m
  - ca@valencia                 \033[1;37m[SVN de les traduccions al valencià]\e[0m
  - ca-mod                      \033[1;37m[Carpeta amb les traduccions modificades]\e[0m
  - templates                   \033[1;37m[SVN de les plantilles de traducció]\e[0m
  \033[1;37mCarpetes on es genera l'adaptació de la documentació:\e[0m
  - kf5-stable
  - kf5-trunk
  - kf6-stable
  - kf6-trunk

  \033[1;37mRepo:\e[0m https://github.com/Softcatala/adaptadorvariants/tools/kde_project/
  • c_crea_val-po.sh            \033[1;37m[Aquest script]\e[0m
  • append-a_en.in              \033[1;37m[Ajudant del pology -el contingut s'inclou al primer script-]\e[0m
  • adapta-kde_recursivament.sh \033[1;37m[Script en Bash que adapta amb els scripts en SED]\e[0m
  \033[1;37mEls scripts en SED, en odre de processament:\e[0m
  • kde-src2valencia_a.sed
  • kde-src2valencia_b.sed
  • kde-src2valencia-esmena.sed
  • all-src2valencia.sed
  • all-src2valencia-adapta.sed
  • all-src2valencia-esmena.sed

  \033[1;37mLLEGENDA\n  --------\e[0m
  * (Opcions que només es poden executar des de la carpeta base de l'script).\n

  \033[1;37mRETALLS\n  --------\e[0m
  * Primer obriu la IGU del Lokalize:
    posieve check-rules -s lokalize ca-mod/messages/websites-krita-org/\n
  * Verificar amb les regles del pology:
    posieve check-rules -s rfile:$HOME/Documents/Treball/svn/SoftCatala/adaptadorvariants/tools/kde_project/rules/multimedia.rules ca@valencia/messages/digikam-doc/
  * Comprovar les capçaleres:
    ../../../l10n-support/ca/scripts/set_kde_copyright.sh l10n-kf5 copyright trunk"
  exit 0
}

[ $# -eq 0 ] && sortida_po

comprova_lloc() {
  # Comprova que es crida des de la ubicació correcta
  [ -d "../../../../$STABLE" ] || sortida_po
  [ -d "../../../../$TRUNK"  ] || sortida_po
}

command_cm() {
  local package
  local PACKAGE

  while IFS= read -r -d '' package
    do
      PACKAGE="${package##*/}"

      echo -e " \e[38;5;46m* $PACKAGE\e[0m"
      "$ORDRE" "$PACKAGE"
    done < <(find "$ROOT_SCRIPT/ca-mod/$MESSAGES/" -maxdepth 1 -mindepth 1 -type d -print0 | sort -z)
}

command_rm() { rm -f "$MEM_DIR/kde-src2valencia.sed"; }

sed_files() {
  cd "$MEM_DIR" || exit 1

  if [ ! -f "kde-src2valencia.sed" ]; then
    cp  "$DIRTR/kde-src2valencia_a.sed"         "kde-src2valencia.sed"
    cat "$DIRTR/kde-src2valencia_b.sed"      >> "kde-src2valencia.sed"
    cat "$DIRTR/kde-src2valencia-esmena.sed" >> "kde-src2valencia.sed"
    cp  "$DIRTR/all-src2valencia-adapta.sed"    "all-src2valencia.sed"
    cat "$DIRTR/all-src2valencia.sed"        >> "all-src2valencia.sed"
    cat "$DIRTR/all-src2valencia-esmena.sed" >> "all-src2valencia.sed"

    # Performance: Limit CPU usage for sed background tasks
    if ! pgrep -x "cpulimit" >/dev/null 2>&1; then
      cpulimit --background --quiet --path="$(which sed)" --limit='75' &>/dev/null || true
    fi
  fi
}

adapta_ho() {
  if [ -e "$DIRTEM/${PO2}t" ]; then
      cd "$MEM_DIR" || exit 1
      sed_files

      echo -e "   \e[38;5;44m· ($1)\e[0m $PO2"
      # Fem que les frases/paràgrafs siguin d'una sola línia:
      msgmerge --silent --previous --no-wrap "$CA_MOD" "$DIRTEM/${PO2}t" --output-file="missatges-$PO2"

      # Executem la conversió del fitxer PO
      sed -f /kde-src2valencia.sed < "missatges-$PO2"   > "missatges_1-$PO2" && rm -f "missatges-$PO2"
      sed -f /all-src2valencia.sed < "missatges_1-$PO2" > "missatges_2-$PO2" && rm -f "missatges_1-$PO2"

      mkdir -p "$DIRDES"
      # Es torna a donar el format amb 78 files
      msgmerge --silent --previous --width='79' --lang="$SOURCE_0" "missatges_2-$PO2" "$DIRTEM/${PO2}t" --output-file="$PO2" && \
      mv -f "$PO2" "$DIRDES/$PO2" && rm -f "missatges_2-$PO2"

      cd "$ROOT_SCRIPT" || exit 1
    else
      echo -e "   \e[38;5;44m· ($1)\e[0m $PO2 \033[47;31m- Segurament aquesta documentació s'ha mogut o eliminat\e[0m"
  fi
}

copia_valencia() {
  [ -z "${2:-}" ] && FOLDER='gui'
  DIRMOD="$ROOT_SCRIPT/ca-mod/$MESSAGES/$1"
  DIRSRC="$ROOT_SCRIPT/Carpeta_nova/$1/$FOLDER"
  DIROBJ="$ROOT_SCRIPT/ca/$MESSAGES/$1"

  processa_bloc() {
    local DIRMOD="$1"
    local ETIQUETA="$2"

    if [ -d "$DIRMOD" ]; then
      while IFS= read -r -d '' po
        do
          PO2="${po##*/}"
          CA_MOD="$DIRMOD/$PO2"
          adapta_ho "$ETIQUETA"
        done < <(find "$DIRMOD/" -maxdepth 1 -type f -name "*.po" -print0 | sort -z)
    fi
  }

  # KF5 - Trunk
  DIRDES="$ROOT_SCRIPT/kf5-trunk/$SOURCE_0/$MESSAGES/$1"
  DIRTEM="$ROOT_TREE/$TRUNK/templates/$MESSAGES/$1"
  processa_bloc "$DIRMOD" "kf5-trunk"

  # KF5 - Stable
  DIRDES="$ROOT_SCRIPT/kf5-stable/$SOURCE_0/$MESSAGES/$1"
  DIRTEM="$ROOT_TREE/$STABLE/templates/$MESSAGES/$1"
  processa_bloc "$DIRMOD/stable" "kf5-stable"

  # KF6 - Stable (transcició)
  DIRDES="$ROOT_SCRIPT/kf6-stable/$SOURCE_0/$MESSAGES/$1"
  DIRTEM="$ROOT_TREE/$STABLE6/templates/$MESSAGES/$1"
  processa_bloc "$DIRMOD/stable6" "kf6-stable"

  # KF5 - Trunk
  DIRDES="$ROOT_SCRIPT/kf6-trunk/$SOURCE_0/$MESSAGES/$1"
  DIRTEM="$ROOT_TREE/$TRUNK6/templates/$MESSAGES/$1"
  processa_bloc "$DIRMOD/kf6" "kf6-trunk"
}

crea_missatges() {
  local BRANCA="$1"

  [ -f "$ROOT_TREE/$BRANCA/$DIRTEM/${PO2}t" ] || return
  msgmerge --silent --previous --width='79' --lang='ca' "$CA_MOD" "$ROOT_TREE/$BRANCA/$DIRTEM/${PO2}t" --output-file="$ROOT_TREE/$BRANCA/$DIROBJ/$PO2"
  posieve  remove-obsolete "$ROOT_TREE/$BRANCA/$DIROBJ/$PO2"
  msgfmt   --statistics    "$ROOT_TREE/$BRANCA/$DIROBJ/$PO2"
}

crea_po_mod() {
  DIRMOD="ca-mod/$MESSAGES/$1"
  DIROBJ="ca/$MESSAGES/$1"
  DIRTEM="templates/$MESSAGES/$1"

  while IFS= read -r -d '' po
    do
      PO2="${po##*/}"

      if [ -f "$ROOT_TREE/$TRUNK/$DIROBJ/$PO2" ]; then
        CA_MOD="$DIRMOD/$PO2"
        mkdir -p "$DIROBJ"
        echo -e "   \e[38;5;44m-- (KF5 trunk) <-\e[0m $PO2"
        crea_missatges "$TRUNK"
      fi

      if [ -f "$ROOT_TREE/$STABLE/$DIROBJ/$PO2"  ] && [ -d "$DIRMOD/stable" ]; then
        CA_MOD="$DIRMOD/stable/$PO2"
        mkdir -p "$DIROBJ"
        echo -e "   \e[38;5;44m-- (KF5 stable) <-\e[0m $PO2"
        crea_missatges "$STABLE"
      fi

      if [ -f "$ROOT_TREE/$TRUNK6/$DIROBJ/$PO2"  ] && [ -d "$DIRMOD/kf6" ]; then
        CA_MOD="$DIRMOD/kf6/$PO2"
        mkdir -p "$DIROBJ"
        echo -e "   \e[38;5;44m-- (KF6 trunk) <-\e[0m $PO2"
        crea_missatges "$TRUNK6"
      fi

      if [ -f "$ROOT_TREE/$STABLE6/$DIROBJ/$PO2" ] && [ -d "$DIRMOD/stable6" ]; then
        CA_MOD="$DIRMOD/stable6/$PO2"
        mkdir -p "$DIROBJ"
        echo -e "   \e[38;5;44m-- (KF6 stable) <-\e[0m $PO2"
        crea_missatges "$STABLE6"
      fi
    done < <(find "$ROOT_SCRIPT/$DIRMOD/" -maxdepth 1 -type f -name "*.po" -print0 | sort -z)
}

neteja_ca() {
  DIROBJ="ca/$MESSAGES/$1"
  DIRMOD="ca-mod/$MESSAGES/$1"
  DIRTEM="templates/$MESSAGES/$1"

  mkdir -p "$DIRTEM"
  while IFS= read -r -d '' po
    do
      PO2="${po##*/}"

      if [ -e  "$ROOT_TREE/$TRUNK/$DIROBJ/$PO2" ]; then
        echo -e "   \e[38;5;44m· KF5 ->\e[0m $DIRMOD/$PO2"
        [ "$MESSAGES" = "messages" ] && cp -f "$ROOT_TREE/$TRUNK/$DIROBJ/$PO2" "$ROOT_SCRIPT/$DIROBJ/$PO2"
        mv -f  "$ROOT_TREE/$TRUNK/$DIROBJ/$PO2"      "$ROOT_SCRIPT/$DIRMOD/$PO2"
        cp -f  "$ROOT_TREE/$TRUNK/$DIRTEM/${PO2}t"   "$ROOT_SCRIPT/$DIRTEM/${PO2}t"
      fi

      if [ -e  "$ROOT_TREE/$STABLE/$DIROBJ/$PO2" ]; then
        mkdir -p "$DIRMOD/stable"
        echo -e "   \e[38;5;44m· KF5 ->\e[0m $DIRMOD/\e[38;5;44mstable/\e[0m$PO2"
        mv -f  "$ROOT_TREE/$STABLE/$DIROBJ/$PO2"     "$ROOT_SCRIPT/$DIRMOD/stable/$PO2"
      fi

      if [ -e  "$ROOT_TREE/$TRUNK6/$DIROBJ/$PO2" ]; then
        mkdir -p "$DIRMOD/kf6"
        echo -e "   \e[38;5;44m· KF6 ->\e[0m $DIRMOD/\e[38;5;44mktrunk/\e[0m$PO2"
        [ "$MESSAGES" = "messages" ] && cp -f "$ROOT_TREE/$TRUNK6/$DIROBJ/$PO2" "$ROOT_SCRIPT/$DIROBJ/$PO2"
        mv -f  "$ROOT_TREE/$TRUNK6/$DIROBJ/$PO2"     "$ROOT_SCRIPT/$DIRMOD/kf6/$PO2"
        cp -f  "$ROOT_TREE/$TRUNK6/$DIRTEM/${PO2}t"  "$ROOT_SCRIPT/$DIRTEM/${PO2}t"
      fi

      if [ -e  "$ROOT_TREE/$STABLE6/$DIROBJ/$PO2" ]; then
        mkdir -p "$DIRMOD/stable6"
        echo -e "   \e[38;5;44m· KF6 ->\e[0m $DIRMOD/\e[38;5;44mstable6/\e[0m$PO2"
        mv -f  "$ROOT_TREE/$STABLE6/$DIROBJ/$PO2"    "$ROOT_SCRIPT/$DIRMOD/stable6/$PO2"
      fi
    done < <(find "$ROOT_SCRIPT/$DIRMOD/" -maxdepth 1 -type f -name "*.po" -print0 | sort -z)
}

per_carpeta(){
  local ACTIVAT='0'

  while IFS= read -r -d '' carpeta
    do
      DIR="${carpeta##*/}"
      [ "$DIR" = "${MODUL:-}" ] && ACTIVAT=1
      [ "$ACTIVAT" -eq 1 ] && prompt_1
    done < <(find "$SOURCE/messages/" -maxdepth 1 -type d -print0 | sort -z)
}

prompt_1() {
  echo -e "\e[38;5;46m * $DIR -\e[0m \e[38;1;33m $MSG:  $TEXT \e[0m\n"
  [ -n "${1-}" ] && echo -e "\033[1;37m $MISSATGE \e[0m\n"
  read -r -p "Voleu procedir? (Sí/no) " sn
  case "${sn,,}" in
    no|n)
      echo " - Se surt…"
      exit 1
    ;;
    *)
      if   [ -n "${TEXT2-}" ]; then
          posieve find-messages -s fexpr:"msgstr/$TEXT1/ and not msgstr/$TEXT2/ and not msgstr/$APPEND_B/" "$SOURCE/${DOC}messages/$DIR"
      elif [ -n "${TEXT3-}" ]; then
          echo -e "\n\n - Doc:\n   ****"
          [ -d "$SOURCE/docmessages/$DIR" ] && \
          posieve find-messages -s fexpr:"msgstr/$TEXT1/ and not msgstr/$TEXT2/ and not msgstr/$APPEND_B/" "$SOURCE/docmessages/$DIR"
          echo -e "\n\n - IGU:\n   ****"
          posieve find-messages -s fexpr:"msgstr/$TEXT1/ and not msgstr/$TEXT2/ and not msgstr/$APPEND_B/" "$SOURCE/messages/$DIR"
        else
          posieve find-messages -s$MSG:"${TEXT1-}" "$SOURCE/${DOC-}messages/$DIR"
      fi
      TEXT2=
      TEXT3=
      echo
    ;;
  esac
}

cerca_dira() {
    { [ -z "${1-}" ] || [[ ! "${1-}" =~ ^(ca|va)$ ]]; } && sortida_po || true
    [ -z "${2-}" ] && sortida_po || true
    [ -z "${3-}" ] && sortida_po || true
    TEXT="$2"
    MODUL="$3"
    SOURCE="$SOURCE_0"
    [ "$1" = 'ca' ] && SOURCE='ca'
}

cerca_and_not() {
  local ACTIVAT=0

  while IFS= read -r -d '' carpeta
    do
      DIR="${carpeta##*/}"
      [ "$DIR" = "${MODUL-}" ] && ACTIVAT='1'

      if [ "$ACTIVAT" -eq 1 ]; then
          if [ -d "$SOURCE/docmessages/$DIR" ]; then
            echo -e "\n\n - Doc: $DIR\n   ****"
            posieve find-messages -s fexpr:"$STRING" "$SOURCE/docmessages/$DIR"
          fi
          echo -e "\n\n - IGU: $DIR\n   ****"
          posieve find-messages -s fexpr:"$STRING" "$SOURCE/messages/$DIR"
      fi
    done < <(find "$SOURCE/messages/" -maxdepth 1 -type d -print0 | sort -z)
}

pregunta() {
  echo -e "\033[1;37m* Ara es requereix una acció:\e[0m $MISSATGE_DIFF"
  read -r -p "Voleu procedir? (Sí/no) " sn
  case "${sn,,}" in
    no|n)
      echo "Se surt…"
      exit 0
	;;
    *)
      echo "Es procedeix…"
    ;;
  esac
}

case ${1-} in
  troba_po)
    [ -z "${2-}" ] && sortida_po || true
    find "$SOURCE_0/messages/"* -type f -name "$2"
  ;;
  crea_po_linia)
    comprova_lloc
    if [ -z "${2-}" ] || [ -z "${3-}" ]; then
      sortida_po
    fi

    FILE="$2"
    PHRASE="$3"

    cerca_linia() {
      PO="${carpeta##*/}"
      DIR="${FILE%/*}"

      echo -e "\033[1;37m# $BRANCH:\e[0m $DIR \033[1;37m-\e[0m $PO"
      msgmerge --silent --previous --no-wrap "ca/messages/$DIR/$PO" "templates/messages/$DIR/${PO}t" --output-file="missatges-$PO"
      grep --color=auto --ignore-case --line-number "$PHRASE" "missatges-$PO"
      rm -f "missatges-$PO"
    }

    BRANCH='Repositori local'
    cerca_linia

    BRANCH='Repositori l10n-kf5 de trunk'
    cd ../../
    [ -r "ca/messages/$FILE" ] && cerca_linia

    BRANCH='Repositori l10n-kf5 de stable'
    cd ../../stable/l10n-kf5/ || exit 1
    [ -r "ca/messages/$FILE" ] && cerca_linia

    BRANCH='Repositori l10n-kf6 de trunk'
    cd ../../trunk/l10n-kf6/  || exit 1
    [ -r "ca/messages/$FILE" ] && cerca_linia

    BRANCH='Repositori l10n-kf6 de stable'
    cd ../../stable/l10n-kf6/ || exit 1
    [ -r "ca/messages/$FILE" ] && cerca_linia
  ;;
  po_nou)
    [ -z "${2-}" ] && sortida_po || true
    TEXT="$2"
    SOURCE='ca@valencia'
    DIR="$2"
    DOC="${3-}"
    MISSATGE1="Canvi possible:"
    TEXT2=""
    TEXT3=""

# valencià
    TEXT="[\e[33;5;46m?\e[0m\e[38;1;33m]( |$)"
    TEXT1="[?]( |$)"
    MISSATGE="$MISSATGE1 ** Voleu …? **"
    prompt_1
    TEXT="[\e[33;5;46m!\e[0m\e[38;1;33m]( |$)"
    TEXT1="[!]( |$)"
    MISSATGE="$MISSATGE1 ** _esborrar el signe d'exclamació?_ **"
    prompt_1
    TEXT="\e[33;5;46m, que \e[0m"
    TEXT1=", que "
    MISSATGE="$MISSATGE1 ** , el qual **"
    prompt_1
    WORD='1,'
    CATALAN_RULE="a-zA-Z0-9-·'ÀàÉéÈèÍíÏïÓóÒòÚúÜüÇç"
    TEXT="\\\b\e[33;5;46ma l'\e[0m\e[38;1;33m[$CATALAN_RULE]{$WORD}"
    TEXT1="($APPEND|)\ba ($APPEND|)l'($APPEND|)[$CATALAN_RULE]{$WORD}"
    TEXT2="\b($APPEND_0) ($APPEND|)a ($APPEND|)l'($APPEND|)[$CATALAN_RULE]{$WORD}"
    APPEND_B="($APPEND|)\ba ($APPEND|)l'($APPEND|)($APPEND_A_L)"
    MISSATGE="$MISSATGE1 ** amb / en l' **"
    prompt_1
    TEXT="\\\b\e[33;5;46ma (d'|del? |)\e[0m\e[38;1;33m\w{2,}[$CATALAN_RULE]{$WORD}"
    TEXT1="($APPEND|)\ba (d'|del? |)($APPEND|)\w{2}[$CATALAN_RULE]{$WORD}"
    TEXT2="\b($APPEND_0) ($APPEND|)a (d'|del? |)($APPEND|)\w{2}[$CATALAN_RULE]{$WORD}"
    APPEND_B="($APPEND|)\ba (d'|del? |)($APPEND|)($APPEND_A)"
    MISSATGE="$MISSATGE1 ** a inserir -> que cal inserir / que s'ha d'inserir / que s'inserirà **"
    prompt_1
    TEXT="\\\b\e[33;5;46ma la (d'|del?s? |)\e[0m\e[38;1;33m[$CATALAN_RULE]{$WORD}"
    TEXT1="($APPEND|)\ba ($APPEND|)la (d'|del?s? |)($APPEND|)[$CATALAN_RULE]{$WORD}"
    TEXT2="\b($APPEND_0) ($APPEND|)a ($APPEND|)la (d'|del?s? |)($APPEND|)[$CATALAN_RULE]{$WORD}"
    APPEND_B="($APPEND|)\ba ($APPEND|)la (d'|del?s? |)($APPEND|)($APPEND_A_LA)"
    MISSATGE="$MISSATGE1 ** amb / en la **"
    prompt_1
    TEXT="\\\b\e[33;5;46ma les (d'|del?s? |)\e[0m\e[38;1;33m[$CATALAN_RULE]{$WORD}"
    TEXT1="($APPEND|)\ba ($APPEND|)les (d'|del?s? |)($APPEND|)[$CATALAN_RULE]{$WORD}"
    TEXT2="\b($APPEND_0) ($APPEND|)a ($APPEND|)les (d'|del?s? |)($APPEND|)[$CATALAN_RULE]{$WORD}"
    APPEND_B="($APPEND|)\ba ($APPEND|)les (d'|del?s? |)($APPEND|)($APPEND_A_LES)"
    MISSATGE="$MISSATGE1 ** amb / en les **"
    prompt_1
    TEXT="\\\b\e[33;5;46mals? (d'|del?s? |)\e[0m\e[38;1;33m[$CATALAN_RULE]{$WORD}"
    TEXT1="($APPEND|)\bals? (d'|del?s? |)($APPEND|)[$CATALAN_RULE]{$WORD}"
    TEXT2="\b($APPEND_0) ($APPEND|)als? (d'|del?s? |)($APPEND|)[$CATALAN_RULE]{$WORD}"
    APPEND_B="($APPEND|)\bals? (d'|del?s? |)($APPEND|)($APPEND_ALS)"
    MISSATGE="$MISSATGE1 ** amb / en els? **"
    prompt_1
    APPEND_B=""
    TEXT="\\\b\e[33;5;46ma on \e[0m\e[38;1;33m[$CATALAN_RULE]{$WORD}"
    TEXT1=" a on ($APPEND|)[$CATALAN_RULE]{$WORD}"
    TEXT2="\b($APPEND_0) a on ($APPEND|)[$CATALAN_RULE]{$WORD}"
    MISSATGE="$MISSATGE1 ** a on cal / s'ha(n) **"
    prompt_1
    TEXT="\\\b\e[33;5;46ma un \e[0m\e[38;1;33m[$CATALAN_RULE]{$WORD}"
    TEXT1=" a un ($APPEND|)[$CATALAN_RULE]{$WORD}"
    TEXT2="\b($APPEND_0) a un ($APPEND|)[$CATALAN_RULE]{$WORD}"
    MISSATGE="$MISSATGE1 ** amb / en un **"
    prompt_1
    TEXT="\\\b\e[33;5;46m(activ|desactiv|habilit|inhabilit|marc|marqu)[aei]s?.\e[0m\b"
    TEXT1="\b(activ|desactiv|habilit|inhabilit|marc|marqu)[aei]s?\b"
    MISSATGE="$MISSATGE1 ** Quan se selecciona aquesta opció, / Quan no està seleccionada, / Si se selecciona, / Si no se selecciona, **"
    prompt_1
    TEXT="\\\b\e[33;5;46mcàrreg(a|ues).\e[0m\b"
    TEXT1="\bcàrreg(a|ues)\b"
    MISSATGE="$MISSATGE1 ** carrega(ues) **"
    prompt_1
    TEXT="\\\b\e[33;5;46mdest(í|inació|inacions|ins).\e[0m\b"
    TEXT1="\bdest(í|inació|inacions|ins)\b"
    MISSATGE="$MISSATGE1 ** destinació / destí **"
    prompt_1
    TEXT="\\\e[33;5;46m^Error.\e[0m\b"
    TEXT1="^Error\b"
    MISSATGE="$MISSATGE1 ** S'ha produït un error **"
    prompt_1
    TEXT="\\\b\e[33;5;46mextr(a|es).\e[0m\b"
    TEXT1="\bextr(a|es)\b"
    MISSATGE="$MISSATGE1 ** addicional(s) **"
    prompt_1
    TEXT="\\\b\e[33;5;46mgraell(a|es).\e[0m\b"
    TEXT1="\bgraell(a|es)\b"
    MISSATGE="$MISSATGE1 ** quadrícula(es) **"
    prompt_1
    TEXT="\\\b\e[33;5;46mHa fallat.\e[0m\b"
    TEXT1="\bHa fallat\b"
    MISSATGE="$MISSATGE1 ** No s'ha(n) pogut **"
    prompt_1
    TEXT="\\\b\e[33;5;46mper defecte.\e[0m\b"
    TEXT1="\bper defecte\b"
    MISSATGE="$MISSATGE1 ** predeterminat(da), de manera predeterminada **"
    prompt_1
    TEXT="\\\b\e[33;5;46mPer favor.\e[0m\b"
    TEXT1="\bPer favor\b"
    MISSATGE="$MISSATGE1 ** _esborrar-ho?_ **"
    prompt_1
    TEXT="\\\b\e[33;5;46msimple(ment)?.\e[0m\b"
    TEXT1="\bsimple(ment)?\b"
    MISSATGE="$MISSATGE1 ** senzill(ament) **"
    prompt_1
# anglès
    MSG="msgid"
    TEXT="\\\b\e[33;5;46mas \e[0m"
    TEXT1="\bas "
    MISSATGE="$MISSATGE1 ** anomena i guarda **"
    prompt_1
    TEXT="\\\b\e[33;5;46min(\s)?to \e[0m"
    TEXT1="\bin(\s)?to "
    MISSATGE="$MISSATGE1 ** a dins, en **"
    prompt_1
    TEXT="\\\b\e[33;5;46mmultiples?\e[0m\b"
    TEXT1="\bmultiples?\b"
    MISSATGE="$MISSATGE1 ** múltiple(s) **"
    prompt_1
    TEXT="\\\b\e[33;5;46mon(\s)?to \e[0m"
    TEXT1="\bon(\s)?to "
    MISSATGE="$MISSATGE1 ** «és molt variable»: a sobre, **"
    prompt_1
    TEXT="\\\b\e[33;5;46munder \e[0m"
    TEXT1="\bunder "
    MISSATGE="$MISSATGE1 ** a sota, d'acord amb **"
    prompt_1
    TEXT="\\\b\e[33;5;46mwithin \e[0m"
    TEXT1="\bwithin "
    MISSATGE="$MISSATGE1 ** dins de **"
    prompt_1
  ;;
  cerca_dir)
    { [ -z "${2-}" ] || [[ ! "${2-}" =~ ^(ca|va|en)$ ]]; } && sortida_po || true
    [ -z "${3-}" ] && sortida_po || true
    [ -z "${4-}" ] && sortida_po || true
    TEXT="$3"
    SOURCE="$SOURCE_0"

    if   [ "$2" = 'ca' ]; then
        SOURCE='ca'
    elif [ "$2" = 'en' ]; then
        [ -n "${6-}" ] && SOURCE='ca'
        MSG='msgid'
    fi

    [ -n "${5-}" ] && DOC='doc'
    posieve find-messages -s"$MSG":"$TEXT" "$SOURCE/${DOC-}messages/$4"
  ;;
  cerca_all_dir)
    [ -z "${2-}" ] && sortida_po || true
    [ -z "${3-}" ] && sortida_po || true
    [ -z "${4-}" ] || NUM="1" || true
    TEXT="$3"; TEXT1="$3"
    SOURCE="$SOURCE_0"

    if   [ "$2" = 'ca' ]; then
        SOURCE='ca'
    elif [ "$2" = 'en' ]; then
        MSG='msgid'
    fi

    MODUL="${4-}"
    per_carpeta
  ;;
  cerca_dir_a)
    cerca_dira "${2-}" "${3-}" "${4-}"
    STRING="msgstr/\b($APPEND|)a (d'|del? |)($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) a (d'|del? |)($APPEND|)$TEXT/"
    cerca_and_not
  ;;
  cerca_dir_a_l)
    cerca_dira "${2-}" "${3-}" "${4-}"
    STRING="msgstr/\b($APPEND|)a ($APPEND|)l'($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) a ($APPEND|)l'($APPEND|)$TEXT/"
    cerca_and_not
  ;;
  cerca_dir_ala)
    cerca_dira "${2-}" "${3-}" "${4-}"
    STRING="msgstr/\b($APPEND|)a ($APPEND|)la (d'|del?s? |)($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) a ($APPEND|)la (d'|del?s? |)($APPEND|)$TEXT/"
    cerca_and_not
  ;;
  cerca_dir_ales)
    cerca_dira "${2-}" "${3-}" "${4-}"
    STRING="msgstr/\b($APPEND|)a ($APPEND|)les (d'|del?s? |)($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) a ($APPEND|)les (d'|del?s? |)($APPEND|)$TEXT/"
    cerca_and_not
  ;;
  cerca_dir_al)
    cerca_dira "${2-}" "${3-}" "${4-}"
    STRING="msgstr/\b($APPEND|)al (d'|del?s? |)($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) al (d'|del?s? |)($APPEND|)$TEXT/"
    cerca_and_not
  ;;
  cerca_dir_als)
    cerca_dira "${2-}" "${3-}" "${4-}"
    STRING="msgstr/\b($APPEND|)als (d'|del?s? |)($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) als (d'|del?s? |)($APPEND|)$TEXT/"
    cerca_and_not
  ;;
  cerca_dir_auns)
    cerca_dira "${2-}" "${3-}" "${4-}"
    STRING="msgstr/\b($APPEND|)a ($APPEND|)un([as]|es)? ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) a ($APPEND|)un([as]|es)? ($APPEND|)$TEXT/"
    cerca_and_not
  ;;
  cerca_dir_ab)
    [ -z "${2-}" ] && sortida_po || true
    NUM="1"
    TEXT="\w{6,15}"
    TEXT3='1'
    SOURCE="$SOURCE_0"

    if   [ "$2" = 'ca' ]; then
        SOURCE='ca'
    elif [ "$2" = 'en' ]; then
        MSG='msgid'
    fi

    MODUL="$2"
    per_carpeta
  ;;
  cerca)
    [ -z "${2-}" ] && sortida_po || true
    CADENA=(
    akonadi akregator alk alli am an ap ar at au b cal can ce ch cl co cu day di do dr e f g h ik inc index-fm iso it j k3b ka kb kc kda kdb kde-c kde-d kde-g kde-i kde-n kdeb kdec kded kdeg kdel kden kdep kdes kdev kdf kdi kdn kdo ke kf kg kh ki kj kl km kn ko kp kr ks kt ku kw kx l m n o p q r s tel to tr u v w x y z
    )

    for cadena in "${CADENA[@]}"
      do
        echo -e "\e[38;5;46m * $cadena/* -\e[0m \e[38;1;33m $TEXT \e[0m"
        read -r -p "Voleu procedir? (Sí/no) " sn
        case "${sn,,}" in
          no|n)
            echo " - Se surt…"
            exit 1
          ;;
          *)
            rm -f "messages.mo"
            rm -f "missatges*.po" 2>/dev/null || true
            posieve find-messages -smsgstr:"$TEXT" "$SOURCE_0/messages/$cadena"*
          ;;
        esac
      done
  ;;
  cerca_titols)
    comprova_lloc
    posieve find-messages -smsgctxt:"@title" "$SOURCE_0/messages/$2"
  ;;
  cerca_titols_dir)
    [ -z "${2-}" ] && sortida_po || true
    comprova_lloc
    [ -z "${2-}" ] && NUM="1" || true
    MODUL="$2"
    MSG='msgctxt'
    SOURCE="$SOURCE_0"
    TEXT="@title"
    TEXT1="$TEXT"
    per_carpeta
  ;;
  comprova_titols)
    comprova_lloc
    SOURCE="$SOURCE_0"
    comprova_titol() {
      echo -e "\n - Ha de posar: «$3»\n"
      posieve find-messages -smsgid:"$2" "$SOURCE/${5}messages/$1/"
    }

    comprova_titol gcompris "kite"                              "catxerulo"
    comprova_titol kstars   "^Settings"                         "Configureu"
    comprova_titol kstars   "^Find Object"                      "Busqueu un objecte"
    comprova_titol kstars   "^Set Time"                         "Establiu la data i l'hora"
    comprova_titol kstars   "^Set Coordinates Manually"         "Establiu manualment les coordenades"
    comprova_titol kstars   "^Export"                           "Exporteu"
    comprova_titol kstars   "^Print Sky Calendar$"              "Imprimiu el calendari del cel"
  ;;
  modifica_capçalera)
    [ -f "$2" ] || sortida_po
    FILE="$2"
    posieve set-header -sfield:"PO-Revision-Date:$(date +%Y-%m-%d) $(date +%H:%M%z)"   "$FILE"
    posieve set-header -sfield:"Last-Translator:Antoni Bella <antonibella5@yahoo.com>" "$FILE"
    posieve set-header -sfield:"X-Generator:Kate $(kate --version | cut -f 2 -d' ')"   "$FILE"
  ;;
  adapta)
    comprova_lloc
    command_rm
    ./adapta-kde_recursivament.sh recursiu
  ;;
  adapta_doc)
    comprova_lloc
    command_rm
    MESSAGES='docmessages'
    ORDRE='copia_valencia'
    command_cm
    echo -e "\n\e[38;5;44m# stable_kf5 / stable_lts_kf5 / trunk_kf5 / trunk_kf6\e[0m"
    echo -e "\e[38;5;44mSCRIPTY_I18N_BRANCH='trunk_kf5' l10n-scripty/update_xml $SOURCE_0 [app]\e[0m"
  ;;
  adapta_dir)
    [ -z "${2-}" ] && sortida_po || true
    command_rm
    for po in $(find "ca/messages/$2/"* -type f -name "*.po" | LC_ALL=C sort)
      do
        PO2="${po##*/}"
        DIR="$(dirname  "$po" | sed -e s,ca/,,)"
        ./adapta-kde_recursivament.sh fitxer "$DIR/$PO2"
      done
  ;;
  adapta_dir_va)
    [ -z "${2-}" ] && sortida_po || true
    command_rm
    for po in $(find "ca@valencia/messages/$2/"* -type f -name "*.po" | LC_ALL=C sort)
      do
        PO2="${po##*/}"
        DIR="$(dirname  "$po" | sed -e s,ca@valencia/,,)"
        ./adapta-kde_recursivament.sh fitxer "$DIR/$PO2"
      done
  ;;
  adapta_mod)
    command_rm
    for po in $(find "ca-mod/messages/"* -maxdepth 1 -type f -name "*.po" | LC_ALL=C sort)
      do
        PO2="${po##*/}"
        DIR="$(dirname  "$po" | sed -e s,ca-mod/,,)"
        ./adapta-kde_recursivament.sh fitxer "$DIR/$PO2"
      done
  ;;
  adapta_valencia)
    comprova_lloc
    command_rm
    adapta_val() {
      cd "$ROOT_TREE/$STABLE"  || exit 1
      ./adapta-kde_recursivament.sh "$1"

      # cd "../l10n-kf6-plasma-lts" || exit 1
      # ./adapta-kde_recursivament.sh "$1"

      cd "$ROOT_TREE/$TRUNK"   || exit 1
      ./adapta-kde_recursivament.sh "$1"

      cd "$ROOT_TREE/$STABLE6" || exit 1
      ./adapta-kde_recursivament.sh "$1"

      cd "$ROOT_TREE/$TRUNK6"  || exit 1
      ./adapta-kde_recursivament.sh "$1"
    }

    case "$2" in
      usuari)
        adapta_val usuari
      ;;
      recursiu)
        adapta_val recursiu
      ;;
      *)
        sortida_po
      ;;
    esac
  ;;
  crea_po)
    comprova_lloc
    [ -z "${2-}" ] && sortida_po || true
    ORDRE='crea_po_mod'
    case $2 in
      gui)
        MESSAGES='messages'
        FOLDER='gui'
        command_cm
      ;;
      doc)
        MESSAGES='docmessages'
        FOLDER='doc'
        command_cm
      ;;
      *)
        sortida_po
      ;;
    esac
  ;;
  neteja_ca)
    comprova_lloc
    [ -z "${2-}" ] && sortida_po || true
    ORDRE='neteja_ca'
    case $2 in
      gui)
        MESSAGES='messages'
        command_cm
      ;;
      doc)
        MESSAGES='docmessages'
        command_cm
      ;;
      *)
        sortida_po
      ;;
    esac
    echo -e "\n * S'està actualitzant KF5 «stable»:"
    cd "$ROOT_TREE/$STABLE/ca/"  && svn update
    echo -e "\n * S'està actualitzant KF5 «trunk»:"
    cd "$ROOT_TREE/$TRUNK/ca/"   && svn update
    echo -e "\n * S'està actualitzant KF6 «stable»:"
    cd "$ROOT_TREE/$STABLE6/ca/" && svn update
    echo -e "\n * S'està actualitzant KF6 «trunk»:"
    cd "$ROOT_TREE/$TRUNK6/ca/"  && svn update
  ;;
  actualitza_svn_local)
    comprova_lloc
    elimina_carpetes() {
      local base_dir="${1-}"
      rm -Rf "$base_dir/documentation-develop-kde-org"
      rm -Rf "$base_dir/documentation-docs-kdenlive-org"
      rm -Rf "$base_dir/documentation-docs-krita-org"
      rm -Rf "$base_dir/websites-docs-glaxnimate-org"
      rm -Rf "$base_dir/websites-glaxnimate-org"
      rm -f  "$base_dir/websites-kde-org/release_announcements.po"
      rm -f  "$base_dir/websites-kde-org/www_www.po"
      rm -Rf "$base_dir/websites-kdenlive-org"
      rm -Rf "$base_dir/websites-kdevelop-org"
      rm -Rf "$base_dir/websites-planet-kde-org"
    }

    echo -e "\033[1;37m* Es netegen les carpetes que s'actualitzaran.\e[0m"
    rm -Rf "ca/"*
    rm -Rf "ca@valencia/"*
    rm -Rf "templates/"*

    echo -e "\033[1;37m* Es copien les branques següents:\e[0m"
    for obj in ca templates
      do
        echo "  - kf5 stable $obj"
        mkdir -p "$obj/messages/"
        cp -fr "../../../../stable/l10n-kf5/$obj/messages/"* "$obj/messages/"
      done; echo

    for obj in ca templates
      do
        echo "  - kf5 $obj"
        mkdir -p "$obj/messages/"
        cp -fr "../../$obj/messages/"* "$obj/messages/"
        [ "$obj" = "templates" ] || elimina_carpetes "$obj/messages"
      done; echo

    for obj in ca templates
      do
        echo "  - kf6 $obj"
        mkdir -p "$obj/messages/"
        cp -fr "../../../l10n-kf6/$obj/messages/"* "$obj/messages/"
      done; echo

    echo -e "\033[1;37m* Es copien les traduccions des de «ca-mod/»:\e[0m"
    $0 crea_po gui
    $0 neteja_ca gui

    # ca: la documentació són enllaços
    mkdir -p "ca/docmessages/" "templates/docmessages/"
    cd ca/docmessages || exit 1
    echo -e "  \033[1;37m- kf6: enllaços cap a la documentació «ca»:\e[0m"
    for obj in $(find '../../ca-mod/docmessages/' -type d -name 'kf6' 2>/dev/null)
      do
        IFS='/' read -r -a parts <<< "$obj"
        MODULE="${parts[4]}"

        echo "$MODULE"
        ln -nfs "$obj" "$MODULE"
        cp -fr "../../../../../l10n-kf6/templates/docmessages/$MODULE" "../../templates/docmessages/$MODULE"
      done

    cd "$ROOT_SCRIPT" || exit 1
    mkdir -p "ca@valencia/docmessages/"
    cp "../../ca/docmessages/language" "ca/docmessages/language"
    cp "../../ca@valencia/docmessages/language" "ca@valencia/docmessages/language"

    # ca@valencia: la documentació són enllaços
    cd "ca@valencia/docmessages" || exit 1
    echo -e "  \033[1;37m- kf6: enllaços cap a la documentació «ca@valencia»:\e[0m"
    for obj in $(find '../../ca-mod/docmessages/' -type d -name 'kf6')
      do
        IFS='/' read -r -a parts <<< "$obj"
        MODULE="${parts[4]}"

        echo "$MODULE"
        ln -nfs "../../kf6-trunk/ca@valencia/docmessages/$MODULE" "$MODULE"
      done

    cd "$ROOT_SCRIPT" || exit 1
    echo -e "\033[1;37m* Es fa «posieve --quiet remove-obsolete ca/» per a netejar les traduccions:\e[0m"
    posieve --quiet remove-obsolete "ca/"

    echo -e "\n\033[47;31mNOTA:\e[0m \033[1;37mAra executeu «$0 adapta» per a aplicar els darrers canvis a «ca@valencia/».\e[0m"
  ;;
  copia_a_svn_local)
    comprova_lloc
    DKF5="../.."
    DKF6="../../../l10n-kf6"
    MFILE="$2"
    if   [ -f "$DKF5/ca/messages/$MFILE" ]; then
        cp -f "$DKF5/ca/messages/$MFILE" "ca/messages/$MFILE"
        cp -f "$DKF5/templates/messages/${MFILE}t" "templates/messages/${MFILE}t"
    elif [ -f "$DKF6/ca/messages/$MFILE" ]; then
        cp -f "$DKF6/ca/messages/$MFILE" "ca/messages/$MFILE"
        cp -f "$DKF6/templates/messages/${MFILE}t" "templates/messages/${MFILE}t"
      else
        sortida_po
    fi
    ./adapta-kde_recursivament.sh fitxer "messages/$MFILE"
  ;;
  copia_aquests)
    comprova_lloc
    [ -z "${2-}" ] && sortida_po || true

    if [[ -z "${2-}" || ! "$2" =~ ^[0-9[:space:]]*$ ]]; then
      sortida_po
    fi
    TARGETS="$2"

    commits_num(){
      cd "$SOURCE_0" || exit 1
      FITXERS="$(svn log --verbose -r "$1" | grep '\/ca@valencia\/messages\/' | sed 's/\(^.*\)Treball\/ca@valencia\/messages\// /g' | tr -d '\n')"
      cd ..
    }

    FITXERST=""
    read -r -a ARRAY <<< "$TARGETS"
    for arg in "${ARRAY[@]}"
      do
        commits_num "$arg"
        FITXERST="$FITXERST $FITXERS"
      done

    FITXERS="$(echo "$FITXERST" | sed 's/ /\n/g' | LC_ALL=C sort -u || true)"

    cd "$ROOT_TREE/$STABLE" || exit 1
    for file in $FITXERS
      do
        [ -f "ca/messages/$file" ] && ./adapta-kde_recursivament.sh fitxer "messages/$file"
      done

    cd "../../$TRUNK/" || exit 1
    for file in $FITXERS
      do
        [ -f "ca/messages/$file" ] && ./adapta-kde_recursivament.sh fitxer "messages/$file"
      done

    cd "../../$STABLE6/" || exit 1
    for file in $FITXERS
      do
        [ -f "ca/messages/$file" ] && ./adapta-kde_recursivament.sh fitxer "messages/$file"
      done

    cd "../../$TRUNK6/" || exit 1
    for file in $FITXERS
      do
        [ -f "ca/messages/$file" ] && ./adapta-kde_recursivament.sh fitxer "messages/$file"
      done
  ;;
  installa_va)
    comprova_lloc
    echo    "head ~/.config/plasma-localerc"
    echo    "[Formats]"
    echo -e "LANG=ca_ES.UTF-8\n"
    echo    "[Translations]"
    echo -e "LANGUAGE=ca@valencia:ca:en_US\n"

    DIR_MESSAGES="/usr/share/locale/ca@valencia/LC_MESSAGES"

    crea_mo() {
      sudo msgfmt -a 1 "$POFILE" -o "$DIR_MESSAGES/$FILE_NAME.mo"
      if   [[ "$DIR_M"     = @(ark|falkon|krita|kwalletmanager) ]]; then
        LINK="1"
      elif [[ "$FILE_NAME" = @(kcm_keyboard) ]]; then
        LINK="1"
      fi
    }

    comprova() {
      DIR="$1"
      POFILE_2="$(find "$DIR/"* -type f -name "$FILE_NAME.po")"
      [ "$POFILE_2" ] && POFILE="$POFILE_2"
      [ ! "$POFILE" ] && return
      DIR_M="$(basename "${POFILE%/*}")"
      if [[ "$POFILE" == *'stable'* ]]; then
          BRANCA='stable'
        else
          BRANCA='trunk '
      fi
      NUM="$(echo "$POFILE" | cut -f 8 -d'/' | sed 's/l10n-kf//')"
    }

    fes_mo() {
      comprova "$ROOT_TREE/trunk/l10n-kf6/ca@valencia/messages"  mo
      comprova "$ROOT_TREE/stable/l10n-kf6/ca@valencia/messages" mo
      comprova "$ROOT_TREE/trunk/l10n-kf5/ca@valencia/messages"  mo
      comprova "$ROOT_TREE/stable/l10n-kf5/ca@valencia/messages" mo
      if [ "$DIR_M" ]; then
        COLOR_B="33"
        if [[ "$BRANCA $NUM" = @(stable 5|trunk  5) ]]; then
            COLOR_B="95"
        fi
        FILE="$FILE_NAME.mo"
        echo -e "\e[1;${COLOR_B}m$BRANCA $NUM -\e[0m $DIR_MESSAGES/$FILE"
        crea_mo
        COLOR_B=""
      fi
    }

    fes_qm() {
      comprova "$ROOT_TREE/trunk/l10n-kf6/ca@valencia/messages"  qm
      comprova "$ROOT_TREE/stable/l10n-kf6/ca@valencia/messages" qm
      comprova "$ROOT_TREE/trunk/l10n-kf5/ca@valencia/messages"  qm
      comprova "$ROOT_TREE/stable/l10n-kf5/ca@valencia/messages" qm
      if [ "$DIR_M" ]; then
        FILE="$FILE_NAME.qm"
        echo -e "\e[1m$BRANCA $NUM -\e[0m $DIR_MESSAGES/$FILE"
        sudo /usr/lib/qt6/bin/lconvert -target-language "$SOURCE_0" -locations none "$POFILE" -o "$DIR_MESSAGES/$FILE"
      fi
    }

    for file in '/usr/share/locale/ca/LC_MESSAGES/'*
      do
        file="${file##*/}"
        LINK="0"
        DIR="$ROOT_TREE/trunk/l10n-kf6/ca@valencia/messages"
        FILE_NAME="${file%.*}"
        [ -f "/usr/share/locale/ca/LC_MESSAGES/$FILE_NAME.mo" ] && fes_mo
        if [ -f "/usr/share/locale/ca/LC_MESSAGES/$FILE_NAME.qm" ]; then
          fes_qm
          LINK="1"
        fi
        DIR_MESSAGES="/usr/share/locale/ca@valencia/LC_MESSAGES"
        if [ "$LINK" -eq 1 ]; then
          sudo ln -fs "/usr/share/locale/ca@valencia/LC_MESSAGES/$FILE" "/usr/share/locale/ca/LC_MESSAGES/$FILE"
          echo -e "\t\t\e[3m(Enllaçat amb /usr/share/locale/ca/LC_MESSAGES/$FILE)\e[0m"
        fi
        DIR_M=""
        NUM=""
        POFILE=""
      done

    # qt5 qt5keychain buho kid3 smplayer qt6 subsurface gcompris-qt sddm pavucontrol-qt kImageAnnotator
    if   [ -f "/usr/share/gcompris-qt/translations/gcompris_ca.qm" ];then
      DIR_MESSAGES="/usr/share/gcompris-qt/translations"
      FILE_NAME="gcompris_$SOURCE_0"
      fes_qm gcompris_qt "gcompris_$SOURCE_0"
    elif [ -f "/usr/share/buho/translations/buho_ca.qm" ];then
      DIR_MESSAGES="/usr/share/buho/translations"
      FILE_NAME="buho_$SOURCE_0"
      fes_qm buho "buho_$SOURCE_0"
    fi

    # Missing link
        # sudo ln -sf /usr/share/locale-langpack/ca/LC_MESSAGES/coreutils.mo /usr/share/locale/ca/LC_MESSAGES/coreutils.mo
    # LC_SCRIPTS
        # sudo mkdir -p /usr/share/locale/ca@valencia/LC_SCRIPTS/ki18n5/
        # sudo cp -f ca@valencia/scripts/ki18n/ki18n5/ki18n5.js /usr/share/locale/ca@valencia/LC_SCRIPTS/ki18n5/
    # Desktop
        # sudo cp -f ca@valencia/messages/kconfigwidgets/kf5_entry.desktop /usr/share/locale/ca@valencia/kf5_entry.desktop
  ;;
  sense_installar)
    DIR="$ROOT_TREE/$TRUNK/ca@valencia/messages"

    executa() {
      FILE_NAME="${file%.*}" # Elimina .mo o .qm
      POFILE="$(find "$DIR/" -type f -name "$FILE_NAME.po" -print -quit)"
      echo -e " \e[1;91m-* $file -> $POFILE\e[0m"
    }

    echo "** Se cerca el PO a «$TRUNK/ca@valencia/messages» **"
    for file in /usr/share/locale/ca/LC_MESSAGES/*
      do
        [ -f "/usr/share/locale/ca@valencia/LC_MESSAGES/$file" ] || executa
      done
  ;;
  revisa)
    [ -d "ca/messages/digikam-doc/" ] || exit 0
    echo -e "\n* digiKam:\n  _______\n"
    echo -e "\n - Regla: apps-multimedia.rules.disabled\n   *************************************\n\n"
    posieve check-rules -s rfile:"$HOME/Documents/Treball/svn/kde/pology/lang/ca/rules/apps-multimedia.rules.disabled" "ca/messages/digikam-doc/docs_digikam_org_$2"*
    echo -e "\n - Regla: esmenes.rules\n   ********************\n\n"
    posieve check-rules -s rfile:"Carpeta_nova/Treball/esmenes.rules" "ca/messages/digikam-doc/docs_digikam_org_$2"*
    echo -e "\n - Regla: TOTES\n   *************\n\n"
    posieve check-rules "ca/messages/digikam-doc/docs_digikam_org_$2"*
  ;;
  informa_diff)
    comprova_lloc
    case $3 in
      gui)
        MESSAGES='messages'
      ;;
      doc)
        MESSAGES='docmessages'
        echo "La documentació no admet aquesta característica"
        exit 0
      ;;
      *)
        sortida_po
      ;;
    esac

    DIRSRC="$ROOT_TREE/$TRUNK/ca/$MESSAGES"
    DIRMOD="$ROOT_SCRIPT/ca-mod/$MESSAGES"
    DIROBJ="$ROOT_SCRIPT/ca/$MESSAGES"

    FOLDERS_5="$(find "$DIRSRC/"* -type d -name "$2")"
    FOLDERS_6="$(find "$ROOT_TREE/$TRUNK6/ca/$MESSAGES/"* -type d -name "$2")"
    if   [ "$FOLDERS_5" ]; then
        BRANCA="$TRUNK"
        FOLDERS="$(basename -a "$FOLDERS_5")"
    elif [ "$FOLDERS_6" ]; then
        BRANCA="$TRUNK6"
        DIRMOD="$ROOT_SCRIPT/ca-mod/$MESSAGES/kf6"
        FOLDERS="$(basename -a "$FOLDERS_6")"
      else
        echo -e "\033[47;31mERROR:\e[0m Indiqueu una carpeta vàlida (p. ex., kstars) o prefix de carpetes (p. ex., websites-*) com a entrada!"
        exit 0
    fi
    DIRSRC="$ROOT_TREE/$BRANCA/ca/$MESSAGES"
    DIRTEM="$ROOT_TREE/$BRANCA/templates/$MESSAGES"

    llista() {
      for folder in $FOLDERS
        do
          FILES="$(find "$ROOT_TREE/$BRANCA/ca/$MESSAGES/$folder/"* -type f -name "*.po" 2>/dev/null)"
          for file in $FILES
            do
              DIR="$(basename "${file%/*}")"
              PO="${file##*/}"

              if [ "$1" = "1" ]; then
                msgmerge --silent --previous --width=79 --lang=ca "$DIRSRC/$DIR/$PO $DIRTEM/$DIR/${PO}t" --output-file="$DIROBJ/$DIR/$PO"
              fi
              if [ "$1" = "2" ]; then
                cd "$MEM_DIR" || exit 1
                [ -e "$DIRMOD/$DIR/$PO" ] && DIRSRC="$DIRMOD"

                msgmerge --silent --previous --no-wrap "$DIRSRC/$DIR/$PO $DIRTEM/$DIR/${PO}t" --output-file="missatges-$PO"
                if [ ! -f kde-src2valencia.sed ]; then
                    cp  "$DIRTR/kde-src2valencia_a.sed"         "kde-src2valencia.sed"
                    cat "$DIRTR/kde-src2valencia_b.sed"      >> "kde-src2valencia.sed"
                    cat "$DIRTR/kde-src2valencia-esmena.sed" >> "kde-src2valencia.sed"
                fi
                sed -f kde-src2valencia.sed < "missatges-$PO" > "missatges_1-$PO" && rm -f "missatges-$PO"
                msgmerge --silent --previous --width=79 --lang="ca" "missatges_1-$PO" "$DIRTEM/$DIR/${PO}t" --output-file="missatges_2-$PO" && rm -f "missatges_1-$PO"
                mv -f "missatges_2-$PO" "$DIROBJ/$DIR/$PO"
              fi
              if [ "$1" = "3" ];then
                [ -e "$DIRMOD/$DIR/$PO" ] && DIRSRC="$DIRMOD"
                cp -f "$DIRSRC/$DIR/$PO" "$DIROBJ/$DIR/$PO"
              fi
              DIRSRC="$ROOT_TREE/$BRANCA/ca/$MESSAGES"
            done
        done
    }

    # Es dona format amb «msgmerge» per a que el diff sigui menor
    echo -e "\033[47;31mPrimer:\e[0m es copia amb «msgmerge» en el repositori de proves"
    MISSATGE_DIFF="Cometeu els canvis en el repo de proves «\033[47;31mca/$MESSAGES/$2\e[0m»"
    llista 1 && pregunta

    echo -e "\033[47;31mSegon:\e[0m ara es passa per l'script en sed només del català"
    MISSATGE_DIFF="Procediu a extreure el diff amb el «\033[47;31mkdesvn\e[0m» (caldrà revisar-lo)"
    llista 2 && pregunta

    echo -e "\033[47;31mTercer:\e[0m per acabar es restaura el seu darrer estat"
    llista 3
  ;;
  fitxer_erroni)
    DIR="digikam"
    PO="digikam.po"
    DIRMOD="$ROOT_SCRIPT/ca-mod/messages/$DIR"
    DIRSRC="$ROOT_TREE/$TRUNK/ca/messages/$DIR"
    DIRTEM="$ROOT_TREE/$TRUNK/templates/messages/$DIR"

    if [ -e "$ROOT_TREE/$TRUNK6/ca/messages/$DIR/$PO" ]; then
      DIRSRC="$ROOT_TREE/$TRUNK6/ca/messages/$DIR"
      DIRTEM="$ROOT_TREE/$TRUNK6/templates/messages/$DIR"
    fi
    [ -e "$DIRMOD/$PO" ] && DIRSRC="$DIRMOD"
    echo -e "\033[47;31mPrimer:\e[0m s'executa «msgmerge»"
    MISSATGE_DIFF="[missatges-$PO]: Res"
    pregunta
    msgmerge --silent --previous --no-wrap "$DIRSRC/$PO" "$DIRTEM/${PO}t" --output-file="missatges-$PO"
    msgfmt --statistics "missatges-$PO"

    echo -e "\033[47;31mSegon:\e[0m ara es passa per sed amb l'script «kde-src2valencia.sed»"
    MISSATGE_DIFF="[missatges_1-$PO]: Res"
    pregunta
    sed -f kde-src2valencia.sed        < "missatges-$PO"   > "missatges_1-$PO"
    msgfmt --statistics "missatges_1-$PO"

    echo -e "\033[47;31mQuart:\e[0m es passa per sed amb l'script «all-src2valencia.sed»"
    MISSATGE_DIFF="[missatges_2-$PO]: Res"
    pregunta
    sed -f all-src2valencia.sed        < "missatges_1-$PO" > "missatges_2-$PO"
    msgfmt --statistics "missatges_2-$PO"

    echo -e "\033[47;31mCinquè i últim:\e[0m es torna a executar «msgmerge»"
    MISSATGE_DIFF="[$PO]: Res"
    pregunta
    msgmerge --silent --previous --width=79 --lang="$SOURCE_0" "missatges_2-$PO" "$DIRTEM/${PO}t" --output-file="$PO" && rm -f "missatges_2-$PO2"
    msgfmt --statistics "$PO"
    kwrite "missatges_2-$PO" && rm -f *".po"
  ;;
  *)
    sortida_po
  ;;
esac

exit 0

