#!/bin/sh

DIR1="$(echo $PWD)"
DIR0="$(cd ../../../.. ; echo $PWD)"
cd $DIR1
STABLE="stable/l10n-kf5"
TRUNK="trunk/l10n-kf5"
TRUNK6="trunk/l10n-kf6"
MSG='msgstr'
SOURCE_0='ca@valencia'
TEXT="$2"

APPEND='\[|\*|\*\*|\*\*\*|&|«|<[^<]{1,}>'
APPEND_A="K3b|KDevelop|[Aa]ccedir|[Aa]ccés|[Aa]costuma|[Aa]costumada|[Aa]costumades|[Aa]costumats?|[Aa]costumeu|[Aa]fanyeu|[Aa]fanyeu-vos|[Aa]juda els infants molt menuts o els adults|[Aa]judar?|[Aa]judar? a (en Joaquim|en Tux|l'Alícia|l'usuari|na Maria)|[Aa]juda als (animals|desenvolupadors d'aplicacions)|[Aa]juda els editors|[Aa]judar a la muntura|[Aa]judar?-l[ao]|[Aa]judar-me|[Aa]judar-[nv]os|[Aa]judar-te|[Aa]judarà|[Aa]judaran|[Aa]judarem|[Aa]jude[nu]|[Aa]judeu en Tux|[Aa]jud[ei]|[Aa]jud[ei]n|[Aa]judeu-l[ao]|[Aa]judeu-nos|[Aa]nava|[Aa]ne[mu]|[Aa]nimem|[Aa]nimem molt més|[Aa]nimi als altres|[Aa]plica|[Aa]prendran|[Aa]prendre|[Aa]preneu|[Aa]rribem?|[Aa]utoritzat?|[Aa]utoritza aquest contacte|[Aa]utoritzada|[Aa]utoritzades|[Cc]anvia[rt]?|[Cc]anvia els segments|[Cc]ap|[Cc]om|[Cc]omençar?|[Cc]omençant|[Cc]omençar immediatament|[Cc]omençarà|[Cc]omençaran|[Cc]omençat|[Cc]omenc[ei]n?|[Cc]comencéssiu|[Cc]omenceu|[Cc]ompromès|[Cc]omprometen|[Cc]omprometen..b.|[Cc]onvidem|[Cc]auen?|[Cc]auràs|[Cc]aure|[Cc]av[aei]|[Cc]onverteix|[Cc]onverteix (els clons|les formes)|[Cc]onverteixen|[Cc]onvidat?|[Cc]orr[ei]|[Dd]amunt seu|[Dd]esafia als jugadors|[Dd]onem la benvinguda a tothom|[Dd]e cara|[Dd]ecidida|[Dd]ecidides|[Dd]ecidits?|[Dd]edicada|[Dd]edicades|[Dd]edicats?|[Dd]edicaven|[Dd]egut|[Dd]estinar?|[Dd]estinada|[Dd]estinades|[Dd]estinats?|[Dd]onarà|[Dd]ret|[Dd]ubteu|[Ee]nsenya[rt]?|[Ee]nsenyarà|[Ee]nsenyeu|[Éé]s a dir,|[Ee]sperant|[Ee]xcava|[Ee]stableix el camí de l'aplicació|[Ee]stablerta?|[Ee]stan autoritzats|[Ee]stona|[Ff]ins|[Ff]orça|[Ff]orça'l|[Ff]orça l'ordinador|[Hh]abituada|[Hh]abituades|[Hh]abituats?|[Ii]nteressada|[Ii]nteressades?|[Ii]nteressats?|[Ii]ntroducció|[Ll]imita|[Ll]lança't|[Mm]olt|[Oo]bligar?|[Oo]bligada|[Oo]bligades|obligar al Krita|[Oo]bligats?|[Oo]rienta[rt]?|[Pp]enseu|[Pp]er|[Pp]orta|[Pp]ortarà?|[Qq]ualsevol ús subjecte|[Qq]uant|[Rr]eferències|[Rr]estringit el dret|[Rr]es|[Ss]alta|[Ss]emblant|[Ss]imilar|[Tt]emps|[Tt]orna'ls|[Tt]ornada|[Tt]orn[aeio][rt]?|[Tt]ornant|[Tt]ornant-l[ao]|[Tt]ornant-se|[Tt]ornar?-ho|[Tt]ornar?-l[eo]s|[Tt]ornar?-l[ao]|[Tt]ornar-se|[Tt]ornarà|[Tt]ornaran|[Tt]orne[nu]|[Tt]orn[ei]s|[Tt]orneu-ho|[Tt]orneu-l[ao]|[Tt]orneu-l[eo]s|[Tt]rigar? una mica|[Tt]robar?|[Tt]robeu|[Uu]na mica|[Vv]agi|[Vv]ingut"
APPEND_AL1="accedir|[Aa]ccés ràpid|[Aa]fegeix|[Aa]fegeix (aquesta pàgina|aquesta compartició|l'enllaç|les pestanyes &marcades|les pestanyes seleccionades|&?totes les pestanyes|una nova funcionalitat)|[Aa]fegida|[Aa]fegides|[Aa]fegirà?|afegir fitxers d'imatge JPEG|afegir..em. fotogrames|[Aa]fegi[ru]-la|[Aa]fegiu (aquesta funció|la funció <firstterm>waitFor<.firstterm>)|[Aa]fegiran|[Aa]fegits?|[Aa]judar-nos els uns|[Aa]just|[Aa]mplia la cerca|[Aa]nar|[Aa]neu|[Aa]nimi|Anota (aquest àlbum|aquest artista|la vista d'orígens de suports|les miniaplicacions de context|les miniaplicacions de vista de context)|Aplica la llista de preferències de dispositiu actualment mostrada|[Aa]plica[rt]?|aplicar-les|[Aa]plicarà|[Aa]plicats|[Aa]rribaràs|[Aa]ssigna|[Aa]ssigna Assigna una (categoria|prioritat més (alta|baixa))|baixar|benvinguda|[Cc]anvia|[Cc]anviar la cistella actual|[Cc]ap|[Cc]erca|[Cc]lic( central| del mig| dret| esquerre)?|[Cc]ommutar?|[Cc]onnexió|cop d'ull|[Cc]opia[rt]?|[Cc]opia (el fitxer d'un plafó|un canal|un canal d'àudio)|[Cc]opiar (el fitxer %1|fitxers d'un|la carpeta %1)|[Cc]orrespon|crear..em. una <em>escena..em. nova|[Cc]reuar?|creuem|[Dd]esplaça (endavant|enrere)|dona per defecte|donar-li|difereixen d'un dispositiu|Envia ara el correu|Envia un correu|Envia una (BCC|CC):|[Ee]nvia un missatge|enviar (el missatge a un altre usuari|fitxers)|enviant|[Ee]nviarà|Estableix respon A:|establir la data|[Ff]ins|hi ha|[Ii]nformar?|[Ll]imitar?|[Mm]ou|[Mm]ou (el fitxer d'un plafó|la pestanya actual)|moure (el fitxer %1|la carpeta %1)|moure's d'est a oest d'una nit|ocultar la vostra adreça IP|passar|[Pp]er|[Pp]ermeteu|[Pp]ertany|[Pp]ertanyen|[Pp]oseu un nom|[Pp]rohibeix|proximitat propera l'un|[Qq]uant|[Rr]especte|[Rr]estringeix|[Rr]obar el focus|[Ss]egueix immediatament|[Ss]emblant|[Ss]imilar|[Tt]orna automàticament|[Tt]ornarà|[Vv]a|[Vv]aig|[Vv]es"

