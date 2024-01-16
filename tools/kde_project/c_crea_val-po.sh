#!/bin/bash

DIR1="$(echo $PWD)"
DIR0="$(cd ../../../.. ; echo $PWD)"
cd $DIR1
STABLE="stable/l10n-kf5"
TRUNK="trunk/l10n-kf5"
STABLE6="stable/l10n-kf6"
TRUNK6="trunk/l10n-kf6"
MSG='msgstr'
SOURCE_0='ca@valencia'
TEXT="$2"

APPEND='\[|\*|\*\*|\*\*\*|&|«|<[^<]{1,}>'
APPEND_0="$([ -f 'append-a_en.in' ] && cat append-a_en.in | tr -d '\n')"
APPEND_A="acte (es bus|se cer)caran|baix|bord|cada segon|causa|completar|continuació|costa|curt termini|dalt|davall|diferència|dins|dreta|esquerra|est|estar|Fourier|freqüències|href|les|longitud d'ona|llarg termini|menys que|mesura|més,|més del resultat|mida|motius|nord|oest|partir|penes|principis|prop|punt|qualsevol valor|simple|sud|terme|tindre en compte|través|una distància|vegades"
APPEND_AL1="escala especificada|especificat|esquerra|est del nord|estar|estil (BSD|ini)|extrem baix|hora|inrevés\)\.|oest de Greenwich"
APPEND_ALA="conclusió|distància en micres|dreta|dreta, davall|inversa|manera de fer|normal|part|posició apuntada|qual|rotació|vegada|visualització|vostra opció"
APPEND_ALES="dotze del migdia"
APPEND_ALS="100%|canvis ambientals|començament,|començament d'(aqu)?esta secció|començament del fitxer|costat|darrere|desenvolupadors de (&kde|KDE)|Dhanab|efectes del càlcul|final de l'(agranat|escombrat)|final del text|Gieba|Giedi|Jawf|llarg|Manamah|mateix (ritme|temps)|migdia|Nair|Nasl|NGC|Niyat|[nv]ostre (gust|voltant)|participant|quadrat de l'ajust|qual sovint es refer(eix|ix)|Saif|seus valors predeterminats|Shuja|Thalimain|valor calculat automàticament|voltant"

