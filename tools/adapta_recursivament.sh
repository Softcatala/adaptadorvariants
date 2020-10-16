#!/bin/bash
#
# TODO:
# Més proves i polir el codi.
# Si teniu cap idea...

# Mira si es treballa sobre la branca «stable» o «trunk» (stable/l10n-kf5)
BRANCA=$(dirname $PWD | xargs basename)
# Mira si es treballa sobre la versió «kde4» o «kf5» (stable/l10n-kf5-plasma-lts)
ESCRIPTORI=$(basename $PWD)

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

# Establim la capçalera
capçalera() { echo -e "\n** \e[1m$BRANCA/$ESCRIPTORI\e[0m ** \e[1m->\e[0m {$DATA}:{$DEMA} \e[1mHORA=\e[0m$HORA\n  ****************$([ $ESCRIPTORI = "l10n-kf5-plasma-lts" ] && echo "************")\n$1"; }

# En aquest fitxer es desa el temps del darrer commit (format: 20151211 184747)
DATAF='data_ca-valencia.log'
if [ -f $DATAF ]; then
    DATA=$(cat $DATAF | awk '{print $1}')
    # Ens calen uns valors inicials
    [ $DATA ] && HORA=$(cat $DATAF | awk '{print $2}')
    [ $HORA ] || HORA='000000'
    # S'afegeix 1 segon per ometre els últims fitxers ja revisats
    HORA="$(printf %06d $[10#$HORA + 1])"
    # Quan se sol·licita un interval al registre, cal demanar un dia més
    DEMA=$(date +%Y%m%d -d "+1 days")
    # Establir els usuaris seguits (els caràcters «\|» són per a l'ordre «grep»)
    USUARIS_SVN="aacid\|apol\|bellaperez\|jferrer\|omas"
    # Establir els coordinadors de les traduccions (només s'aplica sobre «stable»)
    [ $BRANCA = "stable" ] && USUARIS_SVN="$USUARIS_SVN\|lueck\|ltoscano"
    # Primer es comprova si cal actualitzar
    # TODO: Amb el canvi a Git es podrà emprar la hora de canvi
    if [ $(date +%Y%m%d) -eq $DATA ]; then
#         if [ ! $(LANG=C; svn log -r {$(date +%Y%m%d)}:{$DEMA} ca/messages | grep "$USUARIS_SVN" | head -1 | awk '{print $5}' | tr -d '-') ]; then
            capçalera
            echo -e " \e[38;5;82m-\e[0m Aquestes traduccions ja estan actualitzades (Data: $DATA)\n"
            exit 0
#         fi
    fi
    # S'obté el temps de modificació SVN des de la carpeta
    DATA_CANVI=$(LANG=C; svn info ca/messages | grep "^Last Changed Date:" | awk '{print $4}' | tr -d "-")
    HORA_CANVI=$(LANG=C; svn info ca/messages | grep "^Last Changed Date:" | awk '{print $5}' | tr -d ":")
    # I ja s'estableixen com a valors finals
    DATA_CANVI_SVN=$DATA_CANVI
    HORA_CANVI_SVN=$HORA_CANVI
    if [ $ESCRIPTORI = "l10n-kf5-plasma-lts" ]; then
        capçalera
        echo -e " \e[38;5;82m-\e[0m Aquestes traduccions són mantingudes per l'equip de valencià (Data: $DATA)\n"
        # Actualització normal
        echo "$DATA_CANVI_SVN $HORA_CANVI_SVN" > $DATAF
        exit 0
    fi
  else
    echo -e "\nError «$1»: No existeix el fitxer $DATAF."
    echo    "  Creeu-lo manualment o empreu primer l'opció «recursiu»."
    echo    "  Es tracta de no permetre executar aquesta opció"
    echo    "  sobre tots els elements en el repositori."
    echo -e "  Format: 20151211 184747\n"
    exit 0
fi

