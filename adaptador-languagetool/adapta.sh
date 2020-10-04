#!/bin/sh

#Use
#./adapta.sh < test.txt

#LanguageTool directory
lt_dir=~/target-lt

enabledRules="EXIGEIX_ACCENTUACIO_VALENCIANA,EXIGEIX_VERBS_VALENCIANS,EXIGEIX_POSSESSIUS_U,PARTICIPIS_IT,ADAPTADOR_VALENCIA_LEXIC,HUI,LEXIC_VAL,PREFERENCIES_VERBS_VALENCIANS,EVITA_DEMOSTRATIUS_AQUEIX"

java -jar $lt_dir/languagetool-commandline.jar -l ca-ES-valencia -e $enabledRules -eo -a #2> /dev/null