sortida_po() {
  echo -e "$0 [opció] (arguments)?

  \033[1;37mAJUDA\n  -----\e[0m
  troba_po (nom|exp. reg.)        Cerca \033[1;37ma on es troba ara aquest fitxer\e[0m.
  crea_po_linia ruqola/ruqola.po  \033[1;37mCrea un fitxer amb les entrades en una sola línia\e[0m,
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
                                  \033[1;37mCerca en la carpeta indicada\e[0m.
                                  Es pot especificar l'idioma (ca, en -a «va»- i va).
                                  Amb el caràcter de punt «.» se cerca a totes.
                                  De manera predeterminada a «va».
  cerca_all_dir va (text_cerca) (dir)?
                                  \033[1;37mApareix un indicatiu en passar per cada carpeta\e[0m (va).
                                  Es pot especificar l'idioma (ca, en -a «va»- i va).
                                  Si s'especifica una carpeta, la cerca començarà en
                                  aquesta.
  cerca_dir_a    va (paraula)     \033[1;37mSe cerca «a »+«paraula».\e[0m
  cerca_dir_al1  va (paraula)     \033[1;37mSe cerca «a l'»+«paraula».\e[0m
  cerca_dir_ala  va (paraula)     \033[1;37mSe cerca «a la »+«paraula».\e[0m
  cerca_dir_ales va (paraula)     \033[1;37mSe cerca «a les »+«paraula».\e[0m
  cerca_dir_al   va (paraula)     \033[1;37mSe cerca «al »+«paraula».\e[0m
  cerca_dir_als  va (paraula)     \033[1;37mSe cerca «als »+«paraula».\e[0m
  cerca_dir_auns va (paraula)     \033[1;37mSe cerca «a uns? »+«paraula».\e[0m
                                  Es pot especificar l'idioma (ca i va).

  cerca_dir_ab (dir)?             --Expressió regular--- emprada per a fer neteja.
  cerca         (text_cerca)      És una \033[1;37mcerca més ràpida per carpeta\e[0m (va).

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
  \033[47;31madapta_dir (dir)\e[0m                * \033[1;37mPROVES! Adapta i genera nomes una carpeta\e[0m en el SVN local.
  modifica_capçalera fitxer.po    * \033[1;37mActualitza la informació a la capçalera\e[0m.
  adapta_valencia (recursiu|usuari)
                                  * \033[47;31mAdapta el SVN de KDE en totes les branques.\e[0m
  crea_po (gui|doc)               * \033[1;37mCrea els fitxers PO que es mantenen\e[0m.
  neteja_ca (gui|doc)             * \033[1;37mEs fan còpies de seguretat tot netejant l'arbre\e[0m.

  \033[1;37mMANTENIMENT\n  -----------\e[0m
  \033[47;31mactualitza_svn_local\e[0m            \033[1;37mActualitza l'SVN local amb trunk\e[0m.
                                  \033[47;31mNOTA:\e[0m Després s'han d'entregar manualment els canvis!
  copia_a_svn_local kdenlive/kdenlive.po
                                  * Copia algun fitxer des de trunk a dins del SVN local.
                                    - També l'adapta al valencià.
  \033[47;31mcopia_aquests\e[0m [núm. comissió]   * \033[1;37mAdapta els PO amb modificacions\e[0m en el SVN de KDE.
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
#   - stable / l10n-kf6-plasma-lts /
  - trunk  / l10n-kf5 /
  - trunk  / l10n-kf5 / Carpeta_nova / Treball / \033[1;37m[repositori SVN local i carpeta
                                                 base d'aquest script]\e[0m
  - trunk  / l10n-kf6 /

  \033[1;37mCONTINGUT\n  ---------\e[0m
  - ca                          \033[1;37m[SVN de les traduccions al català]\e[0m
  - ca@valencia                 \033[1;37m[SVN de les traduccions al valencià]\e[0m
  - ca-mod                      \033[1;37m[Carpeta amb les traduccions modificades]\e[0m
  - templates                   \033[1;37m[SVN de les plantilles de traducció]\e[0m
  \033[1;37mCarpetes on es genera l'adaptació de la documentació:\e[0m
  - kf5-stable
  - kf5-trunk
  - kf6-trunk

  \033[1;37mRepo:\e[0m https://github.com/Softcatala/adaptadorvariants/tools/kde_project/
  • c_crea_val-po.sh            \033[1;37m[Aquest script]\e[0m
  • append-a_en.in              \033[1;37m[Ajudant del pology -el contingut s'inclou al primer script-]\e[0m
  • adapta-kde_recursivament.sh \033[1;37m[Script en Bash que adapta amb els scripts en SED]\e[0m
  \033[1;37mEls scripts en SED, en odre de processament:\e[0m
  • kde-src2valencia.sed        \033[1;37mRepo:\e[0m sense publicar
  • all-src2valencia.sed
  • all-src2valencia-adapta.sed

  \033[1;37mLLEGENDA\n  --------\e[0m
  * (Opcions que només es poden executar des de la carpeta base de l'script).\n"
  exit 0
}

comprova_lloc() {
  # Comprova que es crida des de la ubicació correcta
  [ -d $DIR0/$STABLE ] || sortida_po
  [ -d $DIR0/stable/l10n-kf6-plasma-lts ] || sortida_po
  [ -d $DIR0/$TRUNK ]  || sortida_po
}

[ -z $1 ] && sortida_po
FOLDER="$2"

command_cm() {
        for package in $(find $DIR1/ca-mod/$MESSAGES/* -maxdepth 0 -type d)
          do
            PACKAGE="$(basename $package)"
            echo -e " \e[38;5;46m* $PACKAGE\e[0m"
            $ORDRE $PACKAGE
          done
}

copia_valencia() {
  FOLDER="$2"
  [ -z $FOLDER ] && FOLDER='igu'
  DIRMOD="$DIR1/ca-mod/$MESSAGES/$1"
  DIRSRC="$DIR1/Carpeta_nova/$1/$FOLDER"
  DIROBJ="$DIR1/ca/$MESSAGES/$1"

  adapta_ho() {
    if [ -e $DIRTEM/${PO2}t ]; then
        # Les primeres escriptures van a l'espai d'usuari en la memòria del sistema (molt més ràpid, alleuja i allarga la vida)
        MEM_DIR="$(echo /run/user/$(id -u))"
        cd $MEM_DIR

        echo -e "   \e[38;5;44m· ($1)\e[0m $PO2"
        # Fem que les frases/paràgrafs siguin d'una sola línia:
        msgmerge --silent --previous --no-wrap $CA_MOD $DIRTEM/${PO2}t --output-file=missatges-$PO2

        # Executem la conversió del fitxer PO
        $DIR1/kde-src2valencia.sed        < missatges-$PO2   > missatges_1-$PO2 && rm -f missatges-$PO2
        $DIR1/all-src2valencia-adapta.sed < missatges_1-$PO2 > missatges_2-$PO2 && rm -f missatges_1-$PO2
        $DIR1/all-src2valencia.sed        < missatges_2-$PO2 > missatges_3-$PO2 && rm -f missatges_2-$PO2

        mkdir -p $DIRDES
        # Es torna a donar el format amb 78 files
        msgmerge --silent --previous --width=79 --lang=$SOURCE_0 missatges_3-$PO2 $DIRTEM/${PO2}t --output-file=$PO2 && \
        mv -f $PO2 $DIRDES/$PO2 && rm -f missatges_3-$PO2
        cd $DIR1
      else
        echo -e "   \e[38;5;44m· ($1)\e[0m $PO2 \033[47;31m- Segurament aquesta documentació s'ha mogut cap a l10n-kf6\e[0m"
    fi
  }

  # KF5 (trunk)
  DIRDES="$DIR1/kf5-trunk/$SOURCE_0/$MESSAGES/$1"
  DIRTEM="$DIR0/$TRUNK/templates/$MESSAGES/$1"
  for po in $(find $DIRMOD/* -maxdepth 0 -type f -name "*.po")
    do
      PO2="$(basename $po)"
      CA_MOD="$DIRMOD/$PO2"
      adapta_ho kf5-trunk
    done

  # KF5 (stable)
  DIRDES="$DIR1/kf5-stable/$SOURCE_0/$MESSAGES/$1"
  DIRTEM="$DIR0/$STABLE/templates/$MESSAGES/$1"
  [ $(find $DIRMOD/ -maxdepth 2 -type d -name "stable") ] && \
  for po in $(find $DIRMOD/stable/* -maxdepth 1 -type f -name "*.po")
    do
      PO2="$(basename $po)"
      CA_MOD="$DIRMOD/stable/$PO2"
      adapta_ho kf5-stable
    done

  # KF6 (kf6-plasma-lts)
  DIRDES="$DIR1/kf6-plasma-lts/$SOURCE_0/$MESSAGES/$1"
  DIRTEM="$DIR0/stable/l10n-kf6-plasma-lts/templates/$MESSAGES/$1"
  [ $(find $DIRMOD/ -maxdepth 2 -type d -name "kf6-plasma-lts") ] && \
  for po in $(find $DIRMOD/kf6-plasma-lts/* -maxdepth 1 -type f -name "*.po")
    do
      PO2="$(basename $po)"
      CA_MOD="$DIRMOD/kf6-plasma-lts/$PO2"
      adapta_ho kf6-plasma-lts
    done

  # KF6 (stable)
  DIRDES="$DIR1/kf6-stable/$SOURCE_0/$MESSAGES/$1"
  DIRTEM="$DIR0/$STABLE6/templates/$MESSAGES/$1"
  [ $(find $DIRMOD/ -maxdepth 2 -type d -name "stable6") ] && \
  for po in $(find $DIRMOD/stable6/* -maxdepth 1 -type f -name "*.po")
    do
      PO2="$(basename $po)"
      CA_MOD="$DIRMOD/stable6/$PO2"
      adapta_ho kf6-stable
    done

  # Futur KF6 (transcició)
  DIRDES="$DIR1/kf6-trunk/$SOURCE_0/$MESSAGES/$1"
  DIRTEM="$DIR0/$TRUNK6/templates/$MESSAGES/$1"
  [ $(find $DIRMOD/ -maxdepth 2 -type d -name "kf6") ] && \
  for po in $(find $DIRMOD/kf6/* -maxdepth 1 -type f -name "*.po")
    do
      PO2="$(basename $po)"
      CA_MOD="$DIRMOD/kf6/$PO2"
      adapta_ho kf6-trunk
    done
}

crea_po() {
  DIRMOD="ca-mod/$MESSAGES/$1"
  DIROBJ="ca/$MESSAGES/$1"
  DIRTEM="templates/$MESSAGES/$1"

  for po in $(find $DIR1/$DIRMOD/* -maxdepth 1 -type f -name "*.po")
    do
      PO2="$(basename $po)"
      if   [ -f $DIR0/$TRUNK/$DIROBJ/$PO2 ]; then
          mkdir -p $DIROBJ
          echo -e "   \e[38;5;44m-- (KF5 trunk) <-\e[0m $PO2"
          [ -f $DIR0/$TRUNK/$DIRTEM/${PO2}t ] || return
          msgmerge --silent --previous --width=79 --lang=ca $DIRMOD/$PO2 $DIR0/$TRUNK/$DIRTEM/${PO2}t  --output-file=$DIR0/$TRUNK/$DIROBJ/$PO2
          posieve  remove-obsolete $DIR0/$TRUNK/$DIROBJ/$PO2
          msgfmt   --statistics    $DIR0/$TRUNK/$DIROBJ/$PO2
      fi

      if [ -f $DIR0/$STABLE/$DIROBJ/$PO2 ]; then
        if [ -d $DIRMOD/stable ]; then
          CA_MOD="$DIRMOD/stable/$PO2"
          mkdir -p $DIROBJ
          echo -e "   \e[38;5;44m-- (KF5 stable) <-\e[0m $PO2"
          [ -f $DIR0/$STABLE/$DIRTEM/${PO2}t ] || return
          msgmerge --silent --previous --width=79 --lang=ca $CA_MOD $DIR0/$STABLE/$DIRTEM/${PO2}t  --output-file=$DIR0/$STABLE/$DIROBJ/$PO2
          posieve  remove-obsolete $DIR0/$STABLE/$DIROBJ/$PO2
          msgfmt   --statistics    $DIR0/$STABLE/$DIROBJ/$PO2
        fi
      fi

      if [ -f $DIR0/$TRUNK6/$DIROBJ/$PO2 ]; then
        if [ -d $DIRMOD/kf6 ]; then
          CA_MOD="$DIRMOD/kf6/$PO2"
          mkdir -p $DIROBJ
          echo -e "   \e[38;5;44m-- (KF6 trunk) <-\e[0m $PO2"
          [ -f $DIR0/$TRUNK6/$DIRTEM/${PO2}t ] || return
          msgmerge --silent --previous --width=79 --lang=ca $CA_MOD $DIR0/$TRUNK6/$DIRTEM/${PO2}t  --output-file=$DIR0/$TRUNK6/$DIROBJ/$PO2
          posieve  remove-obsolete $DIR0/$TRUNK6/$DIROBJ/$PO2
          msgfmt   --statistics    $DIR0/$TRUNK6/$DIROBJ/$PO2
        fi
      fi

      if [ -f $DIR0/$STABLE6/$DIROBJ/$PO2 ]; then
        if [ -d $DIRMOD/stable6 ]; then
          CA_MOD="$DIRMOD/stable6/$PO2"
          mkdir -p $DIROBJ
          echo -e "   \e[38;5;44m-- (KF6 stable) <-\e[0m $PO2"
          [ -f $DIR0/$STABLE6/$DIRTEM/${PO2}t ] || return
          msgmerge --silent --previous --width=79 --lang=ca $CA_MOD $DIR0/$STABLE6/$DIRTEM/${PO2}t  --output-file=$DIR0/$STABLE6/$DIROBJ/$PO2
          posieve  remove-obsolete $DIR0/$STABLE6/$DIROBJ/$PO2
          msgfmt   --statistics    $DIR0/$STABLE6/$DIROBJ/$PO2
        fi
      fi
    done
}

neteja_ca() {
  DIROBJ="ca/$MESSAGES/$1"
  DIRMOD="ca-mod/$MESSAGES/$1"
  DIRTEM="templates/$MESSAGES/$1"
  mkdir -p $DIRTEM
  for po in $(find $DIR1/$DIRMOD/* -maxdepth 1 -type f -name "*.po")
    do
      PO2="$(basename $po)"
      if [ -e $DIR0/$TRUNK/$DIROBJ/$PO2 ]; then
        echo -e "   \e[38;5;44m· KF5 ->\e[0m $DIRMOD/$PO2"
        [ "$MESSAGES" = "messages" ] && cp -f $DIR0/$TRUNK/$DIROBJ/$PO2  $DIR1/$DIROBJ/$PO2
        mv -f  $DIR0/$TRUNK/$DIROBJ/$PO2      $DIR1/$DIRMOD/$PO2
        cp -f  $DIR0/$TRUNK/$DIRTEM/${PO2}t   $DIR1/$DIRTEM/${PO2}t
      fi

      if [ -e $DIR0/$STABLE/$DIROBJ/$PO2 ]; then
        mkdir -p $DIRMOD/stable
        echo -e "   \e[38;5;44m· KF5 ->\e[0m $DIRMOD/\e[38;5;44mstable/\e[0m$PO2"
        mv -f $DIR0/$STABLE/$DIROBJ/$PO2   $DIR1/$DIRMOD/stable/$PO2
      fi

      if [ -e $DIR0/$TRUNK6/$DIROBJ/$PO2 ]; then
        mkdir -p $DIRMOD/kf6
        echo -e "   \e[38;5;44m· KF6 ->\e[0m $DIRMOD/\e[38;5;44mktrunk/\e[0m$PO2"
        [ "$MESSAGES" = "messages" ] && cp -f $DIR0/$TRUNK6/$DIROBJ/$PO2 $DIR1/$DIROBJ/$PO2
        mv -f  $DIR0/$TRUNK6/$DIROBJ/$PO2     $DIR1/$DIRMOD/kf6/$PO2
        cp -f  $DIR0/$TRUNK6/$DIRTEM/${PO2}t  $DIR1/$DIRTEM/${PO2}t
      fi

      if [ -e $DIR0/$STABLE6/$DIROBJ/$PO2 ]; then
        mkdir -p $DIRMOD/stable6
        echo -e "   \e[38;5;44m· KF6 ->\e[0m $DIRMOD/\e[38;5;44mstable6/\e[0m$PO2"
        mv -f $DIR0/$STABLE6/$DIROBJ/$PO2   $DIR1/$DIRMOD/stable6/$PO2
      fi
    done
}

per_carpeta(){
  CARPETES="$(find $SOURCE/messages/* -maxdepth 0 -type d)"
  for carpeta in $CARPETES
    do
      DIR="$(basename $carpeta)"
      [ "$DIR" = "$MODUL" ] && NUM=1
      if [ "$NUM" = "1" ]; then
        prompt_1
      fi
    done
}

prompt_1() {
        echo -e "\e[38;5;46m * $DIR -\e[0m \e[38;1;33m $MSG:  $TEXT \e[0m\n"
        [ -z $1 ] && echo -e "\033[1;37m $MISSATGE \e[0m\n"
        read -p "Voleu procedir? (Sí/no) " sn
        case $sn in
          no )
            echo " - Se surt..."
            exit 1
          ;;
          *)
            if   [ "$TEXT2" ]; then
                posieve find-messages -s fexpr:"msgstr/\b$TEXT/ and not msgstr/\b$TEXT2/ and not msgstr/\b$APPEND_B/" $SOURCE/${DOC}messages/$DIR
            elif [ "$TEXT3" ]; then
                echo -e "\n\n - Doc:\n   ****"
                [ -d "$SOURCE/docmessages/$DIR" ] && \
                posieve find-messages -s fexpr:"msgstr/\b$TEXT/ and not msgstr/\b($APPEND_0) $TEXT/ and not msgstr/\b$APPEND_B/" $SOURCE/docmessages/$DIR
                echo -e "\n\n - IGU:\n   ****"
                posieve find-messages -s fexpr:"msgstr/\b$TEXT/ and not msgstr/\b($APPEND_0) $TEXT/ and not msgstr/\b$APPEND_B/" $SOURCE/messages/$DIR
              else
                posieve find_messages -s$MSG:"$TEXT" $SOURCE/${DOC}messages/$DIR
            fi
            TEXT2=
            TEXT3=
            echo
          ;;
        esac
}

cerca_and_not() {
  SOURCE="$SOURCE_0"
  if   [ "$1" = 'ca' ]; then
      SOURCE='ca'
  fi
  echo -e "\n\n - Doc:\n   ****"
  [ -d "$SOURCE/docmessages/$DIR" ] && \
  posieve find-messages -s fexpr:"$STRING" "$SOURCE/docmessages/"
  echo -e "\n\n - IGU:\n   ****"
  posieve find-messages -s fexpr:"$STRING" "$SOURCE/messages/"
}

pregunta() {
  echo -e "\033[1;37m* Ara es requereix una acció:\e[0m $MISSATGE_DIFF"
  read -p "Voleu procedir? (Sí/no) " sn
  case $sn in
    no)
      echo "Se surt..."
      exit 0
	;;
    *)
      echo "Es procedeix..."
    ;;
  esac
}

case $1 in
  troba_po)
    [ "$2" ] || sortida_po
    find $SOURCE_0/messages/* -type f -name "$2"
  ;;
  crea_po_linia)
    [ "$2" ] || sortida_po
    if [ -f ca/messages/$2 ]; then
        PO="$(basename $2)"
        DIR="$(echo $2 | cut -f 1 -d'/')"
        echo $DIR - $PO
        msgmerge --silent --previous --no-wrap ca/messages/$DIR/$PO templates/messages/$DIR/${PO}t --output-file=missatges-$PO
      else
       echo "$2: No existeix!"
    fi
  ;;
  po_nou)
    [ "$2" ] || sortida_po
    SOURCE='ca@valencia'
    DIR="$2"
    DOC="$3"
    MISSATGE1="Possible canvi:"
    TEXT2=
    TEXT3=
# valencià
    TEXT="[?]"
    MISSATGE="$MISSATGE1 ** Voleu ...? **"
    prompt_1
    TEXT="[!]"
    MISSATGE="$MISSATGE1 ** _esborrar el signe d'exclamació?_ **"
    prompt_1
    TEXT=", que "
    MISSATGE="$MISSATGE1 ** , el qual **"
    prompt_1
    WORD='2,15'
    TEXT="\ba l'($APPEND|)\w{$WORD}"
    TEXT2="($APPEND_0) a l'($APPEND|)\w{$WORD}"
    APPEND_B="a l'($APPEND|)($APPEND_AL1)"
    MISSATGE="$MISSATGE1 ** amb / en l' **"
    prompt_1
    WORD='3,15'
    TEXT="a ($APPEND|)\w{$WORD}"
    TEXT2="($APPEND_0) a ($APPEND|)\w{$WORD}"
    APPEND_B="a ($APPEND|)($APPEND_A)"
    MISSATGE="$MISSATGE1 ** a inserir -> que cal inserir / que s'ha d'inserir / que s'inserirà **"
    prompt_1
    TEXT="\ba la ($APPEND|)\w{$WORD}"
    TEXT2="($APPEND_0) a la ($APPEND|)\w{$WORD}"
    APPEND_B="\ba la ($APPEND|)($APPEND_ALA)"
    MISSATGE="$MISSATGE1 ** amb / en la **"
    prompt_1
    TEXT="\ba les ($APPEND|)\w{$WORD}"
    TEXT2="($APPEND_0) a les ($APPEND|)\w{$WORD}"
    APPEND_B="a les ($APPEND|)($APPEND_ALES)"
    MISSATGE="$MISSATGE1 ** amb / en les **"
    prompt_1
    TEXT="\bals? ($APPEND|)\w{$WORD}"
    TEXT2="($APPEND_0) als? ($APPEND|)\w{$WORD}"
    APPEND_B="als? ($APPEND|)($APPEND_ALS)"
    MISSATGE="$MISSATGE1 ** amb / en els? **"
    prompt_1
    APPEND_B=""
    TEXT="\ba on "
    TEXT2="($APPEND_0) a on ($APPEND|)\w{$WORD}"
    MISSATGE="$MISSATGE1 ** a on cal / s'ha(n) **"
    prompt_1
    TEXT="\ba un ($APPEND|)\w{$WORD}"
    TEXT2="($APPEND_0) a un ($APPEND|)\w{$WORD}"
    MISSATGE="$MISSATGE1 ** amb / en un **"
    prompt_1
    TEXT="\b(activ[aei]|desactiv[aei]|habilit|inhabilit|marca|marque)"
    MISSATGE="$MISSATGE1 ** Quan se selecciona aquesta opció, / Quan no està seleccionada, / Si se selecciona, / Si no se selecciona, **"
    prompt_1
    TEXT="\bcàrreg(a|ues)"
    MISSATGE="$MISSATGE1 ** carrega(ues) **"
    prompt_1
    TEXT="\bdest(í|inació|inacions|ins)"
    MISSATGE="$MISSATGE1 ** destinació / destí **"
    prompt_1
    TEXT="^Error"
    MISSATGE="$MISSATGE1 ** S'ha produït un error **"
    prompt_1
    TEXT="\bextr(a|es)\b"
    MISSATGE="$MISSATGE1 ** addicional(s) **"
    prompt_1
    TEXT="\bgraell(a|es)"
    MISSATGE="$MISSATGE1 ** quadrícula(es) **"
    prompt_1
    TEXT="\bHa fallat"
    MISSATGE="$MISSATGE1 ** No s'ha(n) pogut **"
    prompt_1
    TEXT="\bper defecte"
    MISSATGE="$MISSATGE1 ** predeterminat(da), de manera predeterminada **"
    prompt_1
    TEXT="\bPer favor"
    MISSATGE="$MISSATGE1 ** _esborrar-ho?_ **"
    prompt_1
    TEXT="\bsimple(ment)?"
    MISSATGE="$MISSATGE1 ** senzill(ament) **"
    prompt_1
# anglès
    MSG="msgid"
    TEXT="\bas "
    MISSATGE="$MISSATGE1 ** anomena i guarda **"
    prompt_1
    TEXT="\bin(\s)?to "
    MISSATGE="$MISSATGE1 ** a dins, en **"
    prompt_1
    TEXT="\bhosts?"
    MISSATGE="$MISSATGE1 ** amfitrió(ons) **"
    prompt_1
    TEXT="\bmultiple"
    MISSATGE="$MISSATGE1 ** múltiple(s) **"
    prompt_1
    TEXT="\bon(\s)?to "
    MISSATGE="$MISSATGE1 ** «és molt variable»: a sobre, **"
    prompt_1
    TEXT="\bunder "
    MISSATGE="$MISSATGE1 ** a sota **"
    prompt_1
  ;;
  cerca_dir)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a|en)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    [ "$4" ] || sortida_po
    TEXT="$3"
    SOURCE="$SOURCE_0"
    if   [ "$2" = 'ca' ]; then
        SOURCE='ca'
    elif [ "$2" = 'en' ]; then
        [ "$6" ] && SOURCE='ca'
        MSG='msgid'
    fi

    posieve find_messages -s$MSG:"$TEXT" "$SOURCE/${5}messages/$4"
  ;;
  cerca_all_dir)
    [ "$2" ] || sortida_po
    [ -z $4 ] && NUM="1"
    TEXT="$3"
    SOURCE="$SOURCE_0"
    if   [ "$2" = 'ca' ]; then
        SOURCE='ca'
    elif [ "$2" = 'en' ]; then
        MSG='msgid'
    fi

    MODUL="$4"
    per_carpeta
  ;;
  cerca_dir_a)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"
    SOURCE="$SOURCE_0"
    if   [ "$2" = 'ca' ]; then
        SOURCE='ca'
    fi

    STRING="msgstr/\ba ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) a ($APPEND|)$TEXT/"
    cerca_and_not
  ;;
  cerca_dir_al1)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"

    STRING="msgstr/\ba l'($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) a l'($APPEND|)$TEXT/"
    cerca_and_not $2
  ;;
  cerca_dir_ala)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"

    STRING="msgstr/\ba la ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) a la ($APPEND|)$TEXT/"
    cerca_and_not $2
  ;;
  cerca_dir_ales)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"

    STRING="msgstr/\ba les ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) a les ($APPEND|)$TEXT/"
    cerca_and_not $2
  ;;
  cerca_dir_al)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"

    STRING="msgstr/\bal ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) al ($APPEND|)$TEXT/"
    cerca_and_not $2
  ;;
  cerca_dir_als)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"

    STRING="msgstr/\bals ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) als ($APPEND|)$TEXT/"
    cerca_and_not $2
  ;;
  cerca_dir_auns)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"

    STRING="msgstr/\ba uns? ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_0) a uns? ($APPEND|)$TEXT/"
    cerca_and_not $2
  ;;
  cerca_dir_ab)
#     [ "$2" ] || sortida_po
#     TEXT="$2"
    [ -z $2 ] && NUM="1"
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
# SOURCE_0='ca'
    [ "$2" ] || sortida_po
    CADENA="akonadi akregator alk alli am an ap ar at au b cal can ce ch cl co cu day di do dr e f g h ik inc index-fm iso it j k3b ka kb kc kda kdb kde-c kde-d kde-g kde-i kde-n kdeb kdec kded kdeg kdel kden kdep kdes kdev kdf kdi kdn kdo ke kf kg kh ki kj kl km kn ko kp kr ks kt ku kw kx l m n o p q r s tel to tr u v w x y z"
    for cadena in $CADENA
      do
        echo -e "\e[38;5;46m * $cadena/* -\e[0m \e[38;1;33m $TEXT \e[0m"
        read -p "Voleu procedir? (Sí/no) " sn
        case $sn in
          no )
            echo " - Se surt..."
            exit 1
          ;;
          *)
            [ -f "messages.mo"   ] && rm -f messages.mo
            [ -f "missatges*.po" ] && rm -f missatges*.po
            posieve find_messages -smsgstr:"$TEXT" $SOURCE_0/messages/$cadena*
          ;;
        esac
      done
  ;;
  cerca_titols)
    comprova_lloc
    posieve find_messages -smsgctxt:"@title" "$SOURCE_0/messages/$2"
  ;;
  cerca_titols_dir)
    comprova_lloc
    [ -z $2 ] && NUM="1"
    MODUL="$2"
    MSG='msgctxt'
    TEXT="@title"
    per_carpeta
  ;;
  comprova_titols)
    comprova_lloc
    SOURCE="$SOURCE_0"
    comprova_titol() {
      echo -e "\n - Ha de posar: «$3»\n"
      posieve find_messages -smsgid:"$2" "$SOURCE/${5}messages/$1/"
    }

    comprova_titol gcompris "kite"                              "catxerulo"
    comprova_titol kstars   "^Settings"                         "Configureu"
    comprova_titol kstars   "^Find Object"                      "Busqueu un objecte"
    comprova_titol kstars   "^Set Time"                         "Establiu la data i l'hora"
    comprova_titol kstars   "^Set Coordinates Manually"         "Establiu manualment les coordenades"
    comprova_titol kstars   "^Export"                           "Exporteu"
    comprova_titol kstars   "^Print Sky Calendar$"              "Imprimiu el calendari del cel"
  ;;
  adapta)
    comprova_lloc
    ./adapta-kde_recursivament.sh recursiu $2
  ;;
  modifica_capçalera)
    [ -f "$2" ] || sortida_po
    FILE="$2"
    posieve set-header -sfield:"PO-Revision-Date:$(date +%Y-%m-%d) $(date +%H:%M%z)"   $FILE
    posieve set-header -sfield:"Last-Translator:Antoni Bella <antonibella5@yahoo.com>" $FILE
    posieve set-header -sfield:"X-Generator:Kate $(kate --version | cut -f 2 -d' ')"   $FILE
  ;;
  adapta_doc)
    comprova_lloc
    MESSAGES='docmessages'
    ORDRE='copia_valencia'
    command_cm
    echo -e "\n\e[38;5;44m# stable_kf5 / stable_lts_kf5 / trunk_kf5 / trunk_kf6\e[0m"
    echo -e "\e[38;5;44mSCRIPTY_I18N_BRANCH='trunk_kf5' l10n-scripty/update_xml $SOURCE_0 [app]\e[0m"
  ;;
  adapta_dir)
    comprova_lloc
    for po in $(find ca/messages/$2/* -type f -name "*.po")
      do
        PO2="$(basename $po)"
        DIR="$(dirname $po | sed -e s,ca\/,,)"
        ./adapta-kde_recursivament.sh fitxer $DIR/$PO2
      done
  ;;
  adapta_valencia)
    comprova_lloc
    adapta_val() {
      cd $DIR0/$STABLE
      ./adapta-kde_recursivament.sh $1

#       cd ../l10n-kf6-plasma-lts
#       ./adapta-kde_recursivament.sh $1

      cd $DIR0/$TRUNK
      ./adapta-kde_recursivament.sh $1

      cd $DIR0/$STABLE6
      ./adapta-kde_recursivament.sh $1

      cd $DIR0/$TRUNK6
      ./adapta-kde_recursivament.sh $1
    }

    case $2 in
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
    [ "$2" ] || sortida_po
    ORDRE='crea_po'
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
    [ "$2" ] || sortida_po
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
    cd $DIR0/$STABLE/ca/ && svn update
    echo -e "\n * S'està actualitzant KF5 «trunk»:"
    cd $DIR0/$TRUNK/ca/  && svn update
    echo -e "\n * S'està actualitzant KF6 «stable»:"
    cd $DIR0/$STABLE6/ca/ && svn update
    echo -e "\n * S'està actualitzant KF6 «trunk»:"
    cd $DIR0/$TRUNK6/ca/ && svn update
  ;;
  actualitza_svn_local)
    comprova_lloc
    elimina_carpetes() {
      [ -d $1/documentation-develop-kde-org ]   && rm -Rf $1/documentation-develop-kde-org
      [ -d $1/documentation-docs-kdenlive-org ] && rm -Rf $1/documentation-docs-kdenlive-org
      [ -d $1/websites-docs-krita-org ]         && rm -Rf $1/websites-docs-krita-org
      [ -e $1/websites-kde-org/release_announcements.po ] && rm -f $1/websites-kde-org/release_announcements.po
      [ -e $1/websites-kde-org/www_www.po ]               && rm -f $1/websites-kde-org/www_www.po
      [ -d $1/websites-kdevelop-org ]           && rm -Rf $1/websites-kdevelop-org
      [ -d $1/websites-planet-kde-org ]         && rm -Rf $1/websites-planet-kde-org
    }

    echo "* Es netegen les carpetes que s'actualitzaran."
    rm -Rf ca/*
    rm -Rf ca@valencia/*
    rm -Rf templates/*

    echo "* Es copien les branques següents:"
    for obj in ca templates
      do
        echo "  - kf5 stable $obj"
        mkdir -p $obj/messages/
        cp -fr ../../../../stable/l10n-kf5/$obj/messages/* $obj/messages/
      done; echo

    for obj in ca templates
      do
        echo "  - kf5 $obj"
        mkdir -p $obj/messages/
        cp -fr ../../$obj/messages/* $obj/messages/
        [ "$obj" = "templates" ] || elimina_carpetes $obj/messages
      done; echo

    for obj in ca templates
      do
        echo "  - kf6 $obj"
        mkdir -p $obj/messages/
        cp -fr ../../../l10n-kf6/$obj/messages/* $obj/messages/
      done; echo

    echo "* Es copien les traduccions des de «ca-mod/».\e[0m"
    $0 crea_po gui
    $0 neteja_ca gui
    mkdir -p ca/docmessages/

    # ca: la documentació són enllaços
    cd ca/docmessages
    echo "  - kf5: enllaços cap a la documentació «ca»"
    echo kstars
    ln -s ../../ca-mod/docmessages/kstars kstars
    cp -fr ../../../../templates/docmessages/kstars ../../templates/docmessages/kstars

    echo "  - kf6: enllaços cap a la documentació «ca»"
    for obj in $(find ../../ca-mod/docmessages/ -type d -name kf6)
      do
        MODULE="$(echo $obj | awk -F '/' '{print $5}')"
        echo $MODULE
        ln -s $obj $MODULE
        cp -fr ../../../../../l10n-kf6/templates/docmessages/$MODULE ../../templates/docmessages/$MODULE
      done
    cd ../../
    mkdir -p ca@valencia/docmessages/
    cp ../../ca/docmessages/language ca/docmessages/language
    cp ../../ca@valencia/docmessages/language ca@valencia/docmessages/language

    # ca@valencia: la documentació són enllaços
    cd ca@valencia/docmessages
    echo "  - kf5: enllaços cap a la documentació «ca@valencia»"
    echo kstars
    ln -s ../../kf5-trunk/ca@valencia/docmessages/kstars kstars

    echo "  - kf6: enllaços cap a la documentació «ca@valencia»"
    for obj in $(find ../../ca-mod/docmessages/ -type d -name kf6)
      do
        MODULE="$(echo $obj | awk -F '/' '{print $5}')"
        echo $MODULE
        ln -s ../../kf6-trunk/ca@valencia/docmessages/$MODULE $MODULE
      done
    cd ../../
    mkdir -p templates/docmessages/
    echo "* Es fa «posieve --quiet remove-obsolete ca/» per a netejar les traduccions."
    posieve --quiet remove-obsolete ca/

    echo -e "\n\033[47;31mNOTA:\e[0m \033[1;37mAra executeu «$0 adapta» per a aplicar els darrers canvis a «ca@valencia/».\e[0m"
  ;;
  copia_a_svn_local)
    comprova_lloc
    DKF5="../.."
    DKF6="../../../l10n-kf6"
    MFILE="$2"
    if   [ -f $DKF5/ca/messages/$MFILE ]; then
        cp -f $DKF5/ca/messages/$MFILE ca/messages/$MFILE
        cp -f $DKF5/templates/messages/${MFILE}t templates/messages/${MFILE}t
    elif [ -f $DKF6/ca/messages/$MFILE ]; then
        cp -f $DKF6/ca/messages/$MFILE ca/messages/$MFILE
        cp -f $DKF6/templates/messages/${MFILE}t templates/messages/${MFILE}t
      else
        sortida_po
    fi
    ./adapta-kde_recursivament.sh fitxer messages/$MFILE
  ;;
  copia_aquests)
    comprova_lloc
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep "^[0-9]*$")" ] || sortida_po
    commits_num(){
      cd $SOURCE_0
      FITXERS="$(svn log --verbose -r $1 | grep '\/messages\/' | sed 's/\(^.*\)Treball\/ca@valencia\/messages\// /g' | tr -d '\n')"
      cd ..
    }
    ARRAY="("$@")"
    N=
    for arg; do
      if [ "$N" ]; then
        commits_num "$arg"
        FITXERST="$FITXERST $FITXERS"
      fi
      N='1'
    done

    FITXERS="`echo "$FITXERST" | sort | uniq`"
    cd $DIR0/$STABLE
    for file in $FITXERS
      do
        [ -f ca/messages/$file ] && ./adapta-kde_recursivament.sh fitxer messages/$file
      done

    cd ../../$TRUNK/
    for file in $FITXERS
      do
        [ -f ca/messages/$file ] && ./adapta-kde_recursivament.sh fitxer messages/$file
      done

    cd ../../$TRUNK6/
    for file in $FITXERS
      do
        [ -f ca/messages/$file ] && ./adapta-kde_recursivament.sh fitxer messages/$file
      done
  ;;
  installa_va)
    comprova_lloc
    echo    "head ~/.config/plasma-localerc"
    echo    "[Formats]"
    echo -e "LANG=ca_ES.UTF-8\n"
    echo    "[Translations]"
    echo -e "LANGUAGE=ca@valencia:ca:en_US\n"

    installa_tot() {
      BRANCA="$1"
      DIR_ST="$DIR0/$BRANCA/l10n-kf5/$SOURCE_0/messages"
      DIR_MESSAGES="/usr/share/locale/$SOURCE_0/LC_MESSAGES"

      comprova_stable() {
        if [ "$BRANCA" = 'trunk' ]; then
            DIR_M="$(basename $(dirname $POFILE))"
            test -f $DIR0/$STABLE/ca@valencia/messages/$DIR_M/$FILE_NAME.po && EXIST='1'
        fi
      }

      fes_mo() {
        POFILE="$(find $DIR_ST -type f -name $1.po)"
        if [ $POFILE ]; then
            comprova_stable
            [ "$EXIST" = '1' ] && return
            echo "$BRANCA - $DIR_MESSAGES/$FILE_NAME.mo"
            sudo msgfmt -a 1 $POFILE -o $DIR_MESSAGES/$FILE_NAME.mo
        fi
      }

      fes_qm() {
        POFILE="$(find $DIR_ST -type f -name $1.po)"
        [ $2 ] && FILE_NAME="$2"
        if [ $POFILE ]; then
            comprova_stable
            [ "$EXIST" = '1' ] && return
            echo "$BRANCA - $DIR_MESSAGES/$FILE_NAME.qm"
            sudo lconvert -target-language $SOURCE_0 -locations none $POFILE -o $DIR_MESSAGES/$FILE_NAME.qm
        fi
      }

      for file in $(ls /usr/share/locale/ca/LC_MESSAGES)
        do
          EXIST='0'
          FILE_NAME=$(echo "$file" | sed "s/\.\(mo\|qm\)//")
          [ -f /usr/share/locale/ca/LC_MESSAGES/$FILE_NAME.mo ] && fes_mo $FILE_NAME
          [ -f /usr/share/locale/ca/LC_MESSAGES/$FILE_NAME.qm ] && fes_qm $FILE_NAME
        done

      # qt5 qt5keychain buho kid3 smplayer qt6 subsurface gcompris-qt sddm pavucontrol-qt kImageAnnotator
      [ "$BRANCA" = 'trunk' ] && return
      if   [ -f /usr/share/gcompris-qt/translations/gcompris_ca.qm ];then
          DIR_MESSAGES="/usr/share/gcompris-qt/translations"
          fes_qm gcompris_qt gcompris_$SOURCE_0
      elif [ -f /usr/share/buho/translations/buho_ca.qm ];then
          DIR_MESSAGES="/usr/share/buho/translations"
          fes_qm buho buho_$SOURCE_0
      fi
    }

    installa_tot trunk
    # Missing link
        # sudo ln -sf /usr/share/locale-langpack/ca/LC_MESSAGES/coreutils.mo /usr/share/locale/ca/LC_MESSAGES/coreutils.mo
    # LC_SCRIPTS
        # sudo mkdir -p /usr/share/locale/ca@valencia/LC_SCRIPTS/ki18n5/
        # sudo cp -f ca@valencia/scripts/ki18n/ki18n5/ki18n5.js /usr/share/locale/ca@valencia/LC_SCRIPTS/ki18n5/
    # Desktop
        # sudo cp -f ca@valencia/messages/kconfigwidgets/kf5_entry.desktop /usr/share/locale/ca@valencia/kf5_entry.desktop
    installa_tot stable
  ;;
  sense_installar)
    DIR_ST="$DIR0/$TRUNK/ca@valencia/messages"

    for file in $(ls /usr/share/locale/ca/LC_MESSAGES)
      do
        executa() {
          FILE_NAME=$(echo "$file" | sed "s/\.\(mo\|qm\)//")
          POFILE="$(find $DIR_ST -type f -name $FILE_NAME.po)"
          echo " * $file -> $POFILE"
        }

        [ -f /usr/share/locale/ca@valencia/LC_MESSAGES/$file ] || executa
      done
  ;;
  revisa)
    [ -d ca/messages/digikam-doc/ ] || exit 0
    echo -e "\n* digiKam:\n  _______\n"
    echo -e "\n - Regla: apps-multimedia.rules.disabled\n   *************************************\n\n"
    posieve check-rules -s rfile:$HOME/Documents/Treball/svn/kde/pology/lang/ca/rules/apps-multimedia.rules.disabled ca/messages/digikam-doc/docs_digikam_org_$2*
    echo -e "\n - Regla: esmenes.rules\n   ********************\n\n"
    posieve check-rules -s rfile:Carpeta_nova/Treball/esmenes.rules ca/messages/digikam-doc/docs_digikam_org_$2*
    echo -e "\n - Regla: TOTES\n   *************\n\n"
    posieve check-rules ca/messages/digikam-doc/docs_digikam_org_$2*
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

    DIRSRC="$DIR0/$TRUNK/ca/$MESSAGES"
    DIRMOD="$DIR1/ca-mod/$MESSAGES"
    DIROBJ="$DIR1/ca/$MESSAGES"

    FOLDERS_5="$(find $DIRSRC/ -type d -name "$2")"
    FOLDERS_6="$(find $DIR0/$TRUNK6/ca/$MESSAGES/ -type d -name "$2")"
    if   [ "$FOLDERS_5" ]; then
        BRANCA="$TRUNK"
        FOLDERS="$(basename -a $FOLDERS_5)"
    elif [ "$FOLDERS_6" ]; then
        BRANCA="$TRUNK6"
        DIRMOD="$DIR1/ca-mod/$MESSAGES/kf6"
        FOLDERS="$(basename -a $FOLDERS_6)"
      else
        echo -e "\033[47;31mERROR:\e[0m Indiqueu una carpeta vàlida (p. ex., kstars) o prefix de carpetes (p. ex., websites-*) com a entrada!"
        exit 0
    fi
    DIRSRC="$DIR0/$BRANCA/ca/$MESSAGES"
    DIRTEM="$DIR0/$BRANCA/templates/$MESSAGES"

    llista() {
      for folder in $FOLDERS
        do
          FILES="$(find $DIR0/$BRANCA/ca/$MESSAGES/$folder/* -type f -name "*.po" 2>/dev/null)"
          for file in $FILES
            do
              DIR=$(basename $(dirname $file))
              PO="$(basename $file)"

              if [ "$1" = "1" ]; then
                msgmerge --silent --previous --width=79 --lang=ca $DIRSRC/$DIR/$PO $DIRTEM/$DIR/${PO}t --output-file=$DIROBJ/$DIR/$PO
              fi
              if [ "$1" = "2" ]; then
                MEM_DIR="$(echo /run/user/$(id -u))"
                cd $MEM_DIR
                [ -e $DIRMOD/$DIR/$PO ] && DIRSRC="$DIRMOD"

                msgmerge --silent --previous --no-wrap $DIRSRC/$DIR/$PO $DIRTEM/$DIR/${PO}t --output-file=missatges-$PO
                $DIR1/kde-src2valencia.sed < missatges-$PO > missatges_1-$PO && rm -f missatges-$PO
                msgmerge --silent --previous --width=79 --lang=ca missatges_1-$PO $DIRTEM/$DIR/${PO}t --output-file=missatges_2-$PO && rm -f missatges_1-$PO
                mv -f missatges_2-$PO $DIROBJ/$DIR/$PO
              fi
              if [ "$1" = "3" ];then
                [ -e $DIRMOD/$DIR/$PO ] && DIRSRC="$DIRMOD"
                cp -f $DIRSRC/$DIR/$PO $DIROBJ/$DIR/$PO
              fi
              DIRSRC="$DIR0/$BRANCA/ca/$MESSAGES"
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
    DIR="knotifications"
    PO="knotifications6_qt.po"
    DIRMOD="$DIR1/ca-mod/messages/$DIR"
    DIRSRC="$DIR0/$TRUNK/ca/messages/$DIR"
    DIRTEM="$DIR0/$TRUNK/templates/messages/$DIR"

    if [ -e "$DIR0/$TRUNK6/ca/messages/$DIR/$PO" ]; then
      DIRSRC="$DIR0/$TRUNK6/ca/messages/$DIR"
      DIRTEM="$DIR0/$TRUNK6/templates/messages/$DIR"
    fi
    [ -e "$DIRMOD/$PO" ] && DIRSRC="$DIRMOD"
    echo -e "\033[47;31mPrimer:\e[0m s'executa «msgmerge»"
    MISSATGE_DIFF="[missatges-$PO]: Res"
    pregunta
    msgmerge --silent --previous --no-wrap $DIRSRC/$PO $DIRTEM/${PO}t --output-file=missatges-$PO
    msgfmt --statistics missatges-$PO

    echo -e "\033[47;31mSegon:\e[0m ara es passa per sed amb l'script «kde-src2valencia.sed»"
    MISSATGE_DIFF="[missatges_1-$PO]: Res"
    pregunta
    $DIR1/kde-src2valencia.sed        < missatges-$PO   > missatges_1-$PO
    msgfmt --statistics missatges_1-$PO

    echo -e "\033[47;31mTercer:\e[0m es passa per sed amb l'script «all-src2valencia-adapta.sed»"
    MISSATGE_DIFF="[missatges_2-$PO]: Res"
    pregunta
    $DIR1/all-src2valencia-adapta.sed < missatges_1-$PO > missatges_2-$PO
    msgfmt --statistics missatges_2-$PO

    echo -e "\033[47;31mQuart:\e[0m es passa per sed amb l'script «all-src2valencia.sed»"
    MISSATGE_DIFF="[missatges_3-$PO]: Res"
    pregunta
    $DIR1/all-src2valencia.sed        < missatges_2-$PO > missatges_3-$PO
    msgfmt --statistics missatges_3-$PO

    echo -e "\033[47;31mCinquè i últim:\e[0m es torna a executar «msgmerge»"
    MISSATGE_DIFF="[$PO]: Res"
    pregunta
    msgmerge --silent --previous --width=79 --lang=$SOURCE_0 missatges_3-$PO $DIRTEM/${PO}t --output-file=$PO && rm -f missatges_3-$PO2
    msgfmt --statistics $PO
    kwrite missatges_3-$PO && rm -f *.po
  ;;
  *)
    sortida_po
  ;;
esac

exit 0