genera_copia() {
  # No cal processar (segons antiguitat)
  [ $CANVIA -eq 0 ] && echo -e " \e[38;5;82m-\e[0m $PO \e[1m->\e[0m $DATA_CANVI $HORA_CANVI" && return 0

  # Si no existeix el directori, el creem
  mkdir -p ca@valencia/$DIR

  # El caràcter «*» indica que aquest fitxer ha estat modificat
  echo -e " \e[44m*\e[0m ca@valencia/$PO \e[1m->\e[0m $DATA_CANVI $HORA_CANVI"

  # Fem que les frases/paràgrafs siguin d'una sola línia:
  msgmerge --silent --previous --no-wrap ca/$PO templates/${PO}t --output-file=missatges-$FITX

  # Executem la conversió del fitxer PO
  ./src2valencia.sed < missatges-$FITX > missatges_2-$FITX && rm -f missatges-$FITX

  # Es torna a donar el format amb 78 files
  msgmerge --silent --previous --width=80 --lang=ca@valencia missatges_2-$FITX templates/${PO}t --output-file=ca@valencia/$PO && \
  rm -f missatges_2-$FITX

  # S'ha de corregir la capçalera
#   posieve set-header -sfield:"Report-Msgid-Bugs-To:https://bugs.kde.org" -screate -safter:'Project-Id-Version' -sreorder ca@valencia/$PO

  # Es realitza un avís per si la nova traducció conté missatges sense fer
  msgfmt --statistics ca@valencia/$PO

  # Es convida algun col·laborador/a de València
  if [ $FITX = "gcompris_qt.po" ]; then
      echo -e "\n Nota:  El fitxer «$FITX» conté una millora addicional\n\tper a convidar a traductors valencians.\n"
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

[ -z $ANULA ] && capçalera "\e[1mLlegenda:\e[0m \e[44m*\e[0m s'ha modificat, \e[38;5;82m-\e[0m no cal actualitzar \e[38;5;46mo\e[0m mantingut per l'equip valencià\n" && ANULA="1"

comprova_usuari() {
  # Mira al registre si cap usuari seguit ha realitzat canvis en el fitxer
  if [ "$(LANG=C; svn log -r {$DATA}:{$DEMA} $SVN_URL/$PO | grep "$USUARIS_SVN" | awk '{print $3}' | tail -1)" ]; then
      # Si la data de canvi SVN del fitxer és més gran que l'última al cau, es modifica
      if [ $DATA_CANVI -gt $DATA ]; then
          CANVIA='1'
      elif [ $DATA_CANVI -eq $DATA ]; then
          # Si la data de canvi SVN del fitxer és igual que l'última al cau, es comprova hora major i es modifica
          [ $HORA_CANVI -gt $HORA ] && CANVIA='1'
        else
          CANVIA='0'
      fi
    else
      CANVIA='0'
  fi
}

cerca_po() {
  # Cerca les plantilles de traducció i les ordena
  cd ca
  FITXERPO=$(find messages/* -type f -name "*.po" | sort)
  cd ..
}

case $1 in
  usuari)
    [ "$USUARIS_SVN" ] || $(echo -e "\nError: no heu establert cap usuari seguit!\n"; exit 0)
    cerca_po
  ;;
  recursiu)
    CANVIA='1'
    cerca_po
  ;;
  fitxer)
    CANVIA='1'
    PO="$2"
    if [ -f ca/$PO ]; then
        FITX=$(basename $PO)
        if   [ $(file ca/$PO | awk '{print $2$3$4$5$6}') = "GNUgettextmessagecatalogue,ASCII" ]; then
            capçalera && genera_copia && exit 0
        elif [ $(file ca/$PO | awk '{print $2$3$4$5$6}') = "GNUgettextmessagecatalogue,UTF-8" ]; then
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
    echo    " usuari       : Mode SVN: mira l'última data i hora de canvi per als usuaris seguits."
    echo    "                Empra la data al fitxer $DATAF i processa les\n\t\tiguals o posteriors."
    echo -e "                Usuaris seguits = $(echo $USUARIS_SVN | sed -e s,.\|,\ , -e s,.\|,\ , -e s,.\|,\ ,)\n"
    echo    " recursiu     : Mode local: actualitza els fitxers en base a la data\n\t\testablerta al fitxer $DATAF."
    echo -e "                Si aquest no existeix, ho actualitza tot.\n"
    echo    " fitxer [po]  : Mode local: actualitza el fitxer sense emprar cap data."
    echo    "                Útil si observem alguna desactualització puntual."
    echo    "                Nota: No actualitza la data al fitxer $DATAF."
    echo -e "                po = messages/carpeta/fitxer.po\n"
    echo    " arranja_po   : Mode local: s'arranjen les cadenes amb l'estil de la plantilla."
    echo -e "                No actualitza la data al fitxer $DATAF.\n"
    exit 0
  ;;
esac

for PO in $FITXERPO
  do
    # Extraiem el nom de directori i el nom de fitxer
    DIR=$(dirname $PO)
    FITX=$(basename $PO)

    message_removed() {
      [ $REPETIT ] && [ $REPETIT = $1 ] && return
      REPETIT=$1
      echo -e " \e[38;5;46mo\e[0m $1"
    }

    # Es desactiven les traduccions següents:
    [  "$DIR" = "messages/wikitolearn-translation" ]                 && message_removed $DIR && continue # WikiToLearn - ca.wikitolearn.org
    [  "$DIR" = "messages/websites-kde-org" ]                        && message_removed $DIR && continue # Notícies del KDE - https://www.kde.org/announcements
    [  "$DIR" = "messages/websites-kde-org-announcements-releases" ] && message_removed $DIR && continue # Notícies del KDE
    [  "$DIR" = "messages/websites-docs-krita-org" ]                 && message_removed $DIR && continue # Documentació per al Krita - https://docs.krita.org/
    # Es desactiven les traduccions revisades per l'equip valencià:
    # frameworks
    [[ "$DIR" = "messages/"+(baloo|breeze-icons|frameworkintegration|kauth|kbookmarks|kcmutils|kcodecs|kcompletion|kconfig|kconfigwidgets|kcontacts|kcoreaddons|kdbusaddons|kdeclarative|kded|kdelibs4support|kdesignerplugin|kdesu|kdnssd|kdoctools|kemoticons|kfilemetadata|kglobalaccel|kholidays|khtml|ki18n|kiconthemes|kinit|kio|kirigami|kitemviews|kjobwidgets|kjsembed|knewstuff|knotifications|knotifyconfig|kpackage|kparts|kpeople|kpty|kross|krunner|kservice|ktexteditor|ktextwidgets|kunitconversion|kwallet|kwidgetsaddons|kwindowsystem|kxmlgui|kxmlrpcclient|oxygen-icons5|plasma-framework|purpose|solid|sonnet|syntax-highlighting) ]] && message_removed $DIR && continue
    # kde-workspace
    [[ "$DIR" = "messages/"+(bluedevil|breeze|discover|drkonqi|kactivitymanagerd|kde-cli-tools|kdecoration|kde-gtk-config|kdeplasma-addons|kgamma5|khotkeys|kinfocenter|kmenuedit|kscreen|kscreenlocker|ksshaskpass|ksysguard|kwallet-pam|kwin|kwrited|libksysguard|milou|oxygen|plasma-browser-integration|plasma-desktop|plasma-integration|plasma-nano|plasma-nm|plasma-pa|plasma-phone-components|plasma-sdk|plasma-thunderbolt|plasma-vault|plasma-workspace|plasma-workspace-wallpapers|plymouth-kcm|polkit-kde-agent-1|powerdevil|sddm-kcm|systemsettings|user-manager|xdg-desktop-portal-kde) ]] && message_removed $DIR && continue
    # kdeutils
    [[ "$DIR" = "messages/"+(ark|filelight|kbackup|kcalc|kcharselect|kdebugsettings|kdf|kfloppy|kgpg|kteatime|ktimer|kwalletmanager|print-manager|sweeper) ]] && message_removed $DIR && continue
    # dolphin
    [  "$DIR" = "messages/dolphin" ]                                 && message_removed $DIR && continue

    if [ $1 = 'usuari' ]; then
        if [ -f $DATAF ]; then
            # S'obté l'hora de modificació SVN des del fitxer
            DATA_CANVI=$(LANG=C; svn info ca/$PO | grep "^Last Changed Date:" | awk '{print $4}' | tr -d "-") # 2015-12-11 -> 20151211
            HORA_CANVI=$(LANG=C; svn info ca/$PO | grep "^Last Changed Date:" | awk '{print $5}' | tr -d ":") # 18:47:47   -> 184747
            # Es comprova si cal comprovar segons DATA i HORA originals (es redueix la càrrega)
            if [ $DATA_CANVI -ge $DATA ]; then
                if [ $DATA_CANVI -eq $DATA ];then
                    [ $HORA_CANVI -ge $HORA ] || continue
                fi
              else
                continue
            fi
        fi
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

# Actualització normal
echo "$DATA_CANVI_SVN $HORA_CANVI_SVN" > $DATAF

# Amb aquesta informació es pot seguir com queda establert el temps per a la propera vegada
echo -e "\nDATA_CANVI_SVN=\"$DATA_CANVI_SVN\"\nHORA_CANVI_SVN=\"$HORA_CANVI_SVN\"\n"
[ -z $MISSATGEPOS ] || echo -e "\nError: $MISSATGEPOS\n"

# Suprimeixo el fitxer creat per l'ordre «msgfmt --statistics»
[ -f messages.mo ] && rm -f messages.mo

exit 0