sortida_po() {
  echo "$0 [opció] (arguments)?

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
  modifica_capçalera fitxer.po    * \033[1;37mActualitza la informació a la capçalera\e[0m.
  adapta_valencia (recursiu|usuari)
                                  * \033[47;31mAdapta el SVN de KDE en totes les branques.\e[0m
  crea_po (gui|doc)               * \033[1;37mCrea els fitxers PO que es mantenen\e[0m.
  neteja_ca (gui|doc)             * \033[1;37mEs fan còpies de seguretat tot netejant l'arbre\e[0m.

  \033[1;37mMANTENIMENT\n  -----------\e[0m
  \033[47;31mactualitza_svn_local\e[0m            \033[1;37mActualitza l'SVN local amb trunk\e[0m.
                                  \033[47;31mNOTA:\e[0m Després s'han d'entregar manualment els canvis!
  \033[47;31mcopia_aquests\e[0m [núm. comissió]   * \033[1;37mAdapta els PO amb modificacions\e[0m en el SVN de KDE.
  \033[47;31minstalla_va\e[0m                     * \033[1;37mInstal·la les traduccions\e[0m.
  sense_installar                 \033[1;37mObjectius futurs\e[0m [?].
  revisa                          Revisa la documentació del digiKam.

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
  - documentation               \033[1;37m[carpeta on es descarrega la documentació orginal]\e[0m
  - templates                   \033[1;37m[SVN de les plantilles de traducció]\e[0m

  - ca-mod                      \033[1;37m[carpeta amb les traduccions modificades]\e[0m

  · c_crea_val-po.sh            \033[1;37m[aquest script]\e[0m
                                \033[1;37mRepo:\e[0m https://websvn.kde.org/trunk/l10n-support/ca/scripts/
  · adapta-kde_recursivament.sh \033[1;37m[script en Bash que adapta amb els scripts en SED]\e[0m
                                \033[1;37mRepo:\e[0m https://github.com/Softcatala/adaptadorvariants/pull/13
  · kde-src2valencia.sed        \033[1;37m[els scripts en SED, en odre de processament]\e[0m
                                \033[1;37mRepo:\e[0m sense publicar
  · all-src2valencia.sed
                                \033[1;37mRepo:\e[0m https://github.com/Softcatala/adaptadorvariants/pull/13

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
            echo " * $PACKAGE"
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
    # Les primeres escriptures van a l'espai d'usuari en la memòria del sistema (molt més ràpid, alleuja i allarga la vida)
    MEM_DIR="$(echo /run/user/$(id -u))"
    cd $MEM_DIR

    echo "   -- ($1) $PO2"
    # Fem que les frases/paràgrafs siguin d'una sola línia:
    msgmerge --silent --previous --no-wrap $CA_MOD $DIRTEM/${PO2}t --output-file=missatges-$PO2

    # Executem la conversió del fitxer PO
    $DIR1/kde-src2valencia.sed < missatges-$PO2   > missatges_1-$PO2 && rm -f missatges-$PO2
    $DIR1/all-src2valencia.sed < missatges_1-$PO2 > missatges_2-$PO2 && rm -f missatges_1-$PO2

    mkdir -p $DIRDES
    # Es torna a donar el format amb 78 files
    msgmerge --silent --previous --width=79 --lang=$SOURCE_0 missatges_2-$PO2 $DIRTEM/${PO2}t --output-file=$PO2 && \
    mv -f $PO2 $DIRDES/$PO2 && rm -f missatges_2-$PO2
    cd $DIR1
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

  for po in $(find $DIR1/$DIRMOD/* -maxdepth 0 -type f -name "*.po")
    do
      PO2="$(basename $po)"
      if   [ -f $DIR0/$TRUNK/$DIROBJ/$PO2 ]; then
          mkdir -p $DIROBJ
          echo "   -- (KF5) $PO2"
          msgmerge --silent --previous --width=79 --lang=ca $DIRMOD/$PO2 $DIR0/$TRUNK/$DIRTEM/${PO2}t  --output-file=$DIR0/$TRUNK/$DIROBJ/$PO2
          posieve  remove-obsolete $DIR0/$TRUNK/$DIROBJ/$PO2
          msgfmt   --statistics    $DIR0/$TRUNK/$DIROBJ/$PO2
          if [ -f $DIR0/$STABLE/$DIROBJ/$PO2 ]; then
            if [ -d $DIRMOD/stable ]; then
              CA_MOD="$DIRMOD/stable/$PO2"
              mkdir -p $DIROBJ
              echo "   -- (stable) $PO2"
              msgmerge --silent --previous --width=79 --lang=ca $CA_MOD $DIR0/$STABLE/$DIRTEM/${PO2}t  --output-file=$DIR0/$STABLE/$DIROBJ/$PO2
              posieve  remove-obsolete $DIR0/$STABLE/$DIROBJ/$PO2
              msgfmt   --statistics    $DIR0/$STABLE/$DIROBJ/$PO2
            fi
          fi
      fi
      if [ -f $DIR0/$TRUNK6/$DIROBJ/$PO2 ]; then
          CA_MOD="$DIRMOD/kf6/$PO2"
          mkdir -p $DIROBJ
          echo "   -- (KF6) $PO2"
          msgmerge --silent --previous --width=79 --lang=ca $CA_MOD $DIR0/$TRUNK6/$DIRTEM/${PO2}t  --output-file=$DIR0/$TRUNK6/$DIROBJ/$PO2
          posieve  remove-obsolete $DIR0/$TRUNK6/$DIROBJ/$PO2
          msgfmt   --statistics    $DIR0/$TRUNK6/$DIROBJ/$PO2
      fi
    done
}

neteja_ca() {
  DIROBJ="ca/$MESSAGES/$1"
  DIRMOD="ca-mod/$MESSAGES/$1"
  DIRTEM="templates/$MESSAGES/$1"

  for po in $(find $DIR1/$DIRMOD/* -maxdepth 1 -type f -name "*.po")
    do
      PO2="$(basename $po)"
      if [ -e $DIR0/$TRUNK/$DIROBJ/$PO2 ]; then
        echo "* KF5 -> $DIRMOD/$PO2"
        cp -f  $DIR0/$TRUNK/$DIROBJ/$PO2     $DIR1/$DIROBJ/$PO2
        mv -f  $DIR0/$TRUNK/$DIROBJ/$PO2     $DIR1/$DIRMOD/$PO2
        cp -f  $DIR0/$TRUNK/$DIRTEM/${PO2}t  $DIR1/$DIRTEM/${PO2}t
        if [ -e $DIR0/$STABLE/$DIROBJ/$PO2 ]; then
          mkdir -p $DIRMOD/stable
          echo "* KF5 -> $DIRMOD/stable/$PO2"
          mv -f $DIR0/$STABLE/$DIROBJ/$PO2   $DIR1/$DIRMOD/stable/$PO2
        fi
      fi
      if [ -e $DIR0/$TRUNK6/$DIROBJ/$PO2 ]; then
        mkdir -p $DIRMOD/kf6
        echo "* KF6 -> $DIRMOD/kf6/$PO2"
        cp -f  $DIR0/$TRUNK6/$DIROBJ/$PO2    $DIR1/$DIROBJ/$PO2
        mv -f  $DIR0/$TRUNK6/$DIROBJ/$PO2    $DIR1/$DIRMOD/kf6/$PO2
        cp -f  $DIR0/$TRUNK6/$DIRTEM/${PO2}t $DIR1/$DIRTEM/${PO2}t
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
        echo "\e[38;5;46m * $DIR -\e[0m \e[38;1;33m $MSG:  $(echo "$TEXT") \e[0m\n"
        [ -z $1 ] && echo "\033[1;37m $MISSATGE \e[0m\n"
        read -p "Voleu procedir? (Sí/no) " sn
        case $sn in
          no )
            echo " - Se surt..."
            exit 1
          ;;
          *)
            if [ $TEXT2 ]; then
                posieve find-messages -s fexpr:"msgstr/\ba $TEXT/ and not msgstr/\b$TEXT2) a (\[|«|<[^<]{1,}>|)$TEXT/" "$SOURCE/${DOC}messages/$DIR"
                TEXT2=
            elif [ $TEXT3 ]; then
                echo "\n\n - Doc:\n   ****"
                [ -d "$SOURCE/docmessages/$DIR" ] && \
                posieve find-messages -s fexpr:"msgstr/\ba ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_A) a ($APPEND|)$TEXT/" "$SOURCE/docmessages/$DIR"
                echo "\n\n - IGU:\n   ****"
                posieve find-messages -s fexpr:"msgstr/\ba ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_A) a ($APPEND|)$TEXT/" "$SOURCE/messages/$DIR"
              else
                posieve find_messages -s$MSG:"$TEXT" $SOURCE/${DOC}messages/$DIR
            fi
          ;;
        esac
}

cerca_and_not() {
  SOURCE="$SOURCE_0"
  if   [ "$1" = 'ca' ]; then
      SOURCE='ca'
  fi
  echo "\n\n - Doc:\n   ****"
  [ -d "$SOURCE/docmessages/$DIR" ] && \
  posieve find-messages -s fexpr:"$STRING" "$SOURCE/docmessages/"
  echo "\n\n - IGU:\n   ****"
  posieve find-messages -s fexpr:"$STRING" "$SOURCE/messages/"
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
    WORD='4,15'
    TEXT="\ba ($APPEND|)\w{$WORD}"
    TEXT2="\b($APPEND_A) a ($APPEND|)\w{$WORD}"
    MISSATGE="$MISSATGE1 ** a inserir -> que cal inserir / que s'ha d'inserir / que s'inserirà **"
    prompt_1
    WORD='2,15'
    TEXT="\ba l'\w{$WORD}"
    MISSATGE="$MISSATGE1 ** amb / en l' **"
    prompt_1
    WORD='4,15'
    TEXT="\ba la \w{$WORD}"
    MISSATGE="$MISSATGE1 ** amb / en la **"
    prompt_1
    WORD='4,15'
    TEXT="\ba les \w{$WORD}"
    MISSATGE="$MISSATGE1 ** amb / en les **"
    TEXT="\ba on "
    MISSATGE="$MISSATGE1 ** a on cal / s'ha(n) **"
    prompt_1
    TEXT="\ba un(es)? "
    MISSATGE="$MISSATGE1 ** amb / en un(es) **"
    prompt_1
    TEXT="\bals? "
    MISSATGE="$MISSATGE1 ** amb / en els? **"
    prompt_1
    TEXT="\bcàrreg(a|ues)"
    MISSATGE="$MISSATGE1 ** carrega(ues) **"
    prompt_1
    TEXT="\bdest(í|inació|inacions|ins)"
    MISSATGE="$MISSATGE1 ** destinació / destí **"
    prompt_1
    TEXT="\bdiverses"
    MISSATGE="$MISSATGE1 ** múltiples **"
    prompt_1
    TEXT="^Error"
    MISSATGE="$MISSATGE1 ** S'ha produït un error **"
    prompt_1
    TEXT="\bextr(a|es)\b"
    MISSATGE="$MISSATGE1 ** addicional(s) **"
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
    TEXT="\bon "
    MISSATGE="$MISSATGE1 ** en, sobre **"
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
        SOURCE='ca'
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

    STRING="msgstr/\ba ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_A) a ($APPEND|)$TEXT/"
    cerca_and_not
  ;;
  cerca_dir_al1)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"

    STRING="msgstr/\ba l'($APPEND|)$TEXT/ and not msgstr/\b($APPEND_AL1) a l'($APPEND|)$TEXT/"
    cerca_and_not $2
  ;;
  cerca_dir_ala)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"

    STRING="msgstr/\ba la ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_AL1) a la ($APPEND|)$TEXT/"
    cerca_and_not $2
  ;;
  cerca_dir_ales)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"

    STRING="msgstr/\ba les ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_AL1) a les ($APPEND|)$TEXT/"
    cerca_and_not $2
  ;;
  cerca_dir_al)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"

    STRING="msgstr/\bal ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_AL1) al ($APPEND|)$TEXT/"
    cerca_and_not $2
  ;;
  cerca_dir_als)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"

    STRING="msgstr/\bals ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_AL1) als ($APPEND|)$TEXT/"
    cerca_and_not $2
  ;;
  cerca_dir_auns)
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep -P "^([cv]a)$")" ] || sortida_po
    [ "$3" ] || sortida_po
    TEXT="$3"

    STRING="msgstr/\ba uns? ($APPEND|)$TEXT/ and not msgstr/\b($APPEND_AL1) a uns? ($APPEND|)$TEXT/"
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
    [ "$2" ] || sortida_po
    CADENA="akonadi akregator alk alli am an ap ar at au b cal can ce ch cl co cu day di do dr e f g h ik inc index-fm iso it j k3b ka kb kc kda kdb kde-c kde-d kde-g kde-i kde-n kdeb kdec kded kdeg kdel kden kdep kdes kdev kdf kdi kdn kdo ke kf kg kh ki kj kl km kn ko kp kr ks kt ku kw kx l m n o p q r s tel to tr u v w x y z"
    for cadena in $CADENA
      do
        echo "\e[38;5;46m * $cadena/* -\e[0m \e[38;1;33m $(echo "$TEXT") \e[0m"
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
      echo "\n - Ha de posar: «$3»\n"
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
    ./adapta-kde_recursivament.sh recursiu
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
    echo "\n# stable_kf5 / stable_lts_kf5 / trunk_kf5 / trunk_kf6"
    echo "SCRIPTY_I18N_BRANCH='trunk_kf5' l10n-scripty/update_xml $SOURCE_0"
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
    esac
    echo -e "\n * S'està actualitzant KF5 «stable»:"
    cd $DIR0/$STABLE/ca/ && svn update
    echo -e "\n * S'està actualitzant KF5 «trunk»:"
    cd $DIR0/$TRUNK/ca/  && svn update
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
      [ -d $1/websites-skrooge-org ]            && rm -Rf $1/websites-skrooge-org
    }

    for obj in ca ca@valencia templates
      do
        echo "- kf5 $obj"
        rm -Rf $obj/messages/*
        cp -r ../../$obj/messages/* $obj/messages/
        [ "$obj" = "templates" ] || elimina_carpetes $obj/messages
        echo
      done

    for obj in ca ca@valencia templates
      do
        echo "- kf6 $obj"
        cp -r ../../../l10n-kf6/$obj/messages/* $obj/messages/
        echo
      done
    cp -rf ca-mod/messages/* ca/messages/

    posieve --quiet remove-obsolete ca/messages/
  ;;
  copia_aquests)
    comprova_lloc
    [ "$2" ] || sortida_po
      [ "$(echo $2 | grep "^[0-9]*$")" ] || sortida_po
    commits_num(){
      cd $SOURCE_0
      FITXERS="$(svn log --verbose -r $1 | grep '\/messages\/' | sed 's/\(^.*\)Treball\/ca@valencia\/messages\///g' | sed 's/$/\\n/g')"
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
    echo -e "head ~/.config/plasma-localerc
[Formats]
LANG=ca_ES.UTF-8

[Translations]
LANGUAGE=ca@valencia:ca:en_US\n"

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

      if [ -f /usr/share/gcompris-qt/translations/gcompris_ca.qm ];then
          [ "$BRANCA" = 'trunk' ] && return
          DIR_MESSAGES="/usr/share/gcompris-qt/translations"
          fes_qm gcompris_qt gcompris_$SOURCE_0
      fi
    }

    installa_tot trunk
    # Missing link
        sudo ln -sf /usr/share/locale-langpack/ca/LC_MESSAGES/coreutils.mo /usr/share/locale/ca/LC_MESSAGES/coreutils.mo
    # LC_SCRIPTS
        sudo mkdir -p /usr/share/locale/ca@valencia/LC_SCRIPTS/ki18n5/
        sudo cp -f ca@valencia/scripts/ki18n/ki18n5/ki18n5.js /usr/share/locale/ca@valencia/LC_SCRIPTS/ki18n5/
    # Desktop
        sudo cp -f ca@valencia/messages/kconfigwidgets/kf5_entry.desktop /usr/share/locale/ca@valencia/kf5_entry.desktop
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
  *)
    sortida_po
  ;;
esac

exit 0

