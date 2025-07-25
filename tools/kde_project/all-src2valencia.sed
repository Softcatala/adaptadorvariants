#!/bin/sed -f

# Recursos:
# ---------
# <https://geiec.iec.cat/>
# <https://giec.iec.cat/conjugacio>
# <https://www.avl.gva.es/lexicval/>

# - verbs - #
# Infinitiu / Gerundi / Participi
# Indicatiu Present
# Indicatiu Futur 3a -> Indicatiu Futur imperfecte
# Indicatiu Imperfet 3a -> Pretèrit imperfecte
# Subjuntiu Present
# Subjuntiu Imperfet -> Subjuntiu Imperfet

# offline
# online

# Fonts amb els URL per al motor de cerca
#
# DIEC2: https://dlc.iec.cat/Results?DecEntradaText=%s
# Conjugació dels verbs: https://www.verbs.cat/ca/
# Diccionari normatiu valencià: http://www.avl.gva.es/lexicval/xhtml/mobile/dnv.xhtml?paraula=%s
#
# NOTE: PDT. (preferència dels traductors)
# a
#
# abarrotar
s/\b\([Aa]\)barrotés\([^[:alnum:]]\)/\1barrotara\2/g
s/\b\([Aa]\)barrotéssi\([mu]\)\([^[:alnum:]]\)/\1barrotàre\2\3/g
s/\b\([Aa]\)barrotessi\([ns]\)\([^[:alnum:]]\)/\1barrotare\2\3/g
s/\b\([Aa]\)barrot\([io]\)\([^[:alnum:]]\)/\1barrote\3/g
s/\b\([Aa]\)barroti\([ns]\)\([^[:alnum:]]\)/\1barrote\2\3/g
# abastar
s/\b\([Aa]\)bastés\([^[:alnum:]]\)/\1bastara\2/g
s/\b\([Aa]\)bastéssi\([mu]\)\([^[:alnum:]]\)/\1bastàre\2\3/g
s/\b\([Aa]\)bastessi\([ns]\)\([^[:alnum:]]\)/\1bastare\2\3/g
s/\b\([Aa]\)bast\([io]\)\([^[:alnum:]]\)/\1baste\3/g
s/\b\([Aa]\)basti\([ns]\)\([^[:alnum:]]\)/\1baste\2\3/g
# abreujar
s/\b\([Aa]\)breugés\([^[:alnum:]]\)/\1breujara\2/g
s/\b\([Aa]\)breugéssi\([mu]\)\([^[:alnum:]]\)/\1breujàre\2\3/g
s/\b\([Aa]\)breugessi\([ns]\)\([^[:alnum:]]\)/\1breujare\2\3/g
s/\b\([Aa]\)breugi\([ns]\)\([^[:alnum:]]\)/\1breuge\2\3/g
s/\b\([Aa]\)breujo\([^[:alnum:]]\)/\1breuge\2/g
# abscindir
s/\b\([Aa]\)bscindeix\(e[ns]\|\)\([^[:alnum:]]\)/\1bscindix\2\3/g
s/\b\([Aa]\)bscindeixi\([^[:alnum:]]\)/\1bscindisca\2/g
s/\b\([Aa]\)bscindeixi\([ns]\)\([^[:alnum:]]\)/\1bscindisque\2\3/g
s/\b\([Aa]\)bscindeixo\([^[:alnum:]]\)/\1bscindisc\2/g
s/\b\([Aa]\)bscindís\([^[:alnum:]]\)/\1bscindira\2/g
s/\b\([Aa]\)bscindíssi\([mu]\|\)\([^[:alnum:]]\)/\1bscindíre\2\3/g
s/\b\([Aa]\)bscindissi\([ns]\|\)\([^[:alnum:]]\)/\1bscindire\2\3/g
# acabar
s/\b\([Aa]\)cabés\([^[:alnum:]]\)/\1cabara\2/g
s/\b\([Aa]\)cabéssi\([mu]\)\([^[:alnum:]]\)/\1cabàre\2\3/g
s/\b\([Aa]\)cabessi\([ns]\)\([^[:alnum:]]\)/\1cabare\2\3/g
s/\b\([Aa]\)cab\([io]\)\([^[:alnum:]]\)/\1cabe\3/g
s/\b\([Aa]\)cabi\([ns]\)\([^[:alnum:]]\)/\1cabe\2\3/g
# accelerar
s/\b\([Aa]\)ccelerés\([^[:alnum:]]\)/\1ccelerara\2/g
s/\b\([Aa]\)cceleréssi\([mu]\)\([^[:alnum:]]\)/\1cceleràre\2\3/g
s/\b\([Aa]\)cceleressi\([ns]\)\([^[:alnum:]]\)/\1ccelerare\2\3/g
s/\b\([Aa]\)cceler\([io]\)\([^[:alnum:]]\)/\1ccelere\3/g
s/\b\([Aa]\)cceleri\([ns]\)\([^[:alnum:]]\)/\1ccelere\2\3/g
    # desaccelerar
    s/\b\([Dd]\)esaccelerés\([^[:alnum:]]\)/\1esaccelerara\2/g
    s/\b\([Dd]\)esacceleréssi\([mu]\)\([^[:alnum:]]\)/\1esacceleràre\2\3/g
    s/\b\([Dd]\)esacceleressi\([ns]\)\([^[:alnum:]]\)/\1esaccelerare\2\3/g
    s/\b\([Dd]\)esacceler\([io]\)\([^[:alnum:]]\)/\1esaccelere\3/g
    s/\b\([Dd]\)esacceleri\([ns]\)\([^[:alnum:]]\)/\1esaccelere\2\3/g
# acceptar
s/\b\([Aa]\)cceptés\([^[:alnum:]]\)/\1cceptara\2/g
s/\b\([Aa]\)cceptéssi\([mu]\)\([^[:alnum:]]\)/\1cceptàre\2\3/g
s/\b\([Aa]\)cceptessi\([ns]\)\([^[:alnum:]]\)/\1cceptare\2\3/g
s/\b\([Aa]\)ccept\([io]\)\([^[:alnum:]]\)/\1ccepte\3/g
s/\b\([Aa]\)ccepti\([ns]\)\([^[:alnum:]]\)/\1ccepte\2\3/g
# accionar
s/\b\([Aa]\)ccionés\([^[:alnum:]]\)/\1ccionara\2/g
s/\b\([Aa]\)ccionéssi\([mu]\)\([^[:alnum:]]\)/\1ccionàre\2\3/g
s/\b\([Aa]\)ccionessi\([ns]\)\([^[:alnum:]]\)/\1ccionare\2\3/g
s/\b\([Aa]\)ccion\([io]\)\([^[:alnum:]]\)/\1ccione\3/g
s/\b\([Aa]\)ccioni\([ns]\)\([^[:alnum:]]\)/\1ccione\2\3/g
    # coaccionar
    s/\b\([Cc]\)oaccionés\([^[:alnum:]]\)/\1oaccionara\2/g
    s/\b\([Cc]\)oaccionéssi\([mu]\)\([^[:alnum:]]\)/\1oaccionàre\2\3/g
    s/\b\([Cc]\)oaccionessi\([ns]\)\([^[:alnum:]]\)/\1oaccionare\2\3/g
    s/\b\([Cc]\)oaccion\([io]\)\([^[:alnum:]]\)/\1oaccione\3/g
    s/\b\([Cc]\)oaccioni\([ns]\)\([^[:alnum:]]\)/\1oaccione\2\3/g
    # fraccionar
    s/\b\([Ff]\)raccionés\([^[:alnum:]]\)/\1raccionara\2/g
    s/\b\([Ff]\)raccionéssi\([mu]\)\([^[:alnum:]]\)/\1raccionàre\2\3/g
    s/\b\([Ff]\)raccionessi\([ns]\)\([^[:alnum:]]\)/\1raccionare\2\3/g
    s/\b\([Ff]\)raccion\([io]\)\([^[:alnum:]]\)/\1raccione\3/g
    s/\b\([Ff]\)raccioni\([ns]\)\([^[:alnum:]]\)/\1raccione\2\3/g
        # interfraccionar
        s/\b\([Ii]\)nterfraccionés\([^[:alnum:]]\)/\1nterfraccionara\2/g
        s/\b\([Ii]\)nterfraccionéssi\([mu]\)\([^[:alnum:]]\)/\1nterfraccionàre\2\3/g
        s/\b\([Ii]\)nterfraccionessi\([ns]\)\([^[:alnum:]]\)/\1nterfraccionare\2\3/g
        s/\b\([Ii]\)nterfraccion\([io]\)\([^[:alnum:]]\)/\1nterfraccione\3/g
        s/\b\([Ii]\)nterfraccioni\([ns]\)\([^[:alnum:]]\)/\1nterfraccione\2\3/g
    # reaccionar
    s/\b\([Rr]\)eaccionés\([^[:alnum:]]\)/\1eaccionara\2/g
    s/\b\([Rr]\)eaccionéssi\([mu]\)\([^[:alnum:]]\)/\1eaccionàre\2\3/g
    s/\b\([Rr]\)eaccionessi\([ns]\)\([^[:alnum:]]\)/\1eaccionare\2\3/g
    s/\b\([Rr]\)eaccion\([io]\)\([^[:alnum:]]\)/\1eaccione\3/g
    s/\b\([Rr]\)eaccioni\([ns]\)\([^[:alnum:]]\)/\1eaccione\2\3/g
# aclaparar
s/\b\([Aa]\)claparés\([^[:alnum:]]\)/\1claparara\2/g
s/\b\([Aa]\)claparéssi\([mu]\)\([^[:alnum:]]\)/\1claparàre\2\3/g
s/\b\([Aa]\)claparessi\([ns]\)\([^[:alnum:]]\)/\1claparare\2\3/g
s/\b\([Aa]\)clapar\([io]\)\([^[:alnum:]]\)/\1clapare\3/g
s/\b\([Aa]\)clapari\([ns]\)\([^[:alnum:]]\)/\1clapare\2\3/g
# aclarir
s/\b\([Aa]\)clareix\(e[ns]\|\)\([^[:alnum:]]\)/\1clarix\2\3/g
s/\b\([Aa]\)clareixi\([^[:alnum:]]\)/\1clarisca\2/g
s/\b\([Aa]\)clareixi\([ns]\)\([^[:alnum:]]\)/\1clarisque\2\3/g
s/\b\([Aa]\)clareixo\([^[:alnum:]]\)/\1clarisc\2/g
s/\b\([Aa]\)clarís\([^[:alnum:]]\)/\1clarira\2/g
s/\b\([Aa]\)claríssi\([mu]\)\([^[:alnum:]]\)/\1claríre\2\3/g
s/\b\([Aa]\)clarissi\([ns]\)\([^[:alnum:]]\)/\1clarire\2\3/g
# acoblar
s/\b\([Aa]\)coblés\([^[:alnum:]]\)/\1coblara\2/g
s/\b\([Aa]\)cobléssi\([mu]\)\([^[:alnum:]]\)/\1coblàre\2\3/g
s/\b\([Aa]\)coblessi\([ns]\)\([^[:alnum:]]\)/\1coblare\2\3/g
s/\b\([Aa]\)cobl\([io]\)\([^[:alnum:]]\)/\1coble\3/g
s/\b\([Aa]\)cobli\([ns]\)\([^[:alnum:]]\)/\1coble\2\3/g
    # desacoblar
    s/\b\([Dd]\)esacoblés\([^[:alnum:]]\)/\1esacoblara\2/g
    s/\b\([Dd]\)esacobléssi\([mu]\)\([^[:alnum:]]\)/\1esacoblàre\2\3/g
    s/\b\([Dd]\)esacoblessi\([ns]\)\([^[:alnum:]]\)/\1esacoblare\2\3/g
    s/\b\([Dd]\)esacobl\([io]\)\([^[:alnum:]]\)/\1esacoble\3/g
    s/\b\([Dd]\)esacobli\([ns]\)\([^[:alnum:]]\)/\1esacoble\2\3/g
# acolorir
s/\b\([Aa]\)coloreix\(e[ns]\|\)\([^[:alnum:]]\)/\1colorix\2\3/g
s/\b\([Aa]\)coloreixi\([^[:alnum:]]\)/\1colorisca\2/g
s/\b\([Aa]\)coloreixi\([ns]\)\([^[:alnum:]]\)/\1colorisque\2\3/g
s/\b\([Aa]\)coloreixo\([^[:alnum:]]\)/\1colorisc\2/g
s/\b\([Aa]\)colorís\([^[:alnum:]]\)/\1colorira\2/g
s/\b\([Aa]\)coloríssi\([mu]\)\([^[:alnum:]]\)/\1coloríre\2\3/g
s/\b\([Aa]\)colorissi\([ns]\)\([^[:alnum:]]\)/\1colorire\2\3/g
# acomodar
s/\b\([Aa]\)comodés\([^[:alnum:]]\)/\1comodara\2/g
s/\b\([Aa]\)comodéssi\([mu]\)\([^[:alnum:]]\)/\1comodàre\2\3/g
s/\b\([Aa]\)comodessi\([ns]\)\([^[:alnum:]]\)/\1comodare\2\3/g
s/\b\([Aa]\)comod\([io]\)\([^[:alnum:]]\)/\1comode\3/g
s/\b\([Aa]\)comodi\([ns]\)\([^[:alnum:]]\)/\1comode\2\3/g
# aconsellar
s/\b\([Aa]\)consellés\([^[:alnum:]]\)/\1consellara\2/g
s/\b\([Aa]\)conselléssi\([mu]\)\([^[:alnum:]]\)/\1consellàre\2\3/g
s/\b\([Aa]\)consellessi\([ns]\)\([^[:alnum:]]\)/\1consellare\2\3/g
s/\b\([Aa]\)consell\([io]\)\([^[:alnum:]]\)/\1conselle\3/g
s/\b\([Aa]\)conselli\([ns]\)\([^[:alnum:]]\)/\1conselle\2\3/g
    # desaconsellar
    s/\b\([Dd]\)esaconsellés\([^[:alnum:]]\)/\1esaconsellara\2/g
    s/\b\([Dd]\)esaconselléssi\([mu]\)\([^[:alnum:]]\)/\1esaconsellàre\2\3/g
    s/\b\([Dd]\)esaconsellessi\([ns]\)\([^[:alnum:]]\)/\1esaconsellare\2\3/g
    s/\b\([Dd]\)esaconsell\([io]\)\([^[:alnum:]]\)/\1esaconselle\3/g
    s/\b\([Dd]\)esaconselli\([ns]\)\([^[:alnum:]]\)/\1esaconselle\2\3/g
    # malaconsellar
    s/\b\([Mm]\)alaconsellés\([^[:alnum:]]\)/\1alaconsellara\2/g
    s/\b\([Mm]\)alaconselléssi\([mu]\)\([^[:alnum:]]\)/\1alaconsellàre\2\3/g
    s/\b\([Mm]\)alaconsellessi\([ns]\)\([^[:alnum:]]\)/\1alaconsellare\2\3/g
    s/\b\([Mm]\)alaconsell\([io]\)\([^[:alnum:]]\)/\1alaconselle\3/g
    s/\b\([Mm]\)alaconselli\([ns]\)\([^[:alnum:]]\)/\1alaconselle\2\3/g
# acovardir
s/\b\([Aa]\)covardeix\(e[ns]\|\)\([^[:alnum:]]\)/\1covardix\2\3/g
s/\b\([Aa]\)covardeixi\([^[:alnum:]]\)/\1covardisca\2/g
s/\b\([Aa]\)covardeixi\([ns]\)\([^[:alnum:]]\)/\1covardisque\2\3/g
s/\b\([Aa]\)covardeixo\([^[:alnum:]]\)/\1covardisc\2/g
s/\b\([Aa]\)covardís\([^[:alnum:]]\)/\1covardira\2/g
s/\b\([Aa]\)covardíssi\([mu]\|\)\([^[:alnum:]]\)/\1covardíre\2\3/g
s/\b\([Aa]\)covardissi\([ns]\|\)\([^[:alnum:]]\)/\1covardire\2\3/g
# activar
s/\b\([Aa]\)ctivés\([^[:alnum:]]\)/\1ctivara\2/g
s/\b\([Aa]\)ctivéssi\([mu]\)\([^[:alnum:]]\)/\1ctivàre\2\3/g
s/\b\([Aa]\)ctivessi\([ns]\)\([^[:alnum:]]\)/\1ctivare\2\3/g
s/\b\([Aa]\)ctiv\([io]\)\([^[:alnum:]]\)/\1ctive\3/g
s/\b\([Aa]\)ctivi\([ns]\)\([^[:alnum:]]\)/\1ctive\2\3/g
    # desactivar
    s/\b\([Dd]\)esactivés\([^[:alnum:]]\)/\1esactivara\2/g
    s/\b\([Dd]\)esactivéssi\([mu]\)\([^[:alnum:]]\)/\1esactivàre\2\3/g
    s/\b\([Dd]\)esactivessi\([ns]\)\([^[:alnum:]]\)/\1esactivare\2\3/g
    s/\b\([Dd]\)esactiv\([io]\)\([^[:alnum:]]\)/\1esactive\3/g
    s/\b\([Dd]\)esactivi\([ns]\)\([^[:alnum:]]\)/\1esactive\2\3/g
    # TODO: no el verb
    # inactivar
    s/\b\([Ii]\)nactivés\([^[:alnum:]]\)/\1nactivara\2/g
    s/\b\([Ii]\)nactivéssi\([mu]\)\([^[:alnum:]]\)/\1nactivàre\2\3/g
    s/\b\([Ii]\)nactivessi\([ns]\)\([^[:alnum:]]\)/\1nactivare\2\3/g
    s/\b\([Ii]\)nactiv\([io]\)\([^[:alnum:]]\)/\1nactive\3/g
    s/\b\([Ii]\)nactivi\([ns]\)\([^[:alnum:]]\)/\1nactive\2\3/g
    # reactivar
    s/\b\([Rr]\)eactivés\([^[:alnum:]]\)/\1eactivara\2/g
    s/\b\([Rr]\)eactivéssi\([mu]\)\([^[:alnum:]]\)/\1eactivàre\2\3/g
    s/\b\([Rr]\)eactivessi\([ns]\)\([^[:alnum:]]\)/\1eactivare\2\3/g
    s/\b\([Rr]\)eactiv\([io]\)\([^[:alnum:]]\)/\1eactive\3/g
    s/\b\([Rr]\)eactivi\([ns]\)\([^[:alnum:]]\)/\1eactive\2\3/g
# actuar
s/\b\([Aa]\)ctués\([^[:alnum:]]\)/\1ctuara\2/g
s/\b\([Aa]\)ctuéssi\([mu]\)\([^[:alnum:]]\)/\1ctuàre\2\3/g
s/\b\([Aa]\)ctuessi\([ns]\)\([^[:alnum:]]\)/\1ctuare\2\3/g
s/\b\([Aa]\)ctu\([ïo]\)\([^[:alnum:]]\)/\1ctue\3/g
s/\b\([Aa]\)ctuï\([ns]\)\([^[:alnum:]]\)/\1ctue\2\3/g
# actualitzar
s/\b\([Aa]\)ctualitzés\([^[:alnum:]]\)/\1ctualitzara\2/g
s/\b\([Aa]\)ctualitzéssi\([mu]\)\([^[:alnum:]]\)/\1ctualitzàre\2\3/g
s/\b\([Aa]\)ctualitzessi\([ns]\)\([^[:alnum:]]\)/\1ctualitzare\2\3/g
s/\b\([Aa]\)ctualitz\([io]\)\([^[:alnum:]]\)/\1ctualitze\3/g
s/\b\([Aa]\)ctualitzi\([ns]\)\([^[:alnum:]]\)/\1ctualitze\2\3/g
    # TODO: no
    # desactualitzar
    s/\b\([Dd]\)esactualitzés\([^[:alnum:]]\)/\1esactualitzara\2/g
    s/\b\([Dd]\)esactualitzéssi\([mu]\)\([^[:alnum:]]\)/\1esactualitzàre\2\3/g
    s/\b\([Dd]\)esactualitzessi\([ns]\)\([^[:alnum:]]\)/\1esactualitzare\2\3/g
    s/\b\([Dd]\)esactualitz\([io]\)\([^[:alnum:]]\)/\1esactualitze\3/g
    s/\b\([Dd]\)esactualitzi\([ns]\)\([^[:alnum:]]\)/\1esactualitze\2\3/g
# acudir
s/\b\([Aa]\)cudeix\(e[ns]\|\)\([^[:alnum:]]\)/\1cudix\2\3/g
s/\b\([Aa]\)cudeixi\([^[:alnum:]]\)/\1cudisca\2/g
s/\b\([Aa]\)cudeixi\([ns]\)\([^[:alnum:]]\)/\1cudisque\2\3/g
s/\b\([Aa]\)cudeixo\([^[:alnum:]]\)/\1cudisc\2/g
s/\b\([Aa]\)cudís\([^[:alnum:]]\)/\1cudira\2/g
s/\b\([Aa]\)cudíssi\([mu]\|\)\([^[:alnum:]]\)/\1cudíre\2\3/g
s/\b\([Aa]\)cudissi\([ns]\|\)\([^[:alnum:]]\)/\1cudire\2\3/g
# adaptar \ adoptar
s/\b\([Aa]\)d\([ao]\)ptés\([^[:alnum:]]\)/\1d\2ptara\3/g
s/\b\([Aa]\)d\([ao]\)ptéssi\([mu]\)\([^[:alnum:]]\)/\1d\2ptàre\3\4/g
s/\b\([Aa]\)d\([ao]\)ptessi\([ns]\)\([^[:alnum:]]\)/\1d\2ptare\3\4/g
s/\b\([Aa]\)d\([ao]\)pt\([io]\)\([^[:alnum:]]\)/\1d\2pte\4/g
s/\b\([Aa]\)d\([ao]\)pti\([ns]\)\([^[:alnum:]]\)/\1d\2pte\3\4/g
    # readaptar
    s/\b\([Rr]\)eadaptés\([^[:alnum:]]\)/\1eadaptara\2/g
    s/\b\([Rr]\)eadaptéssi\([mu]\)\([^[:alnum:]]\)/\1eadaptàre\2\3/g
    s/\b\([Rr]\)eadaptessi\([ns]\)\([^[:alnum:]]\)/\1eadaptare\2\3/g
    s/\b\([Rr]\)eadapt\([io]\)\([^[:alnum:]]\)/\1eadapte\3/g
    s/\b\([Rr]\)eadapti\([ns]\)\([^[:alnum:]]\)/\1eadapte\2\3/g
# addicionar
s/\b\([Aa]\)ddicionés\([^[:alnum:]]\)/\1ddicionara\2/g
s/\b\([Aa]\)ddicionéssi\([mu]\)\([^[:alnum:]]\)/\1ddicionàre\2\3/g
s/\b\([Aa]\)ddicionessi\([ns]\)\([^[:alnum:]]\)/\1ddicionare\2\3/g
s/\b\([Aa]\)ddicion\([io]\)\([^[:alnum:]]\)/\1ddicione\3/g
s/\b\([Aa]\)ddicioni\([ns]\)\([^[:alnum:]]\)/\1ddicione\2\3/g
# adir
s/\b\([Aa]\)dic\([^[:alnum:]]\)/\1disc\2/g
s/\b\([Aa]\)die\([mu]\|\)\([^[:alnum:]]\)/\1di\2\3/g
s/\b\([Aa]\)dient\([^[:alnum:]]\)/\1dint\2/g
s/\b\([Aa]\)digue\([mu]\)\([^[:alnum:]]\)/\1di\2\3/g
s/\b\([Aa]\)digués\([^[:alnum:]]\)/\1dira\2/g
s/\b\([Aa]\)diguéssi\([mu]\|\)\([^[:alnum:]]\)/\1díre\2\3/g
s/\b\([Aa]\)diguessi\([ns]\|\)\([^[:alnum:]]\)/\1dire\2\3/g
s/\b\([Aa]\)digui\([^[:alnum:]]\)/\1disca\2/g
s/\b\([Aa]\)digui\([ns]\)\([^[:alnum:]]\)/\1disque\2\3/g
s/\b\([Aa]\)diu\([^[:alnum:]]\)/\1dix\2/g
s/\b\([Aa]\)diuen\([^[:alnum:]]\)/\1dixen\2/g
s/\b\([Aa]\)dius\([^[:alnum:]]\)/\1dixes\2/g
# -metre
    # admetre
    s/\b\([Aa]\)dmès\([^[:alnum:]]\)/\1dmés\2/g
    s/\b\([Aa]\)dmetés\([^[:alnum:]]\)/\1dmetera\2/g
    s/\b\([Aa]\)dmetéssi\([mu]\)\([^[:alnum:]]\)/\1dmetére\2\3/g
    s/\b\([Aa]\)dmetessi\([ns]\)\([^[:alnum:]]\)/\1dmetere\2\3/g
    s/\b\([Aa]\)dmeti\([^[:alnum:]]\)/\1dmeta\2/g
    s/\b\([Aa]\)dmeti\([ns]\)\([^[:alnum:]]\)/\1dmete\2\3/g
    s/\b\([Aa]\)dmeto\([^[:alnum:]]\)/\1dmet\2/g
        # readmetre
        s/\b\([Rr]\)eadmès\([^[:alnum:]]\)/\1eadmés\2/g
        s/\b\([Rr]\)eadmetés\([^[:alnum:]]\)/\1eadmetera\2/g
        s/\b\([Rr]\)eadmetéssi\([mu]\)\([^[:alnum:]]\)/\1eadmetére\2\3/g
        s/\b\([Rr]\)eadmetessi\([ns]\)\([^[:alnum:]]\)/\1eadmetere\2\3/g
        s/\b\([Rr]\)eadmeti\([^[:alnum:]]\)/\1eadmeta\2/g
        s/\b\([Rr]\)eadmeti\([ns]\)\([^[:alnum:]]\)/\1eadmete\2\3/g
        s/\b\([Rr]\)eadmeto\([^[:alnum:]]\)/\1eadmet\2/g
    # arremetre
    s/\b\([Aa]\)rremès\([^[:alnum:]]\)/\1rremés\2/g
    s/\b\([Aa]\)rremetés\([^[:alnum:]]\)/\1rremetera\2/g
    s/\b\([Aa]\)rremetéssi\([mu]\)\([^[:alnum:]]\)/\1rremetére\2\3/g
    s/\b\([Aa]\)rremetessi\([ns]\)\([^[:alnum:]]\)/\1rremetere\2\3/g
    s/\b\([Aa]\)rremeti\([^[:alnum:]]\)/\1rremeta\2/g
    s/\b\([Aa]\)rremeti\([ns]\)\([^[:alnum:]]\)/\1rremete\2\3/g
    s/\b\([Aa]\)rremeto\([^[:alnum:]]\)/\1rremet\2/g
    # cometre
    s/\b\([Cc]\)omès\([^[:alnum:]]\)/\1omés\2/g
    s/\b\([Cc]\)ometés\([^[:alnum:]]\)/\1ometera\2/g
    s/\b\([Cc]\)ometéssi\([mu]\)\([^[:alnum:]]\)/\1ometére\2\3/g
    s/\b\([Cc]\)ometessi\([ns]\)\([^[:alnum:]]\)/\1ometere\2\3/g
    s/\b\([Cc]\)ometi\([^[:alnum:]]\)/\1ometa\2/g
    s/\b\([Cc]\)ometi\([ns]\)\([^[:alnum:]]\)/\1omete\2\3/g
    s/\b\([Cc]\)ometo\([^[:alnum:]]\)/\1omet\2/g
        # escometre
        s/\b\([Ee]\)scomès\([^[:alnum:]]\)/\1scomés\2/g
        s/\b\([Ee]\)scometés\([^[:alnum:]]\)/\1scometera\2/g
        s/\b\([Ee]\)scometéssi\([mu]\|\)\([^[:alnum:]]\)/\1scometére\2\3/g
        s/\b\([Ee]\)scometessi\([ns]\|\)\([^[:alnum:]]\)/\1scometere\2\3/g
        s/\b\([Ee]\)scometi\([^[:alnum:]]\)/\1scometa\2/g
        s/\b\([Ee]\)scometi\([ns]\)\([^[:alnum:]]\)/\1scomete\2\3/g
        s/\b\([Ee]\)scometo\([^[:alnum:]]\)/\1scomet\2/g
    # emetre
    s/\b\([Ee]\)mès\([^[:alnum:]]\)/\1més\2/g
    s/\b\([Ee]\)metés\([^[:alnum:]]\)/\1metera\2/g
    s/\b\([Ee]\)metéssi\([mu]\|\)\([^[:alnum:]]\)/\1metére\2\3/g
    s/\b\([Ee]\)metessi\([ns]\|\)\([^[:alnum:]]\)/\1metere\2\3/g
    s/\b\([Ee]\)meti\([^[:alnum:]]\)/\1meta\2/g
    s/\b\([Ee]\)meti\([ns]\)\([^[:alnum:]]\)/\1mete\2\3/g
    s/\b\([Ee]\)meto\([^[:alnum:]]\)/\1met\2/g
    # malmetre
    s/\b\([Mm]\)almès\([^[:alnum:]]\)/\1almés\2/g
    s/\b\([Mm]\)almetés\([^[:alnum:]]\)/\1almetera\2/g
    s/\b\([Mm]\)almetéssi\([mu]\)\([^[:alnum:]]\)/\1almetére\2\3/g
    s/\b\([Mm]\)almetessi\([ns]\)\([^[:alnum:]]\)/\1almetere\2\3/g
    s/\b\([Mm]\)almeti\([^[:alnum:]]\)/\1almeta\2/g
    s/\b\([Mm]\)almeti\([ns]\)\([^[:alnum:]]\)/\1almete\2\3/g
    s/\b\([Mm]\)almeto\([^[:alnum:]]\)/\1almet\2/g
    s/\b\([Mm]\)altès\([^[:alnum:]]\)/\1altés\2/g
    # ometre
    s/\b\([Oo]\)mès\([^[:alnum:]]\)/\1més\2/g
    s/\b\([Oo]\)metés\([^[:alnum:]]\)/\1metera\2/g
    s/\b\([Oo]\)metéssi\([mu]\)\([^[:alnum:]]\)/\1metére\2\3/g
    s/\b\([Oo]\)metessi\([ns]\)\([^[:alnum:]]\)/\1metere\2\3/g
    s/\b\([Oo]\)meti\([^[:alnum:]]\)/\1meta\2/g
    s/\b\([Oo]\)meti\([ns]\)\([^[:alnum:]]\)/\1mete\2\3/g
    s/\b\([Oo]\)meto\([^[:alnum:]]\)/\1met\2/g
    # permetre
    s/\b\([Pp]\)ermès\([^[:alnum:]]\)/\1ermés\2/g
    s/\b\([Pp]\)ermetés\([^[:alnum:]]\)/\1ermetera\2/g
    s/\b\([Pp]\)ermetéssi\([mu]\)\([^[:alnum:]]\)/\1ermetére\2\3/g
    s/\b\([Pp]\)ermetessi\([ns]\)\([^[:alnum:]]\)/\1ermetere\2\3/g
    s/\b\([Pp]\)ermeti\([^[:alnum:]]\)/\1ermeta\2/g
    s/\b\([Pp]\)ermeti\([ns]\)\([^[:alnum:]]\)/\1ermete\2\3/g
    s/\b\([Pp]\)ermeto\([^[:alnum:]]\)/\1ermet\2/g
    # prometre
    s/\b\([Pp]\)romès\([^[:alnum:]]\)/\1romés\2/g
    s/\b\([Pp]\)rometés\([^[:alnum:]]\)/\1rometera\2/g
    s/\b\([Pp]\)rometéssi\([mu]\)\([^[:alnum:]]\)/\1rometére\2\3/g
    s/\b\([Pp]\)rometessi\([ns]\)\([^[:alnum:]]\)/\1rometere\2\3/g
    s/\b\([Pp]\)rometi\([^[:alnum:]]\)/\1rometa\2/g
    s/\b\([Pp]\)rometi\([ns]\)\([^[:alnum:]]\)/\1romete\2\3/g
    s/\b\([Pp]\)rometo\([^[:alnum:]]\)/\1romet\2/g
        s/\"Prometa\"/\"Prometi\"/g
        # comprometre
        s/\b\([Cc]\)ompromès\([^[:alnum:]]\)/\1ompromés\2/g
        s/\b\([Cc]\)omprometés\([^[:alnum:]]\)/\1omprometera\2/g
        s/\b\([Cc]\)omprometéssi\([mu]\)\([^[:alnum:]]\)/\1omprometére\2\3/g
        s/\b\([Cc]\)omprometessi\([ns]\)\([^[:alnum:]]\)/\1omprometere\2\3/g
        s/\b\([Cc]\)omprometi\([^[:alnum:]]\)/\1omprometa\2/g
        s/\b\([Cc]\)omprometi\([ns]\)\([^[:alnum:]]\)/\1ompromete\2\3/g
        s/\b\([Cc]\)omprometo\([^[:alnum:]]\)/\1ompromet\2/g
    # remetre
    s/\b\([Rr]\)emetès\([^[:alnum:]]\)/\1emetés\2/g
    s/\b\([Rr]\)emetés\([^[:alnum:]]\)/\1emetera\2/g
    s/\b\([Rr]\)emetéssi\([mu]\)\([^[:alnum:]]\)/\1emetére\2\3/g
    s/\b\([Rr]\)emetessi\([ns]\)\([^[:alnum:]]\)/\1emetere\2\3/g
    s/\b\([Rr]\)emeti\([^[:alnum:]]\)/\1emeta\2/g
    s/\b\([Rr]\)emeti\([ns]\)\([^[:alnum:]]\)/\1emete\2\3/g
    s/\b\([Rr]\)emeto\([^[:alnum:]]\)/\1emet\2/g
    # sotmetre
    s/\b\([Ss]\)otmès\([^[:alnum:]]\)/\1otmés\2/g
    s/\b\([Ss]\)otmetés\([^[:alnum:]]\)/\1otmetera\2/g
    s/\b\([Ss]\)otmetéssi\([mu]\)\([^[:alnum:]]\)/\1otmetére\2\3/g
    s/\b\([Ss]\)otmetessi\([ns]\)\([^[:alnum:]]\)/\1otmetere\2\3/g
    s/\b\([Ss]\)otmeti\([^[:alnum:]]\)/\1otmeta\2/g
    s/\b\([Ss]\)otmeti\([ns]\)\([^[:alnum:]]\)/\1otmete\2\3/g
    s/\b\([Ss]\)otmeto\([^[:alnum:]]\)/\1otmet\2/g
    # trametre
    s/\b\([Tt]\)ramès\([^[:alnum:]]\)/\1ramés\2/g
    s/\b\([Tt]\)rametés\([^[:alnum:]]\)/\1rametera\2/g
    s/\b\([Tt]\)rametéssi\([mu]\)\([^[:alnum:]]\)/\1rametére\2\3/g
    s/\b\([Tt]\)rametessi\([ns]\)\([^[:alnum:]]\)/\1rametere\2\3/g
    s/\b\([Tt]\)rameti\([^[:alnum:]]\)/\1rameta\2/g
    s/\b\([Tt]\)rameti\([ns]\)\([^[:alnum:]]\)/\1ramete\2\3/g
    s/\b\([Tt]\)rameto\([^[:alnum:]]\)/\1ramet\2/g
    # transmetre
    s/\b\([Tt]\)ransmès\([^[:alnum:]]\)/\1ransmés\2/g
    s/\b\([Tt]\)ransmetés\([^[:alnum:]]\)/\1ransmetera\2/g
    s/\b\([Tt]\)ransmetéssi\([mu]\)\([^[:alnum:]]\)/\1ransmetére\2\3/g
    s/\b\([Tt]\)ransmetessi\([ns]\)\([^[:alnum:]]\)/\1ransmetere\2\3/g
    s/\b\([Tt]\)ransmeti\([^[:alnum:]]\)/\1ransmeta\2/g
    s/\b\([Tt]\)ransmeti\([ns]\)\([^[:alnum:]]\)/\1ransmete\2\3/g
    s/\b\([Tt]\)ransmeto\([^[:alnum:]]\)/\1ransmet\2/g
        # retransmetre
        s/\b\([Rr]\)etransmès\([^[:alnum:]]\)/\1etransmés\2/g
        s/\b\([Rr]\)etransmetés\([^[:alnum:]]\)/\1etransmetera\2/g
        s/\b\([Rr]\)etransmetéssi\([mu]\)\([^[:alnum:]]\)/\1etransmetére\2\3/g
        s/\b\([Rr]\)etransmetessi\([ns]\)\([^[:alnum:]]\)/\1etransmetere\2\3/g
        s/\b\([Rr]\)etransmeti\([^[:alnum:]]\)/\1etransmeta\2/g
        s/\b\([Rr]\)etransmeti\([ns]\)\([^[:alnum:]]\)/\1etransmete\2\3/g
        s/\b\([Rr]\)etransmeto\([^[:alnum:]]\)/\1etransmet\2/g
# advertir
s/\b\([Aa]\)dverteix\(e[ns]\|\)\([^[:alnum:]]\)/\1dvertix\2\3/g
s/\b\([Aa]\)dverteixi\([^[:alnum:]]\)/\1dvertisca\2/g
s/\b\([Aa]\)dverteixi\([ns]\)\([^[:alnum:]]\)/\1dvertisque\2\3/g
s/\b\([Aa]\)dverteixo\([^[:alnum:]]\)/\1dvertisc\2/g
s/\b\([Aa]\)dvertís\([^[:alnum:]]\)/\1dvertira\2/g
s/\b\([Aa]\)dvertíssi\([mu]\)\([^[:alnum:]]\)/\1dvertíre\2\3/g
s/\b\([Aa]\)dvertissi\([ns]\)\([^[:alnum:]]\)/\1dvertire\2\3/g
# afanyar
s/\b\([Aa]\)fanyés\([^[:alnum:]]\)/\1fanyara\2/g
s/\b\([Aa]\)fanyéssi\([mu]\)\([^[:alnum:]]\)/\1fanyàre\2\3/g
s/\b\([Aa]\)fanyessi\([ns]\)\([^[:alnum:]]\)/\1fanyare\2\3/g
s/\b\([Aa]\)fany\([io]\)\([^[:alnum:]]\)/\1fanye\3/g
s/\b\([Aa]\)fanyi\([ns]\)\([^[:alnum:]]\)/\1fanye\2\3/g
# afavorir
s/\b\([Aa]\)favoreix\(e[ns]\|\)\([^[:alnum:]]\)/\1favorix\2\3/g
s/\b\([Aa]\)favoreixi\([^[:alnum:]]\)/\1favorisca\2/g
s/\b\([Aa]\)favoreixi\([ns]\)\([^[:alnum:]]\)/\1favorisque\2\3/g
s/\b\([Aa]\)favoreixo\([^[:alnum:]]\)/\1favorisc\2/g
s/\b\([Aa]\)favorís\([^[:alnum:]]\)/\1favorira\2/g
s/\b\([Aa]\)favoríssi\([mu]\)\([^[:alnum:]]\)/\1favoríre\2\3/g
s/\b\([Aa]\)favorissi\([ns]\)\([^[:alnum:]]\)/\1favorire\2\3/g
    # desafavorir
    s/\b\([Dd]\)esafavoreix\(e[ns]\|\)\([^[:alnum:]]\)/\1esafavorix\2\3/g
    s/\b\([Dd]\)esafavoreixi\([^[:alnum:]]\)/\1esafavorisca\2/g
    s/\b\([Dd]\)esafavoreixi\([ns]\)\([^[:alnum:]]\)/\1esafavorisque\2\3/g
    s/\b\([Dd]\)esafavoreixo\([^[:alnum:]]\)/\1esafavorisc\2/g
    s/\b\([Dd]\)esafavorís\([^[:alnum:]]\)/\1esafavorira\2/g
    s/\b\([Dd]\)esafavoríssi\([mu]\)\([^[:alnum:]]\)/\1esafavoríre\2\3/g
    s/\b\([Dd]\)esafavorissi\([ns]\)\([^[:alnum:]]\)/\1esafavorire\2\3/g
# afectar
s/\b\([Aa]\)fectés\([^[:alnum:]]\)/\1fectara\2/g
s/\b\([Aa]\)fectéssi\([mu]\)\([^[:alnum:]]\)/\1fectàre\2\3/g
s/\b\([Aa]\)fectessi\([ns]\)\([^[:alnum:]]\)/\1fectare\2\3/g
s/\b\([Aa]\)fect\([io]\)\([^[:alnum:]]\)/\1fecte\3/g
s/\b\([Aa]\)fecti\([ns]\)\([^[:alnum:]]\)/\1fecte\2\3/g
    # desafectar
    s/\b\([Dd]\)esafectés\([^[:alnum:]]\)/\1esafectara\2/g
    s/\b\([Dd]\)esafectéssi\([mu]\)\([^[:alnum:]]\)/\1esafectàre\2\3/g
    s/\b\([Dd]\)esafectessi\([ns]\)\([^[:alnum:]]\)/\1esafectare\2\3/g
    s/\b\([Dd]\)esafect\([io]\)\([^[:alnum:]]\)/\1esafecte\3/g
    s/\b\([Dd]\)esafecti\([ns]\)\([^[:alnum:]]\)/\1esafecte\2\3/g
# afegir
s/\b\([Aa]\)fegeix\(e[ns]\|\)\([^[:alnum:]]\)/\1fig\2\3/g
s/\b\([Aa]\)fegeixi\([^[:alnum:]]\)/\1fija\2/g
s/\b\([Aa]\)fegeixi\([ns]\)\([^[:alnum:]]\)/\1fige\2\3/g
s/\b\([Aa]\)fegeixo\([^[:alnum:]]\)/\1fig\2/g
s/\b\([Aa]\)fegís\([^[:alnum:]]\)/\1fegira\2/g
s/\b\([Aa]\)fegíssi\([mu]\)\([^[:alnum:]]\)/\1fegíre\2\3/g
s/\b\([Aa]\)fegissi\([ns]\)\([^[:alnum:]]\)/\1fegire\2\3/g
    # sobreafegir
    s/\b\([Ss]\)obreafegeix\(e[ns]\|\)\([^[:alnum:]]\)/\1obreafig\2\3/g
    s/\b\([Ss]\)obreafegeixi\([^[:alnum:]]\)/\1obreafija\2/g
    s/\b\([Ss]\)obreafegeixi\([ns]\)\([^[:alnum:]]\)/\1obreafige\2\3/g
    s/\b\([Ss]\)obreafegeixo\([^[:alnum:]]\)/\1obreafig\2/g
    s/\b\([Ss]\)obreafegís\([^[:alnum:]]\)/\1obreafegira\2/g
    s/\b\([Ss]\)obreafegíssi\([mu]\)\([^[:alnum:]]\)/\1obreafegíre\2\3/g
    s/\b\([Ss]\)obreafegissi\([ns]\)\([^[:alnum:]]\)/\1obreafegire\2\3/g
# afinar
s/\b\([Aa]\)finés\([^[:alnum:]]\)/\1finara\2/g
s/\b\([Aa]\)finéssi\([mu]\)\([^[:alnum:]]\)/\1finàre\2\3/g
s/\b\([Aa]\)finessi\([ns]\)\([^[:alnum:]]\)/\1finare\2\3/g
s/\b\([Aa]\)fin\([io]\)\([^[:alnum:]]\)/\1fine\3/g
s/\b\([Aa]\)fini\([ns]\)\([^[:alnum:]]\)/\1fine\2\3/g
    # desafinar
    s/\b\([Dd]\)esafinés\([^[:alnum:]]\)/\1esafinara\2/g
    s/\b\([Dd]\)esafinéssi\([mu]\)\([^[:alnum:]]\)/\1esafinàre\2\3/g
    s/\b\([Dd]\)esafinessi\([ns]\)\([^[:alnum:]]\)/\1esafinare\2\3/g
    s/\b\([Dd]\)esafin\([io]\)\([^[:alnum:]]\)/\1esafine\3/g
    s/\b\([Dd]\)esafini\([ns]\)\([^[:alnum:]]\)/\1esafine\2\3/g
# agafar
s/\b\([Aa]\)gafés\([^[:alnum:]]\)/\1gafara\2/g
s/\b\([Aa]\)gaféssi\([mu]\)\([^[:alnum:]]\)/\1gafàre\2\3/g
s/\b\([Aa]\)gafessi\([ns]\)\([^[:alnum:]]\)/\1gafare\2\3/g
s/\b\([Aa]\)gaf\([io]\)\([^[:alnum:]]\)/\1gafe\3/g
s/\b\([Aa]\)gafi\([ns]\)\([^[:alnum:]]\)/\1gafe\2\3/g
# agilitzar
s/\b\([Aa]\)gilitzés\([^[:alnum:]]\)/\1gilitzara\2/g
s/\b\([Aa]\)gilitzéssi\([mu]\)\([^[:alnum:]]\)/\1gilitzàre\2\3/g
s/\b\([Aa]\)gilitzessi\([ns]\)\([^[:alnum:]]\)/\1gilitzare\2\3/g
s/\b\([Aa]\)gilitz\([io]\)\([^[:alnum:]]\)/\1gilitze\3/g
s/\b\([Aa]\)gilitzi\([ns]\)\([^[:alnum:]]\)/\1gilitze\2\3/g
s/\b\([Aa]\)fganès\([^[:alnum:]]\)/\1fganés\2/g
    # agilitar -> agilitzar
    s/\b\([Aa]\)gilita\(da\|des\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1gilitza\2\3/g
    s/\b\([Aa]\)gilités\([^[:alnum:]]\)/\1gilitzara\2/g
    s/\b\([Aa]\)gilite\([mu]\)\([^[:alnum:]]\)/\1gilitzàre\2\3/g
    s/\b\([Aa]\)giliti\([ns]\)\([^[:alnum:]]\)/\1gilitzare\2\3/g
    s/\b\([Aa]\)gilit\(i\|o\)\(m\|n\|s\|u\)\([^[:alnum:]]\)/\1gilitze\3\4/g
    s/\b\([Aa]\)gilit\([io]\)\([^[:alnum:]]\)/\1gilitze\3/g
# agradar
s/\b\([Aa]\)gradés\([^[:alnum:]]\)/\1gradara\2/g
s/\b\([Aa]\)gradéssi\([mu]\)\([^[:alnum:]]\)/\1gradàre\2\3/g
s/\b\([Aa]\)gradessi\([ns]\)\([^[:alnum:]]\)/\1gradare\2\3/g
s/\b\([Aa]\)grad\([io]\)\([^[:alnum:]]\)/\1grade\3/g
s/\b\([Aa]\)gradi\([ns]\)\([^[:alnum:]]\)/\1grade\2\3/g
    # desagradar
    s/\b\([Dd]\)esagradés\([^[:alnum:]]\)/\1esagradara\2/g
    s/\b\([Dd]\)esagradéssi\([mu]\)\([^[:alnum:]]\)/\1esagradàre\2\3/g
    s/\b\([Dd]\)esagradessi\([ns]\)\([^[:alnum:]]\)/\1esagradare\2\3/g
    s/\b\([Dd]\)esagrad\([io]\)\([^[:alnum:]]\)/\1esagrade\3/g
    s/\b\([Dd]\)esagradi\([ns]\)\([^[:alnum:]]\)/\1esagrade\2\3/g
# agrair
s/\b\([Aa]\)graeix\(e[ns]\|\)\([^[:alnum:]]\)/\1graïx\2\3/g
s/\b\([Aa]\)graeixi\([^[:alnum:]]\)/\1graïsca\2/g
s/\b\([Aa]\)graeixi\([ns]\)\([^[:alnum:]]\)/\1graïsque\2\3/g
s/\b\([Aa]\)graeixo\([^[:alnum:]]\)/\1graïsc\2/g
s/\b\([Aa]\)graís\([^[:alnum:]]\)/\1graïra\2/g
s/\b\([Aa]\)graíssi\([mu]\)\([^[:alnum:]]\)/\1graíre\2\3/g
s/\b\([Aa]\)graïssi\([ns]\)\([^[:alnum:]]\)/\1graïre\2\3/g
    # desagrair
    s/\b\([Dd]\)esagraeix\(e[ns]\|\)\([^[:alnum:]]\)/\1esagraïx\2\3/g
    s/\b\([Dd]\)esagraeixi\([^[:alnum:]]\)/\1esagraïsca\2/g
    s/\b\([Dd]\)esagraeixi\([ns]\)\([^[:alnum:]]\)/\1esagraïsque\2\3/g
    s/\b\([Dd]\)esagraeixo\([^[:alnum:]]\)/\1esagraïsc\2/g
    s/\b\([Dd]\)esagraís\([^[:alnum:]]\)/\1esagraïra\2/g
    s/\b\([Dd]\)esagraíssi\([mu]\)\([^[:alnum:]]\)/\1esagraíre\2\3/g
    s/\b\([Dd]\)esagraïssi\([ns]\)\([^[:alnum:]]\)/\1esagraïre\2\3/g
# agredir
s/\b\([Aa]\)gredeix\(e[ns]\|\)\([^[:alnum:]]\)/\1gredix\2\3/g
s/\b\([Aa]\)gredeixi\([^[:alnum:]]\)/\1gredisca\2/g
s/\b\([Aa]\)gredeixi\([ns]\)\([^[:alnum:]]\)/\1gredisque\2\3/g
s/\b\([Aa]\)gredeixo\([^[:alnum:]]\)/\1gredisc\2/g
s/\b\([Aa]\)gredís\([^[:alnum:]]\)/\1gredira\2/g
s/\b\([Aa]\)gredíssi\([mu]\|\)\([^[:alnum:]]\)/\1gredíre\2\3/g
s/\b\([Aa]\)gredissi\([ns]\|\)\([^[:alnum:]]\)/\1gredire\2\3/g
# agrupar
s/\b\([Aa]\)grupés\([^[:alnum:]]\)/\1grupara\2/g
s/\b\([Aa]\)grupéssi\([mu]\)\([^[:alnum:]]\)/\1grupàre\2\3/g
s/\b\([Aa]\)grupessi\([ns]\)\([^[:alnum:]]\)/\1grupare\2\3/g
s/\b\([Aa]\)grup\([io]\)\([^[:alnum:]]\)/\1grupe\3/g
s/\b\([Aa]\)grupi\([ns]\)\([^[:alnum:]]\)/\1grupe\2\3/g
    # TODO: no
    # desagrupar
    s/\b\([Dd]\)esagrupés\([^[:alnum:]]\)/\1esagrupara\2/g
    s/\b\([Dd]\)esagrupéssi\([mu]\)\([^[:alnum:]]\)/\1esagrupàre\2\3/g
    s/\b\([Dd]\)esagrupessi\([ns]\)\([^[:alnum:]]\)/\1esagrupare\2\3/g
    s/\b\([Dd]\)esagrup\([io]\)\([^[:alnum:]]\)/\1esagrupe\3/g
    s/\b\([Dd]\)esagrupi\([ns]\)\([^[:alnum:]]\)/\1esagrupe\2\3/g
# aguditzar
s/\b\([Aa]\)guditzés\([^[:alnum:]]\)/\1guditzara\2/g
s/\b\([Aa]\)guditzéssi\([mu]\)\([^[:alnum:]]\)/\1guditzàre\2\3/g
s/\b\([Aa]\)guditzessi\([ns]\)\([^[:alnum:]]\)/\1guditzare\2\3/g
s/\b\([Aa]\)guditz\([io]\)\([^[:alnum:]]\)/\1guditze\3/g
s/\b\([Aa]\)guditzi\([ns]\)\([^[:alnum:]]\)/\1guditze\2\3/g
# airejar
s/\b\([Aa]\)iregés\([^[:alnum:]]\)/\1irejara\2/g
s/\b\([Aa]\)iregéssi\([mu]\)\([^[:alnum:]]\)/\1irejàre\2\3/g
s/\b\([Aa]\)iregessi\([ns]\)\([^[:alnum:]]\)/\1irejare\2\3/g
s/\b\([Aa]\)iregi\([ns]\|\)\([^[:alnum:]]\)/\1irege\2\3/g
s/\b\([Aa]\)irejo\([^[:alnum:]]\)/\1irege\2/g
# aixecar
s/\b\([Aa]\)ixeco\([^[:alnum:]]\)/\1ixeque\2/g
s/\b\([Aa]\)ixequés\([^[:alnum:]]\)/\1ixecara\2/g
s/\b\([Aa]\)ixequéssi\([mu]\)\([^[:alnum:]]\)/\1ixecàre\2\3/g
s/\b\([Aa]\)ixequessi\([ns]\)\([^[:alnum:]]\)/\1ixecare\2\3/g
s/\b\([Aa]\)ixequi\([ns]\|\)\([^[:alnum:]]\)/\1ixeque\2\3/g
s/\b\([Aa]\)ixò\([^[:alnum:]]\)/\1çò\2/g
# ajornar
s/\b\([Aa]\)jornés\([^[:alnum:]]\)/\1jornara\2/g
s/\b\([Aa]\)jornéssi\([mu]\)\([^[:alnum:]]\)/\1jornàre\2\3/g
s/\b\([Aa]\)jornessi\([ns]\)\([^[:alnum:]]\)/\1jornare\2\3/g
s/\b\([Aa]\)jorn\([io]\)\([^[:alnum:]]\)/\1jorne\3/g
s/\b\([Aa]\)jorni\([ns]\)\([^[:alnum:]]\)/\1jorne\2\3/g
# ajudar
s/\b\([Aa]\)judés\([^[:alnum:]]\)/\1judara\2/g
s/\b\([Aa]\)judéssi\([mu]\)\([^[:alnum:]]\)/\1judàre\2\3/g
s/\b\([Aa]\)judessi\([ns]\)\([^[:alnum:]]\)/\1judare\2\3/g
s/\b\([Aa]\)jud\([io]\)\([^[:alnum:]]\)/\1jude\3/g
s/\b\([Aa]\)judi\([ns]\)\([^[:alnum:]]\)/\1jude\2\3/g
# ajustar
s/\b\([Aa]\)justés\([^[:alnum:]]\)/\1justara\2/g
s/\b\([Aa]\)justéssi\([mu]\)\([^[:alnum:]]\)/\1justàre\2\3/g
s/\b\([Aa]\)justessi\([ns]\)\([^[:alnum:]]\)/\1justare\2\3/g
s/\b\([Aa]\)just\([io]\)\([^[:alnum:]]\)/\1juste\3/g
s/\b\([Aa]\)justi\([ns]\)\([^[:alnum:]]\)/\1juste\2\3/g
    # desajustar
    s/\b\([Dd]\)esajustés\([^[:alnum:]]\)/\1esajustara\2/g
    s/\b\([Dd]\)esajustéssi\([mu]\)\([^[:alnum:]]\)/\1esajustàre\2\3/g
    s/\b\([Dd]\)esajustessi\([ns]\)\([^[:alnum:]]\)/\1esajustare\2\3/g
    s/\b\([Dd]\)esajust\([io]\)\([^[:alnum:]]\)/\1esajuste\3/g
    s/\b\([Dd]\)esajusti\([ns]\)\([^[:alnum:]]\)/\1esajuste\2\3/g
    # reajustar
    s/\b\([Rr]\)eajustés\([^[:alnum:]]\)/\1eajustara\2/g
    s/\b\([Rr]\)eajustéssi\([mu]\)\([^[:alnum:]]\)/\1eajustàre\2\3/g
    s/\b\([Rr]\)eajustessi\([ns]\)\([^[:alnum:]]\)/\1eajustare\2\3/g
    s/\b\([Rr]\)eajust\([io]\)\([^[:alnum:]]\)/\1eajuste\3/g
    s/\b\([Rr]\)eajusti\([ns]\)\([^[:alnum:]]\)/\1eajuste\2\3/g
s/\b\([Aa]\)lbanès\([^[:alnum:]]\)/\1lbanés\2/g
# alçar
s/\b\([Aa]\)lcés\([^[:alnum:]]\)/\1lçara\2/g
s/\b\([Aa]\)lcéssi\([mu]\)\([^[:alnum:]]\)/\1lçàre\2\3/g
s/\b\([Aa]\)lcessi\([ns]\)\([^[:alnum:]]\)/\1lçare\2\3/g
s/\b\([Aa]\)lço\([^[:alnum:]]\)/\1lce\2/g
s/\b\([Aa]\)lci\([ns]\|\)\([^[:alnum:]]\)/\1lce\2\3/g
# alimentar
s/\b\([Aa]\)limentés\([^[:alnum:]]\)/\1limentara\2/g
s/\b\([Aa]\)limentéssi\([mu]\)\([^[:alnum:]]\)/\1limentàre\2\3/g
s/\b\([Aa]\)limentessi\([ns]\)\([^[:alnum:]]\)/\1limentare\2\3/g
s/\b\([Aa]\)liment\([io]\)\([^[:alnum:]]\)/\1limente\3/g
s/\b\([Aa]\)limenti\([ns]\)\([^[:alnum:]]\)/\1limente\2\3/g
    # sobrealimentar
    s/\b\([Ss]\)obrealimentés\([^[:alnum:]]\)/\1obrealimentara\2/g
    s/\b\([Ss]\)obrealimentéssi\([mu]\)\([^[:alnum:]]\)/\1obrealimentàre\2\3/g
    s/\b\([Ss]\)obrealimentessi\([ns]\)\([^[:alnum:]]\)/\1obrealimentare\2\3/g
    s/\b\([Ss]\)obrealiment\([io]\)\([^[:alnum:]]\)/\1obrealimente\3/g
    s/\b\([Ss]\)obrealimenti\([ns]\)\([^[:alnum:]]\)/\1obrealimente\2\3/g
# alinear
s/\b\([Aa]\)lineés\([^[:alnum:]]\)/\1lineara\2/g
s/\b\([Aa]\)lineéssi\([mu]\)\([^[:alnum:]]\)/\1lineàre\2\3/g
s/\b\([Aa]\)lineessi\([ns]\)\([^[:alnum:]]\)/\1lineare\2\3/g
s/\b\([Aa]\)line\([ïo]\)\([^[:alnum:]]\)/\1linee\3/g
s/\b\([Aa]\)lineï\([ns]\)\([^[:alnum:]]\)/\1linee\2\3/g
    # desalinear
    s/\b\([Dd]\)esalineés\([^[:alnum:]]\)/\1esalineara\2/g
    s/\b\([Dd]\)esalineéssi\([mu]\)\([^[:alnum:]]\)/\1esalineàre\2\3/g
    s/\b\([Dd]\)esalineessi\([ns]\)\([^[:alnum:]]\)/\1esalineare\2\3/g
    s/\b\([Dd]\)esaline\([ïo]\)\([^[:alnum:]]\)/\1esalinee\3/g
    s/\b\([Dd]\)esalineï\([ns]\)\([^[:alnum:]]\)/\1esalinee\2\3/g
    # realinear
    # TODO: no
    s/\b\([Rr]\)ealineés\([^[:alnum:]]\)/\1ealineara\2/g
    s/\b\([Rr]\)ealineéssi\([mu]\)\([^[:alnum:]]\)/\1ealineàre\2\3/g
    s/\b\([Rr]\)ealineessi\([ns]\)\([^[:alnum:]]\)/\1ealineare\2\3/g
    s/\b\([Rr]\)ealine\([ïo]\)\([^[:alnum:]]\)/\1ealinee\3/g
    s/\b\([Rr]\)ealineï\([ns]\)\([^[:alnum:]]\)/\1ealinee\2\3/g
# alleujar
s/\b\([Aa]\)lleugés\([^[:alnum:]]\)/\1lleujara\2/g
s/\b\([Aa]\)lleugéssi\([mu]\)\([^[:alnum:]]\)/\1lleujàre\2\3/g
s/\b\([Aa]\)lleugessi\([ns]\)\([^[:alnum:]]\)/\1lleujare\2\3/g
s/\b\([Aa]\)lleugi\([ns]\|\)\([^[:alnum:]]\)/\1lleuge\2\3/g
s/\b\([Aa]\)lleujo\([^[:alnum:]]\)/\1lleuge\2/g
# alliberar
s/\b\([Aa]\)lliberés\([^[:alnum:]]\)/\1lliberara\2/g
s/\b\([Aa]\)lliberéssi\([mu]\)\([^[:alnum:]]\)/\1lliberàre\2\3/g
s/\b\([Aa]\)lliberessi\([ns]\)\([^[:alnum:]]\)/\1lliberare\2\3/g
s/\b\([Aa]\)lliber\([io]\)\([^[:alnum:]]\)/\1llibere\3/g
s/\b\([Aa]\)lliberi\([ns]\)\([^[:alnum:]]\)/\1llibere\2\3/g
# allunyar
s/\b\([Aa]\)llunyés\([^[:alnum:]]\)/\1llunyara\2/g
s/\b\([Aa]\)llunyéssi\([mu]\)\([^[:alnum:]]\)/\1llunyàre\2\3/g
s/\b\([Aa]\)llunyessi\([ns]\)\([^[:alnum:]]\)/\1llunyare\2\3/g
s/\b\([Aa]\)lluny\([io]\)\([^[:alnum:]]\)/\1llunye\3/g
s/\b\([Aa]\)llunyi\([ns]\)\([^[:alnum:]]\)/\1llunye\2\3/g
# alçada -> alçària (esmenes)
# alçar
s/\b\([Aa]\)lcés\([^[:alnum:]]\)/\1lçara\2/g
s/\b\([Aa]\)lcéssi\([mu]\)\([^[:alnum:]]\)/\1lçàre\2\3/g
s/\b\([Aa]\)lcessi\([ns]\)\([^[:alnum:]]\)/\1lçare\2\3/g
s/\b\([Aa]\)lci\([ns]\|\)\([^[:alnum:]]\)/\1lce\2\3/g
s/\b\([Aa]\)lço\([^[:alnum:]]\)/\1lce\2/g
    # calçar (esmenes)
    s/\b\([Cc]\)alcés\([^[:alnum:]]\)/\1alçara\2/g
    s/\b\([Cc]\)alcéssi\([mu]\)\([^[:alnum:]]\)/\1alçàre\2\3/g
    s/\b\([Cc]\)alcessi\([ns]\)\([^[:alnum:]]\)/\1alçare\2\3/g
    s/\b\([Cc]\)alço\([^[:alnum:]]\)/\1alce\2/g
    # descalçar
    s/\b\([Dd]\)escalcés\([^[:alnum:]]\)/\1escalçara\2/g
    s/\b\([Dd]\)escalcéssi\([mu]\)\([^[:alnum:]]\)/\1escalçàre\2\3/g
    s/\b\([Dd]\)escalcessi\([ns]\)\([^[:alnum:]]\)/\1escalçare\2\3/g
    s/\b\([Dd]\)escalci\([ns]\|\)\([^[:alnum:]]\)/\1escalce\2\3/g
    s/\b\([Dd]\)escalço\([^[:alnum:]]\)/\1escalce\2/g
    # encalçar
    s/\b\([Ee]\)encalcés\([^[:alnum:]]\)/\1encalçara\2/g
    s/\b\([Ee]\)encalcéssi\([mu]\)\([^[:alnum:]]\)/\1encalçàre\2\3/g
    s/\b\([Ee]\)encalcessi\([ns]\)\([^[:alnum:]]\)/\1encalçare\2\3/g
    s/\b\([Ee]\)encalci\([ns]\|\)\([^[:alnum:]]\)/\1encalce\2\3/g
    s/\b\([Ee]\)encalço\([^[:alnum:]]\)/\1encalce\2/g
    # exalçar
    s/\b\([Ee]\)exalcés\([^[:alnum:]]\)/\1exalçara\2/g
    s/\b\([Ee]\)exalcéssi\([mu]\)\([^[:alnum:]]\)/\1exalçàre\2\3/g
    s/\b\([Ee]\)exalcessi\([ns]\)\([^[:alnum:]]\)/\1exalçare\2\3/g
    s/\b\([Ee]\)exalci\([ns]\|\)\([^[:alnum:]]\)/\1exalce\2\3/g
    s/\b\([Ee]\)exalço\([^[:alnum:]]\)/\1exalce\2/g
        # realçar
        s/\b\([Rr]\)ealcés\([^[:alnum:]]\)/\1ealçara\2/g
        s/\b\([Rr]\)ealcéssi\([mu]\)\([^[:alnum:]]\)/\1ealçàre\2\3/g
        s/\b\([Rr]\)ealcessi\([ns]\)\([^[:alnum:]]\)/\1ealçare\2\3/g
        s/\b\([Rr]\)ealci\([ns]\|\)\([^[:alnum:]]\)/\1ealce\2\3/g
        s/\b\([Rr]\)ealço\([^[:alnum:]]\)/\1ealce\2/g
    # sobrealçar
    s/\b\([Ss]\)obrealcés\([^[:alnum:]]\)/\1obrealçara\2/g
    s/\b\([Ss]\)obrealcéssi\([mu]\)\([^[:alnum:]]\)/\1obrealçàre\2\3/g
    s/\b\([Ss]\)obrealcessi\([ns]\)\([^[:alnum:]]\)/\1obrealçare\2\3/g
    s/\b\([Ss]\)obrealci\([ns]\|\)\([^[:alnum:]]\)/\1obrealce\2\3/g
    s/\b\([Ss]\)obrealço\([^[:alnum:]]\)/\1obrealce\2/g
# alentir
s/\b\([Aa]\)lenteix\(e[ns]\|\)\([^[:alnum:]]\)/\1lentix\2\3/g
s/\b\([Aa]\)lenteixi\([^[:alnum:]]\)/\1lentisca\2/g
s/\b\([Aa]\)lenteixi\([ns]\)\([^[:alnum:]]\)/\1lentisque\2\3/g
s/\b\([Aa]\)lenteixo\([^[:alnum:]]\)/\1lentisc\2/g
s/\b\([Aa]\)lentís\([^[:alnum:]]\)/\1lentira\2/g
s/\b\([Aa]\)lentíssi\([mu]\)\([^[:alnum:]]\)/\1lentíre\2\3/g
s/\b\([Aa]\)lentissi\([ns]\)\([^[:alnum:]]\)/\1lentire\2\3/g
    # envalentir
    s/\b\([Ee]\)nvalenteix\(e[ns]\|\)\([^[:alnum:]]\)/\1nvalentix\2\3/g
    s/\b\([Ee]\)nvalenteixi\([^[:alnum:]]\)/\1nvalentisca\2/g
    s/\b\([Ee]\)nvalenteixi\([ns]\)\([^[:alnum:]]\)/\1nvalentisque\2\3/g
    s/\b\([Ee]\)nvalenteixo\([^[:alnum:]]\)/\1nvalentisc\2/g
    s/\b\([Ee]\)nvalentís\([^[:alnum:]]\)/\1nvalentira\2/g
    s/\b\([Ee]\)nvalentíssi\([mu]\)\([^[:alnum:]]\)/\1nvalentíre\2\3/g
    s/\b\([Ee]\)nvalentissi\([ns]\)\([^[:alnum:]]\)/\1nvalentire\2\3/g
# alimentar
s/\b\([Aa]\)limentés\([^[:alnum:]]\)/\1limentara\2/g
s/\b\([Aa]\)limentéssi\([mu]\)\([^[:alnum:]]\)/\1limentàre\2\3/g
s/\b\([Aa]\)limentessi\([ns]\)\([^[:alnum:]]\)/\1limentare\2\3/g
s/\b\([Aa]\)limenti\([ns]\)\([^[:alnum:]]\)/\1limente\2\3/g
s/\b\([Aa]\)liment\([io]\)\([^[:alnum:]]\)/\1limente\2/g
s/\bAmanida\([^[:alnum:]]\)/Ensalada\1/g
s/\bamanida\([^[:alnum:]]\)/ensalada\1/g
s/\b\([Aa]\)metll\(a\|es\)\([^[:alnum:]]\)/\1metl\2\3/g
# amollar (esmenes)
s/\b\([Aa]\)mollés\([^[:alnum:]]\)/\1mollara\2/g
s/\b\([Aa]\)molléssi\([mu]\)\([^[:alnum:]]\)/\1mollàre\2\3/g
s/\b\([Aa]\)mollessi\([ns]\)\([^[:alnum:]]\)/\1mollare\2\3/g
s/\b\([Aa]\)moll\([io]\)\([^[:alnum:]]\)/\1molle\2/g
s/\b\([Aa]\)molli\([ns]\)\([^[:alnum:]]\)/\1molle\2\3/g
# amortitzar
s/\b\([Aa]\)mortitzés\([^[:alnum:]]\)/\1mortitzara\2/g
s/\b\([Aa]\)mortitzéssi\([mu]\)\([^[:alnum:]]\)/\1mortitzàre\2\3/g
s/\b\([Aa]\)mortitzessi\([ns]\)\([^[:alnum:]]\)/\1mortitzare\2\3/g
s/\b\([Aa]\)mortitz\([io]\)\([^[:alnum:]]\)/\1mortitze\2/g
s/\b\([Aa]\)mortitzi\([ns]\)\([^[:alnum:]]\)/\1mortitze\2\3/g
    # desamortitzar
    s/\b\([Dd]\)esamortitzés\([^[:alnum:]]\)/\1esamortitzara\2/g
    s/\b\([Dd]\)esamortitzéssi\([mu]\)\([^[:alnum:]]\)/\1esamortitzàre\2\3/g
    s/\b\([Dd]\)esamortitzessi\([ns]\)\([^[:alnum:]]\)/\1esamortitzare\2\3/g
    s/\b\([Dd]\)esamortitz\([io]\)\([^[:alnum:]]\)/\1esamortitze\2/g
    s/\b\([Dd]\)esamortitzi\([ns]\)\([^[:alnum:]]\)/\1esamortitze\2\3/g
# amplada -> amplària (esmenes)
# ampliar
s/\b\([Aa]\)mpliés\([^[:alnum:]]\)/\1mpliara\2/g
s/\b\([Aa]\)mpliéssi\([mu]\)\([^[:alnum:]]\)/\1mpliàre\2\3/g
s/\b\([Aa]\)mpliessi\([ns]\)\([^[:alnum:]]\)/\1mpliare\2\3/g
s/\b\([Aa]\)mpli\([ïo]\)\([^[:alnum:]]\)/\1mplie\3/g
s/\b\([Aa]\)mpliï\([ns]\|\)\([^[:alnum:]]\)/\1mplie\2\3/g
# analitzar
s/\b\([Aa]\)nalitzés\([^[:alnum:]]\)/\1nalitzara\2/g
s/\b\([Aa]\)nalitzéssi\([mu]\)\([^[:alnum:]]\)/\1nalitzàre\2\3/g
s/\b\([Aa]\)nalitzessi\([ns]\)\([^[:alnum:]]\)/\1nalitzare\2\3/g
s/\b\([Aa]\)nalitz\([io]\)\([^[:alnum:]]\)/\1nalitze\3/g
s/\b\([Aa]\)nalitzi\([ns]\)\([^[:alnum:]]\)/\1nalitze\2\3/g
# anar
s/\b\([Aa]\)nés\([^[:alnum:]]\)/\1nara\2/g
s/\b\([Aa]\)néssi\([mu]\)\([^[:alnum:]]\)/\1nàre\2\3/g
s/\b\([Aa]\)nessi\([ns]\)\([^[:alnum:]]\)/\1nare\2\3/g
s/\b\([Vv]\)agi\([^[:alnum:]]\)/\1aja\2/g
s/\b\([Vv]\)àgi\([mu]\)\([^[:alnum:]]\)/\1àge\2\3/g
s/\b\([Vv]\)agi\([ns]\)\([^[:alnum:]]\)/\1age\2\3/g
s/\b\([Aa]\)nglès\([^[:alnum:]]\)/\1nglés\2/g
# animar
s/\b\([Aa]\)nimés\([^[:alnum:]]\)/\1nimara\2/g
s/\b\([Aa]\)niméssi\([mu]\)\([^[:alnum:]]\)/\1nimàre\2\3/g
s/\b\([Aa]\)nimessi\([ns]\)\([^[:alnum:]]\)/\1nimare\2\3/g
s/\b\([Aa]\)nim\([io]\)\([^[:alnum:]]\)/\1nime\3/g
s/\b\([Aa]\)nimi\([ns]\)\([^[:alnum:]]\)/\1nime\2\3/g
# anivellar
s/\b\([Aa]\)nivellés\([^[:alnum:]]\)/\1nivellara\2/g
s/\b\([Aa]\)nivelléssi\([mu]\)\([^[:alnum:]]\)/\1nivellàre\2\3/g
s/\b\([Aa]\)nivellessi\([ns]\)\([^[:alnum:]]\)/\1nivellare\2\3/g
s/\b\([Aa]\)nivell\([io]\)\([^[:alnum:]]\)/\1nivelle\3/g
s/\b\([Aa]\)nivelli\([ns]\)\([^[:alnum:]]\)/\1nivelle\2\3/g
    # desnivellar
    s/\b\([Dd]\)esnivellés\([^[:alnum:]]\)/\1esnivellara\2/g
    s/\b\([Dd]\)esnivelléssi\([mu]\)\([^[:alnum:]]\)/\1esnivellàre\2\3/g
    s/\b\([Dd]\)esnivellessi\([ns]\)\([^[:alnum:]]\)/\1esnivellare\2\3/g
    s/\b\([Dd]\)esnivell\([io]\)\([^[:alnum:]]\)/\1esnivelle\3/g
    s/\b\([Dd]\)esnivelli\([ns]\)\([^[:alnum:]]\)/\1esnivelle\2\3/g
# anomenar
s/\b\([Aa]\)nomenés\([^[:alnum:]]\)/\1nomenara\2/g
s/\b\([Aa]\)nomenéssi\([mu]\)\([^[:alnum:]]\)/\1nomenàre\2\3/g
s/\b\([Aa]\)nomenessi\([ns]\)\([^[:alnum:]]\)/\1nomenare\2\3/g
s/\b\([Aa]\)nomen\([io]\)\([^[:alnum:]]\)/\1nomene\3/g
s/\b\([Aa]\)nomeni\([ns]\)\([^[:alnum:]]\)/\1nomene\2\3/g
# anul·lar
s/\b\([Aa]\)nul·lés\([^[:alnum:]]\)/\1nul·lara\2/g
s/\b\([Aa]\)nul·léssi\([mu]\)\([^[:alnum:]]\)/\1nul·làre\2\3/g
s/\b\([Aa]\)nul·lessi\([ns]\)\([^[:alnum:]]\)/\1nul·lare\2\3/g
s/\b\([Aa]\)nul·l\([io]\)\([^[:alnum:]]\)/\1nul·le\3/g
s/\b\([Aa]\)nul·li\([ns]\)\([^[:alnum:]]\)/\1nul·le\2\3/g
# apagar
s/\b\([Aa]\)pagués\([^[:alnum:]]\)/\1pagara\2/g
s/\b\([Aa]\)paguéssi\([mu]\)\([^[:alnum:]]\)/\1pagàre\2\3/g
s/\b\([Aa]\)paguessi\([ns]\)\([^[:alnum:]]\)/\1pagare\2\3/g
s/\b\([Aa]\)pagui\([^[:alnum:]]\)/\1paga\2/g
s/\b\([Aa]\)pagui\([ns]\)\([^[:alnum:]]\)/\1pague\2\3/g
s/\b\([Aa]\)pago\([^[:alnum:]]\)/\1pague\2/g
# aparellar
s/\b\([Aa]\)parellés\([^[:alnum:]]\)/\1parellara\2/g
s/\b\([Aa]\)parelléssi\([mu]\)\([^[:alnum:]]\)/\1parellàre\2\3/g
s/\b\([Aa]\)parellessi\([ns]\)\([^[:alnum:]]\)/\1parellare\2\3/g
s/\b\([Aa]\)parell\([io]\)\([^[:alnum:]]\)/\1parelle\3/g
s/\b\([Aa]\)parelli\([ns]\)\([^[:alnum:]]\)/\1parelle\2\3/g
# aparentar
s/\b\([Aa]\)parentés\([^[:alnum:]]\)/\1parentara\2/g
s/\b\([Aa]\)parentéssi\([mu]\)\([^[:alnum:]]\)/\1parentàre\2\3/g
s/\b\([Aa]\)parentessi\([ns]\)\([^[:alnum:]]\)/\1parentare\2\3/g
s/\b\([Aa]\)parent\([io]\)\([^[:alnum:]]\)/\1parente\3/g
s/\b\([Aa]\)parenti\([ns]\)\([^[:alnum:]]\)/\1parente\2\3/g
# apilar
s/\b\([Aa]\)pilés\([^[:alnum:]]\)/\1pilara\2/g
s/\b\([Aa]\)piléssi\([mu]\)\([^[:alnum:]]\)/\1pilàre\2\3/g
s/\b\([Aa]\)pilessi\([ns]\)\([^[:alnum:]]\)/\1pilare\2\3/g
s/\b\([Aa]\)pil\([io]\)\([^[:alnum:]]\)/\1pile\3/g
s/\b\([Aa]\)pili\([ns]\)\([^[:alnum:]]\)/\1pile\2\3/g
# aplicar
s/\b\([Aa]\)pliqués\([^[:alnum:]]\)/\1plicara\2/g
s/\b\([Aa]\)pliquéssi\([mu]\)\([^[:alnum:]]\)/\1plicàre\2\3/g
s/\b\([Aa]\)pliquessi\([ns]\)\([^[:alnum:]]\)/\1plicare\2\3/g
s/\b\([Aa]\)pliqui\([ns]\|\)\([^[:alnum:]]\)/\1plique\2\3/g
s/\b\([Aa]\)plico\([^[:alnum:]]\)/\1plique\2/g
    # desaplicar
    s/\b\([Dd]\)esapliqués\([^[:alnum:]]\)/\1esaplicara\2/g
    s/\b\([Dd]\)esapliquéssi\([mu]\)\([^[:alnum:]]\)/\1esaplicàre\2\3/g
    s/\b\([Dd]\)esapliquessi\([ns]\)\([^[:alnum:]]\)/\1esaplicare\2\3/g
    s/\b\([Dd]\)esapliqui\([ns]\|\)\([^[:alnum:]]\)/\1esaplique\2\3/g
    s/\b\([Dd]\)esaplico\([^[:alnum:]]\)/\1esaplique\2/g
# aplanar
s/\b\([Aa]\)planés\([^[:alnum:]]\)/\1planara\2/g
s/\b\([Aa]\)planéssi\([mu]\)\([^[:alnum:]]\)/\1planàre\2\3/g
s/\b\([Aa]\)planessi\([ns]\)\([^[:alnum:]]\)/\1planare\2\3/g
s/\b\([Aa]\)plan\([io]\)\([^[:alnum:]]\)/\1plane\3/g
s/\b\([Aa]\)plani\([ns]\)\([^[:alnum:]]\)/\1plane\2\3/g
# aplaudir
s/\b\([Aa]\)plaudeix\(e[ns]\|\)\([^[:alnum:]]\)/\1plaudix\2\3/g
s/\b\([Aa]\)plaudeixi\([^[:alnum:]]\)/\1plaudisca\2/g
s/\b\([Aa]\)plaudeixi\([ns]\)\([^[:alnum:]]\)/\1plaudisque\2\3/g
s/\b\([Aa]\)plaudeixo\([^[:alnum:]]\)/\1plaudisc\2/g
s/\b\([Aa]\)plaudís\([^[:alnum:]]\)/\1plaudira\2/g
s/\b\([Aa]\)plaudíssi\([mu]\|\)\([^[:alnum:]]\)/\1plaudíre\2\3/g
s/\b\([Aa]\)plaudissi\([ns]\|\)\([^[:alnum:]]\)/\1plaudire\2\3/g
# aprofitar
s/\b\([Aa]\)profités\([^[:alnum:]]\)/\1profitara\2/g
s/\b\([Aa]\)profitéssi\([mu]\)\([^[:alnum:]]\)/\1profitàre\2\3/g
s/\b\([Aa]\)profitessi\([ns]\)\([^[:alnum:]]\)/\1profitare\2\3/g
s/\b\([Aa]\)profit\([io]\)\([^[:alnum:]]\)/\1profite\3/g
s/\b\([Aa]\)profiti\([ns]\)\([^[:alnum:]]\)/\1profite\2\3/g
    # desaprofitar
    s/\b\([Dd]\)esaprofités\([^[:alnum:]]\)/\1esaprofitara\2/g
    s/\b\([Dd]\)esaprofitéssi\([mu]\)\([^[:alnum:]]\)/\1esaprofitàre\2\3/g
    s/\b\([Dd]\)esaprofitessi\([ns]\)\([^[:alnum:]]\)/\1esaprofitare\2\3/g
    s/\b\([Dd]\)esaprofit\([io]\)\([^[:alnum:]]\)/\1esaprofite\3/g
    s/\b\([Dd]\)esaprofiti\([ns]\)\([^[:alnum:]]\)/\1esaprofite\2\3/g
# aprofundir
s/\b\([Aa]\)profundeix\(e[ns]\|\)\([^[:alnum:]]\)/\1profundix\2\3/g
s/\b\([Aa]\)profundeixi\([^[:alnum:]]\)/\1profundisca\2/g
s/\b\([Aa]\)profundeixi\([ns]\)\([^[:alnum:]]\)/\1profundisque\2\3/g
s/\b\([Aa]\)profundeixo\([^[:alnum:]]\)/\1profundisc\2/g
s/\b\([Aa]\)profundís\([^[:alnum:]]\)/\1profundira\2/g
s/\b\([Aa]\)profundíssi\([mu]\)\([^[:alnum:]]\)/\1profundíre\2\3/g
s/\b\([Aa]\)profundissi\([ns]\)\([^[:alnum:]]\)/\1profundire\2\3/g
# apropar -> acostar (esmenes)
# apropiar
s/\b\([Aa]\)propiés\([^[:alnum:]]\)/\1propiara\2/g
s/\b\([Aa]\)propiéssi\([mu]\)\([^[:alnum:]]\)/\1propiàre\2\3/g
s/\b\([Aa]\)propiessi\([ns]\)\([^[:alnum:]]\)/\1propiare\2\3/g
s/\b\([Aa]\)propi\([ïo]\)\([^[:alnum:]]\)/\1propie\3/g
s/\b\([Aa]\)propiï\([ns]\)\([^[:alnum:]]\)/\1propie\2\3/g
# aproximar
s/\b\([Aa]\)proximés\([^[:alnum:]]\)/\1proximara\2/g
s/\b\([Aa]\)proximéssi\([mu]\)\([^[:alnum:]]\)/\1proximàre\2\3/g
s/\b\([Aa]\)proximessi\([ns]\)\([^[:alnum:]]\)/\1proximare\2\3/g
s/\b\([Aa]\)proxim\([io]\)\([^[:alnum:]]\)/\1proxime\3/g
s/\b\([Aa]\)proximi\([ns]\)\([^[:alnum:]]\)/\1proxime\2\3/g
# apuntar
s/\b\([Aa]\)puntés\([^[:alnum:]]\)/\1puntara\2/g
s/\b\([Aa]\)puntéssi\([mu]\)\([^[:alnum:]]\)/\1puntàre\2\3/g
s/\b\([Aa]\)puntessi\([ns]\)\([^[:alnum:]]\)/\1puntare\2\3/g
s/\b\([Aa]\)punt\([io]\)\([^[:alnum:]]\)/\1punte\3/g
s/\b\([Aa]\)punti\([ns]\)\([^[:alnum:]]\)/\1punte\2\3/g
# aquest(a) (esmenes)
# aquí (esmenes)
# argumentar
s/\b\([Aa]\)rgumentés\([^[:alnum:]]\)/\1rgumentara\2/g
s/\b\([Aa]\)rgumentéssi\([mu]\)\([^[:alnum:]]\)/\1rgumentàre\2\3/g
s/\b\([Aa]\)rgumentessi\([ns]\)\([^[:alnum:]]\)/\1rgumentare\2\3/g
s/\b\([Aa]\)rgument\([io]\)\([^[:alnum:]]\)/\1rgumente\3/g
s/\b\([Aa]\)rgumenti\([ns]\)\([^[:alnum:]]\)/\1rgumente\2\3/g
# aromatitzar
s/\b\([Aa]\)romatitzés\([^[:alnum:]]\)/\1romatitzara\2/g
s/\b\([Aa]\)romatitzéssi\([mu]\)\([^[:alnum:]]\)/\1romatitzàre\2\3/g
s/\b\([Aa]\)romatitzessi\([ns]\)\([^[:alnum:]]\)/\1romatitzare\2\3/g
s/\b\([Aa]\)romatitz\([io]\)\([^[:alnum:]]\)/\1romatitze\3/g
s/\b\([Aa]\)romatitzi\([ns]\)\([^[:alnum:]]\)/\1romatitze\2\3/g
# arranjar
s/\b\([Aa]\)rrangés\([^[:alnum:]]\)/\1rranjara\2/g
s/\b\([Aa]\)rrangéssi\([mu]\)\([^[:alnum:]]\)/\1rranjàre\2\3/g
s/\b\([Aa]\)rrangessi\([ns]\)\([^[:alnum:]]\)/\1rranjare\2\3/g
s/\b\([Aa]\)rrangi\([ns]\|\)\([^[:alnum:]]\)/\1rrange\2\3/g
s/\b\([Aa]\)rranjo\([^[:alnum:]]\)/\1rrange\2/g
# arreglar
s/\b\([Aa]\)rreglés\([^[:alnum:]]\)/\1rreglara\2/g
s/\b\([Aa]\)rregléssi\([mu]\)\([^[:alnum:]]\)/\1rreglàre\2\3/g
s/\b\([Aa]\)rreglessi\([ns]\)\([^[:alnum:]]\)/\1rreglare\2\3/g
s/\b\([Aa]\)rregl\([io]\)\([^[:alnum:]]\)/\1rregle\3/g
s/\b\([Aa]\)rregli\([ns]\)\([^[:alnum:]]\)/\1rregle\2\3/g
    # desarreglar
    s/\b\([Dd]\)esarreglés\([^[:alnum:]]\)/\1esarreglara\2/g
    s/\b\([Dd]\)esarregléssi\([mu]\)\([^[:alnum:]]\)/\1esarreglàre\2\3/g
    s/\b\([Dd]\)esarreglessi\([ns]\)\([^[:alnum:]]\)/\1esarreglare\2\3/g
    s/\b\([Dd]\)esarregl\([io]\)\([^[:alnum:]]\)/\1esarregle\3/g
    s/\b\([Dd]\)esarregli\([ns]\)\([^[:alnum:]]\)/\1esarregle\2\3/g
# arrencar i arrancar -> arrancar (esmenes)
# arribar
s/\b\([Aa]\)rribés\([^[:alnum:]]\)/\1rribara\2/g
s/\b\([Aa]\)rribéssi\([mu]\)\([^[:alnum:]]\)/\1rribàre\2\3/g
s/\b\([Aa]\)rribessi\([ns]\)\([^[:alnum:]]\)/\1rribare\2\3/g
s/\b\([Aa]\)rrib\([io]\)\([^[:alnum:]]\)/\1rribe\3/g
s/\b\([Aa]\)rribi\([ns]\)\([^[:alnum:]]\)/\1rribe\2\3/g
# arrodonir -> arredonir (esmenes)
# arxivar
s/\b\([Aa]\)rxivés\([^[:alnum:]]\)/\1rxivara\2/g
s/\b\([Aa]\)rxivéssi\([mu]\)\([^[:alnum:]]\)/\1rxivàre\2\3/g
s/\b\([Aa]\)rxivessi\([ns]\)\([^[:alnum:]]\)/\1rxivare\2\3/g
s/\b\([Aa]\)rxiv\([io]\)\([^[:alnum:]]\)/\1rxive\3/g
s/\b\([Aa]\)rxivi\([ns]\)\([^[:alnum:]]\)/\1rxive\2\3/g
# ascendir
s/\b\([Aa]\)scendeix\(e[ns]\|\)\([^[:alnum:]]\)/\1scendix\2\3/g
s/\b\([Aa]\)scendeixi\([^[:alnum:]]\)/\1scendisca\2/g
s/\b\([Aa]\)scendeixi\([ns]\)\([^[:alnum:]]\)/\1scendisque\2\3/g
s/\b\([Aa]\)scendeixo\([^[:alnum:]]\)/\1scendisc\2/g
s/\b\([Aa]\)scendís\([^[:alnum:]]\)/\1scendira\2/g
s/\b\([Aa]\)scendíssi\([mu]\)\([^[:alnum:]]\)/\1scendíre\2\3/g
s/\b\([Aa]\)scendissi\([ns]\)\([^[:alnum:]]\)/\1scendire\2\3/g
    # transcendir
    s/\b\([Tt]\)ranscendeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ranscendix\2\3/g
    s/\b\([Tt]\)ranscendeixi\([^[:alnum:]]\)/\1ranscendisca\2/g
    s/\b\([Tt]\)ranscendeixi\([ns]\)\([^[:alnum:]]\)/\1ranscendisque\2\3/g
    s/\b\([Tt]\)ranscendeixo\([^[:alnum:]]\)/\1ranscendisc\2/g
    s/\b\([Tt]\)ranscendís\([^[:alnum:]]\)/\1ranscendira\2/g
    s/\b\([Tt]\)ranscendíssi\([mu]\)\([^[:alnum:]]\)/\1ranscendíre\2\3/g
    s/\b\([Tt]\)ranscendissi\([ns]\)\([^[:alnum:]]\)/\1ranscendire\2\3/g
# asprejar
s/\b\([Aa]\)spregés\([^[:alnum:]]\)/\1sprejara\2/g
s/\b\([Aa]\)spregéssi\([mu]\)\([^[:alnum:]]\)/\1sprejàre\2\3/g
s/\b\([Aa]\)spregessi\([ns]\)\([^[:alnum:]]\)/\1sprejare\2\3/g
s/\b\([Aa]\)spregi\([ns]\|\)\([^[:alnum:]]\)/\1sprege\2\3/g
s/\b\([Aa]\)sprejo\([^[:alnum:]]\)/\1sprege\2/g
# assajar
s/\b\([Aa]\)ssagés\([^[:alnum:]]\)/\1ssajara\2/g
s/\b\([Aa]\)ssagéssi\([mu]\)\([^[:alnum:]]\)/\1ssajàre\2\3/g
s/\b\([Aa]\)ssagessi\([ns]\)\([^[:alnum:]]\)/\1ssajare\2\3/g
s/\b\([Aa]\)ssa\(gi\|jo\)\([^[:alnum:]]\)/\1ssage\3/g
s/\b\([Aa]\)ssagi\([ns]\)\([^[:alnum:]]\)/\1ssage\2\3/g
s/\b\([Aa]\)ssamès\([^[:alnum:]]\)/\1ssamés\2/g
# assecar
s/\b\([Aa]\)sseco\([^[:alnum:]]\)/\1sseque\2/g
s/\b\([Aa]\)ssequés\([^[:alnum:]]\)/\1ssecara\2/g
s/\b\([Aa]\)ssequéssi\([mu]\)\([^[:alnum:]]\)/\1ssecàre\2\3/g
s/\b\([Aa]\)ssequessi\([ns]\)\([^[:alnum:]]\)/\1ssecare\2\3/g
s/\b\([Aa]\)ssequi\([ns]\|\)\([^[:alnum:]]\)/\1sseque\2\3/g
# assegurar
s/\b\([Aa]\)ssegurés\([^[:alnum:]]\)/\1ssegurara\2/g
s/\b\([Aa]\)sseguréssi\([mu]\)\([^[:alnum:]]\)/\1sseguràre\2\3/g
s/\b\([Aa]\)sseguressi\([ns]\)\([^[:alnum:]]\)/\1ssegurare\2\3/g
s/\b\([Aa]\)ssegur\([io]\)\([^[:alnum:]]\)/\1ssegure\3/g
s/\b\([Aa]\)sseguri\([ns]\)\([^[:alnum:]]\)/\1ssegure\2\3/g
    # reassegurar
    s/\b\([Rr]\)eassegurés\([^[:alnum:]]\)/\1eassegurara\2/g
    s/\b\([Rr]\)easseguréssi\([mu]\)\([^[:alnum:]]\)/\1easseguràre\2\3/g
    s/\b\([Rr]\)easseguressi\([ns]\)\([^[:alnum:]]\)/\1eassegurare\2\3/g
    s/\b\([Rr]\)eassegur\([io]\)\([^[:alnum:]]\)/\1eassegure\3/g
    s/\b\([Rr]\)easseguri\([ns]\)\([^[:alnum:]]\)/\1eassegure\2\3/g
# assignar
s/\b\([Aa]\)ssignés\([^[:alnum:]]\)/\1ssignara\2/g
s/\b\([Aa]\)ssignéssi\([mu]\)\([^[:alnum:]]\)/\1ssignàre\2\3/g
s/\b\([Aa]\)ssignessi\([ns]\)\([^[:alnum:]]\)/\1ssignare\2\3/g
s/\b\([Aa]\)ssign\([io]\)\([^[:alnum:]]\)/\1ssigne\3/g
s/\b\([Aa]\)ssign\([io]\)\([ns]\)\([^[:alnum:]]\)/\1ssigne\3\4/g
    # desassignar -> treure l'assignació (esmenes - # TODO: no)
    # reassignar -> tornar a assignar (esmenes - # TODO: no)
# assistir
s/\b\([Aa]\)ssisteix\(e[ns]\|\)\([^[:alnum:]]\)/\1ssistix\2\3/g
s/\b\([Aa]\)ssisteixi\([^[:alnum:]]\)/\1ssistisca\2/g
s/\b\([Aa]\)ssisteixi\([ns]\)\([^[:alnum:]]\)/\1ssistisque\2\3/g
s/\b\([Aa]\)ssisteixo\([^[:alnum:]]\)/\1ssistisc\2/g
s/\b\([Aa]\)ssistís\([^[:alnum:]]\)/\1ssistira\2/g
s/\b\([Aa]\)ssistíssi\([mu]\)\([^[:alnum:]]\)/\1ssistíre\2\3/g
s/\b\([Aa]\)ssistissi\([ns]\)\([^[:alnum:]]\)/\1ssistire\2\3/g
# associar
s/\b\([Aa]\)ssociés\([^[:alnum:]]\)/\1ssociara\2/g
s/\b\([Aa]\)ssociéssi\([mu]\)\([^[:alnum:]]\)/\1ssignàre\2\3/g
s/\b\([Aa]\)ssociessi\([ns]\)\([^[:alnum:]]\)/\1ssignare\2\3/g
s/\b\([Aa]\)ssoci\([ïo]\)\([^[:alnum:]]\)/\1ssocie\3/g
s/\b\([Aa]\)ssociï\([ns]\|\)\([^[:alnum:]]\)/\1ssocie\2\3/g
# assolir
s/\b\([Aa]\)ssoleix\(e[ns]\|\)\([^[:alnum:]]\)/\1ssolix\2\3/g
s/\b\([Aa]\)ssoleixi\([^[:alnum:]]\)/\1ssolisca\2/g
s/\b\([Aa]\)ssoleixi\([ns]\)\([^[:alnum:]]\)/\1ssolisque\2\3/g
s/\b\([Aa]\)ssoleixo\([^[:alnum:]]\)/\1ssolisc\2/g
s/\b\([Aa]\)ssolís\([^[:alnum:]]\)/\1ssolira\2/g
s/\b\([Aa]\)ssolíssi\([mu]\)\([^[:alnum:]]\)/\1ssolíre\2\3/g
s/\b\([Aa]\)ssolissi\([ns]\)\([^[:alnum:]]\)/\1ssolire\2\3/g
# assumir
s/\b\([Aa]\)ssumeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ssumix\2\3/g
s/\b\([Aa]\)ssumeixi\([^[:alnum:]]\)/\1ssumisca\2/g
s/\b\([Aa]\)ssumeixi\([ns]\)\([^[:alnum:]]\)/\1ssumisque\2\3/g
s/\b\([Aa]\)ssumeixo\([^[:alnum:]]\)/\1ssumisc\2/g
s/\b\([Aa]\)ssumís\([^[:alnum:]]\)/\1ssumira\2/g
s/\b\([Aa]\)ssumíssi\([mu]\)\([^[:alnum:]]\)/\1ssumíre\2\3/g
s/\b\([Aa]\)ssumissi\([ns]\)\([^[:alnum:]]\)/\1ssumire\2\3/g
    # reassumir
    s/\b\([Rr]\)eassumeix\(e[ns]\|\)\([^[:alnum:]]\)/\1eassumix\2\3/g
    s/\b\([Rr]\)eassumeixi\([^[:alnum:]]\)/\1eassumisca\2/g
    s/\b\([Rr]\)eassumeixi\([ns]\)\([^[:alnum:]]\)/\1eassumisque\2\3/g
    s/\b\([Rr]\)eassumeixo\([^[:alnum:]]\)/\1eassumisc\2/g
    s/\b\([Rr]\)eassumís\([^[:alnum:]]\)/\1eassumira\2/g
    s/\b\([Rr]\)eassumíssi\([mu]\)\([^[:alnum:]]\)/\1eassumíre\2\3/g
    s/\b\([Rr]\)eassumissi\([ns]\)\([^[:alnum:]]\)/\1eassumire\2\3/g
# atènyer -> atényer
s/\b\([Aa]\)tenyés\([^[:alnum:]]\)/\1tenyera\2/g
s/\b\([Aa]\)tenyéssi\([mu]\)\([^[:alnum:]]\)/\1tenyére\2\3/g
s/\b\([Aa]\)tenyessi\([ns]\)\([^[:alnum:]]\)/\1tenyere\2\3/g
s/\b\([Aa]\)tè\(nyer\|s\)\([^[:alnum:]]\)/\1té\2\3/g
s/\b\([Aa]\)tenyi\([^[:alnum:]]\)/\1tenya\2/g
s/\b\([Aa]\)tenyi\([ns]\)\([^[:alnum:]]\)/\1tenye\2\3/g
s/\b\([Aa]\)tenyo\([^[:alnum:]]\)/\1teny\2/g
    # TODO: no
    # desatènyer -> desatényer
    s/\b\([Dd]\)estenyés\([^[:alnum:]]\)/\1estenyera\2/g
    s/\b\([Dd]\)estenyéssi\([mu]\)\([^[:alnum:]]\)/\1estenyére\2\3/g
    s/\b\([Dd]\)estenyessi\([ns]\)\([^[:alnum:]]\)/\1estenyere\2\3/g
    s/\b\([Dd]\)estè\(nyer\|s\)\([^[:alnum:]]\)/\1esté\2\3/g
    s/\b\([Dd]\)estenyi\([^[:alnum:]]\)/\1estenya\2/g
    s/\b\([Dd]\)estenyi\([ns]\)\([^[:alnum:]]\)/\1estenye\2\3/g
    s/\b\([dd]\)estenyo\([^[:alnum:]]\)/\1esteny\2/g
# aterrar
s/\b\([Aa]\)terrés\([^[:alnum:]]\)/\1terrara\2/g
s/\b\([Aa]\)terréssi\([mu]\)\([^[:alnum:]]\)/\1terràre\2\3/g
s/\b\([Aa]\)terressi\([ns]\)\([^[:alnum:]]\)/\1terrare\2\3/g
s/\b\([Aa]\)terr\([io]\)\([^[:alnum:]]\)/\1terre\3/g
s/\b\([Aa]\)terri\([ns]\)\([^[:alnum:]]\)/\1terre\2\3/g
s/\b\([Aa]\)tès\([^[:alnum:]]\)/\1tés\2/g
# atorgar
s/\b\([Aa]\)torgo\([^[:alnum:]]\)/\1torgue\2/g
s/\b\([Aa]\)torgués\([^[:alnum:]]\)/\1torgara\2/g
s/\b\([Aa]\)torguéssi\([mu]\)\([^[:alnum:]]\)/\1torgàre\2\3/g
s/\b\([Aa]\)torguessi\([ns]\)\([^[:alnum:]]\)/\1torgare\2\3/g
s/\b\([Aa]\)torgui\([ns]\|\)\([^[:alnum:]]\)/\1torgue\2\3/g
# atrapar
s/\b\([Aa]\)trapés\([^[:alnum:]]\)/\1trapara\2/g
s/\b\([Aa]\)trapéssi\([mu]\)\([^[:alnum:]]\)/\1trapàre\2\3/g
s/\b\([Aa]\)trapessi\([ns]\)\([^[:alnum:]]\)/\1trapare\2\3/g
s/\b\([Aa]\)trap\([io]\)\([^[:alnum:]]\)/\1trape\3/g
s/\b\([Aa]\)trapi\([ns]\)\([^[:alnum:]]\)/\1trape\2\3/g
# atribuir
s/\b\([Aa]\)tribueix\(e[ns]\|\)\([^[:alnum:]]\)/\1tribuïx\2\3/g
s/\b\([Aa]\)tribueixi\([^[:alnum:]]\)/\1tribuïsca\2/g
s/\b\([Aa]\)tribueixi\([ns]\)\([^[:alnum:]]\)/\1tribuïsque\2\3/g
s/\b\([Aa]\)tribueixo\([^[:alnum:]]\)/\1tribuïsc\2/g
s/\b\([Aa]\)tribuís\([^[:alnum:]]\)/\1tribuïra\2/g
s/\b\([Aa]\)tribuíssi\([mu]\)\([^[:alnum:]]\)/\1tribuíre\2\3/g
s/\b\([Aa]\)tribuïssi\([ns]\)\([^[:alnum:]]\)/\1tribuïre\2\3/g
    # contribuir
    s/\b\([Cc]\)ontribueix\(e[ns]\|\)\([^[:alnum:]]\)/\1ontribuïx\2\3/g
    s/\b\([Cc]\)ontribueixi\([^[:alnum:]]\)/\1ontribuïsca\2/g
    s/\b\([Cc]\)ontribueixi\([ns]\)\([^[:alnum:]]\)/\1ontribuïsque\2\3/g
    s/\b\([Cc]\)ontribueixo\([^[:alnum:]]\)/\1ontribuïsc\2/g
    s/\b\([Cc]\)ontribuís\([^[:alnum:]]\)/\1ontribuïra\2/g
    s/\b\([Cc]\)ontribuíssi\([mu]\|\)\([^[:alnum:]]\)/\1ontribuíre\2\3/g
    s/\b\([Cc]\)ontribuïssi\([ns]\|\)\([^[:alnum:]]\)/\1ontribuïre\2\3/g
    # distribuir
    s/\b\([Dd]\)istribueix\(e[ns]\|\)\([^[:alnum:]]\)/\1istribuïx\2\3/g
    s/\b\([Dd]\)istribueixi\([^[:alnum:]]\)/\1istribuïsca\2/g
    s/\b\([Dd]\)istribueixi\([ns]\)\([^[:alnum:]]\)/\1istribuïsque\2\3/g
    s/\b\([Dd]\)istribueixo\([^[:alnum:]]\)/\1istribuïsc\2/g
    s/\b\([Dd]\)istribuís\([^[:alnum:]]\)/\1istribuïra\2/g
    s/\b\([Dd]\)istribuíssi\([mu]\|\)\([^[:alnum:]]\)/\1istribuíre\2\3/g
    s/\b\([Dd]\)istribuïssi\([ns]\|\)\([^[:alnum:]]\)/\1istribuïre\2\3/g
        # redistribuir
        s/\b\([Rr]\)edistribueix\(e[ns]\|\)\([^[:alnum:]]\)/\1edistribuïx\2\3/g
        s/\b\([Rr]\)edistribueixi\([^[:alnum:]]\)/\1edistribuïsca\2/g
        s/\b\([Rr]\)edistribueixi\([ns]\)\([^[:alnum:]]\)/\1edistribuïsque\2\3/g
        s/\b\([Rr]\)edistribueixo\([^[:alnum:]]\)/\1edistribuïsc\2/g
        s/\b\([Rr]\)edistribuís\([^[:alnum:]]\)/\1edistribuïra\2/g
        s/\b\([Rr]\)edistribuíssi\([mu]\|\)\([^[:alnum:]]\)/\1edistribuíre\2\3/g
        s/\b\([Rr]\)edistribuïssi\([ns]\|\)\([^[:alnum:]]\)/\1edistribuïre\2\3/g
    # retribuir
    s/\b\([Rr]\)etribueix\(e[ns]\|\)\([^[:alnum:]]\)/\1etribuïx\2\3/g
    s/\b\([Rr]\)etribueixi\([^[:alnum:]]\)/\1etribuïsca\2/g
    s/\b\([Rr]\)etribueixi\([ns]\)\([^[:alnum:]]\)/\1etribuïsque\2\3/g
    s/\b\([Rr]\)etribueixo\([^[:alnum:]]\)/\1etribuïsc\2/g
    s/\b\([Rr]\)etribuís\([^[:alnum:]]\)/\1etribuïra\2/g
    s/\b\([Rr]\)etribuíssi\([mu]\|\)\([^[:alnum:]]\)/\1etribuíre\2\3/g
    s/\b\([Rr]\)etribuïssi\([ns]\|\)\([^[:alnum:]]\)/\1etribuïre\2\3/g
# aturar -> parar (esmenes)
    # caricaturar
    s/\b\([Cc]\)aricaturés\([^[:alnum:]]\)/\1aricaturara\2/g
    s/\b\([Cc]\)aricaturéssi\([mu]\)\([^[:alnum:]]\)/\1aricaturàre\2\3/g
    s/\b\([Cc]\)aricaturessi\([ns]\)\([^[:alnum:]]\)/\1aricaturare\2\3/g
    s/\b\([Cc]\)aricatur\([io]\)\([^[:alnum:]]\)/\1aricature\3/g
    s/\b\([Cc]\)aricaturi\([ns]\)\([^[:alnum:]]\)/\1aricature\2\3/g
        # caricaturitzar
        s/\b\([Cc]\)aricaturitzés\([^[:alnum:]]\)/\1aricaturitzara\2/g
        s/\b\([Cc]\)aricaturitzéssi\([mu]\)\([^[:alnum:]]\)/\1aricaturitzàre\2\3/g
        s/\b\([Cc]\)aricaturitzessi\([ns]\)\([^[:alnum:]]\)/\1aricaturitzare\2\3/g
        s/\b\([Cc]\)aricaturitz\([io]\)\([^[:alnum:]]\)/\1aricaturitze\3/g
        s/\b\([Cc]\)aricaturitzi\([ns]\)\([^[:alnum:]]\)/\1aricaturitze\2\3/g
    # miniaturar
    s/\b\([Mm]\)iniaturitzés\([^[:alnum:]]\)/\1iniaturitzara\2/g
    s/\b\([Mm]\)iniaturitzéssi\([mu]\)\([^[:alnum:]]\)/\1iniaturitzàre\2\3/g
    s/\b\([Mm]\)iniaturitzessi\([ns]\)\([^[:alnum:]]\)/\1iniaturitzare\2\3/g
    s/\b\([Mm]\)iniaturitz\([io]\)\([^[:alnum:]]\)/\1iniaturitze\3/g
    s/\b\([Mm]\)iniaturitzi\([ns]\)\([^[:alnum:]]\)/\1iniaturitze\2\3/g
        # miniar
        s/\b\([Mm]\)iniés\([^[:alnum:]]\)/\1iniara\2/g
        s/\b\([Mm]\)iniéssi\([mu]\)\([^[:alnum:]]\)/\1iniàre\2\3/g
        s/\b\([Mm]\)iniessi\([ns]\)\([^[:alnum:]]\)/\1iniare\2\3/g
        s/\b\([Mm]\)ini\([ïo]\)\([^[:alnum:]]\)/\1inie\3/g
        s/\b\([Mm]\)iniï\([ns]\)\([^[:alnum:]]\)/\1inie\2\3/g
    # saturar
    s/\b\([Ss]\)aturés\([^[:alnum:]]\)/\1aturara\2/g
    s/\b\([Ss]\)aturéssi\([mu]\)\([^[:alnum:]]\)/\1aturàre\2\3/g
    s/\b\([Ss]\)aturessi\([ns]\)\([^[:alnum:]]\)/\1aturare\2\3/g
    s/\b\([Ss]\)atur\([io]\)\([^[:alnum:]]\)/\1ature\3/g
    s/\b\([Ss]\)aturi\([ns]\)\([^[:alnum:]]\)/\1ature\2\3/g
        # sobresaturar
        s/\b\([Ss]\)obresaturés\([^[:alnum:]]\)/\1obresaturara\2/g
        s/\b\([Ss]\)obresaturéssi\([mu]\)\([^[:alnum:]]\)/\1obresaturàre\2\3/g
        s/\b\([Ss]\)obresaturessi\([ns]\)\([^[:alnum:]]\)/\1obresaturare\2\3/g
        s/\b\([Ss]\)obresatur\([io]\)\([^[:alnum:]]\)/\1obresature\3/g
        s/\b\([Ss]\)obresaturi\([ns]\)\([^[:alnum:]]\)/\1obresature\2\3/g
# augmentar
s/\b\([Aa]\)ugmentés\([^[:alnum:]]\)/\1ugmentara\2/g
s/\b\([Aa]\)ugmentéssi\([mu]\)\([^[:alnum:]]\)/\1ugmentàre\2\3/g
s/\b\([Aa]\)ugmentessi\([ns]\)\([^[:alnum:]]\)/\1ugmentare\2\3/g
s/\b\([Aa]\)ugment\([io]\)\([^[:alnum:]]\)/\1ugmente\3/g
s/\b\([Aa]\)ugmenti\([ns]\)\([^[:alnum:]]\)/\1ugmente\2\3/g
# autenticar
s/\b\([Aa]\)utentico\([^[:alnum:]]\)/\1utentique\2/g
s/\b\([Aa]\)utentiqués\([^[:alnum:]]\)/\1utenticara\2/g
s/\b\([Aa]\)utentiquéssi\([mu]\)\([^[:alnum:]]\)/\1utenticàre\2\3/g
s/\b\([Aa]\)utentiquessi\([ns]\)\([^[:alnum:]]\)/\1utenticare\2\3/g
s/\b\([Aa]\)utentiqui\([ns]\|\)\([^[:alnum:]]\)/\1utentique\2\3/g
    # TODO: no
    # autentificar
    s/\b\([Aa]\)utentifica\(ció\|r\)\([^[:alnum:]]\)/\1utentica\2\3/g
    s/\b\([Aa]\)utentifico\([^[:alnum:]]\)/\1utentique\2/g
    s/\b\([Aa]\)utentifiqui\([ns]\|\)\([^[:alnum:]]\)/\1utentique\2\3/g
# automatitzar
s/\b\([Aa]\)utomatitzés\([^[:alnum:]]\)/\1utomatitzara\2/g
s/\b\([Aa]\)utomatitzéssi\([mu]\)\([^[:alnum:]]\)/\1utomatitzàre\2\3/g
s/\b\([Aa]\)utomatitzessi\([ns]\)\([^[:alnum:]]\)/\1utomatitzare\2\3/g
s/\b\([Aa]\)utomatitz\([io]\)\([^[:alnum:]]\)/\1utomatitze\3/g
s/\b\([Aa]\)utomatitzi\([ns]\)\([^[:alnum:]]\)/\1utomatitze\2\3/g
# autoria (esmenes)
# autoritzar
s/\b\([Aa]\)utoritzés\([^[:alnum:]]\)/\1utoritzara\2/g
s/\b\([Aa]\)utoritzéssi\([mu]\)\([^[:alnum:]]\)/\1utoritzàre\2\3/g
s/\b\([Aa]\)utoritzessi\([ns]\)\([^[:alnum:]]\)/\1utoritzare\2\3/g
s/\b\([Aa]\)utoritz\([io]\)\([^[:alnum:]]\)/\1utoritze\3/g
s/\b\([Aa]\)utoritzi\([ns]\)\([^[:alnum:]]\)/\1utoritze\2\3/g
    # desautoritzar
    s/\b\([Dd]\)esautoritzés\([^[:alnum:]]\)/\1esautoritzara\2/g
    s/\b\([Dd]\)esautoritzéssi\([mu]\)\([^[:alnum:]]\)/\1esautoritzàre\2\3/g
    s/\b\([Dd]\)esautoritzessi\([ns]\)\([^[:alnum:]]\)/\1esautoritzare\2\3/g
    s/\b\([Dd]\)esautoritz\([io]\)\([^[:alnum:]]\)/\1esautoritze\3/g
    s/\b\([Dd]\)esautoritzi\([ns]\)\([^[:alnum:]]\)/\1esautoritze\2\3/g
# avaluar
s/\b\([Aa]\)valués\([^[:alnum:]]\)/\1valuara\2/g
s/\b\([Aa]\)valuéssi\([mu]\)\([^[:alnum:]]\)/\1valuàre\2\3/g
s/\b\([Aa]\)valuessi\([ns]\)\([^[:alnum:]]\)/\1valuare\2\3/g
s/\b\([Aa]\)valu\([ïo]\)\([^[:alnum:]]\)/\1value\3/g
s/\b\([Aa]\)valuï\([ns]\|\)\([^[:alnum:]]\)/\1value\2\3/g
    # devaluar
    s/\b\([Dd]\)evalués\([^[:alnum:]]\)/\1evaluara\2/g
    s/\b\([Dd]\)evaluéssi\([mu]\)\([^[:alnum:]]\)/\1evaluàre\2\3/g
    s/\b\([Dd]\)evaluessi\([ns]\)\([^[:alnum:]]\)/\1evaluare\2\3/g
    s/\b\([Dd]\)evalu\([ïo]\)\([^[:alnum:]]\)/\1evalue\3/g
    s/\b\([Dd]\)evaluï\([ns]\|\)\([^[:alnum:]]\)/\1evalue\2\3/g
    # reavaluar -> tornar a avaluar
    s/\bReavalua\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Torna\1 a avaluar\2/g
    s/\breavalua\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/torna\1 a avaluar\2/g
    s/\bReavalués\([^[:alnum:]]\)/Tornara a avaluar\1/g
    s/\breavalués\([^[:alnum:]]\)/tornara a avaluar\1/g
    s/\bReavaluéssi\([mu]\)\([^[:alnum:]]\)/Tornàre\1 a avaluar\2/g
    s/\breavaluéssi\([mu]\)\([^[:alnum:]]\)/tornàre\1 a avaluar\2/g
    s/\bReavaluessi\([ns]\)\([^[:alnum:]]\)/Tornare\1 a avaluar\2/g
    s/\breavaluessi\([ns]\)\([^[:alnum:]]\)/tornare\1 a avaluar\2/g
    s/\bReavalu\([ïo]\)\([^[:alnum:]]\)/Torne a avaluar\2/g
    s/\breavalu\([ïo]\)\([^[:alnum:]]\)/torne a avaluar\2/g
    s/\bReavaluï\([ns]\)\([^[:alnum:]]\)/Torne\1 a avaluar\2/g
    s/\breavaluï\([ns]\)\([^[:alnum:]]\)/torne\1 a avaluar\2/g
s/\bAviat\([^[:alnum:]]\)/Prompte\1/g
s/\baviat\([^[:alnum:]]\)/prompte\1/g
# avançar i avençar -> avançar
s/\b\([Aa]\)v\([ae]\)nça\(da\|des\|nt\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1vança\3\4/g
s/\b\([Aa]\)v\([ae]\)ncés\([^[:alnum:]]\)/\1vançara\3/g
s/\b\([Aa]\)v\([ae]\)ncéssi\([mu]\)\([^[:alnum:]]\)/\1vançàre\3\4/g
s/\b\([Aa]\)v\([ae]\)ncessi\([ns]\)\([^[:alnum:]]\)/\1vançare\3\4/g
s/\b\([Aa]\)v\([ae]\)nço\([^[:alnum:]]\)/\1vance\3/g
s/\b\([Aa]\)v\([ae]\)nci\([ns]\|\)\([^[:alnum:]]\)/\1vance\3\4/g
# avergonyir
s/\b\([Aa]\)vergonyeix\(e[ns]\|\)\([^[:alnum:]]\)/\1vergonyix\2\3/g
s/\b\([Aa]\)vergonyeixi\([^[:alnum:]]\)/\1vergonyisca\2/g
s/\b\([Aa]\)vergonyeixi\([ns]\)\([^[:alnum:]]\)/\1vergonyisque\2\3/g
s/\b\([Aa]\)vergonyeixo\([^[:alnum:]]\)/\1vergonyisc\2/g
s/\b\([Aa]\)vergonyís\([^[:alnum:]]\)/\1vergonyira\2/g
s/\b\([Aa]\)vergonyíssi\([mu]\)\([^[:alnum:]]\)/\1vergonyíre\2\3/g
s/\b\([Aa]\)vergonyissi\([ns]\)\([^[:alnum:]]\)/\1vergonyire\2\3/g
# avisar
s/\b\([Aa]\)visés\([^[:alnum:]]\)/\1visara\2/g
s/\b\([Aa]\)viséssi\([mu]\)\([^[:alnum:]]\)/\1visàre\2\3/g
s/\b\([Aa]\)visessi\([ns]\)\([^[:alnum:]]\)/\1visare\2\3/g
s/\b\([Aa]\)vis\([io]\)\([^[:alnum:]]\)/\1vise\3/g
s/\b\([Aa]\)visi\([ns]\)\([^[:alnum:]]\)/\1vise\2\3/g
s/\bAvui\([^[:alnum:]]\)/Hui\1/g
s/\bavui\([^[:alnum:]]\)/hui\1/g
s/\b\([Aa]\)zerbaidjanès\([^[:alnum:]]\)/\1zerbaidjanés\2/g
# b
#
s/\b\([Bb]\)afarad\(a\|es\)\([^[:alnum:]]\)/\1aferad\2\3/g
# baixar
s/\b\([Bb]\)aixés\([^[:alnum:]]\)/\1aixara\2/g
s/\b\([Bb]\)aixéssi\([mu]\)\([^[:alnum:]]\)/\1aixàre\2\3/g
s/\b\([Bb]\)aixessi\([ns]\)\([^[:alnum:]]\)/\1aixare\2\3/g
s/\b\([Bb]\)aix\([io]\)\([^[:alnum:]]\)/\1aixe\3/g
s/\b\([Bb]\)aixi\([ns]\)\([^[:alnum:]]\)/\1aixe\2\3/g
    # abaixar
    s/\b\([Aa]\)baixés\([^[:alnum:]]\)/\1baixara\2/g
    s/\b\([Aa]\)baixéssi\([mu]\)\([^[:alnum:]]\)/\1baixàre\2\3/g
    s/\b\([Aa]\)baixessi\([ns]\)\([^[:alnum:]]\)/\1baixare\2\3/g
    s/\b\([Aa]\)baix\([io]\)\([^[:alnum:]]\)/\1baixe\3/g
    s/\b\([Aa]\)baixi\([ns]\)\([^[:alnum:]]\)/\1baixe\2\3/g
    # rebaixar
    s/\b\([Rr]\)ebaixés\([^[:alnum:]]\)/\1ebaixara\2/g
    s/\b\([Rr]\)ebaixéssi\([mu]\)\([^[:alnum:]]\)/\1ebaixàre\2\3/g
    s/\b\([Rr]\)ebaixessi\([ns]\)\([^[:alnum:]]\)/\1ebaixare\2\3/g
    s/\b\([Rr]\)ebaix\([io]\)\([^[:alnum:]]\)/\1ebaixe\3/g
    s/\b\([Rr]\)ebaixi\([ns]\)\([^[:alnum:]]\)/\1ebaixe\2\3/g
    # sobrebaixar
    s/\b\([Ss]\)obrebaixés\([^[:alnum:]]\)/\1obrebaixara\2/g
    s/\b\([Ss]\)obrebaixéssi\([mu]\)\([^[:alnum:]]\)/\1obrebaixàre\2\3/g
    s/\b\([Ss]\)obrebaixessi\([ns]\)\([^[:alnum:]]\)/\1obrebaixare\2\3/g
    s/\b\([Ss]\)obrebaix\([io]\)\([^[:alnum:]]\)/\1obrebaixe\3/g
    s/\b\([Ss]\)obrebaixi\([ns]\)\([^[:alnum:]]\)/\1obrebaixe\2\3/g
# balancejar
s/\b\([Bb]\)alancegés\([^[:alnum:]]\)/\1alancejara\2/g
s/\b\([Bb]\)alancegéssi\([mu]\)\([^[:alnum:]]\)/\1alancejàre\2\3/g
s/\b\([Bb]\)alancegessi\([ns]\)\([^[:alnum:]]\)/\1alancejare\2\3/g
s/\b\([Bb]\)alancegi\([ns]\|\)\([^[:alnum:]]\)/\1alancege\2\3/g
s/\b\([Bb]\)alancejo\([^[:alnum:]]\)/\1alancege\2/g
# balandrejar
s/\b\([Bb]\)alandregés\([^[:alnum:]]\)/\1alandrejara\2/g
s/\b\([Bb]\)alandregéssi\([mu]\)\([^[:alnum:]]\)/\1alandrejàre\2\3/g
s/\b\([Bb]\)alandregessi\([ns]\)\([^[:alnum:]]\)/\1alandrejare\2\3/g
s/\b\([Bb]\)alandregi\([ns]\|\)\([^[:alnum:]]\)/\1alandrege\2\3/g
s/\b\([Bb]\)alandrejo\([^[:alnum:]]\)/\1alandrege\2/g
s/\b\([Bb]\)arcelonès\([^[:alnum:]]\)/\1arcelonés\2/g
# balbucejar
s/\b\([Bb]\)albucegés\([^[:alnum:]]\)/\1albucejara\2/g
s/\b\([Bb]\)albucegéssi\([mu]\)\([^[:alnum:]]\)/\1albucejàre\2\3/g
s/\b\([Bb]\)albucegessi\([ns]\)\([^[:alnum:]]\)/\1albucejare\2\3/g
s/\b\([Bb]\)albucegi\([ns]\|\)\([^[:alnum:]]\)/\1albucege\2\3/g
s/\b\([Bb]\)albucejo\([^[:alnum:]]\)/\1albucege\2/g
s/\b\([Bb]\)alinès\([^[:alnum:]]\)/\1alinés\2/g
# bandejar
s/\b\([Bb]\)andegés\([^[:alnum:]]\)/\1andejara\2/g
s/\b\([Bb]\)andegéssi\([mu]\)\([^[:alnum:]]\)/\1andejàre\2\3/g
s/\b\([Bb]\)andegessi\([ns]\)\([^[:alnum:]]\)/\1andejare\2\3/g
s/\b\([Bb]\)andegi\([ns]\|\)\([^[:alnum:]]\)/\1andege\2\3/g
s/\b\([Bb]\)andejo\([^[:alnum:]]\)/\1andege\2/g
# barrejar
s/\b\([Bb]\)arregés\([^[:alnum:]]\)/\1arrejara\2/g
s/\b\([Bb]\)arregéssi\([mu]\)\([^[:alnum:]]\)/\1arrejàre\2\3/g
s/\b\([Bb]\)arregessi\([ns]\)\([^[:alnum:]]\)/\1arrejare\2\3/g
s/\b\([Bb]\)arregi\([ns]\|\)\([^[:alnum:]]\)/\1arrege\2\3/g
s/\b\([Bb]\)arrejo\([^[:alnum:]]\)/\1arrege\2/g
# besar
s/\b\([Bb]\)esés\([^[:alnum:]]\)/\1esara\2/g
s/\b\([Bb]\)eséssi\([mu]\)\([^[:alnum:]]\)/\1esàre\2\3/g
s/\b\([Bb]\)esessi\([ns]\)\([^[:alnum:]]\)/\1esare\2\3/g
s/\b\([Bb]\)es\([io]\)\([^[:alnum:]]\)/\1ese\3/g
s/\b\([Bb]\)esi\([ns]\)\([^[:alnum:]]\)/\1ese\2\3/g
s/\b\([Bb]\)igoti\(s\|\)\([^[:alnum:]]\)/\1igot\2\3/g
# blocar
s/\b\([Bb]\)loqués\([^[:alnum:]]\)/\1locara\2/g
s/\b\([Bb]\)loquéssi\([mu]\)\([^[:alnum:]]\)/\1locàre\2\3/g
s/\b\([Bb]\)loquessi\([ns]\)\([^[:alnum:]]\)/\1locare\2\3/g
s/\b\([Bb]\)loqui\([ns]\|\)\([^[:alnum:]]\)/\1loque\2\3/g
s/\b\([Bb]\)loco\([^[:alnum:]]\)/\1loque\2/g
    # desblocar
    s/\b\([Dd]\)esbloqués\([^[:alnum:]]\)/\1esblocara\2/g
    s/\b\([Dd]\)esbloquéssi\([mu]\)\([^[:alnum:]]\)/\1esblocàre\2\3/g
    s/\b\([Dd]\)esbloquessi\([ns]\)\([^[:alnum:]]\)/\1esblocare\2\3/g
    s/\b\([Dd]\)esbloqui\([ns]\|\)\([^[:alnum:]]\)/\1esbloque\2\3/g
    s/\b\([Dd]\)esbloco\([^[:alnum:]]\)/\1esbloque\2/g
# bloquejar
s/\b\([Bb]\)loquegés\([^[:alnum:]]\)/\1loquejara\2/g
s/\b\([Bb]\)loquegési\([mu]\)\([^[:alnum:]]\)/\1loquejàre\2\3/g
s/\b\([Bb]\)loquegessi\([ns]\)\([^[:alnum:]]\)/\1loquejare\2\3/g
s/\b\([Bb]\)loquegi\([ns]\|\)\([^[:alnum:]]\)/\1loquege\2\3/g
s/\b\([Bb]\)loquejo\([^[:alnum:]]\)/\1loquege\2/g
    # desbloquejar
    s/\b\([Dd]\)esbloquegés\([^[:alnum:]]\)/\1esbloquejara\2/g
    s/\b\([Dd]\)esbloquegési\([mu]\)\([^[:alnum:]]\)/\1esbloquejàre\2\3/g
    s/\b\([Dd]\)esbloquegessi\([ns]\)\([^[:alnum:]]\)/\1esbloquejare\2\3/g
    s/\b\([Dd]\)esbloquegi\([ns]\|\)\([^[:alnum:]]\)/\1esbloquege\2\3/g
    s/\b\([Dd]\)esbloquejo\([^[:alnum:]]\)/\1esbloquege\2/g
s/\bBlat de moro\([^[:alnum:]]\)/Dacsa\1/g
s/\bblat de moro\([^[:alnum:]]\)/dacsa\1/g
# bolcar
s/\b\([Bb]\)olqués\([^[:alnum:]]\)/\1olcara\2/g
s/\b\([Bb]\)olquéssi\([mu]\)\([^[:alnum:]]\)/\1olcàre\2\3/g
s/\b\([Bb]\)olquessi\([ns]\)\([^[:alnum:]]\)/\1olcare\2\3/g
s/\b\([Bb]\)olqui\([ns]\|\)\([^[:alnum:]]\)/\1olque\2\3/g
s/\b\([Bb]\)olco\([^[:alnum:]]\)/\1olque\2/g
    # rebolcar
    s/\b\([Rr]\)ebolqués\([^[:alnum:]]\)/\1ebolcara\2/g
    s/\b\([Rr]\)ebolquéssi\([mu]\)\([^[:alnum:]]\)/\1ebolcàre\2\3/g
    s/\b\([Rr]\)ebolquessi\([ns]\)\([^[:alnum:]]\)/\1ebolcare\2\3/g
    s/\b\([Rr]\)ebolqui\([ns]\|\)\([^[:alnum:]]\)/\1ebolque\2\3/g
    s/\b\([Rr]\)ebolco\([^[:alnum:]]\)/\1olque\2/g
s/\b\([Bb]\)omboll\(a\|es\)\([^[:alnum:]]\)/\1amboll\2\3/g
# bordar -> lladrar (esmenes)
# botar
s/\b\([Bb]\)otés\([^[:alnum:]]\)/\1otara\2/g
s/\b\([Bb]\)otéssi\([mu]\)\([^[:alnum:]]\)/\1otàre\2\3/g
s/\b\([Bb]\)otessi\([ns]\)\([^[:alnum:]]\)/\1otare\2\3/g
s/\b\([Bb]\)ot\([io]\)\([^[:alnum:]]\)/\1ote\3/g
s/\b\([Bb]\)oti\([ns]\)\([^[:alnum:]]\)/\1ote\2\3/g
    # embotar
    s/\b\([Ee]\)mbotés\([^[:alnum:]]\)/\1mbotara\2/g
    s/\b\([Ee]\)mbotéssi\([mu]\)\([^[:alnum:]]\)/\1mbotàre\2\3/g
    s/\b\([Ee]\)mbotessi\([ns]\)\([^[:alnum:]]\)/\1mbotare\2\3/g
    s/\b\([Ee]\)mbot\([io]\)\([^[:alnum:]]\)/\1mbote\3/g
    s/\b\([Ee]\)mboti\([ns]\)\([^[:alnum:]]\)/\1mbote\2\3/g
    # rebotar
    s/\b\([Rr]\)ebotés\([^[:alnum:]]\)/\1ebotara\2/g
    s/\b\([Rr]\)ebotéssi\([mu]\)\([^[:alnum:]]\)/\1ebotàre\2\3/g
    s/\b\([Rr]\)ebotessi\([ns]\)\([^[:alnum:]]\)/\1ebotare\2\3/g
    s/\b\([Rr]\)ebot\([io]\)\([^[:alnum:]]\)/\1ebote\3/g
    s/\b\([Rr]\)eboti\([ns]\)\([^[:alnum:]]\)/\1ebote\2\3/g
    # xarbotar
    s/\b\([Xx]\)arbotés\([^[:alnum:]]\)/\1arbotara\2/g
    s/\b\([Xx]\)arbotéssi\([mu]\)\([^[:alnum:]]\)/\1arbotàre\2\3/g
    s/\b\([Xx]\)arbotessi\([ns]\)\([^[:alnum:]]\)/\1arbotare\2\3/g
    s/\b\([Xx]\)arbot\([io]\)\([^[:alnum:]]\)/\1arbote\3/g
    s/\b\([Xx]\)arboti\([ns]\)\([^[:alnum:]]\)/\1arbote\2\3/g
s/\b\([Bb]\)oumerdès\([^[:alnum:]]\)/\1oumerdés\2/g
# bracejar
s/\b\([Bb]\)racegés\([^[:alnum:]]\)/\1racejara\2/g
s/\b\([Bb]\)racegéssi\([mu]\)\([^[:alnum:]]\)/\1racejàre\2\3/g
s/\b\([Bb]\)racegessi\([ns]\)\([^[:alnum:]]\)/\1racejare\2\3/g
s/\b\([Bb]\)racegi\([ns]\|\)\([^[:alnum:]]\)/\1racege\2\3/g
s/\b\([Bb]\)racejo\([^[:alnum:]]\)/\1racege\2/g
# brindar
s/\b\([Bb]\)rindés\([^[:alnum:]]\)/\1rindara\2/g
s/\b\([Bb]\)rindéssi\([mu]\)\([^[:alnum:]]\)/\1rindàre\2\3/g
s/\b\([Bb]\)rindessi\([ns]\)\([^[:alnum:]]\)/\1rindare\2\3/g
s/\b\([Bb]\)rindi\([ns]\|\)\([^[:alnum:]]\)/\1rinde\2\3/g
s/\b\([Bb]\)rindo\([^[:alnum:]]\)/\1rinde\2/g
# brotar
s/\b\([Bb]\)rotés\([^[:alnum:]]\)/\1rotara\2/g
s/\b\([Bb]\)rotéssi\([mu]\)\([^[:alnum:]]\)/\1rotàre\2\3/g
s/\b\([Bb]\)rotessi\([ns]\)\([^[:alnum:]]\)/\1rotare\2\3/g
s/\b\([Bb]\)rot\([io]\)\([^[:alnum:]]\)/\1rote\3/g
s/\b\([Bb]\)roti\([ns]\)\([^[:alnum:]]\)/\1rote\2\3/g
    # rebrotar
    s/\b\([Rr]\)ebrotés\([^[:alnum:]]\)/\1ebrotara\2/g
    s/\b\([Rr]\)ebrotéssi\([mu]\)\([^[:alnum:]]\)/\1ebrotàre\2\3/g
    s/\b\([Rr]\)ebrotessi\([ns]\)\([^[:alnum:]]\)/\1ebrotare\2\3/g
    s/\b\([Rr]\)ebrot\([io]\)\([^[:alnum:]]\)/\1ebrote\3/g
    s/\b\([Rr]\)ebroti\([ns]\)\([^[:alnum:]]\)/\1ebrote\2\3/g
# buidar
s/\b\([Bb]\)uidés\([^[:alnum:]]\)/\1uidara\2/g
s/\b\([Bb]\)uidéssi\([mu]\)\([^[:alnum:]]\)/\1uidàre\2\3/g
s/\b\([Bb]\)uidessi\([ns]\)\([^[:alnum:]]\)/\1uidare\2\3/g
s/\b\([Bb]\)uid\([io]\)\([^[:alnum:]]\)/\1uide\3/g
s/\b\([Bb]\)uidi\([ns]\)\([^[:alnum:]]\)/\1uide\2\3/g
# bussejar
s/\b\([Bb]\)ussegés\([^[:alnum:]]\)/\1ussejara\2/g
s/\b\([Bb]\)ussegéssi\([mu]\)\([^[:alnum:]]\)/\1ussejàre\2\3/g
s/\b\([Bb]\)ussegessi\([ns]\)\([^[:alnum:]]\)/\1ussejare\2\3/g
s/\b\([Bb]\)ussegi\([ns]\|\)\([^[:alnum:]]\)/\1ussege\2\3/g
s/\b\([Bb]\)ussejo\([^[:alnum:]]\)/\1ussege\2/g
# c
#
# caber -> cabre (esmenes)
s/\b\([Cc]\)aber\([^[:alnum:]]\)/\1abre\2/g
s/\b\([Cc]\)abés\([^[:alnum:]]\)/\1abera\2/g
s/\b\([Cc]\)abéssi\([mu]\)\([^[:alnum:]]\)/\1abére\2\3/g
s/\b\([Cc]\)abessi\([ns]\)\([^[:alnum:]]\)/\1abere\2\3/g
s/\b\([Cc]\)abo\([^[:alnum:]]\)/\1ap\2/g
s/\b\([Cc]\)àpiga\([^[:alnum:]]\)/\1àpia\2/g
s/\b\([Cc]\)àpigue\([mnsu]\)\([^[:alnum:]]\)/\1àpie\2\3/g
# cabrejar
s/\b\([Cc]\)abregés\([^[:alnum:]]\)/\1abrejara\2/g
s/\b\([Cc]\)abregéssi\([mu]\)\([^[:alnum:]]\)/\1abrejàre\2\3/g
s/\b\([Cc]\)abregessi\([ns]\)\([^[:alnum:]]\)/\1abrejare\2\3/g
s/\b\([Cc]\)abregi\([ns]\|\)\([^[:alnum:]]\)/\1abrege\2\3/g
s/\b\([Cc]\)abrejo\([^[:alnum:]]\)/\1abrege\2/g
# caducar
s/\b\([Cc]\)aduqués\([^[:alnum:]]\)/\1aducara\2/g
s/\b\([Cc]\)aduquéssi\([mu]\)\([^[:alnum:]]\)/\1aducàre\2\3/g
s/\b\([Cc]\)aduquessi\([ns]\)\([^[:alnum:]]\)/\1aducare\2\3/g
s/\b\([Cc]\)aduco\([^[:alnum:]]\)/\1aduque\2/g
s/\b\([Cc]\)aduqui\([ns]\|\)\([^[:alnum:]]\)/\1aduque\2\3/g
# calcular
s/\b\([Cc]\)alculés\([^[:alnum:]]\)/\1alculara\2/g
s/\b\([Cc]\)alculéssi\([mu]\)\([^[:alnum:]]\)/\1alculàre\2\3/g
s/\b\([Cc]\)alculessi\([ns]\)\([^[:alnum:]]\)/\1alculare\2\3/g
s/\b\([Cc]\)alcul\([io]\)\([^[:alnum:]]\)/\1alcule\3/g
s/\b\([Cc]\)alculi\([ns]\)\([^[:alnum:]]\)/\1alcule\2\3/g
    # TODO: no
    # recalcular
    s/\b\([Rr]\)ecalculés\([^[:alnum:]]\)/\1ecalculara\2/g
    s/\b\([Rr]\)ecalculéssi\([mu]\)\([^[:alnum:]]\)/\1ecalculàre\2\3/g
    s/\b\([Rr]\)ecalculessi\([ns]\)\([^[:alnum:]]\)/\1ecalculare\2\3/g
    s/\b\([Rr]\)ecalcul\([io]\)\([^[:alnum:]]\)/\1ecalcule\3/g
    s/\b\([Rr]\)ecalculi\([ns]\)\([^[:alnum:]]\)/\1ecalcule\2\3/g
# caler -> caldre
s/\b\([Cc]\)aler\([^[:alnum:]]\)/\1aldre\2/g
s/\b\([Cc]\)algués\([^[:alnum:]]\)/\1alguera\2/g
s/\b\([Cc]\)alguéssi\([mu]\)\([^[:alnum:]]\)/\1alguère\2\3/g
s/\b\([Cc]\)alguessi\([ns]\)\([^[:alnum:]]\)/\1alguere\2\3/g
s/\b\([Cc]\)algui\([^[:alnum:]]\)/\1alga\2/g
s/\b\([Cc]\)alguin\([^[:alnum:]]\)/\1alguen\2/g
# calibrar
s/\b\([Cc]\)alibrés\([^[:alnum:]]\)/\1alibrara\2/g
s/\b\([Cc]\)alibréssi\([mu]\)\([^[:alnum:]]\)/\1alibràre\2\3/g
s/\b\([Cc]\)alibressi\([ns]\)\([^[:alnum:]]\)/\1alibrare\2\3/g
s/\b\([Cc]\)alibr\([io]\)\([^[:alnum:]]\)/\1alibre\3/g
s/\b\([Cc]\)alibri\([ns]\)\([^[:alnum:]]\)/\1calibre\2\3/g
# callar
s/\b\([Cc]\)allés\([^[:alnum:]]\)/\1allara\2/g
s/\b\([Cc]\)alléssi\([mu]\)\([^[:alnum:]]\)/\1allàre\2\3/g
s/\b\([Cc]\)allessi\([ns]\)\([^[:alnum:]]\)/\1allare\2\3/g
s/\b\([Cc]\)all\([io]\)\([^[:alnum:]]\)/\1alle\3/g
s/\b\([Cc]\)alli\([ns]\)\([^[:alnum:]]\)/\1alle\2\3/g
    # embolcallar
    s/\b\([Ee]\)mbolcallés\([^[:alnum:]]\)/\1mbolcallara\2/g
    s/\b\([Ee]\)mbolcalléssi\([mu]\)\([^[:alnum:]]\)/\1mbolcallàre\2\3/g
    s/\b\([Ee]\)mbolcallessi\([ns]\)\([^[:alnum:]]\)/\1mbolcallare\2\3/g
    s/\b\([Ee]\)mbolcall\([io]\)\([^[:alnum:]]\)/\1mbolcalle\3/g
    s/\b\([Ee]\)mbolcalli\([ns]\)\([^[:alnum:]]\)/\1mbolcalle\2\3/g
        # desembolcallar
        s/\b\([Dd]\)esembolcallés\([^[:alnum:]]\)/\1esembolcallara\2/g
        s/\b\([Dd]\)esembolcalléssi\([mu]\)\([^[:alnum:]]\)/\1esembolcallàre\2\3/g
        s/\b\([Dd]\)esembolcallessi\([ns]\)\([^[:alnum:]]\)/\1esembolcallare\2\3/g
        s/\b\([Dd]\)esembolcall\([io]\)\([^[:alnum:]]\)/\1esembolcalle\3/g
        s/\b\([Dd]\)esembolcalli\([ns]\)\([^[:alnum:]]\)/\1esembolcalle\2\3/g
    # encallar
    s/\b\([Ee]\)ncallés\([^[:alnum:]]\)/\1ncallara\2/g
    s/\b\([Ee]\)ncalléssi\([mu]\)\([^[:alnum:]]\)/\1ncallàre\2\3/g
    s/\b\([Ee]\)ncallessi\([ns]\)\([^[:alnum:]]\)/\1ncallare\2\3/g
    s/\b\([Ee]\)ncall\([io]\)\([^[:alnum:]]\)/\1ncalle\3/g
    s/\b\([Ee]\)ncalli\([ns]\)\([^[:alnum:]]\)/\1ncalle\2\3/g
        # desencallar
        s/\b\([Dd]\)esencallés\([^[:alnum:]]\)/\1esencallara\2/g
        s/\b\([Dd]\)esencalléssi\([mu]\)\([^[:alnum:]]\)/\1esencallàre\2\3/g
        s/\b\([Dd]\)esencallessi\([ns]\)\([^[:alnum:]]\)/\1esencallare\2\3/g
        s/\b\([Dd]\)esencall\([io]\)\([^[:alnum:]]\)/\1esencalle\3/g
        s/\b\([Dd]\)esencalli\([ns]\)\([^[:alnum:]]\)/\1esencalle\2\3/g
# caminar
s/\b\([Cc]\)aminés\([^[:alnum:]]\)/\1aminara\2/g
s/\b\([Cc]\)aminéssi\([mu]\)\([^[:alnum:]]\)/\1aminàre\2\3/g
s/\b\([Cc]\)aminessi\([ns]\)\([^[:alnum:]]\)/\1aminare\2\3/g
s/\b\([Cc]\)amin\([io]\)\([^[:alnum:]]\)/\1amine\3/g
s/\b\([Cc]\)amini\([ns]\)\([^[:alnum:]]\)/\1amine\2\3/g
# canalitzar
s/\b\([Cc]\)analitzés\([^[:alnum:]]\)/\1analitzara\2/g
s/\b\([Cc]\)analitzéssi\([mu]\)\([^[:alnum:]]\)/\1analitzàre\2\3/g
s/\b\([Cc]\)analitzessi\([ns]\)\([^[:alnum:]]\)/\1analitzare\2\3/g
s/\b\([Cc]\)analitz\([io]\)\([^[:alnum:]]\)/\1analitze\3/g
s/\b\([Cc]\)analitzi\([ns]\)\([^[:alnum:]]\)/\1analitze\2\3/g
# cancel·lar
s/\b\([Cc]\)ancel·lés\([^[:alnum:]]\)/\1ancel·lara\2/g
s/\b\([Cc]\)ancel·léssi\([mu]\)\([^[:alnum:]]\)/\1ancel·làre\2\3/g
s/\b\([Cc]\)ancel·lessi\([ns]\)\([^[:alnum:]]\)/\1ancel·lare\2\3/g
s/\b\([Cc]\)ancel·l\([io]\)\([^[:alnum:]]\)/\1ancel·le\3/g
s/\b\([Cc]\)ancel·li\([ns]\)\([^[:alnum:]]\)/\1ancel·le\2\3/g
s/\bCàntir\([^[:alnum:]]\)/Botija\1/g
s/\bcàntir\([^[:alnum:]]\)/botija\1/g
s/\bCàntirs\([^[:alnum:]]\)/Botiges\1/g
s/\bcàntirs\([^[:alnum:]]\)/botiges\1/g
s/\bCantitat\(s\|\)\([^[:alnum:]]\)/Quantitat\1\2/g
s/\bcantitat\(s\|\)\([^[:alnum:]]\)/quantitat\1\2/g
# cantonada -> cantó (esmenes - gènere)
s/\b\([Cc]\)antonada\([^[:alnum:]]\)/\1antó\2/g
s/\b\([Cc]\)antonades\([^[:alnum:]]\)/\1antons\2/g
s/\b\([Cc]\)antonès\([^[:alnum:]]\)/\1antonés\2/g
# canviar
s/\b\([Cc]\)anviés\([^[:alnum:]]\)/\1anviara\2/g
s/\b\([Cc]\)anviéssi\([mu]\)\([^[:alnum:]]\)/\1anviàre\2\3/g
s/\b\([Cc]\)anviessi\([ns]\)\([^[:alnum:]]\)/\1anviare\2\3/g
s/\b\([Cc]\)anvi\([ïo]\)\([^[:alnum:]]\)/\1anvie\3/g
s/\b\([Cc]\)anviï\([ns]\)\([^[:alnum:]]\)/\1anvie\2\3/g
    # bescanviar / descanviar
    s/\b\([BbDd]\)escanviés\([^[:alnum:]]\)/\1escanviara\2/g
    s/\b\([BbDd]\)escanviéssi\([mu]\)\([^[:alnum:]]\)/\1escanviàre\2\3/g
    s/\b\([BbDd]\)escanviessi\([ns]\)\([^[:alnum:]]\)/\1escanviare\2\3/g
    s/\b\([BbDd]\)escanvi\([ïo]\)\([^[:alnum:]]\)/\1escanvie\3/g
    s/\b\([BbDd]\)escanviï\([ns]\)\([^[:alnum:]]\)/\1escanvie\2\3/g
    # intercanviar
    s/\b\([Ii]\)ntercanviés\([^[:alnum:]]\)/\1ntercanviara\2/g
    s/\b\([Ii]\)ntercanviéssi\([mu]\)\([^[:alnum:]]\)/\1ntercanviàre\2\3/g
    s/\b\([Ii]\)ntercanviessi\([ns]\)\([^[:alnum:]]\)/\1ntercanviare\2\3/g
    s/\b\([Ii]\)ntercanvi\([ïo]\)\([^[:alnum:]]\)/\1ntercanvie\3/g
    s/\b\([Ii]\)ntercanviï\([ns]\)\([^[:alnum:]]\)/\1ntercanvie\2\3/g
# capturar
s/\b\([Cc]\)apturés\([^[:alnum:]]\)/\1apturara\2/g
s/\b\([Cc]\)apturéssi\([mu]\)\([^[:alnum:]]\)/\1apturàre\2\3/g
s/\b\([Cc]\)apturessi\([ns]\)\([^[:alnum:]]\)/\1apturare\2\3/g
s/\b\([Cc]\)aptur\([io]\)\([^[:alnum:]]\)/\1apture\3/g
s/\b\([Cc]\)apturi\([ns]\)\([^[:alnum:]]\)/\1apture\2\3/g
# caracteritzar
s/\b\([Cc]\)aracteritzés\([^[:alnum:]]\)/\1aracteritzara\2/g
s/\b\([Cc]\)aracteritzéssi\([mu]\)\([^[:alnum:]]\)/\1aracteritzàre\2\3/g
s/\b\([Cc]\)aracteritzessi\([ns]\)\([^[:alnum:]]\)/\1aracteritzare\2\3/g
s/\b\([Cc]\)aracteritz\([io]\)\([^[:alnum:]]\)/\1aracteritze\3/g
s/\b\([Cc]\)aracteritzi\([ns]\)\([^[:alnum:]]\)/\1aracteritze\2\3/g
s/\b\([Cc]\)arbassó\([^[:alnum:]]\)/\1arabassí\2/g
s/\b\([Cc]\)arbassons\([^[:alnum:]]\)/\1arabassins\2/g
# carregar
s/\b\([Cc]\)arregués\([^[:alnum:]]\)/\1arregara\2/g
s/\b\([Cc]\)arreguéssi\([mu]\)\([^[:alnum:]]\)/\1arregàre\2\3/g
s/\b\([Cc]\)arreguessi\([ns]\)\([^[:alnum:]]\)/\1arregare\2\3/g
s/\b\([Cc]\)arreg\(ui\|o\)\([^[:alnum:]]\)/\1arregue\3/g
s/\b\([Cc]\)arregui\([ns]\)\([^[:alnum:]]\)/\1arregue\2\3/g
    # descarregar
    s/\b\([Dd]\)escarregués\([^[:alnum:]]\)/\1escarregara\2/g
    s/\b\([Dd]\)escarreguéssi\([mu]\)\([^[:alnum:]]\)/\1escarregàre\2\3/g
    s/\b\([Dd]\)escarreguessi\([ns]\)\([^[:alnum:]]\)/\1escarregare\2\3/g
    s/\b\([Dd]\)escarreg\(ui\|o\)\([^[:alnum:]]\)/\1escarregue\3/g
    s/\b\([Dd]\)escarregui\([ns]\)\([^[:alnum:]]\)/\1escarregue\2\3/g
    # encarregar
    s/\b\([Ee]\)ncarregués\([^[:alnum:]]\)/\1ncarregara\2/g
    s/\b\([Ee]\)ncarreguéssi\([mu]\)\([^[:alnum:]]\)/\1ncarregàre\2\3/g
    s/\b\([Ee]\)ncarreguessi\([ns]\)\([^[:alnum:]]\)/\1ncarregare\2\3/g
    s/\b\([Ee]\)ncarreg\(ui\|o\)\([^[:alnum:]]\)/\1ncarregue\3/g
    s/\b\([Ee]\)ncarregui\([ns]\)\([^[:alnum:]]\)/\1ncarregue\2\3/g
    # precarregar
    # TODO: no
    s/\b\([Pp]\)recarregués\([^[:alnum:]]\)/\1recarregara\2/g
    s/\b\([Pp]\)recarreguéssi\([mu]\)\([^[:alnum:]]\)/\1recarregàre\2\3/g
    s/\b\([Pp]\)recarreguessi\([ns]\)\([^[:alnum:]]\)/\1recarregare\2\3/g
    s/\b\([Pp]\)recarreg\(ui\|o\)\([^[:alnum:]]\)/\1recarregue\3/g
    s/\b\([Pp]\)recarregui\([ns]\)\([^[:alnum:]]\)/\1recarregue\2\3/g
    # recarregar (esmenes)
    # sobrecarregar
    s/\b\([Ss]\)obrecarregués\([^[:alnum:]]\)/\1obrecarregara\2/g
    s/\b\([Ss]\)obrecarreguéssi\([mu]\)\([^[:alnum:]]\)/\1obrecarregàre\2\3/g
    s/\b\([Ss]\)obrecarreguessi\([ns]\)\([^[:alnum:]]\)/\1obrecarregare\2\3/g
    s/\b\([Ss]\)obrecarreg\(ui\|o\)\([^[:alnum:]]\)/\1obrecarregue\3/g
    s/\b\([Ss]\)obrecarregui\([ns]\)\([^[:alnum:]]\)/\1obrecarregue\2\3/g
# casar
s/\b\([Cc]\)asés\([^[:alnum:]]\)/\1asara\2/g
s/\b\([Cc]\)aséssi\([mu]\)\([^[:alnum:]]\)/\1asàre\2\3/g
s/\b\([Cc]\)asessi\([ns]\)\([^[:alnum:]]\)/\1asare\2\3/g
s/\b\([Cc]\)as\([io]\)\([^[:alnum:]]\)/\1ase\3/g
s/\b\([Cc]\)asi\([ns]\)\([^[:alnum:]]\)/\1ase\2\3/g
# categoritzar
s/\b\([Cc]\)ategoritzés\([^[:alnum:]]\)/\1ategoritzara\2/g
s/\b\([Cc]\)ategoritzéssi\([mu]\)\([^[:alnum:]]\)/\1ategoritzàre\2\3/g
s/\b\([Cc]\)ategoritzessi\([ns]\)\([^[:alnum:]]\)/\1ategoritzare\2\3/g
s/\b\([Cc]\)ategoritz\([io]\)\([^[:alnum:]]\)/\1ategoritze\3/g
s/\b\([Cc]\)ategoritzi\([ns]\)\([^[:alnum:]]\)/\1ategoritze\2\3/g
# caure
s/\b\([Cc]\)aie\(m\|nt\|u\)\([^[:alnum:]]\)/\1ae\2\3/g
s/\b\([Cc]\)aigués\([^[:alnum:]]\)/\1aiguera\2/g
s/\b\([Cc]\)aiguéssi\([mu]\)\([^[:alnum:]]\)/\1aiguére\2\3/g
s/\b\([Cc]\)aiguessi\([ns]\)\([^[:alnum:]]\)/\1aiguere\2\3/g
s/\b\([Cc]\)aigui\([^[:alnum:]]\)/\1aiga\2/g
s/\b\([Cc]\)aigui\([ns]\)\([^[:alnum:]]\)/\1aigue\2\3/g
s/\b\([Qq]\)uèie\([mu]\)\([^[:alnum:]]\)/\1uéie\2\3/g
# causar
s/\b\([Cc]\)ausés\([^[:alnum:]]\)/\1ausara\2/g
s/\b\([Cc]\)auséssi\([mu]\)\([^[:alnum:]]\)/\1ausàre\2\3/g
s/\b\([Cc]\)ausessi\([ns]\)\([^[:alnum:]]\)/\1ausare\2\3/g
s/\b\([Cc]\)aus\([io]\)\([^[:alnum:]]\)/\1ause\3/g
s/\b\([Cc]\)ausi\([ns]\)\([^[:alnum:]]\)/\1ause\2\3/g
# cavar
s/\b\([Cc]\)avés\([^[:alnum:]]\)/\1avara\2/g
s/\b\([Cc]\)avéssi\([mu]\)\([^[:alnum:]]\)/\1avàre\2\3/g
s/\b\([Cc]\)avessi\([ns]\)\([^[:alnum:]]\)/\1avare\2\3/g
s/\b\([Cc]\)av\([io]\)\([^[:alnum:]]\)/\1ave\3/g
s/\b\([Cc]\)avi\([ns]\)\([^[:alnum:]]\)/\1ave\2\3/g
# cedir
s/\b\([Cc]\)edeix\([^[:alnum:]]\)/\1edix\2/g
s/\b\([Cc]\)edeixe\([ns]\)\([^[:alnum:]]\)/\1edixe\2\3/g
s/\b\([Cc]\)edeixi\([^[:alnum:]]\)/\1edisca\2/g
s/\b\([Cc]\)edeixi\([ns]\)\([^[:alnum:]]\)/\1edisque\2\3/g
s/\b\([Cc]\)edeixo\([^[:alnum:]]\)/\1edisc\2/g
s/\b\([Cc]\)edís\([^[:alnum:]]\)/\1edira\2/g
s/\b\([Cc]\)edíssi\([mu]\)\([^[:alnum:]]\)/\1edíre\2\3/g
s/\b\([Cc]\)edissi\([ns]\)\([^[:alnum:]]\)/\1edire\2\3/g
    # accedir
    s/\b\([Aa]\)ccedeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ccedix\2\3/g
    s/\b\([Aa]\)ccedeixi\([^[:alnum:]]\)/\1ccedisca\2/g
    s/\b\([Aa]\)ccedeixi\([ns]\)\([^[:alnum:]]\)/\1ccedisque\2\3/g
    s/\b\([Aa]\)ccedeixo\([^[:alnum:]]\)/\1ccedisc\2/g
    s/\b\([Aa]\)ccedís\([^[:alnum:]]\)/\1ccedira\2/g
    s/\b\([Aa]\)ccedíssi\([mu]\)\([^[:alnum:]]\)/\1ccedíre\2\3/g
    s/\b\([Aa]\)ccedissi\([ns]\)\([^[:alnum:]]\)/\1ccedire\2\3/g
    # antecedir
    s/\b\([Aa]\)ntecedeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ntecedix\2\3/g
    s/\b\([Aa]\)ntecedeixi\([^[:alnum:]]\)/\1ntecedisca\2/g
    s/\b\([Aa]\)ntecedeixi\([ns]\)\([^[:alnum:]]\)/\1ntecedisque\2\3/g
    s/\b\([Aa]\)ntecedeixo\([^[:alnum:]]\)/\1ntecedisc\2/g
    s/\b\([Aa]\)ntecedís\([^[:alnum:]]\)/\1ntecedira\2/g
    s/\b\([Aa]\)ntecedíssi\([mu]\|\)\([^[:alnum:]]\)/\1ntecedíre\2\3/g
    s/\b\([Aa]\)ntecedissi\([ns]\|\)\([^[:alnum:]]\)/\1ntecedire\2\3/g
    # excedir
    s/\b\([Ee]\)xcedeix\(e[ns]\|\)\([^[:alnum:]]\)/\1xcedix\2\3/g
    s/\b\([Ee]\)xcedeixi\([^[:alnum:]]\)/\1xcedisca\2/g
    s/\b\([Ee]\)xcedeixi\([ns]\)\([^[:alnum:]]\)/\1xcedisque\2\3/g
    s/\b\([Ee]\)xcedeixo\([^[:alnum:]]\)/\1xcedisc\2/g
    s/\b\([Ee]\)xcedís\([^[:alnum:]]\)/\1xcedira\2/g
    s/\b\([Ee]\)xcedíssi\([mu]\)\([^[:alnum:]]\)/\1xcedíre\2\3/g
    s/\b\([Ee]\)xcedissi\([ns]\)\([^[:alnum:]]\)/\1xcedire\2\3/g
        # sobreexcedir
        s/\b\([Ss]\)obreexcedeix\(e[ns]\|\)\([^[:alnum:]]\)/\1obreexcedix\2\3/g
        s/\b\([Ss]\)obreexcedeixi\([^[:alnum:]]\)/\1obreexcedisca\2/g
        s/\b\([Ss]\)obreexcedeixi\([ns]\)\([^[:alnum:]]\)/\1obreexcedisque\2\3/g
        s/\b\([Ss]\)obreexcedeixo\([^[:alnum:]]\)/\1obreexcedisc\2/g
        s/\b\([Ss]\)obreexcedís\([^[:alnum:]]\)/\1obreexcedira\2/g
        s/\b\([Ss]\)obreexcedíssi\([mu]\)\([^[:alnum:]]\)/\1obreexcedíre\2\3/g
        s/\b\([Ss]\)obreexcedissi\([ns]\)\([^[:alnum:]]\)/\1obreexcedire\2\3/g
    # concedir
    s/\b\([Cc]\)oncedeix\(e[ns]\|\)\([^[:alnum:]]\)/\1oncedix\2\3/g
    s/\b\([Cc]\)oncedeixi\([^[:alnum:]]\)/\1oncedisca\2/g
    s/\b\([Cc]\)oncedeixi\([ns]\)\([^[:alnum:]]\)/\1oncedisque\2\3/g
    s/\b\([Cc]\)oncedeixo\([^[:alnum:]]\)/\1oncedisc\2/g
    s/\b\([Cc]\)oncedís\([^[:alnum:]]\)/\1oncedira\2/g
    s/\b\([Cc]\)oncedíssi\([mu]\)\([^[:alnum:]]\)/\1oncedíre\2\3/g
    s/\b\([Cc]\)oncedissi\([ns]\)\([^[:alnum:]]\)/\1oncedire\2\3/g
    # intercedir
    s/\b\([Ii]\)ntercedeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ntercedix\2\3/g
    s/\b\([Ii]\)ntercedeixi\([^[:alnum:]]\)/\1ntercedisca\2/g
    s/\b\([Ii]\)ntercedeixi\([ns]\)\([^[:alnum:]]\)/\1ntercedisque\2\3/g
    s/\b\([Ii]\)ntercedeixo\([^[:alnum:]]\)/\1ntercedisc\2/g
    s/\b\([Ii]\)ntercedís\([^[:alnum:]]\)/\1ntercedira\2/g
    s/\b\([Ii]\)ntercedíssi\([mu]\)\([^[:alnum:]]\)/\1ntercedíre\2\3/g
    s/\b\([Ii]\)ntercedissi\([ns]\)\([^[:alnum:]]\)/\1ntercedire\2\3/g
    # precedir - procedir
    s/\b\([Pp]\)r\([eo]\)cedeix\(e[ns]\|\)\([^[:alnum:]]\)/\1r\2cedix\3\4/g
    s/\b\([Pp]\)r\([eo]\)cedeixi\([^[:alnum:]]\)/\1r\2cedisca\3/g
    s/\b\([Pp]\)r\([eo]\)cedeixi\([ns]\)\([^[:alnum:]]\)/\1r\2cedisque\3\4/g
    s/\b\([Pp]\)r\([eo]\)cedeixo\([^[:alnum:]]\)/\1r\2cedisc\3/g
    s/\b\([Pp]\)r\([eo]\)cedís\([^[:alnum:]]\)/\1r\2cedira\3/g
    s/\b\([Pp]\)r\([eo]\)cedíssi\([mu]\)\([^[:alnum:]]\)/\1r\2cedíre\3\4/g
    s/\b\([Pp]\)r\([eo]\)cedissi\([ns]\)\([^[:alnum:]]\)/\1r\2cedire\3\4/g
    # retrocedir
    s/\b\([Rr]\)etrocedeix\([^[:alnum:]]\)/\1etrocedix\2/g
    s/\b\([Rr]\)etrocedeixe\([ns]\)\([^[:alnum:]]\)/\1etrocedixe\2\3/g
    s/\b\([Rr]\)etrocedeixi\([^[:alnum:]]\)/\1etrocedisca\2/g
    s/\b\([Rr]\)etrocedeixi\([ns]\)\([^[:alnum:]]\)/\1etrocedisque\2\3/g
    s/\b\([Rr]\)etrocedeixo\([^[:alnum:]]\)/\1etrocedisc\2/g
    s/\b\([Rr]\)etrocedís\([^[:alnum:]]\)/\1etrocedira\2/g
    s/\b\([Rr]\)etrocedíssi\([mu]\)\([^[:alnum:]]\)/\1etrocedíre\2\3/g
    s/\b\([Rr]\)etrocedissi\([ns]\)\([^[:alnum:]]\)/\1etrocedire\2\3/g
# cementar
s/\b\([Cc]\)ementés\([^[:alnum:]]\)/\1ementara\2/g
s/\b\([Cc]\)ementéssi\([mu]\)\([^[:alnum:]]\)/\1ementàre\2\3/g
s/\b\([Cc]\)ementessi\([ns]\)\([^[:alnum:]]\)/\1ementare\2\3/g
s/\b\([Cc]\)ement\([io]\)\([^[:alnum:]]\)/\1emente\3/g
s/\b\([Cc]\)ementi\([ns]\)\([^[:alnum:]]\)/\1emente\2\3/g
s/\b\([Cc]\)ementiri\(s\|\)\([^[:alnum:]]\)/\1ementeri\2\3/g
# centrar (esmenes)
s/\b\([Cc]\)entrés\([^[:alnum:]]\)/\1entrara\2/g
s/\b\([Cc]\)entréssi\([mu]\)\([^[:alnum:]]\)/\1entràre\2\3/g
s/\b\([Cc]\)entressi\([ns]\)\([^[:alnum:]]\)/\1entrare\2\3/g
s/\b\([Cc]\)entr\([io]\)\([^[:alnum:]]\)/\1entre\3/g
s/\b\([Cc]\)entri\([ns]\)\([^[:alnum:]]\)/\1entre\2\3/g
    # concentrar
    s/\b\([Cc]\)oncentrés\([^[:alnum:]]\)/\1oncentrara\2/g
    s/\b\([Cc]\)oncentréssi\([mu]\)\([^[:alnum:]]\)/\1oncentràre\2\3/g
    s/\b\([Cc]\)oncentressi\([ns]\)\([^[:alnum:]]\)/\1oncentrare\2\3/g
    s/\b\([Cc]\)oncentr\([io]\)\([^[:alnum:]]\)/\1oncentre\3/g
    s/\b\([Cc]\)oncentri\([ns]\)\([^[:alnum:]]\)/\1oncentre\2\3/g
# cercar -> buscar (esmenes)
    # cercador
    # cercapersones
    # cercatalents
# certificar
s/\b\([Cc]\)ertifiqués\([^[:alnum:]]\)/\1ertificara\2/g
s/\b\([Cc]\)ertifiquéssi\([mu]\)\([^[:alnum:]]\)/\1ertificàre\2\3/g
s/\b\([Cc]\)ertifiquessi\([ns]\)\([^[:alnum:]]\)/\1ertificare\2\3/g
s/\b\([Cc]\)ertifico\([^[:alnum:]]\)/\1ertifique\2/g
s/\b\([Cc]\)ertifiqui\([ns]\|\)\([^[:alnum:]]\)/\1ertifique\2\3/g
# cimentar
s/\b\([Cc]\)imentés\([^[:alnum:]]\)/\1imentara\2/g
s/\b\([Cc]\)imentéssi\([mu]\)\([^[:alnum:]]\)/\1imentàre\2\3/g
s/\b\([Cc]\)imentessi\([ns]\)\([^[:alnum:]]\)/\1imentare\2\3/g
s/\b\([Cc]\)iment\([io]\)\([^[:alnum:]]\)/\1imente\3/g
s/\b\([Cc]\)imenti\([ns]\)\([^[:alnum:]]\)/\1imente\2\3/g
# circular
s/\b\([Cc]\)irculés\([^[:alnum:]]\)/\1irculara\2/g
s/\b\([Cc]\)irculéssi\([mu]\)\([^[:alnum:]]\)/\1irculàre\2\3/g
s/\b\([Cc]\)irculessi\([ns]\)\([^[:alnum:]]\)/\1irculare\2\3/g
s/\b\([Cc]\)ircul\([io]\)\([^[:alnum:]]\)/\1ircule\3/g
s/\b\([Cc]\)irculi\([ns]\)\([^[:alnum:]]\)/\1ircule\2\3/g
    # TODO: no
    # recircular
    s/\b\([Rr]\)ecirculés\([^[:alnum:]]\)/\1ecirculara\2/g
    s/\b\([Rr]\)ecirculéssi\([mu]\)\([^[:alnum:]]\)/\1ecirculàre\2\3/g
    s/\b\([Rr]\)ecirculessi\([ns]\)\([^[:alnum:]]\)/\1ecirculare\2\3/g
    s/\b\([Rr]\)ecircul\([io]\)\([^[:alnum:]]\)/\1ecircule\3/g
    s/\b\([Rr]\)ecirculi\([ns]\)\([^[:alnum:]]\)/\1ecircule\2\3/g
# circumdar
s/\b\([Cc]\)ircumdés\([^[:alnum:]]\)/\1ircumdara\2/g
s/\b\([Cc]\)ircumdéssi\([mu]\)\([^[:alnum:]]\)/\1ircumdàre\2\3/g
s/\b\([Cc]\)ircumdessi\([ns]\)\([^[:alnum:]]\)/\1ircumdare\2\3/g
s/\b\([Cc]\)ircumd\([io]\)\([^[:alnum:]]\)/\1ircumde\3/g
s/\b\([Cc]\)ircumdi\([ns]\)\([^[:alnum:]]\)/\1ircumde\2\3/g
# clarejar
s/\b\([Cc]\)laregés\([^[:alnum:]]\)/\1larejara\2/g
s/\b\([Cc]\)laregéssi\([mu]\)\([^[:alnum:]]\)/\1larejàre\2\3/g
s/\b\([Cc]\)laregessi\([ns]\)\([^[:alnum:]]\)/\1larejare\2\3/g
s/\b\([Cc]\)laregi\([ns]\|\)\([^[:alnum:]]\)/\1larege\2\3/g
s/\b\([Cc]\)larejo\([^[:alnum:]]\)/\1larege\2/g
# clicar (esmenes)
s/\b\([Cc]\)lico\([^[:alnum:]]\)/\1lique\2/g
s/\b\([Cc]\)liqués\([^[:alnum:]]\)/\1licara\2/g
s/\b\([Cc]\)liquéssi\([mu]\)\([^[:alnum:]]\)/\1licàre\2\3/g
s/\b\([Cc]\)liquessi\([ns]\)\([^[:alnum:]]\)/\1licare\2\3/g
s/\b\([Cc]\)liqui\([ns]\|\)\([^[:alnum:]]\)/\1lique\2\3/g
# climatitzar
s/\b\([Cc]\)limatitzés\([^[:alnum:]]\)/\1limatitzara\2/g
s/\b\([Cc]\)limatitzéssi\([mu]\)\([^[:alnum:]]\)/\1limatitzàre\2\3/g
s/\b\([Cc]\)limatitzessi\([ns]\)\([^[:alnum:]]\)/\1limatitzare\2\3/g
s/\b\([Cc]\)limatitz\([io]\)\([^[:alnum:]]\)/\1limatitze\3/g
s/\b\([Cc]\)limatitzi\([ns]\)\([^[:alnum:]]\)/\1limatitze\2\3/g
# TODO: no
# clusteritzar
s/\b\([Cc]\)lusteritzés\([^[:alnum:]]\)/\1lusteritzara\2/g
s/\b\([Cc]\)lusteritzéssi\([mu]\)\([^[:alnum:]]\)/\1lusteritzàre\2\3/g
s/\b\([Cc]\)lusteritzessi\([ns]\)\([^[:alnum:]]\)/\1lusteritzare\2\3/g
s/\b\([Cc]\)lusteritz\([io]\)\([^[:alnum:]]\)/\1lusteritze\3/g
s/\b\([Cc]\)lusteritzi\([ns]\)\([^[:alnum:]]\)/\1lusteritze\2\3/g
# codificar
s/\b\([Cc]\)odifico\([^[:alnum:]]\)/\1odifique\2/g
s/\b\([Cc]\)odifiqués\([^[:alnum:]]\)/\1odificara\2/g
s/\b\([Cc]\)odifiquéssi\([mu]\)\([^[:alnum:]]\)/\1odificàre\2\3/g
s/\b\([Cc]\)odifiquessi\([ns]\)\([^[:alnum:]]\)/\1odificare\2\3/g
s/\b\([Cc]\)odifiqui\([ns]\|\)\([^[:alnum:]]\)/\1odifique\2\3/g
    # descodificar
    s/\b\([Dd]\)escodifico\([^[:alnum:]]\)/\1escodifique\2/g
    s/\b\([Dd]\)escodifiqués\([^[:alnum:]]\)/\1escodificara\2/g
    s/\b\([Dd]\)escodifiquéssi\([mu]\)\([^[:alnum:]]\)/\1escodificàre\2\3/g
    s/\b\([Dd]\)escodifiquessi\([ns]\)\([^[:alnum:]]\)/\1escodificare\2\3/g
    s/\b\([Dd]\)escodifiqui\([ns]\|\)\([^[:alnum:]]\)/\1escodifique\2\3/g
    # TODO: no
    # transcodificar
    s/\b\([Tt]\)ranscodifico\([^[:alnum:]]\)/\1ranscodifique\2/g
    s/\b\([Tt]\)ranscodifiqués\([^[:alnum:]]\)/\1ranscodificara\2/g
    s/\b\([Tt]\)ranscodifiquéssi\([mu]\)\([^[:alnum:]]\)/\1ranscodificàre\2\3/g
    s/\b\([Tt]\)ranscodifiquessi\([ns]\)\([^[:alnum:]]\)/\1ranscodificare\2\3/g
    s/\b\([Tt]\)ranscodifiqui\([ns]\|\)\([^[:alnum:]]\)/\1ranscodifique\2\3/g
# col·laborar
s/\b\([Cc]\)ol·laborés\([^[:alnum:]]\)/\1ol·laborara\2/g
s/\b\([Cc]\)ol·laboréssi\([mu]\)\([^[:alnum:]]\)/\1ol·laboràre\2\3/g
s/\b\([Cc]\)ol·laboressi\([ns]\)\([^[:alnum:]]\)/\1ol·laborare\2\3/g
s/\b\([Cc]\)ol·labor\([io]\)\([^[:alnum:]]\)/\1ol·labore\3/g
s/\b\([Cc]\)ol·labori\([ns]\)\([^[:alnum:]]\)/\1ol·labore\2\3/g
# col·lapsar
s/\b\([Cc]\)ol·lapsés\([^[:alnum:]]\)/\1ol·lapsara\2/g
s/\b\([Cc]\)ol·lapséssi\([mu]\)\([^[:alnum:]]\)/\1ol·lapsàre\2\3/g
s/\b\([Cc]\)ol·lapsessi\([ns]\)\([^[:alnum:]]\)/\1ol·lapsare\2\3/g
s/\b\([Cc]\)ol·laps\([io]\)\([^[:alnum:]]\)/\1ol·lapse\3/g
s/\b\([Cc]\)ol·lapsi\([ns]\)\([^[:alnum:]]\)/\1ol·lapse\2\3/g
# col·lidir - col·ludir
s/\b\([Cc]\)ol·l\([iu]\)deix\(e[ns]\|\)\([^[:alnum:]]\)/\1ol·l\2dix\3\4/g
s/\b\([Cc]\)ol·l\([iu]\)deixi\([^[:alnum:]]\)/\1ol·l\2disca\3/g
s/\b\([Cc]\)ol·l\([iu]\)deixi\([ns]\)\([^[:alnum:]]\)/\1ol·l\2disque\3\4/g
s/\b\([Cc]\)ol·l\([iu]\)deixo\([^[:alnum:]]\)/\1ol·l\2disc\3/g
s/\b\([Cc]\)ol·l\([iu]\)dís\([^[:alnum:]]\)/\1ol·l\2dira\3/g
s/\b\([Cc]\)ol·l\([iu]\)díssi\([mu]\)\([^[:alnum:]]\)/\1ol·l\2díre\3\4/g
s/\b\([Cc]\)ol·l\([iu]\)dissi\([ns]\)\([^[:alnum:]]\)/\1ol·l\2dire\3\4/g
    # NOTE: en català no existix com a verb, en valencià sí
    # col·isió(ons) / col·lisionador (esta és nova)
    # col·lisionar ->  col·lidir
    s/\b\([Cc]\)ol·lisionar\([^[:alnum:]]\)/\1ol·lidir\2/g
    s/\b\([Cc]\)ol·lisioni\([^[:alnum:]]\)/\1ol·lidisca\2/g
    s/\b\([Cc]\)ol·lisioni\([ns]\)\([^[:alnum:]]\)/\1ol·lidisque\2\3/g
    s/\b\([Cc]\)ol·lisiono\([^[:alnum:]]\)/\1ol·lidisc\2/g
    s/\b\([Cc]\)ol·lisionés\([^[:alnum:]]\)/\1ol·lidira\2/g
    s/\b\([Cc]\)ol·lisionéssi\([mu]\)\([^[:alnum:]]\)/\1ol·lidíre\2\3/g
    s/\b\([Cc]\)ol·lisionessi\([ns]\)\([^[:alnum:]]\)/\1ol·lidire\2\3/g
s/\bColiflor\(s\|\)\([^[:alnum:]]\)/Floricol\1\2/g
s/\bcoliflor\(s\|\)\([^[:alnum:]]\)/floricol\1\2/g
# col·locar
s/\b\([Cc]\)ol·loqués\([^[:alnum:]]\)/\1ol·locara\2/g
s/\b\([Cc]\)ol·loquéssi\([mu]\)\([^[:alnum:]]\)/\1ol·locàre\2\3/g
s/\b\([Cc]\)ol·loquessi\([ns]\)\([^[:alnum:]]\)/\1ol·locare\2\3/g
s/\b\([Cc]\)ol·loco\([^[:alnum:]]\)/\1ol·loque\2/g
s/\b\([Cc]\)ol·loqui\([ns]\|\)\([^[:alnum:]]\)/\1ol·loque\2\3/g
    # descol·locar
    s/\b\([Dd]\)escol·loqués\([^[:alnum:]]\)/\1escol·locara\2/g
    s/\b\([Dd]\)escol·loquéssi\([mu]\)\([^[:alnum:]]\)/\1escol·locàre\2\3/g
    s/\b\([Dd]\)escol·loquessi\([ns]\)\([^[:alnum:]]\)/\1escol·locare\2\3/g
    s/\b\([Dd]\)escol·loco\([^[:alnum:]]\)/\1escol·loque\2/g
    s/\b\([Dd]\)escol·loqui\([ns]\|\)\([^[:alnum:]]\)/\1escol·loque\2\3/g
    # TODO: no
    # recol·locar
    s/\b\([Rr]\)ecol·loqués\([^[:alnum:]]\)/\1ecol·locara\2/g
    s/\b\([Rr]\)ecol·loquéssi\([mu]\)\([^[:alnum:]]\)/\1ecol·locàre\2\3/g
    s/\b\([Rr]\)ecol·loquessi\([ns]\)\([^[:alnum:]]\)/\1ecol·locare\2\3/g
    s/\b\([Rr]\)ecol·loco\([^[:alnum:]]\)/\1ecol·loque\2/g
    s/\b\([Rr]\)ecol·loqui\([ns]\|\)\([^[:alnum:]]\)/\1ecol·loque\2\3/g
# collir
s/\b\([Cc]\)ollís\([^[:alnum:]]\)/\1ollira\2/g
s/\b\([Cc]\)ollíssi\([mu]\)\([^[:alnum:]]\)/\1ollíre\2\3/g
s/\b\([Cc]\)ollissi\([ns]\)\([^[:alnum:]]\)/\1ollire\2\3/g
s/\b\([Cc]\)ulli\([^[:alnum:]]\)/\1ulla\2/g
s/\b\([Cc]\)ulli\([ns]\)\([^[:alnum:]]\)/\1ulle\2\3/g
s/\b\([Cc]\)ullo\([^[:alnum:]]\)/\1ull\2/g
    # acollir
    s/\b\([Aa]\)collís\([^[:alnum:]]\)/\1collira\2/g
    s/\b\([Aa]\)collíssi\([mu]\)\([^[:alnum:]]\)/\1collíre\2\3/g
    s/\b\([Aa]\)collissi\([ns]\)\([^[:alnum:]]\)/\1collire\2\3/g
    s/\b\([Aa]\)culli\([^[:alnum:]]\)/\1culla\2/g
    s/\b\([Aa]\)culli\([ns]\)\([^[:alnum:]]\)/\1culle\2\3/g
    s/\b\([Aa]\)cullo\([^[:alnum:]]\)/\1cull\2/g
    # desacollir
    s/\b\([Dd]\)esacollís\([^[:alnum:]]\)/\1esacollira\2/g
    s/\b\([Dd]\)esacollíssi\([mu]\)\([^[:alnum:]]\)/\1esacollíre\2\3/g
    s/\b\([Dd]\)esacollissi\([ns]\)\([^[:alnum:]]\)/\1esacollire\2\3/g
    s/\b\([Dd]\)esaculli\([^[:alnum:]]\)/\1esaculla\2/g
    s/\b\([Dd]\)esaculli\([ns]\)\([^[:alnum:]]\)/\1esaculle\2\3/g
    s/\b\([Dd]\)esacullo\([^[:alnum:]]\)/\1esacull\2/g
    # escollir (esmenes - # NOTE: PDT)
    # recollir -> arreplegar (esmenes)
# colpejar
s/\b\([Cc]\)olpegés\([^[:alnum:]]\)/\1olpejara\2/g
s/\b\([Cc]\)olpegéssi\([mu]\)\([^[:alnum:]]\)/\1olpejàre\2\3/g
s/\b\([Cc]\)olpegessi\([ns]\)\([^[:alnum:]]\)/\1olpejare\2\3/g
s/\b\([Cc]\)olpegi\([ns]\|\)\([^[:alnum:]]\)/\1olpege\2\3/g
s/\b\([Cc]\)olpejo\([^[:alnum:]]\)/\1olpege\2/g
# combinar
s/\b\([Cc]\)ombinés\([^[:alnum:]]\)/\1ombinara\2/g
s/\b\([Cc]\)ombinéssi\([mu]\)\([^[:alnum:]]\)/\1ombinàre\2\3/g
s/\b\([Cc]\)ombinessi\([ns]\)\([^[:alnum:]]\)/\1ombinare\2\3/g
s/\b\([Cc]\)ombin\([io]\)\([^[:alnum:]]\)/\1ombine\3/g
s/\b\([Cc]\)ombini\([ns]\)\([^[:alnum:]]\)/\1ombine\2\3/g
    # recombinar
    s/\b\([Rr]\)ecombinés\([^[:alnum:]]\)/\1ecombinara\2/g
    s/\b\([Rr]\)ecombinéssi\([mu]\)\([^[:alnum:]]\)/\1ecombinàre\2\3/g
    s/\b\([Rr]\)ecombinessi\([ns]\)\([^[:alnum:]]\)/\1ecombinare\2\3/g
    s/\b\([Rr]\)ecombin\([io]\)\([^[:alnum:]]\)/\1ecombine\3/g
    s/\b\([Rr]\)ecombini\([ns]\)\([^[:alnum:]]\)/\1ecombine\2\3/g
# començar
s/\b\([Cc]\)omencés\([^[:alnum:]]\)/\1omençara\2/g
s/\b\([Cc]\)omencéssi\([mu]\)\([^[:alnum:]]\)/\1omençàre\2\3/g
s/\b\([Cc]\)omencessi\([ns]\)\([^[:alnum:]]\)/\1omençare\2\3/g
s/\b\([Cc]\)omenci\([^[:alnum:]]\)/\1omence\2/g
s/\b\([Cc]\)omenci\([ns]\)\([^[:alnum:]]\)/\1omence\2\3/g
s/\b\([Cc]\)omenço\([^[:alnum:]]\)/\1omence\2/g
# comentar
s/\b\([Cc]\)omentés\([^[:alnum:]]\)/\1omentara\2/g
s/\b\([Cc]\)omentéssi\([mu]\)\([^[:alnum:]]\)/\1omentàre\2\3/g
s/\b\([Cc]\)omentessi\([ns]\)\([^[:alnum:]]\)/\1omentare\2\3/g
s/\b\([Cc]\)oment\([io]\)\([^[:alnum:]]\)/\1omente\3/g
s/\b\([Cc]\)omenti\([ns]\)\([^[:alnum:]]\)/\1omente\2\3/g
    # descomentar
    # TODO: no
    s/\b\([Dd]\)escomentés\([^[:alnum:]]\)/\1escomentara\2/g
    s/\b\([Dd]\)escomentéssi\([mu]\)\([^[:alnum:]]\)/\1escomentàre\2\3/g
    s/\b\([Dd]\)escomentessi\([ns]\)\([^[:alnum:]]\)/\1escomentare\2\3/g
    s/\b\([Dd]\)escoment\([io]\)\([^[:alnum:]]\)/\1escomente\3/g
    s/\b\([Dd]\)escomenti\([ns]\)\([^[:alnum:]]\)/\1escomente\2\3/g
# commutar -> canviar (esmenes - PDT.)
# compactar
s/\b\([Cc]\)ompactés\([^[:alnum:]]\)/\1ompactara\2/g
s/\b\([Cc]\)ompactéssi\([mu]\)\([^[:alnum:]]\)/\1ompactàre\2\3/g
s/\b\([Cc]\)ompactessi\([ns]\)\([^[:alnum:]]\)/\1ompactare\2\3/g
s/\b\([Cc]\)ompact\([io]\)\([^[:alnum:]]\)/\1ompacte\3/g
s/\b\([Cc]\)ompacti\([ns]\)\([^[:alnum:]]\)/\1ompacte\2\3/g
# comparar
s/\b\([Cc]\)omparés\([^[:alnum:]]\)/\1omparara\2/g
s/\b\([Cc]\)omparéssi\([mu]\)\([^[:alnum:]]\)/\1omparàre\2\3/g
s/\b\([Cc]\)omparessi\([ns]\)\([^[:alnum:]]\)/\1omparare\2\3/g
s/\b\([Cc]\)ompar\([io]\)\([^[:alnum:]]\)/\1ompare\3/g
s/\b\([Cc]\)ompari\([ns]\)\([^[:alnum:]]\)/\1ompare\2\3/g
# compartimentar
s/\b\([Cc]\)ompartimentés\([^[:alnum:]]\)/\1ompartimentara\2/g
s/\b\([Cc]\)ompartimentéssi\([mu]\)\([^[:alnum:]]\)/\1ompartimentàre\2\3/g
s/\b\([Cc]\)ompartimentessi\([ns]\)\([^[:alnum:]]\)/\1ompartimentare\2\3/g
s/\b\([Cc]\)ompartiment\([io]\)\([^[:alnum:]]\)/\1ompartimente\3/g
s/\b\([Cc]\)ompartimenti\([ns]\)\([^[:alnum:]]\)/\1ompartimente\2\3/g
# compartir
s/\b\([Cc]\)omparteix\(e[ns]\|\)\([^[:alnum:]]\)/\1ompartix\2\3/g
s/\b\([Cc]\)omparteixi\([^[:alnum:]]\)/\1ompartisca\2/g
s/\b\([Cc]\)omparteixi\([ns]\)\([^[:alnum:]]\)/\1ompartisque\2\3/g
s/\b\([Cc]\)omparteixo\([^[:alnum:]]\)/\1ompartisc\2/g
s/\b\([Cc]\)ompartís\([^[:alnum:]]\)/\1ompartira\2/g
s/\b\([Cc]\)ompartíssi\([mu]\)\([^[:alnum:]]\)/\1ompartíre\2\3/g
s/\b\([Cc]\)ompartissi\([ns]\)\([^[:alnum:]]\)/\1ompartire\2\3/g
# compatibilitzar
s/\b\([Cc]\)ompatibilitzés\([^[:alnum:]]\)/\1ompatibilitzara\2/g
s/\b\([Cc]\)ompatibilitzéssi\([mu]\)\([^[:alnum:]]\)/\1ompatibilitzàre\2\3/g
s/\b\([Cc]\)ompatibilitzessi\([ns]\)\([^[:alnum:]]\)/\1ompatibilitzare\2\3/g
s/\b\([Cc]\)ompatibilitz\([io]\)\([^[:alnum:]]\)/\1ompatibilitze\3/g
s/\b\([Cc]\)ompatibilitzi\([ns]\)\([^[:alnum:]]\)/\1ompatibilitze\2\3/g
# compensar
s/\b\([Cc]\)ompensés\([^[:alnum:]]\)/\1ompensara\2/g
s/\b\([Cc]\)ompenséssi\([mu]\)\([^[:alnum:]]\)/\1ompensàre\2\3/g
s/\b\([Cc]\)ompensessi\([ns]\)\([^[:alnum:]]\)/\1ompensare\2\3/g
s/\b\([Cc]\)ompens\([io]\)\([^[:alnum:]]\)/\1ompense\3/g
s/\b\([Cc]\)ompensi\([ns]\)\([^[:alnum:]]\)/\1ompense\2\3/g
    # descompensar
    s/\b\([Dd]\)escompensés\([^[:alnum:]]\)/\1escompensara\2/g
    s/\b\([Dd]\)escompenséssi\([mu]\)\([^[:alnum:]]\)/\1escompensàre\2\3/g
    s/\b\([Dd]\)escompensessi\([ns]\)\([^[:alnum:]]\)/\1escompensare\2\3/g
    s/\b\([Dd]\)escompens\([io]\)\([^[:alnum:]]\)/\1escompense\3/g
    s/\b\([Dd]\)escompensi\([ns]\)\([^[:alnum:]]\)/\1escompense\2\3/g
    # recompensar
    s/\b\([Rr]\)ecompensés\([^[:alnum:]]\)/\1ecompensara\2/g
    s/\b\([Rr]\)ecompenséssi\([mu]\)\([^[:alnum:]]\)/\1ecompensàre\2\3/g
    s/\b\([Rr]\)ecompensessi\([ns]\)\([^[:alnum:]]\)/\1ecompensare\2\3/g
    s/\b\([Rr]\)ecompens\([io]\)\([^[:alnum:]]\)/\1ecompense\3/g
    s/\b\([Rr]\)ecompensi\([ns]\)\([^[:alnum:]]\)/\1ecompense\2\3/g
# compilar
s/\b\([Cc]\)ompilés\([^[:alnum:]]\)/\1ompilara\2/g
s/\b\([Cc]\)ompiléssi\([mu]\)\([^[:alnum:]]\)/\1ompilàre\2\3/g
s/\b\([Cc]\)ompilessi\([ns]\)\([^[:alnum:]]\)/\1ompilare\2\3/g
s/\b\([Cc]\)ompil\([io]\)\([^[:alnum:]]\)/\1ompile\3/g
s/\b\([Cc]\)ompili\([ns]\)\([^[:alnum:]]\)/\1ompile\2\3/g
    # TODO: no
    # descompilar
    s/\b\([Dd]\)escompilés\([^[:alnum:]]\)/\1escompilara\2/g
    s/\b\([Dd]\)escompiléssi\([mu]\)\([^[:alnum:]]\)/\1escompilàre\2\3/g
    s/\b\([Dd]\)escompilessi\([ns]\)\([^[:alnum:]]\)/\1escompilare\2\3/g
    s/\b\([Dd]\)escompil\([io]\)\([^[:alnum:]]\)/\1escompile\3/g
    s/\b\([Dd]\)escompili\([ns]\)\([^[:alnum:]]\)/\1escompile\2\3/g
    # TODO: no
    # recompilar
    s/\b\([Rr]\)ecompilés\([^[:alnum:]]\)/\1ecompilara\2/g
    s/\b\([Rr]\)ecompiléssi\([mu]\)\([^[:alnum:]]\)/\1ecompilàre\2\3/g
    s/\b\([Rr]\)ecompilessi\([ns]\)\([^[:alnum:]]\)/\1ecompilare\2\3/g
    s/\b\([Rr]\)ecompil\([io]\)\([^[:alnum:]]\)/\1ecompile\3/g
    s/\b\([Rr]\)ecompili\([ns]\)\([^[:alnum:]]\)/\1ecompile\2\3/g
# complementar
s/\b\([Cc]\)omplementés\([^[:alnum:]]\)/\1omplementara\2/g
s/\b\([Cc]\)omplementéssi\([mu]\)\([^[:alnum:]]\)/\1omplementàre\2\3/g
s/\b\([Cc]\)omplementessi\([ns]\)\([^[:alnum:]]\)/\1omplementare\2\3/g
s/\b\([Cc]\)omplement\([io]\)\([^[:alnum:]]\)/\1omplemente\3/g
s/\b\([Cc]\)omplementi\([ns]\)\([^[:alnum:]]\)/\1omplemente\2\3/g
# completar
s/\b\([Cc]\)ompletés\([^[:alnum:]]\)/\1ompletara\2/g
s/\b\([Cc]\)ompletéssi\([mu]\)\([^[:alnum:]]\)/\1ompletàre\2\3/g
s/\b\([Cc]\)ompletessi\([ns]\)\([^[:alnum:]]\)/\1ompletare\2\3/g
s/\b\([Cc]\)omplet\([io]\)\([^[:alnum:]]\)/\1omplete\3/g
s/\b\([Cc]\)ompleti\([ns]\)\([^[:alnum:]]\)/\1omplete\2\3/g
# complimentar
s/\b\([Cc]\)omplimentés\([^[:alnum:]]\)/\1omplimentara\2/g
s/\b\([Cc]\)omplimentéssi\([mu]\)\([^[:alnum:]]\)/\1omplimentàre\2\3/g
s/\b\([Cc]\)omplimentessi\([ns]\)\([^[:alnum:]]\)/\1omplimentare\2\3/g
s/\b\([Cc]\)ompliment\([io]\)\([^[:alnum:]]\)/\1omplimente\3/g
s/\b\([Cc]\)omplimenti\([ns]\)\([^[:alnum:]]\)/\1omplimente\2\3/g
# complir
s/\b\([Cc]\)ompleix\(e[ns]\|\)\([^[:alnum:]]\)/\1omplix\2\3/g
s/\b\([Cc]\)ompleixi\([^[:alnum:]]\)/\1omplisca\2/g
s/\b\([Cc]\)ompleixi\([ns]\)\([^[:alnum:]]\)/\1omplisque\2\3/g
s/\b\([Cc]\)ompleixo\([^[:alnum:]]\)/\1omplisc\2/g
s/\b\([Cc]\)omplís\([^[:alnum:]]\)/\1omplira\2/g
s/\b\([Cc]\)omplíssi\([mu]\)\([^[:alnum:]]\)/\1omplíre\2\3/g
s/\b\([Cc]\)omplissi\([ns]\)\([^[:alnum:]]\)/\1omplire\2\3/g
    # acomplir
    s/\b\([Aa]\)compleix\(e[ns]\|\)\([^[:alnum:]]\)/\1complix\2\3/g
    s/\b\([Aa]\)compleixi\([^[:alnum:]]\)/\1complisca\2/g
    s/\b\([Aa]\)compleixi\([ns]\)\([^[:alnum:]]\)/\1complisque\2\3/g
    s/\b\([Aa]\)compleixo\([^[:alnum:]]\)/\1complisc\2/g
    s/\b\([Aa]\)complís\([^[:alnum:]]\)/\1complira\2/g
    s/\b\([Aa]\)complíssi\([mu]\)\([^[:alnum:]]\)/\1complíre\2\3/g
    s/\b\([Aa]\)complissi\([ns]\)\([^[:alnum:]]\)/\1complire\2\3/g
    # incomplir
    s/\b\([Ii]\)ncompleix\(e[ns]\|\)\([^[:alnum:]]\)/\1ncomplix\2\3/g
    s/\b\([Ii]\)ncompleixi\([^[:alnum:]]\)/\1ncomplisca\2/g
    s/\b\([Ii]\)ncompleixi\([ns]\)\([^[:alnum:]]\)/\1ncomplisque\2\3/g
    s/\b\([Ii]\)ncompleixo\([^[:alnum:]]\)/\1ncomplisc\2/g
    s/\b\([Ii]\)ncomplís\([^[:alnum:]]\)/\1ncomplira\2/g
    s/\b\([Ii]\)ncomplíssi\([mu]\)\([^[:alnum:]]\)/\1ncomplíre\2\3/g
    s/\b\([Ii]\)ncomplissi\([ns]\)\([^[:alnum:]]\)/\1ncomplire\2\3/g
# compondre
s/\b\([Cc]\)ompongués\([^[:alnum:]]\)/\1omponguera\2/g
s/\b\([Cc]\)omponguéssi\([mu]\)\([^[:alnum:]]\)/\1omponguére\2\3/g
s/\b\([Cc]\)omponguessi\([ns]\)\([^[:alnum:]]\)/\1omponguere\2\3/g
s/\b\([Cc]\)ompongui\([^[:alnum:]]\)/\1omponga\2/g
s/\b\([Cc]\)ompongui\([ns]\)\([^[:alnum:]]\)/\1ompongue\2\3/g
    # descompondre
    s/\b\([Dd]\)escompongués\([^[:alnum:]]\)/\1escomponguera\2/g
    s/\b\([Dd]\)escomponguéssi\([mu]\)\([^[:alnum:]]\)/\1escomponguére\2\3/g
    s/\b\([Dd]\)escomponguessi\([ns]\)\([^[:alnum:]]\)/\1escomponguere\2\3/g
    s/\b\([Dd]\)escompongui\([^[:alnum:]]\)/\1escomponga\2/g
    s/\b\([Dd]\)escompongui\([ns]\)\([^[:alnum:]]\)/\1escompongue\2\3/g
    # recompondre
    s/\b\([Rr]\)ecompongués\([^[:alnum:]]\)/\1ecomponguera\2/g
    s/\b\([Rr]\)ecomponguéssi\([mu]\)\([^[:alnum:]]\)/\1ecomponguére\2\3/g
    s/\b\([Rr]\)ecomponguessi\([ns]\)\([^[:alnum:]]\)/\1ecomponguere\2\3/g
    s/\b\([Rr]\)ecompongui\([^[:alnum:]]\)/\1ecomponga\2/g
    s/\b\([Rr]\)ecompongui\([ns]\)\([^[:alnum:]]\)/\1ecompongue\2\3/g
# comprar (esmenes)
s/\b\([Cc]\)omprés\([^[:alnum:]]\)/\1omprara\2/g
s/\b\([Cc]\)ompréssi\([mu]\)\([^[:alnum:]]\)/\1ompràre\2\3/g
s/\b\([Cc]\)ompressi\([ns]\)\([^[:alnum:]]\)/\1omprare\2\3/g
s/\b\([Cc]\)ompr\([io]\)\([^[:alnum:]]\)/\1ompre\3/g
s/\b\([Cc]\)ompri\([ns]\)\([^[:alnum:]]\)/\1ompre\2\3/g
# comprimir
s/\b\([Cc]\)omprimeix\(e[ns]\|\)\([^[:alnum:]]\)/\1omprimix\2\3/g
s/\b\([Cc]\)omprimeixi\([^[:alnum:]]\)/\1omprimisca\2/g
s/\b\([Cc]\)omprimeixi\([ns]\)\([^[:alnum:]]\)/\1omprimisque\2\3/g
s/\b\([Cc]\)omprimeixo\([^[:alnum:]]\)/\1omprimisc\2/g
s/\b\([Cc]\)omprimís\([^[:alnum:]]\)/\1omprimira\2/g
s/\b\([Cc]\)omprimíssi\([mu]\)\([^[:alnum:]]\)/\1omprimíre\2\3/g
s/\b\([Cc]\)omprimissi\([ns]\)\([^[:alnum:]]\)/\1omprimire\2\3/g
    # descomprimir
    s/\b\([Dd]\)escomprimeix\(e[ns]\|\)\([^[:alnum:]]\)/\1escomprimix\2\3/g
    s/\b\([Dd]\)escomprimeixi\([^[:alnum:]]\)/\1escomprimisca\2/g
    s/\b\([Dd]\)escomprimeixi\([ns]\)\([^[:alnum:]]\)/\1escomprimisque\2\3/g
    s/\b\([Dd]\)escomprimeixo\([^[:alnum:]]\)/\1escomprimisc\2/g
    s/\b\([Dd]\)escomprimís\([^[:alnum:]]\)/\1escomprimira\2/g
    s/\b\([Dd]\)escomprimíssi\([mu]\)\([^[:alnum:]]\)/\1escomprimíre\2\3/g
    s/\b\([Dd]\)escomprimissi\([ns]\)\([^[:alnum:]]\)/\1escomprimire\2\3/g
# comptar
s/\b\([Cc]\)omptés\([^[:alnum:]]\)/\1omptara\2/g
s/\b\([Cc]\)omptéssi\([mu]\)\([^[:alnum:]]\)/\1omptàre\2\3/g
s/\b\([Cc]\)omptessi\([ns]\)\([^[:alnum:]]\)/\1omptare\2\3/g
s/\b\([Cc]\)ompt\([io]\)\([^[:alnum:]]\)/\1ompte\3/g
s/\b\([Cc]\)ompti\([ns]\)\([^[:alnum:]]\)/\1ompte\2\3/g
    # comptabilitzar
    s/\b\([Cc]\)omptabilitzés\([^[:alnum:]]\)/\1omptabilitzara\2/g
    s/\b\([Cc]\)omptabilitzéssi\([mu]\)\([^[:alnum:]]\)/\1omptabilitzàre\2\3/g
    s/\b\([Cc]\)omptabilitzessi\([ns]\)\([^[:alnum:]]\)/\1omptabilitzare\2\3/g
    s/\b\([Cc]\)omptabilitz\([io]\)\([^[:alnum:]]\)/\1omptabilitze\3/g
    s/\b\([Cc]\)omptabilitzi\([ns]\)\([^[:alnum:]]\)/\1omptabilitze\2\3/g
    # descomptar
    s/\b\([Dd]\)escomptés\([^[:alnum:]]\)/\1escomptara\2/g
    s/\b\([Dd]\)escomptéssi\([mu]\)\([^[:alnum:]]\)/\1escomptàre\2\3/g
    s/\b\([Dd]\)escomptessi\([ns]\)\([^[:alnum:]]\)/\1escomptare\2\3/g
    s/\b\([Dd]\)escompt\([io]\)\([^[:alnum:]]\)/\1escompte\3/g
    s/\b\([Dd]\)escompti\([ns]\)\([^[:alnum:]]\)/\1escompte\2\3/g
    # recomptar
    s/\b\([Rr]\)ecomptés\([^[:alnum:]]\)/\1ecomptara\2/g
    s/\b\([Rr]\)ecomptéssi\([mu]\)\([^[:alnum:]]\)/\1ecomptàre\2\3/g
    s/\b\([Rr]\)ecomptessi\([ns]\)\([^[:alnum:]]\)/\1ecomptare\2\3/g
    s/\b\([Rr]\)ecompt\([io]\)\([^[:alnum:]]\)/\1ecompte\3/g
    s/\b\([Rr]\)ecompti\([ns]\)\([^[:alnum:]]\)/\1ecompte\2\3/g
# comunicar
s/\b\([Cc]\)omuniqués\([^[:alnum:]]\)/\1omunicara\2/g
s/\b\([Cc]\)omuniquéssi\([mu]\)\([^[:alnum:]]\)/\1omunicàre\2\3/g
s/\b\([Cc]\)omuniquessi\([ns]\)\([^[:alnum:]]\)/\1omunicare\2\3/g
s/\b\([Cc]\)omuniqui\([ns]\|\)\([^[:alnum:]]\)/\1omunique\2\3/g
s/\b\([Cc]\)omunico\([^[:alnum:]]\)/\1omunique\2/g
    # incomunicar
    s/\b\([Ii]\)ncomuniqués\([^[:alnum:]]\)/\1ncomunicara\2/g
    s/\b\([Ii]\)ncomuniquéssi\([mu]\)\([^[:alnum:]]\)/\1ncomunicàre\2\3/g
    s/\b\([Ii]\)ncomuniquessi\([ns]\)\([^[:alnum:]]\)/\1ncomunicare\2\3/g
    s/\b\([Ii]\)ncomuniqui\([ns]\|\)\([^[:alnum:]]\)/\1ncomunique\2\3/g
    s/\b\([Ii]\)ncomunico\([^[:alnum:]]\)/\1ncomunique\2/g
# concatenar
s/\b\([Cc]\)oncatenés\([^[:alnum:]]\)/\1oncatenara\2/g
s/\b\([Cc]\)oncatenéssi\([mu]\)\([^[:alnum:]]\)/\1oncatenàre\2\3/g
s/\b\([Cc]\)oncatenessi\([ns]\)\([^[:alnum:]]\)/\1oncatenare\2\3/g
s/\b\([Cc]\)oncaten\([io]\)\([^[:alnum:]]\)/\1oncatene\3/g
s/\b\([Cc]\)oncateni\([ns]\)\([^[:alnum:]]\)/\1oncatene\2\3/g
# conciliar
s/\b\([Cc]\)onciliés\([^[:alnum:]]\)/\1onciliara\2/g
s/\b\([Cc]\)onciliéssi\([mu]\)\([^[:alnum:]]\)/\1onciliàre\2\3/g
s/\b\([Cc]\)onciliessi\([ns]\)\([^[:alnum:]]\)/\1onciliare\2\3/g
s/\b\([Cc]\)oncili\([ïo]\)\([^[:alnum:]]\)/\1oncilie\3/g
s/\b\([Cc]\)onciliï\([ns]\)\([^[:alnum:]]\)/\1oncilie\2\3/g
    # reconciliar
    s/\b\([Rr]\)econciliés\([^[:alnum:]]\)/\1econciliara\2/g
    s/\b\([Rr]\)econciliéssi\([mu]\)\([^[:alnum:]]\)/\1econciliàre\2\3/g
    s/\b\([Rr]\)econciliessi\([ns]\)\([^[:alnum:]]\)/\1econciliare\2\3/g
    s/\b\([Rr]\)econcili\([ïo]\)\([^[:alnum:]]\)/\1econcilie\3/g
    s/\b\([Rr]\)econciliï\([ns]\)\([^[:alnum:]]\)/\1econcilie\2\3/g
s/\b\([Cc]\)ongolès\([^[:alnum:]]\)/\1ongolés\2/g
# condimentar
s/\b\([Cc]\)ondimentés\([^[:alnum:]]\)/\1ondimentara\2/g
s/\b\([Cc]\)ondimentéssi\([mu]\)\([^[:alnum:]]\)/\1ondimentàre\2\3/g
s/\b\([Cc]\)ondimentessi\([ns]\)\([^[:alnum:]]\)/\1ondimentare\2\3/g
s/\b\([Cc]\)ondiment\([io]\)\([^[:alnum:]]\)/\1ondimente\3/g
s/\b\([Cc]\)ondimenti\([ns]\)\([^[:alnum:]]\)/\1ondimente\2\3/g
# condir
s/\b\([Cc]\)ondeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ondix\2\3/g
s/\b\([Cc]\)ondeixi\([^[:alnum:]]\)/\1ondisca\2/g
s/\b\([Cc]\)ondeixi\([ns]\)\([^[:alnum:]]\)/\1ondisque\2\3/g
s/\b\([Cc]\)ondeixo\([^[:alnum:]]\)/\1ondisc\2/g
s/\b\([Cc]\)ondís\([^[:alnum:]]\)/\1ondira\2/g
s/\b\([Cc]\)ondíssi\([mu]\|\)\([^[:alnum:]]\)/\1ondíre\2\3/g
s/\b\([Cc]\)ondissi\([ns]\|\)\([^[:alnum:]]\)/\1ondire\2\3/g
    # escondir
    s/\b\([Ee]\)scondeix\(e[ns]\|\)\([^[:alnum:]]\)/\1scondix\2\3/g
    s/\b\([Ee]\)scondeixi\([^[:alnum:]]\)/\1scondisca\2/g
    s/\b\([Ee]\)scondeixi\([ns]\)\([^[:alnum:]]\)/\1scondisque\2\3/g
    s/\b\([Ee]\)scondeixo\([^[:alnum:]]\)/\1scondisc\2/g
    s/\b\([Ee]\)scondís\([^[:alnum:]]\)/\1scondira\2/g
    s/\b\([Ee]\)scondíssi\([mu]\|\)\([^[:alnum:]]\)/\1scondíre\2\3/g
    s/\b\([Ee]\)scondissi\([ns]\|\)\([^[:alnum:]]\)/\1scondire\2\3/g
    # recondir
    s/\b\([Rr]\)econdeix\(e[ns]\|\)\([^[:alnum:]]\)/\1econdix\2\3/g
    s/\b\([Rr]\)econdeixi\([^[:alnum:]]\)/\1econdisca\2/g
    s/\b\([Rr]\)econdeixi\([ns]\)\([^[:alnum:]]\)/\1econdisque\2\3/g
    s/\b\([Rr]\)econdeixo\([^[:alnum:]]\)/\1econdisc\2/g
    s/\b\([Rr]\)econdís\([^[:alnum:]]\)/\1econdira\2/g
    s/\b\([Rr]\)econdíssi\([mu]\|\)\([^[:alnum:]]\)/\1econdíre\2\3/g
    s/\b\([Rr]\)econdissi\([ns]\|\)\([^[:alnum:]]\)/\1econdire\2\3/g
# conduir
s/\b\([Cc]\)ondueix\(e[ns]\|\)\([^[:alnum:]]\)/\1onduïx\2\3/g
s/\b\([Cc]\)ondueixi\([^[:alnum:]]\)/\1onduïsca\2/g
s/\b\([Cc]\)ondueixi\([ns]\)\([^[:alnum:]]\)/\1onduïsque\2\3/g
s/\b\([Cc]\)ondueixo\([^[:alnum:]]\)/\1onduïsc\2/g
s/\b\([Cc]\)onduís\([^[:alnum:]]\)/\1onduïra\2/g
s/\b\([Cc]\)onduíssi\([mu]\)\([^[:alnum:]]\)/\1onduíre\2\3/g
s/\b\([Cc]\)onduïssi\([ns]\)\([^[:alnum:]]\)/\1onduïre\2\3/g
# conèixer -> conéixer
s/\b\([Cc]\)onegués\([^[:alnum:]]\)/\1oneguera\2/g
s/\b\([Cc]\)oneguéssi\([mu]\)\([^[:alnum:]]\)/\1oneguére\2\3/g
s/\b\([Cc]\)oneguessi\([ns]\)\([^[:alnum:]]\)/\1oneguere\2\3/g
s/\b\([Cc]\)onegui\([^[:alnum:]]\)/\1onega\2/g
s/\b\([Cc]\)onegui\([ns]\)\([^[:alnum:]]\)/\1onegue\2\3/g
s/\b\([Cc]\)onèixer\([^[:alnum:]]\)/\1onéixer\2/g
    # desconèixer -> desconéixer
    s/\b\([Dd]\)esconegués\([^[:alnum:]]\)/\1esconeguera\2/g
    s/\b\([Dd]\)esconeguéssi\([mu]\)\([^[:alnum:]]\)/\1esconeguére\2\3/g
    s/\b\([Dd]\)esconeguessi\([ns]\)\([^[:alnum:]]\)/\1esconeguere\2\3/g
    s/\b\([Dd]\)esconegui\([^[:alnum:]]\)/\1esconega\2/g
    s/\b\([Dd]\)esconegui\([ns]\)\([^[:alnum:]]\)/\1esconegue\2\3/g
    s/\b\([Dd]\)esconèixer\([^[:alnum:]]\)/\1esconéixer\2/g
    # reconèixer -> reconéixer
    s/\b\([Rr]\)econegués\([^[:alnum:]]\)/\1econeguera\2/g
    s/\b\([Rr]\)econeguéssi\([mu]\)\([^[:alnum:]]\)/\1econeguére\2\3/g
    s/\b\([Rr]\)econeguessi\([ns]\)\([^[:alnum:]]\)/\1econeguere\2\3/g
    s/\b\([Rr]\)econegui\([^[:alnum:]]\)/\1econega\2/g
    s/\b\([Rr]\)econegui\([ns]\)\([^[:alnum:]]\)/\1econegue\2\3/g
    s/\b\([Rr]\)econèixer\([^[:alnum:]]\)/\1econéixer\2/g
# confiar
s/\b\([Cc]\)onfiés\([^[:alnum:]]\)/\1onfiara\2/g
s/\b\([Cc]\)onfiéssi\([mu]\)\([^[:alnum:]]\)/\1onfiàre\2\3/g
s/\b\([Cc]\)onfiessi\([ns]\)\([^[:alnum:]]\)/\1onfiare\2\3/g
s/\b\([Cc]\)onfi\([ïo]\)\([^[:alnum:]]\)/\1onfie\3/g
s/\b\([Cc]\)onfiï\([ns]\)\([^[:alnum:]]\)/\1onfie\2\3/g
    # desconfiar
    s/\b\([Dd]\)esconfiés\([^[:alnum:]]\)/\1esconfiara\2/g
    s/\b\([Dd]\)esconfiéssi\([mu]\)\([^[:alnum:]]\)/\1esconfiàre\2\3/g
    s/\b\([Dd]\)esconfiessi\([ns]\)\([^[:alnum:]]\)/\1esconfiare\2\3/g
    s/\b\([Dd]\)esconfi\([ïo]\)\([^[:alnum:]]\)/\1esconfie\3/g
    s/\b\([Dd]\)esconfiï\([ns]\)\([^[:alnum:]]\)/\1esconfie\2\3/g
# configurar
s/\b\([Cc]\)onfigurés\([^[:alnum:]]\)/\1onfigurara\2/g
s/\b\([Cc]\)onfiguréssi\([mu]\)\([^[:alnum:]]\)/\1onfiguràre\2\3/g
s/\b\([Cc]\)onfiguressi\([ns]\)\([^[:alnum:]]\)/\1onfigurare\2\3/g
s/\b\([Cc]\)onfigur\([io]\)\([^[:alnum:]]\)/\1onfigure\3/g
s/\b\([Cc]\)onfiguri\([ns]\)\([^[:alnum:]]\)/\1onfigure\2\3/g
    # TODO: no
    # desconfigurar
    s/\b\([Dd]\)esconfigurés\([^[:alnum:]]\)/\1esconfigurara\2/g
    s/\b\([Dd]\)esconfiguréssi\([mu]\)\([^[:alnum:]]\)/\1esconfiguràre\2\3/g
    s/\b\([Dd]\)esconfiguressi\([ns]\)\([^[:alnum:]]\)/\1esconfigurare\2\3/g
    s/\b\([Dd]\)esconfigur\([io]\)\([^[:alnum:]]\)/\1esconfigure\3/g
    s/\b\([Dd]\)esconfiguri\([ns]\)\([^[:alnum:]]\)/\1esconfigure\2\3/g
# connectar
s/\b\([Cc]\)onnectés\([^[:alnum:]]\)/\1onnectara\2/g
s/\b\([Cc]\)onnectéssi\([mu]\)\([^[:alnum:]]\)/\1onnectàre\2\3/g
s/\b\([Cc]\)onnectessi\([ns]\)\([^[:alnum:]]\)/\1onnectare\2\3/g
s/\b\([Cc]\)onnect\([io]\)\([^[:alnum:]]\)/\1onnecte\3/g
s/\b\([Cc]\)onnecti\([ns]\)\([^[:alnum:]]\)/\1onnecte\2\3/g
    # desconnectar
    s/\b\([Dd]\)esconnectés\([^[:alnum:]]\)/\1esconnectara\2/g
    s/\b\([Dd]\)esconnectéssi\([mu]\)\([^[:alnum:]]\)/\1esconnectàre\2\3/g
    s/\b\([Dd]\)esconnectessi\([ns]\)\([^[:alnum:]]\)/\1esconnectare\2\3/g
    s/\b\([Dd]\)esconnect\([io]\)\([^[:alnum:]]\)/\1esconnecte\3/g
    s/\b\([Dd]\)esconnecti\([ns]\)\([^[:alnum:]]\)/\1esconnecte\2\3/g
    # reconnectar -> tornar a connectar (esmenes)
    # TODO: no
# confeccionar
s/\b\([Cc]\)onfeccionés\([^[:alnum:]]\)/\1onfeccionara\2/g
s/\b\([Cc]\)onfeccionéssi\([mu]\)\([^[:alnum:]]\)/\1onfeccionàre\2\3/g
s/\b\([Cc]\)onfeccionessi\([ns]\)\([^[:alnum:]]\)/\1onfeccionare\2\3/g
s/\b\([Cc]\)onfeccion\([io]\)\([^[:alnum:]]\)/\1onfeccione\3/g
s/\b\([Cc]\)onfeccioni\([ns]\)\([^[:alnum:]]\)/\1onfeccione\2\3/g
# conquerir
s/\b\([Cc]\)onquereix\(e[ns]\|\)\([^[:alnum:]]\)/\1onquerix\2\3/g
s/\b\([Cc]\)onquereixi\([^[:alnum:]]\)/\1onquerisca\2/g
s/\b\([Cc]\)onquereixi\([ns]\)\([^[:alnum:]]\)/\1onquerisque\2\3/g
s/\b\([Cc]\)onquereixo\([^[:alnum:]]\)/\1onquerisc\2/g
s/\b\([Cc]\)onquerís\([^[:alnum:]]\)/\1onquerira\2/g
s/\b\([Cc]\)onqueríssi\([mu]\)\([^[:alnum:]]\)/\1onqueríre\2\3/g
s/\b\([Cc]\)onquerissi\([ns]\)\([^[:alnum:]]\)/\1onquerire\2\3/g
    # reconquerir
    s/\b\([Rr]\)econquereix\(e[ns]\|\)\([^[:alnum:]]\)/\1econquerix\2\3/g
    s/\b\([Rr]\)econquereixi\([^[:alnum:]]\)/\1econquerisca\2/g
    s/\b\([Rr]\)econquereixi\([ns]\)\([^[:alnum:]]\)/\1econquerisque\2\3/g
    s/\b\([Rr]\)econquereixo\([^[:alnum:]]\)/\1econquerisc\2/g
    s/\b\([Rr]\)econquerís\([^[:alnum:]]\)/\1econquerira\2/g
    s/\b\([Rr]\)econqueríssi\([mu]\)\([^[:alnum:]]\)/\1econqueríre\2\3/g
    s/\b\([Rr]\)econquerissi\([ns]\)\([^[:alnum:]]\)/\1econquerire\2\3/g
# conservar
s/\b\([Cc]\)onservés\([^[:alnum:]]\)/\1onservara\2/g
s/\b\([Cc]\)onservéssi\([mu]\)\([^[:alnum:]]\)/\1onservàre\2\3/g
s/\b\([Cc]\)onservessi\([ns]\)\([^[:alnum:]]\)/\1onservare\2\3/g
s/\b\([Cc]\)onserv\([io]\)\([^[:alnum:]]\)/\1onserve\3/g
s/\b\([Cc]\)onservi\([ns]\)\([^[:alnum:]]\)/\1onserve\2\3/g
# considerar
s/\b\([Cc]\)onsiderés\([^[:alnum:]]\)/\1onsiderara\2/g
s/\b\([Cc]\)onsideréssi\([mu]\)\([^[:alnum:]]\)/\1onsideràre\2\3/g
s/\b\([Cc]\)onsideressi\([ns]\)\([^[:alnum:]]\)/\1onsiderare\2\3/g
s/\b\([Cc]\)onsider\([io]\)\([^[:alnum:]]\)/\1onsidere\3/g
s/\b\([Cc]\)onsideri\([ns]\)\([^[:alnum:]]\)/\1onsidere\2\3/g
    # desconsiderar
    s/\b\([Dd]\)esconsiderés\([^[:alnum:]]\)/\1esconsiderara\2/g
    s/\b\([Dd]\)esconsideréssi\([mu]\)\([^[:alnum:]]\)/\1esconsideràre\2\3/g
    s/\b\([Dd]\)esconsideressi\([ns]\)\([^[:alnum:]]\)/\1esconsiderare\2\3/g
    s/\b\([Dd]\)esconsider\([io]\)\([^[:alnum:]]\)/\1esconsidere\3/g
    s/\b\([Dd]\)esconsideri\([ns]\)\([^[:alnum:]]\)/\1esconsidere\2\3/g
    # reconsiderar
    s/\b\([Rr]\)econsiderés\([^[:alnum:]]\)/\1econsiderara\2/g
    s/\b\([Rr]\)econsideréssi\([mu]\)\([^[:alnum:]]\)/\1econsideràre\2\3/g
    s/\b\([Rr]\)econsideressi\([ns]\)\([^[:alnum:]]\)/\1econsiderare\2\3/g
    s/\b\([Rr]\)econsider\([io]\)\([^[:alnum:]]\)/\1econsidere\3/g
    s/\b\([Rr]\)econsideri\([ns]\)\([^[:alnum:]]\)/\1econsidere\2\3/g
# consistir
s/\b\([Cc]\)onsisteix\(e[ns]\|\)\([^[:alnum:]]\)/\1onsistix\2\3/g
s/\b\([Cc]\)onsisteixi\([^[:alnum:]]\)/\1onsistisca\2/g
s/\b\([Cc]\)onsisteixi\([ns]\)\([^[:alnum:]]\)/\1onsistisque\2\3/g
s/\b\([Cc]\)onsisteixo\([^[:alnum:]]\)/\1onsistisc\2/g
s/\b\([Cc]\)onsistís\([^[:alnum:]]\)/\1onsistira\2/g
s/\b\([Cc]\)onsistíssi\([mu]\)\([^[:alnum:]]\)/\1onsistíre\2\3/g
s/\b\([Cc]\)onsistissi\([ns]\)\([^[:alnum:]]\)/\1onsistire\2\3/g
# consolidar
s/\b\([Cc]\)onsolidés\([^[:alnum:]]\)/\1onsolidara\2/g
s/\b\([Cc]\)onsolidéssi\([mu]\)\([^[:alnum:]]\)/\1onsolidàre\2\3/g
s/\b\([Cc]\)onsolidessi\([ns]\)\([^[:alnum:]]\)/\1onsolidare\2\3/g
s/\b\([Cc]\)onsolid\([io]\)\([^[:alnum:]]\)/\1onsolide\3/g
s/\b\([Cc]\)onsolidi\([ns]\)\([^[:alnum:]]\)/\1onsolide\2\3/g
# constituir
s/\b\([Cc]\)onstitueix\(e[ns]\|\)\([^[:alnum:]]\)/\1onstituïx\2\3/g
s/\b\([Cc]\)onstitueixi\([^[:alnum:]]\)/\1onstituïsca\2/g
s/\b\([Cc]\)onstitueixi\([ns]\)\([^[:alnum:]]\)/\1onstituïsque\2\3/g
s/\b\([Cc]\)onstitueixo\([^[:alnum:]]\)/\1onstituïsc\2/g
s/\b\([Cc]\)onstituís\([^[:alnum:]]\)/\1onstituïra\2/g
s/\b\([Cc]\)onstituíssi\([mu]\)\([^[:alnum:]]\)/\1onstituíre\2\3/g
s/\b\([Cc]\)onstituïssi\([ns]\)\([^[:alnum:]]\)/\1onstituïre\2\3/g
    # reconstituir
    s/\b\([Rr]\)econstitueix\(e[ns]\|\)\([^[:alnum:]]\)/\1econstituïx\2\3/g
    s/\b\([Rr]\)econstitueixi\([^[:alnum:]]\)/\1econstituïsca\2/g
    s/\b\([Rr]\)econstitueixi\([ns]\)\([^[:alnum:]]\)/\1econstituïsque\2\3/g
    s/\b\([Rr]\)econstitueixo\([^[:alnum:]]\)/\1econstituïsc\2/g
    s/\b\([Rr]\)econstituís\([^[:alnum:]]\)/\1econstituïra\2/g
    s/\b\([Rr]\)econstituíssi\([mu]\)\([^[:alnum:]]\)/\1econstituíre\2\3/g
    s/\b\([Rr]\)econstituïssi\([ns]\)\([^[:alnum:]]\)/\1econstituïre\2\3/g
# construir
s/\b\([Cc]\)onstrueix\(e[ns]\|\)\([^[:alnum:]]\)/\1onstruïx\2\3/g
s/\b\([Cc]\)onstrueixi\([^[:alnum:]]\)/\1onstruïsca\2/g
s/\b\([Cc]\)onstrueixi\([ns]\)\([^[:alnum:]]\)/\1onstruïsque\2\3/g
s/\b\([Cc]\)onstrueixo\([^[:alnum:]]\)/\1onstruïsc\2/g
s/\b\([Cc]\)onstruís\([^[:alnum:]]\)/\1onstruïra\2/g
s/\b\([Cc]\)onstruíssi\([mu]\)\([^[:alnum:]]\)/\1onstruíre\2\3/g
s/\b\([Cc]\)onstruïssi\([ns]\)\([^[:alnum:]]\)/\1onstruïre\2\3/g
    s/\bconstrueix\([^[:alnum:]]\)/construïx\1/g
    # deconstruir / reconstruir
    s/\b\([DdRr]\)econstrueix\(e[ns]\|\)\([^[:alnum:]]\)/\1econstruïx\2\3/g
    s/\b\([DdRr]\)econstrueixi\([^[:alnum:]]\)/\1econstruïsca\2/g
    s/\b\([DdRr]\)econstrueixi\([ns]\)\([^[:alnum:]]\)/\1econstruïsque\2\3/g
    s/\b\([DdRr]\)econstrueixo\([^[:alnum:]]\)/\1econstruïsc\2/g
    s/\b\([DdRr]\)econstruís\([^[:alnum:]]\)/\1econstruïra\2/g
    s/\b\([DdRr]\)econstruíssi\([mu]\)\([^[:alnum:]]\)/\1econstruíre\2\3/g
    s/\b\([DdRr]\)econstruïssi\([ns]\)\([^[:alnum:]]\)/\1econstruïre\2\3/g
# consumir
s/\b\([Cc]\)onsumeix\(e[ns]\|\)\([^[:alnum:]]\)/\1onsumix\2\3/g
s/\b\([Cc]\)onsumeixi\([^[:alnum:]]\)/\1onsumisca\2/g
s/\b\([Cc]\)onsumeixi\([ns]\)\([^[:alnum:]]\)/\1onsumisque\2\3/g
s/\b\([Cc]\)onsumeixo\([^[:alnum:]]\)/\1onsumisc\2/g
s/\b\([Cc]\)onsumís\([^[:alnum:]]\)/\1onsumira\2/g
s/\b\([Cc]\)onsumíssi\([mu]\)\([^[:alnum:]]\)/\1onsumíre\2\3/g
s/\b\([Cc]\)onsumissi\([ns]\)\([^[:alnum:]]\)/\1onsumire\2\3/g
# contabilitzar -> comptabilitzar (esmenes # TODO: no)
# contactar
s/\b\([Cc]\)ontactés\([^[:alnum:]]\)/\1ontactara\2/g
s/\b\([Cc]\)ontactéssi\([mu]\)\([^[:alnum:]]\)/\1ontactàre\2\3/g
s/\b\([Cc]\)ontactessi\([ns]\)\([^[:alnum:]]\)/\1ontactare\2\3/g
s/\b\([Cc]\)ontact\([io]\)\([^[:alnum:]]\)/\1ontacte\3/g
s/\b\([Cc]\)ontacti\([ns]\)\([^[:alnum:]]\)/\1ontacte\2\3/g
# continuar
s/\b\([Cc]\)ontinués\([^[:alnum:]]\)/\1ontinuara\2/g
s/\b\([Cc]\)ontinuéssi\([mu]\)\([^[:alnum:]]\)/\1ontinuàre\2\3/g
s/\b\([Cc]\)ontinuessi\([ns]\)\([^[:alnum:]]\)/\1ontinuare\2\3/g
s/\b\([Cc]\)ontinu\([ïo]\)\([^[:alnum:]]\)/\1ontinue\3/g
s/\b\([Cc]\)ontinuï\([ns]\)\([^[:alnum:]]\)/\1ontinue\2\3/g
    # discontinuar
    s/\b\([Dd]\)iscontinués\([^[:alnum:]]\)/\1iscontinuara\2/g
    s/\b\([Dd]\)iscontinuéssi\([mu]\)\([^[:alnum:]]\)/\1iscontinuàre\2\3/g
    s/\b\([Dd]\)iscontinuessi\([ns]\)\([^[:alnum:]]\)/\1iscontinuare\2\3/g
    s/\b\([Dd]\)iscontinu\([ïo]\)\([^[:alnum:]]\)/\1iscontinue\3/g
    s/\b\([Dd]\)iscontinuï\([ns]\)\([^[:alnum:]]\)/\1iscontinue\2\3/g
# contrastar
s/\b\([Cc]\)ontrastés\([^[:alnum:]]\)/\1ontrastara\2/g
s/\b\([Cc]\)ontrastéssi\([mu]\)\([^[:alnum:]]\)/\1ontrastàre\2\3/g
s/\b\([Cc]\)ontrastessi\([ns]\)\([^[:alnum:]]\)/\1ontrastare\2\3/g
s/\b\([Cc]\)ontrast\([io]\)\([^[:alnum:]]\)/\1ontraste\3/g
s/\b\([Cc]\)ontrasti\([ns]\)\([^[:alnum:]]\)/\1ontraste\2\3/g
# controlar
s/\b\([Cc]\)ontrolés\([^[:alnum:]]\)/\1ontrolara\2/g
s/\b\([Cc]\)ontroléssi\([mu]\)\([^[:alnum:]]\)/\1ontrolàre\2\3/g
s/\b\([Cc]\)ontrolessi\([ns]\)\([^[:alnum:]]\)/\1ontrolare\2\3/g
s/\b\([Cc]\)ontrol\([io]\)\([^[:alnum:]]\)/\1ontrole\3/g
s/\b\([Cc]\)ontroli\([ns]\)\([^[:alnum:]]\)/\1ontrole\2\3/g
# convergir
s/\b\([Cc]\)onvergeix\(e[ns]\|\)\([^[:alnum:]]\)/\1onvergix\2\3/g
s/\b\([Cc]\)onvergeixi\([^[:alnum:]]\)/\1onvergisca\2/g
s/\b\([Cc]\)onvergeixi\([ns]\)\([^[:alnum:]]\)/\1onvergisque\2\3/g
s/\b\([Cc]\)onvergeixo\([^[:alnum:]]\)/\1onvergisc\2/g
s/\b\([Cc]\)onvergís\([^[:alnum:]]\)/\1onvergira\2/g
s/\b\([Cc]\)onvergíssi\([mu]\)\([^[:alnum:]]\)/\1onvergíre\2\3/g
s/\b\([Cc]\)onvergissi\([ns]\)\([^[:alnum:]]\)/\1onvergire\2\3/g
# convertir
s/\b\([Cc]\)onverteix\(e[ns]\|\)\([^[:alnum:]]\)/\1onvertix\2\3/g
s/\b\([Cc]\)onverteixi\([^[:alnum:]]\)/\1onvertisca\2/g
s/\b\([Cc]\)onverteixi\([ns]\)\([^[:alnum:]]\)/\1onvertisque\2\3/g
s/\b\([Cc]\)onverteixo\([^[:alnum:]]\)/\1onvertisc\2/g
s/\b\([Cc]\)onvertís\([^[:alnum:]]\)/\1onvertira\2/g
s/\b\([Cc]\)onvertíssi\([mu]\)\([^[:alnum:]]\)/\1onvertíre\2\3/g
s/\b\([Cc]\)onvertissi\([ns]\)\([^[:alnum:]]\)/\1onvertire\2\3/g
    # reconvertir
    s/\b\([Rr]\)econverteix\(e[ns]\|\)\([^[:alnum:]]\)/\1econvertix\2\3/g
    s/\b\([Rr]\)econverteixi\([^[:alnum:]]\)/\1econvertisca\2/g
    s/\b\([Rr]\)econverteixi\([ns]\)\([^[:alnum:]]\)/\1econvertisque\2\3/g
    s/\b\([Rr]\)econverteixo\([^[:alnum:]]\)/\1econvertisc\2/g
    s/\b\([Rr]\)econvertís\([^[:alnum:]]\)/\1econvertira\2/g
    s/\b\([Rr]\)econvertíssi\([mu]\)\([^[:alnum:]]\)/\1econvertíre\2\3/g
    s/\b\([Rr]\)econvertissi\([ns]\)\([^[:alnum:]]\)/\1econvertire\2\3/g
# convidar
s/\b\([Cc]\)onvidés\([^[:alnum:]]\)/\1onvidara\2/g
s/\b\([Cc]\)onvidéssi\([mu]\)\([^[:alnum:]]\)/\1onvidàre\2\3/g
s/\b\([Cc]\)onvidessi\([ns]\)\([^[:alnum:]]\)/\1onvidare\2\3/g
s/\b\([Cc]\)onvid\([io]\)\([^[:alnum:]]\)/\1onvide\3/g
s/\b\([Cc]\)onvidi\([ns]\)\([^[:alnum:]]\)/\1onvide\2\3/g
    # desconvidar
    s/\b\([Dd]\)esconvidés\([^[:alnum:]]\)/\1esconvidara\2/g
    s/\b\([Dd]\)esconvidéssi\([mu]\)\([^[:alnum:]]\)/\1esconvidàre\2\3/g
    s/\b\([Dd]\)esconvidessi\([ns]\)\([^[:alnum:]]\)/\1esconvidare\2\3/g
    s/\b\([Dd]\)esconvid\([io]\)\([^[:alnum:]]\)/\1esconvide\3/g
    s/\b\([Dd]\)esconvidi\([ns]\)\([^[:alnum:]]\)/\1esconvide\2\3/g
# coordinar
s/\b\([Cc]\)oordinés\([^[:alnum:]]\)/\1oordinara\2/g
s/\b\([Cc]\)oordinéssi\([mu]\)\([^[:alnum:]]\)/\1oordinàre\2\3/g
s/\b\([Cc]\)oordinessi\([ns]\)\([^[:alnum:]]\)/\1oordinare\2\3/g
s/\b\([Cc]\)oordin\([io]\)\([^[:alnum:]]\)/\1oordine\3/g
s/\b\([Cc]\)oordini\([ns]\)\([^[:alnum:]]\)/\1oordine\2\3/g
# cop -> colp / vegada (esmenes)
# copiar
s/\b\([Cc]\)opiés\([^[:alnum:]]\)/\1opiara\2/g
s/\b\([Cc]\)opiéssi\([mu]\)\([^[:alnum:]]\)/\1opiàre\2\3/g
s/\b\([Cc]\)opiessi\([ns]\)\([^[:alnum:]]\)/\1opiare\2\3/g
s/\b\([Cc]\)opi\([ïo]\)\([^[:alnum:]]\)/\1opie\3/g
s/\b\([Cc]\)opiï\([ns]\)\([^[:alnum:]]\)/\1opie\2\3/g
    # fotocopiar
    s/\b\([Ff]\)otocopiés\([^[:alnum:]]\)/\1otocopiara\2/g
    s/\b\([Ff]\)otocopiéssi\([mu]\)\([^[:alnum:]]\)/\1otocopiàre\2\3/g
    s/\b\([Ff]\)otocopiessi\([ns]\)\([^[:alnum:]]\)/\1otocopiare\2\3/g
    s/\b\([Ff]\)otocopi\([ïo]\)\([^[:alnum:]]\)/\1otocopie\3/g
    s/\b\([Ff]\)otocopiï\([ns]\)\([^[:alnum:]]\)/\1otocopie\2\3/g
    # multicopiar
    s/\b\([Mm]\)ulticopiés\([^[:alnum:]]\)/\1ulticopiara\2/g
    s/\b\([Mm]\)ulticopiéssi\([mu]\)\([^[:alnum:]]\)/\1ulticopiàre\2\3/g
    s/\b\([Mm]\)ulticopiessi\([ns]\)\([^[:alnum:]]\)/\1ulticopiare\2\3/g
    s/\b\([Mm]\)ulticopi\([ïo]\)\([^[:alnum:]]\)/\1ulticopie\3/g
    s/\b\([Mm]\)ulticopiï\([ns]\)\([^[:alnum:]]\)/\1ulticopie\2\3/g
s/\b\([Cc]\)ordill\(s\|\)\([^[:alnum:]]\)/\1ordell\2\3/g
# corejar
s/\b\([Cc]\)oregés\([^[:alnum:]]\)/\1orejara\2/g
s/\b\([Cc]\)oregéssi\([mu]\)\([^[:alnum:]]\)/\1orejàre\2\3/g
s/\b\([Cc]\)oregessi\([ns]\)\([^[:alnum:]]\)/\1orejare\2\3/g
s/\b\([Cc]\)oregi\([ns]\|\)\([^[:alnum:]]\)/\1orege\2\3/g
s/\b\([Cc]\)orejo\([^[:alnum:]]\)/\1orege\2/g
# corregir
s/\b\([Cc]\)orregeix\(e[ns]\|\)\([^[:alnum:]]\)/\1orregix\2\3/g
s/\b\([Cc]\)orregeixi\([^[:alnum:]]\)/\1orregisca\2/g
s/\b\([Cc]\)orregeixi\([ns]\)\([^[:alnum:]]\)/\1orregisque\2\3/g
s/\b\([Cc]\)orregeixo\([^[:alnum:]]\)/\1orregisc\2/g
s/\b\([Cc]\)orregís\([^[:alnum:]]\)/\1orregira\2/g
s/\b\([Cc]\)orregíssi\([mu]\)\([^[:alnum:]]\)/\1orregíre\2\3/g
s/\b\([Cc]\)orregissi\([ns]\)\([^[:alnum:]]\)/\1orregire\2\3/g
    # recorregir
    s/\b\([Rr]\)ecorregeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ecorregix\2\3/g
    s/\b\([Rr]\)ecorregeixi\([^[:alnum:]]\)/\1ecorregisca\2/g
    s/\b\([Rr]\)ecorregeixi\([ns]\)\([^[:alnum:]]\)/\1ecorregisque\2\3/g
    s/\b\([Rr]\)ecorregeixo\([^[:alnum:]]\)/\1ecorregisc\2/g
    s/\b\([Rr]\)ecorregís\([^[:alnum:]]\)/\1ecorregira\2/g
    s/\b\([Rr]\)ecorregíssi\([mu]\)\([^[:alnum:]]\)/\1ecorregíre\2\3/g
    s/\b\([Rr]\)ecorregissi\([ns]\)\([^[:alnum:]]\)/\1ecorregire\2\3/g
# córrer
s/\b\([Cc]\)orregués\([^[:alnum:]]\)/\1orreguera\2/g
s/\b\([Cc]\)orreguéssi\([mu]\)\([^[:alnum:]]\)/\1orreguére\2\3/g
s/\b\([Cc]\)orreguessi\([ns]\)\([^[:alnum:]]\)/\1orreguere\2\3/g
s/\b\([Cc]\)orri\([^[:alnum:]]\)/\1órrega\2/g
s/\b\([Cc]\)orri\([ns]\)\([^[:alnum:]]\)/\1órregue\2\3/g
s/\b\([Cc]\)orro\([^[:alnum:]]\)/\1órrec\2/g
    # concórrer
    s/\b\([Cc]\)oncorregués\([^[:alnum:]]\)/\1oncorreguera\2/g
    s/\b\([Cc]\)oncorreguéssi\([mu]\)\([^[:alnum:]]\)/\1oncorreguére\2\3/g
    s/\b\([Cc]\)oncorreguessi\([ns]\)\([^[:alnum:]]\)/\1oncorreguere\2\3/g
    s/\b\([Cc]\)oncorri\([^[:alnum:]]\)/\1oncórrega\2/g
    s/\b\([Cc]\)oncorri\([ns]\)\([^[:alnum:]]\)/\1oncórregue\2\3/g
    s/\b\([Cc]\)oncorro\([^[:alnum:]]\)/\1oncórrec\2/g
    # discórrer
    s/\b\([Dd]\)iscorregués\([^[:alnum:]]\)/\1iscorreguera\2/g
    s/\b\([Dd]\)iscorreguéssi\([mu]\)\([^[:alnum:]]\)/\1iscorreguére\2\3/g
    s/\b\([Dd]\)iscorreguessi\([ns]\)\([^[:alnum:]]\)/\1iscorreguere\2\3/g
    s/\b\([Dd]\)iscorri\([^[:alnum:]]\)/\1iscórrega\2/g
    s/\b\([Dd]\)iscorri\([ns]\)\([^[:alnum:]]\)/\1iscórregue\2\3/g
    s/\b\([Dd]\)iscorro\([^[:alnum:]]\)/\1iscórrec\2/g
    # encórrer
    s/\b\([Ee]\)ncorregués\([^[:alnum:]]\)/\1ncorreguera\2/g
    s/\b\([Ee]\)ncorreguéssi\([mu]\)\([^[:alnum:]]\)/\1ncorreguére\2\3/g
    s/\b\([Ee]\)ncorreguessi\([ns]\)\([^[:alnum:]]\)/\1ncorreguere\2\3/g
    s/\b\([Ee]\)ncorre\([mu]\)\([^[:alnum:]]\)/\1ncorregue\2\3/g
    s/\b\([Ee]\)ncorri\([^[:alnum:]]\)/\1ncórrega\2/g
    s/\b\([Ee]\)ncorri\([ns]\)\([^[:alnum:]]\)/\1ncórregue\2\3/g
    s/\b\([Ee]\)ncorro\([^[:alnum:]]\)/\1ncórrec\2/g
    # incórrer
    s/\bIncorregud\(a\|es\)\([^[:alnum:]]\)/Causad\1\2/g
    s/\bincorregud\(a\|es\)\([^[:alnum:]]\)/causad\1\2/g
    s/\b\([Ii]\)ncorregués\([^[:alnum:]]\)/\1ncorreguera\2/g
    s/\b\([Ii]\)ncorreguéssi\([mu]\)\([^[:alnum:]]\)/\1ncorreguére\2\3/g
    s/\b\([Ii]\)ncorreguessi\([ns]\)\([^[:alnum:]]\)/\1ncorreguere\2\3/g
    s/\b\([Ii]\)ncorre\([mu]\)\([^[:alnum:]]\)/\1ncorregue\2\3/g
    s/\b\([Ii]\)ncorri\([^[:alnum:]]\)/\1ncórrega\2/g
    s/\b\([Ii]\)ncorri\([ns]\)\([^[:alnum:]]\)/\1ncórregue\2\3/g
    s/\b\([Ii]\)ncorro\([^[:alnum:]]\)/\1ncórrec\2/g
    # ocórrer
    s/\b\([Oo]\)corregués\([^[:alnum:]]\)/\1correguera\2/g
    s/\b\([Oo]\)correguéssi\([mu]\)\([^[:alnum:]]\)/\1correguére\2\3/g
    s/\b\([Oo]\)correguessi\([ns]\)\([^[:alnum:]]\)/\1correguere\2\3/g
    s/\b\([Oo]\)corre\([mu]\)\([^[:alnum:]]\)/\1corregue\2\3/g
    s/\b\([Oo]\)corri\([^[:alnum:]]\)/\1córrega\2/g
    s/\b\([Oo]\)corri\([ns]\)\([^[:alnum:]]\)/\1córregue\2\3/g
    s/\b\([Oo]\)corro\([^[:alnum:]]\)/\1córrec\2/g
    # recórrer
    s/\b\([Rr]\)ecorregués\([^[:alnum:]]\)/\1ecorreguera\2/g
    s/\b\([Rr]\)ecorreguéssi\([mu]\)\([^[:alnum:]]\)/\1ecorreguére\2\3/g
    s/\b\([Rr]\)ecorreguessi\([ns]\)\([^[:alnum:]]\)/\1ecorreguere\2\3/g
    s/\b\([Rr]\)ecorri\([^[:alnum:]]\)/\1ecórrega\2/g
    s/\b\([Rr]\)ecorri\([ns]\)\([^[:alnum:]]\)/\1ecórregue\2\3/g
    s/\b\([Rr]\)ecorro\([^[:alnum:]]\)/\1ecórrec\2/g
    # socórrer
    s/\b\([Ss]\)ocorregués\([^[:alnum:]]\)/\1ocorreguera\2/g
    s/\b\([Ss]\)ocorreguéssi\([mu]\)\([^[:alnum:]]\)/\1ocorreguére\2\3/g
    s/\b\([Ss]\)ocorreguessi\([ns]\)\([^[:alnum:]]\)/\1ocorreguere\2\3/g
    s/\b\([Ss]\)ocorri\([^[:alnum:]]\)/\1ocórrega\2/g
    s/\b\([Ss]\)ocorri\([ns]\)\([^[:alnum:]]\)/\1ocórregue\2\3/g
    s/\b\([Ss]\)ocorro\([^[:alnum:]]\)/\1ocórrec\2/g
    # transcórrer
    s/\b\([Tt]\)ranscorregués\([^[:alnum:]]\)/\1ranscorreguera\2/g
    s/\b\([Tt]\)ranscorreguéssi\([mu]\)\([^[:alnum:]]\)/\1ranscorreguére\2\3/g
    s/\b\([Tt]\)ranscorreguessi\([ns]\)\([^[:alnum:]]\)/\1ranscorreguere\2\3/g
    s/\b\([Tt]\)ranscorre\([mu]\)\([^[:alnum:]]\)/\1ranscorregue\2\3/g
    s/\b\([Tt]\)ranscorri\([^[:alnum:]]\)/\1ranscórrega\2/g
    s/\b\([Tt]\)ranscorri\([ns]\)\([^[:alnum:]]\)/\1ranscórregue\2\3/g
    s/\b\([Tt]\)ranscorro\([^[:alnum:]]\)/\1ranscórrec\2/g
# cosir
s/\b\([Cc]\)osís\([^[:alnum:]]\)/\1osira\2/g
s/\b\([Cc]\)osíssi\([mu]\)\([^[:alnum:]]\)/\1osíre\2\3/g
s/\b\([Cc]\)osissi\([ns]\)\([^[:alnum:]]\)/\1osire\2\3/g
s/\b\([Cc]\)usi\([^[:alnum:]]\)/\1usa\2/g
s/\b\([Cc]\)usi\([ns]\)\([^[:alnum:]]\)/\1use\2\3/g
s/\b\([Cc]\)uso\([^[:alnum:]]\)/\1us\2/g
# costar (esmenes)
s/\b\([Cc]\)ostés\([^[:alnum:]]\)/\1ostara\2/g
s/\b\([Cc]\)ostéssi\([mu]\)\([^[:alnum:]]\)/\1ostàre\2\3/g
s/\b\([Cc]\)ostessi\([ns]\)\([^[:alnum:]]\)/\1ostare\2\3/g
s/\b\([Cc]\)ost\([io]\)\([^[:alnum:]]\)/\1oste\3/g
s/\b\([Cc]\)osti\([ns]\)\([^[:alnum:]]\)/\1oste\2\3/g
    # acostar
    s/\b\([Aa]\)costés\([^[:alnum:]]\)/\1costara\2/g
    s/\b\([Aa]\)costéssi\([mu]\)\([^[:alnum:]]\)/\1costàre\2\3/g
    s/\b\([Aa]\)costessi\([ns]\)\([^[:alnum:]]\)/\1costare\2\3/g
    s/\b\([Aa]\)cost\([io]\)\([^[:alnum:]]\)/\1coste\3/g
    s/\b\([Aa]\)costi\([ns]\)\([^[:alnum:]]\)/\1coste\2\3/g
    # desacostar
    s/\b\([Dd]\)esacostés\([^[:alnum:]]\)/\1esacostara\2/g
    s/\b\([Dd]\)esacostéssi\([mu]\)\([^[:alnum:]]\)/\1esacostàre\2\3/g
    s/\b\([Dd]\)esacostessi\([ns]\)\([^[:alnum:]]\)/\1esacostare\2\3/g
    s/\b\([Dd]\)esacost\([io]\)\([^[:alnum:]]\)/\1esacoste\3/g
    s/\b\([Dd]\)esacosti\([ns]\)\([^[:alnum:]]\)/\1esacoste\2\3/g
# cotitzar
s/\b\([Cc]\)otitzés\([^[:alnum:]]\)/\1otitzara\2/g
s/\b\([Cc]\)otitzéssi\([mu]\)\([^[:alnum:]]\)/\1otitzàre\2\3/g
s/\b\([Cc]\)otitzessi\([ns]\)\([^[:alnum:]]\)/\1otitzare\2\3/g
s/\b\([Cc]\)otitz\([io]\)\([^[:alnum:]]\)/\1otitze\3/g
s/\b\([Cc]\)otitzi\([ns]\)\([^[:alnum:]]\)/\1otitze\2\3/g
# crear
s/\b\([Cc]\)reés\([^[:alnum:]]\)/\1reara\2/g
s/\b\([Cc]\)reéssi\([mu]\)\([^[:alnum:]]\)/\1reàre\2\3/g
s/\b\([Cc]\)reessi\([ns]\)\([^[:alnum:]]\)/\1reare\2\3/g
s/\b\([Cc]\)re\([ïo]\)\([^[:alnum:]]\)/\1ree\3/g
s/\b\([Cc]\)reï\([ns]\)\([^[:alnum:]]\)/\1ree\2\3/g
    # procrear
    s/\b\([Pp]\)rocreés\([^[:alnum:]]\)/\1rocreara\2/g
    s/\b\([Pp]\)rocreéssi\([mu]\)\([^[:alnum:]]\)/\1rocreàre\2\3/g
    s/\b\([Pp]\)rocreessi\([ns]\)\([^[:alnum:]]\)/\1rocreare\2\3/g
    s/\b\([Pp]\)rocre\([ïo]\)\([^[:alnum:]]\)/\1rocree\3/g
    s/\b\([Pp]\)rocreï\([ns]\)\([^[:alnum:]]\)/\1rocree\2\3/g
    # recrear
    s/\b\([Rr]\)ecreés\([^[:alnum:]]\)/\1ecreara\2/g
    s/\b\([Rr]\)ecreéssi\([mu]\)\([^[:alnum:]]\)/\1ecreàre\2\3/g
    s/\b\([Rr]\)ecreessi\([ns]\)\([^[:alnum:]]\)/\1ecreare\2\3/g
    s/\b\([Rr]\)ecre\([ïo]\)\([^[:alnum:]]\)/\1ecree\3/g
    s/\b\([Rr]\)ecreï\([ns]\)\([^[:alnum:]]\)/\1ecree\2\3/g
# cremar
s/\b\([Cc]\)remés\([^[:alnum:]]\)/\1remara\2/g
s/\b\([Cc]\)reméssi\([mu]\)\([^[:alnum:]]\)/\1remàre\2\3/g
s/\b\([Cc]\)remessi\([ns]\)\([^[:alnum:]]\)/\1remare\2\3/g
s/\b\([Cc]\)rem\([io]\)\([^[:alnum:]]\)/\1reme\3/g
s/\b\([Cc]\)remi\([ns]\)\([^[:alnum:]]\)/\1reme\2\3/g
# creuar
s/\b\([Cc]\)reués\([^[:alnum:]]\)/\1reuara\2/g
s/\b\([Cc]\)reuéssi\([mu]\)\([^[:alnum:]]\)/\1reuàre\2\3/g
s/\b\([Cc]\)reuessi\([ns]\)\([^[:alnum:]]\)/\1reuare\2\3/g
s/\b\([Cc]\)reu\([ïo]\)\([^[:alnum:]]\)/\1reue\3/g
s/\b\([Cc]\)reuï\([ns]\)\([^[:alnum:]]\)/\1reue\2\3/g
    # desencreuar
    s/\b\([Dd]\)esencreués\([^[:alnum:]]\)/\1esencreuara\2/g
    s/\b\([Dd]\)esencreuéssi\([mu]\)\([^[:alnum:]]\)/\1esencreuàre\2\3/g
    s/\b\([Dd]\)esencreuessi\([ns]\)\([^[:alnum:]]\)/\1esencreuare\2\3/g
    s/\b\([Dd]\)esencreu\([ïo]\)\([^[:alnum:]]\)/\1esencreue\3/g
    s/\b\([Dd]\)esencreuï\([ns]\)\([^[:alnum:]]\)/\1esencreue\2\3/g
    # encreuar
    s/\b\([Ee]\)ncreués\([^[:alnum:]]\)/\1ncreuara\2/g
    s/\b\([Ee]\)ncreuéssi\([mu]\)\([^[:alnum:]]\)/\1ncreuàre\2\3/g
    s/\b\([Ee]\)ncreuessi\([ns]\)\([^[:alnum:]]\)/\1ncreuare\2\3/g
    s/\b\([Ee]\)ncreu\([ïo]\)\([^[:alnum:]]\)/\1ncreue\3/g
    s/\b\([Ee]\)ncreuï\([ns]\)\([^[:alnum:]]\)/\1ncreue\2\3/g
    # entrecreuar
    s/\b\([Ee]\)ntrecreués\([^[:alnum:]]\)/\1ntrecreuara\2/g
    s/\b\([Ee]\)ntrecreuéssi\([mu]\)\([^[:alnum:]]\)/\1ntrecreuàre\2\3/g
    s/\b\([Ee]\)ntrecreuessi\([ns]\)\([^[:alnum:]]\)/\1ntrecreuare\2\3/g
    s/\b\([Ee]\)ntrecreu\([ïo]\)\([^[:alnum:]]\)/\1ntrecreue\3/g
    s/\b\([Ee]\)ntrecreuï\([ns]\)\([^[:alnum:]]\)/\1ntrecreue\2\3/g
# créixer
s/\b\([Cc]\)rèixer\([^[:alnum:]]\)/\1réixer\2/g
s/\b\([Cc]\)reix\(e[ns]\|\)\([^[:alnum:]]\)/\1rix\2\3/g
s/\b\([Cc]\)reixi\([^[:alnum:]]\)/\1resca\2/g
s/\b\([Cc]\)reixi\([ns]\)\([^[:alnum:]]\)/\1resque\2\3/g
s/\b\([Cc]\)reixo\([^[:alnum:]]\)/\1resc\2/g
s/\b\([Cc]\)re\(ix\|qu\)és\([^[:alnum:]]\)/\1resquera\2/g
s/\b\([Cc]\)re\(ix\|qu\)éssi\([mu]\)\([^[:alnum:]]\)/\1resquére\2\3/g
s/\b\([Cc]\)re\(ix\|qu\)essi\([ns]\)\([^[:alnum:]]\)/\1resquere\2\3/g
    # acréixer
    s/\b\([Aa]\)crèixer\([^[:alnum:]]\)/\1créixer\2/g
    s/\b\([Aa]\)creix\(e[ns]\|\)\([^[:alnum:]]\)/\1crix\2\3/g
    s/\b\([Aa]\)creixi\([^[:alnum:]]\)/\1cresca\2/g
    s/\b\([Aa]\)creixi\([ns]\)\([^[:alnum:]]\)/\1cresque\2\3/g
    s/\b\([Aa]\)creixo\([^[:alnum:]]\)/\1cresc\2/g
    s/\b\([Aa]\)cre\(ix\|qu\)és\([^[:alnum:]]\)/\1cresquera\2/g
    s/\b\([Aa]\)cre\(ix\|qu\)éssi\([mu]\)\([^[:alnum:]]\)/\1cresquére\2\3/g
    s/\b\([Aa]\)cre\(ix\|qu\)essi\([ns]\)\([^[:alnum:]]\)/\1cresquere\2\3/g
    # decréixer / recréixer
    s/\b\([DdRr]\)ecrèixer\([^[:alnum:]]\)/\1ecréixer\2/g
    s/\b\([DdRr]\)ecreix\(e[ns]\|\)\([^[:alnum:]]\)/\1ecrix\2\3/g
    s/\b\([DdRr]\)ecreixi\([^[:alnum:]]\)/\1ecresca\2/g
    s/\b\([DdRr]\)ecreixi\([ns]\)\([^[:alnum:]]\)/\1ecresque\2\3/g
    s/\b\([DdRr]\)ecreixo\([^[:alnum:]]\)/\1ecresc\2/g
    s/\b\([DdRr]\)ecre\(ix\|qu\)és\([^[:alnum:]]\)/\1ecresquera\2/g
    s/\b\([DdRr]\)ecre\(ix\|qu\)éssi\([mu]\)\([^[:alnum:]]\)/\1ecresquére\2\3/g
    s/\b\([DdRr]\)ecre\(ix\|qu\)essi\([ns]\)\([^[:alnum:]]\)/\1ecresquere\2\3/g
    # sobrecréixer
    s/\b\([Ss]\)obrecrèixer\([^[:alnum:]]\)/\1obrecréixer\2/g
    s/\b\([Ss]\)obrecreix\(e[ns]\|\)\([^[:alnum:]]\)/\1obrecrix\2\3/g
    s/\b\([Ss]\)obrecreixi\([^[:alnum:]]\)/\1obrecresca\2/g
    s/\b\([Ss]\)obrecreixi\([ns]\)\([^[:alnum:]]\)/\1obrecresque\2\3/g
    s/\b\([Ss]\)obrecreixo\([^[:alnum:]]\)/\1obrecresc\2/g
    s/\b\([Ss]\)obrecre\(ix\|qu\)és\([^[:alnum:]]\)/\1obrecresquera\2/g
    s/\b\([Ss]\)obrecre\(ix\|qu\)éssi\([mu]\)\([^[:alnum:]]\)/\1obrecresquére\2\3/g
    s/\b\([Ss]\)obrecre\(ix\|qu\)essi\([ns]\)\([^[:alnum:]]\)/\1obrecresquere\2\3/g
# creure
s/\b\([Cc]\)regués\([^[:alnum:]]\)/\1reguera\2/g
s/\b\([Cc]\)reguéssi\([mu]\)\([^[:alnum:]]\)/\1reguére\2\3/g
s/\b\([Cc]\)reguessi\([ns]\)\([^[:alnum:]]\)/\1reguere\2\3/g
s/\b\([Cc]\)regui\([^[:alnum:]]\)/\1rega\2/g
s/\b\([Cc]\)regui\([ns]\)\([^[:alnum:]]\)/\1regue\2\3/g
s/\b\([Cc]\)rèie\([mu]\)\([^[:alnum:]]\)/\1réie\2\3/g
    # descreure
    s/\b\([Dd]\)escregués\([^[:alnum:]]\)/\1escreguera\2/g
    s/\b\([Dd]\)escreguéssi\([mu]\)\([^[:alnum:]]\)/\1escreguére\2\3/g
    s/\b\([Dd]\)escreguessi\([ns]\)\([^[:alnum:]]\)/\1escreguere\2\3/g
    s/\b\([Dd]\)escregui\([^[:alnum:]]\)/\1escrega\2/g
    s/\b\([Dd]\)escregui\([ns]\)\([^[:alnum:]]\)/\1escregue\2\3/g
    s/\b\([Dd]\)escrèie\([mu]\)\([^[:alnum:]]\)/\1escréie\2\3/g
    # menyscreure
    s/\b\([Mm]\)enyscegués\([^[:alnum:]]\)/\1enyscreguera\2/g
    s/\b\([Mm]\)enyscreguéssi\([mu]\)\([^[:alnum:]]\)/\1enyscreguére\2\3/g
    s/\b\([Mm]\)enyscreguessi\([ns]\)\([^[:alnum:]]\)/\1enyscreguere\2\3/g
    s/\b\([Mm]\)enyscregui\([^[:alnum:]]\)/\1enyscrega\2/g
    s/\b\([Mm]\)enyscregui\([ns]\)\([^[:alnum:]]\)/\1enyscregue\2\3/g
    s/\b\([Mm]\)enyscrèie\([mu]\)\([^[:alnum:]]\)/\1enyscréie\2\3/g
# cridar
s/\b\([Cc]\)ridés\([^[:alnum:]]\)/\1ridara\2/g
s/\b\([Cc]\)ridéssi\([mu]\)\([^[:alnum:]]\)/\1ridàre\2\3/g
s/\b\([Cc]\)ridessi\([ns]\)\([^[:alnum:]]\)/\1ridare\2\3/g
s/\b\([Cc]\)rid\([io]\)\([^[:alnum:]]\)/\1ride\3/g
s/\b\([Cc]\)ridi\([ns]\)\([^[:alnum:]]\)/\1ride\2\3/g
# TODO: no
# cristalitzar
s/\b\([Cc]\)ristal·litzés\([^[:alnum:]]\)/\1ristal·litzara\2/g
s/\b\([Cc]\)ristal·litzéssi\([mu]\)\([^[:alnum:]]\)/\1ristal·litzàre\2\3/g
s/\b\([Cc]\)ristal·litzessi\([ns]\)\([^[:alnum:]]\)/\1ristal·litzare\2\3/g
s/\b\([Cc]\)ristal·litz\([io]\)\([^[:alnum:]]\)/\1ristal·litze\3/g
s/\b\([Cc]\)ristal·litzi\([ns]\)\([^[:alnum:]]\)/\1ristal·litze\2\3/g
# crític -> crítica (esmenes - # NOTE: PDT)
# cronometrar
s/\b\([Cc]\)ronometrés\([^[:alnum:]]\)/\1ronometrara\2/g
s/\b\([Cc]\)ronometréssi\([mu]\)\([^[:alnum:]]\)/\1ronometràre\2\3/g
s/\b\([Cc]\)ronometressi\([ns]\)\([^[:alnum:]]\)/\1ronometrare\2\3/g
s/\b\([Cc]\)ronometr\([io]\)\([^[:alnum:]]\)/\1ronometre\3/g
s/\b\([Cc]\)ronometri\([ns]\)\([^[:alnum:]]\)/\1ronometre\2\3/g
# d
#
# d'hora <-> prompte (esmenes)
s/\b\([Dd]\)anès\([^[:alnum:]]\)/\1anés\2/g
# damunt (esmenes)
# darrer(a) (esmenes)
# danyar
s/\b\([Dd]\)anyés\([^[:alnum:]]\)/\1anyara\2/g
s/\b\([Dd]\)anyéssi\([mu]\)\([^[:alnum:]]\)/\1anyàre\2\3/g
s/\b\([Dd]\)anyessi\([ns]\)\([^[:alnum:]]\)/\1anyare\2\3/g
s/\b\([Dd]\)any\([io]\)\([^[:alnum:]]\)/\1anye\3/g
s/\b\([Dd]\)anyi\([ns]\)\([^[:alnum:]]\)/\1anye\2\3/g
# darrer(a) (esmenes)
s/\b\([Dd]\)e debò\([^[:alnum:]]\)/\1e veres\2/g
# debatre
s/\b\([Dd]\)ebatés\([^[:alnum:]]\)/\1ebatera\2/g
s/\b\([Dd]\)ebatéssi\([mu]\)\([^[:alnum:]]\)/\1ebatére\2\3/g
s/\b\([Dd]\)ebatessi\([ns]\)\([^[:alnum:]]\)/\1ebatere\2\3/g
s/\b\([Dd]\)ebati\([^[:alnum:]]\)/\1ebata\2/g
s/\b\([Dd]\)ebati\([ns]\)\([^[:alnum:]]\)/\1ebate\2\3/g
s/\b\([Dd]\)ebato\([^[:alnum:]]\)/\1ebat\2/g
# declarar
s/\b\([Dd]\)eclarés\([^[:alnum:]]\)/\1eclarara\2/g
s/\b\([Dd]\)eclaréssi\([mu]\)\([^[:alnum:]]\)/\1eclaràre\2\3/g
s/\b\([Dd]\)eclaressi\([ns]\)\([^[:alnum:]]\)/\1eclarare\2\3/g
s/\b\([Dd]\)eclar\([io]\)\([^[:alnum:]]\)/\1eclare\3/g
s/\b\([Dd]\)eclari\([ns]\)\([^[:alnum:]]\)/\1eclare\2\3/g
# declinar
s/\b\([Dd]\)eclinaés\([^[:alnum:]]\)/\1eclinara\2/g
s/\b\([Dd]\)eclinaéssi\([mu]\)\([^[:alnum:]]\)/\1eclinàre\2\3/g
s/\b\([Dd]\)eclinaessi\([ns]\)\([^[:alnum:]]\)/\1eclinare\2\3/g
s/\b\([Dd]\)eclina\([io]\)\([^[:alnum:]]\)/\1ecline\3/g
s/\b\([Dd]\)eclaini\([ns]\)\([^[:alnum:]]\)/\1ecline\2\3/g
# decrementar / incrementar
# TODO: no (decrementar)
s/\b\([Dd]e\|[Ii]n\)crementés\([^[:alnum:]]\)/\1crementara\2/g
s/\b\([Dd]e\|[Ii]n\)crementéssi\([mu]\)\([^[:alnum:]]\)/\1crementàre\2\3/g
s/\b\([Dd]e\|[Ii]n\)crementessi\([ns]\)\([^[:alnum:]]\)/\1crementare\2\3/g
s/\b\([Dd]e\|[Ii]n\)crement\([io]\)\([^[:alnum:]]\)/\1cremente\3/g
s/\b\([Dd]e\|[Ii]n\)crementi\([ns]\)\([^[:alnum:]]\)/\1cremente\2\3/g
# deduir
s/\b\([Dd]\)edueix\(e[ns]\|\)\([^[:alnum:]]\)/\1eduïx\2\3/g
s/\b\([Dd]\)edueixi\([^[:alnum:]]\)/\1eduïsca\2/g
s/\b\([Dd]\)edueixi\([ns]\)\([^[:alnum:]]\)/\1eduïsque\2\3/g
s/\b\([Dd]\)edueixo\([^[:alnum:]]\)/\1eduïsc\2/g
s/\b\([Dd]\)eduís\([^[:alnum:]]\)/\1eduïra\2/g
s/\b\([Dd]\)eduíssi\([mu]\)\([^[:alnum:]]\)/\1eduíre\2\3/g
s/\b\([Dd]\)eduïssi\([ns]\)\([^[:alnum:]]\)/\1eduïre\2\3/g
# definir
s/\b\([Dd]\)efineix\(e[ns]\|\)\([^[:alnum:]]\)/\1efinix\2\3/g
s/\b\([Dd]\)efineixi\([^[:alnum:]]\)/\1efinisca\2/g
s/\b\([Dd]\)efineixi\([ns]\)\([^[:alnum:]]\)/\1efinisque\2\3/g
s/\b\([Dd]\)efineixo\([^[:alnum:]]\)/\1efinisc\2/g
s/\b\([Dd]\)efinís\([^[:alnum:]]\)/\1efinira\2/g
s/\b\([Dd]\)efiníssi\([mu]\)\([^[:alnum:]]\)/\1efiníre\2\3/g
s/\b\([Dd]\)efinissi\([ns]\)\([^[:alnum:]]\)/\1efinire\2\3/g
    # TODO: no
    # redefinir
    s/\b\([Rr]\)edefineix\(e[ns]\|\)\([^[:alnum:]]\)/\1edefinix\2\3/g
    s/\b\([Rr]\)edefineixi\([^[:alnum:]]\)/\1edefinisca\2/g
    s/\b\([Rr]\)edefineixi\([ns]\)\([^[:alnum:]]\)/\1edefinisque\2\3/g
    s/\b\([Rr]\)edefineixo\([^[:alnum:]]\)/\1edefinisc\2/g
    s/\b\([Rr]\)edefinís\([^[:alnum:]]\)/\1edefinira\2/g
    s/\b\([Rr]\)edefiníssi\([mu]\)\([^[:alnum:]]\)/\1edefiníre\2\3/g
    s/\b\([Rr]\)edefinissi\([ns]\)\([^[:alnum:]]\)/\1edefinire\2\3/g
# defraudar
s/\b\([Dd]\)efraudés\([^[:alnum:]]\)/\1efraudara\2/g
s/\b\([Dd]\)efraudéssi\([mu]\)\([^[:alnum:]]\)/\1efraudàre\2\3/g
s/\b\([Dd]\)efraudessi\([ns]\)\([^[:alnum:]]\)/\1efraudare\2\3/g
s/\b\([Dd]\)efraud\([io]\)\([^[:alnum:]]\)/\1efraude\3/g
s/\b\([Dd]\)efraudi\([ns]\)\([^[:alnum:]]\)/\1efraude\2\3/g
# deixar
s/\b\([Dd]\)eixés\([^[:alnum:]]\)/\1eixara\2/g
s/\b\([Dd]\)eixéssi\([mu]\)\([^[:alnum:]]\)/\1eixàre\2\3/g
s/\b\([Dd]\)eixessi\([ns]\)\([^[:alnum:]]\)/\1eixare\2\3/g
s/\b\([Dd]\)eix\([io]\)\([^[:alnum:]]\)/\1eixe\3/g
s/\b\([Dd]\)eixi\([ns]\)\([^[:alnum:]]\)/\1eixe\2\3/g
# delectar
s/\b\([Dd]\)electés\([^[:alnum:]]\)/\1electara\2/g
s/\b\([Dd]\)electéssi\([mu]\)\([^[:alnum:]]\)/\1electàre\2\3/g
s/\b\([Dd]\)electessi\([ns]\)\([^[:alnum:]]\)/\1electare\2\3/g
s/\b\([Dd]\)elect\([io]\)\([^[:alnum:]]\)/\1electe\3/g
s/\b\([Dd]\)electi\([ns]\)\([^[:alnum:]]\)/\1electe\2\3/g
# delegar
s/\b\([Dd]\)elegués\([^[:alnum:]]\)/\1elegara\2/g
s/\b\([Dd]\)eleguéssi\([mu]\)\([^[:alnum:]]\)/\1elegàre\2\3/g
s/\b\([Dd]\)eleguessi\([ns]\)\([^[:alnum:]]\)/\1elegare\2\3/g
s/\b\([Dd]\)elego\([^[:alnum:]]\)/\1elegue\2/g
s/\b\([Dd]\)elegui\([ns]\|\)\([^[:alnum:]]\)/\1elegue\2\3/g
# demostrar
s/\b\([Dd]\)emostrés\([^[:alnum:]]\)/\1emostrara\2/g
s/\b\([Dd]\)emostréssi\([mu]\)\([^[:alnum:]]\)/\1emostràre\2\3/g
s/\b\([Dd]\)emostressi\([ns]\)\([^[:alnum:]]\)/\1emostrare\2\3/g
s/\b\([Dd]\)emostr\([io]\)\([^[:alnum:]]\)/\1emostre\3/g
s/\b\([Dd]\)emostri\([ns]\)\([^[:alnum:]]\)/\1emostre\2\3/g
# depreciar
s/\b\([Dd]\)epreciés\([^[:alnum:]]\)/\1epreciara\2/g
s/\b\([Dd]\)epreciéssi\([mu]\)\([^[:alnum:]]\)/\1epreciàre\2\3/g
s/\b\([Dd]\)epreciessi\([ns]\)\([^[:alnum:]]\)/\1epreciare\2\3/g
s/\b\([Dd]\)epreci\([ïo]\)\([^[:alnum:]]\)/\1eprecie\3/g
s/\b\([Dd]\)epreciï\([ns]\)\([^[:alnum:]]\)/\1eprecie\2\3/g
# derivar
s/\b\([Dd]\)erivés\([^[:alnum:]]\)/\1erivara\2/g
s/\b\([Dd]\)erivéssi\([mu]\)\([^[:alnum:]]\)/\1erivàre\2\3/g
s/\b\([Dd]\)erivessi\([ns]\)\([^[:alnum:]]\)/\1erivare\2\3/g
s/\b\([Dd]\)eriv\([io]\)\([^[:alnum:]]\)/\1erive\3/g
s/\b\([Dd]\)erivi\([ns]\)\([^[:alnum:]]\)/\1erive\2\3/g
# desar -> guardar (esmenes)
# desbordar
s/\b\([Dd]\)esbordés\([^[:alnum:]]\)/\1esbordara\2/g
s/\b\([Dd]\)esbordéssi\([mu]\)\([^[:alnum:]]\)/\1esbordàre\2\3/g
s/\b\([Dd]\)esbordessi\([ns]\)\([^[:alnum:]]\)/\1esbordare\2\3/g
s/\b\([Dd]\)esbord\([io]\)\([^[:alnum:]]\)/\1esborde\3/g
s/\b\([Dd]\)esbordi\([ns]\)\([^[:alnum:]]\)/\1esborde\2\3/g
# descartar
s/\b\([Dd]\)escartés\([^[:alnum:]]\)/\1escartara\2/g
s/\b\([Dd]\)escartéssi\([mu]\)\([^[:alnum:]]\)/\1escartàre\2\3/g
s/\b\([Dd]\)escartessi\([ns]\)\([^[:alnum:]]\)/\1escartare\2\3/g
s/\b\([Dd]\)escart\([io]\)\([^[:alnum:]]\)/\1escarte\3/g
s/\b\([Dd]\)escarti\([ns]\)\([^[:alnum:]]\)/\1escarte\2\3/g
    # descendir
    s/\b\([Dd]\)escendeix\(e[ns]\|\)\([^[:alnum:]]\)/\1escendix\2\3/g
    s/\b\([Dd]\)escendeixi\([^[:alnum:]]\)/\1escendisca\2/g
    s/\b\([Dd]\)escendeixi\([ns]\)\([^[:alnum:]]\)/\1escendisque\2\3/g
    s/\b\([Dd]\)escendeixo\([^[:alnum:]]\)/\1escendisc\2/g
    s/\b\([Dd]\)escendís\([^[:alnum:]]\)/\1escendira\2/g
    s/\b\([Dd]\)escendíssi\([mu]\)\([^[:alnum:]]\)/\1escendíre\2\3/g
    s/\b\([Dd]\)escendissi\([ns]\)\([^[:alnum:]]\)/\1escendire\2\3/g
        # condescendir
        s/\b\([Cc]\)ondescendeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ondescendix\2\3/g
        s/\b\([Cc]\)ondescendeixi\([^[:alnum:]]\)/\1ondescendisca\2/g
        s/\b\([Cc]\)ondescendeixi\([ns]\)\([^[:alnum:]]\)/\1ondescendisque\2\3/g
        s/\b\([Cc]\)ondescendeixo\([^[:alnum:]]\)/\1ondescendisc\2/g
        s/\b\([Cc]\)ondescendís\([^[:alnum:]]\)/\1ondescendira\2/g
        s/\b\([Cc]\)ondescendíssi\([mu]\)\([^[:alnum:]]\)/\1ondescendíre\2\3/g
        s/\b\([Cc]\)ondescendissi\([ns]\)\([^[:alnum:]]\)/\1ondescendire\2\3/g
# desconnexió -> eixida (esmenes)
# desdenyar
s/\b\([Dd]\)esdenyés\([^[:alnum:]]\)/\1esdenyara\2/g
s/\b\([Dd]\)esdenyéssi\([mu]\)\([^[:alnum:]]\)/\1esdenyàre\2\3/g
s/\b\([Dd]\)esdenyessi\([ns]\)\([^[:alnum:]]\)/\1esdenyare\2\3/g
s/\b\([Dd]\)esdeny\([io]\)\([^[:alnum:]]\)/\1esdenye\3/g
s/\b\([Dd]\)esdenyi\([ns]\)\([^[:alnum:]]\)/\1esdenye\2\3/g
# desenvolupar
s/\b\([Dd]\)esenvolupés\([^[:alnum:]]\)/\1esenvolupara\2/g
s/\b\([Dd]\)esenvolupéssi\([mu]\)\([^[:alnum:]]\)/\1esenvolupàre\2\3/g
s/\b\([Dd]\)esenvolupessi\([ns]\)\([^[:alnum:]]\)/\1esenvolupare\2\3/g
s/\b\([Dd]\)esenvolup\([io]\)\([^[:alnum:]]\)/\1esenvolupe\3/g
s/\b\([Dd]\)esenvolupi\([ns]\)\([^[:alnum:]]\)/\1esenvolupe\2\3/g
# desgavellar
s/\b\([Dd]\)esgavellés\([^[:alnum:]]\)/\1esgavellara\2/g
s/\b\([Dd]\)esgavelléssi\([mu]\)\([^[:alnum:]]\)/\1esgavellàre\2\3/g
s/\b\([Dd]\)esgavellessi\([ns]\)\([^[:alnum:]]\)/\1esgavellare\2\3/g
s/\b\([Dd]\)esgavell\([io]\)\([^[:alnum:]]\)/\1esgavelle\3/g
s/\b\([Dd]\)esgavelli\([ns]\)\([^[:alnum:]]\)/\1esgavelle\2\3/g
# desglossar
s/\b\([Dd]\)esglossés\([^[:alnum:]]\)/\1esglossara\2/g
s/\b\([Dd]\)esglosséssi\([mu]\)\([^[:alnum:]]\)/\1esglossàre\2\3/g
s/\b\([Dd]\)esglossessi\([ns]\)\([^[:alnum:]]\)/\1esglossare\2\3/g
s/\b\([Dd]\)esgloss\([io]\)\([^[:alnum:]]\)/\1esglosse\2/g
s/\b\([Dd]\)esglossi\([ns]\|\)\([^[:alnum:]]\)/\1esglosse\2\3/g
# designar
s/\b\([Dd]\)esignés\([^[:alnum:]]\)/\1esignara\2/g
s/\b\([Dd]\)esignéssi\([mu]\)\([^[:alnum:]]\)/\1esignàre\2\3/g
s/\b\([Dd]\)esignessi\([ns]\)\([^[:alnum:]]\)/\1esignare\2\3/g
s/\b\([Dd]\)esign\([io]\)\([^[:alnum:]]\)/\1esigne\2/g
s/\b\([Dd]\)esigni\([ns]\|\)\([^[:alnum:]]\)/\1esigne\2\3/g
# desistir
s/\b\([Dd]\)esisteix\(e[ns]\|\)\([^[:alnum:]]\)/\1esistix\2\3/g
s/\b\([Dd]\)esisteixi\([^[:alnum:]]\)/\1esistisca\2/g
s/\b\([Dd]\)esisteixi\([ns]\)\([^[:alnum:]]\)/\1esistisque\2\3/g
s/\b\([Dd]\)esisteixo\([^[:alnum:]]\)/\1esistisc\2/g
s/\b\([Dd]\)esistís\([^[:alnum:]]\)/\1esistira\2/g
s/\b\([Dd]\)esistíssi\([mu]\)\([^[:alnum:]]\)/\1esistíre\2\3/g
s/\b\([Dd]\)esistissi\([ns]\)\([^[:alnum:]]\)/\1esistire\2\3/g
# desitgeu -> voleu (esmenes)
# desitjar
s/\b\([Dd]\)esitgés\([^[:alnum:]]\)/\1esitjara\2/g
s/\b\([Dd]\)esitgéssi\([mu]\)\([^[:alnum:]]\)/\1esitjàre\2\3/g
s/\b\([Dd]\)esitgessi\([ns]\)\([^[:alnum:]]\)/\1esitjare\2\3/g
s/\b\([Dd]\)esitgi\([ns]\|\)\([^[:alnum:]]\)/\1esitge\2\3/g
s/\b\([Dd]\)esitjo\([^[:alnum:]]\)/\1esitge\2/g
# despatxar
s/\b\([Dd]\)espatxés\([^[:alnum:]]\)/\1espatxara\2/g
s/\b\([Dd]\)espatxéssi\([mu]\)\([^[:alnum:]]\)/\1espatxàre\2\3/g
s/\b\([Dd]\)espatxessi\([ns]\)\([^[:alnum:]]\)/\1espatxare\2\3/g
s/\b\([Dd]\)espatx\([io]\)\([^[:alnum:]]\)/\1espatxe\2/g
s/\b\([Dd]\)espatxi\([ns]\|\)\([^[:alnum:]]\)/\1espatxe\2\3/g
# desplaçar
s/\b\([Dd]\)esplacés\([^[:alnum:]]\)/\1esplaçara\2/g
s/\b\([Dd]\)esplacéssi\([mu]\)\([^[:alnum:]]\)/\1esplaçàre\2\3/g
s/\b\([Dd]\)esplacessi\([ns]\)\([^[:alnum:]]\)/\1esplaçare\2\3/g
s/\b\([Dd]\)esplaci\([ns]\|\)\([^[:alnum:]]\)/\1esplace\2\3/g
s/\b\([Dd]\)esplaço\([^[:alnum:]]\)/\1esplace\2/g
# desambiguar
# FIXME: no existeix
# dessota o davall (esmenes)
# destacar
s/\b\([Dd]\)estaco\([^[:alnum:]]\)/\1estaque\2/g
s/\b\([Dd]\)estaqués\([^[:alnum:]]\)/\1estacara\2/g
s/\b\([Dd]\)estaquéssi\([mu]\)\([^[:alnum:]]\)/\1estacàre\2\3/g
s/\b\([Dd]\)estaquessi\([ns]\)\([^[:alnum:]]\)/\1estacare\2\3/g
s/\b\([Dd]\)estaqui\([ns]\|\)\([^[:alnum:]]\)/\1estaque\2\3/g
# destil·lar
s/\b\([Dd]\)estil·lés\([^[:alnum:]]\)/\1estil·lara\2/g
s/\b\([Dd]\)estil·léssi\([mu]\|\)\([^[:alnum:]]\)/\1estil·làre\2\3/g
s/\b\([Dd]\)estil·lessi\([ns]\|\)\([^[:alnum:]]\)/\1estil·lare\2\3/g
s/\b\([Dd]\)estil·l\([io]\)\([^[:alnum:]]\)/\1estil·le\3/g
s/\b\([Dd]\)estil·li\([ns]\)\([^[:alnum:]]\)/\1estil·le\2\3/g
# destinació o destí (esmenes)
# destinar
s/\b\([Dd]\)estinés\([^[:alnum:]]\)/\1estinara\2/g
s/\b\([Dd]\)estinéssi\([mu]\|\)\([^[:alnum:]]\)/\1estinàre\2\3/g
s/\b\([Dd]\)estinessi\([ns]\|\)\([^[:alnum:]]\)/\1estinare\2\3/g
s/\b\([Dd]\)estin\([io]\)\([^[:alnum:]]\)/\1estine\3/g
s/\b\([Dd]\)estini\([ns]\)\([^[:alnum:]]\)/\1estine\2\3/g
# destorbar
s/\b\([Dd]\)estorbés\([^[:alnum:]]\)/\1estorbara\2/g
s/\b\([Dd]\)estorbéssi\([mu]\|\)\([^[:alnum:]]\)/\1estorbàre\2\3/g
s/\b\([Dd]\)estorbessi\([ns]\|\)\([^[:alnum:]]\)/\1estorbare\2\3/g
s/\b\([Dd]\)estorb\([io]\)\([^[:alnum:]]\)/\1estorbe\3/g
s/\b\([Dd]\)estorbi\([ns]\)\([^[:alnum:]]\)/\1estorbe\2\3/g
# destruir
s/\b\([Dd]\)estrueix\(e[ns]\|\)\([^[:alnum:]]\)/\1estruïx\2\3/g
s/\b\([Dd]\)estrueixi\([^[:alnum:]]\)/\1estruïsca\2/g
s/\b\([Dd]\)estrueixi\([ns]\)\([^[:alnum:]]\)/\1estruïsque\2\3/g
s/\b\([Dd]\)estrueixo\([^[:alnum:]]\)/\1estruïsc\2/g
s/\b\([Dd]\)estruís\([^[:alnum:]]\)/\1estruïra\2/g
s/\b\([Dd]\)estruíssi\([mu]\|\)\([^[:alnum:]]\)/\1estruíre\2\3/g
s/\b\([Dd]\)estruïssi\([ns]\|\)\([^[:alnum:]]\)/\1estruïre\2\3/g
# desviar
s/\b\([Dd]\)esviés\([^[:alnum:]]\)/\1esviara\2/g
s/\b\([Dd]\)esviéssi\([mu]\|\)\([^[:alnum:]]\)/\1esviàre\2\3/g
s/\b\([Dd]\)esviessi\([ns]\|\)\([^[:alnum:]]\)/\1esviare\2\3/g
s/\b\([Dd]\)esvi\([ïo]\)\([^[:alnum:]]\)/\1esvie\3/g
s/\b\([Dd]\)esviï\([ns]\)\([^[:alnum:]]\)/\1esvie\2\3/g
# detectar
s/\b\([Dd]\)etectés\([^[:alnum:]]\)/\1etectara\2/g
s/\b\([Dd]\)etectéssi\([mu]\|\)\([^[:alnum:]]\)/\1etectàre\2\3/g
s/\b\([Dd]\)etectessi\([ns]\|\)\([^[:alnum:]]\)/\1etectare\2\3/g
s/\b\([Dd]\)etect\([io]\)\([^[:alnum:]]\)/\1etecte\3/g
s/\b\([Dd]\)etecti\([ns]\)\([^[:alnum:]]\)/\1etecte\2\3/g
# deteriorar
s/\b\([Dd]\)eteriorés\([^[:alnum:]]\)/\1eteriorara\2/g
s/\b\([Dd]\)eterioréssi\([mu]\|\)\([^[:alnum:]]\)/\1eterioràre\2\3/g
s/\b\([Dd]\)eterioressi\([ns]\|\)\([^[:alnum:]]\)/\1eteriorare\2\3/g
s/\b\([Dd]\)eterior\([io]\)\([^[:alnum:]]\)/\1eteriore\3/g
s/\b\([Dd]\)eteriori\([ns]\)\([^[:alnum:]]\)/\1eteriore\2\3/g
# determinar
s/\b\([Dd]\)eterminés\([^[:alnum:]]\)/\1eterminara\2/g
s/\b\([Dd]\)eterminéssi\([mu]\|\)\([^[:alnum:]]\)/\1eterminàre\2\3/g
s/\b\([Dd]\)eterminessi\([ns]\|\)\([^[:alnum:]]\)/\1eterminare\2\3/g
s/\b\([Dd]\)etermin\([io]\)\([^[:alnum:]]\)/\1etermine\3/g
s/\b\([Dd]\)etermini\([ns]\)\([^[:alnum:]]\)/\1etermine\2\3/g
# diagnosticar
s/\b\([Dd]\)iagnostico\([^[:alnum:]]\)/\1iagnostique\2/g
s/\b\([Dd]\)iagnostiqués\([^[:alnum:]]\)/\1iagnosticara\2/g
s/\b\([Dd]\)iagnostiquéssi\([mu]\|\)\([^[:alnum:]]\)/\1iagnosticàre\2\3/g
s/\b\([Dd]\)iagnostiquessi\([ns]\|\)\([^[:alnum:]]\)/\1iagnosticare\2\3/g
s/\b\([Dd]\)iagnostiqui\([ns]\|\)\([^[:alnum:]]\)/\1iagnostique\2\3/g
# dibuixar
s/\b\([Dd]\)ibuixés\([^[:alnum:]]\)/\1ibuixara\2/g
s/\b\([Dd]\)ibuixéssi\([mu]\|\)\([^[:alnum:]]\)/\1ibuixàre\2\3/g
s/\b\([Dd]\)ibuixessi\([ns]\|\)\([^[:alnum:]]\)/\1ibuixare\2\3/g
s/\b\([Dd]\)ibuix\([io]\)\([^[:alnum:]]\)/\1ibuixe\3/g
s/\b\([Dd]\)ibuixi\([ns]\)\([^[:alnum:]]\)/\1ibuixe\2\3/g
    # TODO: No
    # redibuixar
    s/\b\([Rr]\)edibuixés\([^[:alnum:]]\)/\1edibuixara\2/g
    s/\b\([Rr]\)edibuixéssi\([mu]\|\)\([^[:alnum:]]\)/\1edibuixàre\2\3/g
    s/\b\([Rr]\)edibuixessi\([ns]\|\)\([^[:alnum:]]\)/\1edibuixare\2\3/g
    s/\b\([Rr]\)edibuix\([io]\)\([^[:alnum:]]\)/\1edibuixe\3/g
    s/\b\([Rr]\)edibuixi\([ns]\)\([^[:alnum:]]\)/\1edibuixe\2\3/g
# diferenciar
s/\b\([Dd]\)iferenciés\([^[:alnum:]]\)/\1iferenciara\2/g
s/\b\([Dd]\)iferenciéssi\([mu]\|\)\([^[:alnum:]]\)/\1iferenciàre\2\3/g
s/\b\([Dd]\)iferenciessi\([ns]\|\)\([^[:alnum:]]\)/\1iferenciare\2\3/g
s/\b\([Dd]\)iferenci\([ïo]\)\([^[:alnum:]]\)/\1iferencie\3/g
s/\b\([Dd]\)iferenciï\([ns]\)\([^[:alnum:]]\)/\1iferencie\2\3/g
# diferir
s/\b\([Dd]\)ifereix\(e[ns]\|\)\([^[:alnum:]]\)/\1iferix\2\3/g
s/\b\([Dd]\)ifereixi\([^[:alnum:]]\)/\1iferisca\2/g
s/\b\([Dd]\)ifereixi\([ns]\)\([^[:alnum:]]\)/\1iferisque\2\3/g
s/\b\([Dd]\)ifereixo\([^[:alnum:]]\)/\1iferisc\2/g
s/\b\([Dd]\)iferís\([^[:alnum:]]\)/\1iferira\2/g
s/\b\([Dd]\)iferíssi\([mu]\)\([^[:alnum:]]\)/\1iferíre\2\3/g
s/\b\([Dd]\)iferissi\([ns]\)\([^[:alnum:]]\)/\1iferire\2\3/g
# digitalitzar
s/\b\([Dd]\)igitalitzés\([^[:alnum:]]\)/\1igitalitzara\2/g
s/\b\([Dd]\)igitalitzéssi\([mu]\|\)\([^[:alnum:]]\)/\1igitalitzàre\2\3/g
s/\b\([Dd]\)igitalitzessi\([ns]\|\)\([^[:alnum:]]\)/\1igitalitzare\2\3/g
s/\b\([Dd]\)igitalitz\([io]\)\([^[:alnum:]]\)/\1igitalitze\3/g
s/\b\([Dd]\)igitalitzi\([ns]\)\([^[:alnum:]]\)/\1igitalitze\2\3/g
s/\b\([Dd]\)ipòsit\(s\|\)\([^[:alnum:]]\)/\1epòsit\2\3/g
# dimensionar
s/\b\([Dd]\)imensionés\([^[:alnum:]]\)/\1imensionara\2/g
s/\b\([Dd]\)imensionéssi\([mu]\|\)\([^[:alnum:]]\)/\1imensionàre\2\3/g
s/\b\([Dd]\)imensionessi\([ns]\|\)\([^[:alnum:]]\)/\1imensionare\2\3/g
s/\b\([Dd]\)imension\([io]\)\([^[:alnum:]]\)/\1imensione\3/g
s/\b\([Dd]\)imensioni\([ns]\)\([^[:alnum:]]\)/\1imensione\2\3/g
    # TODO: no
    # redimensionar
    s/\b\([Rr]\)edimensionés\([^[:alnum:]]\)/\1edimensionara\2/g
    s/\b\([Rr]\)edimensionéssi\([mu]\|\)\([^[:alnum:]]\)/\1edimensionàre\2\3/g
    s/\b\([Rr]\)edimensionessi\([ns]\|\)\([^[:alnum:]]\)/\1edimensionare\2\3/g
    s/\b\([Rr]\)edimension\([io]\)\([^[:alnum:]]\)/\1edimensione\3/g
    s/\b\([Rr]\)edimensioni\([ns]\)\([^[:alnum:]]\)/\1edimensione\2\3/g
# dipositar -> depositar (esmenes)
# dir
s/\b\([Dd]\)igués\([^[:alnum:]]\)/\1iguera\2/g
s/\b\([Dd]\)iguéssi\([mu]\|\)\([^[:alnum:]]\)/\1iguére\2\3/g
s/\b\([Dd]\)iguessi\([ns]\|\)\([^[:alnum:]]\)/\1iguere\2\3/g
s/\b\([Dd]\)igui\([^[:alnum:]]\)/\1iga\2/g
s/\b\([Dd]\)igui\([ns]\)\([^[:alnum:]]\)/\1igue\2\3/g
    # al·ludir
    s/\b\([Aa]\)l·ludeix\(e[ns]\|\)\([^[:alnum:]]\)/\1l·ludix\2\3/g
    s/\b\([Aa]\)l·ludeixi\([^[:alnum:]]\)/\1l·ludisca\2/g
    s/\b\([Aa]\)l·ludeixi\([ns]\)\([^[:alnum:]]\)/\1l·ludisque\2\3/g
    s/\b\([Aa]\)l·ludeixo\([^[:alnum:]]\)/\1l·ludisc\2/g
    s/\b\([Aa]\)l·ludís\([^[:alnum:]]\)/\1l·ludira\2/g
    s/\b\([Aa]\)l·ludíssi\([mu]\|\)\([^[:alnum:]]\)/\1l·ludíre\2\3/g
    s/\b\([Aa]\)l·ludissi\([ns]\|\)\([^[:alnum:]]\)/\1l·ludire\2\3/g
    # atordir
    s/\b\([Aa]\)tordeix\(e[ns]\|\)\([^[:alnum:]]\)/\1tordix\2\3/g
    s/\b\([Aa]\)tordeixi\([^[:alnum:]]\)/\1tordisca\2/g
    s/\b\([Aa]\)tordeixi\([ns]\)\([^[:alnum:]]\)/\1tordisque\2\3/g
    s/\b\([Aa]\)tordeixo\([^[:alnum:]]\)/\1tordisc\2/g
    s/\b\([Aa]\)tordís\([^[:alnum:]]\)/\1tordira\2/g
    s/\b\([Aa]\)tordíssi\([mu]\|\)\([^[:alnum:]]\)/\1tordíre\2\3/g
    s/\b\([Aa]\)tordissi\([ns]\|\)\([^[:alnum:]]\)/\1tordire\2\3/g
    # bandir - bendir (esmenes)
    # brandir
    s/\b\([Bb]\)randeix\(e[ns]\|\)\([^[:alnum:]]\)/\1randix\2\3/g
    s/\b\([Bb]\)randeixi\([^[:alnum:]]\)/\1randisca\2/g
    s/\b\([Bb]\)randeixi\([ns]\)\([^[:alnum:]]\)/\1randisque\2\3/g
    s/\b\([Bb]\)randeixo\([^[:alnum:]]\)/\1randisc\2/g
    s/\b\([Bb]\)randís\([^[:alnum:]]\)/\1randira\2/g
    s/\b\([Bb]\)randíssi\([mu]\|\)\([^[:alnum:]]\)/\1randíre\2\3/g
    s/\b\([Bb]\)randissi\([ns]\|\)\([^[:alnum:]]\)/\1randire\2\3/g
    # candir
    s/\b\([Cc]\)andeix\(e[ns]\|\)\([^[:alnum:]]\)/\1andix\2\3/g
    s/\b\([Cc]\)andeixi\([^[:alnum:]]\)/\1andisca\2/g
    s/\b\([Cc]\)andeixi\([ns]\)\([^[:alnum:]]\)/\1andisque\2\3/g
    s/\b\([Cc]\)andeixo\([^[:alnum:]]\)/\1andisc\2/g
    s/\b\([Cc]\)andís\([^[:alnum:]]\)/\1andira\2/g
    s/\b\([Cc]\)andíssi\([mu]\|\)\([^[:alnum:]]\)/\1andíre\2\3/g
    s/\b\([Cc]\)andissi\([ns]\|\)\([^[:alnum:]]\)/\1andire\2\3/g
        # decandir
        s/\b\([Dd]\)ecandeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ecandix\2\3/g
        s/\b\([Dd]\)ecandeixi\([^[:alnum:]]\)/\1ecandisca\2/g
        s/\b\([Dd]\)ecandeixi\([ns]\)\([^[:alnum:]]\)/\1ecandisque\2\3/g
        s/\b\([Dd]\)ecandeixo\([^[:alnum:]]\)/\1ecandisc\2/g
        s/\b\([Dd]\)ecandís\([^[:alnum:]]\)/\1ecandira\2/g
        s/\b\([Dd]\)ecandíssi\([mu]\|\)\([^[:alnum:]]\)/\1ecandíre\2\3/g
        s/\b\([Dd]\)ecandissi\([ns]\|\)\([^[:alnum:]]\)/\1ecandire\2\3/g
    # compadir
    s/\b\([Cc]\)ompadeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ompadix\2\3/g
    s/\b\([Cc]\)ompadeixi\([^[:alnum:]]\)/\1ompadisca\2/g
    s/\b\([Cc]\)ompadeixi\([ns]\)\([^[:alnum:]]\)/\1ompadisque\2\3/g
    s/\b\([Cc]\)ompadeixo\([^[:alnum:]]\)/\1ompadisc\2/g
    s/\b\([Cc]\)ompadís\([^[:alnum:]]\)/\1ompadira\2/g
    s/\b\([Cc]\)ompadíssi\([mu]\|\)\([^[:alnum:]]\)/\1ompadíre\2\3/g
    s/\b\([Cc]\)ompadissi\([ns]\|\)\([^[:alnum:]]\)/\1ompadire\2\3/g
    # contradir
    s/\b\([Cc]\)ontradeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ontradix\2\3/g
    s/\b\([Cc]\)ontradeixi\([^[:alnum:]]\)/\1ontradisca\2/g
    s/\b\([Cc]\)ontradeixi\([ns]\)\([^[:alnum:]]\)/\1ontradisque\2\3/g
    s/\b\([Cc]\)ontradeixo\([^[:alnum:]]\)/\1ontradisc\2/g
    s/\b\([Cc]\)ontradís\([^[:alnum:]]\)/\1ontradira\2/g
    s/\b\([Cc]\)ontradíssi\([mu]\|\)\([^[:alnum:]]\)/\1ontradíre\2\3/g
    s/\b\([Cc]\)ontradissi\([ns]\|\)\([^[:alnum:]]\)/\1ontradire\2\3/g
    # decidir
    s/\b\([Dd]\)ecideix\(e[ns]\|\)\([^[:alnum:]]\)/\1ecidix\2\3/g
    s/\b\([Dd]\)ecideixi\([^[:alnum:]]\)/\1ecidisca\2/g
    s/\b\([Dd]\)ecideixi\([ns]\)\([^[:alnum:]]\)/\1ecidisque\2\3/g
    s/\b\([Dd]\)ecideixo\([^[:alnum:]]\)/\1ecidisc\2/g
    s/\b\([Dd]\)ecidís\([^[:alnum:]]\)/\1ecidira\2/g
    s/\b\([Dd]\)ecidíssi\([mu]\)\([^[:alnum:]]\)/\1ecidíre\2\3/g
    s/\b\([Dd]\)ecidissi\([ns]\)\([^[:alnum:]]\)/\1ecidire\2\3/g
    # predir
    s/\b\([Pp]\)redigués\([^[:alnum:]]\)/\1rediguera\2/g
    s/\b\([Pp]\)rediguéssi\([mu]\)\([^[:alnum:]]\)/\1rediguére\2\3/g
    s/\b\([Pp]\)rediguessi\([ns]\)\([^[:alnum:]]\)/\1rediguere\2\3/g
    s/\b\([Pp]\)redigui\([^[:alnum:]]\)/\1rediga\2/g
    s/\b\([Pp]\)redigui\([ns]\)\([^[:alnum:]]\)/\1redigue\2\3/g
# dirigir
s/\b\([Dd]\)irigeix\(e[ns]\|\)\([^[:alnum:]]\)/\1irigix\2\3/g
s/\b\([Dd]\)irigeixi\([^[:alnum:]]\)/\1irigisca\2/g
s/\b\([Dd]\)irigeixi\([ns]\)\([^[:alnum:]]\)/\1irigisque\2\3/g
s/\b\([Dd]\)irigeixo\([^[:alnum:]]\)/\1irigisc\2/g
s/\b\([Dd]\)irigís\([^[:alnum:]]\)/\1irigira\2/g
s/\b\([Dd]\)irigíssi\([mu]\|\)\([^[:alnum:]]\)/\1irigíre\2\3/g
s/\b\([Dd]\)irigissi\([ns]\|\)\([^[:alnum:]]\)/\1irigire\2\3/g
    # radiodirigir
    s/\b\([Rr]\)adiodirigeix\(e[ns]\|\)\([^[:alnum:]]\)/\1adiodirigix\2\3/g
    s/\b\([Rr]\)adiodirigeixi\([^[:alnum:]]\)/\1adiodirigisca\2/g
    s/\b\([Rr]\)adiodirigeixi\([ns]\)\([^[:alnum:]]\)/\1adiodirigisque\2\3/g
    s/\b\([Rr]\)adiodirigeixo\([^[:alnum:]]\)/\1adiodirigisc\2/g
    s/\b\([Rr]\)adiodirigís\([^[:alnum:]]\)/\1adiodirigira\2/g
    s/\b\([Rr]\)adiodirigíssi\([mu]\|\)\([^[:alnum:]]\)/\1adiodirigíre\2\3/g
    s/\b\([Rr]\)adiodirigissi\([ns]\|\)\([^[:alnum:]]\)/\1adiodirigire\2\3/g
    # TODO: no
    # redirigir
    s/\b\([Rr]\)edirigeix\(e[ns]\|\)\([^[:alnum:]]\)/\1edirigix\2\3/g
    s/\b\([Rr]\)edirigeixi\([^[:alnum:]]\)/\1edirigisca\2/g
    s/\b\([Rr]\)edirigeixi\([ns]\)\([^[:alnum:]]\)/\1edirigisque\2\3/g
    s/\b\([Rr]\)edirigeixo\([^[:alnum:]]\)/\1edirigisc\2/g
    s/\b\([Rr]\)edirigís\([^[:alnum:]]\)/\1edirigira\2/g
    s/\b\([Rr]\)edirigíssi\([mu]\|\)\([^[:alnum:]]\)/\1edirigíre\2\3/g
    s/\b\([Rr]\)edirigissi\([ns]\|\)\([^[:alnum:]]\)/\1edirigire\2\3/g
    # teledirigir
    s/\b\([Tt]\)eledirigeix\(e[ns]\|\)\([^[:alnum:]]\)/\1eledirigix\2\3/g
    s/\b\([Tt]\)eledirigeixi\([^[:alnum:]]\)/\1eledirigisca\2/g
    s/\b\([Tt]\)eledirigeixi\([ns]\)\([^[:alnum:]]\)/\1eledirigisque\2\3/g
    s/\b\([Tt]\)eledirigeixo\([^[:alnum:]]\)/\1eledirigisc\2/g
    s/\b\([Tt]\)eledirigís\([^[:alnum:]]\)/\1eledirigira\2/g
    s/\b\([Tt]\)eledirigíssi\([mu]\|\)\([^[:alnum:]]\)/\1eledirigíre\2\3/g
    s/\b\([Tt]\)eledirigissi\([ns]\|\)\([^[:alnum:]]\)/\1eledirigire\2\3/g
# dirimir
s/\b\([Dd]\)irimeix\([^[:alnum:]]\)/\1irimix\2/g
s/\b\([Dd]\)irim\(en\|\)\([^[:alnum:]]\)/\1irimix\2\3/g
s/\b\([Dd]\)irimi\([^[:alnum:]]\)/\1irimisca\2/g
s/\b\([Dd]\)irimi\([ns]\)\([^[:alnum:]]\)/\1irimisque\2\3/g
s/\b\([Dd]\)irimís\([^[:alnum:]]\)/\1irimira\2/g
s/\b\([Dd]\)irimíssi\([mu]\|\)\([^[:alnum:]]\)/\1irimíre\2\3/g
s/\b\([Dd]\)irimissi\([ns]\|\)\([^[:alnum:]]\)/\1irimire\2\3/g
s/\b\([Dd]\)irimo\([^[:alnum:]]\)/\1irimisc\2/g
s/\b\([Dd]\)irims\([^[:alnum:]]\)/\1irimixes\2/g
s/\b\([Dd]\)iscos\([^[:alnum:]]\)/\1iscs\2/g
# disminuir
s/\b\([Dd]\)isminueix\(e[ns]\|\)\([^[:alnum:]]\)/\1isminuïx\2\3/g
s/\b\([Dd]\)isminueixi\([^[:alnum:]]\)/\1isminuïsca\2/g
s/\b\([Dd]\)isminueixi\([ns]\)\([^[:alnum:]]\)/\1isminuïsque\2\3/g
s/\b\([Dd]\)isminueixo\([^[:alnum:]]\)/\1isminuïsc\2/g
s/\b\([Dd]\)isminuís\([^[:alnum:]]\)/\1isminuïra\2/g
s/\b\([Dd]\)isminuíssi\([mu]\|\)\([^[:alnum:]]\)/\1isminuíre\2\3/g
s/\b\([Dd]\)isminuïssi\([ns]\|\)\([^[:alnum:]]\)/\1isminuïre\2\3/g
# dispersar
s/\b\([Dd]\)ispersés\([^[:alnum:]]\)/\1ispersara\2/g
s/\b\([Dd]\)isperséssi\([mu]\|\)\([^[:alnum:]]\)/\1ispersàre\2\3/g
s/\b\([Dd]\)ispersessi\([ns]\|\)\([^[:alnum:]]\)/\1ispersare\2\3/g
s/\b\([Dd]\)ispers\([io]\)\([^[:alnum:]]\)/\1isperse\3/g
s/\b\([Dd]\)ispersi\([ns]\)\([^[:alnum:]]\)/\1isperse\2\3/g
# dissenyar
s/\b\([Dd]\)issenyés\([^[:alnum:]]\)/\1issenyara\2/g
s/\b\([Dd]\)issenyéssi\([mu]\|\)\([^[:alnum:]]\)/\1issenyàre\2\3/g
s/\b\([Dd]\)issenyessi\([ns]\|\)\([^[:alnum:]]\)/\1issenyare\2\3/g
s/\b\([Dd]\)isseny\([io]\)\([^[:alnum:]]\)/\1issenye\3/g
s/\b\([Dd]\)issenyi\([ns]\)\([^[:alnum:]]\)/\1issenye\2\3/g
# distingir
s/\b\([Dd]\)istingeix\(e[ns]\|\)\([^[:alnum:]]\)/\1istingix\2\3/g
s/\b\([Dd]\)istingeixi\([^[:alnum:]]\)/\1istingisca\2/g
s/\b\([Dd]\)istingeixi\([ns]\)\([^[:alnum:]]\)/\1istingisque\2\3/g
s/\b\([Dd]\)istingeixo\([^[:alnum:]]\)/\1istingisc\2/g
s/\b\([Dd]\)istingís\([^[:alnum:]]\)/\1istingira\2/g
s/\b\([Dd]\)istingíssi\([mu]\|\)\([^[:alnum:]]\)/\1istingíre\2\3/g
s/\b\([Dd]\)istingissi\([ns]\|\)\([^[:alnum:]]\)/\1istingire\2\3/g
    # subdistingir
    s/\b\([Ss]\)ubdistingeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ubdistingix\2\3/g
    s/\b\([Ss]\)ubdistingeixi\([^[:alnum:]]\)/\1ubdistingisca\2/g
    s/\b\([Ss]\)ubdistingeixi\([ns]\)\([^[:alnum:]]\)/\1ubdistingisque\2\3/g
    s/\b\([Ss]\)ubdistingeixo\([^[:alnum:]]\)/\1ubdistingisc\2/g
    s/\b\([Ss]\)ubdistingís\([^[:alnum:]]\)/\1ubdistingira\2/g
    s/\b\([Ss]\)ubdistingíssi\([mu]\|\)\([^[:alnum:]]\)/\1ubdistingíre\2\3/g
    s/\b\([Ss]\)ubdistingissi\([ns]\|\)\([^[:alnum:]]\)/\1ubdistingire\2\3/g
# divertir
s/\b\([Dd]\)iverteix\(e[ns]\|\)\([^[:alnum:]]\)/\1ivertix\2\3/g
s/\b\([Dd]\)iverteixi\([^[:alnum:]]\)/\1ivertisca\2/g
s/\b\([Dd]\)iverteixi\([ns]\)\([^[:alnum:]]\)/\1ivertisque\2\3/g
s/\b\([Dd]\)iverteixo\([^[:alnum:]]\)/\1ivertisc\2/g
s/\b\([Dd]\)ivertís\([^[:alnum:]]\)/\1ivertira\2/g
s/\b\([Dd]\)ivertíssi\([mu]\|\)\([^[:alnum:]]\)/\1ivertíre\2\3/g
s/\b\([Dd]\)ivertissi\([ns]\|\)\([^[:alnum:]]\)/\1ivertire\2\3/g
# dividir
s/\b\([Dd]\)ivideix\(e[ns]\|\)\([^[:alnum:]]\)/\1ividix\2\3/g
s/\b\([Dd]\)ivideixi\([^[:alnum:]]\)/\1ividisca\2/g
s/\b\([Dd]\)ivideixi\([ns]\)\([^[:alnum:]]\)/\1ividisque\2\3/g
s/\b\([Dd]\)ivideixo\([^[:alnum:]]\)/\1ividisc\2/g
s/\b\([Dd]\)ividís\([^[:alnum:]]\)/\1ividira\2/g
s/\b\([Dd]\)ividíssi\([mu]\|\)\([^[:alnum:]]\)/\1ividíre\2\3/g
s/\b\([Dd]\)ividissi\([ns]\|\)\([^[:alnum:]]\)/\1ividire\2\3/g
    # subdividir
    s/\b\([Ss]\)ubdivideix\(e[ns]\|\)\([^[:alnum:]]\)/\1ubdividix\2\3/g
    s/\b\([Ss]\)ubdivideixi\([^[:alnum:]]\)/\1ubdividisca\2/g
    s/\b\([Ss]\)ubdivideixi\([ns]\)\([^[:alnum:]]\)/\1ubdividisque\2\3/g
    s/\b\([Ss]\)ubdivideixo\([^[:alnum:]]\)/\1ubdividisc\2/g
    s/\b\([Ss]\)ubdividís\([^[:alnum:]]\)/\1ubdividira\2/g
    s/\b\([Ss]\)ubdividíssi\([mu]\|\)\([^[:alnum:]]\)/\1ubdividíre\2\3/g
    s/\b\([Ss]\)ubdividissi\([ns]\|\)\([^[:alnum:]]\)/\1ubdividire\2\3/g
# documentar
s/\b\([Dd]\)ocumentés\([^[:alnum:]]\)/\1ocumentara\2/g
s/\b\([Dd]\)ocumentéssi\([mu]\|\)\([^[:alnum:]]\)/\1ocumentàre\2\3/g
s/\b\([Dd]\)ocumentessi\([ns]\|\)\([^[:alnum:]]\)/\1ocumentare\2\3/g
s/\b\([Dd]\)ocument\([io]\)\([^[:alnum:]]\)/\1ocumente\3/g
s/\b\([Dd]\)ocumenti\([ns]\)\([^[:alnum:]]\)/\1ocumente\2\3/g
s/\b\([Dd]\)odecanès\([^[:alnum:]]\)/\1odecanés\2/g
# dolent (esmenes)
s/\bDolent\([^[:alnum:]]\)/Roín\1/g
s/\bdolent\([^[:alnum:]]\)/roín\1/g
s/\bDolent\(a\|es\|s\)\([^[:alnum:]]\)/Roïn\1\2/g
s/\bdolent\(a\|es\|s\)\([^[:alnum:]]\)/roïn\1\2/g
# donar
s/\b\([Dd]\)onés\([^[:alnum:]]\)/\1onara\2/g
s/\b\([Dd]\)onéssi\([mu]\|\)\([^[:alnum:]]\)/\1onàre\2\3/g
s/\b\([Dd]\)onessi\([ns]\|\)\([^[:alnum:]]\)/\1onare\2\3/g
s/\b\([Dd]\)on\([io]\)\([^[:alnum:]]\)/\1one\3/g
s/\b\([Dd]\)oni\([ns]\)\([^[:alnum:]]\)/\1one\2\3/g
    # abandonar
    s/\b\([Aa]\)bandonés\([^[:alnum:]]\)/\1bandonara\2/g
    s/\b\([Aa]\)bandonéssi\([mu]\)\([^[:alnum:]]\)/\1bandonàre\2\3/g
    s/\b\([Aa]\)bandonessi\([ns]\)\([^[:alnum:]]\)/\1bandonare\2\3/g
    s/\b\([Aa]\)bandon\([io]\)\([^[:alnum:]]\)/\1bandone\3/g
    s/\b\([Aa]\)bandoni\([ns]\)\([^[:alnum:]]\)/\1bandone\2\3/g
    # acordonar
    s/\b\([Aa]\)cordonés\([^[:alnum:]]\)/\1cordonara\2/g
    s/\b\([Aa]\)cordonéssi\([mu]\)\([^[:alnum:]]\)/\1cordonàre\2\3/g
    s/\b\([Aa]\)cordonessi\([ns]\)\([^[:alnum:]]\)/\1cordonare\2\3/g
    s/\b\([Aa]\)cordon\([io]\)\([^[:alnum:]]\)/\1cordone\3/g
    s/\b\([Aa]\)cordoni\([ns]\)\([^[:alnum:]]\)/\1cordone\2\3/g
        # encordonar
        s/\b\([Ee]\)ncordonés\([^[:alnum:]]\)/\1ncordonara\2/g
        s/\b\([Ee]\)ncordonéssi\([mu]\)\([^[:alnum:]]\)/\1ncordonàre\2\3/g
        s/\b\([Ee]\)ncordonessi\([ns]\)\([^[:alnum:]]\)/\1ncordonare\2\3/g
        s/\b\([Ee]\)ncordon\([io]\)\([^[:alnum:]]\)/\1ncordone\3/g
        s/\b\([Ee]\)ncordoni\([ns]\)\([^[:alnum:]]\)/\1ncordone\2\3/g
    # condonar
    s/\b\([Cc]\)ondonés\([^[:alnum:]]\)/\1ondonara\2/g
    s/\b\([Cc]\)ondonéssi\([mu]\)\([^[:alnum:]]\)/\1ondonàre\2\3/g
    s/\b\([Cc]\)ondonessi\([ns]\)\([^[:alnum:]]\)/\1ondonare\2\3/g
    s/\b\([Cc]\)ondon\([io]\)\([^[:alnum:]]\)/\1ondone\3/g
    s/\b\([Cc]\)ondoni\([ns]\)\([^[:alnum:]]\)/\1ondone\2\3/g
    # desdonar - desnonar
    s/\b\([Dd]\)es\([dn]\)onés\([^[:alnum:]]\)/\1esdonara\2/g
    s/\b\([Dd]\)es\([dn]\)onéssi\([mu]\)\([^[:alnum:]]\)/\1es\2onàre\3\4/g
    s/\b\([Dd]\)es\([dn]\)onessi\([ns]\)\([^[:alnum:]]\)/\1es\2onare\3\4/g
    s/\b\([Dd]\)es\([dn]\)on\([io]\)\([^[:alnum:]]\)/\1es\2one\4/g
    s/\b\([Dd]\)es\([dn]\)oni\([ns]\)\([^[:alnum:]]\)/\1es\2one\3\4/g
    # enllardonar
    s/\b\([Ee]\)nllardonés\([^[:alnum:]]\)/\1nllardonara\2/g
    s/\b\([Ee]\)nllardonéssi\([mu]\)\([^[:alnum:]]\)/\1nllardonàre\2\3/g
    s/\b\([Ee]\)nllardonessi\([ns]\)\([^[:alnum:]]\)/\1nllardonare\2\3/g
    s/\b\([Ee]\)nllardon\([io]\)\([^[:alnum:]]\)/\1nllardone\3/g
    s/\b\([Ee]\)nllardoni\([ns]\)\([^[:alnum:]]\)/\1nllardone\2\3/g
    # guardonar
    s/\b\([Gg]\)uardonés\([^[:alnum:]]\)/\1uardonara\2/g
    s/\b\([Gg]\)uardonéssi\([mu]\)\([^[:alnum:]]\)/\1ouadonàre\2\3/g
    s/\b\([Gg]\)uardonessi\([ns]\)\([^[:alnum:]]\)/\1uardonare\2\3/g
    s/\b\([Gg]\)uardon\([io]\)\([^[:alnum:]]\)/\1uardone\3/g
    s/\b\([Gg]\)uardoni\([ns]\)\([^[:alnum:]]\)/\1uardone\2\3/g
        # reguardonar
        s/\b\([Rr]\)eguardonés\([^[:alnum:]]\)/\1eguardonara\2/g
        s/\b\([Rr]\)eguardonéssi\([mu]\)\([^[:alnum:]]\)/\1egouadonàre\2\3/g
        s/\b\([Rr]\)eguardonessi\([ns]\)\([^[:alnum:]]\)/\1eguardonare\2\3/g
        s/\b\([Rr]\)eguardon\([io]\)\([^[:alnum:]]\)/\1eguardone\3/g
        s/\b\([Rr]\)eguardoni\([ns]\)\([^[:alnum:]]\)/\1eguardone\2\3/g
    # perdonar
    s/\b\([Pp]\)erdonés\([^[:alnum:]]\)/\1erdonara\2/g
    s/\b\([Pp]\)erdonéssi\([mu]\)\([^[:alnum:]]\)/\1erdonàre\2\3/g
    s/\b\([Pp]\)erdonessi\([ns]\)\([^[:alnum:]]\)/\1erdonare\2\3/g
    s/\b\([Pp]\)erdon\([io]\)\([^[:alnum:]]\)/\1erdone\3/g
    s/\b\([Pp]\)erdoni\([ns]\)\([^[:alnum:]]\)/\1erdone\2\3/g
# dormir
s/\b\([Dd]\)ormi\([^[:alnum:]]\)/\1orma\2/g
s/\b\([Dd]\)ormi\([ns]\)\([^[:alnum:]]\)/\1orme\2\3/g
s/\b\([Dd]\)ormís\([^[:alnum:]]\)/\1ormira\2/g
s/\b\([Dd]\)ormíssi\([mu]\|\)\([^[:alnum:]]\)/\1ormíre\2\3/g
s/\b\([Dd]\)ormissi\([ns]\|\)\([^[:alnum:]]\)/\1ormire\2\3/g
s/\b\([Dd]\)ormo\([^[:alnum:]]\)/\1orm\2/g
    # adormir
    s/\b\([Aa]\)dormi\([^[:alnum:]]\)/\1dorma\2/g
    s/\b\([Aa]\)dormi\([ns]\)\([^[:alnum:]]\)/\1dorme\2\3/g
    s/\b\([Aa]\)dormís\([^[:alnum:]]\)/\1dormira\2/g
    s/\b\([Aa]\)dormíssi\([mu]\|\)\([^[:alnum:]]\)/\1dormíre\2\3/g
    s/\b\([Aa]\)dormissi\([ns]\|\)\([^[:alnum:]]\)/\1dormire\2\3/g
    s/\b\([Aa]\)dormo\([^[:alnum:]]\)/\1dorm\2/g
# dramatitzar
s/\b\([Dd]\)ramatitzés\([^[:alnum:]]\)/\1ramatitzara\2/g
s/\b\([Dd]\)ramatitzéssi\([mu]\|\)\([^[:alnum:]]\)/\1ramatitzàre\2\3/g
s/\b\([Dd]\)ramatitzessi\([ns]\|\)\([^[:alnum:]]\)/\1ramatitzare\2\3/g
s/\b\([Dd]\)ramatitz\([io]\)\([^[:alnum:]]\)/\1ramatitze\3/g
s/\b\([Dd]\)ramatitzi\([ns]\)\([^[:alnum:]]\)/\1ramatitze\2\3/g
    # desdramatitzar
    s/\b\([Dd]\)esdramatitzés\([^[:alnum:]]\)/\1esdramatitzara\2/g
    s/\b\([Dd]\)esdramatitzéssi\([mu]\|\)\([^[:alnum:]]\)/\1esdramatitzàre\2\3/g
    s/\b\([Dd]\)esdramatitzessi\([ns]\|\)\([^[:alnum:]]\)/\1esdramatitzare\2\3/g
    s/\b\([Dd]\)esdramatitz\([io]\)\([^[:alnum:]]\)/\1esdramatitze\3/g
    s/\b\([Dd]\)esdramatitzi\([ns]\)\([^[:alnum:]]\)/\1esdramatitze\2\3/g
s/\bDrap\(s\|\) de cuina\([^[:alnum:]]\)/Torcamans\2/g
s/\bdrap\(s\|\) de cuina\([^[:alnum:]]\)/torcamans\2/g
# dubtar
s/\b\([Dd]\)ubtés\([^[:alnum:]]\)/\1ubtara\2/g
s/\b\([Dd]\)ubtéssi\([mu]\|\)\([^[:alnum:]]\)/\1ubtàre\2\3/g
s/\b\([Dd]\)ubtessi\([ns]\|\)\([^[:alnum:]]\)/\1ubtare\2\3/g
s/\b\([Dd]\)ubt\([io]\)\([^[:alnum:]]\)/\1ubte\3/g
s/\b\([Dd]\)ubti\([ns]\)\([^[:alnum:]]\)/\1ubte\2\3/g
# dur
s/\b\([Dd]\)ugués\([^[:alnum:]]\)/\1uguera\2/g
s/\b\([Dd]\)uguéssi\([mu]\|\)\([^[:alnum:]]\)/\1uguére\2\3/g
s/\b\([Dd]\)uguessi\([ns]\|\)\([^[:alnum:]]\)/\1uguere\2\3/g
s/\b\([Dd]\)ugui\([^[:alnum:]]\)/\1uga\2/g
s/\b\([Dd]\)ugui\([ns]\|\)\([^[:alnum:]]\)/\1ugue\2\3/g
s/\b\([Dd]\)uu\(s\|\)\([^[:alnum:]]\)/\1u\2\3/g
# durar (esmenes)
s/\b\([Dd]\)urada\([^[:alnum:]]\)/\1uració\2/g
s/\b\([Dd]\)urés\([^[:alnum:]]\)/\1urara\2/g
s/\b\([Dd]\)uréssi\([mu]\|\)\([^[:alnum:]]\)/\1uràre\2\3/g
s/\b\([Dd]\)uressi\([ns]\|\)\([^[:alnum:]]\)/\1urare\2\3/g
s/\b\([Dd]\)ur\([io]\)\([^[:alnum:]]\)/\1ure\3/g
s/\b\([Dd]\)uri\([ns]\)\([^[:alnum:]]\)/\1ure\2\3/g
s/\b\([Dd]\)urrès\([^[:alnum:]]\)/\1urrés\2/g
# e
#
# editar
s/\b\([Ee]\)dités\([^[:alnum:]]\)/\1ditara\2/g
s/\b\([Ee]\)ditéssi\([mu]\|\)\([^[:alnum:]]\)/\1ditàre\2\3/g
s/\b\([Ee]\)ditessi\([ns]\|\)\([^[:alnum:]]\)/\1ditare\2\3/g
s/\b\([Ee]\)dit\([io]\)\([^[:alnum:]]\)/\1dite\3/g
s/\b\([Ee]\)diti\([ns]\)\([^[:alnum:]]\)/\1dite\2\3/g
    # acreditar
    s/\b\([Aa]\)credités\([^[:alnum:]]\)/\1creditara\2/g
    s/\b\([Aa]\)creditéssi\([mu]\|\)\([^[:alnum:]]\)/\1creditàre\2\3/g
    s/\b\([Aa]\)creditessi\([ns]\|\)\([^[:alnum:]]\)/\1creditare\2\3/g
    s/\b\([Aa]\)credit\([io]\)\([^[:alnum:]]\)/\1credite\3/g
    s/\b\([Aa]\)crediti\([ns]\)\([^[:alnum:]]\)/\1credite\2\3/g
        # desacreditar
        s/\b\([Dd]\)esacredités\([^[:alnum:]]\)/\1esacreditara\2/g
        s/\b\([Dd]\)esacreditéssi\([mu]\|\)\([^[:alnum:]]\)/\1esacreditàre\2\3/g
        s/\b\([Dd]\)esacreditessi\([ns]\|\)\([^[:alnum:]]\)/\1esacreditare\2\3/g
        s/\b\([Dd]\)esacredit\([io]\)\([^[:alnum:]]\)/\1esacredite\3/g
        s/\b\([Dd]\)esacrediti\([ns]\)\([^[:alnum:]]\)/\1esacredite\2\3/g
    # coeditar
    s/\b\([Cc]\)oedités\([^[:alnum:]]\)/\1oeditara\2/g
    s/\b\([Cc]\)oeditéssi\([mu]\|\)\([^[:alnum:]]\)/\1oeditàre\2\3/g
    s/\b\([Cc]\)oeditessi\([ns]\|\)\([^[:alnum:]]\)/\1oeditare\2\3/g
    s/\b\([Cc]\)oedit\([io]\)\([^[:alnum:]]\)/\1oedite\3/g
    s/\b\([Cc]\)oediti\([ns]\)\([^[:alnum:]]\)/\1oedite\2\3/g
    # meditar
    s/\b\([Mm]\)edités\([^[:alnum:]]\)/\1editara\2/g
    s/\b\([Mm]\)editéssi\([mu]\|\)\([^[:alnum:]]\)/\1editàre\2\3/g
    s/\b\([Mm]\)editessi\([ns]\|\)\([^[:alnum:]]\)/\1editare\2\3/g
    s/\b\([Mm]\)edit\([io]\)\([^[:alnum:]]\)/\1edite\3/g
    s/\b\([Mm]\)editi\([ns]\)\([^[:alnum:]]\)/\1edite\2\3/g
        # premeditar
        s/\b\([Pp]\)remedités\([^[:alnum:]]\)/\1remeditara\2/g
        s/\b\([Pp]\)remeditéssi\([mu]\|\)\([^[:alnum:]]\)/\rem1editàre\2\3/g
        s/\b\([Pp]\)remeditessi\([ns]\|\)\([^[:alnum:]]\)/\1remeditare\2\3/g
        s/\b\([Pp]\)remedit\([io]\)\([^[:alnum:]]\)/\1remedite\3/g
        s/\b\([Pp]\)remediti\([ns]\)\([^[:alnum:]]\)/\1remedite\2\3/g
    # reeditar
    s/\b\([Rr]\)eedités\([^[:alnum:]]\)/\1eeditara\2/g
    s/\b\([Rr]\)eeditéssi\([mu]\|\)\([^[:alnum:]]\)/\1eeditàre\2\3/g
    s/\b\([Rr]\)eeditessi\([ns]\|\)\([^[:alnum:]]\)/\1eeditare\2\3/g
    s/\b\([Rr]\)eedit\([io]\)\([^[:alnum:]]\)/\1eedite\3/g
    s/\b\([Rr]\)eediti\([ns]\)\([^[:alnum:]]\)/\1eedite\2\3/g
    # supeditar
    s/\b\([Ss]\)upedités\([^[:alnum:]]\)/\1upeditara\2/g
    s/\b\([Ss]\)upeditéssi\([mu]\|\)\([^[:alnum:]]\)/\1upeditàre\2\3/g
    s/\b\([Ss]\)upeditessi\([ns]\|\)\([^[:alnum:]]\)/\1upeditare\2\3/g
    s/\b\([Ss]\)upedit\([io]\)\([^[:alnum:]]\)/\1upedite\3/g
    s/\b\([Ss]\)upediti\([ns]\)\([^[:alnum:]]\)/\1upedite\2\3/g
# efectuar
s/\b\([Ee]\)fectués\([^[:alnum:]]\)/\1fectuara\2/g
s/\b\([Ee]\)fectuéssi\([mu]\)\([^[:alnum:]]\)/\1fectuàre\2\3/g
s/\b\([Ee]\)fectuessi\([ns]\)\([^[:alnum:]]\)/\1fectuare\2\3/g
s/\b\([Ee]\)fectu\([ïo]\)\([^[:alnum:]]\)/\1fectue\3/g
s/\b\([Ee]\)fectuï\([ns]\)\([^[:alnum:]]\)/\1fectue\2\3/g
s/\b\([Ee]\)l·lipsi\(s\|\)\([^[:alnum:]]\)/\1l·lipse\2\3/g
# elaborar
s/\b\([Ee]\)laborés\([^[:alnum:]]\)/\1laborara\2/g
s/\b\([Ee]\)laboréssi\([mu]\|\)\([^[:alnum:]]\)/\1laboràre\2\3/g
s/\b\([Ee]\)laboressi\([ns]\|\)\([^[:alnum:]]\)/\1laborare\2\3/g
s/\b\([Ee]\)labor\([io]\)\([^[:alnum:]]\)/\1labore\3/g
s/\b\([Ee]\)labori\([ns]\)\([^[:alnum:]]\)/\1labore\2\3/g
# elevar
s/\b\([Ee]\)levés\([^[:alnum:]]\)/\1levara\2/g
s/\b\([Ee]\)levéssi\([mu]\|\)\([^[:alnum:]]\)/\1levàre\2\3/g
s/\b\([Ee]\)levessi\([ns]\|\)\([^[:alnum:]]\)/\1levare\2\3/g
s/\b\([Ee]\)lev\([io]\)\([^[:alnum:]]\)/\1leve\3/g
s/\b\([Ee]\)levi\([ns]\)\([^[:alnum:]]\)/\1leve\2\3/g
# elidir - eludir (esmenes)
# eliminar
s/\b\([Ee]\)liminés\([^[:alnum:]]\)/\1liminara\2/g
s/\b\([Ee]\)liminéssi\([mu]\|\)\([^[:alnum:]]\)/\1liminàre\2\3/g
s/\b\([Ee]\)liminessi\([ns]\|\)\([^[:alnum:]]\)/\1liminare\2\3/g
s/\b\([Ee]\)limin\([io]\)\([^[:alnum:]]\)/\1limine\3/g
s/\b\([Ee]\)limini\([ns]\)\([^[:alnum:]]\)/\1limine\2\3/g
# embruixar
s/\b\([Ee]\)mbruixés\([^[:alnum:]]\)/\1mbruixara\2/g
s/\b\([Ee]\)mbruixéssi\([mu]\|\)\([^[:alnum:]]\)/\1mbruixàre\2\3/g
s/\b\([Ee]\)mbruixessi\([ns]\|\)\([^[:alnum:]]\)/\1mbruixare\2\3/g
s/\b\([Ee]\)mbruix\([io]\)\([^[:alnum:]]\)/\1mbruixe\3/g
s/\b\([Ee]\)mbruixi\([ns]\|\)\([^[:alnum:]]\)/\1mbruixe\2\3/g
    # desembruixar
    s/\b\([Dd]\)esembruixés\([^[:alnum:]]\)/\1esembruixara\2/g
    s/\b\([Dd]\)esembruixéssi\([mu]\|\)\([^[:alnum:]]\)/\1esembruixàre\2\3/g
    s/\b\([Dd]\)esembruixessi\([ns]\|\)\([^[:alnum:]]\)/\1esembruixare\2\3/g
    s/\b\([Dd]\)esembruix\([io]\)\([^[:alnum:]]\)/\1esembruixe\3/g
    s/\b\([Dd]\)esembruixi\([ns]\|\)\([^[:alnum:]]\)/\1esembruixe\2\3/g
# embolicar
s/\b\([Ee]\)mboliqués\([^[:alnum:]]\)/\1mbolicara\2/g
s/\b\([Ee]\)mboliquéssi\([mu]\|\)\([^[:alnum:]]\)/\1mbolicàre\2\3/g
s/\b\([Ee]\)mboliquessi\([ns]\|\)\([^[:alnum:]]\)/\1mbolicare\2\3/g
s/\b\([Ee]\)mbolico\([^[:alnum:]]\)/\1mbolique\2/g
s/\b\([Ee]\)mboliqui\([ns]\|\)\([^[:alnum:]]\)/\1mbolique\2\3/g
    # desembolicar
    s/\b\([Dd]\)esemboliqués\([^[:alnum:]]\)/\1esembolicara\2/g
    s/\b\([Dd]\)esemboliquéssi\([mu]\|\)\([^[:alnum:]]\)/\1esembolicàre\2\3/g
    s/\b\([Dd]\)esemboliquessi\([ns]\|\)\([^[:alnum:]]\)/\1esembolicare\2\3/g
    s/\b\([Dd]\)esembolico\([^[:alnum:]]\)/\1esembolique\2/g
    s/\b\([Dd]\)esemboliqui\([ns]\|\)\([^[:alnum:]]\)/\1esembolique\2\3/g
# emergir
s/\b\([Ee]\)mergeix\(e[ns]\|\)\([^[:alnum:]]\)/\1mergix\2\3/g
s/\b\([Ee]\)mergeixi\([^[:alnum:]]\)/\1mergisca\2/g
s/\b\([Ee]\)mergeixi\([ns]\)\([^[:alnum:]]\)/\1mergisque\2\3/g
s/\b\([Ee]\)mergeixo\([^[:alnum:]]\)/\1mergisc\2/g
s/\b\([Ee]\)mergís\([^[:alnum:]]\)/\1mergira\2/g
s/\b\([Ee]\)mergíssi\([mu]\|\)\([^[:alnum:]]\)/\1mergíre\2\3/g
s/\b\([Ee]\)mergissi\([ns]\|\)\([^[:alnum:]]\)/\1mergire\2\3/g
    # immergir
    s/\b\([Ii]\)mmergeix\(e[ns]\|\)\([^[:alnum:]]\)/\1mmergix\2\3/g
    s/\b\([Ii]\)mmergeixi\([^[:alnum:]]\)/\1mmergisca\2/g
    s/\b\([Ii]\)mmergeixi\([ns]\)\([^[:alnum:]]\)/\1mmergisque\2\3/g
    s/\b\([Ii]\)mmergeixo\([^[:alnum:]]\)/\1mmergisc\2/g
    s/\b\([Ii]\)mmergís\([^[:alnum:]]\)/\1mmergira\2/g
    s/\b\([Ii]\)mmergíssi\([mu]\|\)\([^[:alnum:]]\)/\1mmergíre\2\3/g
    s/\b\([Ii]\)mmergissi\([ns]\|\)\([^[:alnum:]]\)/\1mmergire\2\3/g
    # submergir
    s/\b\([Ss]\)ubmergeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ubmergix\2\3/g
    s/\b\([Ss]\)ubmergeixi\([^[:alnum:]]\)/\1ubmergisca\2/g
    s/\b\([Ss]\)ubmergeixi\([ns]\)\([^[:alnum:]]\)/\1ubmergisque\2\3/g
    s/\b\([Ss]\)ubmergeixo\([^[:alnum:]]\)/\1ubmergisc\2/g
    s/\b\([Ss]\)ubmergís\([^[:alnum:]]\)/\1ubmergira\2/g
    s/\b\([Ss]\)ubmergíssi\([mu]\|\)\([^[:alnum:]]\)/\1ubmergíre\2\3/g
    s/\b\([Ss]\)ubmergissi\([ns]\|\)\([^[:alnum:]]\)/\1ubmergire\2\3/g
# emfatitzar
s/\b\([Ee]\)mfatitzés\([^[:alnum:]]\)/\1mfatitzara\2/g
s/\b\([Ee]\)mfatitzéssi\([mu]\|\)\([^[:alnum:]]\)/\1mfatitzàre\2\3/g
s/\b\([Ee]\)mfatitzessi\([ns]\|\)\([^[:alnum:]]\)/\1mfatitzare\2\3/g
s/\b\([Ee]\)mfatitz\([io]\)\([^[:alnum:]]\)/\1mfatitze\3/g
s/\b\([Ee]\)mfatitzi\([ns]\)\([^[:alnum:]]\)/\1mfatitze\2\3/g
# emmagatzemar
s/\b\([Ee]\)mmagatzemés\([^[:alnum:]]\)/\1mmagatzemara\2/g
s/\b\([Ee]\)mmagatzeméssi\([mu]\|\)\([^[:alnum:]]\)/\1mmagatzemàre\2\3/g
s/\b\([Ee]\)mmagatzemessi\([ns]\|\)\([^[:alnum:]]\)/\1mmagatzemare\2\3/g
s/\b\([Ee]\)mmagatzem\([io]\)\([^[:alnum:]]\)/\1mmagatzeme\3/g
s/\b\([Ee]\)mmagatzemi\([ns]\)\([^[:alnum:]]\)/\1mmagatzeme\2\3/g
# emmascarar
s/\b\([Ee]\)mmascarés\([^[:alnum:]]\)/\1mmascarara\2/g
s/\b\([Ee]\)mmascaréssi\([mu]\)\([^[:alnum:]]\)/\1mmascaràre\2\3/g
s/\b\([Ee]\)mmascaressi\([ns]\)\([^[:alnum:]]\)/\1mmascarare\2\3/g
s/\b\([Ee]\)mmascar\([io]\)\([^[:alnum:]]\)/\1mmascare\3/g
s/\b\([Ee]\)mmascari\([ns]\)\([^[:alnum:]]\)/\1mmascare\2\3/g
    # desemmascarar
    s/\b\([Dd]\)esemmascarés\([^[:alnum:]]\)/\1esemmascarara\2/g
    s/\b\([Dd]\)esemmascaréssi\([mu]\)\([^[:alnum:]]\)/\1esemmascaràre\2\3/g
    s/\b\([Dd]\)esemmascaressi\([ns]\)\([^[:alnum:]]\)/\1esemmascarare\2\3/g
    s/\b\([Dd]\)esemmascar\([io]\)\([^[:alnum:]]\)/\1esemmascare\3/g
    s/\b\([Dd]\)esemmascari\([ns]\)\([^[:alnum:]]\)/\1esemmascare\2\3/g
# emmirallar
s/\b\([Ee]\)mmirallés\([^[:alnum:]]\)/\1mmirallara\2/g
s/\b\([Ee]\)mmiralléssi\([mu]\)\([^[:alnum:]]\)/\1mmirallàre\2\3/g
s/\b\([Ee]\)mmirallessi\([ns]\)\([^[:alnum:]]\)/\1mmirallare\2\3/g
s/\b\([Ee]\)mmirall\([io]\)\([^[:alnum:]]\)/\1mmiralle\3/g
s/\b\([Ee]\)mmiralli\([ns]\)\([^[:alnum:]]\)/\1mmiralle\2\3/g
# empaquetar
s/\b\([Ee]\)mpaquetés\([^[:alnum:]]\)/\1mpaquetara\2/g
s/\b\([Ee]\)mpaquetéssi\([mu]\)\([^[:alnum:]]\)/\1mpaquetàre\2\3/g
s/\b\([Ee]\)mpaquetessi\([ns]\)\([^[:alnum:]]\)/\1mpaquetare\2\3/g
s/\b\([Ee]\)mpaquet\([io]\)\([^[:alnum:]]\)/\1mpaquete\3/g
s/\b\([Ee]\)mpaqueti\([ns]\)\([^[:alnum:]]\)/\1mpaquete\2\3/g
    # desempaquetar
    s/\b\([Dd]\)esempaquetés\([^[:alnum:]]\)/\1esempaquetara\2/g
    s/\b\([Dd]\)esempaquetéssi\([mu]\)\([^[:alnum:]]\)/\1esempaquetàre\2\3/g
    s/\b\([Dd]\)esempaquetessi\([ns]\)\([^[:alnum:]]\)/\1esempaquetare\2\3/g
    s/\b\([Dd]\)esempaquet\([io]\)\([^[:alnum:]]\)/\1esempaquete\3/g
    s/\b\([Dd]\)esempaqueti\([ns]\)\([^[:alnum:]]\)/\1esempaquete\2\3/g
# emparellar
s/\b\([Ee]\)mparellés\([^[:alnum:]]\)/\1mparellara\2/g
s/\b\([Ee]\)mparelléssi\([mu]\)\([^[:alnum:]]\)/\1mparellàre\2\3/g
s/\b\([Ee]\)mparellessi\([ns]\)\([^[:alnum:]]\)/\1mparellare\2\3/g
s/\b\([Ee]\)mparell\([io]\)\([^[:alnum:]]\)/\1mparelle\3/g
s/\b\([Ee]\)mparelli\([ns]\)\([^[:alnum:]]\)/\1mparelle\2\3/g
# empènyer -> empényer
s/\b\([Ee]\)mpenyar\([^[:alnum:]]\)/\1mpènyer\2/g
s/\b\([Ee]\)mpenyés\([^[:alnum:]]\)/\1mpenyera\2/g
s/\b\([Ee]\)mpenyéssi\([mu]\)\([^[:alnum:]]\)/\1mpenyére\2\3/g
s/\b\([Ee]\)mpenyessi\([ns]\)\([^[:alnum:]]\)/\1mpenyere\2\3/g
s/\b\([Ee]\)mpè\(nyer\|s\)\([^[:alnum:]]\)/\1mpé\2\3/g
s/\b\([Ee]\)mpenyi\([^[:alnum:]]\)/\1mpenya\2/g
s/\b\([Ee]\)mpenyi\([ns]\)\([^[:alnum:]]\)/\1mpenye\2\3/g
s/\b\([Ee]\)mpenyo\([^[:alnum:]]\)/\1mpeny\2/g
# empetitir
s/\b\([Ee]\)mpetiteix\(e[ns]\|\)\([^[:alnum:]]\)/\1mpetitix\2\3/g
s/\b\([Ee]\)mpetiteixi\([^[:alnum:]]\)/\1mpetitisca\2/g
s/\b\([Ee]\)mpetiteixi\([ns]\)\([^[:alnum:]]\)/\1mpetitisque\2\3/g
s/\b\([Ee]\)mpetiteixo\([^[:alnum:]]\)/\1mpetitisc\2/g
s/\b\([Ee]\)mpetitís\([^[:alnum:]]\)/\1mpetitira\2/g
s/\b\([Ee]\)mpetitíssi\([mu]\)\([^[:alnum:]]\)/\1mpetitíre\2\3/g
s/\b\([Ee]\)mpetitissi\([ns]\)\([^[:alnum:]]\)/\1mpetitire\2\3/g
# emplaçar
s/\b\([Ee]\)mplacés\([^[:alnum:]]\)/\1mplaçara\2/g
s/\b\([Ee]\)mplacéssi\([mu]\)\([^[:alnum:]]\)/\1mplaçàre\2\3/g
s/\b\([Ee]\)mplacessi\([ns]\)\([^[:alnum:]]\)/\1mplaçare\2\3/g
s/\b\([Ee]\)mplaci\([ns]\|\)\([^[:alnum:]]\)/\1mplace\2\3/g
s/\b\([Ee]\)mplaço\([^[:alnum:]]\)/\1mplace\2/g
# emplenar (emplenar un imprès)
s/\b\([Ee]\)mplenés\([^[:alnum:]]\)/\1mplenara\2/g
s/\b\([Ee]\)mplenéssi\([mu]\)\([^[:alnum:]]\)/\1mplenàre\2\3/g
s/\b\([Ee]\)mplenessi\([ns]\)\([^[:alnum:]]\)/\1mplenare\2\3/g
s/\b\([Ee]\)mplen\([io]\)\([^[:alnum:]]\)/\1mplene\3/g
s/\b\([Ee]\)mpleni\([ns]\)\([^[:alnum:]]\)/\1mplene\2\3/g
# emprar
s/\b\([Ee]\)mprés\([^[:alnum:]]\)/\1emprara\2/g
s/\b\([Ee]\)mpréssi\([mu]\)\([^[:alnum:]]\)/\1empràre\2\3/g
s/\b\([Ee]\)mpressi\([ns]\)\([^[:alnum:]]\)/\1emprare\2\3/g
s/\b\([Ee]\)mpr\([io]\)\([^[:alnum:]]\)/\1mpre\3/g
s/\b\([Ee]\)mpri\([ns]\)\([^[:alnum:]]\)/\1mpre\2\3/g
# encabir
s/\b\([Ee]\)ncabeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ncabix\2\3/g
s/\b\([Ee]\)ncabeixi\([^[:alnum:]]\)/\1ncabisca\2/g
s/\b\([Ee]\)ncabeixi\([ns]\)\([^[:alnum:]]\)/\1ncabisque\2\3/g
s/\b\([Ee]\)ncabeixo\([^[:alnum:]]\)/\1ncabisc\2/g
s/\b\([Ee]\)ncabís\([^[:alnum:]]\)/\1ncabira\2/g
s/\b\([Ee]\)ncabíssi\([mu]\|\)\([^[:alnum:]]\)/\1ncabíre\2\3/g
s/\b\([Ee]\)ncabissi\([ns]\|\)\([^[:alnum:]]\)/\1ncabire\2\3/g
# encaixar
s/\b\([Ee]\)ncaixés\([^[:alnum:]]\)/\1ncaixara\2/g
s/\b\([Ee]\)ncaixéssi\([mu]\)\([^[:alnum:]]\)/\1ncaixàre\2\3/g
s/\b\([Ee]\)ncaixessi\([ns]\)\([^[:alnum:]]\)/\1ncaixare\2\3/g
s/\b\([Ee]\)ncaix\([io]\)\([^[:alnum:]]\)/\1ncaixe\3/g
s/\b\([Ee]\)ncaixi\([ns]\)\([^[:alnum:]]\)/\1ncaixe\2\3/g
# encarregar
s/\b\([Ee]\)ncarregués\([^[:alnum:]]\)/\1ncarregara\2/g
s/\b\([Ee]\)ncarreguéssi\([mu]\)\([^[:alnum:]]\)/\1ncarregàre\2\3/g
s/\b\([Ee]\)ncarreguessi\([ns]\)\([^[:alnum:]]\)/\1ncarregare\2\3/g
s/\b\([Ee]\)ncarreg\(ui\|o\)\([^[:alnum:]]\)/\1ncarregue\3/g
s/\b\([Ee]\)ncarregui\([ns]\)\([^[:alnum:]]\)/\1ncarregue\2\3/g
s/\b\([Ee]\)nciam\(s\|\)\([^[:alnum:]]\)/\1ncisam\2\3/g
# encongir -> encollir (esmenes)
# (des)encriptatge -> (des)encriptació (esmenes)
# encriptar
s/\b\([Ee]\)ncriptés\([^[:alnum:]]\)/\1ncriptara\2/g
s/\b\([Ee]\)ncriptéssi\([mu]\)\([^[:alnum:]]\)/\1ncriptàre\2\3/g
s/\b\([Ee]\)ncriptessi\([ns]\)\([^[:alnum:]]\)/\1ncriptare\2\3/g
s/\b\([Ee]\)ncript\([io]\)\([^[:alnum:]]\)/\1ncripte\3/g
s/\b\([Ee]\)ncripti\([ns]\)\([^[:alnum:]]\)/\1ncripte\2\3/g
    # TODO: no
    # desencriptar
    s/\b\([Dd]\)esencriptés\([^[:alnum:]]\)/\1esencriptara\2/g
    s/\b\([Dd]\)esencriptéssi\([mu]\)\([^[:alnum:]]\)/\1esencriptàre\2\3/g
    s/\b\([Dd]\)esencriptessi\([ns]\)\([^[:alnum:]]\)/\1esencriptare\2\3/g
    s/\b\([Dd]\)esencript\([io]\)\([^[:alnum:]]\)/\1esencripte\3/g
    s/\b\([Dd]\)esencripti\([ns]\)\([^[:alnum:]]\)/\1esencripte\2\3/g
# endarrere -> arrere (esmenes)
# endarrerir
s/\b\([Ee]\)ndarrereix\(e[ns]\|\)\([^[:alnum:]]\)/\1ndarrerix\2\3/g
s/\b\([Ee]\)ndarrereixi\([^[:alnum:]]\)/\1ndarrerisca\2/g
s/\b\([Ee]\)ndarrereixi\([ns]\)\([^[:alnum:]]\)/\1ndarrerisque\2\3/g
s/\b\([Ee]\)ndarrereixo\([^[:alnum:]]\)/\1ndarrerisc\2/g
s/\b\([Ee]\)ndarrerís\([^[:alnum:]]\)/\1ndarrerira\2/g
s/\b\([Ee]\)ndarreríssi\([mu]\)\([^[:alnum:]]\)/\1ndarreríre\2\3/g
s/\b\([Ee]\)ndarrerissi\([ns]\)\([^[:alnum:]]\)/\1ndarrerire\2\3/g
# endavant -> avant (esmenes)
# endevinar
s/\b\([Ee]\)ndevinés\([^[:alnum:]]\)/\1ndevinara\2/g
s/\b\([Ee]\)ndevinéssi\([mu]\)\([^[:alnum:]]\)/\1ndevinàre\2\3/g
s/\b\([Ee]\)ndevinessi\([ns]\)\([^[:alnum:]]\)/\1ndevinare\2\3/g
s/\b\([Ee]\)ndevin\([io]\)\([^[:alnum:]]\)/\1ndevine\3/g
s/\b\([Ee]\)ndevini\([ns]\)\([^[:alnum:]]\)/\1ndevine\2\3/g
# endinsar
s/\b\([Ee]\)ndinsés\([^[:alnum:]]\)/\1ndinsara\2/g
s/\b\([Ee]\)ndinséssi\([mu]\)\([^[:alnum:]]\)/\1ndinsàre\2\3/g
s/\b\([Ee]\)ndinsessi\([ns]\)\([^[:alnum:]]\)/\1ndinsare\2\3/g
s/\b\([Ee]\)ndins\([io]\)\([^[:alnum:]]\)/\1ndinse\3/g
s/\b\([Ee]\)ndinsi\([ns]\)\([^[:alnum:]]\)/\1ndinse\2\3/g
# endollar -> connectar (esmenes - # PDT:)
    # desendollar -> desconnectar (esmenes - # PDT:)
# -endre
    # atendre
    s/\b\([Aa]\)tè\([ns]\)\([^[:alnum:]]\)/\1té\2\3/g
    s/\b\([Aa]\)tengués\([^[:alnum:]]\)/\1tenguera\2/g
    s/\b\([Aa]\)tenguéssi\([mu]\)\([^[:alnum:]]\)/\1tenguére\2\3/g
    s/\b\([Aa]\)tenguessi\([ns]\)\([^[:alnum:]]\)/\1tenguere\2\3/g
    s/\b\([Aa]\)tengui\([^[:alnum:]]\)/\1tenga\2/g
    s/\b\([Aa]\)tengui\([ns]\)\([^[:alnum:]]\)/\1tengues\2\3/g
        # desatendre
        s/\b\([Dd]\)esatè\([ns]\)\([^[:alnum:]]\)/\1esaté\2\3/g
        s/\b\([Dd]\)esatengués\([^[:alnum:]]\)/\1esatenguera\2/g
        s/\b\([Dd]\)esatenguéssi\([mu]\)\([^[:alnum:]]\)/\1esatenguére\2\3/g
        s/\b\([Dd]\)esatenguessi\([ns]\)\([^[:alnum:]]\)/\1esatenguere\2\3/g
        s/\b\([Dd]\)esatengui\([^[:alnum:]]\)/\1esatenga\2/g
        s/\b\([Dd]\)esatengui\([ns]\)\([^[:alnum:]]\)/\1esatengues\2\3/g
    # contendre
    s/\b\([Cc]\)ontè\([ns]\)\([^[:alnum:]]\)/\1onté\2\3/g
    s/\b\([Cc]\)ontengués\([^[:alnum:]]\)/\1ontenguera\2/g
    s/\b\([Cc]\)ontenguéssi\([mu]\)\([^[:alnum:]]\)/\1ontenguére\2\3/g
    s/\b\([Cc]\)ontenguessi\([ns]\)\([^[:alnum:]]\)/\1ontenguere\2\3/g
    s/\b\([Cc]\)ontengui\([^[:alnum:]]\)/\1ontenga\2/g
    s/\b\([Cc]\)ontengui\([ns]\)\([^[:alnum:]]\)/\1ontengue\2\3/g
        # contendir -> contendre
        s/\b\([Cc]\)ontend\([^[:alnum:]]\)/\1onté\2/g
        s/\b\([Cc]\)ontendir\([^[:alnum:]]\)/\1ontendre\2/g
        s/\b\([Cc]\)ontendís\([^[:alnum:]]\)/\1ontenguera\2/g
        s/\b\([Cc]\)ontendíssi\([mu]\)\([^[:alnum:]]\)/\1ontenguére\2\3/g
        s/\b\([Cc]\)ontendissi\([ns]\)\([^[:alnum:]]\)/\1ontenguere\2\3/g
        s/\b\([Cc]\)ontendi\([^[:alnum:]]\)/\1ontenga\2/g
        s/\b\([Cc]\)ontendi\([ns]\)\([^[:alnum:]]\)/\1ontengue\2\3/g
    # defendre / dependre
    s/\b\([Dd]\)e\([fp]\)è\([ns]\)\([^[:alnum:]]\)/\1e\2é\3\4/g
    s/\b\([Dd]\)e\([fp]\)engués\([^[:alnum:]]\)/\1e\2enguera\3/g
    s/\b\([Dd]\)e\([fp]\)enguéssi\([mu]\)\([^[:alnum:]]\)/\1e\2enguére\3\4/g
    s/\b\([Dd]\)e\([fp]\)enguessi\([ns]\)\([^[:alnum:]]\)/\1e\2enguere\3\4/g
    s/\b\([Dd]\)e\([fp]\)engui\([^[:alnum:]]\)/\1e\2enga\3/g
    s/\b\([Dd]\)e\([fp]\)engui\([ns]\)\([^[:alnum:]]\)/\1e\2engue\3\4/g
    # despendre
    s/\b\([Dd]\)espè\([ns]\|\)\([^[:alnum:]]\)/\1espé\2\3/g
    s/\b\([Dd]\)espengués\([^[:alnum:]]\)/\1espenguera\2/g
    s/\b\([Dd]\)espenguéssi\([mu]\|\)\([^[:alnum:]]\)/\1espenguére\2\3/g
    s/\b\([Dd]\)espenguessi\([ns]\|\)\([^[:alnum:]]\)/\1espenguere\2\3/g
    s/\b\([Dd]\)espengui\([^[:alnum:]]\)/\1espenga\2/g
    s/\b\([Dd]\)espengui\([ns]\|\)\([^[:alnum:]]\)/\1espengue\2\3/g
    # encendre / entendre
    s/\b\([Ee]\)n\([ct]\)è\([ns]\)\([^[:alnum:]]\)/\1n\2é\3\4/g
    s/\b\([Ee]\)n\([ct]\)engués\([^[:alnum:]]\)/\1n\2enguera\3/g
    s/\b\([Ee]\)n\([ct]\)enguéssi\([mu]\)\([^[:alnum:]]\)/\1n\2enguére\3\4/g
    s/\b\([Ee]\)n\([ct]\)enguessi\([ns]\)\([^[:alnum:]]\)/\1n\2enguere\3\4/g
    s/\b\([Ee]\)n\([ct]\)engui\([^[:alnum:]]\)/\1n\2enga\3/g
    s/\b\([Ee]\)n\([ct]\)engui\([ns]\)\([^[:alnum:]]\)/\1n\2enge\3\4/g
        # malentendre
        s/\b\([Mm]\)alentè\([ns]\)\([^[:alnum:]]\)/\1alenté\2\3/g
        s/\b\([Mm]\)alentengués\([^[:alnum:]]\)/\1alentenguera\2/g
        s/\b\([Mm]\)alentenguéssi\([mu]\)\([^[:alnum:]]\)/\1alentenguére\2\3/g
        s/\b\([Mm]\)alentenguessi\([ns]\)\([^[:alnum:]]\)/\1alentenguere\2\3/g
        s/\b\([Mm]\)alentengui\([^[:alnum:]]\)/\1alentenga\2/g
        s/\b\([Mm]\)alentengui\([ns]\)\([^[:alnum:]]\)/\1alentengue\2\3/g
        # sobreentendre
        s/\b\([Ss]\)obreentè\([ns]\)\([^[:alnum:]]\)/\1obreenté\2\3/g
        s/\b\([Ss]\)obreentengués\([^[:alnum:]]\)/\1obreentenguera\2/g
        s/\b\([Ss]\)obreentenguéssi\([mu]\)\([^[:alnum:]]\)/\1obreentenguére\2\3/g
        s/\b\([Ss]\)obreentenguessi\([ns]\)\([^[:alnum:]]\)/\1obreentenguere\2\3/g
        s/\b\([Ss]\)obreentengui\([^[:alnum:]]\)/\1obreentenga\2/g
        s/\b\([Ss]\)obreentengui\([ns]\)\([^[:alnum:]]\)/\1obreentengue\2\3/g
    # estendre
    s/\b\([Ee]\)stè\([ns]\)\([^[:alnum:]]\)/\1sté\2\3/g
    s/\b\([Ee]\)stengués\([^[:alnum:]]\)/\1stenguera\2/g
    s/\b\([Ee]\)stenguéssi\([mu]\)\([^[:alnum:]]\)/\1stenguére\2\3/g
    s/\b\([Ee]\)stenguessi\([ns]\)\([^[:alnum:]]\)/\1stenguere\2\3/g
    s/\b\([Ee]\)stengui\([^[:alnum:]]\)/\1stenga\2/g
    s/\b\([Ee]\)stengui\([ns]\)\([^[:alnum:]]\)/\1stengue\2\3/g
    # ofendre
    s/\b\([Oo]\)fè\([ns]\)\([^[:alnum:]]\)/\1fé\2\3/g
    s/\b\([Oo]\)fengués\([^[:alnum:]]\)/\1fenguera\2/g
    s/\b\([Oo]\)fenguéssi\([mu]\)\([^[:alnum:]]\)/\1fenguére\2\3/g
    s/\b\([Oo]\)fenguessi\([ns]\)\([^[:alnum:]]\)/\1fenguere\2\3/g
    s/\b\([Oo]\)fengui\([^[:alnum:]]\)/\1fenga\2/g
    s/\b\([Oo]\)fengui\([ns]\)\([^[:alnum:]]\)/\1fengue\2\3/g
    # prendre
    s/\b\([Pp]\)rengués\([^[:alnum:]]\)/\1renguera\2/g
    s/\b\([Pp]\)renguéssi\([mu]\)\([^[:alnum:]]\)/\1renguére\2\3/g
    s/\b\([Pp]\)renguessi\([ns]\)\([^[:alnum:]]\)/\1renguere\2\3/g
    s/\b\([Pp]\)rengui\([^[:alnum:]]\)/\1renga\2/g
    s/\b\([Pp]\)rengui\([ns]\)\([^[:alnum:]]\)/\1rengue\2\3/g
        # aprendre
        s/\b\([Aa]\)prè\([ns]\)\([^[:alnum:]]\)/\1pré\2\3/g
        s/\b\([Aa]\)prengués\([^[:alnum:]]\)/\1prenguera\2/g
        s/\b\([Aa]\)prenguéssi\([mu]\)\([^[:alnum:]]\)/\1prenguére\2\3/g
        s/\b\([Aa]\)prenguessi\([ns]\)\([^[:alnum:]]\)/\1prenguere\2\3/g
        s/\b\([Aa]\)prengui\([^[:alnum:]]\)/\1prenga\2/g
        s/\b\([Aa]\)prengui\([ns]\)\([^[:alnum:]]\)/\1prengue\2\3/g
            # desaprendre
            s/\b\([Dd]\)esaprè\([ns]\)\([^[:alnum:]]\)/\1esapré\2\3/g
            s/\b\([Dd]\)esaprengués\([^[:alnum:]]\)/\1esaprenguera\2/g
            s/\b\([Dd]\)esaprenguéssi\([mu]\)\([^[:alnum:]]\)/\1esaprenguére\2\3/g
            s/\b\([Dd]\)esaprenguessi\([ns]\)\([^[:alnum:]]\)/\1esaprenguere\2\3/g
            s/\b\([Dd]\)esaprengui\([^[:alnum:]]\)/\1esaaprenga\2/g
            s/\b\([Dd]\)esaprengui\([ns]\)\([^[:alnum:]]\)/\1esaprengue\2\3/g
        # comprendre
        s/\b\([Cc]\)omprè\([ns]\)\([^[:alnum:]]\)/\1ompré\2\3/g
        s/\b\([Cc]\)omprengués\([^[:alnum:]]\)/\1omprenguera\2/g
        s/\b\([Cc]\)omprenguéssi\([mu]\)\([^[:alnum:]]\)/\1omprenguére\2\3/g
        s/\b\([Cc]\)omprenguessi\([ns]\)\([^[:alnum:]]\)/\1omprenguere\2\3/g
        s/\b\([Cc]\)omprengui\([^[:alnum:]]\)/\1omprenga\2/g
        s/\b\([Cc]\)omprengui\([ns]\)\([^[:alnum:]]\)/\1omprengue\2\3/g
        # desprendre
        s/\b\([Dd]\)esprè\([ns]\|\)\([^[:alnum:]]\)/\1espré\2\3/g
        s/\b\([Dd]\)esprengués\([^[:alnum:]]\)/\1esprenguera\2/g
        s/\b\([Dd]\)esprenguéssi\([mu]\|\)\([^[:alnum:]]\)/\1esprenguére\2\3/g
        s/\b\([Dd]\)esprenguessi\([ns]\|\)\([^[:alnum:]]\)/\1esprenguere\2\3/g
        s/\b\([Dd]\)esprengui\([^[:alnum:]]\)/\1esprenga\2/g
        s/\b\([Dd]\)esprengui\([ns]\|\)\([^[:alnum:]]\)/\1esprengue\2\3/g
        # emprendre
        s/\b\([Ee]\)mprè\([ns]\)\([^[:alnum:]]\)/\1mpré\2\3/g
        s/\b\([Ee]\)mprengués\([^[:alnum:]]\)/\1mprenguera\2/g
        s/\b\([Ee]\)mprenguéssi\([mu]\)\([^[:alnum:]]\)/\1mprenguére\2\3/g
        s/\b\([Ee]\)mprenguessi\([ns]\)\([^[:alnum:]]\)/\1mprenguere\2\3/g
        s/\b\([Ee]\)mprengui\([^[:alnum:]]\)/\1mprenga\2/g
        s/\b\([Ee]\)mprengui\([ns]\)\([^[:alnum:]]\)/\1mprengue\2\3/g
        # malprendre
        s/\b\([Mm]\)alprè\([ns]\)\([^[:alnum:]]\)/\1alpré\2\3/g
        s/\b\([Mm]\)alprengués\([^[:alnum:]]\)/\1alprenguera\2/g
        s/\b\([Mm]\)alprenguéssi\([mu]\)\([^[:alnum:]]\)/\1alprenguére\2\3/g
        s/\b\([Mm]\)alprenguessi\([ns]\)\([^[:alnum:]]\)/\1alprenguere\2\3/g
        s/\b\([Mm]\)alprengui\([^[:alnum:]]\)/\1alprenga\2/g
        s/\b\([Mm]\)alprengui\([ns]\)\([^[:alnum:]]\)/\1alprengue\2\3/g
        # reprendre
        s/\b\([Rr]\)eprè\([ns]\)\([^[:alnum:]]\)/\1epré\2\3/g
        s/\b\([Rr]\)eprengués\([^[:alnum:]]\)/\1eprenguera\2/g
        s/\b\([Rr]\)eprenguéssi\([mu]\)\([^[:alnum:]]\)/\1eprenguére\2\3/g
        s/\b\([Rr]\)eprenguessi\([ns]\)\([^[:alnum:]]\)/\1eprenguere\2\3/g
        s/\b\([Rr]\)eprengui\([^[:alnum:]]\)/\1eprenga\2/g
        s/\b\([Rr]\)eprengui\([ns]\)\([^[:alnum:]]\)/\1eprengue\2\3/g
        # sorprendre
        s/\b\([Ss]\)orprè\([ns]\)\([^[:alnum:]]\)/\1orpré\2\3/g
        s/\b\([Ss]\)orprengués\([^[:alnum:]]\)/\1orprenguera\2/g
        s/\b\([Ss]\)orprenguéssi\([mu]\)\([^[:alnum:]]\)/\1orprenguére\2\3/g
        s/\b\([Ss]\)orprenguessi\([ns]\)\([^[:alnum:]]\)/\1orprenguere\2\3/g
        s/\b\([Ss]\)orprengui\([^[:alnum:]]\)/\1sorprenga\2/g
        s/\b\([Ss]\)orprengui\([ns]\)\([^[:alnum:]]\)/\1orprengue\2\3/g
    # pretendre
    s/\b\([Pp]\)retè\([ns]\)\([^[:alnum:]]\)/\1reté\2\3/g
    s/\b\([Pp]\)retengués\([^[:alnum:]]\)/\1retenguera\2/g
    s/\b\([Pp]\)retenguéssi\([mu]\)\([^[:alnum:]]\)/\1retenguére\2\3/g
    s/\b\([SP]\)retenguessi\([ns]\)\([^[:alnum:]]\)/\1retenguere\2\3/g
    s/\b\([Pp]\)retengui\([^[:alnum:]]\)/\1retenga\2/g
    s/\b\([Pp]\)retengui\([ns]\)\([^[:alnum:]]\)/\1retengue\2\3/g
    # suspendre
    s/\b\([Ss]\)uspè\([ns]\)\([^[:alnum:]]\)/\1uspé\2\3/g
    s/\b\([Ss]\)uspengués\([^[:alnum:]]\)/\1uspenguera\2/g
    s/\b\([Ss]\)uspenguéssi\([mu]\)\([^[:alnum:]]\)/\1uspenguére\2\3/g
    s/\b\([Ss]\)uspenguessi\([ns]\)\([^[:alnum:]]\)/\1uspenguere\2\3/g
    s/\b\([Ss]\)uspengui\([^[:alnum:]]\)/\1uspenga\2/g
    s/\b\([Ss]\)uspengui\([ns]\)\([^[:alnum:]]\)/\1uspengue\2\3/g
    # vendre
    s/\b\([Vv]\)è\([ns]\)\([^[:alnum:]]\)/\1é\2\3/g
    s/\b\([Vv]\)engués\([^[:alnum:]]\)/\1enguera\2/g
    s/\b\([Vv]\)enguéssi\([mu]\)\([^[:alnum:]]\)/\1enguére\2\3/g
    s/\b\([Vv]\)enguessi\([ns]\)\([^[:alnum:]]\)/\1enguere\2\3/g
    s/\b\([Vv]\)engui\([^[:alnum:]]\)/\1enga\2/g
    s/\b\([Vv]\)engui\([ns]\)\([^[:alnum:]]\)/\1engue\2\3/g
        # malvendre
        s/\b\([Mm]\)alvè\([ns]\)\([^[:alnum:]]\)/\1alvé\2\3/g
        s/\b\([Mm]\)alvengués\([^[:alnum:]]\)/\1alvenguera\2/g
        s/\b\([Mm]\)alvenguéssi\([mu]\)\([^[:alnum:]]\)/\1alvenguére\2\3/g
        s/\b\([Mm]\)alvenguessi\([ns]\)\([^[:alnum:]]\)/\1alvenguere\2\3/g
        s/\b\([Mm]\)alvengui\([^[:alnum:]]\)/\1alvenga\2/g
        s/\b\([Mm]\)alvengui\([ns]\)\([^[:alnum:]]\)/\1alvengue\2\3/g
        # revendre
        s/\b\([Rr]\)evè\([ns]\)\([^[:alnum:]]\)/\1evé\2\3/g
        s/\b\([Rr]\)evengués\([^[:alnum:]]\)/\1evenguera\2/g
        s/\b\([Rr]\)evenguéssi\([mu]\)\([^[:alnum:]]\)/\1evenguére\2\3/g
        s/\b\([Rr]\)evenguessi\([ns]\)\([^[:alnum:]]\)/\1evenguere\2\3/g
        s/\b\([Rr]\)evengui\([^[:alnum:]]\)/\1evenga\2/g
        s/\b\([Rr]\)evengui\([ns]\)\([^[:alnum:]]\)/\1evengue\2\3/g
# energitzar
s/\b\([Ee]\)nergitzés\([^[:alnum:]]\)/\1nergitzara\2/g
s/\b\([Ee]\)nergitzéssi\([mu]\)\([^[:alnum:]]\)/\1nergitzàre\2\3/g
s/\b\([Ee]\)nergitzessi\([ns]\)\([^[:alnum:]]\)/\1nergitzare\2\3/g
s/\b\([Ee]\)nergitz\([io]\)\([^[:alnum:]]\)/\1nergitze\3/g
s/\b\([Ee]\)nergitzi\([ns]\)\([^[:alnum:]]\)/\1nergitzse\2\3/g
# enfilar
s/\b\([Ee]\)nfilés\([^[:alnum:]]\)/\1nfilara\2/g
s/\b\([Ee]\)nfiléssi\([mu]\)\([^[:alnum:]]\)/\1nfilàre\2\3/g
s/\b\([Ee]\)nfilessi\([ns]\)\([^[:alnum:]]\)/\1nfilare\2\3/g
s/\b\([Ee]\)nfil\([io]\)\([^[:alnum:]]\)/\1nfile\3/g
s/\b\([Ee]\)nfili\([ns]\)\([^[:alnum:]]\)/\1nfile\2\3/g
    # desenfilar
    s/\b\([Dd]\)esenfilés\([^[:alnum:]]\)/\1esenfilara\2/g
    s/\b\([Dd]\)esenfiléssi\([mu]\)\([^[:alnum:]]\)/\1esenfilàre\2\3/g
    s/\b\([Dd]\)esenfilessi\([ns]\)\([^[:alnum:]]\)/\1esenfilare\2\3/g
    s/\b\([Dd]\)esenfil\([io]\)\([^[:alnum:]]\)/\1esenfile\3/g
    s/\b\([Dd]\)esenfili\([ns]\)\([^[:alnum:]]\)/\1esenfile\2\3/g
# enfocar
s/\b\([Ee]\)nfoqués\([^[:alnum:]]\)/\1nfocara\2/g
s/\b\([Ee]\)nfoquéssi\([mu]\)\([^[:alnum:]]\)/\1nfocàre\2\3/g
s/\b\([Ee]\)nfoquessi\([ns]\)\([^[:alnum:]]\)/\1nfocare\2\3/g
s/\b\([Ee]\)nfoqui\([ns]\|\)\([^[:alnum:]]\)/\1nfoque\2\3/g
s/\b\([Ee]\)nfoco\([^[:alnum:]]\)/\1nfoque\2/g
    # desenfocar
    s/\b\([Dd]\)esenfoqués\([^[:alnum:]]\)/\1esenfocara\2/g
    s/\b\([Dd]\)esenfoquéssi\([mu]\)\([^[:alnum:]]\)/\1esenfocàre\2\3/g
    s/\b\([Dd]\)esenfoquessi\([ns]\)\([^[:alnum:]]\)/\1esenfocare\2\3/g
    s/\b\([Dd]\)esenfoqui\([ns]\|\)\([^[:alnum:]]\)/\1esenfoque\2\3/g
    s/\b\([Dd]\)esenfoco\([^[:alnum:]]\)/\1esenfoque\2/g
    # reenfocar (esmenes)
    # TODO: no
# enfosquir
s/\b\([Ee]\)nfosqueix\(e[ns]\|\)\([^[:alnum:]]\)/\1nfosquix\2\3/g
s/\b\([Ee]\)nfosqueixi\([^[:alnum:]]\)/\1nfosquisca\2/g
s/\b\([Ee]\)nfosqueixi\([ns]\)\([^[:alnum:]]\)/\1nfosquisque\2\3/g
s/\b\([Ee]\)nfosqueixo\([^[:alnum:]]\)/\1nfosquisc\2/g
s/\b\([Ee]\)nfosquís\([^[:alnum:]]\)/\1nfosquira\2/g
s/\b\([Ee]\)nfosquíssi\([mu]\|\)\([^[:alnum:]]\)/\1nfosquíre\2\3/g
s/\b\([Ee]\)nfosquissi\([ns]\|\)\([^[:alnum:]]\)/\1nfosquire\2\3/g
# enganxar -> apegar (esmenes)
    # desenganxar -> desapegar (esmenes)
    # reenganxar
    s/\b\([Rr]\)eenganxés\([^[:alnum:]]\)/\1eenganxara\2/g
    s/\b\([Rr]\)eenganxàre\([mu]\)\([^[:alnum:]]\)/\1eenganxàre\2\3/g
    s/\b\([Rr]\)eenganxare\([ns]\)\([^[:alnum:]]\)/\1eenganxare\2\3/g
    s/\b\([Rr]\)eenganx\([io]\)\([^[:alnum:]]\)/\1eenganxe\2/g
    s/\b\([Rr]\)eenganxi\([ns]\)\([^[:alnum:]]\)/\1eenganxe\2\3/g
# engegar -> iniciar (esmenes)
    # reengegar -> reiniciar (esmenes)
# engrandir
s/\b\([Ee]\)ngrandeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ngrandix\2\3/g
s/\b\([Ee]\)ngrandeixi\([^[:alnum:]]\)/\1ngrandisca\2/g
s/\b\([Ee]\)ngrandeixi\([ns]\)\([^[:alnum:]]\)/\1ngrandisque\2\3/g
s/\b\([Ee]\)ngrandeixo\([^[:alnum:]]\)/\1ngrandisc\2/g
s/\b\([Ee]\)ngrandís\([^[:alnum:]]\)/\1ngrandira\2/g
s/\b\([Ee]\)ngrandíssi\([mu]\)\([^[:alnum:]]\)/\1ngrandíre\2\3/g
s/\b\([Ee]\)ngrandissi\([ns]\)\([^[:alnum:]]\)/\1ngrandire\2\3/g
# enllaçar
s/\b\([Ee]\)nllacés\([^[:alnum:]]\)/\1nllaçara\2/g
s/\b\([Ee]\)nllaçàre\([mu]\)\([^[:alnum:]]\)/\1nllaçàre\2\3/g
s/\b\([Ee]\)nllaçare\([ns]\)\([^[:alnum:]]\)/\1nllaçare\2\3/g
s/\b\([Ee]\)nllaço\([^[:alnum:]]\)/\1nllace\2/g
s/\b\([Ee]\)nllaci\([ns]\|\)\([^[:alnum:]]\)/\1nllace\2\3/g
    # desenllaçar
    s/\b\([Dd]\)esenllacés\([^[:alnum:]]\)/\1esenllaçara\2/g
    s/\b\([Dd]\)esenllaçàre\([mu]\)\([^[:alnum:]]\)/\1esenllaçare\2\3/g
    s/\b\([Dd]\)esenllaçare\([ns]\)\([^[:alnum:]]\)/\1esenllaçare\2\3/g
    s/\b\([Dd]\)esenllaço\([^[:alnum:]]\)/\1esenllace\2/g
    s/\b\([dd]\)esenllaci\([ns]\|\)\([^[:alnum:]]\)/\1esenllace\2\3/g
# enllestir
s/\b\([Ee]\)nllesteix\(e[ns]\|\)\([^[:alnum:]]\)/\1nllestix\2\3/g
s/\b\([Ee]\)nllesteixi\([^[:alnum:]]\)/\1nllestisca\2/g
s/\b\([Ee]\)nllesteixi\([ns]\)\([^[:alnum:]]\)/\1nllestisque\2\3/g
s/\b\([Ee]\)nllesteixo\([^[:alnum:]]\)/\1nllestisc\2/g
s/\b\([Ee]\)nllestís\([^[:alnum:]]\)/\1nllestira\2/g
s/\b\([Ee]\)nllestíssi\([mu]\)\([^[:alnum:]]\)/\1nllestíre\2\3/g
s/\b\([Ee]\)nllestissi\([ns]\)\([^[:alnum:]]\)/\1nllestire\2\3/g
# enregistrar -> gravar (esmenes)
s/\b\([Ee]\)nregistrés\([^[:alnum:]]\)/\1nregistrara\2/g
s/\b\([Ee]\)nregistréssi\([mu]\)\([^[:alnum:]]\)/\1nregistràre\2\3/g
s/\b\([Ee]\)nregistressi\([ns]\)\([^[:alnum:]]\)/\1nregistrare\2\3/g
s/\b\([Ee]\)nregistr\([io]\)\([^[:alnum:]]\)/\1nregistre\3/g
s/\b\([Ee]\)nregistri\([ns]\)\([^[:alnum:]]\)/\1nregistre\2\3/g
    # preenregistrar -> pregravar (esmenes - # TODO: no)
# enrere -> arrere (esmenes)
# enriquir
s/\b\([Ee]\)nriqueix\(e[ns]\|\)\([^[:alnum:]]\)/\1nriquix\2\3/g
s/\b\([Ee]\)nriqueixi\([^[:alnum:]]\)/\1nriquisca\2/g
s/\b\([Ee]\)nriqueixi\([ns]\)\([^[:alnum:]]\)/\1nriquisque\2\3/g
s/\b\([Ee]\)nriqueixo\([^[:alnum:]]\)/\1nriquisc\2/g
s/\b\([Ee]\)nriquís\([^[:alnum:]]\)/\1nriquira\2/g
s/\b\([Ee]\)nriquíssi\([mu]\)\([^[:alnum:]]\)/\1nriquíre\2\3/g
s/\b\([Ee]\)nriquissi\([ns]\)\([^[:alnum:]]\)/\1nriquire\2\3/g
# entrar
s/\b\([Ee]\)ntrés\([^[:alnum:]]\)/\1ntrara\2/g
s/\b\([Ee]\)ntréssi\([mu]\)\([^[:alnum:]]\)/\1ntràre\2\3/g
s/\b\([Ee]\)ntressi\([ns]\)\([^[:alnum:]]\)/\1ntrare\2\3/g
s/\b\([Ee]\)ntr\([io]\)\([^[:alnum:]]\)/\1ntre\3/g
s/\b\([Ee]\)ntri\([ns]\)\([^[:alnum:]]\)/\1ntre\2\3/g
# entremetre
s/\b\([Ee]\)ntremès\([^[:alnum:]]\)/\1ntremés\2/g
s/\b\([Ee]\)ntremetés\([^[:alnum:]]\)/\1ntremetera\2/g
s/\b\([Ee]\)ntremetéssi\([mu]\)\([^[:alnum:]]\)/\1ntremetére\2\3/g
s/\b\([Ee]\)ntremetessi\([ns]\)\([^[:alnum:]]\)/\1ntremetere\2\3/g
s/\b\([Ee]\)ntremeti\([ns]\)\([^[:alnum:]]\)/\1ntremete\2\3/g
s/\b\([Ee]\)ntremeto\([^[:alnum:]]\)/\1ntremet\2/g
# enumerar
s/\b\([Ee]\)numerés\([^[:alnum:]]\)/\1numerara\2/g
s/\b\([Ee]\)numeréssi\([mu]\)\([^[:alnum:]]\)/\1numeràre\2\3/g
s/\b\([Ee]\)numeressi\([ns]\)\([^[:alnum:]]\)/\1numerare\2\3/g
s/\b\([Ee]\)numer\([io]\)\([^[:alnum:]]\)/\1numere\3/g
s/\b\([Ee]\)numeri\([ns]\)\([^[:alnum:]]\)/\1numere\2\3/g
# enviar
s/\b\([Ee]\)nviés\([^[:alnum:]]\)/\1nviara\2/g
s/\b\([Ee]\)nviéssi\([mu]\)\([^[:alnum:]]\)/\1nviàre\2\3/g
s/\b\([Ee]\)nviessi\([ns]\)\([^[:alnum:]]\)/\1nviare\2\3/g
s/\b\([Ee]\)nvi\([ïo]\)\([^[:alnum:]]\)/\1nvie\3/g
s/\b\([Ee]\)nviï\([ns]\)\([^[:alnum:]]\)/\1nvie\2\3/g
    # TODO: no
    # reenviar
    s/\b\([Rr]\)eenviés\([^[:alnum:]]\)/\1eenviara\2/g
    s/\b\([Rr]\)eenviéssi\([mu]\)\([^[:alnum:]]\)/\1eenviàre\2\3/g
    s/\b\([Rr]\)eenviessi\([ns]\)\([^[:alnum:]]\)/\1eenviare\2\3/g
    s/\b\([Rr]\)eenvi\([ïo]\)\([^[:alnum:]]\)/\1eenvie\3/g
    s/\b\([Rr]\)eenviï\([ns]\)\([^[:alnum:]]\)/\1eenvie\2\3/g
# enxampar -> atrapar (esmenes)
# TODO: no
# equalitzar
s/\b\([Ee]\)qualitzés\([^[:alnum:]]\)/\1qualitzara\2/g
s/\b\([Ee]\)qualitzéssi\([mu]\)\([^[:alnum:]]\)/\1qualitzàre\2\3/g
s/\b\([Ee]\)qualitzessi\([ns]\)\([^[:alnum:]]\)/\1qualitzare\2\3/g
s/\b\([Ee]\)qualitz\([io]\)\([^[:alnum:]]\)/\1qualitze\3/g
s/\b\([Ee]\)qualitzi\([ns]\)\([^[:alnum:]]\)/\1qualitze\2\3/g
# equilibrar
s/\b\([Ee]\)quilibrés\([^[:alnum:]]\)/\1quilibrara\2/g
s/\b\([Ee]\)quilibréssi\([mu]\)\([^[:alnum:]]\)/\1quilibràre\2\3/g
s/\b\([Ee]\)quilibressi\([ns]\)\([^[:alnum:]]\)/\1quilibrare\2\3/g
s/\b\([Ee]\)quilibri\([ns]\)\([^[:alnum:]]\)/\1quilibre\2\3/g
s/\b\([Ee]\)quilibro\([^[:alnum:]]\)/\1quilibre\2/g
# erigir
s/\b\([Ee]\)rigeix\(e[ns]\|\)\([^[:alnum:]]\)/\1rigix\2\3/g
s/\b\([Ee]\)rigeixi\([^[:alnum:]]\)/\1rigisca\2/g
s/\b\([Ee]\)rigeixi\([ns]\)\([^[:alnum:]]\)/\1rigisque\2\3/g
s/\b\([Ee]\)rigeixo\([^[:alnum:]]\)/\1rigisc\2/g
s/\b\([Ee]\)rigís\([^[:alnum:]]\)/\1rigira\2/g
s/\b\([Ee]\)rigíssi\([mu]\)\([^[:alnum:]]\)/\1rigíre\2\3/g
s/\b\([Ee]\)rigissi\([ns]\)\([^[:alnum:]]\)/\1rigire\2\3/g
# esborrar
s/\b\([Ee]\)sborrés\([^[:alnum:]]\)/\1sborrara\2/g
s/\b\([Ee]\)sborréssi\([mu]\)\([^[:alnum:]]\)/\1sborràre\2\3/g
s/\b\([Ee]\)sborressi\([ns]\)\([^[:alnum:]]\)/\1sborrare\2\3/g
s/\b\([Ee]\)sborr\([io]\)\([^[:alnum:]]\)/\1sborre\3/g
s/\b\([Ee]\)sborri\([ns]\)\([^[:alnum:]]\)/\1sborre\2\3/g
# esborronar
s/\b\([Ee]\)sborronés\([^[:alnum:]]\)/\1sborronara\2/g
s/\b\([Ee]\)sborronéssi\([mu]\)\([^[:alnum:]]\)/\1sborronàre\2\3/g
s/\b\([Ee]\)sborronessi\([ns]\)\([^[:alnum:]]\)/\1sborronare\2\3/g
s/\b\([Ee]\)sborron\([io]\)\([^[:alnum:]]\)/\1sborrone\3/g
s/\b\([Ee]\)sborroni\([ns]\)\([^[:alnum:]]\)/\1sborrone\2\3/g
# esbossar
s/\b\([Ee]\)sbossés\([^[:alnum:]]\)/\1sbossara\2/g
s/\b\([Ee]\)sbosséssi\([mu]\)\([^[:alnum:]]\)/\1sbossàre\2\3/g
s/\b\([Ee]\)sbossessi\([ns]\)\([^[:alnum:]]\)/\1sbossare\2\3/g
s/\b\([Ee]\)sboss\([io]\)\([^[:alnum:]]\)/\1sbosse\3/g
s/\b\([Ee]\)sbossi\([ns]\)\([^[:alnum:]]\)/\1sbosse\2\3/g
# esbrinar
s/\b\([Ee]\)sbrinés\([^[:alnum:]]\)/\1sbrinara\2/g
s/\b\([Ee]\)sbrinéssi\([mu]\)\([^[:alnum:]]\)/\1sbrinàre\2\3/g
s/\b\([Ee]\)sbrinessi\([ns]\)\([^[:alnum:]]\)/\1sbrinare\2\3/g
s/\b\([Ee]\)sbrin\([io]\)\([^[:alnum:]]\)/\1sbrine\3/g
s/\b\([Ee]\)sbrini\([ns]\)\([^[:alnum:]]\)/\1sbrine\2\3/g
# escassejar
s/\b\([Ee]\)scassegés\([^[:alnum:]]\)/\1scassejara\2/g
s/\b\([Ee]\)scassegéssi\([mu]\)\([^[:alnum:]]\)/\1scassejàre\2\3/g
s/\b\([Ee]\)scassegessi\([ns]\)\([^[:alnum:]]\)/\1scassejare\2\3/g
s/\b\([Ee]\)scassegi\([ns]\|\)\([^[:alnum:]]\)/\1scassege\2\3/g
s/\b\([Ee]\)scassejo\([^[:alnum:]]\)/\1scassege\2/g
# escalar
s/\b\([Ee]\)scalés\([^[:alnum:]]\)/\1scalara\2/g
s/\b\([Ee]\)scaléssi\([mu]\)\([^[:alnum:]]\)/\1scalàre\2\3/g
s/\b\([Ee]\)scalessi\([ns]\)\([^[:alnum:]]\)/\1scalare\2\3/g
s/\b\([Ee]\)scal\([io]\)\([^[:alnum:]]\)/\1scale\3/g
s/\b\([Ee]\)scali\([ns]\)\([^[:alnum:]]\)/\1scale\2\3/g
# escalfar
s/\b\([Ee]\)scalfés\([^[:alnum:]]\)/\1scalfara\2/g
s/\b\([Ee]\)scalféssi\([mu]\)\([^[:alnum:]]\)/\1scalfàre\2\3/g
s/\b\([Ee]\)scalfessi\([ns]\)\([^[:alnum:]]\)/\1scalfare\2\3/g
s/\b\([Ee]\)scalf\([io]\)\([^[:alnum:]]\)/\1scalfe\3/g
s/\b\([Ee]\)scalfi\([ns]\)\([^[:alnum:]]\)/\1scalfe\2\3/g
# escanejar
s/\b\([Ee]\)scanegés\([^[:alnum:]]\)/\1scanejara\2/g
s/\b\([Ee]\)scanegéssi\([mu]\)\([^[:alnum:]]\)/\1scanejàre\2\3/g
s/\b\([Ee]\)scanegessi\([ns]\)\([^[:alnum:]]\)/\1scanejare\2\3/g
s/\b\([Ee]\)scanegi\([ns]\|\)\([^[:alnum:]]\)/\1scanege\2\3/g
s/\b\([Ee]\)scanejo\([^[:alnum:]]\)/\1scanege\2/g
# escapar
s/\b\([Ee]\)scapés\([^[:alnum:]]\)/\1scapara\2/g
s/\b\([Ee]\)scapéssi\([mu]\)\([^[:alnum:]]\)/\1scapàre\2\3/g
s/\b\([Ee]\)scapessi\([ns]\)\([^[:alnum:]]\)/\1scapare\2\3/g
s/\b\([Ee]\)scap\([io]\)\([^[:alnum:]]\)/\1scape\3/g
s/\b\([Ee]\)scapi\([ns]\)\([^[:alnum:]]\)/\1scape\2\3/g
# escapçar
s/\b\([Ee]\)scapcés\([^[:alnum:]]\)/\1scapçara\2/g
s/\b\([Ee]\)scapcéssi\([mu]\)\([^[:alnum:]]\)/\1scapçàre\2\3/g
s/\b\([Ee]\)scapcessi\([ns]\)\([^[:alnum:]]\)/\1scapçare\2\3/g
s/\b\([Ee]\)scapci\([ns]\|\)\([^[:alnum:]]\)/\1scapce\2\3/g
s/\b\([Ee]\)scapço\([^[:alnum:]]\)/\1scapce\2/g
# escarmentar
s/\b\([Ee]\)scarmentés\([^[:alnum:]]\)/\1scarmentara\2/g
s/\b\([Ee]\)scarmentéssi\([mu]\)\([^[:alnum:]]\)/\1scarmentàre\2\3/g
s/\b\([Ee]\)scarmentessi\([ns]\)\([^[:alnum:]]\)/\1scarmentare\2\3/g
s/\b\([Ee]\)scarment\([io]\)\([^[:alnum:]]\)/\1scarmente\3/g
s/\b\([Ee]\)scarmenti\([ns]\)\([^[:alnum:]]\)/\1scarmente\2\3/g
s/\b\([Ee]\)scocès\([^[:alnum:]]\)/\1scocés\2/g
# escoltar
s/\b\([Ee]\)scoltés\([^[:alnum:]]\)/\1scoltara\2/g
s/\b\([Ee]\)scoltéssi\([mu]\)\([^[:alnum:]]\)/\1scoltàre\2\3/g
s/\b\([Ee]\)scoltessi\([ns]\)\([^[:alnum:]]\)/\1scoltare\2\3/g
s/\b\([Ee]\)scolt\([io]\)\([^[:alnum:]]\)/\1scolte\3/g
s/\b\([Ee]\)scolti\([ns]\)\([^[:alnum:]]\)/\1scolte\2\3/g
# escombrar -> agranar (esmenes)
# escombraire (esmenes)
# escombraries (esmenes)
s/\bEscuradents\([^[:alnum:]]\)/Furgadents\1/g
s/\bescuradents\([^[:alnum:]]\)/furgadents\1/g
# escriure
s/\b\([Ee]\)scri\(gué\|ví\)s\([^[:alnum:]]\)/\1scriguera\3/g
s/\b\([Ee]\)scri\(gué\|ví\)ssi\([mu]\)\([^[:alnum:]]\)/\1scriguére\3\4/g
s/\b\([Ee]\)scri\(gué\|vi\)ssi\([ns]\)\([^[:alnum:]]\)/\1scriguere\3\4/g
s/\b\([Ee]\)scrigui\([^[:alnum:]]\)/\1scriga\2/g
s/\b\([Ee]\)scrigui\([ns]\)\([^[:alnum:]]\)/\1scrigue\2\3/g
    # descriure
    s/\b\([Dd]\)escrigui\([^[:alnum:]]\)/\1escriga\2/g
    s/\b\([Dd]\)escrigui\([ns]\)\([^[:alnum:]]\)/\1escrigue\2\3/g
    s/\b\([Dd]\)escri\(gu\|v\)és\([^[:alnum:]]\)/\1escriguera\2/g
    s/\b\([Dd]\)escri\(gu\|v\)éssi\([mu]\)\([^[:alnum:]]\)/\1escriguére\2\3/g
    s/\b\([Dd]\)escri\(gu\|v\)essi\([ns]\)\([^[:alnum:]]\)/\1escriguere\2\3/g
    # prescriure
    s/\b\([Pp]\)rescrigui\([^[:alnum:]]\)/\1rescriga\2/g
    s/\b\([Pp]\)rescrigui\([ns]\)\([^[:alnum:]]\)/\1rescrigue\2\3/g
    s/\b\([Pp]\)rescri\(gu\|v\)és\([^[:alnum:]]\)/\1rescriguera\2/g
    s/\b\([Pp]\)rescri\(gu\|v\)éssi\([mu]\)\([^[:alnum:]]\)/\1rescriguére\2\3/g
    s/\b\([Pp]\)rescri\(gu\|v\)essi\([ns]\)\([^[:alnum:]]\)/\1rescriguere\2\3/g
    # reescriure
    s/\b\([Rr]\)eescri\(gué\|ví\)s\([^[:alnum:]]\)/\1eescriguera\3/g
    s/\b\([Rr]\)eescri\(gué\|ví\)ssi\([mu]\)\([^[:alnum:]]\)/\1eescriguére\3\4/g
    s/\b\([Rr]\)eescri\(gué\|vi\)ssi\([ns]\)\([^[:alnum:]]\)/\1eescriguere\3\4/g
    s/\b\([Rr]\)eescrigui\([^[:alnum:]]\)/\1eescriga\2/g
    s/\b\([Rr]\)eescrigui\([ns]\)\([^[:alnum:]]\)/\1eescrigue\2\3/g
    # sobreescriure
    s/\b\([Ss]\)obreescri\(gué\|ví\)s\([^[:alnum:]]\)/\1obreescriguera\3/g
    s/\b\([Ss]\)obreescri\(gué\|ví\)ssi\([mu]\)\([^[:alnum:]]\)/\1obreescriguére\3\4/g
    s/\b\([Ss]\)obreescri\(gué\|vi\)ssi\([ns]\)\([^[:alnum:]]\)/\1obreescriguere\3\4/g
    s/\b\([Ss]\)obreescrigui\([^[:alnum:]]\)/\1obreescriga\2/g
    s/\b\([Ss]\)obreescrigui\([ns]\)\([^[:alnum:]]\)/\1obreescrigue\2\3/g
# esgarrapar -> arrapar (esmenes)
# esguerrar -> esgarrar (esmenes)
s/\b\([Ee]\)slovè\([^[:alnum:]]\)/\1slové\2/g
# esmenar
s/\b\([Ee]\)smenés\([^[:alnum:]]\)/\1smenara\2/g
s/\b\([Ee]\)smenéssi\([mu]\)\([^[:alnum:]]\)/\1smenàre\2\3/g
s/\b\([Ee]\)smenessi\([ns]\)\([^[:alnum:]]\)/\1smenare\2\3/g
s/\b\([Ee]\)smen\([io]\)\([^[:alnum:]]\)/\1smene\3/g
s/\b\([Ee]\)smeni\([ns]\)\([^[:alnum:]]\)/\1smene\2\3/g
# esmentar
s/\b\([Ee]\)smentés\([^[:alnum:]]\)/\1smentara\2/g
s/\b\([Ee]\)smentéssi\([mu]\)\([^[:alnum:]]\)/\1smentàre\2\3/g
s/\b\([Ee]\)smentessi\([ns]\)\([^[:alnum:]]\)/\1smentare\2\3/g
s/\b\([Ee]\)sment\([io]\)\([^[:alnum:]]\)/\1smente\3/g
s/\b\([Ee]\)smenti\([ns]\)\([^[:alnum:]]\)/\1smente\2\3/g
# espantar
s/\b\([Ee]\)spantés\([^[:alnum:]]\)/\1spantara\2/g
s/\b\([Ee]\)spantéssi\([mu]\)\([^[:alnum:]]\)/\1spantàre\2\3/g
s/\b\([Ee]\)spantessi\([ns]\)\([^[:alnum:]]\)/\1spantare\2\3/g
s/\b\([Ee]\)spant\([io]\)\([^[:alnum:]]\)/\1spante\3/g
s/\b\([Ee]\)spanti\([ns]\)\([^[:alnum:]]\)/\1spante\2\3/g
s/\b\([Ee]\)spatll\(a\|es\)\([^[:alnum:]]\)/\1spatl\2\3/g
    s/\b\([Rr]\)espatller\(s\|\)\([^[:alnum:]]\)/\1espatler\2\3/g
# espatllar
s/\b\([Ee]\)spatlla\(da\|des\|nt\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1spatla\2\3/g
s/\b\([Ee]\)spatllés\([^[:alnum:]]\)/\1spatlara\2/g
s/\b\([Ee]\)spatlléssi\([mu]\)\([^[:alnum:]]\)/\1spatlàre\2\3/g
s/\b\([Ee]\)spatllessi\([ns]\)\([^[:alnum:]]\)/\1spatlare\2\3/g
s/\b\([Ee]\)spatll\([io]\)\([^[:alnum:]]\)/\1spatle\3/g
s/\b\([Ee]\)spatlli\([ns]\)\([^[:alnum:]]\)/\1spatle\2\3/g
# especificar
s/\b\([Ee]\)specifiqués\([^[:alnum:]]\)/\1specificara\2/g
s/\b\([Ee]\)specifiquéssi\([mu]\)\([^[:alnum:]]\)/\1specificàre\2\3/g
s/\b\([Ee]\)specifiquessi\([ns]\)\([^[:alnum:]]\)/\1specificare\2\3/g
s/\b\([Ee]\)specifico\([^[:alnum:]]\)/\1specifique\2/g
s/\b\([Ee]\)specifiqui\([ns]\|\)\([^[:alnum:]]\)/\1specifique\2\3/g
# espènyer -> espényer
s/\b\([Ee]\)spenyés\([^[:alnum:]]\)/\1spenyera\2/g
s/\b\([Ee]\)spenyéssi\([mu]\)\([^[:alnum:]]\)/\1spenyére\2\3/g
s/\b\([Ee]\)spenyessi\([ns]\)\([^[:alnum:]]\)/\1spenyere\2\3/g
s/\b\([Ee]\)spè\(nyer\|s\)\([^[:alnum:]]\)/\1spé\2\3/g
s/\b\([Ee]\)spenyi\([^[:alnum:]]\)/\1spenya\2/g
s/\b\([Ee]\)spenyi\([ns]\)\([^[:alnum:]]\)/\1spenye\2\3/g
s/\b\([Ee]\)spenyo\([^[:alnum:]]\)/\1speny\2/g
# esperar
s/\b\([Ee]\)sperés\([^[:alnum:]]\)/\1sperara\2/g
s/\b\([Ee]\)speréssi\([mu]\)\([^[:alnum:]]\)/\1speràre\2\3/g
s/\b\([Ee]\)speressi\([ns]\)\([^[:alnum:]]\)/\1sperare\2\3/g
s/\b\([Ee]\)sper\([io]\)\([^[:alnum:]]\)/\1spere\3/g
s/\b\([Ee]\)speri\([ns]\)\([^[:alnum:]]\)/\1spere\2\3/g
# espiar
s/\b\([Ee]\)spiés\([^[:alnum:]]\)/\1spiara\2/g
s/\b\([Ee]\)spiéssi\([mu]\)\([^[:alnum:]]\)/\1spiàre\2\3/g
s/\b\([Ee]\)spiessi\([ns]\)\([^[:alnum:]]\)/\1spiare\2\3/g
s/\b\([Ee]\)spi\([ïo]\)\([^[:alnum:]]\)/\1spie\3/g
s/\b\([Ee]\)spiï\([ns]\)\([^[:alnum:]]\)/\1spie\2\3/g
# esquematitzar
s/\b\([Ee]\)squematitzés\([^[:alnum:]]\)/\1squematitzara\2/g
s/\b\([Ee]\)squematitzéssi\([mu]\)\([^[:alnum:]]\)/\1squematitzàre\2\3/g
s/\b\([Ee]\)squematitzessi\([ns]\)\([^[:alnum:]]\)/\1squematitzare\2\3/g
s/\b\([Ee]\)squematitz\([io]\)\([^[:alnum:]]\)/\1squematitze\3/g
s/\b\([Ee]\)squematitzi\([ns]\)\([^[:alnum:]]\)/\1squematitze\2\3/g
# esquitxar -> esguitar (esmenes)
# estabilitzar
s/\b\([Ee]\)stabilitzés\([^[:alnum:]]\)/\1stabilitzara\2/g
s/\b\([Ee]\)stabilitzéssi\([mu]\)\([^[:alnum:]]\)/\1stabilitzàre\2\3/g
s/\b\([Ee]\)stabilitzessi\([ns]\)\([^[:alnum:]]\)/\1stabilitzare\2\3/g
s/\b\([Ee]\)stabilitz\([io]\)\([^[:alnum:]]\)/\1stabilitze\3/g
s/\b\([Ee]\)stabilitzi\([ns]\)\([^[:alnum:]]\)/\1stabilitze\2\3/g
# establir (esmenes)
s/\b\([Ee]\)stableix\(e[ns]\|\)\([^[:alnum:]]\)/\1stablix\2\3/g
s/\b\([Ee]\)stableixi\([^[:alnum:]]\)/\1stablisca\2/g
s/\b\([Ee]\)stableixi\([ns]\)\([^[:alnum:]]\)/\1stablisque\2\3/g
s/\b\([Ee]\)stableixo\([^[:alnum:]]\)/\1stablisc\2/g
s/\b\([Ee]\)stablert\(s\|\)\([^[:alnum:]]\)/\1stablit\2\3/g
s/\b\([Ee]\)stablert\(a\|es\)\([^[:alnum:]]\)/\1stablid\2\3/g
s/\b\([Ee]\)stablís\([^[:alnum:]]\)/\1stablira\2/g
s/\b\([Ee]\)stablíssi\([mu]\)\([^[:alnum:]]\)/\1stablíre\2\3/g
s/\b\([Ee]\)stablissi\([ns]\)\([^[:alnum:]]\)/\1stablire\2\3/g
    # preestablir
    s/\b\([Pp]\)reestablert\(s\|\)\([^[:alnum:]]\)/\1redefinit\2\3/g
    s/\b\([Pp]\)reestablert\(a\|es\)\([^[:alnum:]]\)/\1redefinid\2\3/g
    s/\b\([Pp]\)reestableix\(e[ns]\|\)\([^[:alnum:]]\)/\1reestablix\2\3/g
    s/\b\([Pp]\)reestableixi\([^[:alnum:]]\)/\1reestablisca\2/g
    s/\b\([Pp]\)reestableixi\([ns]\)\([^[:alnum:]]\)/\1reestablisque\2\3/g
    s/\b\([Pp]\)reestableixo\([^[:alnum:]]\)/\1reestablisc\2/g
    s/\b\([Pp]\)reestablís\([^[:alnum:]]\)/\1reestablira\2/g
    s/\b\([Pp]\)reestablíssi\([mu]\)\([^[:alnum:]]\)/\1reestablíre\2\3/g
    s/\b\([Pp]\)reestablissi\([ns]\)\([^[:alnum:]]\)/\1reestablire\2\3/g
    # restablir
    s/\b\([Rr]\)establert\(s\|\)\([^[:alnum:]]\)/\1establit\2\3/g
    s/\b\([Rr]\)establert\(a\|es\)\([^[:alnum:]]\)/\1establid\2\3/g
    s/\b\([Rr]\)estableix\(e[ns]\|\)\([^[:alnum:]]\)/\1establix\2\3/g
    s/\b\([Rr]\)estableixi\([^[:alnum:]]\)/\1establisca\2/g
    s/\b\([Rr]\)estableixi\([ns]\)\([^[:alnum:]]\)/\1establisque\2\3/g
    s/\b\([Rr]\)estableixo\([^[:alnum:]]\)/\1establisc\2/g
    s/\b\([Rr]\)establís\([^[:alnum:]]\)/\1establira\2/g
    s/\b\([Rr]\)establíssi\([mu]\)\([^[:alnum:]]\)/\1establíre\2\3/g
    s/\b\([Rr]\)establissi\([ns]\)\([^[:alnum:]]\)/\1establire\2\3/g
# estalvi de pantalla -> salvapantalla (esmenes)
# estalviar
s/\b\([Ee]\)stalviés\([^[:alnum:]]\)/\1stabilitzara\2/g
s/\b\([Ee]\)stalviéssi\([mu]\)\([^[:alnum:]]\)/\1stabilitzàre\2\3/g
s/\b\([Ee]\)stalviessi\([ns]\)\([^[:alnum:]]\)/\1stabilitzare\2\3/g
s/\b\([Ee]\)stalvi\([ïo]\)\([^[:alnum:]]\)/\1stalvie\3/g
s/\b\([Ee]\)stalviï\([ns]\)\([^[:alnum:]]\)/\1stalvie\2\3/g
# estandarditzar
s/\b\([Ee]\)standarditzés\([^[:alnum:]]\)/\1standarditzara\2/g
s/\b\([Ee]\)standarditzéssi\([mu]\)\([^[:alnum:]]\)/\1standarditzàre\2\3/g
s/\b\([Ee]\)standarditzessi\([ns]\)\([^[:alnum:]]\)/\1standarditzare\2\3/g
s/\b\([Ee]\)standarditz\([io]\)\([^[:alnum:]]\)/\1standarditze\3/g
s/\b\([Ee]\)standarditzi\([ns]\)\([^[:alnum:]]\)/\1standarditze\2\3/g
# estar
s/\b\([Ee]\)stigués\([^[:alnum:]]\)/\1stiguera\2/g
s/\b\([Ee]\)stiguéssi\([mu]\)\([^[:alnum:]]\)/\1stiguére\2\3/g
s/\b\([Ee]\)stiguessi\([ns]\)\([^[:alnum:]]\)/\1stiguere\2\3/g
s/\b\([Ee]\)stigui\([^[:alnum:]]\)/\1stiga\2/g
s/\b\([Ee]\)stigui\([ns]\)\([^[:alnum:]]\)/\1stigue\2\3/g
# estavellar
s/\b\([Ee]\)stavellés\([^[:alnum:]]\)/\1stavellara\2/g
s/\b\([Ee]\)stavelléssi\([mu]\)\([^[:alnum:]]\)/\1stavellàre\2\3/g
s/\b\([Ee]\)stavellessi\([ns]\)\([^[:alnum:]]\)/\1stavellare\2\3/g
s/\b\([Ee]\)stavell\([io]\)\([^[:alnum:]]\)/\1stavelle\3/g
s/\b\([Ee]\)stavelli\([ns]\)\([^[:alnum:]]\)/\1stavelle\2\3/g
s/\b\([Ee]\)stel\([^[:alnum:]]\)/\1strel\2/g
s/\b\([Ee]\)stels\([^[:alnum:]]\)/\1streles\2/g
s/\b\([Ee]\)strell\(a\|at\|es\)\([^[:alnum:]]\)/\1strel\2\3/g
	s/\b\([Mm]\)ultiestrell\(a\|es\)\([^[:alnum:]]\)/\1ultiestrel\2\3/g
# estilitzar
s/\b\([Ee]\)stilitzés\([^[:alnum:]]\)/\1stilitzara\2/g
s/\b\([Ee]\)stilitzéssi\([mu]\)\([^[:alnum:]]\)/\1stilitzàre\2\3/g
s/\b\([Ee]\)stilitzessi\([ns]\)\([^[:alnum:]]\)/\1stilitzare\2\3/g
s/\b\([Ee]\)stilitz\([io]\)\([^[:alnum:]]\)/\1stilitze\3/g
s/\b\([Ee]\)stilitzi\([ns]\)\([^[:alnum:]]\)/\1stilitze\2\3/g
# estimar
s/\b\([Ee]\)stimés\([^[:alnum:]]\)/\1stimara\2/g
s/\b\([Ee]\)stiméssi\([mu]\)\([^[:alnum:]]\)/\1stimàre\2\3/g
s/\b\([Ee]\)stimessi\([ns]\)\([^[:alnum:]]\)/\1stimare\2\3/g
s/\b\([Ee]\)stim\([io]\)\([^[:alnum:]]\)/\1stime\3/g
s/\b\([Ee]\)stimi\([ns]\)\([^[:alnum:]]\)/\1stime\2\3/g
# estrella -> estrela (esmenes)
    # estel -> catxerulo (esmenes)
    # estrel·lar -> estel·lar (esmenes)
# estrènyer -> estrényer
s/\b\([Ee]\)strenyés\([^[:alnum:]]\)/\1strenyera\2/g
s/\b\([Ee]\)strenyéssi\([mu]\)\([^[:alnum:]]\)/\1strenyére\2\3/g
s/\b\([Ee]\)strenyessi\([ns]\)\([^[:alnum:]]\)/\1strenyere\2\3/g
s/\b\([Ee]\)strè\(nyer\|s\)\([^[:alnum:]]\)/\1stré\2\3/g
s/\b\([Ee]\)strenyi\([^[:alnum:]]\)/\1strenya\2/g
s/\b\([Ee]\)strenyi\([ns]\)\([^[:alnum:]]\)/\1strenye\2\3/g
s/\b\([Ee]\)strenyo\([^[:alnum:]]\)/\1streny\2/g
    # constrènyer -> constrényer
    s/\b\([Cc]\)onstrenyés\([^[:alnum:]]\)/\1onstrenyera\2/g
    s/\b\([Cc]\)onstrenyéssi\([mu]\)\([^[:alnum:]]\)/\1onstrenyére\2\3/g
    s/\b\([Cc]\)onstrenyessi\([ns]\)\([^[:alnum:]]\)/\1onstrenyere\2\3/g
    s/\b\([Cc]\)onstrè\(nyer\|s\)\([^[:alnum:]]\)/\1onstré\2\3/g
    s/\b\([Cc]\)onstrenyi\([^[:alnum:]]\)/\1onstrenya\2/g
    s/\b\([Cc]\)onstrenyi\([ns]\)\([^[:alnum:]]\)/\1onstrenye\2\3/g
    s/\b\([Cc]\)onstrenyo\([^[:alnum:]]\)/\1onstreny\2/g
    # restrènyer -> restrényer
    s/\b\([Rr]\)estrenyés\([^[:alnum:]]\)/\1estrenyera\2/g
    s/\b\([Rr]\)estrenyéssi\([mu]\)\([^[:alnum:]]\)/\1estrenyére\2\3/g
    s/\b\([Rr]\)estrenyessi\([ns]\)\([^[:alnum:]]\)/\1estrenyere\2\3/g
    s/\b\([Rr]\)estrè\(nyer\|s\)\([^[:alnum:]]\)/\1estré\2\3/g
    s/\b\([Rr]\)estrenyi\([^[:alnum:]]\)/\1estrenya\2/g
    s/\b\([Rr]\)estrenyi\([ns]\)\([^[:alnum:]]\)/\1estrenye\2\3/g
    s/\b\([Rr]\)estrenyo\([^[:alnum:]]\)/\1estreny\2/g
# estudiar
s/\b\([Ee]\)studiés\([^[:alnum:]]\)/\1studiara\2/g
s/\b\([Ee]\)studiéssi\([mu]\)\([^[:alnum:]]\)/\1studiàre\2\3/g
s/\b\([Ee]\)studiessi\([ns]\)\([^[:alnum:]]\)/\1studiare\2\3/g
s/\b\([Ee]\)studi\([ïo]\)\([^[:alnum:]]\)/\1studie\3/g
s/\b\([Ee]\)studiï\([ns]\)\([^[:alnum:]]\)/\1studie\2\3/g
# esvair
s/\b\([Ee]\)svaeix\(e[ns]\|\)\([^[:alnum:]]\)/\1svaïx\2\3/g
s/\b\([Ee]\)svaeixi\([^[:alnum:]]\)/\1svaïsca\2/g
s/\b\([Ee]\)svaeixi\([ns]\)\([^[:alnum:]]\)/\1svaïsque\2\3/g
s/\b\([Ee]\)svaeixo\([^[:alnum:]]\)/\1svaïsc\2/g
s/\b\([Ee]\)svaís\([^[:alnum:]]\)/\1svaïra\2/g
s/\b\([Ee]\)svaíssi\([mu]\)\([^[:alnum:]]\)/\1svaíre\2\3/g
s/\b\([Ee]\)svaïssi\([ns]\)\([^[:alnum:]]\)/\1svaïre\2\3/g
# evitar
s/\b\([Ee]\)vités\([^[:alnum:]]\)/\1vitara\2/g
s/\b\([Ee]\)vitéssi\([mu]\)\([^[:alnum:]]\)/\1vitàre\2\3/g
s/\b\([Ee]\)vitessi\([ns]\)\([^[:alnum:]]\)/\1vitare\2\3/g
s/\b\([Ee]\)vit\([io]\)\([^[:alnum:]]\)/\1vite\3/g
s/\b\([Ee]\)viti\([ns]\)\([^[:alnum:]]\)/\1vite\2\3/g
# examinar
s/\b\([Ee]\)xaminés\([^[:alnum:]]\)/\1xaminara\2/g
s/\b\([Ee]\)xaminéssi\([mu]\)\([^[:alnum:]]\)/\1xaminàre\2\3/g
s/\b\([Ee]\)xaminessi\([ns]\)\([^[:alnum:]]\)/\1xaminare\2\3/g
s/\b\([Ee]\)xamin\([io]\)\([^[:alnum:]]\)/\1xamine\3/g
s/\b\([Ee]\)xamini\([ns]\)\([^[:alnum:]]\)/\1xamine\2\3/g
# excavar
s/\b\([Ee]\)xcavés\([^[:alnum:]]\)/\1xcavara\2/g
s/\b\([Ee]\)xcavéssi\([mu]\)\([^[:alnum:]]\)/\1xcavàre\2\3/g
s/\b\([Ee]\)xcavessi\([ns]\)\([^[:alnum:]]\)/\1xcavare\2\3/g
s/\b\([Ee]\)xcav\([io]\)\([^[:alnum:]]\)/\1xcave\3/g
s/\b\([Ee]\)xcavi\([ns]\)\([^[:alnum:]]\)/\1xcave\2\3/g
# excloure
s/\b\([Ee]\)xclogués\([^[:alnum:]]\)/\1xcloguera\2/g
s/\b\([Ee]\)xcloguéssi\([mu]\)\([^[:alnum:]]\)/\1xcloguére\2\3/g
s/\b\([Ee]\)xcloguessi\([ns]\)\([^[:alnum:]]\)/\1xcloguere\2\3/g
s/\b\([Ee]\)xclogui\([^[:alnum:]]\)/\1xcloga\2/g
s/\b\([Ee]\)xclogui\([ns]\)\([^[:alnum:]]\)/\1xclogue\2\3/g
# executar
s/\b\([Ee]\)xecutés\([^[:alnum:]]\)/\1xecutara\2/g
s/\b\([Ee]\)xecutéssi\([mu]\)\([^[:alnum:]]\)/\1xecutàre\2\3/g
s/\b\([Ee]\)xecutessi\([ns]\)\([^[:alnum:]]\)/\1xecutare\2\3/g
s/\b\([Ee]\)xecut\([io]\)\([^[:alnum:]]\)/\1xecute\3/g
s/\b\([Ee]\)xecuti\([ns]\)\([^[:alnum:]]\)/\1xecute\2\3/g
    # reexecutar
    # TODO: no
    s/\b\([Rr]\)eexecutés\([^[:alnum:]]\)/\1eexecutara\2/g
    s/\b\([Rr]\)eexecutéssi\([mu]\)\([^[:alnum:]]\)/\1eexecutàre\2\3/g
    s/\b\([Rr]\)eexecutessi\([ns]\)\([^[:alnum:]]\)/\1eexecutare\2\3/g
    s/\b\([Rr]\)eexecut\([io]\)\([^[:alnum:]]\)/\1eexecute\3/g
    s/\b\([Rr]\)eexecuti\([ns]\)\([^[:alnum:]]\)/\1eexecute\2\3/g
# exercitar
s/\b\([Ee]\)xercités\([^[:alnum:]]\)/\1xercitara\2/g
s/\b\([Ee]\)xercitéssi\([mu]\)\([^[:alnum:]]\)/\1xercitàre\2\3/g
s/\b\([Ee]\)xercitessi\([ns]\)\([^[:alnum:]]\)/\1xercitare\2\3/g
s/\b\([Ee]\)xercit\([io]\)\([^[:alnum:]]\)/\1xercite\3/g
s/\b\([Ee]\)xerciti\([ns]\)\([^[:alnum:]]\)/\1xercite\2\3/g
# exhaurir
s/\b\([Ee]\)xhaureix\(e[ns]\|\)\([^[:alnum:]]\)/\1xhaurix\2\3/g
s/\b\([Ee]\)xhaureixi\([^[:alnum:]]\)/\1xhaurisca\2/g
s/\b\([Ee]\)xhaureixi\([ns]\)\([^[:alnum:]]\)/\1xhaurisque\2\3/g
s/\b\([Ee]\)xhaureixo\([^[:alnum:]]\)/\1xhaurisc\2/g
s/\b\([Ee]\)xhaurís\([^[:alnum:]]\)/\1xhaurira\2/g
s/\b\([Ee]\)xhauríssi\([mu]\)\([^[:alnum:]]\)/\1xhauríre\2\3/g
s/\b\([Ee]\)xhaurissi\([ns]\)\([^[:alnum:]]\)/\1xhaurire\2\3/g
# exigir
s/\b\([Ee]\)xigeix\(e[ns]\|\)\([^[:alnum:]]\)/\1xigix\2\3/g
s/\b\([Ee]\)xigeixi\([^[:alnum:]]\)/\1xigsca\2/g
s/\b\([Ee]\)xigeixi\([ns]\)\([^[:alnum:]]\)/\1xigisque\2\3/g
s/\b\([Ee]\)xigeixo\([^[:alnum:]]\)/\1xigisc\2/g
s/\b\([Ee]\)xigís\([^[:alnum:]]\)/\1xigira\2/g
s/\b\([Ee]\)xigíssi\([mu]\)\([^[:alnum:]]\)/\1xigíre\2\3/g
s/\b\([Ee]\)xigissi\([ns]\)\([^[:alnum:]]\)/\1xigire\2\3/g
# existir
s/\b\([Ee]\)xisteix\(e[ns]\|\)\([^[:alnum:]]\)/\1xistix\2\3/g
s/\b\([Ee]\)xisteixi\([^[:alnum:]]\)/\1xistisca\2/g
s/\b\([Ee]\)xisteixi\([ns]\)\([^[:alnum:]]\)/\1xistisque\2\3/g
s/\b\([Ee]\)xisteixo\([^[:alnum:]]\)/\1xistisc\2/g
s/\b\([Ee]\)xistís\([^[:alnum:]]\)/\1xistira\2/g
s/\b\([Ee]\)xistíssi\([mu]\)\([^[:alnum:]]\)/\1xistíre\2\3/g
s/\b\([Ee]\)xistissi\([ns]\)\([^[:alnum:]]\)/\1xistire\2\3/g
# expandir
s/\b\([Ee]\)xpandeix\(e[ns]\|\)\([^[:alnum:]]\)/\1xpandix\2\3/g
s/\b\([Ee]\)xpandeixi\([^[:alnum:]]\)/\1xpandisca\2/g
s/\b\([Ee]\)xpandeixi\([ns]\)\([^[:alnum:]]\)/\1xpandisque\2\3/g
s/\b\([Ee]\)xpandeixo\([^[:alnum:]]\)/\1xpandisc\2/g
s/\b\([Ee]\)xpandís\([^[:alnum:]]\)/\1xpandira\2/g
s/\b\([Ee]\)xpandíssi\([mu]\)\([^[:alnum:]]\)/\1xpandíre\2\3/g
s/\b\([Ee]\)xpandissi\([ns]\)\([^[:alnum:]]\)/\1xpandire\2\3/g
# experimentar
s/\b\([Ee]\)xperimentés\([^[:alnum:]]\)/\1xperimentara\2/g
s/\b\([Ee]\)xperimentéssi\([mu]\)\([^[:alnum:]]\)/\1xperimentàre\2\3/g
s/\b\([Ee]\)xperimentessi\([ns]\)\([^[:alnum:]]\)/\1xperimentare\2\3/g
s/\b\([Ee]\)xperiment\([io]\)\([^[:alnum:]]\)/\1xperimente\3/g
s/\b\([Ee]\)xperimenti\([ns]\)\([^[:alnum:]]\)/\1xperimente\2\3/g
# expirar
s/\b\([Ee]\)xpirés\([^[:alnum:]]\)/\1xpirara\2/g
s/\b\([Ee]\)xpiréssi\([mu]\)\([^[:alnum:]]\)/\1xpiràre\2\3/g
s/\b\([Ee]\)xpiressi\([ns]\)\([^[:alnum:]]\)/\1xpirare\2\3/g
s/\b\([Ee]\)xpir\([io]\)\([^[:alnum:]]\)/\1xpire\3/g
s/\b\([Ee]\)xpiri\([ns]\)\([^[:alnum:]]\)/\1xpire\2\3/g
# explicar
s/\b\([Ee]\)xpliqués\([^[:alnum:]]\)/\1xplicara\2/g
s/\b\([Ee]\)xpliquéssi\([mu]\)\([^[:alnum:]]\)/\1xplicàre\2\3/g
s/\b\([Ee]\)xpliquessi\([ns]\)\([^[:alnum:]]\)/\1xplicare\2\3/g
s/\b\([Ee]\)xpliqui\([ns]\|\)\([^[:alnum:]]\)/\1xplique\2\3/g
s/\b\([Ee]\)xplico\([^[:alnum:]]\)/\1xplique\2/g
# explorar
s/\b\([Ee]\)xplorés\([^[:alnum:]]\)/\1xplorara\2/g
s/\b\([Ee]\)xploréssi\([mu]\)\([^[:alnum:]]\)/\1xploràre\2\3/g
s/\b\([Ee]\)xploressi\([ns]\)\([^[:alnum:]]\)/\1xplorare\2\3/g
s/\b\([Ee]\)xplor\([io]\)\([^[:alnum:]]\)/\1xplore\3/g
s/\b\([Ee]\)xplori\([ns]\)\([^[:alnum:]]\)/\1xplore\2\3/g
# explotar
s/\b\([Ee]\)xplotés\([^[:alnum:]]\)/\1xplotara\2/g
s/\b\([Ee]\)xplotéssi\([mu]\)\([^[:alnum:]]\)/\1xplotàre\2\3/g
s/\b\([Ee]\)xplotessi\([ns]\)\([^[:alnum:]]\)/\1xplotare\2\3/g
s/\b\([Ee]\)xplot\([io]\)\([^[:alnum:]]\)/\1xplote\3/g
s/\b\([Ee]\)xploti\([ns]\)\([^[:alnum:]]\)/\1xplote\2\3/g
# expressar (esmenes)
s/\b\([Ee]\)xpressés\([^[:alnum:]]\)/\1xpressara\2/g
s/\b\([Ee]\)xpréssi\([mu]\)\([^[:alnum:]]\)/\1xpressàre\2\3/g
s/\b\([Ee]\)xpressi\([ns]\)\([^[:alnum:]]\)/\1xpressare\2\3/g
s/\b\([Ee]\)xpress\([io]\)\([^[:alnum:]]\)/\1xpresse\3/g
s/\b\([Ee]\)xpressi\([ns]\)\([^[:alnum:]]\)/\1xpresse\2\3/g
# expulsar
s/\b\([Ee]\)xpulsés\([^[:alnum:]]\)/\1xpulsara\2/g
s/\b\([Ee]\)xpulséssi\([mu]\)\([^[:alnum:]]\)/\1xpulsàre\2\3/g
s/\b\([Ee]\)xpulsessi\([ns]\)\([^[:alnum:]]\)/\1xpulsare\2\3/g
s/\b\([Ee]\)xpuls\([io]\)\([^[:alnum:]]\)/\1xpulse\3/g
s/\b\([Ee]\)xpulsi\([ns]\)\([^[:alnum:]]\)/\1xpulse\2\3/g
# f
#
# facilitar
s/\b\([Ff]\)acilités\([^[:alnum:]]\)/\1acilitara\2/g
s/\b\([Ff]\)acilitéssi\([mu]\)\([^[:alnum:]]\)/\1acilitàre\2\3/g
s/\b\([Ff]\)acilitessi\([ns]\)\([^[:alnum:]]\)/\1acilitare\2\3/g
s/\b\([Ff]\)acilit\([io]\)\([^[:alnum:]]\)/\1acilite\3/g
s/\b\([Ff]\)aciliti\([ns]\)\([^[:alnum:]]\)/\1acilite\2\3/g
# TODO: no
# factoritzar
s/\b\([Ff]\)actoritzés\([^[:alnum:]]\)/\1actoritzara\2/g
s/\b\([Ff]\)actoritzéssi\([mu]\)\([^[:alnum:]]\)/\1actoritzàre\2\3/g
s/\b\([Ff]\)actoritzessi\([ns]\)\([^[:alnum:]]\)/\1actoritzare\2\3/g
s/\b\([Ff]\)actoritz\([io]\)\([^[:alnum:]]\)/\1actoritze\3/g
s/\b\([Ff]\)actoritzi\([ns]\)\([^[:alnum:]]\)/\1actoritze\2\3/g
    # TODO: no
    # desfactoritzar
    s/\b\([Dd]\)esfactoritzés\([^[:alnum:]]\)/\1esfactoritzara\2/g
    s/\b\([Dd]\)esfactoritzéssi\([mu]\)\([^[:alnum:]]\)/\1esfactoritzàre\2\3/g
    s/\b\([Dd]\)esfactoritzessi\([ns]\)\([^[:alnum:]]\)/\1esfactoritzare\2\3/g
    s/\b\([Dd]\)esfactoritz\([io]\)\([^[:alnum:]]\)/\1esfactoritze\3/g
    s/\b\([Dd]\)esfactoritzi\([ns]\)\([^[:alnum:]]\)/\1esfactoritze\2\3/g
# familiaritzar
s/\b\([Ff]\)amiliaritzés\([^[:alnum:]]\)/\1amiliaritzara\2/g
s/\b\([Ff]\)amiliaritzéssi\([mu]\)\([^[:alnum:]]\)/\1amiliaritzàre\2\3/g
s/\b\([Ff]\)amiliaritzessi\([ns]\)\([^[:alnum:]]\)/\1amiliaritzare\2\3/g
s/\b\([Ff]\)amiliaritz\([io]\)\([^[:alnum:]]\)/\1amiliaritze\3/g
s/\b\([Ff]\)amiliaritzi\([ns]\)\([^[:alnum:]]\)/\1amiliaritze\2\3/g
# fallar
s/\b\([Ff]\)allés\([^[:alnum:]]\)/\1allara\2/g
s/\b\([Ff]\)alléssi\([mu]\)\([^[:alnum:]]\)/\1allàre\2\3/g
s/\b\([Ff]\)allessi\([ns]\)\([^[:alnum:]]\)/\1allare\2\3/g
s/\b\([Ff]\)allo\([^[:alnum:]]\)/\1alle\2/g
s/\b\([Ff]\)alli\([^[:alnum:]]\)/\1alle\2/g
s/\b\([Ff]\)alli\([ns]\)\([^[:alnum:]]\)/\1alle\2\3/g
    # contrafallar
    s/\b\([Cc]\)ontrafallés\([^[:alnum:]]\)/\1ontrafallara\2/g
    s/\b\([Cc]\)ontrafalléssi\([mu]\)\([^[:alnum:]]\)/\1ontrafallàre\2\3/g
    s/\b\([Cc]\)ontrafallessi\([ns]\)\([^[:alnum:]]\)/\1ontrafallare\2\3/g
    s/\b\([Cc]\)ontrafallo\([^[:alnum:]]\)/\1ontrafalle\2/g
    s/\b\([Cc]\)ontrafalli\([^[:alnum:]]\)/\1ontrafalle\2/g
    s/\b\([Cc]\)ontrafalli\([ns]\)\([^[:alnum:]]\)/\1ontrafalle\2\3/g
    # refallar
    s/\b\([Rr]\)efallés\([^[:alnum:]]\)/\1efallara\2/g
    s/\b\([Rr]\)efalléssi\([mu]\)\([^[:alnum:]]\)/\1efallàre\2\3/g
    s/\b\([Rr]\)aefllessi\([ns]\)\([^[:alnum:]]\)/\1efallare\2\3/g
    s/\b\([Rr]\)efallo\([^[:alnum:]]\)/\1efalle\2/g
    s/\b\([Rr]\)efalli\([^[:alnum:]]\)/\1efalle\2/g
    s/\b\([Rr]\)efalli\([ns]\)\([^[:alnum:]]\)/\1efalle\2\3/g
# falsejar
s/\b\([Vv]\)alsegés\([^[:alnum:]]\)/\1alsejara\2/g
s/\b\([Vv]\)alsegéssi\([mu]\)\([^[:alnum:]]\)/\1alsejàre\2\3/g
s/\b\([Vv]\)alsegessi\([ns]\)\([^[:alnum:]]\)/\1alsejare\2\3/g
s/\b\([Vv]\)alsegi\([ns]\|\)\([^[:alnum:]]\)/\1alsege\2\3/g
s/\b\([Vv]\)alsejo\([^[:alnum:]]\)/\1alsege\2/g
# faltar
s/\b\([Ff]\)altés\([^[:alnum:]]\)/\1altara\2/g
s/\b\([Ff]\)altéssi\([mu]\)\([^[:alnum:]]\)/\1altàre\2\3/g
s/\b\([Ff]\)altessi\([ns]\)\([^[:alnum:]]\)/\1altare\2\3/g
s/\b\([Ff]\)alt\([io]\)\([^[:alnum:]]\)/\1alte\3/g
s/\b\([Ff]\)alti\([ns]\)\([^[:alnum:]]\)/\1alte\2\3/g
    # asfaltar
    s/\b\([Aa]\)sfaltés\([^[:alnum:]]\)/\1sfaltara\2/g
    s/\b\([Aa]\)sfaltéssi\([mu]\)\([^[:alnum:]]\)/\1sfaltàre\2\3/g
    s/\b\([Aa]\)sfaltessi\([ns]\)\([^[:alnum:]]\)/\1sfaltare\2\3/g
    s/\b\([Aa]\)sfalt\([io]\)\([^[:alnum:]]\)/\1sfalte\3/g
    s/\b\([Aa]\)sfalti\([ns]\)\([^[:alnum:]]\)/\1sfalte\2\3/g
# farcir
s/\b\([Ff]\)arceix\(e[ns]\|\)\([^[:alnum:]]\)/\1arcix\2\3/g
s/\b\([Ff]\)arceixi\([^[:alnum:]]\)/\1arcisca\2/g
s/\b\([Ff]\)arceixi\([ns]\)\([^[:alnum:]]\)/\1arcisque\2\3/g
s/\b\([Ff]\)arceixo\([^[:alnum:]]\)/\1arcisc\2/g
s/\b\([Ff]\)arcís\([^[:alnum:]]\)/\1arcira\2/g
s/\b\([Ff]\)arcíssi\([mu]\)\([^[:alnum:]]\)/\1arcíre\2\3/g
s/\b\([Ff]\)arcissi\([ns]\)\([^[:alnum:]]\)/\1arcire\2\3/g
s/\bFarigola\([^[:alnum:]]\)/Timonet\1/g
s/\bfarigola\([^[:alnum:]]\)/timonet\1/g
# favorejar
s/\b\([Ff]\)avoregés\([^[:alnum:]]\)/\1avorejara\2/g
s/\b\([Ff]\)avoregéssi\([mu]\)\([^[:alnum:]]\)/\1avorejàre\2\3/g
s/\b\([Ff]\)avoregessi\([ns]\)\([^[:alnum:]]\)/\1avorejare\2\3/g
s/\b\([Ff]\)avoregi\([ns]\|\)\([^[:alnum:]]\)/\1avorege\2\3/g
s/\b\([Ff]\)avorejo\([^[:alnum:]]\)/\1avorege\2/g
s/\b\([Ff]\)ein\(a\|es\)\([^[:alnum:]]\)/\1aen\2\3/g
# fer
s/\b\([Ff]\)aci\([^[:alnum:]]\)/\1aça\2/g
s/\b\([Ff]\)aci\([ns]\)\([^[:alnum:]]\)/\1ace\2\3/g
s/\b\([Ff]\)aig\([^[:alnum:]]\)/\1aç\2/g
s/\b\([Ff]\)èie\([mu]\)\([^[:alnum:]]\)/\1éie\2\3/g
# s/\b\([Ff]\)es\([^[:alnum:]]\)/\1era\2/g No!
s/\b\([Ff]\)éssi\([mu]\)\([^[:alnum:]]\)/\1ére\2\3/g
s/\b\([Ff]\)essi\([ns]\)\([^[:alnum:]]\)/\1ere\2\3/g
    # contrafer
    s/\b\([Cc]\)ontrafaci\([^[:alnum:]]\)/\1ontrafaça\2/g
    s/\b\([Cc]\)ontrafaci\([ns]\)\([^[:alnum:]]\)/\1ontraface\2\3/g
    s/\b\([Cc]\)ontrafaig\([^[:alnum:]]\)/\1ontrafaç\2/g
    s/\b\([Cc]\)ontrafèie\([mu]\)\([^[:alnum:]]\)/\1ontraféie\2\3/g
    s/\b\([Cc]\)ontrafés\([^[:alnum:]]\)/\1ontrafera\2/g
    s/\b\([Cc]\)ontraféssi\([mu]\)\([^[:alnum:]]\)/\1ontrafére\2\3/g
    s/\b\([Cc]\)ontrafessi\([ns]\)\([^[:alnum:]]\)/\1ontrafere\2\3/g
    # desfer
    s/\b\([Dd]\)esfaci\([^[:alnum:]]\)/\1esfaça\2/g
    s/\b\([Dd]\)esfaci\([ns]\)\([^[:alnum:]]\)/\1esface\2\3/g
    s/\b\([Dd]\)esfaig\([^[:alnum:]]\)/\1esfaç\2/g
    s/\b\([Dd]\)esfèie\([mu]\)\([^[:alnum:]]\)/\1esféie\2\3/g
#    s/\b\([Dd]\)esfés\([^[:alnum:]]\)/\1esfera\2/g
    s/\b\([Dd]\)esféssi\([mu]\)\([^[:alnum:]]\)/\1esfére\2\3/g
    s/\b\([Dd]\)esfessi\([ns]\)\([^[:alnum:]]\)/\1esfere\2\3/g
    # estrafer
    s/\b\([Ee]\)strafaci\([^[:alnum:]]\)/\1strafaça\2/g
    s/\b\([Ee]\)strafaci\([ns]\)\([^[:alnum:]]\)/\1straface\2\3/g
    s/\b\([Ee]\)strafaig\([^[:alnum:]]\)/\1strafaç\2/g
    s/\b\([Ee]\)strafèie\([mu]\)\([^[:alnum:]]\)/\1straféie\2\3/g
    s/\b\([Ee]\)strafés\([^[:alnum:]]\)/\1strafera\2/g
    s/\b\([Ee]\)straféssi\([mu]\)\([^[:alnum:]]\)/\1strafére\2\3/g
    s/\b\([Ee]\)strafessi\([ns]\)\([^[:alnum:]]\)/\1strafere\2\3/g
    # refer
    s/\b\([Rr]\)efaci\([^[:alnum:]]\)/\1efaça\2/g
    s/\b\([Rr]\)efaci\([ns]\)\([^[:alnum:]]\)/\1eface\2\3/g
    s/\b\([Rr]\)efaig\([^[:alnum:]]\)/\1efaç\2/g
    s/\b\([Rr]\)efèie\([mu]\)\([^[:alnum:]]\)/\1eféie\2\3/g
#    s/\b\([Rr]\)efés\([^[:alnum:]]\)/\1efera\2/g
    s/\b\([Rr]\)eféssi\([mu]\)\([^[:alnum:]]\)/\1efére\2\3/g
    s/\b\([Rr]\)efessi\([ns]\)\([^[:alnum:]]\)/\1efere\2\3/g
    # satisfer
    s/\b\([Ss]\)atisfés\([^[:alnum:]]\)/\1atisfera\2/g
    s/\b\([Ss]\)atisféssi\([mu]\)\([^[:alnum:]]\)/\1atisfére\2\3/g
    s/\b\([Ss]\)atisfessi\([ns]\)\([^[:alnum:]]\)/\1atisfere\2\3/g
    s/\b\([Ss]\)atisfaig\([^[:alnum:]]\)/\1atisfaç\2/g
    s/\b\([Ss]\)atisfaci\([^[:alnum:]]\)/\1atisfaça\2/g
    s/\b\([Ss]\)atisfaci\([ns]\)\([^[:alnum:]]\)/\1atisface\2\3/g
        # insatisfer
        s/\b\([Ii]\)nsatisfés\([^[:alnum:]]\)/\1nsatisfera\2/g
        s/\b\([Ii]\)nsatisféssi\([mu]\)\([^[:alnum:]]\)/\1nsatisfére\2\3/g
        s/\b\([Ii]\)nsatisfessi\([ns]\)\([^[:alnum:]]\)/\1nsatisfere\2\3/g
        s/\b\([Ii]\)nsatisfaig\([^[:alnum:]]\)/\1nsatisfaç\2/g
        s/\b\([Ii]\)nsatisfaci\([^[:alnum:]]\)/\1nsatisfaça\2/g
        s/\b\([Ii]\)nsatisfaci\([ns]\)\([^[:alnum:]]\)/\1nsatisface\2\3/g
# ferejar
s/\b\([Ff]\)eregés\([^[:alnum:]]\)/\1erejara\2/g
s/\b\([Ff]\)eregéssi\([mu]\)\([^[:alnum:]]\)/\1erejàre\2\3/g
s/\b\([Ff]\)eregessi\([ns]\)\([^[:alnum:]]\)/\1erejare\2\3/g
s/\b\([Ff]\)eregi\([ns]\|\)\([^[:alnum:]]\)/\1erege\2\3/g
s/\b\([Ff]\)erejo\([^[:alnum:]]\)/\1erege\2/g
# ferir
s/\b\([Ff]\)ereix\(e[ns]\|\)\([^[:alnum:]]\)/\1erix\2\3/g
s/\b\([Ff]\)ereixi\([^[:alnum:]]\)/\1erisca\2/g
s/\b\([Ff]\)ereixi\([ns]\)\([^[:alnum:]]\)/\1erisque\2\3/g
s/\b\([Ff]\)ereixo\([^[:alnum:]]\)/\1erisc\2/g
s/\b\([Ff]\)erís\([^[:alnum:]]\)/\1erira\2/g
s/\b\([Ff]\)eríssi\([mu]\|\)\([^[:alnum:]]\)/\1eríre\2\3/g
s/\b\([Ff]\)erissi\([ns]\|\)\([^[:alnum:]]\)/\1erire\2\3/g
    # deferir
    s/\b\([Dd]\)efereix\(e[ns]\|\)\([^[:alnum:]]\)/\1eferix\2\3/g
    s/\b\([Dd]\)efereixi\([^[:alnum:]]\)/\1eferisca\2/g
    s/\b\([Dd]\)efereixi\([ns]\)\([^[:alnum:]]\)/\1eferisque\2\3/g
    s/\b\([Dd]\)efereixo\([^[:alnum:]]\)/\1eferisc\2/g
    s/\b\([Dd]\)eferís\([^[:alnum:]]\)/\1eferira\2/g
    s/\b\([Dd]\)eferíssi\([mu]\)\([^[:alnum:]]\)/\1eferíre\2\3/g
    s/\b\([Dd]\)eferissi\([ns]\)\([^[:alnum:]]\)/\1eferire\2\3/g
    # diferir
    s/\b\([Dd]\)ifereix\(e[ns]\|\)\([^[:alnum:]]\)/\1iferix\2\3/g
    s/\b\([Dd]\)ifereixi\([^[:alnum:]]\)/\1iferisca\2/g
    s/\b\([Dd]\)ifereixi\([ns]\)\([^[:alnum:]]\)/\1iferisque\2\3/g
    s/\b\([Dd]\)ifereixo\([^[:alnum:]]\)/\1iferisc\2/g
    s/\b\([Dd]\)iferís\([^[:alnum:]]\)/\1iferira\2/g
    s/\b\([Dd]\)iferíssi\([mu]\|\)\([^[:alnum:]]\)/\1iferíre\2\3/g
    s/\b\([Dd]\)iferissi\([ns]\|\)\([^[:alnum:]]\)/\1iferire\2\3/g
    # inferir
    s/\b\([Ii]\)nfereix\(e[ns]\|\)\([^[:alnum:]]\)/\1nferix\2\3/g
    s/\b\([Ii]\)nfereixi\([^[:alnum:]]\)/\1nferisca\2/g
    s/\b\([Ii]\)nfereixi\([ns]\)\([^[:alnum:]]\)/\1nferisque\2\3/g
    s/\b\([Ii]\)nfereixo\([^[:alnum:]]\)/\1nferisc\2/g
    s/\b\([Ii]\)nferís\([^[:alnum:]]\)/\1nferira\2/g
    s/\b\([Ii]\)nferíssi\([mu]\)\([^[:alnum:]]\)/\1nferíre\2\3/g
    s/\b\([Ii]\)nferissi\([ns]\)\([^[:alnum:]]\)/\1nferire\2\3/g
    # interferir
    s/\b\([Ii]\)nterfereix\(e[ns]\|\)\([^[:alnum:]]\)/\1nterferix\2\3/g
    s/\b\([Ii]\)nterfereixi\([^[:alnum:]]\)/\1nterferisca\2/g
    s/\b\([Ii]\)nterfereixi\([ns]\)\([^[:alnum:]]\)/\1nterferisque\2\3/g
    s/\b\([Ii]\)nterfereixo\([^[:alnum:]]\)/\1nterferisc\2/g
    s/\b\([Ii]\)nterferís\([^[:alnum:]]\)/\1nterferira\2/g
    s/\b\([Ii]\)nterferíssi\([mu]\)\([^[:alnum:]]\)/\1nterferíre\2\3/g
    s/\b\([Ii]\)nterferissi\([ns]\)\([^[:alnum:]]\)/\1nterferire\2\3/g
    # malferir
    s/\b\([Mm]\)alfereix\(e[ns]\|\)\([^[:alnum:]]\)/\1alferix\2\3/g
    s/\b\([Mm]\)alfereixi\([^[:alnum:]]\)/\1alferisca\2/g
    s/\b\([Mm]\)alfereixi\([ns]\)\([^[:alnum:]]\)/\1alferisque\2\3/g
    s/\b\([Mm]\)alfereixo\([^[:alnum:]]\)/\1alferisc\2/g
    s/\b\([Mm]\)alferís\([^[:alnum:]]\)/\1alferira\2/g
    s/\b\([Mm]\)alferíssi\([mu]\)\([^[:alnum:]]\)/\1alferíre\2\3/g
    s/\b\([Mm]\)alferissi\([ns]\)\([^[:alnum:]]\)/\1alferire\2\3/g
    # oferir
    s/\b\([Oo]\)fereix\(e[ns]\|\)\([^[:alnum:]]\)/\1ferix\2\3/g
    s/\b\([Oo]\)fereixi\([^[:alnum:]]\)/\1ferisca\2/g
    s/\b\([Oo]\)fereixi\([ns]\)\([^[:alnum:]]\)/\1ferisque\2\3/g
    s/\b\([Oo]\)fereixo\([^[:alnum:]]\)/\1ferisc\2/g
    s/\b\([Oo]\)ferís\([^[:alnum:]]\)/\1ferira\2/g
    s/\b\([Oo]\)feríssi\([mu]\)\([^[:alnum:]]\)/\1feríre\2\3/g
    s/\b\([Oo]\)ferissi\([ns]\)\([^[:alnum:]]\)/\1ferire\2\3/g
    s/\b\([Oo]\)fert\(s\|\)\([^[:alnum:]]\)/\1ferit\2\3/g
    s/\b\([Oo]\)fert\(a\|es\)\([^[:alnum:]]\)/\1ferid\2\3/g
    # preferir
    s/\b\([Pp]\)refereix\(e[ns]\|\)\([^[:alnum:]]\)/\1referix\2\3/g
    s/\b\([Pp]\)refereixi\([^[:alnum:]]\)/\1referisca\2/g
    s/\b\([Pp]\)refereixi\([ns]\)\([^[:alnum:]]\)/\1referisque\2\3/g
    s/\b\([Pp]\)refereixo\([^[:alnum:]]\)/\1referisc\2/g
    s/\b\([Pp]\)referís\([^[:alnum:]]\)/\1referira\2/g
    s/\b\([Pp]\)referíssi\([mu]\)\([^[:alnum:]]\)/\1referíre\2\3/g
    s/\b\([Pp]\)referissi\([ns]\)\([^[:alnum:]]\)/\1referire\2\3/g
    # proferir
    s/\b\([Pp]\)rofereix\(e[ns]\|\)\([^[:alnum:]]\)/\1roferix\2\3/g
    s/\b\([Pp]\)rofereixi\([^[:alnum:]]\)/\1roferisca\2/g
    s/\b\([Pp]\)rofereixi\([ns]\)\([^[:alnum:]]\)/\1roferisque\2\3/g
    s/\b\([Pp]\)rofereixo\([^[:alnum:]]\)/\1roferisc\2/g
    s/\b\([Pp]\)roferís\([^[:alnum:]]\)/\1roferira\2/g
    s/\b\([Pp]\)roferíssi\([mu]\)\([^[:alnum:]]\)/\1roferíre\2\3/g
    s/\b\([Pp]\)roferissi\([ns]\)\([^[:alnum:]]\)/\1roferire\2\3/g
    # referir
    s/\b\([Rr]\)efereix\(e[ns]\|\)\([^[:alnum:]]\)/\1eferix\2\3/g
    s/\b\([Rr]\)efereixi\([^[:alnum:]]\)/\1eferisca\2/g
    s/\b\([Rr]\)efereixi\([ns]\)\([^[:alnum:]]\)/\1eferisque\2\3/g
    s/\b\([Rr]\)efereixo\([^[:alnum:]]\)/\1eferisc\2/g
    s/\b\([Rr]\)eferís\([^[:alnum:]]\)/\1eferira\2/g
    s/\b\([Rr]\)eferíssi\([mu]\)\([^[:alnum:]]\)/\1eferíre\2\3/g
    s/\b\([Rr]\)eferissi\([ns]\)\([^[:alnum:]]\)/\1eferire\2\3/g
    # transferir
    s/\b\([Tt]\)ransfereix\(e[ns]\|\)\([^[:alnum:]]\)/\1ransferix\2\3/g
    s/\b\([Tt]\)ransfereixi\([^[:alnum:]]\)/\1ransferisca\2/g
    s/\b\([Tt]\)ransfereixi\([ns]\)\([^[:alnum:]]\)/\1ransferisque\2\3/g
    s/\b\([Tt]\)ransfereixo\([^[:alnum:]]\)/\1ransferisc\2/g
    s/\b\([Tt]\)ransferís\([^[:alnum:]]\)/\1ransferira\2/g
    s/\b\([Tt]\)ransferíssi\([mu]\)\([^[:alnum:]]\)/\1ransferíre\2\3/g
    s/\b\([Tt]\)ransferissi\([ns]\)\([^[:alnum:]]\)/\1ransferire\2\3/g
# fermentar
s/\b\([Ff]\)ermentés\([^[:alnum:]]\)/\1ermentara\2/g
s/\b\([Ff]\)ermentéssi\([mu]\)\([^[:alnum:]]\)/\1ermentàre\2\3/g
s/\b\([Ff]\)ermentessi\([ns]\)\([^[:alnum:]]\)/\1ermentare\2\3/g
s/\b\([Ff]\)erment\([io]\)\([^[:alnum:]]\)/\1ermente\3/g
s/\b\([Ff]\)ermenti\([ns]\)\([^[:alnum:]]\)/\1ermente\2\3/g
s/\b\([Ff]\)eroès\([^[:alnum:]]\)/\1eroés\2/g
s/\bFerri\(s\|\)\([^[:alnum:]]\)/Transbordador\1\2/g
s/\bferri\(s\|\)\([^[:alnum:]]\)/transbordador\1\2/g
# finalitzar
s/\b\([Ff]\)inalitzés\([^[:alnum:]]\)/\1inalitzara\2/g
s/\b\([Ff]\)inalitzéssi\([mu]\)\([^[:alnum:]]\)/\1inalitzàre\2\3/g
s/\b\([Ff]\)inalitzessi\([ns]\)\([^[:alnum:]]\)/\1inalitzare\2\3/g
s/\b\([Ff]\)inalitz\([io]\)\([^[:alnum:]]\)/\1inalitze\3/g
s/\b\([Ff]\)inalitzi\([ns]\)\([^[:alnum:]]\)/\1inalitze\2\3/g
s/\b\([Ff]\)inès\([^[:alnum:]]\)/\1inés\2/g
s/\b\([Ff]\)inlandès\([^[:alnum:]]\)/\1inlandés\2/g
# firmar
s/\b\([Ff]\)irmés\([^[:alnum:]]\)/\1irmara\2/g
s/\b\([Ff]\)irméssi\([mu]\)\([^[:alnum:]]\)/\1irmàre\2\3/g
s/\b\([Ff]\)irmessi\([ns]\)\([^[:alnum:]]\)/\1irmare\2\3/g
s/\b\([Ff]\)irm\([io]\)\([^[:alnum:]]\)/\1irme\3/g
s/\b\([Ff]\)irmi\([ns]\)\([^[:alnum:]]\)/\1irme\2\3/g
    # afirmar
    s/\b\([Aa]\)firmés\([^[:alnum:]]\)/\1firmara\2/g
    s/\b\([Aa]\)firméssi\([mu]\)\([^[:alnum:]]\)/\1firmàre\2\3/g
    s/\b\([Aa]\)firmessi\([ns]\)\([^[:alnum:]]\)/\1firmare\2\3/g
    s/\b\([Aa]\)firm\([io]\)\([^[:alnum:]]\)/\1firme\3/g
    s/\b\([Aa]\)firmi\([ns]\)\([^[:alnum:]]\)/\1firme\2\3/g
    # confirmar
    s/\b\([Cc]\)onfirmés\([^[:alnum:]]\)/\1onfirmara\2/g
    s/\b\([Cc]\)onfirméssi\([mu]\)\([^[:alnum:]]\)/\1onfirmàre\2\3/g
    s/\b\([Cc]\)onfirmessi\([ns]\)\([^[:alnum:]]\)/\1onfirmare\2\3/g
    s/\b\([Cc]\)onfirm\([io]\)\([^[:alnum:]]\)/\1onfirme\3/g
    s/\b\([Cc]\)onfirmi\([ns]\)\([^[:alnum:]]\)/\1onfirme\2\3/g
    # contrafirmar
    s/\b\([Cc]\)ontrafirmés\([^[:alnum:]]\)/\1ontrafirmara\2/g
    s/\b\([Cc]\)ontrafirméssi\([mu]\)\([^[:alnum:]]\)/\1ontrafirmàre\2\3/g
    s/\b\([Cc]\)ontrafirmessi\([ns]\)\([^[:alnum:]]\)/\1ontrafirmare\2\3/g
    s/\b\([Cc]\)ontrafirm\([io]\)\([^[:alnum:]]\)/\1ontrafirme\3/g
    s/\b\([Cc]\)ontrafirmi\([ns]\)\([^[:alnum:]]\)/\1ontrafirme\2\3/g
    # infirmar
    s/\b\([Ii]\)nfirmés\([^[:alnum:]]\)/\1nfirmara\2/g
    s/\b\([Ii]\)nfirméssi\([mu]\)\([^[:alnum:]]\)/\1nfirmàre\2\3/g
    s/\b\([Ii]\)nfirmessi\([ns]\)\([^[:alnum:]]\)/\1nfirmare\2\3/g
    s/\b\([Ii]\)nfirm\([io]\)\([^[:alnum:]]\)/\1nfirme\3/g
    s/\b\([Ii]\)nfirmi\([ns]\)\([^[:alnum:]]\)/\1nfirme\2\3/g
    # reafirmar
    s/\b\([Rr]\)eafirmés\([^[:alnum:]]\)/\1eafirmara\2/g
    s/\b\([Rr]\)eafirméssi\([mu]\)\([^[:alnum:]]\)/\1eafirmàre\2\3/g
    s/\b\([Rr]\)eafirmessi\([ns]\)\([^[:alnum:]]\)/\1eafirmare\2\3/g
    s/\b\([Rr]\)eafirm\([io]\)\([^[:alnum:]]\)/\1eafirme\3/g
    s/\b\([Rr]\)eafirmi\([ns]\)\([^[:alnum:]]\)/\1eafirme\2\3/g
# fixar
s/\b\([Ff]\)ixés\([^[:alnum:]]\)/\1ixara\2/g
s/\b\([Ff]\)ixéssi\([mu]\)\([^[:alnum:]]\)/\1ixàre\2\3/g
s/\b\([Ff]\)ixessi\([ns]\)\([^[:alnum:]]\)/\1ixare\2\3/g
s/\b\([Ff]\)ix\([io]\)\([^[:alnum:]]\)/\1ixe\3/g
s/\b\([Ff]\)ixi\([ns]\)\([^[:alnum:]]\)/\1ixe\2\3/g
    # afixar
    s/\b\([Aa]\)fixés\([^[:alnum:]]\)/\1fixara\2/g
    s/\b\([Aa]\)fixéssi\([mu]\)\([^[:alnum:]]\)/\1fixàre\2\3/g
    s/\b\([Aa]\)fixessi\([ns]\)\([^[:alnum:]]\)/\1fixare\2\3/g
    s/\b\([Aa]\)fix\([io]\)\([^[:alnum:]]\)/\1fixe\3/g
    s/\b\([Aa]\)fixi\([ns]\)\([^[:alnum:]]\)/\1fixe\2\3/g
    # infixar
    s/\b\([Ii]\)nfixés\([^[:alnum:]]\)/\1nfixara\2/g
    s/\b\([Ii]\)nfixéssi\([mu]\)\([^[:alnum:]]\)/\1nfixàre\2\3/g
    s/\b\([Ii]\)nfixessi\([ns]\)\([^[:alnum:]]\)/\1nfixare\2\3/g
    s/\b\([Ii]\)nfix\([io]\)\([^[:alnum:]]\)/\1nfixe\3/g
    s/\b\([Ii]\)nfixi\([ns]\)\([^[:alnum:]]\)/\1nfixe\2\3/g
    # prefixar
    s/\b\([Pp]\)refixés\([^[:alnum:]]\)/\1refixara\2/g
    s/\b\([Pp]\)refixéssi\([mu]\)\([^[:alnum:]]\)/\1refixàre\2\3/g
    s/\b\([Pp]\)refixessi\([ns]\)\([^[:alnum:]]\)/\1refixare\2\3/g
    s/\b\([Pp]\)refix\([io]\)\([^[:alnum:]]\)/\1refixe\3/g
    s/\b\([Pp]\)refixi\([ns]\)\([^[:alnum:]]\)/\1refixe\2\3/g
    # sufixar
    s/\b\([Ss]\)ufixés\([^[:alnum:]]\)/\1ufixara\2/g
    s/\b\([Ss]\)ufixéssi\([mu]\)\([^[:alnum:]]\)/\1ufixàre\2\3/g
    s/\b\([Ss]\)ufixessi\([ns]\)\([^[:alnum:]]\)/\1ufixare\2\3/g
    s/\b\([Ss]\)ufix\([io]\)\([^[:alnum:]]\)/\1ufixe\3/g
    s/\b\([Ss]\)ufixi\([ns]\)\([^[:alnum:]]\)/\1ufixe\2\3/g
    # termofixar
    s/\b\([Tt]\)ermofixés\([^[:alnum:]]\)/\1ermofixara\2/g
    s/\b\([Tt]\)fermoixéssi\([mu]\)\([^[:alnum:]]\)/\1ermofixàre\2\3/g
    s/\b\([Tt]\)ermofixessi\([ns]\)\([^[:alnum:]]\)/\1ermofixare\2\3/g
    s/\b\([Tt]\)ermofix\([io]\)\([^[:alnum:]]\)/\1ermofixe\3/g
    s/\b\([Tt]\)ermofixi\([ns]\)\([^[:alnum:]]\)/\1ermofixe\2\3/g
# flamarejar -> flamerejar (esmenes)
# flotar
s/\b\([Ff]\)lotés\([^[:alnum:]]\)/\1lotara\2/g
s/\b\([Ff]\)lotéssi\([mu]\)\([^[:alnum:]]\)/\1lotàre\2\3/g
s/\b\([Ff]\)lotessi\([ns]\)\([^[:alnum:]]\)/\1lotare\2\3/g
s/\b\([Ff]\)lot\([io]\)\([^[:alnum:]]\)/\1lote\3/g
s/\b\([Ff]\)loti\([ns]\)\([^[:alnum:]]\)/\1lote\2\3/g
# fluir
s/\b\([Ff]\)lueix\(e[ns]\|\)\([^[:alnum:]]\)/\1luïx\2\3/g
s/\b\([Ff]\)lueixi\([^[:alnum:]]\)/\1luïsca\2/g
s/\b\([Ff]\)lueixi\([ns]\)\([^[:alnum:]]\)/\1luïsque\2\3/g
s/\b\([Ff]\)lueixo\([^[:alnum:]]\)/\1luïsc\2/g
s/\b\([Ff]\)luís\([^[:alnum:]]\)/\1luïra\2/g
s/\b\([Ff]\)luíssi\([mu]\)\([^[:alnum:]]\)/\1luíre\2\3/g
s/\b\([Ff]\)luïssi\([ns]\)\([^[:alnum:]]\)/\1luïre\2\3/g
    # confluir
    s/\b\([Cc]\)onflueix\(e[ns]\|\)\([^[:alnum:]]\)/\1onfluïx\2\3/g
    s/\b\([Cc]\)onflueixi\([^[:alnum:]]\)/\1onfluïsca\2/g
    s/\b\([Cc]\)onflueixi\([ns]\)\([^[:alnum:]]\)/\1onfluïsque\2\3/g
    s/\b\([Cc]\)onflueixo\([^[:alnum:]]\)/\1onfluïsc\2/g
    s/\b\([Cc]\)onfluís\([^[:alnum:]]\)/\1onfluïra\2/g
    s/\b\([Cc]\)onfluíssi\([mu]\)\([^[:alnum:]]\)/\1onfluíre\2\3/g
    s/\b\([Cc]\)onfluïssi\([ns]\)\([^[:alnum:]]\)/\1onfluïre\2\3/g
    # difluir
    s/\b\([Dd]\)iflueix\(e[ns]\|\)\([^[:alnum:]]\)/\1ifluïx\2\3/g
    s/\b\([Dd]\)iflueixi\([^[:alnum:]]\)/\1ifluïsca\2/g
    s/\b\([Dd]\)iflueixi\([ns]\)\([^[:alnum:]]\)/\1ifluïsque\2\3/g
    s/\b\([Dd]\)iflueixo\([^[:alnum:]]\)/\1ifluïsc\2/g
    s/\b\([Dd]\)ifluís\([^[:alnum:]]\)/\1ifluïra\2/g
    s/\b\([Dd]\)ifluíssi\([mu]\)\([^[:alnum:]]\)/\1ifluíre\2\3/g
    s/\b\([Dd]\)ifluïssi\([ns]\)\([^[:alnum:]]\)/\1ifluïre\2\3/g
    # efluir / refluir
    s/\b\([Rr]\|\)\([Ee]\)flueix\(e[ns]\|\)\([^[:alnum:]]\)/\1\2fluïx\3\4/g
    s/\b\([Rr]\|\)\([Ee]\)flueixi\([^[:alnum:]]\)/\1\2fluïsca\3/g
    s/\b\([Rr]\|\)\([Ee]\)flueixi\([ns]\)\([^[:alnum:]]\)/\1\2fluïsque\3\4/g
    s/\b\([Rr]\|\)\([Ee]\)flueixo\([^[:alnum:]]\)/\1\2fluïsc\3/g
    s/\b\([Rr]\|\)\([Ee]\)fluís\([^[:alnum:]]\)/\1\2fluïra\3/g
    s/\b\([Rr]\|\)\([Ee]\)fluíssi\([mu]\)\([^[:alnum:]]\)/\1\2fluíre\3\4/g
    s/\b\([Rr]\|\)\([Ee]\)fluïssi\([ns]\)\([^[:alnum:]]\)/\1\2fluïre\3\4/g
    # influir
    s/\b\([Ii]\)nflueix\(e[ns]\|\)\([^[:alnum:]]\)/\1nfluïx\2\3/g
    s/\b\([Ii]\)nflueixi\([^[:alnum:]]\)/\1nfluïsca\2/g
    s/\b\([Ii]\)nflueixi\([ns]\)\([^[:alnum:]]\)/\1nfluïsque\2\3/g
    s/\b\([Ii]\)nflueixo\([^[:alnum:]]\)/\1nfluïsc\2/g
    s/\b\([Ii]\)nfluís\([^[:alnum:]]\)/\1nfluïra\2/g
    s/\b\([Ii]\)nfluíssi\([mu]\)\([^[:alnum:]]\)/\1nfluíre\2\3/g
    s/\b\([Ii]\)nfluïssi\([ns]\)\([^[:alnum:]]\)/\1nfluïre\2\3/g
# fomentar
s/\b\([Ff]\)omentés\([^[:alnum:]]\)/\1omentara\2/g
s/\b\([Ff]\)omentéssi\([mu]\)\([^[:alnum:]]\)/\1omentàre\2\3/g
s/\b\([Ff]\)omentessi\([ns]\)\([^[:alnum:]]\)/\1omentare\2\3/g
s/\b\([Ff]\)oment\([io]\)\([^[:alnum:]]\)/\1omente\3/g
s/\b\([Ff]\)omenti\([ns]\)\([^[:alnum:]]\)/\1omente\2\3/g
# fonamentar
s/\b\([Ff]\)onamentés\([^[:alnum:]]\)/\1onamentara\2/g
s/\b\([Ff]\)onamentéssi\([mu]\)\([^[:alnum:]]\)/\1onamentàre\2\3/g
s/\b\([Ff]\)onamentessi\([ns]\)\([^[:alnum:]]\)/\1onamentare\2\3/g
s/\b\([Ff]\)onament\([io]\)\([^[:alnum:]]\)/\1onamente\3/g
s/\b\([Ff]\)onamenti\([ns]\)\([^[:alnum:]]\)/\1onamente\2\3/g
    # desfonamentar
    s/\b\([Dd]\)esfonamentés\([^[:alnum:]]\)/\1esfonamentara\2/g
    s/\b\([Dd]\)esfonamentéssi\([mu]\)\([^[:alnum:]]\)/\1esfonamentàre\2\3/g
    s/\b\([Dd]\)esfonamentessi\([ns]\)\([^[:alnum:]]\)/\1esfonamentare\2\3/g
    s/\b\([Dd]\)esfonament\([io]\)\([^[:alnum:]]\)/\1esfonamente\3/g
    s/\b\([Dd]\)esfonamenti\([ns]\)\([^[:alnum:]]\)/\1esfonamente\2\3/g
    # refonamentar
    s/\b\([Rr]\)efonamentés\([^[:alnum:]]\)/\1efonamentara\2/g
    s/\b\([Rr]\)efonamentéssi\([mu]\)\([^[:alnum:]]\)/\1efonamentàre\2\3/g
    s/\b\([Rr]\)efonamentessi\([ns]\)\([^[:alnum:]]\)/\1efonamentare\2\3/g
    s/\b\([Rr]\)efonament\([io]\)\([^[:alnum:]]\)/\1efonamente\3/g
    s/\b\([Rr]\)efonamenti\([ns]\)\([^[:alnum:]]\)/\1efonamente\2\3/g
# fondre
s/\b\([Ff]\)ongués\([^[:alnum:]]\)/\1onguera\2/g
s/\b\([Ff]\)onguéssi\([mu]\)\([^[:alnum:]]\)/\1onguére\2\3/g
s/\b\([Ff]\)onguessi\([ns]\)\([^[:alnum:]]\)/\1onguere\2\3/g
s/\b\([Ff]\)ongui\([^[:alnum:]]\)/\1onga\2/g
s/\b\([Ff]\)ongui\([ns]\)\([^[:alnum:]]\)/\1ongue\2\3/g
    # confondre
    s/\b\([Cc]\)onfongués\([^[:alnum:]]\)/\1onfonguera\2/g
    s/\b\([Cc]\)onfonguéssi\([mu]\)\([^[:alnum:]]\)/\1onfonguére\2\3/g
    s/\b\([Cc]\)onfonguessi\([ns]\)\([^[:alnum:]]\)/\1onfonguere\2\3/g
    s/\b\([Cc]\)onfongui\([^[:alnum:]]\)/\1onfonga\2/g
    s/\b\([Cc]\)onfongui\([ns]\)\([^[:alnum:]]\)/\1onfongue\2\3/g
    # difondre
    s/\b\([Dd]\)ifongués\([^[:alnum:]]\)/\1ifonguera\2/g
    s/\b\([Dd]\)ifonguéssi\([mu]\)\([^[:alnum:]]\)/\1ifonguére\2\3/g
    s/\b\([Dd]\)ifonguessi\([ns]\)\([^[:alnum:]]\)/\1ifonguere\2\3/g
    s/\b\([Dd]\)ifongui\([^[:alnum:]]\)/\1ifonga\2/g
    s/\b\([Dd]\)ifongui\([ns]\)\([^[:alnum:]]\)/\1ifongue\2\3/g
    # infondre
    s/\b\([Ii]\)nfongués\([^[:alnum:]]\)/\1nfonguera\2/g
    s/\b\([Ii]\)nfonguéssi\([mu]\)\([^[:alnum:]]\)/\1nfonguére\2\3/g
    s/\b\([Ii]\)nfonguessi\([ns]\)\([^[:alnum:]]\)/\1nfonguere\2\3/g
    s/\b\([Ii]\)nfongui\([^[:alnum:]]\)/\1nfonga\2/g
    s/\b\([Ii]\)nfongui\([ns]\)\([^[:alnum:]]\)/\1nfongue\2\3/g
    # refondre
    s/\b\([Rr]\)efongués\([^[:alnum:]]\)/\1efonguera\2/g
    s/\b\([Rr]\)efonguéssi\([mu]\)\([^[:alnum:]]\)/\1efonguére\2\3/g
    s/\b\([Rr]\)efonguessi\([ns]\)\([^[:alnum:]]\)/\1efonguere\2\3/g
    s/\b\([Rr]\)efongui\([^[:alnum:]]\)/\1efonga\2/g
    s/\b\([Rr]\)efongui\([ns]\)\([^[:alnum:]]\)/\1efongue\2\3/g
    # transfondre
    s/\b\([Tt]\)ransfongués\([^[:alnum:]]\)/\1ransfonguera\2/g
    s/\b\([Tt]\)ransfonguéssi\([mu]\)\([^[:alnum:]]\)/\1ransfonguére\2\3/g
    s/\b\([Tt]\)ransfonguessi\([ns]\)\([^[:alnum:]]\)/\1ransfonguere\2\3/g
    s/\b\([Tt]\)ransfongui\([^[:alnum:]]\)/\1ransfonga\2/g
    s/\b\([Tt]\)ransfongui\([ns]\)\([^[:alnum:]]\)/\1ransfongue\2\3/g
# forçar
s/\b\([Ff]\)orcés\([^[:alnum:]]\)/\1orçara\2/g
s/\b\([Ff]\)orcéssi\([mu]\)\([^[:alnum:]]\)/\1orçàre\2\3/g
s/\b\([Ff]\)orcessi\([ns]\)\([^[:alnum:]]\)/\1orçare\2\3/g
s/\b\([Ff]\)orci\([ns]\|\)\([^[:alnum:]]\)/\1orce\2\3/g
s/\b\([Ff]\)orço\([^[:alnum:]]\)/\1orce\2/g
    # forcejar
    s/\b\([Ff]\)orcegés\([^[:alnum:]]\)/\1orcejara\2/g
    s/\b\([Ff]\)orcegéssi\([mu]\)\([^[:alnum:]]\)/\1orcejàre\2\3/g
    s/\b\([Ff]\)orcegessi\([ns]\)\([^[:alnum:]]\)/\1orcejare\2\3/g
    s/\b\([Ff]\)orcegi\([ns]\|\)\([^[:alnum:]]\)/\1orcege\2\3/g
    s/\b\([Ff]\)orcejo\([^[:alnum:]]\)/\1orcege\2/g
    # reforçar
    s/\b\([Rr]\)eforcés\([^[:alnum:]]\)/\1eforçara\2/g
    s/\b\([Rr]\)eforcéssi\([mu]\)\([^[:alnum:]]\)/\1eforçàre\2\3/g
    s/\b\([Rr]\)eforcessi\([ns]\)\([^[:alnum:]]\)/\1eforçare\2\3/g
    s/\b\([Rr]\)eforci\([ns]\|\)\([^[:alnum:]]\)/\1eforce\2\3/g
    s/\b\([Rr]\)eforço\([^[:alnum:]]\)/\1eforce\2/g
s/\b\([Ff]\)orquill\(a\|es\)\([^[:alnum:]]\)/\1orquet\2\3/g
# formar
s/\b\([Ff]\)ormés\([^[:alnum:]]\)/\1ormara\2/g
s/\b\([Ff]\)orméssi\([mu]\)\([^[:alnum:]]\)/\1ormàre\2\3/g
s/\b\([Ff]\)ormessi\([ns]\)\([^[:alnum:]]\)/\1ormare\2\3/g
s/\b\([Ff]\)orm\([io]\)\([^[:alnum:]]\)/\1orme\3/g
s/\b\([Ff]\)ormi\([ns]\)\([^[:alnum:]]\)/\1orme\2\3/g
    # conformar
    s/\b\([Cc]\)onformés\([^[:alnum:]]\)/\1onformara\2/g
    s/\b\([Cc]\)onforméssi\([mu]\)\([^[:alnum:]]\)/\1onformàre\2\3/g
    s/\b\([Cc]\)onformessi\([ns]\)\([^[:alnum:]]\)/\1onformare\2\3/g
    s/\b\([Cc]\)onform\([io]\)\([^[:alnum:]]\)/\1onforme\3/g
    s/\b\([Cc]\)onformi\([ns]\)\([^[:alnum:]]\)/\1onforme\2\3/g
    # enformar / informar
    s/\b\([EeIi]\)nformés\([^[:alnum:]]\)/\1nformara\2/g
    s/\b\([EeIi]\)nforméssi\([mu]\)\([^[:alnum:]]\)/\1nformàre\2\3/g
    s/\b\([EeIi]\)nformessi\([ns]\)\([^[:alnum:]]\)/\1nformare\2\3/g
    s/\b\([EeIi]\)nform\([io]\)\([^[:alnum:]]\)/\1nforme\3/g
    s/\b\([EeIi]\)nformi\([ns]\|\)\([^[:alnum:]]\)/\1nforme\2\3/g
        # desinformar
        s/\b\([Dd]\)esinformés\([^[:alnum:]]\)/\1esinformara\2/g
        s/\b\([Dd]\)esinforméssi\([mu]\)\([^[:alnum:]]\)/\1esinformàre\2\3/g
        s/\b\([Dd]\)esinformessi\([ns]\)\([^[:alnum:]]\)/\1esinformare\2\3/g
        s/\b\([Dd]\)esinform\([io]\)\([^[:alnum:]]\)/\1esinforme\3/g
        s/\b\([Dd]\)esinformi\([ns]\|\)\([^[:alnum:]]\)/\1esinforme\2\3/g
    # reformar
    s/\b\([Rr]\)eformés\([^[:alnum:]]\)/\1eformara\2/g
    s/\b\([Rr]\)eforméssi\([mu]\)\([^[:alnum:]]\)/\1eformàre\2\3/g
    s/\b\([Rr]\)eformessi\([ns]\)\([^[:alnum:]]\)/\1eformare\2\3/g
    s/\b\([Rr]\)eform\([io]\)\([^[:alnum:]]\)/\1eforme\3/g
    s/\b\([Rr]\)eformi\([ns]\)\([^[:alnum:]]\)/\1eforme\2\3/g
    # transformar
    s/\b\([Tt]\)ransformés\([^[:alnum:]]\)/\1ransformara\2/g
    s/\b\([Tt]\)ransforméssi\([mu]\)\([^[:alnum:]]\)/\1ransformàre\2\3/g
    s/\b\([Tt]\)ransformessi\([ns]\)\([^[:alnum:]]\)/\1ransformare\2\3/g
    s/\b\([Tt]\)ransform\([io]\)\([^[:alnum:]]\)/\1ransforme\3/g
    s/\b\([Tt]\)ransformi\([ns]\)\([^[:alnum:]]\)/\1ransforme\2\3/g
    # uniformar
    s/\b\([Uu]\)niformés\([^[:alnum:]]\)/\1niformara\2/g
    s/\b\([Uu]\)niforméssi\([mu]\)\([^[:alnum:]]\)/\1niformàre\2\3/g
    s/\b\([Uu]\)niformessi\([ns]\)\([^[:alnum:]]\)/\1niformare\2\3/g
    s/\b\([Uu]\)niform\([io]\)\([^[:alnum:]]\)/\1niforme\3/g
    s/\b\([Uu]\)niformi\([ns]\)\([^[:alnum:]]\)/\1niforme\2\3/g
# fracassar
s/\b\([Ff]\)racassés\([^[:alnum:]]\)/\1racassara\2/g
s/\b\([Ff]\)racasséssi\([mu]\)\([^[:alnum:]]\)/\1racassàre\2\3/g
s/\b\([Ff]\)racassessi\([ns]\)\([^[:alnum:]]\)/\1racassare\2\3/g
s/\b\([Ff]\)racass\([io]\)\([^[:alnum:]]\)/\1racasse\3/g
s/\b\([Ff]\)racassi\([ns]\)\([^[:alnum:]]\)/\1racasse\2\3/g
# fragmentar
s/\b\([Ff]\)ragmentés\([^[:alnum:]]\)/\1ragmentara\2/g
s/\b\([Ff]\)ragmentéssi\([mu]\)\([^[:alnum:]]\)/\1ragmentàre\2\3/g
s/\b\([Ff]\)ragmentessi\([ns]\)\([^[:alnum:]]\)/\1ragmentare\2\3/g
s/\b\([Ff]\)ragment\([io]\)\([^[:alnum:]]\)/\1ragmente\3/g
s/\b\([Ff]\)ragmenti\([ns]\)\([^[:alnum:]]\)/\1ragmente\2\3/g
s/\b\([Ff]\)rancès\([^[:alnum:]]\)/\1rancés\2/g
# frasejar
s/\b\([Ff]\)rasegés\([^[:alnum:]]\)/\1rasejara\2/g
s/\b\([Ff]\)rasegéssi\([mu]\)\([^[:alnum:]]\)/\1rasejàre\2\3/g
s/\b\([Ff]\)rasegessi\([ns]\)\([^[:alnum:]]\)/\1rasejare\2\3/g
s/\b\([Ff]\)rasegi\([ns]\|\)\([^[:alnum:]]\)/\1rasege\2\3/g
s/\b\([Ff]\)rasejo\([^[:alnum:]]\)/\1rasege\2/g
    # parafrasejar
    s/\b\([Pp]\)arafrasegés\([^[:alnum:]]\)/\1arafrasejara\2/g
    s/\b\([Pp]\)arafrasegéssi\([mu]\)\([^[:alnum:]]\)/\1arafrasejàre\2\3/g
    s/\b\([Pp]\)arafrasegessi\([ns]\)\([^[:alnum:]]\)/\1arafrasejare\2\3/g
    s/\b\([Pp]\)arafrasegi\([ns]\|\)\([^[:alnum:]]\)/\1arafrasege\2\3/g
    s/\b\([Pp]\)arafrasejo\([^[:alnum:]]\)/\1arafrasege\2/g
# fruir
s/\b\([Ff]\)rueix\(e[ns]\|\)\([^[:alnum:]]\)/\1ruïx\2\3/g
s/\b\([Ff]\)rueixi\([^[:alnum:]]\)/\1ruïsca\2/g
s/\b\([Ff]\)rueixi\([ns]\)\([^[:alnum:]]\)/\1ruïsque\2\3/g
s/\b\([Ff]\)rueixo\([^[:alnum:]]\)/\1ruïsc\2/g
s/\b\([Ff]\)ruís\([^[:alnum:]]\)/\1ruïra\2/g
s/\b\([Ff]\)ruíssi\([mu]\)\([^[:alnum:]]\)/\1ruíre\2\3/g
s/\b\([Ff]\)ruïssi\([ns]\)\([^[:alnum:]]\)/\1ruïre\2\3/g
# fullejar
s/\b\([Ff]\)ullegés\([^[:alnum:]]\)/\1ullejara\2/g
s/\b\([Ff]\)ullegéssi\([mu]\)\([^[:alnum:]]\)/\1ullejàre\2\3/g
s/\b\([Ff]\)ullegessi\([ns]\)\([^[:alnum:]]\)/\1ullejare\2\3/g
s/\b\([Ff]\)ullegi\([ns]\)\([^[:alnum:]]\)/\1ullege\2\3/g
s/\b\([Ff]\)ullejo\([^[:alnum:]]\)/\1ullege\2/g
# funcionar
s/\b\([Ff]\)uncionés\([^[:alnum:]]\)/\1uncionara\2/g
s/\b\([Ff]\)uncionéssi\([mu]\)\([^[:alnum:]]\)/\1uncionàre\2\3/g
s/\b\([Ff]\)uncionessi\([ns]\)\([^[:alnum:]]\)/\1uncionare\2\3/g
s/\b\([Ff]\)uncion\([io]\)\([^[:alnum:]]\)/\1uncione\3/g
s/\b\([Ff]\)uncioni\([ns]\)\([^[:alnum:]]\)/\1uncione\2\3/g
# furonejar
s/\b\([Ff]\)uronegés\([^[:alnum:]]\)/\1uronejara\2/g
s/\b\([Ff]\)uronegéssi\([mu]\)\([^[:alnum:]]\)/\1uronejàre\2\3/g
s/\b\([Ff]\)uronegessi\([ns]\)\([^[:alnum:]]\)/\1uronejare\2\3/g
s/\b\([Ff]\)uronegi\([^[:alnum:]]\)/\1uronege\2/g
s/\b\([Ff]\)uronegi\([ns]\)\([^[:alnum:]]\)/\1uronege\2\3/g
s/\b\([Ff]\)uroneji\([^[:alnum:]]\)/\1uronege\2/g
# fusionar
s/\b\([Ff]\)usionés\([^[:alnum:]]\)/\1usionara\2/g
s/\b\([Ff]\)usionéssi\([mu]\)\([^[:alnum:]]\)/\1usionàre\2\3/g
s/\b\([Ff]\)usionessi\([ns]\)\([^[:alnum:]]\)/\1usionare\2\3/g
s/\b\([Ff]\)usion\([io]\)\([^[:alnum:]]\)/\1usione\3/g
s/\b\([Ff]\)usioni\([ns]\)\([^[:alnum:]]\)/\1usione\2\3/g
# g
#
s/\bGairebé\([^[:alnum:]]\)/Quasi\1/g
s/\bgairebé\([^[:alnum:]]\)/quasi\1/g
s/\bGall\(s\|\) d\('\|\)indi\([^[:alnum:]]\)/Titot\2\3/g
s/\bgall\(s\|\) d\('\|\)indi\([^[:alnum:]]\)/titot\2\3/g
s/\bGalleda\([^[:alnum:]]\)/Poal\1/g
s/\bgalleda\([^[:alnum:]]\)/poal\1/g
s/\bGalledes\([^[:alnum:]]\)/Poals\1/g
s/\bgalledes\([^[:alnum:]]\)/poals\1/g
s/\b\([Gg]\)al·lès\([^[:alnum:]]\)/\1al·lés\2/g
# garantir
s/\b\([Gg]\)aranteix\(e[ns]\|\)\([^[:alnum:]]\)/\1arantix\2\3/g
s/\b\([Gg]\)aranteixi\([^[:alnum:]]\)/\1arantisca\2/g
s/\b\([Gg]\)aranteixi\([ns]\)\([^[:alnum:]]\)/\1arantisque\2\3/g
s/\b\([Gg]\)aranteixo\([^[:alnum:]]\)/\1arantisc\2/g
s/\b\([Gg]\)arantís\([^[:alnum:]]\)/\1arantira\2/g
s/\b\([Gg]\)arantíssi\([mu]\)\([^[:alnum:]]\)/\1arantíre\2\3/g
s/\b\([Gg]\)arantissi\([ns]\)\([^[:alnum:]]\)/\1arantire\2\3/g
# garrotar
s/\b\([Gg]\)arrotés\([^[:alnum:]]\)/\1arrotara\2/g
s/\b\([Gg]\)arrotéssi\([mu]\)\([^[:alnum:]]\)/\1arrotàre\2\3/g
s/\b\([Gg]\)arrotessi\([ns]\)\([^[:alnum:]]\)/\1arrotare\2\3/g
s/\b\([Gg]\)arrot\([io]\)\([^[:alnum:]]\)/\1arrote\3/g
s/\b\([Gg]\)arroti\([ns]\)\([^[:alnum:]]\)/\1arrote\2\3/g
    # agarrotar -> engarrotar (esmenes)
# gastar
s/\b\([Gg]\)astés\([^[:alnum:]]\)/\1astara\2/g
s/\b\([Gg]\)astéssi\([mu]\)\([^[:alnum:]]\)/\1astàre\2\3/g
s/\b\([Gg]\)astessi\([ns]\)\([^[:alnum:]]\)/\1astare\2\3/g
s/\b\([Gg]\)ast\([io]\)\([^[:alnum:]]\)/\1aste\3/g
s/\b\([Gg]\)asti\([ns]\)\([^[:alnum:]]\)/\1aste\2\3/g
    # desgastar
    s/\b\([Dd]\)esgastés\([^[:alnum:]]\)/\1esgastara\2/g
    s/\b\([Dd]\)esgastéssi\([mu]\)\([^[:alnum:]]\)/\1esgastàre\2\3/g
    s/\b\([Dd]\)esgastessi\([ns]\)\([^[:alnum:]]\)/\1esgastare\2\3/g
    s/\b\([Dd]\)esgast\([io]\)\([^[:alnum:]]\)/\1esgaste\3/g
    s/\b\([Dd]\)esgasti\([ns]\)\([^[:alnum:]]\)/\1esgaste\2\3/g
    # malgastar
    s/\b\([Mm]\)algastés\([^[:alnum:]]\)/\1algastara\2/g
    s/\b\([Mm]\)algastéssi\([mu]\)\([^[:alnum:]]\)/\1algastàre\2\3/g
    s/\b\([Mm]\)algastessi\([ns]\)\([^[:alnum:]]\)/\1algastare\2\3/g
    s/\b\([Mm]\)algast\([io]\)\([^[:alnum:]]\)/\1algaste\3/g
    s/\b\([Mm]\)algasti\([ns]\)\([^[:alnum:]]\)/\1algaste\2\3/g
# gaudir
s/\b\([Gg]\)audeix\(e[ns]\|\)\([^[:alnum:]]\)/\1audix\2\3/g
s/\b\([Gg]\)audeixi\([^[:alnum:]]\)/\1audisca\2/g
s/\b\([Gg]\)audeixi\([ns]\)\([^[:alnum:]]\)/\1audisque\2\3/g
s/\b\([Gg]\)audeixo\([^[:alnum:]]\)/\1audisc\2/g
s/\b\([Gg]\)audís\([^[:alnum:]]\)/\1audira\2/g
s/\b\([Gg]\)audíssi\([mu]\)\([^[:alnum:]]\)/\1audíre\2\3/g
s/\b\([Gg]\)audissi\([ns]\)\([^[:alnum:]]\)/\1audire\2\3/g
# generar
s/\b\([Gg]\)enerés\([^[:alnum:]]\)/\1enerara\2/g
s/\b\([Gg]\)eneréssi\([mu]\)\([^[:alnum:]]\)/\1eneràre\2\3/g
s/\b\([Gg]\)eneressi\([ns]\)\([^[:alnum:]]\)/\1enerare\2\3/g
s/\b\([Gg]\)ener\([io]\)\([^[:alnum:]]\)/\1enere\3/g
s/\b\([Gg]\)eneri\([ns]\)\([^[:alnum:]]\)/\1enere\2\3/g
    # degenerar / regenerar
    s/\b\([DdRr]\)egenerés\([^[:alnum:]]\)/\1egenerara\2/g
    s/\b\([DdRr]\)egeneréssi\([mu]\)\([^[:alnum:]]\)/\1egeneràre\2\3/g
    s/\b\([DdRr]\)egeneressi\([ns]\)\([^[:alnum:]]\)/\1egenerare\2\3/g
    s/\b\([DdRr]\)egener\([io]\)\([^[:alnum:]]\)/\1egenere\3/g
    s/\b\([DdRr]\)egeneri\([ns]\)\([^[:alnum:]]\)/\1egenere\2\3/g
# gestionar
s/\b\([Gg]\)estionés\([^[:alnum:]]\)/\1estionara\2/g
s/\b\([Gg]\)estionéssi\([mu]\)\([^[:alnum:]]\)/\1estionàre\2\3/g
s/\b\([Gg]\)estionessi\([ns]\)\([^[:alnum:]]\)/\1estionare\2\3/g
s/\b\([Gg]\)estion\([io]\)\([^[:alnum:]]\)/\1estione\3/g
s/\b\([Gg]\)estioni\([ns]\)\([^[:alnum:]]\)/\1estione\2\3/g
    # autogestionar
    s/\b\([Aa]\)utogestionés\([^[:alnum:]]\)/\1utogestionara\2/g
    s/\b\([Aa]\)utogestionéssi\([mu]\)\([^[:alnum:]]\)/\1utogestionàre\2\3/g
    s/\b\([Aa]\)utogestionessi\([ns]\)\([^[:alnum:]]\)/\1utogestionare\2\3/g
    s/\b\([Aa]\)utogestion\([io]\)\([^[:alnum:]]\)/\1utogestione\3/g
    s/\b\([Aa]\)utogestioni\([ns]\)\([^[:alnum:]]\)/\1utogestione\2\3/g
    # congestionar
    s/\b\([Cc]\)ongestionés\([^[:alnum:]]\)/\1ongestionara\2/g
    s/\b\([Cc]\)ongestionéssi\([mu]\)\([^[:alnum:]]\)/\1ongestionàre\2\3/g
    s/\b\([Cc]\)ongestionessi\([ns]\)\([^[:alnum:]]\)/\1ongestionare\2\3/g
    s/\b\([Cc]\)ongestion\([io]\)\([^[:alnum:]]\)/\1ongestione\3/g
    s/\b\([Cc]\)ongestioni\([ns]\)\([^[:alnum:]]\)/\1ongestione\2\3/g
        # descongestionar
        s/\b\([Dd]\)escongestionés\([^[:alnum:]]\)/\1escongestionara\2/g
        s/\b\([Dd]\)escongestionéssi\([mu]\)\([^[:alnum:]]\)/\1escongestionàre\2\3/g
        s/\b\([Dd]\)escongestionessi\([ns]\)\([^[:alnum:]]\)/\1escongestionare\2\3/g
        s/\b\([Dd]\)escongestion\([io]\)\([^[:alnum:]]\)/\1escongestione\3/g
        s/\b\([Dd]\)escongestioni\([ns]\)\([^[:alnum:]]\)/\1escongestione\2\3/g
    # suggestionar
    s/\b\([Ss]\)uggestionés\([^[:alnum:]]\)/\1uggestionara\2/g
    s/\b\([Ss]\)uggestionéssi\([mu]\)\([^[:alnum:]]\)/\1uggestionàre\2\3/g
    s/\b\([Ss]\)uggestionessi\([ns]\)\([^[:alnum:]]\)/\1uggestionare\2\3/g
    s/\b\([Ss]\)uggestion\([io]\)\([^[:alnum:]]\)/\1uggestione\3/g
    s/\b\([Ss]\)uggestioni\([ns]\)\([^[:alnum:]]\)/\1uggestione\2\3/g
# girar
s/\b\([Gg]\)irés\([^[:alnum:]]\)/\1irara\2/g
s/\b\([Gg]\)iréssi\([mu]\)\([^[:alnum:]]\)/\1iràre\2\3/g
s/\b\([Gg]\)iressi\([ns]\)\([^[:alnum:]]\)/\1irare\2\3/g
s/\b\([Gg]\)ir\([io]\)\([^[:alnum:]]\)/\1ire\3/g
s/\b\([Gg]\)iri\([ns]\)\([^[:alnum:]]\)/\1ire\2\3/g
    # capgirar
    s/\b\([Cc]\)apgirés\([^[:alnum:]]\)/\1apgirara\2/g
    s/\b\([Cc]\)apgiréssi\([mu]\)\([^[:alnum:]]\)/\1apgiràre\2\3/g
    s/\b\([Cc]\)apgiressi\([ns]\)\([^[:alnum:]]\)/\1apgirare\2\3/g
    s/\b\([Cc]\)apgir\([io]\)\([^[:alnum:]]\)/\1apgire\3/g
    s/\b\([Cc]\)apgiri\([ns]\)\([^[:alnum:]]\)/\1apgire\2\3/g
    # entregirar
    s/\b\([Ee]\)ntregirés\([^[:alnum:]]\)/\1ntregirara\2/g
    s/\b\([Ee]\)ntregiréssi\([mu]\)\([^[:alnum:]]\)/\1ntregiràre\2\3/g
    s/\b\([Ee]\)ntregiressi\([ns]\)\([^[:alnum:]]\)/\1ntregirare\2\3/g
    s/\b\([Ee]\)ntregir\([io]\)\([^[:alnum:]]\)/\1ntregire\3/g
    s/\b\([Ee]\)ntregiri\([ns]\)\([^[:alnum:]]\)/\1ntregire\2\3/g
    # regirar
    s/\b\([Rr]\)egirés\([^[:alnum:]]\)/\1egirara\2/g
    s/\b\([Rr]\)egiréssi\([mu]\)\([^[:alnum:]]\)/\1egiràre\2\3/g
    s/\b\([Rr]\)egiressi\([ns]\)\([^[:alnum:]]\)/\1egirare\2\3/g
    s/\b\([Rr]\)egir\([io]\)\([^[:alnum:]]\)/\1egire\3/g
    s/\b\([Rr]\)egiri\([ns]\)\([^[:alnum:]]\)/\1egire\2\3/g
    # tragirar
    s/\b\([Tt]\)ragirés\([^[:alnum:]]\)/\1ragirara\2/g
    s/\b\([Tt]\)ragiréssi\([mu]\)\([^[:alnum:]]\)/\1ragiràre\2\3/g
    s/\b\([Tt]\)ragiressi\([ns]\)\([^[:alnum:]]\)/\1ragirare\2\3/g
    s/\b\([Tt]\)ragir\([io]\)\([^[:alnum:]]\)/\1ragire\3/g
    s/\b\([Tt]\)ragiri\([ns]\)\([^[:alnum:]]\)/\1ragire\2\3/g
s/\b\([Gg]\)ironès\([^[:alnum:]]\)/\1ironés\2/g
# glacejar
s/\b\([Gg]\)lacegés\([^[:alnum:]]\)/\1lacejara\2/g
s/\b\([Gg]\)lacegéssi\([mu]\)\([^[:alnum:]]\)/\1lacejàre\2\3/g
s/\b\([Gg]\)lacegessi\([ns]\)\([^[:alnum:]]\)/\1lacejare\2\3/g
s/\b\([Gg]\)lacegi\([ns]\|\)\([^[:alnum:]]\)/\1lacege\2\3/g
s/\b\([Gg]\)lacejo\([^[:alnum:]]\)/\1lacege\2/g
# gorrejar
s/\b\([Gg]\)orregés\([^[:alnum:]]\)/\1orrejara\2/g
s/\b\([Gg]\)orregéssi\([mu]\)\([^[:alnum:]]\)/\1orrejàre\2\3/g
s/\b\([Gg]\)orregessi\([ns]\)\([^[:alnum:]]\)/\1orrejare\2\3/g
s/\b\([Gg]\)orregi\([ns]\|\)\([^[:alnum:]]\)/\1orrege\2\3/g
s/\b\([Gg]\)orrejo\([^[:alnum:]]\)/\1orrege\2/g
s/\b\([Gg]\)renlandès\([^[:alnum:]]\)/\1renlandés\2/g
# grimpar
s/\b\([Gg]\)rimpés\([^[:alnum:]]\)/\1rimpara\2/g
s/\b\([Gg]\)rimpéssi\([mu]\)\([^[:alnum:]]\)/\1rimpàre\2\3/g
s/\b\([Gg]\)rimpessi\([ns]\)\([^[:alnum:]]\)/\1rimpare\2\3/g
s/\b\([Gg]\)rimp\([io]\)\([^[:alnum:]]\)/\1rimpe\3/g
s/\b\([Gg]\)rimpi\([ns]\)\([^[:alnum:]]\)/\1rimpe\2\3/g
# grisejar
s/\b\([Gg]\)risegés\([^[:alnum:]]\)/\1risejara\2/g
s/\b\([Gg]\)risegéssi\([mu]\)\([^[:alnum:]]\)/\1risejàre\2\3/g
s/\b\([Gg]\)risegessi\([ns]\)\([^[:alnum:]]\)/\1risejare\2\3/g
s/\b\([Gg]\)risegi\([ns]\|\)\([^[:alnum:]]\)/\1risege\2\3/g
s/\b\([Gg]\)risejo\([^[:alnum:]]\)/\1risege\2/g
# guanyar
s/\b\([Gg]\)uanyés\([^[:alnum:]]\)/\1uanyara\2/g
s/\b\([Gg]\)uanyéssi\([mu]\)\([^[:alnum:]]\)/\1uanyàre\2\3/g
s/\b\([Gg]\)uanyessi\([ns]\)\([^[:alnum:]]\)/\1uanyare\2\3/g
s/\b\([Gg]\)uany\([io]\)\([^[:alnum:]]\)/\1uanye\3/g
s/\b\([Gg]\)uanyi\([ns]\)\([^[:alnum:]]\)/\1uanye\2\3/g
    # reguanyar
    s/\b\([Rr]\)eguanyés\([^[:alnum:]]\)/\1eguanyara\2/g
    s/\b\([Rr]\)eguanyéssi\([mu]\)\([^[:alnum:]]\)/\1eguanyàre\2\3/g
    s/\b\([Rr]\)eguanyessi\([ns]\)\([^[:alnum:]]\)/\1eguanyare\2\3/g
    s/\b\([Rr]\)eguany\([io]\)\([^[:alnum:]]\)/\1eguanye\3/g
    s/\b\([Rr]\)eguanyi\([ns]\)\([^[:alnum:]]\)/\1eguanye\2\3/g
# guardar
s/\b\([Gg]\)uardés\([^[:alnum:]]\)/\1uardara\2/g
s/\b\([Gg]\)uardéssi\([mu]\)\([^[:alnum:]]\)/\1uardàre\2\3/g
s/\b\([Gg]\)uardessi\([ns]\)\([^[:alnum:]]\)/\1uardare\2\3/g
s/\b\([Gg]\)uard\([io]\)\([^[:alnum:]]\)/\1uarde\3/g
s/\b\([Gg]\)uardi\([ns]\)\([^[:alnum:]]\)/\1uarde\2\3/g
    # capguardar
    s/\b\([Cc]\)apguardés\([^[:alnum:]]\)/\1apguardara\2/g
    s/\b\([Cc]\)apguardéssi\([mu]\)\([^[:alnum:]]\)/\1apguardàre\2\3/g
    s/\b\([Cc]\)apguardessi\([ns]\)\([^[:alnum:]]\)/\1apguardare\2\3/g
    s/\b\([Cc]\)apguard\([io]\)\([^[:alnum:]]\)/\1apguarde\3/g
    s/\b\([Cc]\)apguardi\([ns]\)\([^[:alnum:]]\)/\1apguarde\2\3/g
    # esguardar
    s/\b\([Ee]\)sguardés\([^[:alnum:]]\)/\1sguardara\2/g
    s/\b\([Ee]\)sguardéssi\([mu]\)\([^[:alnum:]]\)/\1sguardàre\2\3/g
    s/\b\([Ee]\)sguardessi\([ns]\)\([^[:alnum:]]\)/\1sguardare\2\3/g
    s/\b\([Ee]\)sguard\([io]\)\([^[:alnum:]]\)/\1sguarde\3/g
    s/\b\([Ee]\)sguardi\([ns]\)\([^[:alnum:]]\)/\1sguarde\2\3/g
    # reguardar / resguardar
    s/\b\([Rr]\)e\(s\|\)guardés\([^[:alnum:]]\)/\1e\2guardara\3/g
    s/\b\([Rr]\)e\(s\|\)guardéssi\([mu]\)\([^[:alnum:]]\)/\1e\2guardàre\3\4/g
    s/\b\([Rr]\)e\(s\|\)guardessi\([ns]\)\([^[:alnum:]]\)/\1e\2guardare\3\4/g
    s/\b\([Rr]\)e\(s\|\)guard\([io]\)\([^[:alnum:]]\)/\1e\2guarde\4/g
    s/\b\([Rr]\)e\(s\|\)guardi\([ns]\)\([^[:alnum:]]\)/\1e\2guarde\3\4/g
    # salvaguardar
    s/\b\([Ss]\)alvaguardés\([^[:alnum:]]\)/\1alvaguardara\2/g
    s/\b\([Ss]\)alvaguardéssi\([mu]\)\([^[:alnum:]]\)/\1alvaguardàre\2\3/g
    s/\b\([Ss]\)alvaguardessi\([ns]\)\([^[:alnum:]]\)/\1alvaguardare\2\3/g
    s/\b\([Ss]\)ualvagard\([io]\)\([^[:alnum:]]\)/\1alvaguarde\3/g
    s/\b\([Ss]\)alvaguardi\([ns]\)\([^[:alnum:]]\)/\1alvaguarde\2\3/g
# guerrejar
s/\b\([Gg]\)uerregés\([^[:alnum:]]\)/\1uerrejara\2/g
s/\b\([Gg]\)uerregéssi\([mu]\)\([^[:alnum:]]\)/\1uerrejàre\2\3/g
s/\b\([Gg]\)uerregessi\([ns]\)\([^[:alnum:]]\)/\1uerrejare\2\3/g
s/\b\([Gg]\)uerregi\([ns]\|\)\([^[:alnum:]]\)/\1uerrege\2\3/g
s/\b\([Gg]\)uerrejo\([^[:alnum:]]\)/\1uerrege\2/g
# guiar
s/\b\([Gg]\)uiés\([^[:alnum:]]\)/\1uiara\2/g
s/\b\([Gg]\)uiéssi\([mu]\)\([^[:alnum:]]\)/\1uiàre\2\3/g
s/\b\([Gg]\)uiessi\([ns]\)\([^[:alnum:]]\)/\1uiare\2\3/g
s/\b\([Gg]\)ui\([ïo]\)\([^[:alnum:]]\)/\1uie\3/g
s/\b\([Gg]\)uiï\([ns]\)\([^[:alnum:]]\)/\1uie\2\3/g
s/\bGuineu\([^[:alnum:]]\)/Rabosa\1/g
s/\bguineu\([^[:alnum:]]\)/rabosa\1/g
s/\bGuineus\([^[:alnum:]]\)/Raboses\1/g
s/\bguineus\([^[:alnum:]]\)/raboses\1/g
# h
#
# habilitar
s/\b\([Hh]\)abilités\([^[:alnum:]]\)/\1abilitara\2/g
s/\b\([Hh]\)abilitéssi\([mu]\)\([^[:alnum:]]\)/\1abilitàre\2\3/g
s/\b\([Hh]\)abilitessi\([ns]\)\([^[:alnum:]]\)/\1abilitare\2\3/g
s/\b\([Hh]\)abilit\([io]\)\([^[:alnum:]]\)/\1abilite\3/g
s/\b\([Hh]\)abiliti\([ns]\)\([^[:alnum:]]\)/\1abilite\2\3/g
    # inhabilitar
    s/\b\([Ii]\)nhabilités\([^[:alnum:]]\)/\1nhabilitara\2/g
    s/\b\([Ii]\)nhabilitéssi\([mu]\)\([^[:alnum:]]\)/\1nhabilitàre\2\3/g
    s/\b\([Ii]\)nhabilitessi\([ns]\)\([^[:alnum:]]\)/\1nhabilitare\2\3/g
    s/\b\([Ii]\)nhabilit\([io]\)\([^[:alnum:]]\)/\1nhabilite\3/g
    s/\b\([Ii]\)nhabiliti\([ns]\)\([^[:alnum:]]\)/\1nhabilite\2\3/g
    # rehabilitar
    s/\b\([Rr]\)ehabilités\([^[:alnum:]]\)/\1ehabilitara\2/g
    s/\b\([Rr]\)ehabilitéssi\([mu]\)\([^[:alnum:]]\)/\1ehabilitàre\2\3/g
    s/\b\([Rr]\)ehabilitessi\([ns]\)\([^[:alnum:]]\)/\1ehabilitare\2\3/g
    s/\b\([Rr]\)ehabilit\([io]\)\([^[:alnum:]]\)/\1ehabilite\3/g
    s/\b\([Rr]\)ehabiliti\([ns]\)\([^[:alnum:]]\)/\1ehabilite\2\3/g
# haver
s/\b\([Hh]\)age\([mu]\)\([^[:alnum:]]\)/\1aja\2\3/g
s/\b\([Hh]\)agés\([^[:alnum:]]\)/\1ajara\2/g
s/\b\([Hh]\)agi\([^[:alnum:]]\)/\1aja\2/g
s/\b\([Hh]\)àgi\([mu]\)\([^[:alnum:]]\)/\1àge\2\3/g
s/\b\([Hh]\)agi\([ns]\)\([^[:alnum:]]\)/\1age\2\3/g
s/\b\([Hh]\)àg\(ue\|i\)\([mu]\)\([^[:alnum:]]\)/\1àge\3\4/g
s/\b\([Hh]\)agués\([^[:alnum:]]\)/\1aguera\2/g
s/\b\([Hh]\)aguéss\([ei]\)\([mu]\)\([^[:alnum:]]\)/\1aguére\3\4/g
s/\b\([Hh]\)aguess\([ei]\)\([ns]\)\([^[:alnum:]]\)/\1aguere\3\4/g
s/\b\([Hh]\)aig\([^[:alnum:]]\)/\1e\2/g
s/\b\([Hh]\)ave\([mu]\)\([^[:alnum:]]\)/\1e\2\3/g
# heretar
s/\b\([Hh]\)eretés\([^[:alnum:]]\)/\1eretara\2/g
s/\b\([Hh]\)eretéssi\([mu]\)\([^[:alnum:]]\)/\1eretàre\2\3/g
s/\b\([Hh]\)eretessi\([ns]\)\([^[:alnum:]]\)/\1eretare\2\3/g
s/\b\([Hh]\)eret\([io]\)\([^[:alnum:]]\)/\1erete\3/g
s/\b\([Hh]\)ereti\([ns]\)\([^[:alnum:]]\)/\1erete\2\3/g
    # desheretar
    s/\b\([Dd]\)eheretés\([^[:alnum:]]\)/\1eheretara\2/g
    s/\b\([Dd]\)eheretéssi\([mu]\)\([^[:alnum:]]\)/\1eheretàre\2\3/g
    s/\b\([Dd]\)eheretessi\([ns]\)\([^[:alnum:]]\)/\1eheretare\2\3/g
    s/\b\([Dd]\)eheret\([io]\)\([^[:alnum:]]\)/\1eherete\3/g
    s/\b\([Dd]\)ehereti\([ns]\)\([^[:alnum:]]\)/\1eherete\2\3/g
# homogeneïtzar
s/\b\([Hh]\)omogeneïtzés\([^[:alnum:]]\)/\1omogeneïtzara\2/g
s/\b\([Hh]\)omogeneïtzéssi\([mu]\)\([^[:alnum:]]\)/\1omogeneïtzàre\2\3/g
s/\b\([Hh]\)omogeneïtzessi\([ns]\)\([^[:alnum:]]\)/\1omogeneïtzare\2\3/g
s/\b\([Hh]\)omogeneïtz\([io]\)\([^[:alnum:]]\)/\1omogeneïtze\3/g
s/\b\([Hh]\)omogeneïtzi\([ns]\)\([^[:alnum:]]\)/\1omogeneïtze\2\3/g
s/\b\([Hh]\)ongarès\([^[:alnum:]]\)/\1ongarés\2/g
# i
#
# identificar
s/\b\([Ii]\)dentifiqués\([^[:alnum:]]\)/\1dentificara\2/g
s/\b\([Ii]\)dentifiquéssi\([mu]\)\([^[:alnum:]]\)/\1dentificàre\2\3/g
s/\b\([Ii]\)dentifiquessi\([ns]\)\([^[:alnum:]]\)/\1dentificare\2\3/g
s/\b\([Ii]\)dentifico\([^[:alnum:]]\)/\1dentifique\2/g
s/\b\([Ii]\)dentifiqui\([ns]\|\)\([^[:alnum:]]\)/\1dentifique\2\3/g
# ignorar
s/\b\([Ii]\)gnorés\([^[:alnum:]]\)/\1gnorara\2/g
s/\b\([Ii]\)gnoréssi\([mu]\)\([^[:alnum:]]\)/\1gnoràre\2\3/g
s/\b\([Ii]\)gnoressi\([ns]\)\([^[:alnum:]]\)/\1gnorare\2\3/g
s/\b\([Ii]\)gnor\([io]\)\([^[:alnum:]]\)/\1gnore\3/g
s/\b\([Ii]\)gnori\([ns]\)\([^[:alnum:]]\)/\1gnore\2\3/g
# il·luminar
s/\b\([Ii]\)l·luminés\([^[:alnum:]]\)/\1l·luminara\2/g
s/\b\([Ii]\)l·luminéssi\([mu]\)\([^[:alnum:]]\)/\1l·luminàre\2\3/g
s/\b\([Ii]\)l·luminessi\([ns]\)\([^[:alnum:]]\)/\1l·luminare\2\3/g
s/\b\([Ii]\)l·lumin\([io]\)\([^[:alnum:]]\)/\1l·lumine\3/g
s/\b\([Ii]\)l·lumini\([ns]\)\([^[:alnum:]]\)/\1l·lumine\2\3/g
# il·lustrar
s/\b\([Ii]\)l·lustrés\([^[:alnum:]]\)/\1l·lustrara\2/g
s/\b\([Ii]\)l·lustréssi\([mu]\)\([^[:alnum:]]\)/\1l·lustràre\2\3/g
s/\b\([Ii]\)l·lustressi\([ns]\)\([^[:alnum:]]\)/\1l·lustrare\2\3/g
s/\b\([Ii]\)l·lustr\([io]\)\([^[:alnum:]]\)/\1l·lustre\3/g
s/\b\([Ii]\)l·lustri\([ns]\)\([^[:alnum:]]\)/\1l·lustre\2\3/g
# imaginar
s/\b\([Ii]\)maginés\([^[:alnum:]]\)/\1maginara\2/g
s/\b\([Ii]\)maginéssi\([mu]\)\([^[:alnum:]]\)/\1maginàre\2\3/g
s/\b\([Ii]\)maginessi\([ns]\)\([^[:alnum:]]\)/\1maginare\2\3/g
s/\b\([Ii]\)magin\([io]\)\([^[:alnum:]]\)/\1magine\3/g
s/\b\([Ii]\)magini\([ns]\)\([^[:alnum:]]\)/\1magine\2\3/g
# imitar
s/\b\([Ii]\)mités\([^[:alnum:]]\)/\1mitara\2/g
s/\b\([Ii]\)mitéssi\([mu]\)\([^[:alnum:]]\)/\1mitàre\2\3/g
s/\b\([Ii]\)mitessi\([ns]\)\([^[:alnum:]]\)/\1mitare\2\3/g
s/\b\([Ii]\)mit\([io]\)\([^[:alnum:]]\)/\1mite\3/g
s/\b\([Ii]\)miti\([ns]\)\([^[:alnum:]]\)/\1mite\2\3/g
    # delimitar
    s/\b\([Dd]\)elimités\([^[:alnum:]]\)/\1elimitara\2/g
    s/\b\([Dd]\)elimitéssi\([mu]\)\([^[:alnum:]]\)/\1elimitàre\2\3/g
    s/\b\([Dd]\)elimitessi\([ns]\)\([^[:alnum:]]\)/\1elimitare\2\3/g
    s/\b\([Dd]\)elimit\([io]\)\([^[:alnum:]]\)/\1elimite\3/g
    s/\b\([Dd]\)elimiti\([ns]\)\([^[:alnum:]]\)/\1elimite\2\3/g
    # limitar
    s/\b\([Ll]\)imités\([^[:alnum:]]\)/\1imitara\2/g
    s/\b\([Ll]\)imitéssi\([mu]\)\([^[:alnum:]]\)/\1imitàre\2\3/g
    s/\b\([Ll]\)imitessi\([ns]\)\([^[:alnum:]]\)/\1imitare\2\3/g
    s/\b\([Ll]\)imit\([io]\)\([^[:alnum:]]\)/\1imite\3/g
    s/\b\([Ll]\)imiti\([ns]\)\([^[:alnum:]]\)/\1imite\2\3/g
# immergir
s/\b\([Ii]\)mmergeix\(e[ns]\|\)\([^[:alnum:]]\)/\1mmergix\2\3/g
s/\b\([Ii]\)mmergeixi\([^[:alnum:]]\)/\1mmergisca\2/g
s/\b\([Ii]\)mmergeixi\([ns]\)\([^[:alnum:]]\)/\1mmergisque\2\3/g
s/\b\([Ii]\)mmergeixo\([^[:alnum:]]\)/\1mmergisc\2/g
s/\b\([Ii]\)mmergís\([^[:alnum:]]\)/\1mmergira\2/g
s/\b\([Ii]\)mmergíssi\([mu]\)\([^[:alnum:]]\)/\1mmergíre\2\3/g
s/\b\([Ii]\)mmergissi\([ns]\)\([^[:alnum:]]\)/\1mmergire\2\3/g
    # TODO: no
    # submmergir
    s/\b\([Ss]\)ubmmergeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ubmmergix\2\3/g
    s/\b\([Ss]\)ubmmergeixi\([^[:alnum:]]\)/\1ubmmergisca\2/g
    s/\b\([Ss]\)ubmmergeixi\([ns]\)\([^[:alnum:]]\)/\1ubmmergisque\2\3/g
    s/\b\([Ss]\)ubmmergeixo\([^[:alnum:]]\)/\1ubmmergisc\2/g
    s/\b\([Ss]\)ubmmergís\([^[:alnum:]]\)/\1ubmmergira\2/g
    s/\b\([Ss]\)ubmmergíssi\([mu]\)\([^[:alnum:]]\)/\1ubmmergíre\2\3/g
    s/\b\([Ss]\)ubmmergissi\([ns]\)\([^[:alnum:]]\)/\1ubmmergire\2\3/g
# impedir
s/\b\([Ii]\)mpedeix\(e[ns]\|\)\([^[:alnum:]]\)/\1mpedix\2\3/g
s/\b\([Ii]\)mpedeixi\([^[:alnum:]]\)/\1mpedisca\2/g
s/\b\([Ii]\)mpedeixi\([ns]\)\([^[:alnum:]]\)/\1mpedisque\2\3/g
s/\b\([Ii]\)mpedeixo\([^[:alnum:]]\)/\1mpedisc\2/g
s/\b\([Ii]\)mpedís\([^[:alnum:]]\)/\1mpedira\2/g
s/\b\([Ii]\)mpedíssi\([mu]\)\([^[:alnum:]]\)/\1mpedíre\2\3/g
s/\b\([Ii]\)mpedissi\([ns]\)\([^[:alnum:]]\)/\1mpedire\2\3/g
# implementar
s/\b\([Ii]\)mplementés\([^[:alnum:]]\)/\1mplementara\2/g
s/\b\([Ii]\)mplementéssi\([mu]\)\([^[:alnum:]]\)/\1mplementàre\2\3/g
s/\b\([Ii]\)mplementessi\([ns]\)\([^[:alnum:]]\)/\1mplementare\2\3/g
s/\b\([Ii]\)mplement\([io]\)\([^[:alnum:]]\)/\1mplemente\3/g
s/\b\([Ii]\)mplementi\([ns]\)\([^[:alnum:]]\)/\1mplemente\2\3/g
# implicar
s/\b\([Ii]\)mpliqués\([^[:alnum:]]\)/\1mplicara\2/g
s/\b\([Ii]\)mpliquéssi\([mu]\)\([^[:alnum:]]\)/\1mplicàre\2\3/g
s/\b\([Ii]\)mpliquessi\([ns]\)\([^[:alnum:]]\)/\1mplicare\2\3/g
s/\b\([Ii]\)mplico\([^[:alnum:]]\)/\1mplique\2/g
s/\b\([Ii]\)mpliqui\([ns]\|\)\([^[:alnum:]]\)/\1mplique\2\3/g
# imprimir
s/\b\([Ii]\)mprès\([^[:alnum:]]\)/\1mprés\2/g
s/\b\([Ii]\)mprimeix\(e[ns]\|\)\([^[:alnum:]]\)/\1mprimix\2\3/g
s/\b\([Ii]\)mprimeixi\([^[:alnum:]]\)/\1mprimisca\2/g
s/\b\([Ii]\)mprimeixi\([ns]\)\([^[:alnum:]]\)/\1mprimisque\2\3/g
s/\b\([Ii]\)mprimeixo\([^[:alnum:]]\)/\1mprimisc\2/g
s/\b\([Ii]\)mprimís\([^[:alnum:]]\)/\1mprimira\2/g
s/\b\([Ii]\)mprimíssi\([mu]\)\([^[:alnum:]]\)/\1mprimíre\2\3/g
s/\b\([Ii]\)mprimissi\([ns]\)\([^[:alnum:]]\)/\1mprimire\2\3/g
    # sobreimprimir
    s/\b\([Ss]\)obreimprès\([^[:alnum:]]\)/\1obreimprés\2/g
    s/\b\([Ss]\)obreimprimeix\(e[ns]\|\)\([^[:alnum:]]\)/\1obreimprimix\2\3/g
    s/\b\([Ss]\)obreimprimeixi\([^[:alnum:]]\)/\1obreimprimisca\2/g
    s/\b\([Ss]\)obreimprimeixi\([ns]\)\([^[:alnum:]]\)/\1obreimprimisque\2\3/g
    s/\b\([Ss]\)obreimprimeixo\([^[:alnum:]]\)/\1obreimprimisc\2/g
    s/\b\([Ss]\)obreimprimís\([^[:alnum:]]\)/\1obreimprimira\2/g
    s/\b\([Ss]\)obreimprimíssi\([mu]\)\([^[:alnum:]]\)/\1obreimprimíre\2\3/g
    s/\b\([Ss]\)obreimprimissi\([ns]\)\([^[:alnum:]]\)/\1obreimprimire\2\3/g
# indicar
s/\b\([Ii]\)ndico\([^[:alnum:]]\)/\1ndique\2/g
s/\b\([Ii]\)ndiqués\([^[:alnum:]]\)/\1ndicara\2/g
s/\b\([Ii]\)ndiquéssi\([mu]\)\([^[:alnum:]]\)/\1ndicàre\2\3/g
s/\b\([Ii]\)ndiquessi\([ns]\)\([^[:alnum:]]\)/\1ndicare\2\3/g
s/\b\([Ii]\)ndiqui\([^[:alnum:]]\)/\1ndique\2/g
s/\b\([Ii]\)ndiqui\([ns]\)\([^[:alnum:]]\)/\1ndique\2\3/g
# ingerir
s/\b\([Ii]\)ngereix\(e[ns]\|\)\([^[:alnum:]]\)/\1ngerix\2\3/g
s/\b\([Ii]\)ngereixi\([^[:alnum:]]\)/\1ngerisca\2/g
s/\b\([Ii]\)ngereixi\([ns]\)\([^[:alnum:]]\)/\1ngerisque\2\3/g
s/\b\([Ii]\)ngereixo\([^[:alnum:]]\)/\1ngerisc\2/g
s/\b\([Ii]\)ngerís\([^[:alnum:]]\)/\1ngerira\2/g
s/\b\([Ii]\)ngeríssi\([mu]\)\([^[:alnum:]]\)/\1ngeríre\2\3/g
s/\b\([Ii]\)ngerissi\([ns]\)\([^[:alnum:]]\)/\1ngerire\2\3/g
# inhibir
s/\b\([Ii]\)nhibeix\(e[ns]\|\)\([^[:alnum:]]\)/\1nhibix\2\3/g
s/\b\([Ii]\)nhibeixi\([^[:alnum:]]\)/\1nhibisca\2/g
s/\b\([Ii]\)nhibeixi\([ns]\)\([^[:alnum:]]\)/\1nhibisque\2\3/g
s/\b\([Ii]\)nhibeixo\([^[:alnum:]]\)/\1nhibisc\2/g
s/\b\([Ii]\)nhibís\([^[:alnum:]]\)/\1nhibira\2/g
s/\b\([Ii]\)nhibíssi\([mu]\)\([^[:alnum:]]\)/\1nhibíre\2\3/g
s/\b\([Ii]\)nhibissi\([ns]\)\([^[:alnum:]]\)/\1nhibire\2\3/g
# incidir
s/\b\([Ii]\)ncideix\(e[ns]\|\)\([^[:alnum:]]\)/\1ncidix\2\3/g
s/\b\([Ii]\)ncideixi\([^[:alnum:]]\)/\1ncidisca\2/g
s/\b\([Ii]\)ncideixi\([ns]\)\([^[:alnum:]]\)/\1ncidisque\2\3/g
s/\b\([Ii]\)ncideixo\([^[:alnum:]]\)/\1ncidisc\2/g
s/\b\([Ii]\)ncidís\([^[:alnum:]]\)/\1ncidira\2/g
s/\b\([Ii]\)ncidíssi\([mu]\)\([^[:alnum:]]\)/\1ncidíre\2\3/g
s/\b\([Ii]\)ncidissi\([ns]\)\([^[:alnum:]]\)/\1ncidire\2\3/g
    # coincidir
    s/\b\([Cc]\)oincideix\(e[ns]\|\)\([^[:alnum:]]\)/\1oincidix\2\3/g
    s/\b\([Cc]\)oincideixi\([^[:alnum:]]\)/\1oincidisca\2/g
    s/\b\([Cc]\)oincideixi\([ns]\)\([^[:alnum:]]\)/\1oincidisque\2\3/g
    s/\b\([Cc]\)oincideixo\([^[:alnum:]]\)/\1oincidisc\2/g
    s/\b\([Cc]\)oincidís\([^[:alnum:]]\)/\1oincidira\2/g
    s/\b\([Cc]\)oincidíssi\([mu]\)\([^[:alnum:]]\)/\1oincidíre\2\3/g
    s/\b\([Cc]\)oincidissi\([ns]\)\([^[:alnum:]]\)/\1oincidire\2\3/g
        # concordar -> coincidir (esmenes - # PDT.)
        # concordança i concordant(s)
    # reincidir
    s/\b\([Rr]\)eincideix\(e[ns]\|\)\([^[:alnum:]]\)/\1eincidix\2\3/g
    s/\b\([Rr]\)eincideixi\([^[:alnum:]]\)/\1eincidisca\2/g
    s/\b\([Rr]\)eincideixi\([ns]\)\([^[:alnum:]]\)/\1eincidisque\2\3/g
    s/\b\([Rr]\)eincideixo\([^[:alnum:]]\)/\1eincidisc\2/g
    s/\b\([Rr]\)eincidís\([^[:alnum:]]\)/\1eincidira\2/g
    s/\b\([Rr]\)eincidíssi\([mu]\)\([^[:alnum:]]\)/\1eincidíre\2\3/g
    s/\b\([Rr]\)eincidissi\([ns]\)\([^[:alnum:]]\)/\1eincidire\2\3/g
# inclinar
s/\b\([Ii]\)nclinés\([^[:alnum:]]\)/\1nclinara\2/g
s/\b\([Ii]\)nclinéssi\([mu]\)\([^[:alnum:]]\)/\1nclinàre\2\3/g
s/\b\([Ii]\)nclinessi\([ns]\)\([^[:alnum:]]\)/\1nclinare\2\3/g
s/\b\([Ii]\)nclin\([io]\)\([^[:alnum:]]\)/\1ncline\3/g
s/\b\([Ii]\)nclini\([ns]\)\([^[:alnum:]]\)/\1ncline\2\3/g
# incloure
s/\b\([Ii]\)nclogués\([^[:alnum:]]\)/\1ncloguera\2/g
s/\b\([Ii]\)ncloguéssi\([mu]\)\([^[:alnum:]]\)/\1ncloguére\2\3/g
s/\b\([Ii]\)ncloguessi\([ns]\)\([^[:alnum:]]\)/\1ncloguere\2\3/g
s/\b\([Ii]\)nclogui\([^[:alnum:]]\)/\1ncloga\2/g
s/\b\([Ii]\)nclogui\([ns]\)\([^[:alnum:]]\)/\1nclogue\2\3/g
# incrutar
s/\b\([Ii]\)ncrustés\([^[:alnum:]]\)/\1ncrustara\2/g
s/\b\([Ii]\)ncrustéssi\([mu]\)\([^[:alnum:]]\)/\1ncrustàre\2\3/g
s/\b\([Ii]\)ncrustessi\([ns]\)\([^[:alnum:]]\)/\1ncrustare\2\3/g
s/\b\([Ii]\)ncrust\([io]\)\([^[:alnum:]]\)/\1ncruste\3/g
s/\b\([Ii]\)ncrusti\([ns]\)\([^[:alnum:]]\)/\1ncruste\2\3/g
# indexar
s/\b\([Ii]\)ndexés\([^[:alnum:]]\)/\1ndexara\2/g
s/\b\([Ii]\)ndexéssi\([mu]\)\([^[:alnum:]]\)/\1ndexàre\2\3/g
s/\b\([Ii]\)ndexessi\([ns]\)\([^[:alnum:]]\)/\1ndexare\2\3/g
s/\b\([Ii]\)ndex\([io]\)\([^[:alnum:]]\)/\1ndexe\3/g
s/\b\([Ii]\)ndexi\([ns]\|\)\([^[:alnum:]]\)/\1ndexe\2\3/g
# induir
s/\b\([Ii]\)ndueix\(e[ns]\|\)\([^[:alnum:]]\)/\1nduïx\2\3/g
s/\b\([Ii]\)ndueixi\([^[:alnum:]]\)/\1nduïsca\2/g
s/\b\([Ii]\)ndueixi\([ns]\)\([^[:alnum:]]\)/\1nduïsque\2\3/g
s/\b\([Ii]\)ndueixo\([^[:alnum:]]\)/\1nduïsc\2/g
s/\b\([Ii]\)nduís\([^[:alnum:]]\)/\1nduïra\2/g
s/\b\([Ii]\)nduíssi\([mu]\)\([^[:alnum:]]\)/\1nduíre\2\3/g
s/\b\([Ii]\)nduïssi\([ns]\)\([^[:alnum:]]\)/\1nduïre\2\3/g
# iniciar
s/\b\([Ii]\)niciés\([^[:alnum:]]\)/\1niciara\2/g
s/\b\([Ii]\)niciéssi\([mu]\)\([^[:alnum:]]\)/\1niciàre\2\3/g
s/\b\([Ii]\)niciessi\([ns]\)\([^[:alnum:]]\)/\1niciare\2\3/g
s/\b\([Ii]\)nici\([ïo]\)\([^[:alnum:]]\)/\1nicie\3/g
s/\b\([Ii]\)niciï\([ns]\|\)\([^[:alnum:]]\)/\1nicie\2\3/g
    # TODO: no
    # reiniciar
    s/\b\([Rr]\)einiciés\([^[:alnum:]]\)/\1einiciara\2/g
    s/\b\([Rr]\)einiciéssi\([mu]\)\([^[:alnum:]]\)/\1einiciàre\2\3/g
    s/\b\([Rr]\)einiciessi\([ns]\)\([^[:alnum:]]\)/\1einiciare\2\3/g
    s/\b\([Rr]\)einici\([ïo]\)\([^[:alnum:]]\)/\1einicie\3/g
    s/\b\([Rr]\)einiciï\([ns]\|\)\([^[:alnum:]]\)/\1einicie\2\3/g
# inicialitzar -> restablir
s/\b\([Ii]\)nicialitzés\([^[:alnum:]]\)/\1nicialitzara\2/g
s/\b\([Ii]\)nicialitzéssi\([mu]\)\([^[:alnum:]]\)/\1nicialitzàre\2\3/g
s/\b\([Ii]\)nicialitzessi\([ns]\)\([^[:alnum:]]\)/\1nicialitzare\2\3/g
s/\b\([Ii]\)nicialitzi\([ns]\)\([^[:alnum:]]\)/\1nicialitze\2\3/g
s/\b\([Ii]\)nicialitz\([io]\)\([^[:alnum:]]\)/\1nicialitze\3/g
    # TODO: no
    # reinicialitzar
    s/\b\([Rr]\)einicialitzés\([^[:alnum:]]\)/\1einicialitzara\2/g
    s/\b\([Rr]\)einicialitzéssi\([mu]\)\([^[:alnum:]]\)/\1einicialitzàre\2\3/g
    s/\b\([Rr]\)einicialitzessi\([ns]\)\([^[:alnum:]]\)/\1einicialitzare\2\3/g
    s/\b\([Rr]\)einicialitzi\([ns]\)\([^[:alnum:]]\)/\1einicialitze\2\3/g
    s/\b\([Rr]\)einicialitz\([io]\)\([^[:alnum:]]\)/\1einicialitze\3/g
# injectar
s/\b\([Ii]\)njectés\([^[:alnum:]]\)/\1njectara\2/g
s/\b\([Ii]\)njectéssi\([mu]\)\([^[:alnum:]]\)/\1njectàre\2\3/g
s/\b\([Ii]\)njectessi\([ns]\)\([^[:alnum:]]\)/\1njectare\2\3/g
s/\b\([Ii]\)nject\([io]\)\([^[:alnum:]]\)/\1njecte\3/g
s/\b\([Ii]\)njecti\([ns]\|\)\([^[:alnum:]]\)/\1njecte\2\3/g
# inserir
s/\b\([Ii]\)nsereix\(e[ns]\|\)\([^[:alnum:]]\)/\1nserix\2\3/g
s/\b\([Ii]\)nsereixi\([^[:alnum:]]\)/\1nserisca\2/g
s/\b\([Ii]\)nsereixi\([ns]\)\([^[:alnum:]]\)/\1nserisque\2\3/g
s/\b\([Ii]\)nsereixo\([^[:alnum:]]\)/\1nserisc\2/g
s/\b\([Ii]\)nserís\([^[:alnum:]]\)/\1nserira\2/g
s/\b\([Ii]\)nseríssi\([mu]\)\([^[:alnum:]]\)/\1nseríre\2\3/g
s/\b\([Ii]\)nserissi\([ns]\)\([^[:alnum:]]\)/\1nserire\2\3/g
# insistir
s/\b\([Ii]\)nsisteix\(e[ns]\|\)\([^[:alnum:]]\)/\1nsistix\2\3/g
s/\b\([Ii]\)nsisteixi\([^[:alnum:]]\)/\1nsistisca\2/g
s/\b\([Ii]\)nsisteixi\([ns]\)\([^[:alnum:]]\)/\1nsistisque\2\3/g
s/\b\([Ii]\)nsisteixo\([^[:alnum:]]\)/\1nsistisc\2/g
s/\b\([Ii]\)nsistís\([^[:alnum:]]\)/\1nsistira\2/g
s/\b\([Ii]\)nsistíssi\([mu]\)\([^[:alnum:]]\)/\1nsistíre\2\3/g
s/\b\([Ii]\)nsistissi\([ns]\)\([^[:alnum:]]\)/\1nsistire\2\3/g
# inspeccionar
s/\b\([Ii]\)nspeccionés\([^[:alnum:]]\)/\1nspeccionara\2/g
s/\b\([Ii]\)nspeccionéssi\([mu]\)\([^[:alnum:]]\)/\1nspeccionàre\2\3/g
s/\b\([Ii]\)nspeccionessi\([ns]\)\([^[:alnum:]]\)/\1nspeccionare\2\3/g
s/\b\([Ii]\)nspeccion\([io]\)\([^[:alnum:]]\)/\1nspeccione\3/g
s/\b\([Ii]\)nspeccioni\([ns]\)\([^[:alnum:]]\)/\1nspeccione\2\3/g
# instal·lar
s/\b\([Ii]\)nstal·lés\([^[:alnum:]]\)/\1nstal·lara\2/g
s/\b\([Ii]\)nstal·léssi\([mu]\)\([^[:alnum:]]\)/\1nstal·làre\2\3/g
s/\b\([Ii]\)nstal·lessi\([ns]\)\([^[:alnum:]]\)/\1nstal·lare\2\3/g
s/\b\([Ii]\)nstal·l\([io]\)\([^[:alnum:]]\)/\1nstal·le\3/g
s/\b\([Ii]\)nstal·li\([ns]\)\([^[:alnum:]]\)/\1nstal·le\2\3/g
    # TODO: no
    # desinstal·lar
    s/\b\([Dd]\)esinstal·lés\([^[:alnum:]]\)/\1esinstal·lara\2/g
    s/\b\([Dd]\)esinstal·léssi\([mu]\)\([^[:alnum:]]\)/\1esinstal·làre\2\3/g
    s/\b\([Dd]\)esinstal·lessi\([ns]\)\([^[:alnum:]]\)/\1esinstal·lare\2\3/g
    s/\b\([Dd]\)esinstal·l\([io]\)\([^[:alnum:]]\)/\1esinstal·le\3/g
    s/\b\([Dd]\)esinstal·li\([ns]\)\([^[:alnum:]]\)/\1esinstal·le\2\3/g
    # TODO: no
    # preinstal·lar
    s/\b\([Pp]\)reinstal·lés\([^[:alnum:]]\)/\1reinstal·lara\2/g
    s/\b\([Pp]\)reinstal·léssi\([mu]\)\([^[:alnum:]]\)/\1reinstal·làre\2\3/g
    s/\b\([Pp]\)reinstal·lessi\([ns]\)\([^[:alnum:]]\)/\1reinstal·lare\2\3/g
    s/\b\([Pp]\)reinstal·l\([io]\)\([^[:alnum:]]\)/\1reinstal·le\3/g
    s/\b\([Pp]\)reinstal·li\([ns]\)\([^[:alnum:]]\)/\1reinstal·le\2\3/g
    # reinstal·lar
    s/\b\([Rr]\)einstal·lés\([^[:alnum:]]\)/\1einstal·lara\2/g
    s/\b\([Rr]\)einstal·léssi\([mu]\)\([^[:alnum:]]\)/\1einstal·làre\2\3/g
    s/\b\([Rr]\)einstal·lessi\([ns]\)\([^[:alnum:]]\)/\1einstal·lare\2\3/g
    s/\b\([Rr]\)einstal·l\([io]\)\([^[:alnum:]]\)/\1einstal·le\3/g
    s/\b\([Rr]\)einstal·li\([ns]\)\([^[:alnum:]]\)/\1einstal·le\2\3/g
s/\b\([Ii]\)nterès\([^[:alnum:]]\)/\1nterés\2/g
# instruir
s/\b\([Ii]\)nstrueix\(e[ns]\|\)\([^[:alnum:]]\)/\1nstruïx\2\3/g
s/\b\([Ii]\)nstrueixi\([^[:alnum:]]\)/\1nstruïsca\2/g
s/\b\([Ii]\)nstrueixi\([ns]\)\([^[:alnum:]]\)/\1nstruïsque\2\3/g
s/\b\([Ii]\)nstrueixo\([^[:alnum:]]\)/\1nstruïsc\2/g
s/\b\([Ii]\)nstruís\([^[:alnum:]]\)/\1nstruïra\2/g
s/\b\([Ii]\)nstruíssi\([mu]\)\([^[:alnum:]]\)/\1nstruíre\2\3/g
s/\b\([Ii]\)nstruïssi\([ns]\)\([^[:alnum:]]\)/\1nstruïre\2\3/g
# instrumentar
s/\b\([Ii]\)nstrumentés\([^[:alnum:]]\)/\1nstrumentara\2/g
s/\b\([Ii]\)nstrumentéssi\([mu]\)\([^[:alnum:]]\)/\1nstrumentàre\2\3/g
s/\b\([Ii]\)nstrumentessi\([ns]\)\([^[:alnum:]]\)/\1nstrumentare\2\3/g
s/\b\([Ii]\)nstrument\([io]\)\([^[:alnum:]]\)/\1nstrumente\3/g
s/\b\([Ii]\)nstrumenti\([ns]\)\([^[:alnum:]]\)/\1nstrumente\2\3/g
# integrar
s/\b\([Ii]\)ntegrés\([^[:alnum:]]\)/\1ntegrara\2/g
s/\b\([Ii]\)ntegréssi\([mu]\)\([^[:alnum:]]\)/\1ntegràre\2\3/g
s/\b\([Ii]\)ntegressi\([ns]\)\([^[:alnum:]]\)/\1ntegrare\2\3/g
s/\b\([Ii]\)ntegr\([io]\)\([^[:alnum:]]\)/\1ntegre\3/g
s/\b\([Ii]\)ntegri\([ns]\)\([^[:alnum:]]\)/\1ntegre\2\3/g
# intentar
s/\b\([Ii]\)ntentés\([^[:alnum:]]\)/\1ntentara\2/g
s/\b\([Ii]\)ntentéssi\([mu]\)\([^[:alnum:]]\)/\1ntentàre\2\3/g
s/\b\([Ii]\)ntentessi\([ns]\)\([^[:alnum:]]\)/\1ntentare\2\3/g
s/\b\([Ii]\)ntent\([io]\)\([^[:alnum:]]\)/\1ntente\3/g
s/\b\([Ii]\)ntenti\([ns]\)\([^[:alnum:]]\)/\1ntente\2\3/g
    # TODO: no
    # reintentar
    s/\b\([Rr]\)eintentés\([^[:alnum:]]\)/\1eintentara\2/g
    s/\b\([Rr]\)eintentéssi\([mu]\)\([^[:alnum:]]\)/\1eintentàre\2\3/g
    s/\b\([Rr]\)eintentessi\([ns]\)\([^[:alnum:]]\)/\1eintentare\2\3/g
    s/\b\([Rr]\)eintent\([io]\)\([^[:alnum:]]\)/\1eintente\3/g
    s/\b\([Rr]\)eintenti\([ns]\)\([^[:alnum:]]\)/\1eintente\2\3/g
# interessar
s/\b\([Ii]\)nteressés\([^[:alnum:]]\)/\1nteressara\2/g
s/\b\([Ii]\)nteresséssi\([mu]\)\([^[:alnum:]]\)/\1nteressàre\2\3/g
s/\b\([Ii]\)nteressessi\([ns]\)\([^[:alnum:]]\)/\1nteressare\2\3/g
s/\b\([Ii]\)nteress\([io]\)\([^[:alnum:]]\)/\1nteresse\3/g
s/\b\([Ii]\)nteressi\([ns]\)\([^[:alnum:]]\)/\1nteresse\2\3/g
# internacionalitzar
s/\b\([Ii]\)nternacionalitzés\([^[:alnum:]]\)/\1nternacionalitzara\2/g
s/\b\([Ii]\)nternacionalitzéssi\([mu]\)\([^[:alnum:]]\)/\1nternacionalitzàre\2\3/g
s/\b\([Ii]\)nternacionalitzessi\([ns]\)\([^[:alnum:]]\)/\1nternacionalitzare\2\3/g
s/\b\([Ii]\)nternacionalitz\([io]\)\([^[:alnum:]]\)/\1nternacionalitze\3/g
s/\b\([Ii]\)nternacionalitzi\([ns]\)\([^[:alnum:]]\)/\1nternacionalitze\2\3/g
# interpolar
s/\b\([Ii]\)nterpolés\([^[:alnum:]]\)/\1nterpolara\2/g
s/\b\([Ii]\)nterpoléssi\([mu]\)\([^[:alnum:]]\)/\1nterpolàre\2\3/g
s/\b\([Ii]\)nterpolessi\([ns]\)\([^[:alnum:]]\)/\1nterpolare\2\3/g
s/\b\([Ii]\)nterpol\([io]\)\([^[:alnum:]]\)/\1nterpole\3/g
s/\b\([Ii]\)nterpoli\([ns]\)\([^[:alnum:]]\)/\1nterpole\2\3/g
# interpretar
s/\b\([Ii]\)nterpretés\([^[:alnum:]]\)/\1nterpretara\2/g
s/\b\([Ii]\)nterpretéssi\([mu]\)\([^[:alnum:]]\)/\1nterpretàre\2\3/g
s/\b\([Ii]\)nterpretessi\([ns]\)\([^[:alnum:]]\)/\1nterpretare\2\3/g
s/\b\([Ii]\)nterpret\([io]\)\([^[:alnum:]]\)/\1nterprete\3/g
s/\b\([Ii]\)nterpreti\([ns]\)\([^[:alnum:]]\)/\1nterprete\2\3/g
# interrompre
s/\b\([Ii]\)nterrompés\([^[:alnum:]]\)/\1nterrompera\2/g
s/\b\([Ii]\)nterrompéssi\([mu]\)\([^[:alnum:]]\)/\1nterrompére\2\3/g
s/\b\([Ii]\)nterrompessi\([ns]\)\([^[:alnum:]]\)/\1nterrompere\2\3/g
s/\b\([Ii]\)nterrompi\([^[:alnum:]]\)/\1nterrompa\2/g
s/\b\([Ii]\)nterrompi\([ns]\)\([^[:alnum:]]\)/\1nterrompe\2\3/g
s/\b\([Ii]\)nterrompo\([^[:alnum:]]\)/\1nterromp\2/g
# intimidar
s/\b\([Ii]\)ntimidés\([^[:alnum:]]\)/\1ntimidara\2/g
s/\b\([Ii]\)ntimidéssi\([mu]\)\([^[:alnum:]]\)/\1ntimidàre\2\3/g
s/\b\([Ii]\)ntimidessi\([ns]\)\([^[:alnum:]]\)/\1ntimidare\2\3/g
s/\b\([Ii]\)ntimid\([io]\)\([^[:alnum:]]\)/\1ntimide\3/g
s/\b\([Ii]\)ntimidi\([ns]\)\([^[:alnum:]]\)/\1ntimide\2\3/g
# introduir
s/\b\([Ii]\)ntrodueix\(e[ns]\|\)\([^[:alnum:]]\)/\1ntroduïx\2\3/g
s/\b\([Ii]\)ntrodueixi\([^[:alnum:]]\)/\1ntroduïsca\2/g
s/\b\([Ii]\)ntrodueixi\([ns]\)\([^[:alnum:]]\)/\1ntroduïsque\2\3/g
s/\b\([Ii]\)ntrodueixo\([^[:alnum:]]\)/\1ntroduïsc\2/g
s/\b\([Ii]\)ntroduís\([^[:alnum:]]\)/\1ntroduïra\2/g
s/\b\([Ii]\)ntroduíssi\([mu]\)\([^[:alnum:]]\)/\1ntroduíre\2\3/g
s/\b\([Ii]\)ntroduïssi\([ns]\)\([^[:alnum:]]\)/\1ntroduïre\2\3/g
# invertir
s/\b\([Ii]\)nverteix\(e[ns]\|\)\([^[:alnum:]]\)/\1nvertix\2\3/g
s/\b\([Ii]\)nverteixi\([^[:alnum:]]\)/\1nvertisca\2/g
s/\b\([Ii]\)nverteixi\([ns]\)\([^[:alnum:]]\)/\1nvertisque\2\3/g
s/\b\([Ii]\)nverteixo\([^[:alnum:]]\)/\1nvertisc\2/g
s/\b\([Ii]\)nvertís\([^[:alnum:]]\)/\1nvertira\2/g
s/\b\([Ii]\)nvertíssi\([mu]\)\([^[:alnum:]]\)/\1nvertíre\2\3/g
s/\b\([Ii]\)nvertissi\([ns]\)\([^[:alnum:]]\)/\1nvertire\2\3/g
    # reinvertir
    s/\b\([Rr]\)einverteix\(e[ns]\|\)\([^[:alnum:]]\)/\1einvertix\2\3/g
    s/\b\([Rr]\)einverteixi\([^[:alnum:]]\)/\1einvertisca\2/g
    s/\b\([Rr]\)einverteixi\([ns]\)\([^[:alnum:]]\)/\1einvertisque\2\3/g
    s/\b\([Rr]\)einverteixo\([^[:alnum:]]\)/\1einvertisc\2/g
    s/\b\([Rr]\)einvertís\([^[:alnum:]]\)/\1einvertira\2/g
    s/\b\([Rr]\)einvertíssi\([mu]\)\([^[:alnum:]]\)/\1einvertíre\2\3/g
    s/\b\([Rr]\)einvertissi\([ns]\)\([^[:alnum:]]\)/\1einvertire\2\3/g
# investigar
s/\b\([Ii]\)nvestigués\([^[:alnum:]]\)/\1nvestigara\2/g
s/\b\([Ii]\)nvestiguéssi\([mu]\)\([^[:alnum:]]\)/\1nvestigàre\2\3/g
s/\b\([Ii]\)nvestiguessi\([ns]\)\([^[:alnum:]]\)/\1nvestigare\2\3/g
s/\b\([Ii]\)nvestigo\([^[:alnum:]]\)/\1nvestigue\2/g
s/\b\([Ii]\)nvestigui\([ns]\|\)\([^[:alnum:]]\)/\1nvestigue\2\3/g
# invitar
s/\b\([Ii]\)nvités\([^[:alnum:]]\)/\1nvitara\2/g
s/\b\([Ii]\)nvitéssi\([mu]\)\([^[:alnum:]]\)/\1nvitàre\2\3/g
s/\b\([Ii]\)nvitessi\([ns]\)\([^[:alnum:]]\)/\1nvitare\2\3/g
s/\b\([Ii]\)nvit\([io]\)\([^[:alnum:]]\)/\1nvite\3/g
s/\b\([Ii]\)nviti\([ns]\)\([^[:alnum:]]\)/\1nvite\2\3/g
# invocar
s/\b\([Ii]\)nvoco\([^[:alnum:]]\)/\1nvoque\2/g
s/\b\([Ii]\)nvoqués\([^[:alnum:]]\)/\1nvocara\2/g
s/\b\([Ii]\)nvoquéssi\([mu]\)\([^[:alnum:]]\)/\1nvocàre\2\3/g
s/\b\([Ii]\)nvoquessi\([ns]\)\([^[:alnum:]]\)/\1nvocare\2\3/g
s/\b\([Ii]\)nvoqui\([ns]\|\)\([^[:alnum:]]\)/\1nvoque\2\3/g
# involucrar
s/\b\([Ii]\)nvolucrés\([^[:alnum:]]\)/\1nvolucrara\2/g
s/\b\([Ii]\)nvolucréssi\([mu]\)\([^[:alnum:]]\)/\1nvolucràre\2\3/g
s/\b\([Ii]\)nvolucressi\([ns]\)\([^[:alnum:]]\)/\1nvolucrare\2\3/g
s/\b\([Ii]\)nvolucro\([^[:alnum:]]\)/\1nvolucre\2/g
s/\b\([Ii]\)nvolucri\([ns]\|\)\([^[:alnum:]]\)/\1nvolucre\2\3/g
# ionitzar
s/\b\([Ii]\)onitzés\([^[:alnum:]]\)/\1onitzara\2/g
s/\b\([Ii]\)onitzéssi\([mu]\)\([^[:alnum:]]\)/\1onitzàre\2\3/g
s/\b\([Ii]\)onitzessi\([ns]\)\([^[:alnum:]]\)/\1onitzare\2\3/g
s/\b\([Ii]\)onitz\([io]\)\([^[:alnum:]]\)/\1onitze\3/g
s/\b\([Ii]\)onitzi\([ns]\)\([^[:alnum:]]\)/\1onitze\2\3/g
s/\b\([Ii]\)\([rs]\)landès\([^[:alnum:]]\)/\1\2landés\3/g
# j
#
s/\b\([Jj]\)aponès\([^[:alnum:]]\)/\1aponés\2/g
s/\b\([Jj]\)avanès\([^[:alnum:]]\)/\1avanés\2/g
# jerarquitzar
s/\b\([Jj]\)erarquitzés\([^[:alnum:]]\)/\1erarquitzara\2/g
s/\b\([Jj]\)erarquitzéssi\([mu]\)\([^[:alnum:]]\)/\1erarquitzàre\2\3/g
s/\b\([Jj]\)erarquitzessi\([ns]\)\([^[:alnum:]]\)/\1erarquitzare\2\3/g
s/\b\([Jj]\)erarquitz\([io]\)\([^[:alnum:]]\)/\1erarquitze\3/g
s/\b\([Jj]\)erarquitzi\(m\|n\|s\|u\|\)\([^[:alnum:]]\)/\1erarquitze\2\3/g
s/\b\([Jj]\)oguina\([^[:alnum:]]\)/\1oguet\2/g
s/\b\([Jj]\)oguines\([^[:alnum:]]\)/\1oguets\2/g
s/\b\([Jj]\)udici\([^[:alnum:]]\)/\1uí\2/g
# jeure -> jaure
s/\b\([Jj]\)agués\([^[:alnum:]]\)/\1aguera\2/g
s/\b\([Jj]\)aguéssi\([mu]\)\([^[:alnum:]]\)/\1aguére\2\3/g
s/\b\([Jj]\)aguessi\([ns]\)\([^[:alnum:]]\)/\1aguere\2\3/g
s/\b\([Jj]\)e\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1a\2\3/g
s/\b\([Jj]\)egui\([^[:alnum:]]\)/\1aga\2/g
s/\b\([Jj]\)egui\([ns]\)\([^[:alnum:]]\)/\1ague\2\3/g
# jugar
s/\b\([Jj]\)ugués\([^[:alnum:]]\)/\1ugara\2/g
s/\b\([Jj]\)uguéssi\([mu]\)\([^[:alnum:]]\)/\1ugàre\2\3/g
s/\b\([Jj]\)uguessi\([ns]\)\([^[:alnum:]]\)/\1ugare\2\3/g
s/\b\([Jj]\)ugo\([^[:alnum:]]\)/\1ugue\2/g
s/\b\([Jj]\)ugui\([ns]\|\)\([^[:alnum:]]\)/\1ugue\2\3/g
    # conjugar
    s/\b\([Cc]\)onjugués\([^[:alnum:]]\)/\1onjugara\2/g
    s/\b\([Cc]\)onjuguéssi\([mu]\)\([^[:alnum:]]\)/\1onjugàre\2\3/g
    s/\b\([Cc]\)onjuguessi\([ns]\)\([^[:alnum:]]\)/\1onjugare\2\3/g
    s/\b\([Cc]\)onjugo\([^[:alnum:]]\)/\1onjugue\2/g
    s/\b\([Cc]\)onjugui\([ns]\|\)\([^[:alnum:]]\)/\1onjugue\2\3/g
    # subjugar
    s/\b\([Ss]\)ubjugués\([^[:alnum:]]\)/\1ubjugara\2/g
    s/\b\([Ss]\)ubjuguéssi\([mu]\)\([^[:alnum:]]\)/\1ubjugàre\2\3/g
    s/\b\([Ss]\)ubjuguessi\([ns]\)\([^[:alnum:]]\)/\1ubjugare\2\3/g
    s/\b\([Ss]\)ubjugo\([^[:alnum:]]\)/\1ubjugue\2/g
    s/\b\([Ss]\)ubjugui\([ns]\|\)\([^[:alnum:]]\)/\1ubjugue\2\3/g
# juntar
s/\b\([Jj]\)untés\([^[:alnum:]]\)/\1untara\2/g
s/\b\([Jj]\)untéssi\([mu]\)\([^[:alnum:]]\)/\1untàre\2\3/g
s/\b\([Jj]\)untessi\([ns]\)\([^[:alnum:]]\)/\1untare\2\3/g
s/\b\([Jj]\)unt\([io]\)\([^[:alnum:]]\)/\1unte\3/g
s/\b\([Jj]\)unti\([ns]\)\([^[:alnum:]]\)/\1unte\2\3/g
    # adjuntar
    s/\b\([Aa]\)djuntés\([^[:alnum:]]\)/\1djuntara\2/g
    s/\b\([Aa]\)djuntéssi\([mu]\)\([^[:alnum:]]\)/\1djuntàre\2\3/g
    s/\b\([Aa]\)djuntessi\([ns]\)\([^[:alnum:]]\)/\1djuntare\2\3/g
    s/\b\([Aa]\)djunt\([io]\)\([^[:alnum:]]\)/\1djunte\3/g
    s/\b\([Aa]\)djunti\([ns]\)\([^[:alnum:]]\)/\1djunte\2\3/g
    # ajuntar
    s/\b\([Aa]\)juntés\([^[:alnum:]]\)/\1juntara\2/g
    s/\b\([Aa]\)juntéssi\([mu]\)\([^[:alnum:]]\)/\1juntàre\2\3/g
    s/\b\([Aa]\)juntessi\([ns]\)\([^[:alnum:]]\)/\1juntare\2\3/g
    s/\b\([Aa]\)junt\([io]\)\([^[:alnum:]]\)/\1junte\3/g
    s/\b\([Aa]\)junti\([ns]\)\([^[:alnum:]]\)/\1junte\2\3/g
    # conjuntar
    s/\b\([Cc]\)onjuntés\([^[:alnum:]]\)/\1onjuntara\2/g
    s/\b\([Cc]\)onjuntéssi\([mu]\)\([^[:alnum:]]\)/\1onjuntàre\2\3/g
    s/\b\([Cc]\)onjuntessi\([ns]\)\([^[:alnum:]]\)/\1onjuntare\2\3/g
    s/\b\([Cc]\)onjunt\([io]\)\([^[:alnum:]]\)/\1onjunte\3/g
    s/\b\([Cc]\)onjunti\([ns]\)\([^[:alnum:]]\)/\1onjunte\2\3/g
    # desajuntar
    s/\b\([Dd]\)esajuntés\([^[:alnum:]]\)/\1esajuntara\2/g
    s/\b\([Dd]\)esajuntéssi\([mu]\)\([^[:alnum:]]\)/\1esajuntàre\2\3/g
    s/\b\([Dd]\)esajuntessi\([ns]\)\([^[:alnum:]]\)/\1esajuntare\2\3/g
    s/\b\([Dd]\)esajunt\([io]\)\([^[:alnum:]]\)/\1esajunte\3/g
    s/\b\([Dd]\)esajunti\([ns]\)\([^[:alnum:]]\)/\1esajunte\2\3/g
    # desconjuntar
    s/\b\([Dd]\)esconjuntés\([^[:alnum:]]\)/\1esconjuntara\2/g
    s/\b\([Dd]\)esconjuntéssi\([mu]\)\([^[:alnum:]]\)/\1esconjuntàre\2\3/g
    s/\b\([Dd]\)esconjuntessi\([ns]\)\([^[:alnum:]]\)/\1esconjuntare\2\3/g
    s/\b\([Dd]\)esconjunt\([io]\)\([^[:alnum:]]\)/\1esconjunte\3/g
    s/\b\([Dd]\)esconjunti\([ns]\)\([^[:alnum:]]\)/\1esconjunte\2\3/g
    # rejuntar
    s/\b\([Rr]\)ejuntés\([^[:alnum:]]\)/\1ejuntara\2/g
    s/\b\([Rr]\)ejuntéssi\([mu]\)\([^[:alnum:]]\)/\1ejuntàre\2\3/g
    s/\b\([Rr]\)ejuntessi\([ns]\)\([^[:alnum:]]\)/\1ejuntare\2\3/g
    s/\b\([Rr]\)ejunt\([io]\)\([^[:alnum:]]\)/\1ejunte\3/g
    s/\b\([Rr]\)ejunti\([ns]\)\([^[:alnum:]]\)/\1ejunte\2\3/g
# justificar
s/\b\([Jj]\)ustifiqués\([^[:alnum:]]\)/\1ustificara\2/g
s/\b\([Jj]\)ustifiquéssi\([mu]\)\([^[:alnum:]]\)/\1ustificàre\2\3/g
s/\b\([Jj]\)ustifiquessi\([ns]\)\([^[:alnum:]]\)/\1ustificare\2\3/g
s/\b\([Jj]\)ustifico\([^[:alnum:]]\)/\1ustifique\2/g
s/\b\([Jj]\)ustifiqui\([ns]\|\)\([^[:alnum:]]\)/\1ustifique\2\3/g
s/\bJustificat\([^[:alnum:]]\)/Justifica\1/g
# jutjar
s/\b\([Jj]\)utgés\([^[:alnum:]]\)/\1utjara\2/g
s/\b\([Jj]\)utgéssi\([mu]\)\([^[:alnum:]]\)/\1utjàre\2\3/g
s/\b\([Jj]\)utgessi\([ns]\)\([^[:alnum:]]\)/\1utjare\2\3/g
s/\b\([Jj]\)utjo\([^[:alnum:]]\)/\1utge\2/g
s/\b\([Jj]\)utgi\([ns]\|\)\([^[:alnum:]]\)/\1utge\2\3/g
    # prejutjar
    s/\b\([Pp]\)rejutgés\([^[:alnum:]]\)/\1rejutjara\2/g
    s/\b\([Pp]\)rejutgéssi\([mu]\)\([^[:alnum:]]\)/\1rejutjàre\2\3/g
    s/\b\([Pp]\)rejutgessi\([ns]\)\([^[:alnum:]]\)/\1rejutjare\2\3/g
    s/\b\([Pp]\)rejutjo\([^[:alnum:]]\)/\1rejutge\2/g
    s/\b\([Pp]\)rejutgi\([ns]\|\)\([^[:alnum:]]\)/\1rejutge\2\3/g
# k
#
s/\b\([Kk]\)anarès\([^[:alnum:]]\)/\1anarés\2/g
# l
#
# lamentar
s/\b\([Ll]\)amentés\([^[:alnum:]]\)/\1amentara\2/g
s/\b\([Ll]\)amentéssi\([mu]\)\([^[:alnum:]]\)/\1amentàre\2\3/g
s/\b\([Ll]\)amentessi\([ns]\)\([^[:alnum:]]\)/\1amentare\2\3/g
s/\b\([Ll]\)ament\([io]\)\([^[:alnum:]]\)/\1amente\3/g
s/\b\([Ll]\)amenti\([ns]\)\([^[:alnum:]]\)/\1amente\2\3/g
# llatinitzar
s/\b\([Ll]\)latinitzés\([^[:alnum:]]\)/\1latinitzara\2/g
s/\b\([Ll]\)latinitzéssi\([mu]\)\([^[:alnum:]]\)/\1latinitzàre\2\3/g
s/\b\([Ll]\)latinitzessi\([ns]\)\([^[:alnum:]]\)/\1latinitzare\2\3/g
s/\b\([Ll]\)latinitz\([io]\)\([^[:alnum:]]\)/\1latinitze\3/g
s/\b\([Ll]\)latinitzi\([ns]\)\([^[:alnum:]]\)/\1latinitze\2\3/g
s/\b\([Ll]\)imburguès\([^[:alnum:]]\)/\1imburgués\2/g
# llistar
s/\b\([Ll]\)listés\([^[:alnum:]]\)/\1listara\2/g
s/\b\([Ll]\)listéssi\([mu]\)\([^[:alnum:]]\)/\1listàre\2\3/g
s/\b\([Ll]\)listessi\([ns]\)\([^[:alnum:]]\)/\1listare\2\3/g
s/\b\([Ll]\)list\([io]\)\([^[:alnum:]]\)/\1liste\3/g
s/\b\([Ll]\)listi\([ns]\)\([^[:alnum:]]\)/\1liste\2\3/g
    # allistar
    s/\b\([Aa]\)llistés\([^[:alnum:]]\)/\1llistara\2/g
    s/\b\([Aa]\)llistéssi\([mu]\)\([^[:alnum:]]\)/\1llistàre\2\3/g
    s/\b\([Aa]\)llistessi\([ns]\)\([^[:alnum:]]\)/\1llistare\2\3/g
    s/\b\([Aa]\)llist\([io]\)\([^[:alnum:]]\)/\1lliste\3/g
    s/\b\([Aa]\)llisti\([ns]\)\([^[:alnum:]]\)/\1lliste\2\3/g
    # enllistar
    s/\b\([Ee]\)nllistés\([^[:alnum:]]\)/\1nllistara\2/g
    s/\b\([Ee]\)nllistéssi\([mu]\)\([^[:alnum:]]\)/\1nllistàre\2\3/g
    s/\b\([Ee]\)nllistessi\([ns]\)\([^[:alnum:]]\)/\1nllistare\2\3/g
    s/\b\([Ee]\)nllist\([io]\)\([^[:alnum:]]\)/\1nlliste\3/g
    s/\b\([Ee]\)nllisti\([ns]\)\([^[:alnum:]]\)/\1nlliste\2\3/g
# liquidar
s/\b\([Ll]\)iquidés\([^[:alnum:]]\)/\1iquidara\2/g
s/\b\([Ll]\)iquidéssi\([mu]\)\([^[:alnum:]]\)/\1iquidàre\2\3/g
s/\b\([Ll]\)iquidessi\([ns]\)\([^[:alnum:]]\)/\1iquidare\2\3/g
s/\b\([Ll]\)iquid\([io]\)\([^[:alnum:]]\)/\1iquide\3/g
s/\b\([Ll]\)iquidi\([ns]\)\([^[:alnum:]]\)/\1iquide\2\3/g
# localitzar
s/\b\([Ll]\)ocalitzés\([^[:alnum:]]\)/\1ocalitzara\2/g
s/\b\([Ll]\)ocalitzéssi\([mu]\)\([^[:alnum:]]\)/\1ocalitzàre\2\3/g
s/\b\([Ll]\)ocalitzessi\([ns]\)\([^[:alnum:]]\)/\1ocalitzare\2\3/g
s/\b\([Ll]\)ocalitz\([io]\)\([^[:alnum:]]\)/\1ocalitze\3/g
s/\b\([Ll]\)ocalitzi\(m\|n\|s\|u\|\)\([^[:alnum:]]\)/\1ocalitze\2\3/g
    # geolocalitzar
    s/\b\([Gg]\)eolocalitzés\([^[:alnum:]]\)/\1eolocalitzara\2/g
    s/\b\([Gg]\)eolocalitzéssi\([mu]\)\([^[:alnum:]]\)/\1eolocalitzàre\2\3/g
    s/\b\([Gg]\)eolocalitzessi\([ns]\)\([^[:alnum:]]\)/\1eolocalitzare\2\3/g
    s/\b\([Gg]\)eolocalitz\([io]\)\([^[:alnum:]]\)/\1eolocalitze\3/g
    s/\b\([Gg]\)eolocalitzi\(m\|n\|s\|u\|\)\([^[:alnum:]]\)/\1eolocalitze\2\3/g
    # relocalitzar
    s/\b\([Rr]\)elocalitzés\([^[:alnum:]]\)/\1elocalitzara\2/g
    s/\b\([Rr]\)elocalitzéssi\([mu]\)\([^[:alnum:]]\)/\1elocalitzàre\2\3/g
    s/\b\([Rr]\)elocalitzessi\([ns]\)\([^[:alnum:]]\)/\1elocalitzare\2\3/g
    s/\b\([Rr]\)elocalitz\([io]\)\([^[:alnum:]]\)/\1elocalitze\3/g
    s/\b\([Rr]\)elocalitzi\(m\|n\|s\|u\|\)\([^[:alnum:]]\)/\1elocalitze\2\3/g
    # sublocalitzar
    s/\b\([Ss]\)ublocalitzés\([^[:alnum:]]\)/\1ublocalitzara\2/g
    s/\b\([Ss]\)ublocalitzéssi\([mu]\)\([^[:alnum:]]\)/\1ublocalitzàre\2\3/g
    s/\b\([Ss]\)ublocalitzessi\([ns]\)\([^[:alnum:]]\)/\1ublocalitzare\2\3/g
    s/\b\([Ss]\)ublocalitz\([io]\)\([^[:alnum:]]\)/\1ublocalitze\3/g
    s/\b\([Ss]\)ublocalitzi\(m\|n\|s\|u\|\)\([^[:alnum:]]\)/\1ublocalitze\2\3/g
# longitud -> llargària (esmenes - longitude & long)
s/\b\([Ll]\)uxemburguès\([^[:alnum:]]\)/\1uxemburgués\2/g
# llançar (esmenes)
s/\b\([Ll]\)lancés\([^[:alnum:]]\)/\1lançara\2/g
s/\b\([Ll]\)lancéssi\([mu]\)\([^[:alnum:]]\)/\1lançàre\2\3/g
s/\b\([Ll]\)lancessi\([ns]\)\([^[:alnum:]]\)/\1lançare\2\3/g
s/\b\([Ll]\)lanço\([^[:alnum:]]\)/\1lance\2/g
s/\b\([Ll]\)lanci\([ns]\|\)\([^[:alnum:]]\)/\1lance\2\3/g
s/\bLlangardaix\([^[:alnum:]]\)/Fardatxo\1/g
s/\bllangardaix\([^[:alnum:]]\)/fardatxo\1/g
s/\bLlangardaixos\([^[:alnum:]]\)/Fardatxos\1/g
s/\bllangardaixos\([^[:alnum:]]\)/fardatxos\1/g
s/\b\([Ll]\)lenti\(a\|es\)\([^[:alnum:]]\)/\1lentill\2\3/g
s/\b\([Ll]\)limon\(a\|es\)\([^[:alnum:]]\)/\1lim\2\3/g
s/\bLlardons\([^[:alnum:]]\)/Cucarrons\1/g
s/\bllardons\([^[:alnum:]]\)/cucarrons\1/g
    # llençar
    s/\b\([Ll]\)lencés\([^[:alnum:]]\)/\1lençara\2/g
    s/\b\([Ll]\)lencéssi\([mu]\)\([^[:alnum:]]\)/\1lençàre\2\3/g
    s/\b\([Ll]\)lencessi\([ns]\)\([^[:alnum:]]\)/\1lençare\2\3/g
    s/\b\([Ll]\)lenço\([^[:alnum:]]\)/\1lence\2/g
    s/\b\([Ll]\)lenci\([ns]\|\)\([^[:alnum:]]\)/\1lence\2\3/g
    # rellançar
    s/\b\([Rr]\)ellancés\([^[:alnum:]]\)/\1ellançara\2/g
    s/\b\([Rr]\)ellancéssi\([mu]\)\([^[:alnum:]]\)/\1ellançàre\2\3/g
    s/\b\([Rr]\)ellancessi\([ns]\)\([^[:alnum:]]\)/\1ellançare\2\3/g
    s/\b\([Rr]\)ellanço\([^[:alnum:]]\)/\1ellance\2/g
    s/\b\([Rr]\)ellanci\([ns]\|\)\([^[:alnum:]]\)/\1ellance\2\3/g
# llegir
s/\b\([Ll]\)legeix\(e[ns]\|\)\([^[:alnum:]]\)/\1lig\2\3/g
s/\b\([Ll]\)legeixi\([^[:alnum:]]\)/\1lija\2/g
s/\b\([Ll]\)legeixi\([ns]\)\([^[:alnum:]]\)/\1lige\2\3/g
s/\b\([Ll]\)legeixo\([^[:alnum:]]\)/\1lig\2/g
s/\b\([Ll]\)legís\([^[:alnum:]]\)/\1legira\2/g
s/\b\([Ll]\)legíssi\([mu]\)\([^[:alnum:]]\)/\1legíre\2\3/g
s/\b\([Ll]\)legissi\([ns]\)\([^[:alnum:]]\)/\1legire\2\3/g
    # rellegir
    s/\b\([Rr]\)ellegeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ellig\2\3/g
    s/\b\([Rr]\)ellegeixi\([^[:alnum:]]\)/\1ellija\2/g
    s/\b\([Rr]\)ellegeixi\([ns]\)\([^[:alnum:]]\)/\1ellige\2\3/g
    s/\b\([Rr]\)ellegeixo\([^[:alnum:]]\)/\1ellig\2/g
    s/\b\([Rr]\)ellegís\([^[:alnum:]]\)/\1ellegira\2/g
    s/\b\([Rr]\)ellegíssi\([mu]\)\([^[:alnum:]]\)/\1ellegíre\2\3/g
    s/\b\([Rr]\)ellegissi\([ns]\)\([^[:alnum:]]\)/\1ellegire\2\3/g
# lletrejar
s/\b\([Ll]\)letregés\([^[:alnum:]]\)/\1letrejara\2/g
s/\b\([Ll]\)letregéssi\([mu]\)\([^[:alnum:]]\)/\1letrejàre\2\3/g
s/\b\([Ll]\)letregessi\([ns]\)\([^[:alnum:]]\)/\1letrejare\2\3/g
s/\b\([Ll]\)letregi\([ns]\|\)\([^[:alnum:]]\)/\1letrege\2\3/g
s/\b\([Ll]\)letrejo\([^[:alnum:]]\)/\1letrege\2/g
# lliscar
s/\b\([Ll]\)lisco\([^[:alnum:]]\)/\1lisque\2/g
s/\b\([Ll]\)lisqués\([^[:alnum:]]\)/\1liscara\2/g
s/\b\([Ll]\)lisquéssi\([mu]\)\([^[:alnum:]]\)/\1liscàre\2\3/g
s/\b\([Ll]\)lisquessi\([ns]\)\([^[:alnum:]]\)/\1liscare\2\3/g
s/\b\([Ll]\)lisqui\([^[:alnum:]]\)/\1lisque\2/g
s/\b\([Ll]\)lisqui\([ns]\)\([^[:alnum:]]\)/\1lisque\2\3/g
# llistar
s/\b\([Ll]\)listés\([^[:alnum:]]\)/\1listara\2/g
s/\b\([Ll]\)listéssi\([mu]\)\([^[:alnum:]]\)/\1listàre\2\3/g
s/\b\([Ll]\)listessi\([ns]\)\([^[:alnum:]]\)/\1listare\2\3/g
s/\b\([Ll]\)list\([io]\)\([^[:alnum:]]\)/\1liste\3/g
s/\b\([Ll]\)listi\([ns]\)\([^[:alnum:]]\)/\1liste\2\3/g
# lluir
s/\b\([Ll]\)lueix\(e[ns]\|\)\([^[:alnum:]]\)/\1luïx\2\3/g
s/\b\([Ll]\)lueixi\([^[:alnum:]]\)/\1luïsca\2/g
s/\b\([Ll]\)lueixi\([ns]\)\([^[:alnum:]]\)/\1luïsque\2\3/g
s/\b\([Ll]\)lueixo\([^[:alnum:]]\)/\1luïsc\2/g
s/\b\([Ll]\)luís\([^[:alnum:]]\)/\1luïra\2/g
s/\b\([Ll]\)luíssi\([mu]\)\([^[:alnum:]]\)/\1luíre\2\3/g
s/\b\([Ll]\)luïssi\([ns]\)\([^[:alnum:]]\)/\1luïre\2\3/g
# m
#
s/\bMaduix\(a\|es\)\([^[:alnum:]]\)/Fraul\1\2/g
s/\bmaduix\(a\|es\)\([^[:alnum:]]\)/fraul\1\2/g
s/\bMainada\([^[:alnum:]]\)/Xicalla\1/g
s/\bmainada\([^[:alnum:]]\)/xicalla\1/g
s/\bMalauradament\([^[:alnum:]]\)/Desgraciadament\1/g
s/\bmalauradament\([^[:alnum:]]\)/desgraciadament\1/g
# malbaratar
s/\b\([Mm]\)albaratés\([^[:alnum:]]\)/\1albaratara\2/g
s/\b\([Mm]\)albaratéssi\([mu]\)\([^[:alnum:]]\)/\1albaratàre\2\3/g
s/\b\([Mm]\)albaratessi\([ns]\)\([^[:alnum:]]\)/\1albaratare\2\3/g
s/\b\([Mm]\)albarat\([io]\)\([^[:alnum:]]\)/\1albarate\3/g
s/\b\([Mm]\)albarati\([ns]\)\([^[:alnum:]]\)/\1albarate\2\3/g
# manar
s/\b\([Mm]\)anés\([^[:alnum:]]\)/\1anara\2/g
s/\b\([Mm]\)anéssi\([mu]\)\([^[:alnum:]]\)/\1anàre\2\3/g
s/\b\([Mm]\)anessi\([ns]\)\([^[:alnum:]]\)/\1anare\2\3/g
s/\b\([Mm]\)an\([io]\)\([^[:alnum:]]\)/\1ane\3/g
s/\b\([Mm]\)ani\([ns]\)\([^[:alnum:]]\)/\1ane\2\3/g
    # demanar
    s/\b\([Dd]\)emanés\([^[:alnum:]]\)/\1emanara\2/g
    s/\b\([Dd]\)emanéssi\([mu]\)\([^[:alnum:]]\)/\1emanàre\2\3/g
    s/\b\([Dd]\)emanessi\([ns]\)\([^[:alnum:]]\)/\1emanare\2\3/g
    s/\b\([Dd]\)eman\([io]\)\([^[:alnum:]]\)/\1emane\3/g
    s/\b\([Dd]\)emani\([ns]\)\([^[:alnum:]]\)/\1emane\2\3/g
    # emanar
    s/\b\([Ee]\)manés\([^[:alnum:]]\)/\1manara\2/g
    s/\b\([Ee]\)manéssi\([mu]\)\([^[:alnum:]]\)/\1manàre\2\3/g
    s/\b\([Ee]\)manessi\([ns]\)\([^[:alnum:]]\)/\1manare\2\3/g
    s/\b\([Ee]\)man\([io]\)\([^[:alnum:]]\)/\1mane\3/g
    s/\b\([Ee]\)mani\([ns]\)\([^[:alnum:]]\)/\1mane\2\3/g
    # encomanar
    s/\b\([Ee]\)ncomanés\([^[:alnum:]]\)/\1ncomanara\2/g
    s/\b\([Ee]\)ncomanéssi\([mu]\)\([^[:alnum:]]\)/\1ncomanàre\2\3/g
    s/\b\([Ee]\)ncomanessi\([ns]\)\([^[:alnum:]]\)/\1ncomanare\2\3/g
    s/\b\([Ee]\)ncoman\([io]\)\([^[:alnum:]]\)/\1ncomane\3/g
    s/\b\([Ee]\)ncomani\([ns]\)\([^[:alnum:]]\)/\1ncomane\2\3/g
    # recomanar
    s/\b\([Rr]\)ecomanés\([^[:alnum:]]\)/\1ecomanara\2/g
    s/\b\([Rr]\)ecomanéssi\([mu]\)\([^[:alnum:]]\)/\1ecomanàre\2\3/g
    s/\b\([Rr]\)ecomanessi\([ns]\)\([^[:alnum:]]\)/\1ecomanare\2\3/g
    s/\b\([Rr]\)ecoman\([io]\)\([^[:alnum:]]\)/\1ecomane\3/g
    s/\b\([Rr]\)ecomani\([ns]\)\([^[:alnum:]]\)/\1ecomane\2\3/g
# mancar -> faltar (esmenes)
# mandra -> peresa
s/\bMandra\([^[:alnum:]]\)/Peresa\1/g
s/\bmandra\([^[:alnum:]]\)/peresa\1/g
s/\bMandr\(ós\|osa\|oses\|osos\)\([^[:alnum:]]\)/Peres\1\2/g
s/\bmandr\(ós\|osa\|oses\|osos\)\([^[:alnum:]]\)/peres\1\2/g
# mandrejar
s/\b\([Mm]\)andregés\([^[:alnum:]]\)/\1andrejara\2/g
s/\b\([Mm]\)andregéssi\([mu]\)\([^[:alnum:]]\)/\1andrejàre\2\3/g
s/\b\([Mm]\)andregessi\([ns]\)\([^[:alnum:]]\)/\1andrejare\2\3/g
s/\b\([Mm]\)andregi\([ns]\|\)\([^[:alnum:]]\)/\1andrege\2\3/g
s/\b\([Mm]\)andrejo\([^[:alnum:]]\)/\1andrege\2/g
s/\b\([Mm]\)anganès\([^[:alnum:]]\)/\1anganés\2/g
# manifestar
s/\b\([Mm]\)anifestés\([^[:alnum:]]\)/\1anifestara\2/g
s/\b\([Mm]\)anifestéssi\([mu]\)\([^[:alnum:]]\)/\1anifestàre\2\3/g
s/\b\([Mm]\)anifestessi\([ns]\)\([^[:alnum:]]\)/\1anifestare\2\3/g
s/\b\([Mm]\)anifest\([io]\)\([^[:alnum:]]\)/\1anifeste\3/g
s/\b\([Mm]\)anifesti\([ns]\)\([^[:alnum:]]\)/\1anifeste\2\3/g
# manipular
s/\b\([Mm]\)anipulés\([^[:alnum:]]\)/\1anipulara\2/g
s/\b\([Mm]\)anipuléssi\([mu]\)\([^[:alnum:]]\)/\1anipulàre\2\3/g
s/\b\([Mm]\)anipulessi\([ns]\)\([^[:alnum:]]\)/\1anipulare\2\3/g
s/\b\([Mm]\)anipul\([io]\)\([^[:alnum:]]\)/\1anipule\3/g
s/\b\([Mm]\)anipuli\([ns]\)\([^[:alnum:]]\)/\1anipule\2\3/g
# manllevar -> amprar (esmenes)
# marcar
s/\b\([Mm]\)arco\([^[:alnum:]]\)/\1arque\2/g
s/\b\([Mm]\)arqués\([^[:alnum:]]\)/\1arcara\2/g
s/\b\([Mm]\)arquéssi\([mu]\|\)\([^[:alnum:]]\)/\1arcàre\2\3/g
s/\b\([Mm]\)arquessi\([ns]\|\)\([^[:alnum:]]\)/\1arcare\2\3/g
s/\b\([Mm]\)arqui\([ns]\|\)\([^[:alnum:]]\)/\1arque\2\3/g
    # demarcar / desmarcar
    s/\b\([Dd]\)e\(s\|\)marco\([^[:alnum:]]\)/\1e\2marque\3/g
    s/\b\([Dd]\)e\(s\|\)marqués\([^[:alnum:]]\)/\1e\2marcara\3/g
    s/\b\([Dd]\)e\(s\|\)marquéssi\([mu]\|\)\([^[:alnum:]]\)/\1e\2marcàre\3\4/g
    s/\b\([Dd]\)e\(s\|\)marquessi\([ns]\|\)\([^[:alnum:]]\)/\1e\2marcare\3\4/g
    s/\b\([Dd]\)e\(s\|\)marqui\([ns]\|\)\([^[:alnum:]]\)/\1e\2marque\3\4/g
    # desemmarcar
    s/\b\([Dd]\)esemmarco\([^[:alnum:]]\)/\1esemmarque\2/g
    s/\b\([Dd]\)esemmarqués\([^[:alnum:]]\)/\1esemmarcara\2/g
    s/\b\([Dd]\)esemmarquéssi\([mu]\|\)\([^[:alnum:]]\)/\1esemmarcàre\2\3/g
    s/\b\([Dd]\)esemmarquessi\([ns]\|\)\([^[:alnum:]]\)/\1esemmarcare\2\3/g
    s/\b\([Dd]\)esemmarqui\([ns]\|\)\([^[:alnum:]]\)/\1esemmarque\2\3/g
    # emmarcar
    s/\b\([Ee]\)mmarco\([^[:alnum:]]\)/\1mmarque\2/g
    s/\b\([Ee]\)mmarqués\([^[:alnum:]]\)/\1mmarcara\2/g
    s/\b\([Ee]\)mmarquéssi\([mu]\|\)\([^[:alnum:]]\)/\1mmarcàre\2\3/g
    s/\b\([Ee]\)mmarquessi\([ns]\|\)\([^[:alnum:]]\)/\1mmarcare\2\3/g
    s/\b\([Ee]\)mmarqui\([ns]\|\)\([^[:alnum:]]\)/\1mmarque\2\3/g
    # remarcar
    s/\b\([Rr]\)emarco\([^[:alnum:]]\)/\1emarque\2/g
    s/\b\([Rr]\)emarqués\([^[:alnum:]]\)/\1emarcara\2/g
    s/\b\([Rr]\)emarquéssi\([mu]\|\)\([^[:alnum:]]\)/\1emarcàre\2\3/g
    s/\b\([Rr]\)emarquessi\([ns]\|\)\([^[:alnum:]]\)/\1emarcare\2\3/g
    s/\b\([Rr]\)emarqui\([ns]\|\)\([^[:alnum:]]\)/\1emarque\2\3/g
# marejar
s/\b\([Mm]\)aregés\([^[:alnum:]]\)/\1arejara\2/g
s/\b\([Mm]\)aregéssi\([mu]\)\([^[:alnum:]]\)/\1arejàre\2\3/g
s/\b\([Mm]\)aregessi\([ns]\)\([^[:alnum:]]\)/\1arejare\2\3/g
s/\b\([Mm]\)aregi\([ns]\|\)\([^[:alnum:]]\)/\1arege\2\3/g
s/\b\([Mm]\)arejo\([^[:alnum:]]\)/\1arege\2/g
s/\b\([Mm]\)arshallès\([^[:alnum:]]\)/\1arshallés\2/g
# mastegar
s/\b\([Mm]\)astegués\([^[:alnum:]]\)/\1astegara\2/g
s/\b\([Mm]\)asteguéssi\([mu]\)\([^[:alnum:]]\)/\1astegàre\2\3/g
s/\b\([Mm]\)asteguessi\([ns]\)\([^[:alnum:]]\)/\1astegare\2\3/g
s/\b\([Mm]\)astegui\([ns]\|\)\([^[:alnum:]]\)/\1astegue\2\3/g
s/\b\([Mm]\)astego\([^[:alnum:]]\)/\1astegue\2/g
    # TODO: no
    # desmastegar
    s/\b\([Dd]\)esmastegués\([^[:alnum:]]\)/\1esmastegara\2/g
    s/\b\([Dd]\)esmasteguéssi\([mu]\)\([^[:alnum:]]\)/\1esmastegàre\2\3/g
    s/\b\([Dd]\)esmasteguessi\([ns]\)\([^[:alnum:]]\)/\1esmastegare\2\3/g
    s/\b\([Dd]\)esmastegui\([ns]\|\)\([^[:alnum:]]\)/\1esmastegue\2\3/g
    s/\b\([Dd]\)esmastego\([^[:alnum:]]\)/\1esmastegue\2/g
# matar
s/\b\([Mm]\)atés\([^[:alnum:]]\)/\1atara\2/g
s/\b\([Mm]\)atéssi\([mu]\|\)\([^[:alnum:]]\)/\1atàre\2\3/g
s/\b\([Mm]\)atessi\([ns]\|\)\([^[:alnum:]]\)/\1atare\2\3/g
s/\b\([Mm]\)at\([io]\)\([^[:alnum:]]\)/\1ate\3/g
s/\b\([Mm]\)ati\([ns]\)\([^[:alnum:]]\)/\1ate\2\3/g
    # aclimatar
    s/\b\([Aa]\)climatés\([^[:alnum:]]\)/\1climatara\2/g
    s/\b\([Aa]\)climatéssi\([mu]\|\)\([^[:alnum:]]\)/\1climatàre\2\3/g
    s/\b\([Aa]\)climatessi\([ns]\|\)\([^[:alnum:]]\)/\1climatare\2\3/g
    s/\b\([Aa]\)climat\([io]\)\([^[:alnum:]]\)/\1climate\3/g
    s/\b\([Aa]\)climati\([ns]\)\([^[:alnum:]]\)/\1climate\2\3/g
        # desaclimatar
        s/\b\([Dd]\)esaclimatés\([^[:alnum:]]\)/\1esaclimatara\2/g
        s/\b\([Dd]\)esaclimatéssi\([mu]\|\)\([^[:alnum:]]\)/\1esaclimatàre\2\3/g
        s/\b\([Dd]\)esaclimatessi\([ns]\|\)\([^[:alnum:]]\)/\1esaclimatare\2\3/g
        s/\b\([Dd]\)esaclimat\([io]\)\([^[:alnum:]]\)/\1esaclimate\3/g
        s/\b\([Dd]\)esaclimati\([ns]\)\([^[:alnum:]]\)/\1esaclimate\2\3/g
    # cromatar
    s/\b\([Cc]\)romatés\([^[:alnum:]]\)/\1romatara\2/g
    s/\b\([Cc]\)romatéssi\([mu]\|\)\([^[:alnum:]]\)/\1romatàre\2\3/g
    s/\b\([Cc]\)romatessi\([ns]\|\)\([^[:alnum:]]\)/\1romatare\2\3/g
    s/\b\([Cc]\)romat\([io]\)\([^[:alnum:]]\)/\1romate\3/g
    s/\b\([Cc]\)romati\([ns]\)\([^[:alnum:]]\)/\1romate\2\3/g
    # formatar
    s/\b\([Ff]\)ormatés\([^[:alnum:]]\)/\1ormatara\2/g
    s/\b\([Ff]\)ormatéssi\([mu]\)\([^[:alnum:]]\)/\1ormatàre\2\3/g
    s/\b\([Ff]\)ormatessi\([ns]\)\([^[:alnum:]]\)/\1ormatare\2\3/g
    s/\b\([Ff]\)ormat\([io]\)\([^[:alnum:]]\)/\1ormate\3/g
    s/\b\([Ff]\)ormati\([ns]\)\([^[:alnum:]]\)/\1ormate\2\3/g
        # reformatar
        s/\b\([Rr]\)eformatés\([^[:alnum:]]\)/\1eformatara\2/g
        s/\b\([Rr]\)eformatéssi\([mu]\)\([^[:alnum:]]\)/\1eformatàre\2\3/g
        s/\b\([Rr]\)eformatessi\([ns]\)\([^[:alnum:]]\)/\1eformatare\2\3/g
        s/\b\([Rr]\)eformat\([io]\)\([^[:alnum:]]\)/\1eformate\3/g
        s/\b\([Rr]\)eformati\([ns]\)\([^[:alnum:]]\)/\1eformate\2\3/g
    # rematar
    s/\b\([Rr]\)ematés\([^[:alnum:]]\)/\1ematara\2/g
    s/\b\([Rr]\)ematéssi\([mu]\)\([^[:alnum:]]\)/\1ematàre\2\3/g
    s/\b\([Rr]\)ematessi\([ns]\)\([^[:alnum:]]\)/\1ematare\2\3/g
    s/\b\([Rr]\)emat\([io]\)\([^[:alnum:]]\)/\1emate\3/g
    s/\b\([Rr]\)emati\([ns]\)\([^[:alnum:]]\)/\1emate\2\3/g
s/\bMató\([^[:alnum:]]\)/Brull\1/g
s/\bmató\([^[:alnum:]]\)/brull\1/g
# maximitzar
s/\b\([Mm]\)aximitzés\([^[:alnum:]]\)/\1aximitzara\2/g
s/\b\([Mm]\)aximitzéssi\([mu]\|\)\([^[:alnum:]]\)/\1aximitzàre\2\3/g
s/\b\([Mm]\)aximitzessi\([ns]\|\)\([^[:alnum:]]\)/\1aximitzare\2\3/g
s/\b\([Mm]\)aximitz\([io]\)\([^[:alnum:]]\)/\1aximitze\3/g
s/\b\([Mm]\)aximitzi\([ns]\)\([^[:alnum:]]\)/\1aximitze\2\3/g
s/\bMeknès\([^[:alnum:]]\)/Meknés\1/g
# memoritzar
s/\b\([Mm]\)emoritzés\([^[:alnum:]]\)/\1emoritzara\2/g
s/\b\([Mm]\)emoritzéssi\([mu]\|\)\([^[:alnum:]]\)/\1emoritzàre\2\3/g
s/\b\([Mm]\)emoritzessi\([ns]\|\)\([^[:alnum:]]\)/\1emoritzare\2\3/g
s/\b\([Mm]\)emoritz\([io]\)\([^[:alnum:]]\)/\1emoritze\3/g
s/\b\([Mm]\)emoritzi\([ns]\)\([^[:alnum:]]\)/\1emoritze\2\3/g
# mencionar
s/\b\([Mm]\)encionés\([^[:alnum:]]\)/\1encionara\2/g
s/\b\([Mm]\)encionéssi\([mu]\|\)\([^[:alnum:]]\)/\1encionàre\2\3/g
s/\b\([Mm]\)encionessi\([ns]\|\)\([^[:alnum:]]\)/\1encionare\2\3/g
s/\b\([Mm]\)encion\([io]\)\([^[:alnum:]]\)/\1encione\3/g
s/\b\([Mm]\)encioni\([ns]\)\([^[:alnum:]]\)/\1encione\2\3/g
# meravellar
s/\b\([Mm]\)eravellés\([^[:alnum:]]\)/\1eravellara\2/g
s/\b\([Mm]\)eravelléssi\([mu]\)\([^[:alnum:]]\)/\1eravellàre\2\3/g
s/\b\([Mm]\)eravellessi\([ns]\)\([^[:alnum:]]\)/\1eravellare\2\3/g
s/\b\([Mm]\)eravell\([io]\)\([^[:alnum:]]\)/\1eravelle\3/g
s/\b\([Mm]\)eravelli\([ns]\)\([^[:alnum:]]\)/\1eravelle\2\3/g
# merèixer -> meréixer
s/\b\([Mm]\)erèixer\([^[:alnum:]]\)/\1eréixer\2/g
s/\b\([Mm]\)ereixi\([ns]\)\([^[:alnum:]]\)/\1eresque\2\3/g
s/\b\([Mm]\)ere\(ix\|squ\)és\([^[:alnum:]]\)/\1eresquera\3/g
s/\b\([Mm]\)ere\(ix\|squ\)éssi\([mu]\)\([^[:alnum:]]\)/\1eresquére\3\4/g
s/\b\([Mm]\)ere\(ix\|squ\)essi\([ns]\)\([^[:alnum:]]\)/\1eresquere\3\4/g
s/\b\([Mm]\)ereixi\([^[:alnum:]]\)/\1eresca\2/g
s/\b\([Mm]\)ereixo\([^[:alnum:]]\)/\1eresc\2/g
    # desmerèixer -> desmeréixer
    s/\b\([Dd]\)esmerèixer\([^[:alnum:]]\)/\1esmeréixer\2/g
    s/\b\([Dd]\)esmereixi\([ns]\)\([^[:alnum:]]\)/\1esmeresque\2\3/g
    s/\b\([Dd]\)esmere\(ix\|squ\)és\([^[:alnum:]]\)/\1esmeresquera\3/g
    s/\b\([Dd]\)esmere\(ix\|squ\)éssi\([mu]\)\([^[:alnum:]]\)/\1esmeresquére\3\4/g
    s/\b\([Dd]\)esmere\(ix\|squ\)essi\([ns]\)\([^[:alnum:]]\)/\1esmeresquere\3\4/g
    s/\b\([Dd]\)esmereixi\([^[:alnum:]]\)/\1esmeresca\2/g
    s/\b\([Dd]\)esmereixo\([^[:alnum:]]\)/\1esmeresc\2/g
# mesclar
s/\b\([Mm]\)esclés\([^[:alnum:]]\)/\1esclara\2/g
s/\b\([Mm]\)escléssi\([mu]\)\([^[:alnum:]]\)/\1esclàre\2\3/g
s/\b\([Mm]\)esclessi\([ns]\)\([^[:alnum:]]\)/\1esclare\2\3/g
s/\b\([Mm]\)escl\([io]\)\([^[:alnum:]]\)/\1escle\3/g
s/\b\([Mm]\)escli\([ns]\)\([^[:alnum:]]\)/\1escle\2\3/g
    # desmesclar
    s/\b\([Dd]\)esmesclés\([^[:alnum:]]\)/\1esmesclara\2/g
    s/\b\([Dd]\)esmescléssi\([mu]\)\([^[:alnum:]]\)/\1esmesclàre\2\3/g
    s/\b\([Dd]\)esmesclessi\([ns]\)\([^[:alnum:]]\)/\1esmesclare\2\3/g
    s/\b\([Dd]\)esmescl\([io]\)\([^[:alnum:]]\)/\1esmescle\3/g
    s/\b\([Dd]\)esmescli\([ns]\)\([^[:alnum:]]\)/\1esmescle\2\3/g
    # entremesclar
    s/\b\([Ee]\)ntremesclés\([^[:alnum:]]\)/\1ntremesclara\2/g
    s/\b\([Ee]\)ntremescléssi\([mu]\)\([^[:alnum:]]\)/\1ntremesclàre\2\3/g
    s/\b\([Ee]\)ntremesclessi\([ns]\)\([^[:alnum:]]\)/\1ntremesclare\2\3/g
    s/\b\([Ee]\)ntremescl\([io]\)\([^[:alnum:]]\)/\1ntremescle\3/g
    s/\b\([Ee]\)ntremescli\([ns]\)\([^[:alnum:]]\)/\1ntremescle\2\3/g
    # malmesclar
    s/\b\([Mm]\)almesclés\([^[:alnum:]]\)/\1almesclara\2/g
    s/\b\([Mm]\)almescléssi\([mu]\)\([^[:alnum:]]\)/\1almesclàre\2\3/g
    s/\b\([Mm]\)almesclessi\([ns]\)\([^[:alnum:]]\)/\1almesclare\2\3/g
    s/\b\([Mm]\)almescl\([io]\)\([^[:alnum:]]\)/\1almescle\3/g
    s/\b\([Mm]\)almescli\([ns]\)\([^[:alnum:]]\)/\1almescle\2\3/g
# mesurar
s/\b\([Mm]\)esurés\([^[:alnum:]]\)/\1esurara\2/g
s/\b\([Mm]\)esuréssi\([mu]\)\([^[:alnum:]]\)/\1esuràre\2\3/g
s/\b\([Mm]\)esuressi\([ns]\)\([^[:alnum:]]\)/\1esurare\2\3/g
s/\b\([Mm]\)esur\([io]\)\([^[:alnum:]]\)/\1esure\3/g
s/\b\([Mm]\)esuri\([ns]\)\([^[:alnum:]]\)/\1esure\2\3/g
# migrar
s/\b\([Mm]\)igrés\([^[:alnum:]]\)/\1igrara\2/g
s/\b\([Mm]\)igréssi\([mu]\)\([^[:alnum:]]\)/\1igràre\2\3/g
s/\b\([Mm]\)igressi\([ns]\)\([^[:alnum:]]\)/\1igrare\2\3/g
s/\b\([Mm]\)igr\([io]\)\([^[:alnum:]]\)/\1igre\3/g
s/\b\([Mm]\)igri\([ns]\)\([^[:alnum:]]\)/\1igre\2\3/g
    # emigrar
    s/\b\([Ee]\)migrés\([^[:alnum:]]\)/\1migrara\2/g
    s/\b\([Ee]\)migréssi\([mu]\)\([^[:alnum:]]\)/\1migràre\2\3/g
    s/\b\([Ee]\)migressi\([ns]\)\([^[:alnum:]]\)/\1migrare\2\3/g
    s/\b\([Ee]\)migr\([io]\)\([^[:alnum:]]\)/\1migre\3/g
    s/\b\([Ee]\)migri\([ns]\)\([^[:alnum:]]\)/\1migre\2\3/g
    # immigrar
    s/\b\([Ii]\)mmigrés\([^[:alnum:]]\)/\1mmigrara\2/g
    s/\b\([Ii]\)mmigréssi\([mu]\)\([^[:alnum:]]\)/\1mmigràre\2\3/g
    s/\b\([Ii]\)mmigressi\([ns]\)\([^[:alnum:]]\)/\1mmigrare\2\3/g
    s/\b\([Ii]\)mmigr\([io]\)\([^[:alnum:]]\)/\1mmigre\3/g
    s/\b\([Ii]\)mmigri\([ns]\)\([^[:alnum:]]\)/\1mmigre\2\3/g
# millorar
s/\b\([Mm]\)illorés\([^[:alnum:]]\)/\1illorara\2/g
s/\b\([Mm]\)illoréssi\([mu]\)\([^[:alnum:]]\)/\1illoràre\2\3/g
s/\b\([Mm]\)illoressi\([ns]\)\([^[:alnum:]]\)/\1illorare\2\3/g
s/\b\([Mm]\)illor\([io]\)\([^[:alnum:]]\)/\1illore\3/g
s/\b\([Mm]\)illori\([ns]\)\([^[:alnum:]]\)/\1illore\2\3/g
    # desmillorar
    s/\b\([Dd]\)esmillorés\([^[:alnum:]]\)/\1esmillorara\2/g
    s/\b\([Dd]\)esmilloréssi\([mu]\)\([^[:alnum:]]\)/\1esmilloràre\2\3/g
    s/\b\([Dd]\)esmilloressi\([ns]\)\([^[:alnum:]]\)/\1esmillorare\2\3/g
    s/\b\([Dd]\)esmillor\([io]\)\([^[:alnum:]]\)/\1esmillore\3/g
    s/\b\([Dd]\)esmillori\([ns]\)\([^[:alnum:]]\)/\1esmillore\2\3/g
# minimitzar
s/\b\([Mm]\)inimitzés\([^[:alnum:]]\)/\1inimitzara\2/g
s/\b\([Mm]\)inimitzéssi\([mu]\)\([^[:alnum:]]\)/\1inimitzàre\2\3/g
s/\b\([Mm]\)inimitzessi\([ns]\)\([^[:alnum:]]\)/\1inimitzare\2\3/g
s/\b\([Mm]\)inimitz\([io]\)\([^[:alnum:]]\)/\1inimitze\3/g
s/\b\([Mm]\)inimitzi\([ns]\)\([^[:alnum:]]\)/\1inimitze\2\3/g
# minvar
s/\b\([Mm]\)invés\([^[:alnum:]]\)/\1invara\2/g
s/\b\([Mm]\)invéssi\([mu]\)\([^[:alnum:]]\)/\1invàre\2\3/g
s/\b\([Mm]\)invessi\([ns]\)\([^[:alnum:]]\)/\1invare\2\3/g
s/\b\([Mm]\)inv\([io]\)\([^[:alnum:]]\)/\1inve\3/g
s/\b\([Mm]\)invi\([ns]\)\([^[:alnum:]]\)/\1inve\2\3/g
s/\bMirall\(s\|\)\([^[:alnum:]]\)/Espill\1\2/g
s/\bmirall\(s\|\)\([^[:alnum:]]\)/espill\1\2/g
# mirar
s/\b\([Mm]\)irés\([^[:alnum:]]\)/\1irara\2/g
s/\b\([Mm]\)iréssi\([mu]\)\([^[:alnum:]]\)/\1iràre\2\3/g
s/\b\([Mm]\)iressi\([ns]\)\([^[:alnum:]]\)/\1irare\2\3/g
s/\b\([Mm]\)ir\([io]\)\([^[:alnum:]]\)/\1ire\3/g
s/\b\([Mm]\)iri\([ns]\)\([^[:alnum:]]\)/\1ire\2\3/g
    # admirar
    s/\b\([Aa]\)dmirés\([^[:alnum:]]\)/\1dmirara\2/g
    s/\b\([Aa]\)dmiréssi\([mu]\)\([^[:alnum:]]\)/\1dmiràre\2\3/g
    s/\b\([Aa]\)dmiressi\([ns]\)\([^[:alnum:]]\)/\1dmirare\2\3/g
    s/\b\([Aa]\)dmir\([io]\)\([^[:alnum:]]\)/\1dmire\3/g
    s/\b\([Aa]\)dmiri\([ns]\)\([^[:alnum:]]\)/\1dmire\2\3/g
    # entremirar
    s/\b\([Ee]\)ntremirés\([^[:alnum:]]\)/\1ntremirara\2/g
    s/\b\([Ee]\)ntremiréssi\([mu]\)\([^[:alnum:]]\)/\1ntremiràre\2\3/g
    s/\b\([Ee]\)ntremiressi\([ns]\)\([^[:alnum:]]\)/\1ntremirare\2\3/g
    s/\b\([Ee]\)ntremir\([io]\)\([^[:alnum:]]\)/\1ntremire\3/g
    s/\b\([Ee]\)ntremiri\([ns]\)\([^[:alnum:]]\)/\1ntremire\2\3/g
    # malmirar
    s/\b\([Mm]\)almirés\([^[:alnum:]]\)/\1almirara\2/g
    s/\b\([Mm]\)almiréssi\([mu]\)\([^[:alnum:]]\)/\1almiràre\2\3/g
    s/\b\([Mm]\)almiressi\([ns]\)\([^[:alnum:]]\)/\1almirare\2\3/g
    s/\b\([Mm]\)almir\([io]\)\([^[:alnum:]]\)/\1almire\3/g
    s/\b\([Mm]\)almiri\([ns]\)\([^[:alnum:]]\)/\1almire\2\3/g
    # remirar
    s/\b\([Rr]\)emirés\([^[:alnum:]]\)/\1emirara\2/g
    s/\b\([Rr]\)emiréssi\([mu]\)\([^[:alnum:]]\)/\1emiràre\2\3/g
    s/\b\([Rr]\)emiressi\([ns]\)\([^[:alnum:]]\)/\1emirare\2\3/g
    s/\b\([Rr]\)emir\([io]\)\([^[:alnum:]]\)/\1emire\3/g
    s/\b\([Rr]\)emiri\([ns]\)\([^[:alnum:]]\)/\1emire\2\3/g
s/\bMitges\([^[:alnum:]]\)/Calces\1/g
s/\bmitges\([^[:alnum:]]\)/calces\1/g
s/\bMitjó\([^[:alnum:]]\)/Calcetí\1/g
s/\bmitjó\([^[:alnum:]]\)/calcetí\1/g
s/\bMitjons\([^[:alnum:]]\)/Calcetins\1/g
s/\bmitjons\([^[:alnum:]]\)/calcetins\1/g
# modelar
s/\b\([Mm]\)odelés\([^[:alnum:]]\)/\1odelara\2/g
s/\b\([Mm]\)odeléssi\([mu]\)\([^[:alnum:]]\)/\1odelàre\2\3/g
s/\b\([Mm]\)odelessi\([ns]\)\([^[:alnum:]]\)/\1odelare\2\3/g
s/\b\([Mm]\)odel\([io]\)\([^[:alnum:]]\)/\1odele\3/g
s/\b\([Mm]\)odeli\([ns]\)\([^[:alnum:]]\)/\1odele\2\3/g
# modificar
s/\b\([Mm]\)odifiqués\([^[:alnum:]]\)/\1odificara\2/g
s/\b\([Mm]\)odifiquéssi\([mu]\)\([^[:alnum:]]\)/\1odificàre\2\3/g
s/\b\([Mm]\)odifiquessi\([ns]\)\([^[:alnum:]]\)/\1odificare\2\3/g
s/\b\([Mm]\)odifiqui\([ns]\|\)\([^[:alnum:]]\)/\1odifique\2\3/g
s/\b\([Mm]\)odifico\([^[:alnum:]]\)/\1odifique\2/g
s/\bMongeta tendra\([^[:alnum:]]\)/Bajoca\1/g
s/\bmongeta tendra\([^[:alnum:]]\)/bajoca\1/g
s/\bMoisès\([^[:alnum:]]\)/Moisés\1/g
# molestar
s/\b\([Mm]\)olestés\([^[:alnum:]]\)/\1olestara\2/g
s/\b\([Mm]\)olestéssi\([mu]\)\([^[:alnum:]]\)/\1olestàre\2\3/g
s/\b\([Mm]\)olestessi\([ns]\)\([^[:alnum:]]\)/\1olestare\2\3/g
s/\b\([Mm]\)olest\([io]\)\([^[:alnum:]]\)/\1oleste\3/g
s/\b\([Mm]\)olesti\([ns]\)\([^[:alnum:]]\)/\1oleste\2\3/g
# moure
s/\b\([Mm]\)ogués\([^[:alnum:]]\)/\1oguera\2/g
s/\b\([Mm]\)oguéssi\([mu]\)\([^[:alnum:]]\)/\1oguére\2\3/g
s/\b\([Mm]\)oguessi\([ns]\)\([^[:alnum:]]\)/\1oguere\2\3/g
s/\b\([Mm]\)ogui\([^[:alnum:]]\)/\1oga\2/g
s/\b\([Mm]\)ogui\([ns]\)\([^[:alnum:]]\)/\1ogue\2\3/g
    # commoure
    s/\b\([Cc]\)ommogués\([^[:alnum:]]\)/\1ommoguera\2/g
    s/\b\([Cc]\)ommoguéssi\([mu]\)\([^[:alnum:]]\)/\1ommoguére\2\3/g
    s/\b\([Cc]\)ommoguessi\([ns]\)\([^[:alnum:]]\)/\1ommoguere\2\3/g
    s/\b\([Cc]\)ommogui\([^[:alnum:]]\)/\1ommoga\2/g
    s/\b\([Cc]\)ommogui\([ns]\)\([^[:alnum:]]\)/\1ommogue\2\3/g
    # promoure
    s/\b\([Pp]\)romogués\([^[:alnum:]]\)/\1romoguera\2/g
    s/\b\([Pp]\)romoguéssi\([mu]\)\([^[:alnum:]]\)/\1romoguére\2\3/g
    s/\b\([Pp]\)romoguessi\([ns]\)\([^[:alnum:]]\)/\1romoguere\2\3/g
    s/\b\([Pp]\)romogui\([^[:alnum:]]\)/\1romoga\2/g
    s/\b\([Pp]\)romogui\([ns]\)\([^[:alnum:]]\)/\1romogue\2\3/g
    # remoure
    s/\b\([Rr]\)emogués\([^[:alnum:]]\)/\1emoguera\2/g
    s/\b\([Rr]\)emoguéssi\([mu]\)\([^[:alnum:]]\)/\1emoguére\2\3/g
    s/\b\([Rr]\)emoguessi\([ns]\)\([^[:alnum:]]\)/\1emoguere\2\3/g
    s/\b\([Rr]\)emogui\([^[:alnum:]]\)/\1emoga\2/g
    s/\b\([Rr]\)emogui\([ns]\)\([^[:alnum:]]\)/\1emogue\2\3/g
# monopolitzar
s/\b\([Mm]\)onopolitzés\([^[:alnum:]]\)/\1onopolitzara\2/g
s/\b\([Mm]\)onopolitzéssi\([mu]\)\([^[:alnum:]]\)/\1onopolitzàre\2\3/g
s/\b\([Mm]\)onopolitzessi\([ns]\)\([^[:alnum:]]\)/\1onopolitzare\2\3/g
s/\b\([Mm]\)onopolitz\([io]\)\([^[:alnum:]]\)/\1onopolitze\3/g
s/\b\([Mm]\)onopolitzi\([ns]\)\([^[:alnum:]]\)/\1onopolitze\2\3/g
# mostrar
s/\b\([Mm]\)ostrés\([^[:alnum:]]\)/\1ostrara\2/g
s/\b\([Mm]\)ostréssi\([mu]\)\([^[:alnum:]]\)/\1ostràre\2\3/g
s/\b\([Mm]\)ostressi\([ns]\)\([^[:alnum:]]\)/\1ostrare\2\3/g
s/\b\([Mm]\)ostr\([io]\)\([^[:alnum:]]\)/\1ostre\3/g
s/\b\([Mm]\)ostri\([ns]\)\([^[:alnum:]]\)/\1ostre\2\3/g
# mobilitzar
s/\b\([Mm]\)obilitzés\([^[:alnum:]]\)/\1obilitzara\2/g
s/\b\([Mm]\)obilitzéssi\([mu]\)\([^[:alnum:]]\)/\1obilitzàre\2\3/g
s/\b\([Mm]\)obilitzessi\([ns]\)\([^[:alnum:]]\)/\1obilitzare\2\3/g
s/\b\([Mm]\)obilitz\([io]\)\([^[:alnum:]]\)/\1ovilitze\3/g
s/\b\([Mm]\)obilitzi\([ns]\)\([^[:alnum:]]\)/\1ovilitze\2\3/g
    # desmobilitzar
    s/\b\([Dd]\)esmobilitzés\([^[:alnum:]]\)/\1esmobilitzara\2/g
    s/\b\([Dd]\)esmobilitzéssi\([mu]\)\([^[:alnum:]]\)/\1esmobilitzàre\2\3/g
    s/\b\([Dd]\)esmobilitzessi\([ns]\)\([^[:alnum:]]\)/\1esmobilitzare\2\3/g
    s/\b\([Dd]\)esmobilitz\([io]\)\([^[:alnum:]]\)/\1esmovilitze\3/g
    s/\b\([Dd]\)esmobilitzi\([ns]\)\([^[:alnum:]]\)/\1esmovilitze\2\3/g
    # immobilitzar
    s/\b\([Ii]\)mmobilitzés\([^[:alnum:]]\)/\1mmobilitzara\2/g
    s/\b\([Ii]\)mmobilitzéssi\([mu]\)\([^[:alnum:]]\)/\1mmobilitzàre\2\3/g
    s/\b\([Ii]\)mmobilitzessi\([ns]\)\([^[:alnum:]]\)/\1mmobilitzare\2\3/g
    s/\b\([Ii]\)mmobilitz\([io]\)\([^[:alnum:]]\)/\1mmovilitze\3/g
    s/\b\([Ii]\)mmobilitzi\([ns]\)\([^[:alnum:]]\)/\1mmovilitze\2\3/g
# multiplicar
s/\b\([Mm]\)ultipliqués\([^[:alnum:]]\)/\1ultiplicara\2/g
s/\b\([Mm]\)ultipliquéssi\([mu]\)\([^[:alnum:]]\)/\1ultiplicàre\2\3/g
s/\b\([Mm]\)ultipliquessi\([ns]\)\([^[:alnum:]]\)/\1ultiplicare\2\3/g
s/\b\([Mm]\)ultipliqui\([ns]\|\)\([^[:alnum:]]\)/\1ultiplique\2\3/g
s/\b\([Mm]\)ultiplico\([^[:alnum:]]\)/\1ultiplique\2/g
# muntar
s/\b\([Mm]\)untés\([^[:alnum:]]\)/\1untara\2/g
s/\b\([Mm]\)untéssi\([mu]\)\([^[:alnum:]]\)/\1untàre\2\3/g
s/\b\([Mm]\)untessi\([ns]\)\([^[:alnum:]]\)/\1untare\2\3/g
s/\b\([Mm]\)unt\([io]\)\([^[:alnum:]]\)/\1unte\3/g
s/\b\([Mm]\)unti\([ns]\)\([^[:alnum:]]\)/\1unte\2\3/g
    # desmuntar
    s/\b\([Dd]\)esmuntés\([^[:alnum:]]\)/\1esmuntara\2/g
    s/\b\([Dd]\)uesmntéssi\([mu]\)\([^[:alnum:]]\)/\1esmuntàre\2\3/g
    s/\b\([Dd]\)esmuntessi\([ns]\)\([^[:alnum:]]\)/\1esmuntare\2\3/g
    s/\b\([Dd]\)esmunt\([io]\)\([^[:alnum:]]\)/\1esmunte\3/g
    s/\b\([Dd]\)esmunti\([ns]\)\([^[:alnum:]]\)/\1esmunte\2\3/g
# n
#
s/\bNans\(a\|es\)\([^[:alnum:]]\)/Ans\1\2/g
s/\bnans\(a\|es\)\([^[:alnum:]]\)/ans\1\2/g
s/\b\([Nn]\)aturalesa\([^[:alnum:]]\)/\1aturalea\2/g
s/\b\([Nn]\)aturaleses\([^[:alnum:]]\)/\1aturalees\2/g
# navegar
s/\b\([Mm]\)avegués\([^[:alnum:]]\)/\1avegara\2/g
s/\b\([Mm]\)aveguéssi\([mu]\)\([^[:alnum:]]\)/\1avegàre\2\3/g
s/\b\([Mm]\)aveguessi\([ns]\)\([^[:alnum:]]\)/\1avegare\2\3/g
s/\b\([Nn]\)aveg\(ui\|o\)\([^[:alnum:]]\)/\1avegue\3/g
s/\b\([Nn]\)avegui\([ns]\)\([^[:alnum:]]\)/\1avegue\2\3/g
# necessitar
s/\b\([Mm]\)ecessités\([^[:alnum:]]\)/\1ecessitara\2/g
s/\b\([Mm]\)ecessitéssi\([mu]\)\([^[:alnum:]]\)/\1ecessitàre\2\3/g
s/\b\([Mm]\)ecessitessi\([ns]\)\([^[:alnum:]]\)/\1ecessitare\2\3/g
s/\b\([Nn]\)ecessit\([io]\)\([^[:alnum:]]\)/\1ecessite\3/g
s/\b\([Nn]\)ecessiti\([ns]\)\([^[:alnum:]]\)/\1ecessite\2\3/g
s/\b\([Nn]\)eerlandès\([^[:alnum:]]\)/\1eerlandés\2/g
# nedar -> nadar (esmenes)
# negar
s/\b\([Nn]\)ego\([^[:alnum:]]\)/\1egue\2/g
s/\b\([Nn]\)egués\([^[:alnum:]]\)/\1egara\2/g
s/\b\([Nn]\)eguéssi\([mu]\)\([^[:alnum:]]\)/\1egàre\2\3/g
s/\b\([Nn]\)eguessi\([ns]\)\([^[:alnum:]]\)/\1egare\2\3/g
s/\b\([Nn]\)egui\([ns]\|\)\([^[:alnum:]]\)/\1egue\2\3/g
    # denegar
    s/\b\([Dd]\)enego\([^[:alnum:]]\)/\1enegue\2/g
    s/\b\([Dd]\)enegués\([^[:alnum:]]\)/\1enegara\2/g
    s/\b\([Dd]\)eneguéssi\([mu]\)\([^[:alnum:]]\)/\1enegàre\2\3/g
    s/\b\([Dd]\)eneguessi\([ns]\)\([^[:alnum:]]\)/\1enegare\2\3/g
    s/\b\([Dd]\)enegui\([ns]\|\)\([^[:alnum:]]\)/\1enegue\2\3/g
# negrejar
s/\b\([Nn]\)egregés\([^[:alnum:]]\)/\1egrejara\2/g
s/\b\([Nn]\)egregéssi\([mu]\)\([^[:alnum:]]\)/\1egrejàre\2\3/g
s/\b\([Nn]\)egregessi\([ns]\)\([^[:alnum:]]\)/\1egrejare\2\3/g
s/\b\([Nn]\)egregi\([ns]\|\)\([^[:alnum:]]\)/\1egrege\2\3/g
s/\b\([Nn]\)egrejo\([^[:alnum:]]\)/\1egrege\2/g
# néixer -> nàixer (esmenes)
    # renéixer -> renàixer (esmenes)
s/\bNen\(a\|es\|s\|\)\([^[:alnum:]]\)/Xiquet\1\2/g
s/\bnen\(a\|es\|s\|\)\([^[:alnum:]]\)/xiquet\1\2/g
    s/\bNoi\(a\|s\|\)\([^[:alnum:]]\)/Xic\1\2/g
    s/\bnoi\(a\|s\|\)\([^[:alnum:]]\)/xic\1\2/g
    s/\bNoies\([^[:alnum:]]\)/Xiques\1/g
    s/\bnoies\([^[:alnum:]]\)/xiques\1/g
s/\b\([Nn]\)epalès\([^[:alnum:]]\)/\1epalés\2/g
# netejar
s/\b\([Mm]\)etegés\([^[:alnum:]]\)/\1etejara\2/g
s/\b\([Mm]\)etegéssi\([mu]\)\([^[:alnum:]]\)/\1etejàre\2\3/g
s/\b\([Mm]\)etegessi\([ns]\)\([^[:alnum:]]\)/\1etejare\2\3/g
s/\b\([Nn]\)etegi\([ns]\|\)\([^[:alnum:]]\)/\1etege\2\3/g
s/\b\([Nn]\)etejo\([^[:alnum:]]\)/\1etege\2/g
s/\b\([Nn]\)eozelandès\([^[:alnum:]]\)/\1eozelandés\2/g
# normalitzar
s/\b\([Mm]\)ormalitzés\([^[:alnum:]]\)/\1ormalitzara\2/g
s/\b\([Mm]\)ormalitzéssi\([mu]\)\([^[:alnum:]]\)/\1ormalitzàre\2\3/g
s/\b\([Mm]\)ormalitzessi\([ns]\)\([^[:alnum:]]\)/\1ormalitzare\2\3/g
s/\b\([Nn]\)ormalitz\([io]\)\([^[:alnum:]]\)/\1ormalitze\3/g
s/\b\([Nn]\)ormalitzi\([ns]\)\([^[:alnum:]]\)/\1ormalitze\2\3/g
# notar
s/\b\([Mm]\)otés\([^[:alnum:]]\)/\1otara\2/g
s/\b\([Mm]\)otéssi\([mu]\)\([^[:alnum:]]\)/\1otàre\2\3/g
s/\b\([Mm]\)otessi\([ns]\)\([^[:alnum:]]\)/\1otare\2\3/g
s/\b\([Nn]\)ot\([io]\)\([^[:alnum:]]\)/\1ote\3/g
s/\b\([Nn]\)oti\([ns]\)\([^[:alnum:]]\)/\1ote\2\3/g
    # anotar
    s/\b\([Aa]\)notés\([^[:alnum:]]\)/\1notara\2/g
    s/\b\([Aa]\)notéssi\([mu]\)\([^[:alnum:]]\)/\1notàre\2\3/g
    s/\b\([Aa]\)notessi\([ns]\)\([^[:alnum:]]\)/\1notare\2\3/g
    s/\b\([Aa]\)not\([io]\)\([^[:alnum:]]\)/\1note\3/g
    s/\b\([Aa]\)noti\([ns]\)\([^[:alnum:]]\)/\1note\2\3/g
# notificar
s/\b\([Mm]\)otifiqués\([^[:alnum:]]\)/\1otificara\2/g
s/\b\([Mm]\)otifiquéssi\([mu]\)\([^[:alnum:]]\)/\1otificàre\2\3/g
s/\b\([Mm]\)otifiquessi\([ns]\)\([^[:alnum:]]\)/\1otificare\2\3/g
s/\b\([Nn]\)otifiqui\([ns]\|\)\([^[:alnum:]]\)/\1otifique\2\3/g
s/\b\([Nn]\)otifico\([^[:alnum:]]\)/\1otifique\2/g
# o
#
# obeir
s/\b\([Oo]\)beeix\(e[ns]\|\)\([^[:alnum:]]\)/\1beïx\2\3/g
s/\b\([Oo]\)beeixi\([^[:alnum:]]\)/\1beïsca\2/g
s/\b\([Oo]\)beeixi\([ns]\)\([^[:alnum:]]\)/\1beïsque\2\3/g
s/\b\([Oo]\)beeixo\([^[:alnum:]]\)/\1beïsc\2/g
s/\b\([Oo]\)beís\([^[:alnum:]]\)/\1beïra\2/g
s/\b\([Oo]\)beíssi\([mu]\)\([^[:alnum:]]\)/\1beíre\2\3/g
s/\b\([Oo]\)beïssi\([ns]\)\([^[:alnum:]]\)/\1beïre\2\3/g
# oblidar
s/\b\([Oo]\)blidés\([^[:alnum:]]\)/\1blidara\2/g
s/\b\([Oo]\)blidéssi\([mu]\)\([^[:alnum:]]\)/\1blidàre\2\3/g
s/\b\([Oo]\)blidessi\([ns]\)\([^[:alnum:]]\)/\1blidare\2\3/g
s/\b\([Oo]\)blid\([io]\)\([^[:alnum:]]\)/\1blide\3/g
s/\b\([Oo]\)blidi\([ns]\)\([^[:alnum:]]\)/\1blide\2\3/g
# obrir (esmenes)
    # cobrir
    s/\b\([Cc]\)obreix\(e[ns]\|\)\([^[:alnum:]]\)/\1obrix\2\3/g
    s/\b\([Cc]\)obreixi\([^[:alnum:]]\)/\1obrisca\2/g
    s/\b\([Cc]\)obreixi\([ns]\)\([^[:alnum:]]\)/\1obrisque\2\3/g
    s/\b\([Cc]\)obreixo\([^[:alnum:]]\)/\1obrisc\2/g
    s/\b\([Cc]\)obrís\([^[:alnum:]]\)/\1obrira\2/g
    s/\b\([Cc]\)obríssi\([mu]\)\([^[:alnum:]]\)/\1obríre\2\3/g
    s/\b\([Cc]\)obrissi\([ns]\)\([^[:alnum:]]\)/\1obrire\2\3/g
        # descobrir
        s/\b\([Dd]\)escobreix\(e[ns]\|\)\([^[:alnum:]]\)/\1escobrix\2\3/g
        s/\b\([Dd]\)escobreixi\([^[:alnum:]]\)/\1escobrisca\2/g
        s/\b\([Dd]\)escobreixi\([ns]\)\([^[:alnum:]]\)/\1escobrisque\2\3/g
        s/\b\([Dd]\)escobreixo\([^[:alnum:]]\)/\1escobrisc\2/g
        s/\b\([Dd]\)escobrís\([^[:alnum:]]\)/\1escobrira\2/g
        s/\b\([Dd]\)escobríssi\([mu]\)\([^[:alnum:]]\)/\1escobríre\2\3/g
        s/\b\([Dd]\)escobrissi\([ns]\)\([^[:alnum:]]\)/\1escobrire\2\3/g
            # redescobrir
            s/\b\([Rr]\)edescobreix\(e[ns]\|\)\([^[:alnum:]]\)/\1edescobrix\2\3/g
            s/\b\([Rr]\)edescobreixi\([^[:alnum:]]\)/\1edescobrisca\2/g
            s/\b\([Rr]\)edescobreixi\([ns]\)\([^[:alnum:]]\)/\1edescobrisque\2\3/g
            s/\b\([Rr]\)edescobreixo\([^[:alnum:]]\)/\1edescobrisc\2/g
            s/\b\([Rr]\)edescobrís\([^[:alnum:]]\)/\1edescobrira\2/g
            s/\b\([Rr]\)edescobríssi\([mu]\)\([^[:alnum:]]\)/\1edescobríre\2\3/g
            s/\b\([Rr]\)edescobrissi\([ns]\)\([^[:alnum:]]\)/\1edescobrire\2\3/g
        # encobrir
        s/\b\([Ee]\)ncobreix\(e[ns]\|\)\([^[:alnum:]]\)/\1ncobrix\2\3/g
        s/\b\([Ee]\)ncobreixi\([^[:alnum:]]\)/\1ncobrisca\2/g
        s/\b\([Ee]\)ncobreixi\([ns]\)\([^[:alnum:]]\)/\1ncobrisque\2\3/g
        s/\b\([Ee]\)ncobreixo\([^[:alnum:]]\)/\1ncobrisc\2/g
        s/\b\([Ee]\)ncobrís\([^[:alnum:]]\)/\1ncobrira\2/g
        s/\b\([Ee]\)ncobríssi\([mu]\)\([^[:alnum:]]\)/\1ncobríre\2\3/g
        s/\b\([Ee]\)ncobrissi\([ns]\)\([^[:alnum:]]\)/\1ncobrire\2\3/g
    # entreobrir
    s/\b\([Ee]\)ntreobre\(n\|s\|\)\([^[:alnum:]]\)/\1ntreobri\3/g
    s/\b\([Ee]\)ntreobri\([^[:alnum:]]\)/\1ntreòbrig\2/g
    s/\b\([Ee]\)ntreobri\([ns]\)\([^[:alnum:]]\)/\1ntreòbrigue\2\3/g
    s/\b\([Ee]\)ntreobro\([^[:alnum:]]\)/\1ntreòbric\2/g
    s/\b\([Ee]\)entreobrís\([^[:alnum:]]\)/\1entreobrira\2/g
    s/\b\([Ee]\)entreobríssi\([mu]\)\([^[:alnum:]]\)/\1entreobríre\2\3/g
    s/\b\([Ee]\)entreobrissi\([ns]\)\([^[:alnum:]]\)/\1entreobrire\2\3/g
    # reobrir -> tornar a obrir (esmenes)
# observar
s/\b\([Oo]\)bservés\([^[:alnum:]]\)/\1bservara\2/g
s/\b\([Oo]\)bservéssi\([mu]\)\([^[:alnum:]]\)/\1bservàre\2\3/g
s/\b\([Oo]\)bservessi\([ns]\)\([^[:alnum:]]\)/\1bservare\2\3/g
s/\b\([Oo]\)bserv\([io]\)\([^[:alnum:]]\)/\1bserve\3/g
s/\b\([Oo]\)bservi\([ns]\)\([^[:alnum:]]\)/\1bserve\2\3/g
# obstruir
s/\b\([Oo]\)bstrueix\(e[ns]\|\)\([^[:alnum:]]\)/\1bstruïx\2\3/g
s/\b\([Oo]\)bstrueixi\([^[:alnum:]]\)/\1bstruïsca\2/g
s/\b\([Oo]\)bstrueixi\([ns]\)\([^[:alnum:]]\)/\1bstruïsque\2\3/g
s/\b\([Oo]\)bstrueixo\([^[:alnum:]]\)/\1bstruïsc\2/g
s/\b\([Oo]\)bstruís\([^[:alnum:]]\)/\1bstruïra\2/g
s/\b\([Oo]\)bstruíssi\([mu]\)\([^[:alnum:]]\)/\1bstruíre\2\3/g
s/\b\([Oo]\)bstruïssi\([ns]\)\([^[:alnum:]]\)/\1bstruïre\2\3/g
# ocultar
s/\b\([Oo]\)cultés\([^[:alnum:]]\)/\1cultara\2/g
s/\b\([Oo]\)cultéssi\([mu]\)\([^[:alnum:]]\)/\1cultàre\2\3/g
s/\b\([Oo]\)cultessi\([ns]\)\([^[:alnum:]]\)/\1cultare\2\3/g
s/\b\([Oo]\)cult\([io]\)\([^[:alnum:]]\)/\1culte\3/g
s/\b\([Oo]\)culti\([ns]\)\([^[:alnum:]]\)/\1culte\2\3/g
# ocupar
s/\b\([Oo]\)cupés\([^[:alnum:]]\)/\1cupara\2/g
s/\b\([Oo]\)cupéssi\([mu]\)\([^[:alnum:]]\)/\1cupàre\2\3/g
s/\b\([Oo]\)cupessi\([ns]\)\([^[:alnum:]]\)/\1cupare\2\3/g
s/\b\([Oo]\)cup\([io]\)\([^[:alnum:]]\)/\1cupe\3/g
s/\b\([Oo]\)cupi\([ns]\)\([^[:alnum:]]\)/\1cupe\2\3/g
    # desocupar
    s/\b\([Dd]\)esocupés\([^[:alnum:]]\)/\1esocupara\2/g
    s/\b\([Dd]\)esocupéssi\([mu]\)\([^[:alnum:]]\)/\1esocupàre\2\3/g
    s/\b\([PD]\)esocupessi\([ns]\)\([^[:alnum:]]\)/\1esocupare\2\3/g
    s/\b\([Dd]\)esocup\([io]\)\([^[:alnum:]]\)/\1esocupe\3/g
    s/\b\([Dd]\)esocupi\([ns]\)\([^[:alnum:]]\)/\1esocupe\2\3/g
    # preocupar
    s/\b\([Pp]\)reocupés\([^[:alnum:]]\)/\1reocupara\2/g
    s/\b\([Pp]\)reocupéssi\([mu]\)\([^[:alnum:]]\)/\1reocupàre\2\3/g
    s/\b\([Pp]\)reocupessi\([ns]\)\([^[:alnum:]]\)/\1reocupare\2\3/g
    s/\b\([Pp]\)reocup\([io]\)\([^[:alnum:]]\)/\1reocupe\3/g
    s/\b\([Pp]\)reocupi\([ns]\)\([^[:alnum:]]\)/\1reocupe\2\3/g
# ombrejar
s/\b\([Oo]\)mbregés\([^[:alnum:]]\)/\1mbrejara\2/g
s/\b\([Oo]\)mbregéssi\([mu]\)\([^[:alnum:]]\)/\1mbrejàre\2\3/g
s/\b\([Oo]\)mbregessi\([ns]\)\([^[:alnum:]]\)/\1mbrejare\2\3/g
s/\b\([Oo]\)mbregi\([^[:alnum:]]\)/\1mbrege\2/g
s/\b\([Oo]\)mbregi\([ns]\)\([^[:alnum:]]\)/\1mbrege\2\3/g
s/\b\([Oo]\)mbrejo\([^[:alnum:]]\)/\1mbrege\2/g
# omplir
s/\b\([Oo]\)mple\([ns]\|\)\([^[:alnum:]]\)/\1mpli\2\3/g
s/\b\([Oo]\)mpler\(t\|ts\)\([^[:alnum:]]\)/\1mpli\2\3/g
s/\b\([Oo]\)mplert\(a\|es\)\([^[:alnum:]]\)/\1mplid\2\3/g
s/\b\([Oo]\)mplís\([^[:alnum:]]\)/\1mplira\2/g
s/\b\([Oo]\)mplíssi\([mu]\)\([^[:alnum:]]\)/\1mplíre\2\3/g
s/\b\([Oo]\)mplissi\([ns]\)\([^[:alnum:]]\)/\1mplire\2\3/g
s/\bOmpli\([^[:alnum:]]\)/Òmpliga\1/g
s/\bompli\([^[:alnum:]]\)/òmpliga\1/g
s/\bOmpli\([ns]\)\([^[:alnum:]]\)/Òmpligue\1\2/g
s/\bompli\([ns]\)\([^[:alnum:]]\)/òmpligue\1\2/g
s/\bOmplo\([^[:alnum:]]\)/Òmplic\1/g
s/\bomplo\([^[:alnum:]]\)/òmplic\1/g
s/\b\([Oo]\)nsevulga\([^[:alnum:]]\)/\1nsevol\2/g
# optimitzar
s/\b\([Oo]\)ptimitzés\([^[:alnum:]]\)/\1ptimitzara\2/g
s/\b\([Oo]\)ptimitzéssi\([mu]\)\([^[:alnum:]]\)/\1ptimitzàre\2\3/g
s/\b\([Oo]\)ptimitzessi\([ns]\)\([^[:alnum:]]\)/\1ptimitzare\2\3/g
s/\b\([Oo]\)ptimitz\([io]\)\([^[:alnum:]]\)/\1ptimitze\3/g
s/\b\([Oo]\)ptimitzi\([ns]\)\([^[:alnum:]]\)/\1ptimitze\2\3/g
# ornamentar
s/\b\([Oo]\)rnamentés\([^[:alnum:]]\)/\1rnamentara\2/g
s/\b\([Oo]\)rnamentéssi\([mu]\)\([^[:alnum:]]\)/\1rnamentàre\2\3/g
s/\b\([Oo]\)rnamentessi\([ns]\)\([^[:alnum:]]\)/\1rnamentare\2\3/g
s/\b\([Oo]\)rnament\([io]\)\([^[:alnum:]]\)/\1rnamente\3/g
s/\b\([Oo]\)rnamenti\([ns]\)\([^[:alnum:]]\)/\1rnamente\2\3/g
# ordenar
s/\b\([Oo]\)rdenés\([^[:alnum:]]\)/\1rdenara\2/g
s/\b\([Oo]\)rdenéssi\([mu]\)\([^[:alnum:]]\)/\1rdenàre\2\3/g
s/\b\([Oo]\)rdenessi\([ns]\)\([^[:alnum:]]\)/\1rdenare\2\3/g
s/\b\([Oo]\)rden\([io]\)\([^[:alnum:]]\)/\1rdene\3/g
s/\b\([Oo]\)rdeni\([ns]\)\([^[:alnum:]]\)/\1rdene\2\3/g
    # reordenar
    s/\b\([Rr]\)eordenés\([^[:alnum:]]\)/\1eordenara\2/g
    s/\b\([Rr]\)eordenéssi\([mu]\)\([^[:alnum:]]\)/\1eordenàre\2\3/g
    s/\b\([Rr]\)eordenessi\([ns]\)\([^[:alnum:]]\)/\1eordenare\2\3/g
    s/\b\([Rr]\)eorden\([io]\)\([^[:alnum:]]\)/\1eordene\3/g
    s/\b\([Rr]\)eordeni\([ns]\)\([^[:alnum:]]\)/\1eordene\2\3/g
# organitzar
s/\b\([Oo]\)rganitzés\([^[:alnum:]]\)/\1rganitzara\2/g
s/\b\([Oo]\)rganitzéssi\([mu]\)\([^[:alnum:]]\)/\1rganitzàre\2\3/g
s/\b\([Oo]\)rganitzessi\([ns]\)\([^[:alnum:]]\)/\1rganitzare\2\3/g
s/\b\([Oo]\)rganitz\([io]\)\([^[:alnum:]]\)/\1rganitze\3/g
s/\b\([Oo]\)rganitzi\([ns]\)\([^[:alnum:]]\)/\1rganitze\2\3/g
    # reorganitzar
    s/\b\([Rr]\)eorganitzés\([^[:alnum:]]\)/\1eorganitzara\2/g
    s/\b\([Rr]\)eorganitzéssi\([mu]\)\([^[:alnum:]]\)/\1eorganitzàre\2\3/g
    s/\b\([Rr]\)eorganitzessi\([ns]\)\([^[:alnum:]]\)/\1eorganitzare\2\3/g
    s/\b\([Rr]\)eorganitz\([io]\)\([^[:alnum:]]\)/\1eorganitze\3/g
    s/\b\([Rr]\)eorganitzi\([ns]\)\([^[:alnum:]]\)/\1eorganitze\2\3/g
# orientar
s/\b\([Oo]\)rientés\([^[:alnum:]]\)/\1rientara\2/g
s/\b\([Oo]\)rientéssi\([mu]\)\([^[:alnum:]]\)/\1rientàre\2\3/g
s/\b\([Oo]\)rientessi\([ns]\)\([^[:alnum:]]\)/\1rientare\2\3/g
s/\b\([Oo]\)rient\([io]\)\([^[:alnum:]]\)/\1riente\3/g
s/\b\([Oo]\)rienti\([ns]\)\([^[:alnum:]]\)/\1riente\2\3/g
# oscil·lar
s/\b\([Oo]\)scil·lés\([^[:alnum:]]\)/\1scil·lara\2/g
s/\b\([Oo]\)scil·léssi\([mu]\)\([^[:alnum:]]\)/\1scil·làre\2\3/g
s/\b\([Oo]\)scil·lessi\([ns]\)\([^[:alnum:]]\)/\1scil·lare\2\3/g
s/\b\([Oo]\)scil·l\([io]\)\([^[:alnum:]]\)/\1scil·le\3/g
s/\b\([Oo]\)scil·li\([ns]\)\([^[:alnum:]]\)/\1scil·le\2\3/g
s/\b\([Oo]\)u\(s\|\) ferrat\(s\|\)\([^[:alnum:]]\)/\1u\2 fregit\3\4/g
# p
#
s/\b\([Pp]\)a\(ns\|\) de pagès\([^[:alnum:]]\)/\1a\2 de poble\3/g
s/\b\([Pp]\)apallon\(a\|es\)\([^[:alnum:]]\)/\1alomet\2\3/g
s/\b\([Pp]\)akistanès\([^[:alnum:]]\)/\1akistanés\2/g
# parcejar
s/\b\([Pp]\)arcegés\([^[:alnum:]]\)/\1arcejara\2/g
s/\b\([Pp]\)arcegéssi\([mu]\)\([^[:alnum:]]\)/\1arcejàre\2\3/g
s/\b\([Pp]\)arcegessi\([ns]\)\([^[:alnum:]]\)/\1arcejare\2\3/g
s/\b\([Pp]\)arcegi\([ns]\|\)\([^[:alnum:]]\)/\1arcege\2\3/g
s/\b\([Pp]\)arcejo\([^[:alnum:]]\)/\1arcege\2/g
# parèixer -> paréixer
s/\b\([Pp]\)aregués\([^[:alnum:]]\)/\1areguera\2/g
s/\b\([Pp]\)areguéssi\([mu]\)\([^[:alnum:]]\)/\1areguére\2\3/g
s/\b\([Pp]\)areguessi\([ns]\)\([^[:alnum:]]\)/\1areguere\2\3/g
s/\b\([Pp]\)aregue\([mu]\)\([^[:alnum:]]\)/\1arega\2\3/g
s/\b\([Pp]\)aregui\([^[:alnum:]]\)/\1arega\2/g
s/\b\([Pp]\)aregui\([ns]\)\([^[:alnum:]]\)/\1aregue\2\3/g
s/\b\([Pp]\)arèixer\([^[:alnum:]]\)/\1aréixer\2/g
    # aparèixer -> aparéixer
    s/\b\([Aa]\)paregués\([^[:alnum:]]\)/\1pareguera\2/g
    s/\b\([Aa]\)pareguéssi\([mu]\)\([^[:alnum:]]\)/\1pareguére\2\3/g
    s/\b\([Aa]\)pareguessi\([ns]\)\([^[:alnum:]]\)/\1pareguere\2\3/g
    s/\b\([Aa]\)paregui\([^[:alnum:]]\)/\1parega\2/g
    s/\b\([Aa]\)paregui\([ns]\)\([^[:alnum:]]\)/\1paregue\2\3/g
    s/\b\([Aa]\)parèixer\([^[:alnum:]]\)/\1paréixer\2/g
    # comparèixer -> comparéixer
    s/\b\([Cc]\)omparegués\([^[:alnum:]]\)/\1ompareguera\2/g
    s/\b\([Cc]\)ompareguéssi\([mu]\)\([^[:alnum:]]\)/\1ompareguére\2\3/g
    s/\b\([Cc]\)ompareguessi\([ns]\)\([^[:alnum:]]\)/\1ompareguere\2\3/g
    s/\b\([Cc]\)omparegui\([^[:alnum:]]\)/\1omparega\2/g
    s/\b\([Cc]\)omparegui\([ns]\)\([^[:alnum:]]\)/\1omparegue\2\3/g
    s/\b\([Cc]\)omparèixer\([^[:alnum:]]\)/\1omparéixer\2/g
    # desaparèixer -> desaparéixer
    s/\b\([Dd]\)esaparegués\([^[:alnum:]]\)/\1esapareguera\2/g
    s/\b\([Dd]\)esapareguéssi\([mu]\)\([^[:alnum:]]\)/\1esapareguére\2\3/g
    s/\b\([Dd]\)esapareguessi\([ns]\)\([^[:alnum:]]\)/\1esapareguere\2\3/g
    s/\b\([Dd]\)esaparegui\([^[:alnum:]]\)/\1esaparega\2/g
    s/\b\([Dd]\)esaparegui\([ns]\)\([^[:alnum:]]\)/\1esaparegue\2\3/g
    s/\b\([Dd]\)esaparèixer\([^[:alnum:]]\)/\1esaparéixer\2/g
    # reaparèixer -> reaparéixer
    s/\b\([Rr]\)eaparegués\([^[:alnum:]]\)/\1eapareguera\2/g
    s/\b\([Rr]\)eapareguéssi\([mu]\)\([^[:alnum:]]\)/\1eapareguére\2\3/g
    s/\b\([Rr]\)eapareguessi\([ns]\)\([^[:alnum:]]\)/\1eapareguere\2\3/g
    s/\b\([Rr]\)eaparegui\([^[:alnum:]]\)/\1eaparega\2/g
    s/\b\([Rr]\)eaparegui\([ns]\)\([^[:alnum:]]\)/\1eaparegue\2\3/g
    s/\b\([Rr]\)eaparèixer\([^[:alnum:]]\)/\1eaparéixer\2/g
# parpellejar
s/\b\([Pp]\)arpellegés\([^[:alnum:]]\)/\1arpellejara\2/g
s/\b\([Pp]\)arpellegéssi\([mu]\)\([^[:alnum:]]\)/\1arpellejàre\2\3/g
s/\b\([Pp]\)arpellegessi\([ns]\)\([^[:alnum:]]\)/\1arpellejare\2\3/g
s/\b\([Pp]\)arpellegi\([ns]\|\)\([^[:alnum:]]\)/\1arpellege\2\3/g
s/\b\([Pp]\)arpellejo\([^[:alnum:]]\)/\1arpellege\2/g
# participar
s/\b\([Pp]\)articipés\([^[:alnum:]]\)/\1articipara\2/g
s/\b\([Pp]\)articipéssi\([mu]\)\([^[:alnum:]]\)/\1articipàre\2\3/g
s/\b\([Pp]\)articipessi\([ns]\)\([^[:alnum:]]\)/\1articipare\2\3/g
s/\b\([Pp]\)articipi\([ns]\|\)\([^[:alnum:]]\)/\1articipe\2\3/g
s/\b\([Pp]\)articipo\([^[:alnum:]]\)/\1articipe\2/g
# partir
s/\b\([Pp]\)arteix\(e[ns]\|\)\([^[:alnum:]]\)/\1artix\2\3/g
s/\b\([Pp]\)arteixi\([^[:alnum:]]\)/\1artisca\2/g
s/\b\([Pp]\)arteixi\([ns]\)\([^[:alnum:]]\)/\1artisque\2\3/g
s/\b\([Pp]\)arteixo\([^[:alnum:]]\)/\1artisc\2/g
s/\b\([Pp]\)artís\([^[:alnum:]]\)/\1artira\2/g
s/\b\([Pp]\)artíssi\([mu]\)\([^[:alnum:]]\)/\1artíre\2\3/g
s/\b\([Pp]\)artissi\([ns]\)\([^[:alnum:]]\)/\1artire\2\3/g
    # repartir
    s/\b\([Rr]\)eparteix\(e[ns]\|\)\([^[:alnum:]]\)/\1epartix\2\3/g
    s/\b\([Rr]\)eparteixi\([^[:alnum:]]\)/\1epartisca\2/g
    s/\b\([Rr]\)eparteixi\([ns]\)\([^[:alnum:]]\)/\1epartisque\2\3/g
    s/\b\([Rr]\)eparteixo\([^[:alnum:]]\)/\1epartisc\2/g
    s/\b\([Rr]\)epartís\([^[:alnum:]]\)/\1epartira\2/g
    s/\b\([Rr]\)epartíssi\([mu]\)\([^[:alnum:]]\)/\1epartíre\2\3/g
    s/\b\([Rr]\)epartissi\([ns]\)\([^[:alnum:]]\)/\1epartire\2\3/g
# passar
s/\b\([Pp]\)assés\([^[:alnum:]]\)/\1assara\2/g
s/\b\([Pp]\)asséssi\([mu]\)\([^[:alnum:]]\)/\1assàre\2\3/g
s/\b\([Pp]\)assessi\([ns]\)\([^[:alnum:]]\)/\1assare\2\3/g
s/\b\([Pp]\)ass\([io]\)\([^[:alnum:]]\)/\1asse\3/g
s/\b\([Pp]\)assi\([ns]\)\([^[:alnum:]]\)/\1asse\2\3/g
    # sobrepassar
    # TODO:
    s/\b\([Ss]\)obrepassés\([^[:alnum:]]\)/\1obrepassara\2/g
    s/\b\([Ss]\)obrepasséssi\([mu]\)\([^[:alnum:]]\)/\1obrepassàre\2\3/g
    s/\b\([Ss]\)obrepassessi\([ns]\)\([^[:alnum:]]\)/\1obrepassare\2\3/g
    s/\b\([Ss]\)obrepass\([io]\)\([^[:alnum:]]\)/\1obrepasse\3/g
    s/\b\([Ss]\)obrepassi\([ns]\)\([^[:alnum:]]\)/\1obrepasse\2\3/g
    # ultrapassar
    s/\b\([Uu]\)ltrapassés\([^[:alnum:]]\)/\1ltrapassara\2/g
    s/\b\([Uu]\)ltrapasséssi\([mu]\)\([^[:alnum:]]\)/\1ltrapassàre\2\3/g
    s/\b\([Uu]\)ltrapassessi\([ns]\)\([^[:alnum:]]\)/\1ltrapassare\2\3/g
    s/\b\([Uu]\)ltrapass\([io]\)\([^[:alnum:]]\)/\1ltrapasse\3/g
    s/\b\([Uu]\)ltrapassi\([ns]\)\([^[:alnum:]]\)/\1ltrapasse\2\3/g
# passejar
s/\b\([Pp]\)assegés\([^[:alnum:]]\)/\1assejara\2/g
s/\b\([Pp]\)assegéssi\([mu]\)\([^[:alnum:]]\)/\1assejàre\2\3/g
s/\b\([Pp]\)assegessi\([ns]\)\([^[:alnum:]]\)/\1assejare\2\3/g
s/\b\([Pp]\)assegi\([ns]\|\)\([^[:alnum:]]\)/\1assege\2\3/g
s/\b\([Pp]\)assejo\([^[:alnum:]]\)/\1assege\2/g
s/\bPastanaga\([^[:alnum:]]\)/Carlota\1/g
s/\bpastanaga\([^[:alnum:]]\)/carlota\1/g
s/\bPastanagues\([^[:alnum:]]\)/Carlotes\1/g
s/\bpastanagues\([^[:alnum:]]\)/carlotes\1/g
s/\bPatat\(a\|es\)\([^[:alnum:]]\)/Creïll\1\2/g
s/\bpatat\(a\|es\)\([^[:alnum:]]\)/creïll\1\2/g
s/\b\([Pp]\)eloponès\([^[:alnum:]]\)/\1eloponés\2/g
# penalitzar
s/\b\([Pp]\)enalitzés\([^[:alnum:]]\)/\1enalitzara\2/g
s/\b\([Pp]\)enalitzéssi\([mu]\)\([^[:alnum:]]\)/\1enalitzàre\2\3/g
s/\b\([Pp]\)enalitzessi\([ns]\)\([^[:alnum:]]\)/\1enalitzare\2\3/g
s/\b\([Pp]\)enalitz\([io]\)\([^[:alnum:]]\)/\1enalitze\3/g
s/\b\([Pp]\)enalitzi\([ns]\)\([^[:alnum:]]\)/\1enalitze\2\3/g
# penjar
s/\b\([Pp]\)engés\([^[:alnum:]]\)/\1enjara\2/g
s/\b\([Pp]\)engéssi\([mu]\)\([^[:alnum:]]\)/\1enjàre\2\3/g
s/\b\([Pp]\)engessi\([ns]\)\([^[:alnum:]]\)/\1enjare\2\3/g
s/\b\([Pp]\)engi\([ns]\|\)\([^[:alnum:]]\)/\1enge\2\3/g
s/\b\([Pp]\)enjo\([^[:alnum:]]\)/\1enge\2/g
    # repenjar
    s/\b\([Rr]\)epengés\([^[:alnum:]]\)/\1epenjara\2/g
    s/\b\([Rr]\)epengéssi\([mu]\)\([^[:alnum:]]\)/\1epenjàre\2\3/g
    s/\b\([Rr]\)epengessi\([ns]\)\([^[:alnum:]]\)/\1epenjare\2\3/g
    s/\b\([Rr]\)epengi\([ns]\|\)\([^[:alnum:]]\)/\1epenge\2\3/g
    s/\b\([Rr]\)epenjo\([^[:alnum:]]\)/\1epenge\2/g
# pensar
s/\b\([Pp]\)ensés\([^[:alnum:]]\)/\1ensara\2/g
s/\b\([Pp]\)enséssi\([mu]\)\([^[:alnum:]]\)/\1ensàre\2\3/g
s/\b\([Pp]\)ensessi\([ns]\)\([^[:alnum:]]\)/\1ensare\2\3/g
s/\b\([Pp]\)ens\([io]\)\([^[:alnum:]]\)/\1ense\3/g
s/\b\([Pp]\)ensi\([ns]\)\([^[:alnum:]]\)/\1ense\2\3/g
# perdre
s/\b\([Pp]\)erdés\([^[:alnum:]]\)/\1erdera\2/g
s/\b\([Pp]\)erdéssi\([mu]\)\([^[:alnum:]]\)/\1erdére\2\3/g
s/\b\([Pp]\)erdessi\([ns]\)\([^[:alnum:]]\)/\1erdere\2\3/g
s/\b\([Pp]\)erdi\([^[:alnum:]]\)/\1erda\2/g
s/\b\([Pp]\)erdi\([ns]\)\([^[:alnum:]]\)/\1erde\2\3/g
s/\b\([Pp]\)erdo\([^[:alnum:]]\)/\1erde\2/g
# perllongar
s/\b\([Pp]\)erllongués\([^[:alnum:]]\)/\1erllongara\2/g
s/\b\([Pp]\)erllonguéssi\([mu]\)\([^[:alnum:]]\)/\1erllongàre\2\3/g
s/\b\([Pp]\)erllonguessi\([ns]\)\([^[:alnum:]]\)/\1erllongare\2\3/g
s/\b\([Pp]\)erllongui\([ns]\|\)\([^[:alnum:]]\)/\1erllongue\2\3/g
s/\b\([Pp]\)erllongo\([^[:alnum:]]\)/\1erllongue\2/g
# persistir
s/\b\([Pp]\)ersisteix\(e[ns]\|\)\([^[:alnum:]]\)/\1ersistix\2\3/g
s/\b\([Pp]\)ersisteixi\([^[:alnum:]]\)/\1ersistisca\2/g
s/\b\([Pp]\)ersisteixi\([ns]\)\([^[:alnum:]]\)/\1ersistisque\2\3/g
s/\b\([Pp]\)ersisteixo\([^[:alnum:]]\)/\1ersistisc\2/g
s/\b\([Pp]\)ersistís\([^[:alnum:]]\)/\1ersistira\2/g
s/\b\([Pp]\)ersistíssi\([mu]\)\([^[:alnum:]]\)/\1ersistaíre\2\3/g
s/\b\([Pp]\)ersistissi\([ns]\)\([^[:alnum:]]\)/\1aersistire\2\3/g
# personalitzar
s/\b\([Pp]\)ersonalitzés\([^[:alnum:]]\)/\1ersonalitzara\2/g
s/\b\([Pp]\)ersonalitzéssi\([mu]\)\([^[:alnum:]]\)/\1ersonalitzàre\2\3/g
s/\b\([Pp]\)ersonalitzessi\([ns]\)\([^[:alnum:]]\)/\1ersonalitzare\2\3/g
s/\b\([Pp]\)ersonalitz\([io]\)\([^[:alnum:]]\)/\1ersonalitze\3/g
s/\b\([Pp]\)ersonalitzi\([ns]\)\([^[:alnum:]]\)/\1ersonalitze\2\3/g
# pertànyer
s/\b\([Pp]\)ertan\(gu\|y\)és\([^[:alnum:]]\)/\1ertanguera\2/g
s/\b\([Pp]\)ertan\(gu\|y\)éssi\([mu]\)\([^[:alnum:]]\)/\1ertanguére\2\3/g
s/\b\([Pp]\)ertan\(gu\|y\)essi\([ns]\)\([^[:alnum:]]\)/\1ertanguere\2\3/g
s/\b\([Pp]\)ertanyi\([^[:alnum:]]\)/\1ertanga\2/g
s/\b\([Pp]\)ertanyi\([ns]\)\([^[:alnum:]]\)/\1ertangue\2\3/g
s/\b\([Pp]\)ertanyo\([^[:alnum:]]\)/\1ertanc\2/g
# pessigar
s/\b\([Pp]\)essigués\([^[:alnum:]]\)/\1essigara\2/g
s/\b\([Pp]\)essiguéssi\([mu]\)\([^[:alnum:]]\)/\1essigàre\2\3/g
s/\b\([Pp]\)essiguessi\([ns]\)\([^[:alnum:]]\)/\1essigare\2\3/g
s/\b\([Pp]\)essig\([io]\)\([^[:alnum:]]\)/\1essige\3/g
s/\b\([Pp]\)essigi\([ns]\)\([^[:alnum:]]\)/\1essige\2\3/g
s/\bPessigolles\([^[:alnum:]]\)/Cosquerelles\1/g
s/\bpessigolles\([^[:alnum:]]\)/cosquerelles\1/g
s/\bPetit\(a\|es\|\)\([^[:alnum:]]\)/Xicotet\1\2/g
s/\bpetit\(a\|es\|\)\([^[:alnum:]]\)/xicotet\1\2/g
# pigmentar
s/\b\([Pp]\)igmentés\([^[:alnum:]]\)/\1igmentara\2/g
s/\b\([Pp]\)igmentéssi\([mu]\)\([^[:alnum:]]\)/\1igmentàre\2\3/g
s/\b\([Pp]\)igmentessi\([ns]\)\([^[:alnum:]]\)/\1igmentare\2\3/g
s/\b\([Pp]\)igment\([io]\)\([^[:alnum:]]\)/\1igmente\3/g
s/\b\([Pp]\)igmenti\([ns]\)\([^[:alnum:]]\)/\1igmente\2\3/g
# pintar
s/\b\([Pp]\)intés\([^[:alnum:]]\)/\1intara\2/g
s/\b\([Pp]\)intéssi\([mu]\)\([^[:alnum:]]\)/\1intàre\2\3/g
s/\b\([Pp]\)intessi\([ns]\)\([^[:alnum:]]\)/\1intare\2\3/g
s/\b\([Pp]\)int\([io]\)\([^[:alnum:]]\)/\1inte\3/g
s/\b\([Pp]\)inti\([ns]\)\([^[:alnum:]]\)/\1inte\2\3/g
# piratejar
s/\b\([Pp]\)irategés\([^[:alnum:]]\)/\1iratejara\2/g
s/\b\([Pp]\)irategéssi\([mu]\)\([^[:alnum:]]\)/\1iratejàre\2\3/g
s/\b\([Pp]\)irategessi\([ns]\)\([^[:alnum:]]\)/\1iratejare\2\3/g
s/\b\([Pp]\)iratejo\([^[:alnum:]]\)/\1iratege\2/g
s/\b\([Pp]\)irategi\([ns]\|\)\([^[:alnum:]]\)/\1iratege\2\3/g
# pitjar
s/\b\([Pp]\)itgés\([^[:alnum:]]\)/\1itjara\2/g
s/\b\([Pp]\)itgéssi\([mu]\)\([^[:alnum:]]\)/\1itjàre\2\3/g
s/\b\([Pp]\)itgessi\([ns]\)\([^[:alnum:]]\)/\1itjare\2\3/g
s/\b\([Pp]\)itgi\([ns]\|\)\([^[:alnum:]]\)/\1itge\2\3/g
s/\b\([Pp]\)itjo\([^[:alnum:]]\)/\1itge\2/g
    # espitjar -> espentar (esmenes)
    # trepitjar
    s/\b\([Tt]\)repitgés\([^[:alnum:]]\)/\1repitjara\2/g
    s/\b\([Tt]\)repitgéssi\([mu]\)\([^[:alnum:]]\)/\1repitjàre\2\3/g
    s/\b\([Tt]\)repitgessi\([ns]\)\([^[:alnum:]]\)/\1repitjare\2\3/g
    s/\b\([Tt]\)repitgi\([ns]\|\)\([^[:alnum:]]\)/\1repitge\2\3/g
    s/\b\([Tt]\)repitjo\([^[:alnum:]]\)/\1repitge\2/g
s/\bPlafó\([^[:alnum:]]\)/Quadro\1/g
s/\bplafó\([^[:alnum:]]\)/quadro\1/g
s/\bPlafons\([^[:alnum:]]\)/Quadros\1/g
s/\bplafons\([^[:alnum:]]\)/quadros\1/g
# planejar
s/\b\([Pp]\)lanegés\([^[:alnum:]]\)/\1lanejara\2/g
s/\b\([Pp]\)lanegéssi\([mu]\)\([^[:alnum:]]\)/\1lanejàre\2\3/g
s/\b\([Pp]\)lanegessi\([ns]\)\([^[:alnum:]]\)/\1lanejare\2\3/g
s/\b\([Pp]\)lanegi\([ns]\|\)\([^[:alnum:]]\)/\1lanege\2\3/g
s/\b\([Pp]\)lanejo\([^[:alnum:]]\)/\1lanege\2/g
# planificar
s/\b\([Pp]\)lanifiqués\([^[:alnum:]]\)/\1lanificara\2/g
s/\b\([Pp]\)lanifiquéssi\([mu]\)\([^[:alnum:]]\)/\1lanificàre\2\3/g
s/\b\([Pp]\)lanifiquessi\([ns]\)\([^[:alnum:]]\)/\1lanificare\2\3/g
s/\b\([Pp]\)lanifiqui\([ns]\|\)\([^[:alnum:]]\)/\1lanifique\2\3/g
s/\b\([Pp]\)lanifico\([^[:alnum:]]\)/\1lanifique\2/g
    # replanificar
    s/\b\([Rr]\)eplanifiqués\([^[:alnum:]]\)/\1eplanificara\2/g
    s/\b\([Rr]\)eplanifiquéssi\([mu]\)\([^[:alnum:]]\)/\1eplanificàre\2\3/g
    s/\b\([Rr]\)eplanifiquessi\([ns]\)\([^[:alnum:]]\)/\1eplanificare\2\3/g
    s/\b\([Rr]\)eplanifiqui\([ns]\|\)\([^[:alnum:]]\)/\1eplanifique\2\3/g
    s/\b\([Rr]\)eplanifico\([^[:alnum:]]\)/\1eplanifique\2/g
# plantejar
s/\b\([Pp]\)lantegés\([^[:alnum:]]\)/\1lantejara\2/g
s/\b\([Pp]\)lantegéssi\([mu]\)\([^[:alnum:]]\)/\1lantejàre\2\3/g
s/\b\([Pp]\)lantegessi\([ns]\)\([^[:alnum:]]\)/\1lantejare\2\3/g
s/\b\([Pp]\)lantegi\([ns]\|\)\([^[:alnum:]]\)/\1lantege\2\3/g
s/\b\([Pp]\)lantejo\([^[:alnum:]]\)/\1lantege\2/g
# plegar
s/\b\([Pp]\)legués\([^[:alnum:]]\)/\1legara\2/g
s/\b\([Pp]\)leguéssi\([mu]\)\([^[:alnum:]]\)/\1legàre\2\3/g
s/\b\([Pp]\)leguessi\([ns]\)\([^[:alnum:]]\)/\1legare\2\3/g
s/\b\([Pp]\)legu\([io]\)\([^[:alnum:]]\)/\1legue\3/g
s/\b\([Pp]\)legui\([ns]\)\([^[:alnum:]]\)/\1legue\2\3/g
    # aplegar
    s/\b\([Aa]\)plegués\([^[:alnum:]]\)/\1plegara\2/g
    s/\b\([Aa]\)pleguéssi\([mu]\)\([^[:alnum:]]\)/\1plegàre\2\3/g
    s/\b\([Aa]\)pleguessi\([ns]\)\([^[:alnum:]]\)/\1plegare\2\3/g
    s/\b\([Aa]\)plegui\([ns]\|\)\([^[:alnum:]]\)/\1plegue\2\3/g
    s/\b\([Aa]\)plego\([^[:alnum:]]\)/\1plegue\2/g
    # arreplegar
    s/\b\([Aa]\)rreplego\([^[:alnum:]]\)/\1rreplegue\2/g
    s/\b\([Aa]\)rreplegués\([^[:alnum:]]\)/\1rreplegara\2/g
    s/\b\([Aa]\)rrepleguéssi\([mu]\)\([^[:alnum:]]\)/\1rreplegàre\2\3/g
    s/\b\([Aa]\)rrepleguessi\([ns]\)\([^[:alnum:]]\)/\1rreplegare\2\3/g
    s/\b\([Aa]\)rreplegui\([ns]\|\)\([^[:alnum:]]\)/\1rreplegue\2\3/g
    # desplegar
    s/\b\([Dd]\)esplegués\([^[:alnum:]]\)/\1esplegara\2/g
    s/\b\([Dd]\)espleguéssi\([mu]\)\([^[:alnum:]]\)/\1esplegàre\2\3/g
    s/\b\([Dd]\)espleguessi\([ns]\)\([^[:alnum:]]\)/\1esplegare\2\3/g
    s/\b\([Dd]\)esplegu\([io]\)\([^[:alnum:]]\)/\1esplegue\3/g
    s/\b\([Dd]\)esplegui\([ns]\)\([^[:alnum:]]\)/\1esplegue\2\3/g
    # replegar
    s/\b\([Rr]\)eplego\([^[:alnum:]]\)/\1eplegue\2/g
    s/\b\([Rr]\)eplegués\([^[:alnum:]]\)/\1eplegara\2/g
    s/\b\([Rr]\)epleguéssi\([mu]\)\([^[:alnum:]]\)/\1eplegàre\2\3/g
    s/\b\([Rr]\)epleguessi\([ns]\)\([^[:alnum:]]\)/\1eplegare\2\3/g
    s/\b\([Rr]\)eplegui\([ns]\|\)\([^[:alnum:]]\)/\1eplegue\2\3/g
# poder
s/\b\([Pp]\)ogués\([^[:alnum:]]\)/\1oguera\2/g
s/\b\([Pp]\)oguéssi\([mu]\)\([^[:alnum:]]\)/\1oguére\2\3/g
s/\b\([Pp]\)oguessi\([ns]\)\([^[:alnum:]]\)/\1oguere\2\3/g
s/\b\([Pp]\)ugui\([^[:alnum:]]\)/\1uga\2/g
s/\b\([Pp]\)ugui\([ns]\)\([^[:alnum:]]\)/\1ugue\2\3/g
# podrir
s/\b\([Pp]\)odreix\(e[ns]\|\)\([^[:alnum:]]\)/\1odrix\2\3/g
s/\b\([Pp]\)odreixi\([^[:alnum:]]\)/\1odrisca\2/g
s/\b\([Pp]\)odreixi\([ns]\)\([^[:alnum:]]\)/\1odrisque\2\3/g
s/\b\([Pp]\)odreixo\([^[:alnum:]]\)/\1odrisc\2/g
s/\b\([Pp]\)odrís\([^[:alnum:]]\)/\1odrira\2/g
s/\b\([Pp]\)odríssi\([mu]\)\([^[:alnum:]]\)/\1odríre\2\3/g
s/\b\([Pp]\)odrissi\([ns]\)\([^[:alnum:]]\)/\1odrire\2\3/g
# polaritzar
s/\b\([Pp]\)olaritzés\([^[:alnum:]]\)/\1olaritzara\2/g
s/\b\([Pp]\)olaritzéssi\([mu]\)\([^[:alnum:]]\)/\1olaritzàre\2\3/g
s/\b\([Pp]\)olaritzessi\([ns]\)\([^[:alnum:]]\)/\1olaritzare\2\3/g
s/\b\([Pp]\)olaritz\([io]\)\([^[:alnum:]]\)/\1olaritze\3/g
s/\b\([Pp]\)olaritzi\([ns]\)\([^[:alnum:]]\)/\1olarise\2\3/g
s/\b\([Pp]\)olonès\([^[:alnum:]]\)/\1olonés\2/g
# polsar
s/\b\([Pp]\)olsés\([^[:alnum:]]\)/\1olsara\2/g
s/\b\([Pp]\)olséssi\([mu]\)\([^[:alnum:]]\)/\1olsàre\2\3/g
s/\b\([Pp]\)olsessi\([ns]\)\([^[:alnum:]]\)/\1olsare\2\3/g
s/\b\([Pp]\)ols\([io]\)\([^[:alnum:]]\)/\1olse\3/g
s/\b\([Pp]\)olsi\([ns]\)\([^[:alnum:]]\)/\1olse\2\3/g
# polvoritzar
s/\b\([Pp]\)olvoritzés\([^[:alnum:]]\)/\1olvoritzara\2/g
s/\b\([Pp]\)olvoritzéssi\([mu]\)\([^[:alnum:]]\)/\1olvoritzàre\2\3/g
s/\b\([Pp]\)olvoritzessi\([ns]\)\([^[:alnum:]]\)/\1olvoritzare\2\3/g
s/\b\([Pp]\)olvoritz\([io]\)\([^[:alnum:]]\)/\1olvoritze\3/g
s/\b\([Pp]\)olvoritzi\([ns]\)\([^[:alnum:]]\)/\1olvorise\2\3/g
s/\b\([Pp]\)úrpur\(a\|es]\)\([^[:alnum:]]\)/\1orpr\2\3/g
# portar
s/\b\([Pp]\)ortés\([^[:alnum:]]\)/\1ortara\2/g
s/\b\([Pp]\)ortéssi\([mu]\)\([^[:alnum:]]\)/\1ortàre\2\3/g
s/\b\([Pp]\)ortessi\([ns]\)\([^[:alnum:]]\)/\1ortare\2\3/g
s/\b\([Pp]\)ort\([io]\)\([^[:alnum:]]\)/\1orte\3/g
s/\b\([Pp]\)orti\([ns]\)\([^[:alnum:]]\)/\1orte\2\3/g
    # aportar
    s/\b\([Aa]\)portés\([^[:alnum:]]\)/\1portara\2/g
    s/\b\([Aa]\)portéssi\([mu]\)\([^[:alnum:]]\)/\1portàre\2\3/g
    s/\b\([Aa]\)portessi\([ns]\)\([^[:alnum:]]\)/\1portare\2\3/g
    s/\b\([Aa]\)port\([io]\)\([^[:alnum:]]\)/\1porte\3/g
    s/\b\([Aa]\)porti\([ns]\)\([^[:alnum:]]\)/\1porte\2\3/g
    # comportar
    s/\b\([Cc]\)omportés\([^[:alnum:]]\)/\1omportara\2/g
    s/\b\([Cc]\)omportéssi\([mu]\)\([^[:alnum:]]\)/\1omportàre\2\3/g
    s/\b\([Cc]\)omportessi\([ns]\)\([^[:alnum:]]\)/\1omportare\2\3/g
    s/\b\([Cc]\)omport\([io]\)\([^[:alnum:]]\)/\1omporte\3/g
    s/\b\([Cc]\)omporti\([ns]\)\([^[:alnum:]]\)/\1omporte\2\3/g
    # deportar
    s/\b\([Dd]\)eportés\([^[:alnum:]]\)/\1eportara\2/g
    s/\b\([Dd]\)eportéssi\([mu]\)\([^[:alnum:]]\)/\1eportàre\2\3/g
    s/\b\([Dd]\)eportessi\([ns]\)\([^[:alnum:]]\)/\1eportare\2\3/g
    s/\b\([Dd]\)eport\([io]\)\([^[:alnum:]]\)/\1eporte\3/g
    s/\b\([Dd]\)eporti\([ns]\)\([^[:alnum:]]\)/\1eporte\2\3/g
    # exportar
    s/\b\([Ee]\)xportés\([^[:alnum:]]\)/\1xportara\2/g
    s/\b\([Ee]\)xportéssi\([mu]\)\([^[:alnum:]]\)/\1xportàre\2\3/g
    s/\b\([Ee]\)xportessi\([ns]\)\([^[:alnum:]]\)/\1xportare\2\3/g
    s/\b\([Ee]\)xport\([io]\)\([^[:alnum:]]\)/\1xporte\3/g
    s/\b\([Ee]\)xporti\([ns]\)\([^[:alnum:]]\)/\1xporte\2\3/g
        # reexportar
        s/\b\([Rr]\)eexportés\([^[:alnum:]]\)/\1eexportara\2/g
        s/\b\([Rr]\)eexportéssi\([mu]\)\([^[:alnum:]]\)/\1eexportàre\2\3/g
        s/\b\([Rr]\)eexportessi\([ns]\)\([^[:alnum:]]\)/\1eexportare\2\3/g
        s/\b\([Rr]\)eexport\([io]\)\([^[:alnum:]]\)/\1eexporte\3/g
        s/\b\([Rr]\)eexporti\([ns]\)\([^[:alnum:]]\)/\1eexporte\2\3/g
    # importar
    s/\b\([Ii]\)mportés\([^[:alnum:]]\)/\1mportara\2/g
    s/\b\([Ii]\)mportéssi\([mu]\)\([^[:alnum:]]\)/\1mportàre\2\3/g
    s/\b\([Ii]\)mportessi\([ns]\)\([^[:alnum:]]\)/\1mportare\2\3/g
    s/\b\([Ii]\)mport\([io]\)\([^[:alnum:]]\)/\1mporte\3/g
    s/\b\([Ii]\)mporti\([ns]\)\([^[:alnum:]]\)/\1mporte\2\3/g
        # reexportar
        s/\b\([Rr]\)eimportés\([^[:alnum:]]\)/\1eimportara\2/g
        s/\b\([Rr]\)eimportéssi\([mu]\)\([^[:alnum:]]\)/\1eimportàre\2\3/g
        s/\b\([Rr]\)eimportessi\([ns]\)\([^[:alnum:]]\)/\1eimportare\2\3/g
        s/\b\([Rr]\)eimport\([io]\)\([^[:alnum:]]\)/\1eimporte\3/g
        s/\b\([Rr]\)eimporti\([ns]\)\([^[:alnum:]]\)/\1eimporte\2\3/g
    # reportar
    s/\b\([Rr]\)eport\([io]\)\([^[:alnum:]]\)/\1eporte\3/g
    s/\b\([Rr]\)eporti\([ns]\)\([^[:alnum:]]\)/\1eporte\2\3/g
    s/\b\([Rr]\)eportés\([^[:alnum:]]\)/\1eportara\2/g
    s/\b\([Rr]\)eportéssi\([mu]\)\([^[:alnum:]]\)/\1eportàre\2\3/g
    s/\b\([Rr]\)eportessi\([ns]\)\([^[:alnum:]]\)/\1eportare\2\3/g
    # suportar
    s/\b\([Ss]\)uportés\([^[:alnum:]]\)/\1uportara\2/g
    s/\b\([Ss]\)uportéssi\([mu]\)\([^[:alnum:]]\)/\1uportàre\2\3/g
    s/\b\([Ss]\)uportessi\([ns]\)\([^[:alnum:]]\)/\1uportare\2\3/g
    s/\b\([Ss]\)uport\([io]\)\([^[:alnum:]]\)/\1uporte\3/g
    s/\b\([Ss]\)uporti\([ns]\)\([^[:alnum:]]\)/\1uporte\2\3/g
    # transportar
    s/\b\([Tt]\)ansportés\([^[:alnum:]]\)/\1ansportara\2/g
    s/\b\([Tt]\)ansportéssi\([mu]\)\([^[:alnum:]]\)/\1ansportàre\2\3/g
    s/\b\([Tt]\)ansportessi\([ns]\)\([^[:alnum:]]\)/\1ansportare\2\3/g
    s/\b\([Tt]\)ansport\([io]\)\([^[:alnum:]]\)/\1ansporte\3/g
    s/\b\([Tt]\)ansporti\([ns]\)\([^[:alnum:]]\)/\1ansporte\2\3/g
s/\b\([Pp]\)ortuguès\([^[:alnum:]]\)/\1ortugués\2/g
# posar
s/\b\([Pp]\)osés\([^[:alnum:]]\)/\1osara\2/g
s/\b\([Pp]\)oséssi\([mu]\)\([^[:alnum:]]\)/\1osàre\2\3/g
s/\b\([Pp]\)osessi\([ns]\)\([^[:alnum:]]\)/\1osare\2\3/g
s/\b\([Pp]\)os\([io]\)\([^[:alnum:]]\)/\1ose\3/g
s/\b\([Pp]\)osi\([ns]\)\([^[:alnum:]]\)/\1ose\2\3/g
    # anteposar
    s/\b\([Aa]\)nteposés\([^[:alnum:]]\)/\1nteposara\2/g
    s/\b\([Aa]\)nteposéssi\([mu]\)\([^[:alnum:]]\)/\1nteposàre\2\3/g
    s/\b\([Aa]\)nteposessi\([ns]\)\([^[:alnum:]]\)/\1nteposare\2\3/g
    s/\b\([Aa]\)ntepos\([io]\)\([^[:alnum:]]\)/\1ntepose\3/g
    s/\b\([Aa]\)nteposi\([ns]\)\([^[:alnum:]]\)/\1ntepose\2\3/g
    # composar
    s/\b\([Cc]\)omposés\([^[:alnum:]]\)/\1omposara\2/g
    s/\b\([Cc]\)omposéssi\([mu]\)\([^[:alnum:]]\)/\1omposàre\2\3/g
    s/\b\([Cc]\)omposessi\([ns]\)\([^[:alnum:]]\)/\1omposare\2\3/g
    s/\b\([Cc]\)ompos\([io]\)\([^[:alnum:]]\)/\1ompose\3/g
    s/\b\([Cc]\)omposi\([ns]\)\([^[:alnum:]]\)/\1ompose\2\3/g
    # contraposar
    s/\b\([Cc]\)ontraposés\([^[:alnum:]]\)/\1ontraposara\2/g
    s/\b\([Cc]\)ontraposéssi\([mu]\)\([^[:alnum:]]\)/\1ontraposàre\2\3/g
    s/\b\([Cc]\)ontraposessi\([ns]\)\([^[:alnum:]]\)/\1ontraposare\2\3/g
    s/\b\([Cc]\)ontrapos\([io]\)\([^[:alnum:]]\)/\1ontrapose\3/g
    s/\b\([Cc]\)ontraposi\([ns]\)\([^[:alnum:]]\)/\1ontrapose\2\3/g
    # deposar
    s/\b\([Dd]\)eposés\([^[:alnum:]]\)/\1eposara\2/g
    s/\b\([Dd]\)eposéssi\([mu]\)\([^[:alnum:]]\)/\1eposàre\2\3/g
    s/\b\([Dd]\)eposessi\([ns]\)\([^[:alnum:]]\)/\1eposare\2\3/g
    s/\b\([Dd]\)epos\([io]\)\([^[:alnum:]]\)/\1epose\3/g
    s/\b\([Dd]\)eposi\([ns]\)\([^[:alnum:]]\)/\1epose\2\3/g
    # disposar
    s/\b\([Dd]\)isposés\([^[:alnum:]]\)/\1isposara\2/g
    s/\b\([Dd]\)isposéssi\([mu]\)\([^[:alnum:]]\)/\1isposàre\2\3/g
    s/\b\([Dd]\)isposessi\([ns]\)\([^[:alnum:]]\)/\1isposare\2\3/g
    s/\b\([Dd]\)ispos\([io]\)\([^[:alnum:]]\)/\1ispose\3/g
    s/\b\([Dd]\)isposi\([ns]\)\([^[:alnum:]]\)/\1ispose\2\3/g
        # indisposar
        s/\b\([Ii]\)ndisposés\([^[:alnum:]]\)/\1ndisposara\2/g
        s/\b\([Ii]\)ndisposéssi\([mu]\)\([^[:alnum:]]\)/\1ndisposàre\2\3/g
        s/\b\([Ii]\)ndisposessi\([ns]\)\([^[:alnum:]]\)/\1ndisposare\2\3/g
        s/\b\([Ii]\)ndispos\([io]\)\([^[:alnum:]]\)/\1ndispose\3/g
        s/\b\([Ii]\)ndisposi\([ns]\)\([^[:alnum:]]\)/\1ndispose\2\3/g
        # predisposar
        s/\b\([Pp]\)redisposés\([^[:alnum:]]\)/\1redisposara\2/g
        s/\b\([Pp]\)redisposéssi\([mu]\)\([^[:alnum:]]\)/\1redisposàre\2\3/g
        s/\b\([Pp]\)redisposessi\([ns]\)\([^[:alnum:]]\)/\1redisposare\2\3/g
        s/\b\([Pp]\)redispos\([io]\)\([^[:alnum:]]\)/\1redispose\3/g
        s/\b\([Pp]\)redisposi\([ns]\)\([^[:alnum:]]\)/\1redispose\2\3/g
    # esposar
    s/\b\([Ee]\)sposés\([^[:alnum:]]\)/\1sposara\2/g
    s/\b\([Ee]\)sposéssi\([mu]\)\([^[:alnum:]]\)/\1sposàre\2\3/g
    s/\b\([Ee]\)sposessi\([ns]\)\([^[:alnum:]]\)/\1sposare\2\3/g
    s/\b\([Ee]\)spos\([io]\)\([^[:alnum:]]\)/\1spose\3/g
    s/\b\([Ee]\)sposi\([ns]\)\([^[:alnum:]]\)/\1spose\2\3/g
    # exposar
    s/\b\([Ee]\)xposés\([^[:alnum:]]\)/\1xposara\2/g
    s/\b\([Ee]\)xposéssi\([mu]\)\([^[:alnum:]]\)/\1xposàre\2\3/g
    s/\b\([Ee]\)xposessi\([ns]\)\([^[:alnum:]]\)/\1xposare\2\3/g
    s/\b\([Ee]\)xpos\([io]\)\([^[:alnum:]]\)/\1xpose\3/g
    s/\b\([Ee]\)xposi\([ns]\)\([^[:alnum:]]\)/\1xpose\2\3/g
    # imposar
    s/\b\([Ii]\)mposés\([^[:alnum:]]\)/\1mposara\2/g
    s/\b\([Ii]\)mposéssi\([mu]\)\([^[:alnum:]]\)/\1mposàre\2\3/g
    s/\b\([Ii]\)mposessi\([ns]\)\([^[:alnum:]]\)/\1mposare\2\3/g
    s/\b\([Ii]\)mpos\([io]\)\([^[:alnum:]]\)/\1mpose\3/g
    s/\b\([Ii]\)mposi\([ns]\)\([^[:alnum:]]\)/\1mpose\2\3/g
        # desimposar
        s/\b\([Dd]\)esimposés\([^[:alnum:]]\)/\1esimposara\2/g
        s/\b\([Dd]\)esimposéssi\([mu]\)\([^[:alnum:]]\)/\1esimposàre\2\3/g
        s/\b\([Dd]\)esimposessi\([ns]\)\([^[:alnum:]]\)/\1esimposare\2\3/g
        s/\b\([Dd]\)esimpos\([io]\)\([^[:alnum:]]\)/\1esimpose\3/g
        s/\b\([Dd]\)esimposi\([ns]\)\([^[:alnum:]]\)/\1esimpose\2\3/g
    # interposar
    s/\b\([Ii]\)nterposés\([^[:alnum:]]\)/\1nterposara\2/g
    s/\b\([Ii]\)nterposéssi\([mu]\)\([^[:alnum:]]\)/\1nterposàre\2\3/g
    s/\b\([Ii]\)nterposessi\([ns]\)\([^[:alnum:]]\)/\1nterposare\2\3/g
    s/\b\([Ii]\)nterpos\([io]\)\([^[:alnum:]]\)/\1nterpose\3/g
    s/\b\([Ii]\)nterposi\([ns]\)\([^[:alnum:]]\)/\1nterpose\2\3/g
    # juxtaposar
    s/\b\([Jj]\)uxtaposés\([^[:alnum:]]\)/\1uxtaposara\2/g
    s/\b\([Jj]\)uxtaposéssi\([mu]\)\([^[:alnum:]]\)/\1uxtaposàre\2\3/g
    s/\b\([Jj]\)uxtaposessi\([ns]\)\([^[:alnum:]]\)/\1uxtaposare\2\3/g
    s/\b\([Jj]\)uxtapos\([io]\)\([^[:alnum:]]\)/\1uxtapose\3/g
    s/\b\([Jj]\)uxtaposi\([ns]\)\([^[:alnum:]]\)/\1uxtapose\2\3/g
    # oposar
    s/\b\([Oo]\)posés\([^[:alnum:]]\)/\1posara\2/g
    s/\b\([Oo]\)poséssi\([mu]\)\([^[:alnum:]]\)/\1posàre\2\3/g
    s/\b\([Oo]\)posessi\([ns]\)\([^[:alnum:]]\)/\1posare\2\3/g
    s/\b\([Oo]\)pos\([io]\)\([^[:alnum:]]\)/\1pose\3/g
    s/\b\([Oo]\)posi\([ns]\)\([^[:alnum:]]\)/\1pose\2\3/g
    # posposar
    s/\b\([Pp]\)osposés\([^[:alnum:]]\)/\1osposara\2/g
    s/\b\([Pp]\)osposéssi\([mu]\)\([^[:alnum:]]\)/\1osposàre\2\3/g
    s/\b\([Pp]\)osposessi\([ns]\)\([^[:alnum:]]\)/\1osposare\2\3/g
    s/\b\([Pp]\)ospos\([io]\)\([^[:alnum:]]\)/\1ospose\3/g
    s/\b\([Pp]\)osposi\([ns]\)\([^[:alnum:]]\)/\1ospose\2\3/g
    # preposar
    s/\b\([Pp]\)reposés\([^[:alnum:]]\)/\1reposara\2/g
    s/\b\([Pp]\)reposéssi\([mu]\)\([^[:alnum:]]\)/\1reposàre\2\3/g
    s/\b\([Pp]\)reposessi\([ns]\)\([^[:alnum:]]\)/\1reposare\2\3/g
    s/\b\([Pp]\)repos\([io]\)\([^[:alnum:]]\)/\1repose\3/g
    s/\b\([Pp]\)reposi\([ns]\)\([^[:alnum:]]\)/\1repose\2\3/g
    # reposar
    s/\b\([Rr]\)eposés\([^[:alnum:]]\)/\1eposara\2/g
    s/\b\([Rr]\)eposéssi\([mu]\)\([^[:alnum:]]\)/\1eposàre\2\3/g
    s/\b\([Rr]\)eposessi\([ns]\)\([^[:alnum:]]\)/\1eposare\2\3/g
    s/\b\([Rr]\)epos\([io]\)\([^[:alnum:]]\)/\1epose\3/g
    s/\b\([Rr]\)eposi\([ns]\)\([^[:alnum:]]\)/\1epose\2\3/g
    # sobreposar
    s/\b\([Ss]\)obreposés\([^[:alnum:]]\)/\1obreposara\2/g
    s/\b\([Ss]\)obreposéssi\([mu]\)\([^[:alnum:]]\)/\1obreposàre\2\3/g
    s/\b\([Ss]\)obreposessi\([ns]\)\([^[:alnum:]]\)/\1obreposare\2\3/g
    s/\b\([Ss]\)obrepos\([io]\)\([^[:alnum:]]\)/\1obrepose\3/g
    s/\b\([Ss]\)obreposi\([ns]\)\([^[:alnum:]]\)/\1obrepose\2\3/g
    # sotaposar
    s/\b\([Ss]\)otaposés\([^[:alnum:]]\)/\1otaposara\2/g
    s/\b\([Ss]\)otaposéssi\([mu]\)\([^[:alnum:]]\)/\1otaposàre\2\3/g
    s/\b\([Ss]\)otaposessi\([ns]\)\([^[:alnum:]]\)/\1otaposare\2\3/g
    s/\b\([Ss]\)otapos\([io]\)\([^[:alnum:]]\)/\1otapose\3/g
    s/\b\([Ss]\)otaposi\([ns]\)\([^[:alnum:]]\)/\1otapose\2\3/g
    # superposar
    s/\b\([Ss]\)uperposés\([^[:alnum:]]\)/\1uperposara\2/g
    s/\b\([Ss]\)uperposéssi\([mu]\)\([^[:alnum:]]\)/\1uperposàre\2\3/g
    s/\b\([Ss]\)uperposessi\([ns]\)\([^[:alnum:]]\)/\1uperposare\2\3/g
    s/\b\([Ss]\)uperpos\([io]\)\([^[:alnum:]]\)/\1uperpose\3/g
    s/\b\([Ss]\)uperposi\([ns]\)\([^[:alnum:]]\)/\1uperpose\2\3/g
    # suposar
    s/\b\([Ss]\)uposés\([^[:alnum:]]\)/\1uposara\2/g
    s/\b\([Ss]\)uposéssi\([mu]\)\([^[:alnum:]]\)/\1uposàre\2\3/g
    s/\b\([Ss]\)uposessi\([ns]\)\([^[:alnum:]]\)/\1uposare\2\3/g
    s/\b\([Ss]\)upos\([io]\)\([^[:alnum:]]\)/\1upose\3/g
    s/\b\([Ss]\)uposi\([ns]\)\([^[:alnum:]]\)/\1upose\2\3/g
    # transposar
    s/\b\([Tt]\)ransposés\([^[:alnum:]]\)/\1ransposara\2/g
    s/\b\([Tt]\)ransposéssi\([mu]\)\([^[:alnum:]]\)/\1ransposàre\2\3/g
    s/\b\([Tt]\)ransposessi\([ns]\)\([^[:alnum:]]\)/\1ransposare\2\3/g
    s/\b\([Tt]\)ranspos\([io]\)\([^[:alnum:]]\)/\1ranspose\3/g
    s/\b\([Tt]\)ransposi\([ns]\)\([^[:alnum:]]\)/\1ranspose\2\3/g
# posicionat -> ubicat (esmenes)
# posseir
s/\b\([Pp]\)osseeix\(e[ns]\|\)\([^[:alnum:]]\)/\1osseïx\2\3/g
s/\b\([Pp]\)osseeixi\([^[:alnum:]]\)/\1osseïsca\2/g
s/\b\([Pp]\)osseeixi\([ns]\)\([^[:alnum:]]\)/\1osseïsque\2\3/g
s/\b\([Pp]\)osseeixo\([^[:alnum:]]\)/\1osseïsc\2/g
s/\b\([Pp]\)osseís\([^[:alnum:]]\)/\1osseïra\2/g
s/\b\([Pp]\)osseíssi\([mu]\)\([^[:alnum:]]\)/\1osseíre\2\3/g
s/\b\([Pp]\)osseïssi\([ns]\)\([^[:alnum:]]\)/\1osseïre\2\3/g
    # desposseir
    s/\b\([Dd]\)esposseeix\(e[ns]\|\)\([^[:alnum:]]\)/\1esposseïx\2\3/g
    s/\b\([Dd]\)esposseeixi\([^[:alnum:]]\)/\1esposseïsca\2/g
    s/\b\([Dd]\)esposseeixi\([ns]\)\([^[:alnum:]]\)/\1esposseïsque\2\3/g
    s/\b\([Dd]\)esposseeixo\([^[:alnum:]]\)/\1esposseïsc\2/g
    s/\b\([Dd]\)esposseís\([^[:alnum:]]\)/\1esposseïra\2/g
    s/\b\([Dd]\)esposseíssi\([mu]\)\([^[:alnum:]]\)/\1esposseíre\2\3/g
    s/\b\([Dd]\)esposseïssi\([ns]\)\([^[:alnum:]]\)/\1esposseïre\2\3/g
# practicar
s/\b\([Pp]\)ractiqués\([^[:alnum:]]\)/\1racticara\2/g
s/\b\([Pp]\)ractiquéssi\([mu]\)\([^[:alnum:]]\)/\1racticàre\2\3/g
s/\b\([Pp]\)ractiquessi\([ns]\)\([^[:alnum:]]\)/\1racticare\2\3/g
s/\b\([Pp]\)ractiqui\([ns]\|\)\([^[:alnum:]]\)/\1ractique\2\3/g
s/\b\([Pp]\)ractico\([^[:alnum:]]\)/\1ractique\2/g
# precipitar
s/\b\([Pp]\)recipités\([^[:alnum:]]\)/\1recipitara\2/g
s/\b\([Pp]\)recipitéssi\([mu]\)\([^[:alnum:]]\)/\1recipitàre\2\3/g
s/\b\([Pp]\)recipitessi\([ns]\)\([^[:alnum:]]\)/\1recipitare\2\3/g
s/\b\([Pp]\)recipit\([io]\)\([^[:alnum:]]\)/\1recipite\3/g
s/\b\([Pp]\)recipiti\([ns]\)\([^[:alnum:]]\)/\1recipite\2\3/g
# pregar -> orar (esmenes)
# pregària -> oració (esmenes)
# preguntar
s/\b\([Pp]\)reguntés\([^[:alnum:]]\)/\1reguntara\2/g
s/\b\([Pp]\)reguntéssi\([mu]\)\([^[:alnum:]]\)/\1reguntàre\2\3/g
s/\b\([Pp]\)reguntessi\([ns]\)\([^[:alnum:]]\)/\1reguntare\2\3/g
s/\b\([Pp]\)regunt\([io]\)\([^[:alnum:]]\)/\1regunte\3/g
s/\b\([Pp]\)regunti\([ns]\)\([^[:alnum:]]\)/\1regunte\2\3/g
# prémer
# FIXME: -> polsar?
s/\b\([Pp]\)remés\([^[:alnum:]]\)/\1remera\2/g
s/\b\([Pp]\)reméssi\([mu]\)\([^[:alnum:]]\)/\1remére\2\3/g
s/\b\([Pp]\)remessi\([ns]\)\([^[:alnum:]]\)/\1remere\2\3/g
s/\b\([Pp]\)remi\([^[:alnum:]]\)/\1rema\2/g
s/\b\([Pp]\)remi\([ns]\)\([^[:alnum:]]\)/\1reme\2\3/g
s/\b\([Pp]\)remo\([^[:alnum:]]\)/\1rem\2/g
# presentar
s/\b\([Pp]\)resentés\([^[:alnum:]]\)/\1resentara\2/g
s/\b\([Pp]\)resentéssi\([mu]\)\([^[:alnum:]]\)/\1resentàre\2\3/g
s/\b\([Pp]\)resentessi\([ns]\)\([^[:alnum:]]\)/\1resentare\2\3/g
s/\b\([Pp]\)resent\([io]\)\([^[:alnum:]]\)/\1resente\3/g
s/\b\([Pp]\)resenti\([ns]\)\([^[:alnum:]]\)/\1resente\2\3/g
    # representar
    s/\b\([Rr]\)epresentés\([^[:alnum:]]\)/\1epresentara\2/g
    s/\b\([Rr]\)epresentéssi\([mu]\)\([^[:alnum:]]\)/\1epresentàre\2\3/g
    s/\b\([Rr]\)epresentessi\([ns]\)\([^[:alnum:]]\)/\1epresentare\2\3/g
    s/\b\([Rr]\)epresent\([io]\)\([^[:alnum:]]\)/\1epresente\3/g
    s/\b\([Rr]\)epresenti\([ns]\)\([^[:alnum:]]\)/\1epresente\2\3/g
# preserva -> mantín (esmenes)
s/\bPréssec\([^[:alnum:]]\)/Bresquilla\1/g
s/\bpréssec\([^[:alnum:]]\)/bresquilla\1/g
s/\bPréssecs\([^[:alnum:]]\)/Bresquilles\1/g
s/\bpréssecs\([^[:alnum:]]\)/bresquilles\1/g
# pressionar
s/\b\([Pp]\)ressionés\([^[:alnum:]]\)/\1ressionara\2/g
s/\b\([Pp]\)ressionéssi\([mu]\)\([^[:alnum:]]\)/\1ressionàre\2\3/g
s/\b\([Pp]\)ressionessi\([ns]\)\([^[:alnum:]]\)/\1ressionare\2\3/g
s/\b\([Pp]\)ression\([io]\)\([^[:alnum:]]\)/\1ressione\3/g
s/\b\([Pp]\)ressioni\([ns]\)\([^[:alnum:]]\)/\1ressione\2\3/g
# presumir
s/\b\([Pp]\)resumeix\(e[ns]\|\)\([^[:alnum:]]\)/\1resumix\2\3/g
s/\b\([Pp]\)resumeixi\([^[:alnum:]]\)/\1resumisca\2/g
s/\b\([Pp]\)resumeixi\([ns]\)\([^[:alnum:]]\)/\1resumisque\2\3/g
s/\b\([Pp]\)resumeixo\([^[:alnum:]]\)/\1resumisc\2/g
s/\b\([Pp]\)resumís\([^[:alnum:]]\)/\1resumira\2/g
s/\b\([Pp]\)resumíssi\([mu]\)\([^[:alnum:]]\)/\1resumíre\2\3/g
s/\b\([Pp]\)resumissi\([ns]\)\([^[:alnum:]]\)/\1resumire\2\3/g
# processar
s/\b\([Pp]\)processés\([^[:alnum:]]\)/\1rocessara\2/g
s/\b\([Pp]\)processéssi\([mu]\)\([^[:alnum:]]\)/\1rocessàre\2\3/g
s/\b\([Pp]\)processessi\([ns]\)\([^[:alnum:]]\)/\1rocessare\2\3/g
s/\b\([Pp]\)rocess\([io]\)\([^[:alnum:]]\)/\1rocesse\3/g
s/\b\([Pp]\)rocessi\([ns]\)\([^[:alnum:]]\)/\1rocesse\2\3/g
# produir
s/\b\([Pp]\)rodueix\(e[ns]\|\)\([^[:alnum:]]\)/\1roduïx\2\3/g
s/\b\([Pp]\)rodueixi\([^[:alnum:]]\)/\1roduïsca\2/g
s/\b\([Pp]\)rodueixi\([ns]\)\([^[:alnum:]]\)/\1roduïsque\2\3/g
s/\b\([Pp]\)rodueixo\([^[:alnum:]]\)/\1roduïsc\2/g
s/\b\([Pp]\)roduís\([^[:alnum:]]\)/\1roduïra\2/g
s/\b\([Pp]\)roduíssi\([mu]\)\([^[:alnum:]]\)/\1roduíre\2\3/g
s/\b\([Pp]\)roduïssi\([ns]\)\([^[:alnum:]]\)/\1roduïre\2\3/g
    # reproduir
    s/\b\([Rr]\)eprodueix\(e[ns]\|\)\([^[:alnum:]]\)/\1eproduïx\2\3/g
    s/\b\([Rr]\)eprodueixi\([^[:alnum:]]\)/\1eproduïsca\2/g
    s/\b\([Rr]\)eprodueixi\([ns]\)\([^[:alnum:]]\)/\1eproduïsque\2\3/g
    s/\b\([Rr]\)eprodueixo\([^[:alnum:]]\)/\1eproduïsc\2/g
    s/\b\([Rr]\)eproduís\([^[:alnum:]]\)/\1eproduïra\2/g
    s/\b\([Rr]\)eproduíssi\([mu]\)\([^[:alnum:]]\)/\1eproduíre\2\3/g
    s/\b\([Rr]\)eproduïssi\([ns]\)\([^[:alnum:]]\)/\1eproduïre\2\3/g
# projectar
s/\b\([Pp]\)rojectés\([^[:alnum:]]\)/\1rojectara\2/g
s/\b\([Pp]\)rojectéssi\([mu]\)\([^[:alnum:]]\)/\1rojectàre\2\3/g
s/\b\([Pp]\)rogjecessi\([ns]\)\([^[:alnum:]]\)/\1rojectare\2\3/g
s/\b\([Pp]\)roject\([io]\)\([^[:alnum:]]\)/\1rojecte\3/g
s/\b\([Pp]\)rojecti\([ns]\)\([^[:alnum:]]\)/\1rojecte\2\3/g
# programar
s/\b\([Pp]\)rogramés\([^[:alnum:]]\)/\1rogramara\2/g
s/\b\([Pp]\)rograméssi\([mu]\)\([^[:alnum:]]\)/\1rogramàre\2\3/g
s/\b\([Pp]\)rogramessi\([ns]\)\([^[:alnum:]]\)/\1rogramare\2\3/g
s/\b\([Pp]\)rogram\([io]\)\([^[:alnum:]]\)/\1rograme\3/g
s/\b\([Pp]\)rogrami\([ns]\)\([^[:alnum:]]\)/\1rograme\2\3/g
    # desprogramar
    s/\b\([Dd]\)esprogramés\([^[:alnum:]]\)/\1esprogramara\2/g
    s/\b\([Dd]\)esprograméssi\([mu]\)\([^[:alnum:]]\)/\1esprogramàre\2\3/g
    s/\b\([Dd]\)esprogramessi\([ns]\)\([^[:alnum:]]\)/\1esprogramare\2\3/g
    s/\b\([Dd]\)esprogram\([io]\)\([^[:alnum:]]\)/\1esprograme\3/g
    s/\b\([Dd]\)esprogrami\([ns]\)\([^[:alnum:]]\)/\1esprograme\2\3/g
# prohibir
s/\b\([Pp]\)rohibeix\(e[ns]\|\)\([^[:alnum:]]\)/\1rohibix\2\3/g
s/\b\([Pp]\)rohibeixi\([^[:alnum:]]\)/\1rohibisca\2/g
s/\b\([Pp]\)rohibeixi\([ns]\)\([^[:alnum:]]\)/\1rohibisque\2\3/g
s/\b\([Pp]\)rohibeixo\([^[:alnum:]]\)/\1rohibisc\2/g
s/\b\([Pp]\)rohibís\([^[:alnum:]]\)/\1rohibira\2/g
s/\b\([Pp]\)rohibíssi\([mu]\)\([^[:alnum:]]\)/\1rohibíre\2\3/g
s/\b\([Pp]\)rohibissi\([ns]\)\([^[:alnum:]]\)/\1rohibire\2\3/g
# prolongar
s/\b\([Pp]\)rolongo\([^[:alnum:]]\)/\1rolongue\2/g
s/\b\([Pp]\)rolongués\([^[:alnum:]]\)/\1rolongara\2/g
s/\b\([Pp]\)rolonguéssi\([mu]\)\([^[:alnum:]]\)/\1rolongàre\2\3/g
s/\b\([Pp]\)rolonguessi\([ns]\)\([^[:alnum:]]\)/\1rolongare\2\3/g
s/\b\([Pp]\)rolongui\([^[:alnum:]]\)/\1rolongue\2/g
s/\b\([Pp]\)rolongui\([ns]\)\([^[:alnum:]]\)/\1rolongue\2\3/g
# pronuncia -> llegir (esmenes)
# proporcionar
s/\b\([Pp]\)roporcionés\([^[:alnum:]]\)/\1roporcionara\2/g
s/\b\([Pp]\)roporcionéssi\([mu]\)\([^[:alnum:]]\)/\1roporcionàre\2\3/g
s/\b\([Pp]\)roporcionessi\([ns]\)\([^[:alnum:]]\)/\1roporcionare\2\3/g
s/\b\([Pp]\)roporcion\([io]\)\([^[:alnum:]]\)/\1roporcione\3/g
s/\b\([Pp]\)roporcioni\([ns]\)\([^[:alnum:]]\)/\1roporcione\2\3/g
# proposar
s/\b\([Pp]\)roposés\([^[:alnum:]]\)/\1roporsara\2/g
s/\b\([Pp]\)roposéssi\([mu]\)\([^[:alnum:]]\)/\1roposàre\2\3/g
s/\b\([Pp]\)roposessi\([ns]\)\([^[:alnum:]]\)/\1roposare\2\3/g
s/\b\([Pp]\)ropos\([io]\)\([^[:alnum:]]\)/\1ropose\3/g
s/\b\([Pp]\)roposi\([ns]\)\([^[:alnum:]]\)/\1ropose\2\3/g
# protegir
s/\b\([Pp]\)rotegeix\(e[ns]\|\)\([^[:alnum:]]\)/\1rotegix\2\3/g
s/\b\([Pp]\)rotegeixi\([^[:alnum:]]\)/\1rotegisca\2/g
s/\b\([Pp]\)rotegeixi\([ns]\)\([^[:alnum:]]\)/\1rotegisque\2\3/g
s/\b\([Pp]\)rotegeixo\([^[:alnum:]]\)/\1rotegisc\2/g
s/\b\([Pp]\)rotegís\([^[:alnum:]]\)/\1rotegira\2/g
s/\b\([Pp]\)rotegíssi\([mu]\)\([^[:alnum:]]\)/\1rotegíre\2\3/g
s/\b\([Pp]\)rotegissi\([ns]\)\([^[:alnum:]]\)/\1rotegire\2\3/g
    # desprotegir
    s/\b\([Dd]\)esprotegeix\(e[ns]\|\)\([^[:alnum:]]\)/\1esprotegix\2\3/g
    s/\b\([Dd]\)esprotegeixi\([^[:alnum:]]\)/\1esprotegisca\2/g
    s/\b\([Dd]\)esprotegeixi\([ns]\)\([^[:alnum:]]\)/\1esprotegisque\2\3/g
    s/\b\([Dd]\)esprotegeixo\([^[:alnum:]]\)/\1esprotegisc\2/g
    s/\b\([Dd]\)esprotegís\([^[:alnum:]]\)/\1esprotegira\2/g
    s/\b\([Dd]\)esprotegíssi\([mu]\)\([^[:alnum:]]\)/\1esprotegíre\2\3/g
    s/\b\([Dd]\)esprotegissi\([ns]\)\([^[:alnum:]]\)/\1esprotegire\2\3/g
# provar
s/\b\([Pp]\)rovés\([^[:alnum:]]\)/\1rovara\2/g
s/\b\([Pp]\)rovéssi\([mu]\)\([^[:alnum:]]\)/\1rovàre\2\3/g
s/\b\([Pp]\)rovessi\([ns]\)\([^[:alnum:]]\)/\1rovare\2\3/g
s/\b\([Pp]\)rov\([io]\)\([^[:alnum:]]\)/\1rove\3/g
s/\b\([Pp]\)rovi\([ns]\)\([^[:alnum:]]\)/\1rove\2\3/g
    # aprovar
    s/\b\([Aa]\)provés\([^[:alnum:]]\)/\1provara\2/g
    s/\b\([Aa]\)provéssi\([mu]\)\([^[:alnum:]]\)/\1provàre\2\3/g
    s/\b\([Aa]\)provessi\([ns]\)\([^[:alnum:]]\)/\1provare\2\3/g
    s/\b\([Aa]\)prov\([io]\)\([^[:alnum:]]\)/\1prove\3/g
    s/\b\([Aa]\)provi\([ns]\)\([^[:alnum:]]\)/\1prove\2\3/g
    # comprovar
    s/\b\([Cc]\)omprovés\([^[:alnum:]]\)/\1omprovara\2/g
    s/\b\([Cc]\)omprovéssi\([mu]\)\([^[:alnum:]]\)/\1omprovàre\2\3/g
    s/\b\([Cc]\)omprovessi\([ns]\)\([^[:alnum:]]\)/\1omprovare\2\3/g
    s/\b\([Cc]\)omprov\([io]\)\([^[:alnum:]]\)/\1omprove\3/g
    s/\b\([Cc]\)omprovi\([ns]\)\([^[:alnum:]]\)/\1omprove\2\3/g
    # desaprovar
    s/\b\([Dd]\)esaprovés\([^[:alnum:]]\)/\1esaprovara\2/g
    s/\b\([Dd]\)esaprovéssi\([mu]\)\([^[:alnum:]]\)/\1esaprovàre\2\3/g
    s/\b\([Dd]\)esaprovessi\([ns]\)\([^[:alnum:]]\)/\1esaprovare\2\3/g
    s/\b\([Dd]\)esaprov\([io]\)\([^[:alnum:]]\)/\1esaprove\3/g
    s/\b\([Dd]\)esaprovi\([ns]\)\([^[:alnum:]]\)/\1esaprove\2\3/g
# proveir
s/\b\([Pp]\)roveeix\(e[ns]\|\)\([^[:alnum:]]\)/\1roveïx\2\3/g
s/\b\([Pp]\)roveeixi\([^[:alnum:]]\)/\1roveïsca\2/g
s/\b\([Pp]\)roveeixi\([ns]\)\([^[:alnum:]]\)/\1roveïsque\2\3/g
s/\b\([Pp]\)roveeixo\([^[:alnum:]]\)/\1roveïsc\2/g
s/\b\([Pp]\)roveís\([^[:alnum:]]\)/\1roveïra\2/g
s/\b\([Pp]\)roveíssi\([mu]\)\([^[:alnum:]]\)/\1roveíre\2\3/g
s/\b\([Pp]\)roveïssi\([ns]\)\([^[:alnum:]]\)/\1roveïre\2\3/g
# provocar
s/\b\([Pp]\)rovoqués\([^[:alnum:]]\)/\1rovocara\2/g
s/\b\([Pp]\)rovoquéssi\([mu]\)\([^[:alnum:]]\)/\1rovocàre\2\3/g
s/\b\([Pp]\)rovoquessi\([ns]\)\([^[:alnum:]]\)/\1rovocare\2\3/g
s/\b\([Pp]\)rovoqui\([ns]\|\)\([^[:alnum:]]\)/\1rovoque\2\3/g
s/\b\([Pp]\)rovoco\([^[:alnum:]]\)/\1rovoque\2/g
# publicar
s/\b\([Pp]\)ubliqués\([^[:alnum:]]\)/\1ublicara\2/g
s/\b\([Pp]\)ubliquéssi\([mu]\)\([^[:alnum:]]\)/\1ublicàre\2\3/g
s/\b\([Pp]\)ubliquessi\([ns]\)\([^[:alnum:]]\)/\1ublicare\2\3/g
s/\b\([Pp]\)ubliqui\([ns]\|\)\([^[:alnum:]]\)/\1ublique\2\3/g
s/\b\([Pp]\)ublico\([^[:alnum:]]\)/\1ublique\2/g
# pujar
# s/\bPuja\([^[:alnum:]]\)/Amunt\1/g
s/\b\([Pp]\)ugués\([^[:alnum:]]\)/\1ujara\2/g
s/\b\([Pp]\)ugéssi\([mu]\)\([^[:alnum:]]\)/\1ujàre\2\3/g
s/\b\([Pp]\)ugessi\([ns]\)\([^[:alnum:]]\)/\1ujare\2\3/g
s/\b\([Pp]\)ugi\([ns]\|\)\([^[:alnum:]]\)/\1uge\2\3/g
s/\b\([Pp]\)ujo\([^[:alnum:]]\)/\1uge\2/g
# pul·lular
s/\b\([Pp]\)ul·lulés\([^[:alnum:]]\)/\1ul·lulara\2/g
s/\b\([Pp]\)ul·luléssi\([mu]\)\([^[:alnum:]]\)/\1ul·lulàre\2\3/g
s/\b\([Pp]\)ul·lulessi\([ns]\)\([^[:alnum:]]\)/\1ul·lulare\2\3/g
s/\b\([Pp]\)ul·lul\([io]\)\([^[:alnum:]]\)/\1ul·lule\3/g
s/\b\([Pp]\)ul·luli\([ns]\)\([^[:alnum:]]\)/\1ul·lule\2\3/g
# purgar
s/\b\([Pp]\)urgués\([^[:alnum:]]\)/\1urgara\2/g
s/\b\([Pp]\)urguéssi\([mu]\)\([^[:alnum:]]\)/\1urgàre\2\3/g
s/\b\([Pp]\)urguessi\([ns]\)\([^[:alnum:]]\)/\1urgare\2\3/g
s/\b\([Pp]\)urgui\([ns]\|\)\([^[:alnum:]]\)/\1urgue\2\3/g
s/\b\([Pp]\)urgo\([^[:alnum:]]\)/\1urgue\2/g
s/\bPutxinel·li\(s\|\)\([^[:alnum:]]\)/Ninot\1\2/g
s/\bputxinel·li\(s\|\)\([^[:alnum:]]\)/ninot\1\2/g
# q
#
    s/\b\([Qq]\)uadre\(s\|\)\([^[:alnum:]]\)/\1uadro\2\3/g
    s/\b\([Rr]\)equadre\(s\|\)\([^[:alnum:]]\)/\1equadro\2\3/g
# quadrar (esmenes)
s/\b\([Qq]\)uadrés\([^[:alnum:]]\)/\1uadrara\2/g
s/\b\([Qq]\)uadréssi\([mu]\)\([^[:alnum:]]\)/\1uadràre\2\3/g
s/\b\([Qq]\)uadressi\([ns]\)\([^[:alnum:]]\)/\1uadrare\2\3/g
s/\b\([Qq]\)uadri\([^[:alnum:]]\)/\1uadre\2/g
s/\b\([Qq]\)uadri\([ns]\)\([^[:alnum:]]\)/\1uadre\2\3/g
# s/\b\([Qq]\)uadro\([^[:alnum:]]\)/\1uadre\3/g
    # enquadrar
    s/\b\([Ee]\)nquadrés\([^[:alnum:]]\)/\1nquadrara\2/g
    s/\b\([Ee]\)nquadréssi\([mu]\)\([^[:alnum:]]\)/\1nquadràre\2\3/g
    s/\b\([Ee]\)nquadressi\([ns]\)\([^[:alnum:]]\)/\1nquadrare\2\3/g
    s/\b\([Ee]\)nquadr\([io]\)\([^[:alnum:]]\)/\1nquadre\3/g
    s/\b\([Ee]\)nquadri\([ns]\)\([^[:alnum:]]\)/\1nquadre\2\3/g
s/\bQuant al\([^[:alnum:]]\)/Quant a\1/g
# quedar
s/\b\([Qq]\)uedés\([^[:alnum:]]\)/\1uedara\2/g
s/\b\([Qq]\)uedéssi\([mu]\)\([^[:alnum:]]\)/\1uedàre\2\3/g
s/\b\([Qq]\)uedessi\([ns]\)\([^[:alnum:]]\)/\1uedare\2\3/g
s/\b\([Qq]\)ued\([io]\)\([^[:alnum:]]\)/\1uede\3/g
s/\b\([Qq]\)uedi\([ns]\)\([^[:alnum:]]\)/\1uede\2\3/g
# queixar
s/\b\([Qq]\)ueixés\([^[:alnum:]]\)/\1ueixara\2/g
s/\b\([Qq]\)ueixéssi\([mu]\)\([^[:alnum:]]\)/\1ueixàre\2\3/g
s/\b\([Qq]\)ueixessi\([ns]\)\([^[:alnum:]]\)/\1ueixare\2\3/g
s/\b\([Qq]\)ueix\([io]\)\([^[:alnum:]]\)/\1ueixe\3/g
s/\b\([Qq]\)ueixi\([ns]\)\([^[:alnum:]]\)/\1ueixe\2\3/g
s/\bQuelcom\([^[:alnum:]]\)/Alguna cosa\1/g
s/\bquelcom\([^[:alnum:]]\)/alguna cosa\1/g
# r
#
# rasteritzar
s/\b\([Rr]\)asteritzés\([^[:alnum:]]\)/\1asteritzara\2/g
s/\b\([Rr]\)asteritzéssi\([mu]\)\([^[:alnum:]]\)/\1asteritzàre\2\3/g
s/\b\([Rr]\)asteritzessi\([ns]\)\([^[:alnum:]]\)/\1asteritzare\2\3/g
s/\b\([Rr]\)asteritz\([io]\)\([^[:alnum:]]\)/\1asteritze\3/g
s/\b\([Rr]\)asteritzi\([ns]\)\([^[:alnum:]]\)/\1asteritze\2\3/g
# rastrejar
s/\b\([Rr]\)astregés\([^[:alnum:]]\)/\1astrejara\2/g
s/\b\([Rr]\)astregéssi\([mu]\)\([^[:alnum:]]\)/\1astrejàre\2\3/g
s/\b\([Rr]\)astregessi\([ns]\)\([^[:alnum:]]\)/\1astrejare\2\3/g
s/\b\([Rr]\)astregi\([ns]\|\)\([^[:alnum:]]\)/\1astrege\2\3/g
s/\b\([Rr]\)astrejo\([^[:alnum:]]\)/\1astrege\2/g
# realitzar
s/\b\([Rr]\)ealitzés\([^[:alnum:]]\)/\1ealitzara\2/g
s/\b\([Rr]\)ealitzéssi\([mu]\)\([^[:alnum:]]\)/\1ealitzàre\2\3/g
s/\b\([Rr]\)ealitzessi\([ns]\)\([^[:alnum:]]\)/\1ealitzare\2\3/g
s/\b\([Rr]\)ealitz\([io]\)\([^[:alnum:]]\)/\1ealitze\3/g
s/\b\([Rr]\)ealitzi\([ns]\)\([^[:alnum:]]\)/\1ealitze\2\3/g
# rebre
s/\b\([Rr]\)ebés\([^[:alnum:]]\)/\1ebera\2/g
s/\b\([Rr]\)ebéssi\([mu]\)\([^[:alnum:]]\)/\1ebére\2\3/g
s/\b\([Rr]\)ebessi\([ns]\)\([^[:alnum:]]\)/\1ebere\2\3/g
s/\b\([Rr]\)ebi\([^[:alnum:]]\)/\1eba\2/g
s/\b\([Rr]\)ebi\([ns]\)\([^[:alnum:]]\)/\1ebe\2\3/g
s/\b\([Rr]\)ebo\([^[:alnum:]]\)/\1ep\2/g
# rebutjar
s/\b\([Rr]\)ebutgés\([^[:alnum:]]\)/\1ebutjara\2/g
s/\b\([Rr]\)ebutgéssi\([mu]\)\([^[:alnum:]]\)/\1ebutjàre\2\3/g
s/\b\([Rr]\)ebutgessi\([ns]\)\([^[:alnum:]]\)/\1ebutjare\2\3/g
s/\b\([Rr]\)ebutgi\([ns]\|\)\([^[:alnum:]]\)/\1ebutge\2\3/g
s/\b\([Rr]\)ebutjo\([^[:alnum:]]\)/\1ebutge\2/g
    # refusar
    s/\b\([Rr]\)efusés\([^[:alnum:]]\)/\1efusara\2/g
    s/\b\([Rr]\)efuséssi\([mu]\)\([^[:alnum:]]\)/\1efusàre\2\3/g
    s/\b\([Rr]\)efusessi\([ns]\)\([^[:alnum:]]\)/\1efusare\2\3/g
    s/\b\([Rr]\)efus\([io]\)\([^[:alnum:]]\)/\1efuse\3/g
    s/\b\([Rr]\)efusi\([ns]\)\([^[:alnum:]]\)/\1efuse\2\3/g
# recol·lectar
s/\b\([Rr]\)ecol·lectés\([^[:alnum:]]\)/\1ecol·lectara\2/g
s/\b\([Rr]\)ecol·lectéssi\([mu]\)\([^[:alnum:]]\)/\1ecol·lectàre\2\3/g
s/\b\([Rr]\)ecol·lectessi\([ns]\)\([^[:alnum:]]\)/\1ecol·lectare\2\3/g
s/\b\([Rr]\)ecol·lect\([io]\)\([^[:alnum:]]\)/\1ecol·lecte\3/g
s/\b\([Rr]\)ecol·lecti\([ns]\)\([^[:alnum:]]\)/\1ecol·lecte\2\3/g
# recolzar
s/\b\([Rr]\)ecolzés\([^[:alnum:]]\)/\1ecolzara\2/g
s/\b\([Rr]\)ecolzéssi\([mu]\)\([^[:alnum:]]\)/\1ecolzàre\2\3/g
s/\b\([Rr]\)ecolzessi\([ns]\)\([^[:alnum:]]\)/\1ecolzare\2\3/g
s/\b\([Rr]\)ecolz\([io]\)\([^[:alnum:]]\)/\1ecoze\3/g
s/\b\([Rr]\)ecolzi\([ns]\)\([^[:alnum:]]\)/\1ecoze\2\3/g
# recopilar
s/\b\([Rr]\)ecopilés\([^[:alnum:]]\)/\1ecopilara\2/g
s/\b\([Rr]\)ecopiléssi\([mu]\)\([^[:alnum:]]\)/\1ecopilàre\2\3/g
s/\b\([Rr]\)ecopilessi\([ns]\)\([^[:alnum:]]\)/\1ecopilare\2\3/g
s/\b\([Rr]\)ecopil\([io]\)\([^[:alnum:]]\)/\1ecopile\3/g
s/\b\([Rr]\)ecopili\([ns]\)\([^[:alnum:]]\)/\1ecopile\2\3/g
# recordar
s/\b\([Rr]\)ecordés\([^[:alnum:]]\)/\1ecordara\2/g
s/\b\([Rr]\)ecordéssi\([mu]\)\([^[:alnum:]]\)/\1ecordàre\2\3/g
s/\b\([Rr]\)ecordessi\([ns]\)\([^[:alnum:]]\)/\1ecordare\2\3/g
s/\b\([Rr]\)ecord\([io]\)\([^[:alnum:]]\)/\1ecorde\3/g
s/\b\([Rr]\)ecordi\([ns]\)\([^[:alnum:]]\)/\1ecorde\2\3/g
# recular
s/\b\([Rr]\)eculés\([^[:alnum:]]\)/\1eculara\2/g
s/\b\([Rr]\)eculéssi\([mu]\)\([^[:alnum:]]\)/\1eculàre\2\3/g
s/\b\([Rr]\)eculessi\([ns]\)\([^[:alnum:]]\)/\1eculare\2\3/g
s/\b\([Rr]\)ecul\([io]\)\([^[:alnum:]]\)/\1ecule\3/g
s/\b\([Rr]\)eculi\([ns]\)\([^[:alnum:]]\)/\1ecule\2\3/g
# recuperar
s/\b\([Rr]\)ecuperés\([^[:alnum:]]\)/\1ecuperara\2/g
s/\b\([Rr]\)ecuperéssi\([mu]\)\([^[:alnum:]]\)/\1ecuperàre\2\3/g
s/\b\([Rr]\)ecuperessi\([ns]\)\([^[:alnum:]]\)/\1ecuperare\2\3/g
s/\b\([Rr]\)ecuper\([io]\)\([^[:alnum:]]\)/\1ecupere\3/g
s/\b\([Rr]\)ecuperi\([ns]\)\([^[:alnum:]]\)/\1ecupere\2\3/g
# reduir
s/\b\([Rr]\)edueix\(e[ns]\|\)\([^[:alnum:]]\)/\1eduïx\2\3/g
s/\b\([Rr]\)edueixi\([^[:alnum:]]\)/\1eduïsca\2/g
s/\b\([Rr]\)edueixi\([ns]\)\([^[:alnum:]]\)/\1eduïsque\2\3/g
s/\b\([Rr]\)edueixo\([^[:alnum:]]\)/\1eduïsc\2/g
s/\b\([Rr]\)eduís\([^[:alnum:]]\)/\1eduïra\2/g
s/\b\([Rr]\)eduíssi\([mu]\)\([^[:alnum:]]\)/\1eduíre\2\3/g
s/\b\([Rr]\)eduïssi\([ns]\)\([^[:alnum:]]\)/\1eduïre\2\3/g
# referenciar
s/\b\([Rr]\)eferenciés\([^[:alnum:]]\)/\1eferenciara\2/g
s/\b\([Rr]\)eferenciéssi\([mu]\)\([^[:alnum:]]\)/\1eferenciàre\2\3/g
s/\b\([Rr]\)eferenciessi\([ns]\)\([^[:alnum:]]\)/\1eferenciare\2\3/g
s/\b\([Rr]\)eferenci\([ïo]\)\([^[:alnum:]]\)/\1eferencie\3/g
s/\b\([Rr]\)eferenciï\([ns]\)\([^[:alnum:]]\)/\1eferencie\2\3/g
# reflectir
s/\b\([Rr]\)eflecteix\(e[ns]\|\)\([^[:alnum:]]\)/\1eflectix\2\3/g
s/\b\([Rr]\)eflecteixi\([^[:alnum:]]\)/\1eflectisca\2/g
s/\b\([Rr]\)eflecteixi\([ns]\)\([^[:alnum:]]\)/\1eflectisque\2\3/g
s/\b\([Rr]\)eflecteixo\([^[:alnum:]]\)/\1eflectisc\2/g
s/\b\([Rr]\)eflectís\([^[:alnum:]]\)/\1eflectira\2/g
s/\b\([Rr]\)eflectíssi\([mu]\)\([^[:alnum:]]\)/\1eflectíre\2\3/g
s/\b\([Rr]\)eflectissi\([ns]\)\([^[:alnum:]]\)/\1eflectire\2\3/g
# refrescar
s/\b\([Rr]\)efresqués\([^[:alnum:]]\)/\1efrescara\2/g
s/\b\([Rr]\)efresquéssi\([mu]\)\([^[:alnum:]]\)/\1efrescàre\2\3/g
s/\b\([Rr]\)efresquessi\([ns]\)\([^[:alnum:]]\)/\1efrescare\2\3/g
s/\b\([Rr]\)efresqui\([^[:alnum:]]\)/\1efresque\2/g
s/\b\([Rr]\)efresqui\([ns]\)\([^[:alnum:]]\)/\1efresque\2\3/g
s/\b\([Rr]\)efresco\([^[:alnum:]]\)/\1efresque\2/g
# regionalitzar
s/\b\([Rr]\)egionalitzés\([^[:alnum:]]\)/\1egionalitzara\2/g
s/\b\([Rr]\)egionalitzéssi\([mu]\)\([^[:alnum:]]\)/\1egionalitzàre\2\3/g
s/\b\([Rr]\)egionalitzessi\([ns]\)\([^[:alnum:]]\)/\1egionalitzare\2\3/g
s/\b\([Rr]\)egionalitz\([io]\)\([^[:alnum:]]\)/\1egionalitze\3/g
s/\b\([Rr]\)egionalitzi\([ns]\)\([^[:alnum:]]\)/\1egionalitze\2\3/g
# regir
s/\b\([Rr]\)egeix\(e[ns]\|\)\([^[:alnum:]]\)/\1egix\2\3/g
s/\b\([Rr]\)egeixi\([^[:alnum:]]\)/\1egisca\2/g
s/\b\([Rr]\)egeixi\([ns]\)\([^[:alnum:]]\)/\1egisque\2\3/g
s/\b\([Rr]\)egeixo\([^[:alnum:]]\)/\1egisc\2/g
s/\b\([Rr]\)egís\([^[:alnum:]]\)/\1egira\2/g
s/\b\([Rr]\)egíssi\([mu]\)\([^[:alnum:]]\)/\1egíre\2\3/g
s/\b\([Rr]\)egissi\([ns]\)\([^[:alnum:]]\)/\1egire\2\3/g
# registrar
s/\b\([Rr]\)egistrés\([^[:alnum:]]\)/\1egistrara\2/g
s/\b\([Rr]\)egistréssi\([mu]\)\([^[:alnum:]]\)/\1egistràre\2\3/g
s/\b\([Rr]\)egistressi\([ns]\)\([^[:alnum:]]\)/\1egistrare\2\3/g
s/\b\([Rr]\)egistr\([io]\)\([^[:alnum:]]\)/\1egistre\3/g
s/\b\([Rr]\)egistri\([ns]\)\([^[:alnum:]]\)/\1egistre\2\3/g
# reglamentar
s/\b\([Rr]\)eglamentés\([^[:alnum:]]\)/\1eglamentara\2/g
s/\b\([Rr]\)eglamentéssi\([mu]\)\([^[:alnum:]]\)/\1eglamentàre\2\3/g
s/\b\([Rr]\)eglamentessi\([ns]\)\([^[:alnum:]]\)/\1eglamentare\2\3/g
s/\b\([Rr]\)eglament\([io]\)\([^[:alnum:]]\)/\1eglamente\3/g
s/\b\([Rr]\)eglamenti\([ns]\)\([^[:alnum:]]\)/\1eglamente\2\3/g
# relaxar
s/\b\([Rr]\)elaxés\([^[:alnum:]]\)/\1elaxara\2/g
s/\b\([Rr]\)elaxéssi\([mu]\)\([^[:alnum:]]\)/\1elaxàre\2\3/g
s/\b\([Rr]\)elaxessi\([ns]\)\([^[:alnum:]]\)/\1elaxare\2\3/g
s/\b\([Rr]\)elax\([io]\)\([^[:alnum:]]\)/\1elaxe\3/g
s/\b\([Rr]\)elaxi\([ns]\)\([^[:alnum:]]\)/\1elaxe\2\3/g
# remorejar
s/\b\([Rr]\)emoregés\([^[:alnum:]]\)/\1emorejara\2/g
s/\b\([Rr]\)emoregéssi\([mu]\)\([^[:alnum:]]\)/\1emorejàre\2\3/g
s/\b\([Rr]\)emoregessi\([ns]\)\([^[:alnum:]]\)/\1emorejare\2\3/g
s/\b\([Rr]\)emoregi\([ns]\|\)\([^[:alnum:]]\)/\1emorege\2\3/g
s/\b\([Rr]\)emorejo\([^[:alnum:]]\)/\1emorege\2/g
# renderitzar
s/\b\([Rr]\)enderitzés\([^[:alnum:]]\)/\1enderitzara\2/g
s/\b\([Rr]\)enderitzéssi\([mu]\)\([^[:alnum:]]\)/\1enderitzàre\2\3/g
s/\b\([Rr]\)enderitzessi\([ns]\)\([^[:alnum:]]\)/\1enderitzare\2\3/g
s/\b\([Rr]\)enderitz\([io]\)\([^[:alnum:]]\)/\1enderitze\3/g
s/\b\([Rr]\)enderitzi\([ns]\)\([^[:alnum:]]\)/\1enderitze\2\3/g
# repetir
s/\b\([Rr]\)epeteix\(e[ns]\|\)\([^[:alnum:]]\)/\1epetix\2\3/g
s/\b\([Rr]\)epeteixi\([^[:alnum:]]\)/\1epetisca\2/g
s/\b\([Rr]\)epeteixi\([ns]\)\([^[:alnum:]]\)/\1epetisque\2\3/g
s/\b\([Rr]\)epeteixo\([^[:alnum:]]\)/\1epetisc\2/g
s/\b\([Rr]\)epetís\([^[:alnum:]]\)/\1epetira\2/g
s/\b\([Rr]\)epetíssi\([mu]\)\([^[:alnum:]]\)/\1epetíre\2\3/g
s/\b\([Rr]\)epetissi\([ns]\)\([^[:alnum:]]\)/\1epetire\2\3/g
# requerir
s/\b\([Rr]\)equereix\(e[ns]\|\)\([^[:alnum:]]\)/\1equerix\2\3/g
s/\b\([Rr]\)equereixi\([^[:alnum:]]\)/\1equerisca\2/g
s/\b\([Rr]\)equereixi\([ns]\)\([^[:alnum:]]\)/\1equerisque\2\3/g
s/\b\([Rr]\)equereixo\([^[:alnum:]]\)/\1equerisc\2/g
s/\b\([Rr]\)equerís\([^[:alnum:]]\)/\1equerira\2/g
s/\b\([Rr]\)equeríssi\([mu]\)\([^[:alnum:]]\)/\1equeríre\2\3/g
s/\b\([Rr]\)equerissi\([ns]\)\([^[:alnum:]]\)/\1equerire\2\3/g
# rescatar
s/\b\([Rr]\)escatés\([^[:alnum:]]\)/\1escatara\2/g
s/\b\([Rr]\)escatéssi\([mu]\)\([^[:alnum:]]\)/\1escatàre\2\3/g
s/\b\([Rr]\)escatessi\([ns]\)\([^[:alnum:]]\)/\1escatare\2\3/g
s/\b\([Rr]\)escat\([io]\)\([^[:alnum:]]\)/\1escate\3/g
s/\b\([Rr]\)escati\([ns]\)\([^[:alnum:]]\)/\1escate\2\3/g
# residir
s/\b\([Rr]\)esideix\(e[ns]\|\)\([^[:alnum:]]\)/\1esidix\2\3/g
s/\b\([Rr]\)esideixi\([^[:alnum:]]\)/\1esidisca\2/g
s/\b\([Rr]\)esideixi\([ns]\)\([^[:alnum:]]\)/\1esidisque\2\3/g
s/\b\([Rr]\)esideixo\([^[:alnum:]]\)/\1esidisc\2/g
s/\b\([Rr]\)esidís\([^[:alnum:]]\)/\1esidira\2/g
s/\b\([Rr]\)esidíssi\([mu]\)\([^[:alnum:]]\)/\1esidíre\2\3/g
s/\b\([Rr]\)esidissi\([ns]\)\([^[:alnum:]]\)/\1esidire\2\3/g
    # presidir
    s/\b\([Pp]\)resideix\(e[ns]\|\)\([^[:alnum:]]\)/\1residix\2\3/g
    s/\b\([Pp]\)resideixi\([^[:alnum:]]\)/\1residisca\2/g
    s/\b\([Pp]\)resideixi\([ns]\)\([^[:alnum:]]\)/\1residisque\2\3/g
    s/\b\([Pp]\)resideixo\([^[:alnum:]]\)/\1residisc\2/g
    s/\b\([Pp]\)residís\([^[:alnum:]]\)/\1residira\2/g
    s/\b\([Pp]\)residíssi\([mu]\)\([^[:alnum:]]\)/\1residíre\2\3/g
    s/\b\([Pp]\)residissi\([ns]\)\([^[:alnum:]]\)/\1residire\2\3/g
# resistir
s/\b\([Rr]\)esisteix\(e[ns]\|\)\([^[:alnum:]]\)/\1esistix\2\3/g
s/\b\([Rr]\)esisteixi\([^[:alnum:]]\)/\1esistisca\2/g
s/\b\([Rr]\)esisteixi\([ns]\)\([^[:alnum:]]\)/\1esistisque\2\3/g
s/\b\([Rr]\)esisteixo\([^[:alnum:]]\)/\1esistisc\2/g
s/\b\([Rr]\)esistís\([^[:alnum:]]\)/\1esistira\2/g
s/\b\([Rr]\)esistíssi\([mu]\)\([^[:alnum:]]\)/\1esistíre\2\3/g
s/\b\([Rr]\)esistissi\([ns]\)\([^[:alnum:]]\)/\1esistire\2\3/g
# resoldre
s/\b\([Rr]\)esolgués\([^[:alnum:]]\)/\1esolguera\2/g
s/\b\([Rr]\)esolguéssi\([mu]\)\([^[:alnum:]]\)/\1esolguére\2\3/g
s/\b\([Rr]\)esolguessi\([ns]\)\([^[:alnum:]]\)/\1esolguere\2\3/g
s/\b\([Rr]\)esolgui\([^[:alnum:]]\)/\1esolga\2/g
s/\b\([Rr]\)esolgui\([ns]\)\([^[:alnum:]]\)/\1esolgue\2\3/g
# respectar
s/\b\([Rr]\)espectés\([^[:alnum:]]\)/\1espectara\2/g
s/\b\([Rr]\)espectéssi\([mu]\)\([^[:alnum:]]\)/\1espectàre\2\3/g
s/\b\([Rr]\)espectessi\([ns]\)\([^[:alnum:]]\)/\1espectare\2\3/g
s/\b\([Rr]\)espect\([io]\)\([^[:alnum:]]\)/\1especte\3/g
s/\b\([Rr]\)especti\([ns]\)\([^[:alnum:]]\)/\1especte\2\3/g
# respondre
s/\b\([Rr]\)espongués\([^[:alnum:]]\)/\1esponguera\2/g
s/\b\([Rr]\)esponguéssi\([mu]\)\([^[:alnum:]]\)/\1esponguére\2\3/g
s/\b\([Rr]\)esponguessi\([ns]\)\([^[:alnum:]]\)/\1esponguere\2\3/g
s/\b\([Rr]\)espongui\([^[:alnum:]]\)/\1esponga\2/g
s/\b\([Rr]\)espongui\([ns]\)\([^[:alnum:]]\)/\1espongue\2\3/g
    # correspondre
    s/\b\([Cc]\)orrespongués\([^[:alnum:]]\)/\1orresponguera\2/g
    s/\b\([Cc]\)orresponguéssi\([mu]\)\([^[:alnum:]]\)/\1orresponguére\2\3/g
    s/\b\([Cc]\)orresponguessi\([ns]\)\([^[:alnum:]]\)/\1orresponguere\2\3/g
    s/\b\([Cc]\)orrespongui\([^[:alnum:]]\)/\1orresponga\2/g
    s/\b\([Cc]\)orrespongui\([ns]\)\([^[:alnum:]]\)/\1orrespongue\2\3/g
# restar
s/\b\([Rr]\)estés\([^[:alnum:]]\)/\1estara\2/g
s/\b\([Rr]\)estéssi\([mu]\)\([^[:alnum:]]\)/\1estàre\2\3/g
s/\b\([Rr]\)estessi\([ns]\)\([^[:alnum:]]\)/\1estare\2\3/g
s/\b\([Rr]\)est\([io]\)\([^[:alnum:]]\)/\1este\3/g
s/\b\([Rr]\)esti\([ns]\)\([^[:alnum:]]\)/\1este\2\3/g
# restaurar
s/\b\([Rr]\)estaurés\([^[:alnum:]]\)/\1estaurara\2/g
s/\b\([Rr]\)estauréssi\([mu]\)\([^[:alnum:]]\)/\1estauràre\2\3/g
s/\b\([Rr]\)estauressi\([ns]\)\([^[:alnum:]]\)/\1estaurare\2\3/g
s/\b\([Rr]\)estaur\([io]\)\([^[:alnum:]]\)/\1estaure\3/g
s/\b\([Rr]\)estauri\([ns]\)\([^[:alnum:]]\)/\1estaure\2\3/g
# restituir
s/\b\([Rr]\)estitueix\(e[ns]\|\)\([^[:alnum:]]\)/\1estituïx\2\3/g
s/\b\([Rr]\)estitueixi\([^[:alnum:]]\)/\1estituïsca\2/g
s/\b\([Rr]\)estitueixi\([ns]\)\([^[:alnum:]]\)/\1estituisque\2\3/g
s/\b\([Rr]\)estitueixo\([^[:alnum:]]\)/\1estituïsc\2/g
s/\b\([Rr]\)estituís\([^[:alnum:]]\)/\1estituïra\2/g
s/\b\([Rr]\)estituíssi\([mu]\)\([^[:alnum:]]\)/\1estituíre\2\3/g
s/\b\([Rr]\)estituïssi\([ns]\)\([^[:alnum:]]\)/\1estituïre\2\3/g
# restringir
s/\b\([Rr]\)estringeix\(e[ns]\|\)\([^[:alnum:]]\)/\1estringix\2\3/g
s/\b\([Rr]\)estringeixi\([^[:alnum:]]\)/\1estringisca\2/g
s/\b\([Rr]\)estringeixi\([ns]\)\([^[:alnum:]]\)/\1estringisque\2\3/g
s/\b\([Rr]\)estringeixo\([^[:alnum:]]\)/\1estringisc\2/g
s/\b\([Rr]\)estringís\([^[:alnum:]]\)/\1estringira\2/g
s/\b\([Rr]\)estringíssi\([mu]\)\([^[:alnum:]]\)/\1estringíre\2\3/g
s/\b\([Rr]\)estringissi\([ns]\)\([^[:alnum:]]\)/\1estringire\2\3/g
# resultar
s/\b\([Rr]\)esultés\([^[:alnum:]]\)/\1esultara\2/g
s/\b\([Rr]\)esultéssi\([mu]\)\([^[:alnum:]]\)/\1esultàre\2\3/g
s/\b\([Rr]\)esultessi\([ns]\)\([^[:alnum:]]\)/\1esultare\2\3/g
s/\b\([Rr]\)esult\([io]\)\([^[:alnum:]]\)/\1esulte\3/g
s/\b\([Rr]\)esulti\([ns]\)\([^[:alnum:]]\)/\1esulte\2\3/g
# resumir
s/\b\([Rr]\)esumeix\(e[ns]\|\)\([^[:alnum:]]\)/\1esumix\2\3/g
s/\b\([Rr]\)esumeixi\([^[:alnum:]]\)/\1esumisca\2/g
s/\b\([Rr]\)esumeixi\([ns]\)\([^[:alnum:]]\)/\1esumisque\2\3/g
s/\b\([Rr]\)esumeixo\([^[:alnum:]]\)/\1esumisc\2/g
s/\b\([Rr]\)esumís\([^[:alnum:]]\)/\1esumira\2/g
s/\b\([Rr]\)esumíssi\([mu]\)\([^[:alnum:]]\)/\1esumíre\2\3/g
s/\b\([Rr]\)esumissi\([ns]\)\([^[:alnum:]]\)/\1esumire\2\3/g
# retorn de carro -> tecla de retorn (esmenes)
# revertir
s/\b\([Rr]\)everteix\(e[ns]\|\)\([^[:alnum:]]\)/\1evertix\2\3/g
s/\b\([Rr]\)everteixi\([^[:alnum:]]\)/\1evertisca\2/g
s/\b\([Rr]\)everteixi\([ns]\)\([^[:alnum:]]\)/\1evertisque\2\3/g
s/\b\([Rr]\)everteixo\([^[:alnum:]]\)/\1evertisc\2/g
s/\b\([Rr]\)evertís\([^[:alnum:]]\)/\1evertira\2/g
s/\b\([Rr]\)evertíssi\([mu]\)\([^[:alnum:]]\)/\1evertíre\2\3/g
s/\b\([Rr]\)evertissi\([ns]\)\([^[:alnum:]]\)/\1evertire\2\3/g
# revocar
s/\b\([Rr]\)evoqués\([^[:alnum:]]\)/\1evocara\2/g
s/\b\([Rr]\)evoquéssi\([mu]\)\([^[:alnum:]]\)/\1evocàre\2\3/g
s/\b\([Rr]\)evoquessi\([ns]\)\([^[:alnum:]]\)/\1evocare\2\3/g
s/\b\([Rr]\)evoqui\([^[:alnum:]]\)/\1evoque\2/g
s/\b\([Rr]\)evoqui\([ns]\)\([^[:alnum:]]\)/\1evoque\2\3/g
s/\b\([Rr]\)evoco\([^[:alnum:]]\)/\1evoque\2/g
# robar
s/\b\([Rr]\)obés\([^[:alnum:]]\)/\1obara\2/g
s/\b\([Rr]\)obéssi\([mu]\)\([^[:alnum:]]\)/\1obàre\2\3/g
s/\b\([Rr]\)obessi\([ns]\)\([^[:alnum:]]\)/\1obare\2\3/g
s/\b\([Rr]\)ob\([io]\)\([^[:alnum:]]\)/\1obe\3/g
s/\b\([Rr]\)obi\([ns]\)\([^[:alnum:]]\)/\1obe\2\3/g
# romancejar
s/\b\([Rr]\)omancegés\([^[:alnum:]]\)/\1omancejara\2/g
s/\b\([Rr]\)omancegéssi\([mu]\)\([^[:alnum:]]\)/\1omancejàre\2\3/g
s/\b\([Rr]\)omancegessi\([ns]\)\([^[:alnum:]]\)/\1omancejare\2\3/g
s/\b\([Rr]\)omancegi\([ns]\|\)\([^[:alnum:]]\)/\1omancege\2\3/g
s/\b\([Rr]\)omancejo\([^[:alnum:]]\)/\1omancege\2/g
# romandre
s/\b\([Rr]\)omangués\([^[:alnum:]]\)/\1omanguera\2/g
s/\b\([Rr]\)omanguéssi\([mu]\)\([^[:alnum:]]\)/\1omanguére\2\3/g
s/\b\([Rr]\)omanguessi\([ns]\)\([^[:alnum:]]\)/\1omanguere\2\3/g
s/\b\([Rr]\)omangui\([^[:alnum:]]\)/\1omanga\2/g
s/\b\([Rr]\)omangui\([ns]\)\([^[:alnum:]]\)/\1omangue\2\3/g
s/\b\([Rr]\)omanès\([^[:alnum:]]\)/\1omanés\2/g
# romanitzar
s/\b\([Rr]\)omanitzés\([^[:alnum:]]\)/\1omanitzara\2/g
s/\b\([Rr]\)omanitzéssi\([mu]\)\([^[:alnum:]]\)/\1omanitzàre\2\3/g
s/\b\([Rr]\)omanitzessi\([ns]\)\([^[:alnum:]]\)/\1omanitzare\2\3/g
s/\b\([Rr]\)omanitz\([io]\)\([^[:alnum:]]\)/\1omanitze\3/g
s/\b\([Rr]\)omanitzi\([ns]\)\([^[:alnum:]]\)/\1omanitze\2\3/g
# rondar
s/\b\([Rr]\)ondés\([^[:alnum:]]\)/\1ondara\2/g
s/\b\([Rr]\)ondéssi\([mu]\)\([^[:alnum:]]\)/\1ondàre\2\3/g
s/\b\([Rr]\)ondessi\([ns]\)\([^[:alnum:]]\)/\1ondare\2\3/g
s/\b\([Rr]\)ond\([io]\)\([^[:alnum:]]\)/\1onde\3/g
s/\b\([Rr]\)ondi\([ns]\)\([^[:alnum:]]\)/\1onde\2\3/g
    # enrondar
    s/\b\([Ee]\)nrondés\([^[:alnum:]]\)/\1nrondara\2/g
    s/\b\([Ee]\)nrondéssi\([mu]\)\([^[:alnum:]]\)/\1nrondàre\2\3/g
    s/\b\([Ee]\)nrondessi\([ns]\)\([^[:alnum:]]\)/\1nrondare\2\3/g
    s/\b\([Ee]\)nrond\([io]\)\([^[:alnum:]]\)/\1nronde\3/g
    s/\b\([Ee]\)nrondi\([ns]\)\([^[:alnum:]]\)/\1nronde\2\3/g
s/\b\([Rr]\)ony\(ó\|ons]\)\([^[:alnum:]]\)/\1eny\2\3/g
# rossejar
s/\b\([Rr]\)ossegés\([^[:alnum:]]\)/\1ossejara\2/g
s/\b\([Rr]\)ossegéssi\([mu]\)\([^[:alnum:]]\)/\1ossejàre\2\3/g
s/\b\([Rr]\)ossegessi\([ns]\)\([^[:alnum:]]\)/\1ossejare\2\3/g
s/\b\([Rr]\)ossegi\([ns]\|\)\([^[:alnum:]]\)/\1ossege\2\3/g
s/\b\([Rr]\)ossejo\([^[:alnum:]]\)/\1ossege\2/g
# ruixar
s/\b\([Rr]\)uixés\([^[:alnum:]]\)/\1uixara\2/g
s/\b\([Rr]\)uixéssi\([mu]\|\)\([^[:alnum:]]\)/\1uixàre\2\3/g
s/\b\([Rr]\)uixessi\([ns]\|\)\([^[:alnum:]]\)/\1uixare\2\3/g
s/\b\([Rr]\)uix\([io]\)\([^[:alnum:]]\)/\1uixe\3/g
s/\b\([Rr]\)uixi\([ns]\|\)\([^[:alnum:]]\)/\1uixe\2\3/g
# rumorejar
s/\b\([Rr]\)umoregés\([^[:alnum:]]\)/\1umorejara\2/g
s/\b\([Rr]\)umoregéssi\([mu]\)\([^[:alnum:]]\)/\1umorejàre\2\3/g
s/\b\([Rr]\)umoregessi\([ns]\)\([^[:alnum:]]\)/\1umorejare\2\3/g
s/\b\([Rr]\)umoregi\([ns]\|\)\([^[:alnum:]]\)/\1umorege\2\3/g
s/\b\([Rr]\)umorejo\([^[:alnum:]]\)/\1umorege\2/g
# s
#
# saber
s/\b\([Ss]\)abés\([^[:alnum:]]\)/\1abera\2/g
s/\b\([Ss]\)abéssi\([mu]\)\([^[:alnum:]]\)/\1abére\2\3/g
s/\b\([Ss]\)abessi\([ns]\)\([^[:alnum:]]\)/\1abere\2\3/g
s/\b\([Ss]\)àpiga\([^[:alnum:]]\)/\1àpia\2/g
s/\b\([Ss]\)apigue\([mu]\)\([^[:alnum:]]\)/\1apie\2\3/g
s/\b\([Ss]\)àpigue\([ns]\)\([^[:alnum:]]\)/\1àpie\2\3/g
    # assabentar
    s/\b\([Aa]\)ssabentés\([^[:alnum:]]\)/\1ssabentara\2/g
    s/\b\([Aa]\)ssabentéssi\([mu]\)\([^[:alnum:]]\)/\1ssabentàre\2\3/g
    s/\b\([Aa]\)ssabentessi\([ns]\)\([^[:alnum:]]\)/\1ssabentare\2\3/g
    s/\b\([Aa]\)ssabent\([io]\)\([^[:alnum:]]\)/\1ssabente\3/g
    s/\b\([Aa]\)ssabenti\([ns]\)\([^[:alnum:]]\)/\1ssabente\2\3/g
# sacsejar -> sacsar (esmenes)
# sagnar
s/\b\([Ss]\)agnés\([^[:alnum:]]\)/\1agnara\2/g
s/\b\([Ss]\)agnéssi\([mu]\)\([^[:alnum:]]\)/\1agnàre\2\3/g
s/\b\([Ss]\)agnessi\([ns]\)\([^[:alnum:]]\)/\1agnare\2\3/g
s/\b\([Ss]\)agn\([io]\)\([^[:alnum:]]\)/\1agne\3/g
s/\b\([Ss]\)agni\([ns]\)\([^[:alnum:]]\)/\1agne\2\3/g
    # dessagnar
    s/\b\([Dd]\)essagnés\([^[:alnum:]]\)/\1agnara\2/g
    s/\b\([Dd]\)essagnéssi\([mu]\)\([^[:alnum:]]\)/\1essagnàre\2\3/g
    s/\b\([Dd]\)essagnessi\([ns]\)\([^[:alnum:]]\)/\1essagnare\2\3/g
    s/\b\([Dd]\)essagn\([io]\)\([^[:alnum:]]\)/\1essagne\3/g
    s/\b\([Dd]\)essagni\([ns]\)\([^[:alnum:]]\)/\1essagne\2\3/g
    # ensagnar -> ensanguinar (esmenes)
# saltar
s/\b\([Ss]\)altés\([^[:alnum:]]\)/\1altara\2/g
s/\b\([Ss]\)altéssi\([mu]\)\([^[:alnum:]]\)/\1altàre\2\3/g
s/\b\([Ss]\)altessi\([ns]\)\([^[:alnum:]]\)/\1altare\2\3/g
s/\b\([Ss]\)alt\([io]\)\([^[:alnum:]]\)/\1alte\3/g
s/\b\([Ss]\)alti\([ns]\)\([^[:alnum:]]\)/\1alte\2\3/g
    # assaltar
    s/\b\([Aa]\)ssaltés\([^[:alnum:]]\)/\1ssaltara\2/g
    s/\b\([Aa]\)ssaltéssi\([mu]\)\([^[:alnum:]]\)/\1ssaltàre\2\3/g
    s/\b\([Aa]\)ssaltessi\([ns]\)\([^[:alnum:]]\)/\1ssaltare\2\3/g
    s/\b\([Aa]\)ssalt\([io]\)\([^[:alnum:]]\)/\1ssalte\3/g
    s/\b\([Aa]\)ssalti\([ns]\)\([^[:alnum:]]\)/\1ssalte\2\3/g
    # ressaltar
    s/\b\([Rr]\)essaltés\([^[:alnum:]]\)/\1essaltara\2/g
    s/\b\([Rr]\)essaltéssi\([mu]\)\([^[:alnum:]]\)/\1essaltàre\2\3/g
    s/\b\([Rr]\)essaltessi\([ns]\)\([^[:alnum:]]\)/\1essaltare\2\3/g
    s/\b\([Rr]\)essalt\([io]\)\([^[:alnum:]]\)/\1essalte\3/g
    s/\b\([Rr]\)essalti\([ns]\)\([^[:alnum:]]\)/\1essalte\2\3/g
    # sobresaltar
    s/\b\([Ss]\)obresaltés\([^[:alnum:]]\)/\1obresaltara\2/g
    s/\b\([Ss]\)obresaltéssi\([mu]\)\([^[:alnum:]]\)/\1obresaltàre\2\3/g
    s/\b\([Ss]\)obresaltessi\([ns]\)\([^[:alnum:]]\)/\1obresaltare\2\3/g
    s/\b\([Ss]\)obresalt\([io]\)\([^[:alnum:]]\)/\1obresalte\3/g
    s/\b\([Ss]\)obresalti\([ns]\)\([^[:alnum:]]\)/\1obresalte\2\3/g
# sedimentar
s/\b\([Ss]\)edimentés\([^[:alnum:]]\)/\1edimentara\2/g
s/\b\([Ss]\)edimentéssi\([mu]\)\([^[:alnum:]]\)/\1edimentàre\2\3/g
s/\b\([Ss]\)edimentessi\([ns]\)\([^[:alnum:]]\)/\1edimentare\2\3/g
s/\b\([Ss]\)ediment\([io]\)\([^[:alnum:]]\)/\1edimente\3/g
s/\b\([Ss]\)edimenti\([ns]\)\([^[:alnum:]]\)/\1edimente\2\3/g
    # resedimentar
    s/\b\([Rr]\)esedimentés\([^[:alnum:]]\)/\1esedimentara\2/g
    s/\b\([Rr]\)esedimentéssi\([mu]\)\([^[:alnum:]]\)/\1esedimentàre\2\3/g
    s/\b\([Rr]\)esedimentessi\([ns]\)\([^[:alnum:]]\)/\1esedimentare\2\3/g
    s/\b\([Rr]\)esediment\([io]\)\([^[:alnum:]]\)/\1esedimente\3/g
    s/\b\([Rr]\)esedimenti\([ns]\)\([^[:alnum:]]\)/\1esedimente\2\3/g
# segmentar
s/\b\([Ss]\)egmentés\([^[:alnum:]]\)/\1egmentara\2/g
s/\b\([Ss]\)egmentéssi\([mu]\)\([^[:alnum:]]\)/\1egmentàre\2\3/g
s/\b\([Ss]\)egmentessi\([ns]\)\([^[:alnum:]]\)/\1egmentare\2\3/g
s/\b\([Ss]\)egment\([io]\)\([^[:alnum:]]\)/\1egmente\3/g
s/\b\([Ss]\)egmenti\([ns]\)\([^[:alnum:]]\)/\1egmente\2\3/g
# seguir
s/\b\([Ss]\)egueix\(e[ns]\|\)\([^[:alnum:]]\)/\1eguix\2\3/g
s/\b\([Ss]\)egueixi\([^[:alnum:]]\)/\1eguisca\2/g
s/\b\([Ss]\)egueixi\([ns]\)\([^[:alnum:]]\)/\1eguisque\2\3/g
s/\b\([Ss]\)egueixo\([^[:alnum:]]\)/\1eguisc\2/g
s/\b\([Ss]\)egís\([^[:alnum:]]\)/\1egira\2/g
s/\b\([Ss]\)egíssi\([mu]\)\([^[:alnum:]]\)/\1egíre\2\3/g
s/\b\([Ss]\)egissi\([ns]\)\([^[:alnum:]]\)/\1egire\2\3/g
    # aconseguir
    s/\b\([Aa]\)consegueix\(e[ns]\|\)\([^[:alnum:]]\)/\1conseguix\2\3/g
    s/\b\([Aa]\)consegueixi\([^[:alnum:]]\)/\1conseguisca\2/g
    s/\b\([Aa]\)consegueixi\([ns]\)\([^[:alnum:]]\)/\1conseguisque\2\3/g
    s/\b\([Aa]\)consegueixo\([^[:alnum:]]\)/\1conseguisc\2/g
    s/\b\([Aa]\)consegís\([^[:alnum:]]\)/\1consegira\2/g
    s/\b\([Aa]\)consegíssi\([mu]\)\([^[:alnum:]]\)/\1consegíre\2\3/g
    s/\b\([Aa]\)consegissi\([ns]\)\([^[:alnum:]]\)/\1consegire\2\3/g
    # perseguir
    s/\b\([Pp]\)ersegueix\(e[ns]\|\)\([^[:alnum:]]\)/\1erseguix\2\3/g
    s/\b\([Pp]\)ersegueixi\([^[:alnum:]]\)/\1erseguisca\2/g
    s/\b\([Pp]\)ersegueixi\([ns]\)\([^[:alnum:]]\)/\1erseguisque\2\3/g
    s/\b\([Pp]\)ersegueixo\([^[:alnum:]]\)/\1erseguisc\2/g
    s/\b\([Pp]\)ersegís\([^[:alnum:]]\)/\1ersegira\2/g
    s/\b\([Pp]\)ersegíssi\([mu]\)\([^[:alnum:]]\)/\1ersegíre\2\3/g
    s/\b\([Pp]\)ersegissi\([ns]\)\([^[:alnum:]]\)/\1ersegire\2\3/g
# seleccionar
s/\b\([Ss]\)eleccionés\([^[:alnum:]]\)/\1eleccionara\2/g
s/\b\([Ss]\)eleccionéssi\([mu]\)\([^[:alnum:]]\)/\1eleccionàre\2\3/g
s/\b\([Ss]\)eleccionessi\([ns]\)\([^[:alnum:]]\)/\1eleccionare\2\3/g
s/\b\([Ss]\)eleccion\([io]\)\([^[:alnum:]]\)/\1eleccione\3/g
s/\b\([Ss]\)eleccioni\([ns]\)\([^[:alnum:]]\)/\1eleccione\2\3/g
    # TODO: no
    # desseleccionar
    s/\b\([Dd]\)esseleccionés\([^[:alnum:]]\)/\1esseleccionara\2/g
    s/\b\([Dd]\)esseleccionéssi\([mu]\)\([^[:alnum:]]\)/\1esseleccionàre\2\3/g
    s/\b\([Dd]\)esseleccionessi\([ns]\)\([^[:alnum:]]\)/\1esseleccionare\2\3/g
    s/\b\([Dd]\)esseleccion\([io]\)\([^[:alnum:]]\)/\1esseleccione\3/g
    s/\b\([Dd]\)esseleccioni\([ns]\)\([^[:alnum:]]\)/\1esseleccione\2\3/g
# semblar -> paréixer (esmenes)
# sembrar
s/\b\([Ss]\)embrés\([^[:alnum:]]\)/\1embrara\2/g
s/\b\([Ss]\)embréssi\([mu]\)\([^[:alnum:]]\)/\1embràre\2\3/g
s/\b\([Ss]\)embressi\([ns]\)\([^[:alnum:]]\)/\1embrare\2\3/g
s/\b\([Ss]\)embr\([io]\)\([^[:alnum:]]\)/\1embre\3/g
s/\b\([Ss]\)embri\([ns]\)\([^[:alnum:]]\)/\1embre\2\3/g
    # ressembrar
    s/\b\([Rr]\)essembrés\([^[:alnum:]]\)/\1essembrara\2/g
    s/\b\([Rr]\)essembréssi\([mu]\)\([^[:alnum:]]\)/\1essembràre\2\3/g
    s/\b\([Rr]\)essembressi\([ns]\)\([^[:alnum:]]\)/\1essembrare\2\3/g
    s/\b\([Rr]\)essembr\([io]\)\([^[:alnum:]]\)/\1essembre\3/g
    s/\b\([Rr]\)essembri\([ns]\)\([^[:alnum:]]\)/\1essembre\2\3/g
    # sobresembrar
    s/\b\([Ss]\)obresembrés\([^[:alnum:]]\)/\1obresembrara\2/g
    s/\b\([Ss]\)obresembréssi\([mu]\)\([^[:alnum:]]\)/\1obresembràre\2\3/g
    s/\b\([Ss]\)obresembressi\([ns]\)\([^[:alnum:]]\)/\1obresembrare\2\3/g
    s/\b\([Ss]\)obresembr\([io]\)\([^[:alnum:]]\)/\1obresembre\3/g
    s/\b\([Ss]\)obresembri\([ns]\)\([^[:alnum:]]\)/\1obresembre\2\3/g
# senyalar
s/\b\([Ss]\)enyalés\([^[:alnum:]]\)/\1enyalara\2/g
s/\b\([Ss]\)enyaléssi\([mu]\)\([^[:alnum:]]\)/\1enyalàre\2\3/g
s/\b\([Ss]\)enyalessi\([ns]\)\([^[:alnum:]]\)/\1enyalare\2\3/g
s/\b\([Ss]\)enyal\([io]\)\([^[:alnum:]]\)/\1enyale\3/g
s/\b\([Ss]\)enyali\([ns]\)\([^[:alnum:]]\)/\1enyale\2\3/g
    # assenyalar
    s/\b\([Aa]\)ssenyalés\([^[:alnum:]]\)/\1ssenyalara\2/g
    s/\b\([Aa]\)ssenyaléssi\([mu]\)\([^[:alnum:]]\)/\1ssenyalàre\2\3/g
    s/\b\([Aa]\)ssenyalessi\([ns]\)\([^[:alnum:]]\)/\1ssenyalare\2\3/g
    s/\b\([Aa]\)ssenyal\([io]\)\([^[:alnum:]]\)/\1ssenyale\3/g
    s/\b\([Aa]\)ssenyali\([ns]\)\([^[:alnum:]]\)/\1ssenyale\2\3/g
# sensibilitzar
s/\b\([Ss]\)ensibilitzés\([^[:alnum:]]\)/\1ensibilitzara\2/g
s/\b\([Ss]\)ensibilitzéssi\([mu]\)\([^[:alnum:]]\)/\1ensibilitzàre\2\3/g
s/\b\([Ss]\)ensibilitzessi\([ns]\)\([^[:alnum:]]\)/\1ensibilitzare\2\3/g
s/\b\([Ss]\)ensibilitz\([io]\)\([^[:alnum:]]\)/\1ensibilitze\3/g
s/\b\([Ss]\)ensibilitzi\([ns]\)\([^[:alnum:]]\)/\1ensibilitze\2\3/g
    # insensibilitzar
    s/\b\([Ii]\)nsensibilitzés\([^[:alnum:]]\)/\1nsensibilitzara\2/g
    s/\b\([Ii]\)nsensibilitzéssi\([mu]\)\([^[:alnum:]]\)/\1nsensibilitzàre\2\3/g
    s/\b\([Ii]\)nsensibilitzessi\([ns]\)\([^[:alnum:]]\)/\1nsensibilitzare\2\3/g
    s/\b\([Ii]\)nsensibilitz\([io]\)\([^[:alnum:]]\)/\1nsensibilitze\3/g
    s/\b\([Ii]\)nsensibilitzi\([ns]\)\([^[:alnum:]]\)/\1nsensibilitze\2\3/g
# sentir
s/\b\([Ss]\)enti\([^[:alnum:]]\)/\1enta\2/g
s/\b\([Ss]\)enti\([ns]\)\([^[:alnum:]]\)/\1ente\2\3/g
s/\b\([Ss]\)entís\([^[:alnum:]]\)/\1entira\2/g
s/\b\([Ss]\)entíssi\([mu]\)\([^[:alnum:]]\)/\1entíre\2\3/g
s/\b\([Ss]\)entissi\([ns]\)\([^[:alnum:]]\)/\1entire\2\3/g
s/\b\([Ss]\)ento\([^[:alnum:]]\)/\1ent\2/g
    # consentir
    s/\b\([Cc]\)onsenti\([^[:alnum:]]\)/\1onsenta\2/g
    s/\b\([Cc]\)onsenti\([ns]\)\([^[:alnum:]]\)/\1onsente\2\3/g
    s/\b\([Cc]\)onsentís\([^[:alnum:]]\)/\1onsentira\2/g
    s/\b\([Cc]\)onsentíssi\([mu]\)\([^[:alnum:]]\)/\1onsentíre\2\3/g
    s/\b\([Cc]\)onsentissi\([ns]\)\([^[:alnum:]]\)/\1onsentire\2\3/g
    s/\b\([Cc]\)onsento\([^[:alnum:]]\)/\1onsent\2/g
    # dissentir
    s/\b\([Dd]\)issenteix\(e[ns]\|\)\([^[:alnum:]]\)/\1issentix\2\3/g
    s/\b\([Dd]\)issenteixi\([^[:alnum:]]\)/\1issentisca\2/g
    s/\b\([Dd]\)issenteixi\([ns]\)\([^[:alnum:]]\)/\1issentisque\2\3/g
    s/\b\([Dd]\)issenteixo\([^[:alnum:]]\)/\1issentisc\2/g
    s/\b\([Dd]\)issentís\([^[:alnum:]]\)/\1issentira\2/g
    s/\b\([Dd]\)issentíssi\([mu]\)\([^[:alnum:]]\)/\1issentíre\2\3/g
    s/\b\([Dd]\)issentissi\([ns]\)\([^[:alnum:]]\)/\1issentire\2\3/g
    # entresentir
    s/\b\([Ee]\)ntresenti\([^[:alnum:]]\)/\1ntresenta\2/g
    s/\b\([Ee]\)ntresenti\([ns]\)\([^[:alnum:]]\)/\1ntresente\2\3/g
    s/\b\([Ee]\)ntresentís\([^[:alnum:]]\)/\1ntresentira\2/g
    s/\b\([Ee]\)ntresentíssi\([mu]\)\([^[:alnum:]]\)/\1ntresentíre\2\3/g
    s/\b\([Ee]\)ntresentissi\([ns]\)\([^[:alnum:]]\)/\1ntresentire\2\3/g
    s/\b\([Ee]\)ntresento\([^[:alnum:]]\)/\1ntresent\2/g
    # pressentir
    s/\b\([Pp]\)ressenti\([^[:alnum:]]\)/\1ressenta\2/g
    s/\b\([Pp]\)ressenti\([ns]\)\([^[:alnum:]]\)/\1ressente\2\3/g
    s/\b\([Pp]\)ressentís\([^[:alnum:]]\)/\1ressentira\2/g
    s/\b\([Pp]\)ressentíssi\([mu]\)\([^[:alnum:]]\)/\1ressentíre\2\3/g
    s/\b\([Pp]\)ressentissi\([ns]\)\([^[:alnum:]]\)/\1ressentire\2\3/g
    s/\b\([Pp]\)ressento\([^[:alnum:]]\)/\1ressent\2/g
# separar
s/\b\([Ss]\)eparés\([^[:alnum:]]\)/\1eparara\2/g
s/\b\([Ss]\)eparéssi\([mu]\)\([^[:alnum:]]\)/\1eparàre\2\3/g
s/\b\([Ss]\)eparessi\([ns]\)\([^[:alnum:]]\)/\1eparare\2\3/g
s/\b\([Ss]\)epar\([io]\)\([^[:alnum:]]\)/\1epare\3/g
s/\b\([Ss]\)epari\([ns]\)\([^[:alnum:]]\)/\1epare\2\3/g
s/\b\([Ss]\)èpi\(a\|es\)\([^[:alnum:]]\)/\1épi\2\3/g
s/\b\([Pp]\)èsol\(s\|\)\([^[:alnum:]]\)/\1ésol\2\3/g
s/\b\([Tt]\)èrbol\(s\|\)\([^[:alnum:]]\)/\1érbol\2\3/g
# ser (esmenes)
# servir
s/\b\([Ss]\)erveix\(e[ns]\|\)\([^[:alnum:]]\)/\1ervix\2\3/g
s/\b\([Ss]\)erveixi\([^[:alnum:]]\)/\1ervisca\2/g
s/\b\([Ss]\)erveixi\([ns]\)\([^[:alnum:]]\)/\1ervisque\2\3/g
s/\b\([Ss]\)erveixo\([^[:alnum:]]\)/\1ervisc\2/g
s/\b\([Ss]\)ervís\([^[:alnum:]]\)/\1ervira\2/g
s/\b\([Ss]\)ervíssi\([mu]\)\([^[:alnum:]]\)/\1ervíre\2\3/g
s/\b\([Ss]\)ervissi\([ns]\)\([^[:alnum:]]\)/\1ervire\2\3/g
    # asservir
    s/\b\([Aa]\)sserveix\(e[ns]\|\)\([^[:alnum:]]\)/\1sservix\2\3/g
    s/\b\([Aa]\)sserveixi\([^[:alnum:]]\)/\1sservisca\2/g
    s/\b\([Aa]\)sserveixi\([ns]\)\([^[:alnum:]]\)/\1sservisque\2\3/g
    s/\b\([Aa]\)sserveixo\([^[:alnum:]]\)/\1sservisc\2/g
    s/\b\([Aa]\)sservís\([^[:alnum:]]\)/\1sservira\2/g
    s/\b\([Aa]\)sservíssi\([mu]\)\([^[:alnum:]]\)/\1sservíre\2\3/g
    s/\b\([Aa]\)sservissi\([ns]\)\([^[:alnum:]]\)/\1sservire\2\3/g
    # desservir
    s/\b\([Dd]\)esserveix\(e[ns]\|\)\([^[:alnum:]]\)/\1esservix\2\3/g
    s/\b\([Dd]\)esserveixi\([^[:alnum:]]\)/\1esservisca\2/g
    s/\b\([Dd]\)esserveixi\([ns]\)\([^[:alnum:]]\)/\1esservisque\2\3/g
    s/\b\([Dd]\)esserveixo\([^[:alnum:]]\)/\1esservisc\2/g
    s/\b\([Dd]\)esservís\([^[:alnum:]]\)/\1esservira\2/g
    s/\b\([Dd]\)esservíssi\([mu]\)\([^[:alnum:]]\)/\1esservíre\2\3/g
    s/\b\([Dd]\)esservissi\([ns]\)\([^[:alnum:]]\)/\1esservire\2\3/g
    # malservir
    s/\b\([Mm]\)alsserveix\(e[ns]\|\)\([^[:alnum:]]\)/\1alsservix\2\3/g
    s/\b\([Mm]\)alsserveixi\([^[:alnum:]]\)/\1alsservisca\2/g
    s/\b\([Mm]\)alsserveixi\([ns]\)\([^[:alnum:]]\)/\1alsservisque\2\3/g
    s/\b\([Mm]\)alsserveixo\([^[:alnum:]]\)/\1alsservisc\2/g
    s/\b\([Mm]\)alsservís\([^[:alnum:]]\)/\1alsservira\2/g
    s/\b\([Mm]\)alsservíssi\([mu]\)\([^[:alnum:]]\)/\1alsservíre\2\3/g
    s/\b\([Mm]\)alsservissi\([ns]\)\([^[:alnum:]]\)/\1alsservire\2\3/g
# severitat -> gravetat (esmenes)
s/\b\([Ss]\|[Mm]\|[Tt]\)eva\([^[:alnum:]]\)/\1eua\2/g
s/\b\([Ss]\|[Mm]\|[Tt]\)eves\([^[:alnum:]]\)/\1eues\2/g
# signar
s/\b\([Ss]\)ignés\([^[:alnum:]]\)/\1ignara\2/g
s/\b\([Ss]\)ignéssi\([mu]\)\([^[:alnum:]]\)/\1ignàre\2\3/g
s/\b\([Ss]\)ignessi\([ns]\)\([^[:alnum:]]\)/\1ignare\2\3/g
s/\b\([Ss]\)ign\([io]\)\([^[:alnum:]]\)/\1igne\3/g
s/\b\([Ss]\)igni\([ns]\)\([^[:alnum:]]\)/\1igne\2\3/g
    # autosignar
    s/\b\([Aa]\)utosignés\([^[:alnum:]]\)/\1utosignara\2/g
    s/\b\([Aa]\)utosignéssi\([mu]\)\([^[:alnum:]]\)/\1utosignàre\2\3/g
    s/\b\([Aa]\)utosignessi\([ns]\)\([^[:alnum:]]\)/\1utosignare\2\3/g
    s/\b\([Aa]\)utosign\([io]\)\([^[:alnum:]]\)/\1utosigne\3/g
    s/\b\([Aa]\)utosigni\([ns]\)\([^[:alnum:]]\)/\1utosigne\2\3/g
    # designar
    s/\b\([Dd]\)esignés\([^[:alnum:]]\)/\1esignara\2/g
    s/\b\([Dd]\)esignéssi\([mu]\)\([^[:alnum:]]\)/\1esignàre\2\3/g
    s/\b\([Dd]\)esignessi\([ns]\)\([^[:alnum:]]\)/\1esignare\2\3/g
    s/\b\([Dd]\)esign\([io]\)\([^[:alnum:]]\)/\1esigne\3/g
    s/\b\([Dd]\)esigni\([ns]\)\([^[:alnum:]]\)/\1esigne\2\3/g
# significar
s/\b\([Ss]\)ignifico\([^[:alnum:]]\)/\1ignifique\2/g
s/\b\([Ss]\)ignifiqués\([^[:alnum:]]\)/\1ignificara\2/g
s/\b\([Ss]\)ignifiquéssi\([mu]\)\([^[:alnum:]]\)/\1ignificàre\2\3/g
s/\b\([Ss]\)ignifiquessi\([ns]\)\([^[:alnum:]]\)/\1ignificare\2\3/g
s/\b\([Ss]\)ignifiqui\([ns]\|\)\([^[:alnum:]]\)/\1ignifique\2\3/g
# silenciar
s/\b\([Ss]\)ilenciés\([^[:alnum:]]\)/\1ilenciara\2/g
s/\b\([Ss]\)ilenciéssi\([mu]\)\([^[:alnum:]]\)/\1ilenciàre\2\3/g
s/\b\([Ss]\)ilenciessi\([ns]\)\([^[:alnum:]]\)/\1ilenciare\2\3/g
s/\b\([Ss]\)ilenci\([íïo]\)\([^[:alnum:]]\)/\1ilencie\3/g
s/\b\([Ss]\)ilenciï\([ns]\)\([^[:alnum:]]\)/\1ilencie\2\3/g
# simbolitzar
s/\b\([Ss]\)imbolitzés\([^[:alnum:]]\)/\1imbolitzara\2/g
s/\b\([Ss]\)imbolitzéssi\([mu]\)\([^[:alnum:]]\)/\1imbolitzàre\2\3/g
s/\b\([Ss]\)imbolitzessi\([ns]\)\([^[:alnum:]]\)/\1imbolitzare\2\3/g
s/\b\([Ss]\)imbolitz\([io]\)\([^[:alnum:]]\)/\1imbolitze\3/g
s/\b\([Ss]\)imbolitzi\([ns]\)\([^[:alnum:]]\)/\1imbolitze\2\3/g
# simplificar
s/\b\([Ss]\)implifico\([^[:alnum:]]\)/\1implifique\2/g
s/\b\([Ss]\)implifiqués\([^[:alnum:]]\)/\1implificara\2/g
s/\b\([Ss]\)implifiquéssi\([mu]\)\([^[:alnum:]]\)/\1implificàre\2\3/g
s/\b\([Ss]\)implifiquessi\([ns]\)\([^[:alnum:]]\)/\1implificare\2\3/g
s/\b\([Ss]\)implifiqui\([ns]\|\)\([^[:alnum:]]\)/\1implifique\2\3/g
# sincronitzar
s/\b\([Ss]\)incronitzés\([^[:alnum:]]\)/\1incronitzara\2/g
s/\b\([Ss]\)incronitzéssi\([mu]\)\([^[:alnum:]]\)/\1incronitzàre\2\3/g
s/\b\([Ss]\)incronitzessi\([ns]\)\([^[:alnum:]]\)/\1incronitzare\2\3/g
s/\b\([Ss]\)incronitz\([io]\)\([^[:alnum:]]\)/\1incronitze\3/g
s/\b\([Ss]\)incronitzi\([ns]\)\([^[:alnum:]]\)/\1incronitze\2\3/g
s/\bSíndria\([^[:alnum:]]\)/Meló d'aigua\1/g
s/\bsíndria\([^[:alnum:]]\)/meló d'aigua\1/g
s/\bSíndries\([^[:alnum:]]\)/Melons d'aigua\1/g
s/\bsíndries\([^[:alnum:]]\)/melons d'aigua\1/g
s/\b\([Ss]\)ingalès\([^[:alnum:]]\)/\1ingalés\2/g
# sintetitzar
s/\b\([Ss]\)intetitzés\([^[:alnum:]]\)/\1intetitzara\2/g
s/\b\([Ss]\)intetitzéssi\([mu]\)\([^[:alnum:]]\)/\1intetitzàre\2\3/g
s/\b\([Ss]\)intetitzessi\([ns]\)\([^[:alnum:]]\)/\1intetitzare\2\3/g
s/\b\([Ss]\)intetitz\([io]\)\([^[:alnum:]]\)/\1intetitze\3/g
s/\b\([Ss]\)intetitzi\([ns]\)\([^[:alnum:]]\)/\1intetitze\2\3/g
s/\b\([Ss]\)ípi\(a\|es\)\([^[:alnum:]]\)/\1épi\2\3/g
# situar
s/\b\([Ss]\)itués\([^[:alnum:]]\)/\1ituara\2/g
s/\b\([Ss]\)ituéssi\([mu]\)\([^[:alnum:]]\)/\1ituàre\2\3/g
s/\b\([Ss]\)ituessi\([ns]\)\([^[:alnum:]]\)/\1ituare\2\3/g
s/\b\([Ss]\)itu\([ïo]\)\([^[:alnum:]]\)/\1itue\3/g
s/\b\([Ss]\)ituï\([ns]\)\([^[:alnum:]]\)/\1itue\2\3/g
# sobre -> damunt (esmenes)
# soltar
s/\b\([Ss]\)oltés\([^[:alnum:]]\)/\1oltara\2/g
s/\b\([Ss]\)oltéssi\([mu]\)\([^[:alnum:]]\)/\1oltàre\2\3/g
s/\b\([Ss]\)oltessi\([ns]\)\([^[:alnum:]]\)/\1oltare\2\3/g
s/\b\([Ss]\)olt\([io]\)\([^[:alnum:]]\)/\1olte\3/g
s/\b\([Ss]\)olti\([ns]\)\([^[:alnum:]]\)/\1olte\2\3/g
# solucionar
s/\b\([Ss]\)olucionés\([^[:alnum:]]\)/\1olucionara\2/g
s/\b\([Ss]\)olucionéssi\([mu]\)\([^[:alnum:]]\)/\1olucionàre\2\3/g
s/\b\([Ss]\)olucionessi\([ns]\)\([^[:alnum:]]\)/\1olucionare\2\3/g
s/\b\([Ss]\)olucion\([io]\)\([^[:alnum:]]\)/\1olucione\3/g
s/\b\([Ss]\)olucioni\([ns]\)\([^[:alnum:]]\)/\1olucione\2\3/g
# sota -> davall o baix (esmenes)
# sol·licitar
s/\b\([Ss]\)ol·licités\([^[:alnum:]]\)/\1ol·licitara\2/g
s/\b\([Ss]\)ol·licitéssi\([mu]\)\([^[:alnum:]]\)/\1ol·licitàre\2\3/g
s/\b\([Ss]\)ol·licitessi\([ns]\)\([^[:alnum:]]\)/\1ol·licitare\2\3/g
s/\b\([Ss]\)ol·licit\([io]\)\([^[:alnum:]]\)/\1ol·licite\3/g
s/\b\([Ss]\)ol·liciti\([ns]\)\([^[:alnum:]]\)/\1ol·licite\2\3/g
# solaritzar
s/\b\([Ss]\)olaritzés\([^[:alnum:]]\)/\1olaritzara\2/g
s/\b\([Ss]\)olaritzéssi\([mu]\)\([^[:alnum:]]\)/\1olaritzàre\2\3/g
s/\b\([Ss]\)olaritzessi\([ns]\)\([^[:alnum:]]\)/\1olaritzare\2\3/g
s/\b\([Ss]\)olaritz\([io]\)\([^[:alnum:]]\)/\1olaritze\3/g
s/\b\([Ss]\)olaritzi\([ns]\)\([^[:alnum:]]\)/\1olaritze\2\3/g
# sorra -> arena (esmenes)
# sonar
s/\b\([Ss]\)onés\([^[:alnum:]]\)/\1onara\2/g
s/\b\([Ss]\)onéssi\([mu]\)\([^[:alnum:]]\)/\1onàre\2\3/g
s/\b\([Ss]\)onessi\([ns]\)\([^[:alnum:]]\)/\1onare\2\3/g
s/\b\([Ss]\)on\([io]\)\([^[:alnum:]]\)/\1one\3/g
s/\b\([Ss]\)oni\([ns]\)\([^[:alnum:]]\)/\1one\2\3/g
# sortir -> eixir (esmenes)
    # reeixir
    s/\b\([Rr]\)eeixi\([mu]\)\([^[:alnum:]]\)/\1eïsque\2\3/g
    s/\b\([Rr]\)eeixís\([^[:alnum:]]\)/\1eïsquera\2/g
    s/\b\([Rr]\)eeixíssi\([mu]\)\([^[:alnum:]]\)/\1eïsquére\2\3/g
    s/\b\([Rr]\)eeixissi\([ns]\)\([^[:alnum:]]\)/\1eïsquere\2\3/g
    s/\b\([Rr]\)eïxi\([^[:alnum:]]\)/\1eïsca\2/g
    s/\b\([Rr]\)eïxi\([ns]\)\([^[:alnum:]]\)/\1eïsque\2\3/g
    s/\b\([Rr]\)eïxo\([^[:alnum:]]\)/\1eïsc\2/g
    # sobreeixir
    s/\b\([Ss]\)obreeixi\([mu]\)\([^[:alnum:]]\)/\1obreïsque\2\3/g
    s/\b\([Ss]\)obreeixís\([^[:alnum:]]\)/\1obreïsquera\2/g
    s/\b\([Ss]\)obreeixíssi\([mu]\)\([^[:alnum:]]\)/\1obreïsquére\2\3/g
    s/\b\([Ss]\)obreeixissi\([ns]\)\([^[:alnum:]]\)/\1obreïsquere\2\3/g
    s/\b\([Ss]\)obreïxi\([^[:alnum:]]\)/\1obreïsca\2/g
    s/\b\([Ss]\)obreïxi\([ns]\)\([^[:alnum:]]\)/\1obreïsque\2\3/g
    s/\b\([Ss]\)obreïxo\([^[:alnum:]]\)/\1obreïsc\2/g
    # sobresortir -> sobreeixir
    s/\b\([Ss]\)obresorti\(a\|da\|des\|en\|m\|nt\|r\|rà\|ran\|t\|ts\|u\)\([^[:alnum:]]\)/\1obreeixi\2\3/g
    # SUBJUNTIU: sobreïsquem, sobreïsqueu
    s/\b\([Ss]\)obresurt\(e[ns]\|\)\([^[:alnum:]]\)/\1obreïx\2\3/g
    s/\b\([Ss]\)obresurti\([^[:alnum:]]\)/\1obreïsca\2/g
    s/\b\([Ss]\)obresurti\([ns]\)\([^[:alnum:]]\)/\1obreïsque\2\3/g
    s/\b\([Ss]\)obresurto\([^[:alnum:]]\)/\1obreïsc\2/g
# sospitar
s/\b\([Ss]\)ospités\([^[:alnum:]]\)/\1ospitara\2/g
s/\b\([Ss]\)ospitéssi\([mu]\)\([^[:alnum:]]\)/\1ospitàre\2\3/g
s/\b\([Ss]\)ospitessi\([ns]\)\([^[:alnum:]]\)/\1ospitare\2\3/g
s/\b\([Ss]\)ospit\([io]\)\([^[:alnum:]]\)/\1ospite\3/g
s/\b\([Ss]\)ospiti\([ns]\)\([^[:alnum:]]\)/\1ospite\2\3/g
# suavitzar
s/\b\([Ss]\)uavitzés\([^[:alnum:]]\)/\1uavitzara\2/g
s/\b\([Ss]\)uavitzéssi\([mu]\)\([^[:alnum:]]\)/\1uavitzàre\2\3/g
s/\b\([Ss]\)uavitzessi\([ns]\)\([^[:alnum:]]\)/\1uavitzare\2\3/g
s/\b\([Ss]\)uavitz\([io]\)\([^[:alnum:]]\)/\1uavitze\3/g
s/\b\([Ss]\)uavitzi\([ns]\)\([^[:alnum:]]\)/\1uavitze\2\3/g
# subministrar
s/\b\([Ss]\)ubministrés\([^[:alnum:]]\)/\1ubministrara\2/g
s/\b\([Ss]\)ubministréssi\([mu]\)\([^[:alnum:]]\)/\1ubministràre\2\3/g
s/\b\([Ss]\)ubministressi\([ns]\)\([^[:alnum:]]\)/\1ubministrare\2\3/g
s/\b\([Ss]\)ubministr\([io]\)\([^[:alnum:]]\)/\1ubministre\3/g
s/\b\([Ss]\)ubministri\([ns]\)\([^[:alnum:]]\)/\1ubministre\2\3/g
# subsistir
s/\b\([Ss]\)ubsisteix\(e[ns]\|\)\([^[:alnum:]]\)/\1ubsistix\2\3/g
s/\b\([Ss]\)ubsisteixi\([^[:alnum:]]\)/\1ubsistisca\2/g
s/\b\([Ss]\)ubsisteixi\([ns]\)\([^[:alnum:]]\)/\1ubsistisque\2\3/g
s/\b\([Ss]\)ubsisteixo\([^[:alnum:]]\)/\1ubsistisc\2/g
s/\b\([Ss]\)ubsistís\([^[:alnum:]]\)/\1ubsistira\2/g
s/\b\([Ss]\)ubsistíssi\([mu]\)\([^[:alnum:]]\)/\1ubsistíre\2\3/g
s/\b\([Ss]\)ubsistissi\([ns]\)\([^[:alnum:]]\)/\1ubsistire\2\3/g
# substituir
s/\b\([Ss]\)ubstitueix\(e[ns]\|\)\([^[:alnum:]]\)/\1ubstituïx\2\3/g
s/\b\([Ss]\)ubstitueixi\([^[:alnum:]]\)/\1ubstituïsca\2/g
s/\b\([Ss]\)ubstitueixi\([ns]\)\([^[:alnum:]]\)/\1ubstituisque\2\3/g
s/\b\([Ss]\)ubstitueixo\([^[:alnum:]]\)/\1ubstituïsc\2/g
s/\b\([Ss]\)ubstituís\([^[:alnum:]]\)/\1ubstituïra\2/g
s/\b\([Ss]\)ubstituíssi\([mu]\)\([^[:alnum:]]\)/\1ubstituíre\2\3/g
s/\b\([Ss]\)ubstituïssi\([ns]\)\([^[:alnum:]]\)/\1ubstituïre\2\3/g
# succeir
s/\b\([Ss]\)ucceeix\(e[ns]\|\)\([^[:alnum:]]\)/\1ucceïx\2\3/g
s/\b\([Ss]\)ucceeixi\([^[:alnum:]]\)/\1ucceïsca\2/g
s/\b\([Ss]\)ucceeixi\([ns]\)\([^[:alnum:]]\)/\1ucceïsque\2\3/g
s/\b\([Ss]\)ucceeixo\([^[:alnum:]]\)/\1ucceïsc\2/g
s/\b\([Ss]\)ucceís\([^[:alnum:]]\)/\1ucceïra\2/g
s/\b\([Ss]\)ucceíssi\([mu]\)\([^[:alnum:]]\)/\1ucceíre\2\3/g
s/\b\([Ss]\)ucceïssi\([ns]\)\([^[:alnum:]]\)/\1ucceïre\2\3/g
s/\b\([Ss]\)udanès\([^[:alnum:]]\)/\1udanés\2/g
# suggerir
s/\b\([Ss]\)uggereix\(e[ns]\|\)\([^[:alnum:]]\)/\1uggerix\2\3/g
s/\b\([Ss]\)uggereixi\([^[:alnum:]]\)/\1uggerisca\2/g
s/\b\([Ss]\)uggereixi\([ns]\)\([^[:alnum:]]\)/\1uggerisque\2\3/g
s/\b\([Ss]\)uggereixo\([^[:alnum:]]\)/\1uggerisc\2/g
s/\b\([Ss]\)uggerís\([^[:alnum:]]\)/\1uggerira\2/g
s/\b\([Ss]\)uggeríssi\([mu]\)\([^[:alnum:]]\)/\1uggeríre\2\3/g
s/\b\([Ss]\)uggerissi\([ns]\)\([^[:alnum:]]\)/\1uggerire\2\3/g
# sumar
s/\b\([Ss]\)umés\([^[:alnum:]]\)/\1umara\2/g
s/\b\([Ss]\)uméssi\([mu]\)\([^[:alnum:]]\)/\1umàre\2\3/g
s/\b\([Ss]\)umessi\([ns]\)\([^[:alnum:]]\)/\1umare\2\3/g
s/\b\([Ss]\)um\([io]\)\([^[:alnum:]]\)/\1ume\3/g
s/\b\([Ss]\)umi\([ns]\)\([^[:alnum:]]\)/\1ume\2\3/g
s/\b\([Ss]\)undanès\([^[:alnum:]]\)/\1undanés\2/g
# superar
s/\b\([Ss]\)uperés\([^[:alnum:]]\)/\1uperara\2/g
s/\b\([Ss]\)uperéssi\([mu]\)\([^[:alnum:]]\)/\1uperàre\2\3/g
s/\b\([Ss]\)uperessi\([ns]\)\([^[:alnum:]]\)/\1uperare\2\3/g
s/\b\([Ss]\)uper\([io]\)\([^[:alnum:]]\)/\1upere\3/g
s/\b\([Ss]\)uperi\([ns]\)\([^[:alnum:]]\)/\1upere\2\3/g
# suprimir
s/\b\([Ss]\)uprimeix\(e[ns]\|\)\([^[:alnum:]]\)/\1uprimix\2\3/g
s/\b\([Ss]\)uprimeixi\([^[:alnum:]]\)/\1uprimisca\2/g
s/\b\([Ss]\)uprimeixi\([ns]\)\([^[:alnum:]]\)/\1uprimisque\2\3/g
s/\b\([Ss]\)uprimeixo\([^[:alnum:]]\)/\1uprimisc\2/g
s/\b\([Ss]\)uprimís\([^[:alnum:]]\)/\1uprimira\2/g
s/\b\([Ss]\)uprimíssi\([mu]\)\([^[:alnum:]]\)/\1uprimíre\2\3/g
s/\b\([Ss]\)uprimissi\([ns]\)\([^[:alnum:]]\)/\1uprimire\2\3/g
# t
#
s/\b\([Tt]\)ailandès\([^[:alnum:]]\)/\1ailandés\2/g
s/\b\([Tt]\)aiwanès\([^[:alnum:]]\)/\1aiwanés\2/g
# tallar
s/\b\([Tt]\)allés\([^[:alnum:]]\)/\1allara\2/g
s/\b\([Tt]\)alléssi\([mu]\)\([^[:alnum:]]\)/\1allàre\2\3/g
s/\b\([Tt]\)allessi\([ns]\)\([^[:alnum:]]\)/\1allare\2\3/g
s/\b\([Tt]\)all\([io]\)\([^[:alnum:]]\)/\1alle\3/g
s/\b\([Tt]\)alli\([ns]\)\([^[:alnum:]]\)/\1alle\2\3/g
    # retallar
    s/\b\([Rr]\)etallés\([^[:alnum:]]\)/\1etallara\2/g
    s/\b\([Rr]\)etalléssi\([mu]\)\([^[:alnum:]]\)/\1etallàre\2\3/g
    s/\b\([Rr]\)etallessi\([ns]\)\([^[:alnum:]]\)/\1etallare\2\3/g
    s/\b\([Rr]\)etall\([io]\)\([^[:alnum:]]\)/\1etalle\3/g
    s/\b\([Rr]\)etalli\([ns]\)\([^[:alnum:]]\)/\1etalle\2\3/g
# tancar
s/\b\([Tt]\)anqués\([^[:alnum:]]\)/\1ancara\2/g
s/\b\([Tt]\)anquéssi\([mu]\)\([^[:alnum:]]\)/\1ancàre\2\3/g
s/\b\([Tt]\)anquessi\([ns]\)\([^[:alnum:]]\)/\1ancare\2\3/g
s/\b\([Tt]\)anqui\([ns]\|\)\([^[:alnum:]]\)/\1anque\2\3/g
s/\b\([Tt]\)anco\([^[:alnum:]]\)/\1anque\2/g
    # desestancar
    s/\b\([Dd]\)esestanqués\([^[:alnum:]]\)/\1esestancara\2/g
    s/\b\([Dd]\)esestanquéssi\([mu]\)\([^[:alnum:]]\)/\1esestancàre\2\3/g
    s/\b\([Dd]\)esestanquessi\([ns]\)\([^[:alnum:]]\)/\1esestancare\2\3/g
    s/\b\([Dd]\)esestanqui\([ns]\|\)\([^[:alnum:]]\)/\1esestanque\2\3/g
    s/\b\([Dd]\)esestanco\([^[:alnum:]]\)/\1esestanque\2/g
    # entretancar
    s/\b\([Ee]\)ntretanqués\([^[:alnum:]]\)/\1ntretancara\2/g
    s/\b\([Ee]\)ntretanquéssi\([mu]\)\([^[:alnum:]]\)/\1ntretancàre\2\3/g
    s/\b\([Ee]\)ntretanquessi\([ns]\)\([^[:alnum:]]\)/\1ntretancare\2\3/g
    s/\b\([Ee]\)ntretanqui\([ns]\|\)\([^[:alnum:]]\)/\1ntretanque\2\3/g
    s/\b\([Ee]\)ntretanco\([^[:alnum:]]\)/\1ntretanque\2/g
    # estancar
    s/\b\([Ee]\)stanqués\([^[:alnum:]]\)/\1stancara\2/g
    s/\b\([Ee]\)stanquéssi\([mu]\)\([^[:alnum:]]\)/\1stancàre\2\3/g
    s/\b\([Ee]\)stanquessi\([ns]\)\([^[:alnum:]]\)/\1stancare\2\3/g
    s/\b\([Ee]\)stanqui\([ns]\|\)\([^[:alnum:]]\)/\1stanque\2\3/g
    s/\b\([Ee]\)stanco\([^[:alnum:]]\)/\1stanque\2/g
s/\bTarda\([^[:alnum:]]\)/Vesprada\1/g
s/\btarda\([^[:alnum:]]\)/vesprada\1/g
# teclejar
s/\b\([Tt]\)eclegés\([^[:alnum:]]\)/\1eclejara\2/g
s/\b\([Tt]\)eclegéssi\([mu]\)\([^[:alnum:]]\)/\1eclejàre\2\3/g
s/\b\([Tt]\)eclegessi\([ns]\)\([^[:alnum:]]\)/\1eclejare\2\3/g
s/\b\([Tt]\)eclegi\([ns]\|\)\([^[:alnum:]]\)/\1eclege\2\3/g
s/\b\([Tt]\)eclejo\([^[:alnum:]]\)/\1eclege\2/g
# temporitzar
s/\b\([Tt]\)emporitzés\([^[:alnum:]]\)/\1emporitzara\2/g
s/\b\([Tt]\)emporitzéssi\([mu]\)\([^[:alnum:]]\)/\1emporitzàre\2\3/g
s/\b\([Tt]\)emporitzessi\([ns]\)\([^[:alnum:]]\)/\1emporitzare\2\3/g
s/\b\([Tt]\)emporitz\([io]\)\([^[:alnum:]]\)/\1emporitze\3/g
s/\b\([Tt]\)emporitzi\([ns]\)\([^[:alnum:]]\)/\1emporitze\2\3/g
# temptar
s/\b\([Tt]\)emptés\([^[:alnum:]]\)/\1emptara\2/g
s/\b\([Tt]\)emptéssi\([mu]\)\([^[:alnum:]]\)/\1emptàre\2\3/g
s/\b\([Tt]\)emptessi\([ns]\)\([^[:alnum:]]\)/\1emptare\2\3/g
s/\b\([Tt]\)empt\([io]\)\([^[:alnum:]]\)/\1empte\3/g
s/\b\([Tt]\)empti\([ns]\)\([^[:alnum:]]\)/\1empte\2\3/g
# tendir
s/\b\([Tt]\)endeix\(e[ns]\|\)\([^[:alnum:]]\)/\1endix\2\3/g
s/\b\([Tt]\)endeixi\([^[:alnum:]]\)/\1endisca\2/g
s/\b\([Tt]\)endeixi\([ns]\)\([^[:alnum:]]\)/\1endisque\2\3/g
s/\b\([Tt]\)endeixo\([^[:alnum:]]\)/\1endisc\2/g
s/\b\([Tt]\)endís\([^[:alnum:]]\)/\1endira\2/g
s/\b\([Tt]\)endíssi\([mu]\)\([^[:alnum:]]\)/\1endíre\2\3/g
s/\b\([Tt]\)endissi\([ns]\)\([^[:alnum:]]\)/\1endire\2\3/g
# tenir -> tindre
s/\b\([Tt]\)\(en\|ingues\)\([^[:alnum:]]\)/\1ingues\3/g
    s/\b\([Tt]\)enir-\([mns]\)e\([^[:alnum:]]\)/\1indre'\2\3/g
    s/\b\([Tt]\)enir-lo\(s\|\)\([^[:alnum:]]\)/\1indre'l\2\3/g
    s/\b\([Tt]\)enir-nos\([^[:alnum:]]\)/\1indre'ns\2/g
    s/\b\([Tt]\)enir-\([st]\)e\([^[:alnum:]]\)/\1indre'\2\3/g
    s/\b\([Tt]\)enir-vos\([^[:alnum:]]\)/\1indre-us\2/g
s/\b\([Tt]\)enir\([^[:alnum:]]\)/\1indre\2/g
s/\b\([Tt]\)ingués\([^[:alnum:]]\)/\1inguera\2/g
s/\b\([Tt]\)inguéssi\([mu]\)\([^[:alnum:]]\)/\1inguére\2\3/g
s/\b\([Tt]\)inguessi\([ns]\)\([^[:alnum:]]\)/\1inguere\2\3/g
s/\b\([Tt]\)ingui\([^[:alnum:]]\)/\1inga\2/g
s/\b\([Tt]\)ingui\([ns]\)\([^[:alnum:]]\)/\1ingue\2\3/g
    # contenir -> contindre
        s/\b\([Cc]\)ontenir-\([mns]\)e\([^[:alnum:]]\)/\1ontindre'\2\3/g
        s/\b\([Cc]\)ontenir-lo\(s\|\)\([^[:alnum:]]\)/\1ontindre'l\2\3/g
        s/\b\([Cc]\)ontenir-nos\([^[:alnum:]]\)/\1ontindre'ns\2/g
        s/\b\([Cc]\)ontenir-\([st]\)e\([^[:alnum:]]\)/\1ontindre'\2\3/g
        s/\b\([Cc]\)ontenir-vos\([^[:alnum:]]\)/\1ontindre-us\2/g
    s/\b\([Cc]\)ontenir\([^[:alnum:]]\)/\1ontindre\2/g
    s/\b\([Cc]\)ontingues\([^[:alnum:]]\)/\1ontén\2/g
    s/\b\([Cc]\)ontingués\([^[:alnum:]]\)/\1ontinguera\2/g
    s/\b\([Cc]\)ontinguéssi\([mu]\)\([^[:alnum:]]\)/\1ontinguére\2\3/g
    s/\b\([Cc]\)ontinguessi\([ns]\)\([^[:alnum:]]\)/\1ontinguere\2\3/g
    s/\b\([Cc]\)ont\(e\|i\)ngui\([^[:alnum:]]\)/\1ontinga\3/g
    s/\b\([Cc]\)ont\(e\|i\)ngui\([ns]\)\([^[:alnum:]]\)/\1ontingue\3\4/g
    # mantenir -> mantindre
    s/\b\([Mm]\)ant\(én\|ingues\)\([^[:alnum:]]\)/\1antín\3/g
        s/\b\([Mm]\)antenir-\([mns]\)e\([^[:alnum:]]\)/\1antindre'\2\3/g
        s/\b\([Mm]\)antenir-lo\(s\|\)\([^[:alnum:]]\)/\1antindre'l\2\3/g
        s/\b\([Mm]\)antenir-nos\([^[:alnum:]]\)/\1antindre'ns\2/g
        s/\b\([Mm]\)antenir-\([st]\)e\([^[:alnum:]]\)/\1antindre'\2\3/g
        s/\b\([Mm]\)antenir-vos\([^[:alnum:]]\)/\1antindre-us\2/g
    s/\b\([Mm]\)antenir\([^[:alnum:]]\)/\1antindre\2/g
        # PDT:
        s/\b\([Mm]\)antingueu\([^[:alnum:]]\)/\1anteniu\2/g
    s/\b\([Mm]\)antingués\([^[:alnum:]]\)/\1antinguera\2/g
    s/\b\([Mm]\)antinguéssi\([mu]\)\([^[:alnum:]]\)/\1antinguére\2\3/g
    s/\b\([Mm]\)antinguessi\([ns]\)\([^[:alnum:]]\)/\1antinguere\2\3/g
    s/\b\([Mm]\)antingui\([^[:alnum:]]\)/\1antinga\2/g
    s/\b\([Mm]\)antingui\([ns]\)\([^[:alnum:]]\)/\1antinge\2\3/g
    # obtenir -> obtindre
    s/\b\([Oo]\)btén\([^[:alnum:]]\)/\1btín\2/g
        s/\b\([Oo]\)btenir-\([mns]\)e\([^[:alnum:]]\)/\1btindre'\2\3/g
        s/\b\([Oo]\)btenir-lo\(s\|\)\([^[:alnum:]]\)/\1btindre'l\2\3/g
        s/\b\([Oo]\)btenir-nos\([^[:alnum:]]\)/\1btindre'ns\2/g
        s/\b\([Oo]\)btenir-\([st]\)e\([^[:alnum:]]\)/\1btindre'\2\3/g
        s/\b\([Oo]\)btenir-vos\([^[:alnum:]]\)/\1btindre-us\2/g
    s/\b\([Oo]\)btenir\([^[:alnum:]]\)/\1btindre\2/g
    s/\b\([Oo]\)btingués\([^[:alnum:]]\)/\1btinguera\2/g
    s/\b\([Oo]\)btinguéssi\([mu]\)\([^[:alnum:]]\)/\1btinguére\2\3/g
    s/\b\([Oo]\)btinguessi\([ns]\)\([^[:alnum:]]\)/\1btinguere\2\3/g
    s/\b\([Oo]\)btingui\([^[:alnum:]]\)/\1btinga\2/g
    s/\b\([Oo]\)btingui\([ns]\)\([^[:alnum:]]\)/\1btingue\2\3/g
    # retenir -> retindre
    s/\b\([Rr]\)et\(én\|ingues\)\([^[:alnum:]]\)/\1etín\3/g
        s/\b\([Rr]\)etenir-\([mns]\)e\([^[:alnum:]]\)/\1etindre'\2\3/g
        s/\b\([Rr]\)etenir-lo\(s\|\)\([^[:alnum:]]\)/\1etindre'l\2\3/g
        s/\b\([Rr]\)etenir-nos\([^[:alnum:]]\)/\1etindre'ns\2/g
        s/\b\([Rr]\)etenir-\([st]\)e\([^[:alnum:]]\)/\1etindre'\2\3/g
        s/\b\([Rr]\)etenir-vos\([^[:alnum:]]\)/\1etindre-us\2/g
    s/\b\([Rr]\)etenir\([^[:alnum:]]\)/\1etindre\2/g
    s/\b\([Rr]\)etingués\([^[:alnum:]]\)/\1etinguera\2/g
    s/\b\([Rr]\)etinguéssi\([mu]\)\([^[:alnum:]]\)/\1etinguére\2\3/g
    s/\b\([Rr]\)etinguessi\([ns]\)\([^[:alnum:]]\)/\1etinguere\2\3/g
    s/\b\([Rr]\)etingui\([^[:alnum:]]\)/\1etinga\2/g
    s/\b\([Rr]\)etingui\([ns]\)\([^[:alnum:]]\)/\1etingue\2\3/g
# tenyir
s/\b\([Tt]\)enyeix\(o\|\)\([^[:alnum:]]\)/\1iny\3/g
s/\b\([Tt]\)enyeixen\([^[:alnum:]]\)/\1inyen\2/g
s/\b\([Tt]\)enyeixes\([^[:alnum:]]\)/\1inys\2/g
s/\b\([Tt]\)enyeixi\([^[:alnum:]]\)/\1inya\2/g
s/\b\([Tt]\)enyeixi\([ns]\)\([^[:alnum:]]\)/\1inye\2\3/g
    # destenyir
    s/\b\([Dd]\)estenyeix\(o\|\)\([^[:alnum:]]\)/\1estiny\3/g
    s/\b\([Dd]\)estenyeixen\([^[:alnum:]]\)/\1estinyen\2/g
    s/\b\([Dd]\)estenyeixes\([^[:alnum:]]\)/\1estinys\2/g
    s/\b\([Dd]\)estenyeixi\([^[:alnum:]]\)/\1estinya\2/g
    s/\b\([Dd]\)estenyeixi\([ns]\)\([^[:alnum:]]\)/\1estinye\2\3/g
    # retenyir
    s/\b\([Rr]\)etenyeix\(o\|\)\([^[:alnum:]]\)/\1etiny\3/g
    s/\b\([Rr]\)etenyeixen\([^[:alnum:]]\)/\1etinyen\2/g
    s/\b\([Rr]\)etenyeixes\([^[:alnum:]]\)/\1etinys\2/g
    s/\b\([Rr]\)etenyeixi\([^[:alnum:]]\)/\1etinya\2/g
    s/\b\([Rr]\)etenyeixi\([ns]\)\([^[:alnum:]]\)/\1etinye\2\3/g
# tirar
s/\b\([Tt]\)irés\([^[:alnum:]]\)/\1irara\2/g
s/\b\([Tt]\)iréssi\([mu]\)\([^[:alnum:]]\)/\1iràre\2\3/g
s/\b\([Tt]\)iressi\([ns]\)\([^[:alnum:]]\)/\1irare\2\3/g
s/\b\([Tt]\)ir\([io]\)\([^[:alnum:]]\)/\1ire\3/g
s/\b\([Tt]\)iri\([ns]\)\([^[:alnum:]]\)/\1ire\2\3/g
    # estirar
    s/\b\([Ee]\)stirés\([^[:alnum:]]\)/\1stirara\2/g
    s/\b\([Ee]\)stiréssi\([mu]\)\([^[:alnum:]]\)/\1stiràre\2\3/g
    s/\b\([Ee]\)stiressi\([ns]\)\([^[:alnum:]]\)/\1stirare\2\3/g
    s/\b\([Ee]\)stir\([io]\)\([^[:alnum:]]\)/\1stire\3/g
    s/\b\([Ee]\)stiri\([ns]\)\([^[:alnum:]]\)/\1stire\2\3/g
    # retirar
    s/\b\([Rr]\)etirés\([^[:alnum:]]\)/\1etirara\2/g
    s/\b\([Rr]\)etiréssi\([mu]\)\([^[:alnum:]]\)/\1etiràre\2\3/g
    s/\b\([Rr]\)etiressi\([ns]\)\([^[:alnum:]]\)/\1etirare\2\3/g
    s/\b\([Rr]\)etir\([io]\)\([^[:alnum:]]\)/\1etire\3/g
    s/\b\([Rr]\)etiri\([ns]\)\([^[:alnum:]]\)/\1etire\2\3/g
        # enretirar
        s/\b\([Ee]\)nretirés\([^[:alnum:]]\)/\1nretirara\2/g
        s/\b\([Ee]\)nretiréssi\([mu]\)\([^[:alnum:]]\)/\1nretiràre\2\3/g
        s/\b\([Ee]\)nretiressi\([ns]\)\([^[:alnum:]]\)/\1nretirare\2\3/g
        s/\b\([Ee]\)nretir\([io]\)\([^[:alnum:]]\)/\1nretire\3/g
        s/\b\([Ee]\)nretiri\([ns]\)\([^[:alnum:]]\)/\1nretire\2\3/g
# tornar
s/\b\([Tt]\)ornés\([^[:alnum:]]\)/\1ornara\2/g
s/\b\([Tt]\)ornéssi\([mu]\)\([^[:alnum:]]\)/\1ornàre\2\3/g
s/\b\([Tt]\)ornessi\([ns]\)\([^[:alnum:]]\)/\1ornare\2\3/g
s/\b\([Tt]\)orn\([io]\)\([^[:alnum:]]\)/\1orne\3/g
s/\b\([Tt]\)orni\([ns]\)\([^[:alnum:]]\)/\1orne\2\3/g
    # bestornar
    s/\b\([Bb]\)estornés\([^[:alnum:]]\)/\1estornara\2/g
    s/\b\([Bb]\)estornéssi\([mu]\)\([^[:alnum:]]\)/\1estornàre\2\3/g
    s/\b\([Bb]\)estornessi\([ns]\)\([^[:alnum:]]\)/\1estornare\2\3/g
    s/\b\([Bb]\)estorn\([io]\)\([^[:alnum:]]\)/\1estorne\3/g
    s/\b\([Bb]\)estorni\([ns]\)\([^[:alnum:]]\)/\1estorne\2\3/g
    # contornar
    s/\b\([Cc]\)ontornés\([^[:alnum:]]\)/\1ontornara\2/g
    s/\b\([Cc]\)ontornéssi\([mu]\)\([^[:alnum:]]\)/\1ontornàre\2\3/g
    s/\b\([Cc]\)ontornessi\([ns]\)\([^[:alnum:]]\)/\1ontornare\2\3/g
    s/\b\([Cc]\)ontorn\([io]\)\([^[:alnum:]]\)/\1ontorne\3/g
    s/\b\([Cc]\)ontorni\([ns]\)\([^[:alnum:]]\)/\1ontorne\2\3/g
    # embotornar
    s/\b\([Ee]\)mbotornés\([^[:alnum:]]\)/\1mbotornara\2/g
    s/\b\([Ee]\)mbotornéssi\([mu]\)\([^[:alnum:]]\)/\1mbotornàre\2\3/g
    s/\b\([Ee]\)mbotornessi\([ns]\)\([^[:alnum:]]\)/\1mbotornare\2\3/g
    s/\b\([Ee]\)mbotorn\([io]\)\([^[:alnum:]]\)/\1mbotorne\3/g
    s/\b\([Ee]\)mbotorni\([ns]\)\([^[:alnum:]]\)/\1mbotorne\2\3/g
        # desembotornar
        s/\b\([Dd]\)esembotornés\([^[:alnum:]]\)/\1esembotornara\2/g
        s/\b\([Dd]\)esembotornéssi\([mu]\)\([^[:alnum:]]\)/\1esembotornàre\2\3/g
        s/\b\([Dd]\)esembotornessi\([ns]\)\([^[:alnum:]]\)/\1esembotornare\2\3/g
        s/\b\([Dd]\)esembotorn\([io]\)\([^[:alnum:]]\)/\1esembotorne\3/g
        s/\b\([Dd]\)esembotorni\([ns]\)\([^[:alnum:]]\)/\1esembotorne\2\3/g
    # entornar
    s/\b\([Ee]\)ntornés\([^[:alnum:]]\)/\1ntornara\2/g
    s/\b\([Ee]\)ntornéssi\([mu]\)\([^[:alnum:]]\)/\1ntornàre\2\3/g
    s/\b\([Ee]\)ntornessi\([ns]\)\([^[:alnum:]]\)/\1ntornare\2\3/g
    s/\b\([Ee]\)ntorn\([io]\)\([^[:alnum:]]\)/\1ntorne\3/g
    s/\b\([Ee]\)ntorni\([ns]\)\([^[:alnum:]]\)/\1ntorne\2\3/g
    # mantornar
    s/\b\([Mm]\)antornés\([^[:alnum:]]\)/\1antornara\2/g
    s/\b\([Mm]\)antornéssi\([mu]\)\([^[:alnum:]]\)/\1antornàre\2\3/g
    s/\b\([Mm]\)antornessi\([ns]\)\([^[:alnum:]]\)/\1antornare\2\3/g
    s/\b\([Mm]\)antorn\([io]\)\([^[:alnum:]]\)/\1antorne\3/g
    s/\b\([Mm]\)antorni\([ns]\)\([^[:alnum:]]\)/\1antorne\2\3/g
    # retornar
    s/\b\([Rr]\)etornés\([^[:alnum:]]\)/\1etornara\2/g
    s/\b\([Rr]\)etornéssi\([mu]\)\([^[:alnum:]]\)/\1etornàre\2\3/g
    s/\b\([Rr]\)etornessi\([ns]\)\([^[:alnum:]]\)/\1etornare\2\3/g
    s/\b\([Rr]\)etorn\([io]\)\([^[:alnum:]]\)/\1etorne\3/g
    s/\b\([Rr]\)etorni\([ns]\)\([^[:alnum:]]\)/\1etorne\2\3/g
    # trastornar
    s/\b\([Tt]\)ranstornés\([^[:alnum:]]\)/\1ranstornara\2/g
    s/\b\([Tt]\)ranstornéssi\([mu]\)\([^[:alnum:]]\)/\1ranstornàre\2\3/g
    s/\b\([Tt]\)ranstornessi\([ns]\)\([^[:alnum:]]\)/\1ranstornare\2\3/g
    s/\b\([Tt]\)ranstorn\([io]\)\([^[:alnum:]]\)/\1ranstorne\3/g
    s/\b\([Tt]\)ranstorni\([ns]\)\([^[:alnum:]]\)/\1ranstorne\2\3/g
s/\bToro\(s\|\)\([^[:alnum:]]\)/Bou\1\2/g
s/\btoro\(s\|\)\([^[:alnum:]]\)/bou\1\2/g
# tocar
s/\b\([Tt]\)oqués\([^[:alnum:]]\)/\1ocara\2/g
s/\b\([Tt]\)oquéssi\([mu]\)\([^[:alnum:]]\)/\1ocàre\2\3/g
s/\b\([Tt]\)oquessi\([ns]\)\([^[:alnum:]]\)/\1ocare\2\3/g
s/\b\([Tt]\)oqui\([ns]\|\)\([^[:alnum:]]\)/\1oque\2\3/g
s/\b\([Tt]\)oco\([^[:alnum:]]\)/\1oque\2/g
    # pertocar
    s/\b\([Pp]\)ertoqués\([^[:alnum:]]\)/\1ertocara\2/g
    s/\b\([Pp]\)ertoquéssi\([mu]\)\([^[:alnum:]]\)/\1ertocàre\2\3/g
    s/\b\([Pp]\)ertoquessi\([ns]\)\([^[:alnum:]]\)/\1ertocare\2\3/g
    s/\b\([Pp]\)ertoqui\([ns]\|\)\([^[:alnum:]]\)/\1ertoque\2\3/g
    s/\b\([Pp]\)ertoco\([^[:alnum:]]\)/\1ertoque\2/g
    # retocar
    s/\b\([Rr]\)etoqués\([^[:alnum:]]\)/\1etocara\2/g
    s/\b\([Rr]\)etoquéssi\([mu]\)\([^[:alnum:]]\)/\1etocàre\2\3/g
    s/\b\([Rr]\)etoquessi\([ns]\)\([^[:alnum:]]\)/\1etocare\2\3/g
    s/\b\([Rr]\)etoqui\([ns]\|\)\([^[:alnum:]]\)/\1etoque\2\3/g
    s/\b\([Rr]\)etoco\([^[:alnum:]]\)/\1etoque\2/g
    # trastocar
    s/\b\([Tt]\)rastoqués\([^[:alnum:]]\)/\1rastocara\2/g
    s/\b\([Tt]\)rastoquéssi\([mu]\)\([^[:alnum:]]\)/\1rastocàre\2\3/g
    s/\b\([Tt]\)rastoquessi\([ns]\)\([^[:alnum:]]\)/\1rastocare\2\3/g
    s/\b\([Tt]\)rastoqui\([ns]\|\)\([^[:alnum:]]\)/\1rastoque\2\3/g
    s/\b\([Tt]\)rastoco\([^[:alnum:]]\)/\1rastoque\2/g
# tolerar
s/\b\([Tt]\)olerés\([^[:alnum:]]\)/\1olerara\2/g
s/\b\([Tt]\)oleréssi\([mu]\)\([^[:alnum:]]\)/\1oleràre\2\3/g
s/\b\([Tt]\)oleressi\([ns]\)\([^[:alnum:]]\)/\1olerare\2\3/g
s/\b\([Tt]\)oler\([io]\)\([^[:alnum:]]\)/\1olere\3/g
s/\b\([Tt]\)oleri\([ns]\)\([^[:alnum:]]\)/\1olere\2\3/g
s/\b\([Tt]\)omàquet\([^[:alnum:]]\)/\1omaca\2/g
s/\b\([Tt]\)omàquets\([^[:alnum:]]\)/\1omaques\2/g
s/\b\([Tt]\)ongalès\([^[:alnum:]]\)/\1ongalés\2/g
# torcejar
s/\b\([Tt]\)orcegés\([^[:alnum:]]\)/\1orcejara\2/g
s/\b\([Tt]\)orcegéssi\([mu]\)\([^[:alnum:]]\)/\1orcejàre\2\3/g
s/\b\([Tt]\)orcegessi\([ns]\)\([^[:alnum:]]\)/\1orcejare\2\3/g
s/\b\([Tt]\)orcegi\([ns]\|\)\([^[:alnum:]]\)/\1orcege\2\3/g
s/\b\([Tt]\)orcejo\([^[:alnum:]]\)/\1orcege\2/g
# tornar
s/\b\([Tt]\)ornés\([^[:alnum:]]\)/\1ornara\2/g
s/\b\([Tt]\)ornéssi\([mu]\)\([^[:alnum:]]\)/\1ornàre\2\3/g
s/\b\([Tt]\)ornessi\([ns]\)\([^[:alnum:]]\)/\1ornare\2\3/g
s/\b\([Tt]\)orn\([io]\)\([^[:alnum:]]\)/\1orne\3/g
s/\b\([Tt]\)orni\([ns]\)\([^[:alnum:]]\)/\1orne\2\3/g
    # retornar
    s/\b\([Rr]\)etornés\([^[:alnum:]]\)/\1etornara\2/g
    s/\b\([Rr]\)etornéssi\([mu]\)\([^[:alnum:]]\)/\1etornàre\2\3/g
    s/\b\([Rr]\)etornessi\([ns]\)\([^[:alnum:]]\)/\1etornare\2\3/g
    s/\b\([Rr]\)etorn\([io]\)\([^[:alnum:]]\)/\1etorne\3/g
    s/\b\([Rr]\)etorni\([ns]\)\([^[:alnum:]]\)/\1etorne\2\3/g
s/\bTou\([^[:alnum:]]\)/Bla\1/g
s/\btou\([^[:alnum:]]\)/bla\1/g
s/\bTous\([^[:alnum:]]\)/Blans\1/g
s/\btous\([^[:alnum:]]\)/blans\1/g
s/\bTov\(a\|es\)\([^[:alnum:]]\)/Blan\1\2/g
s/\btov\(a\|es\)\([^[:alnum:]]\)/blan\1\2/g
# traçar
s/\b\([Tt]\)racés\([^[:alnum:]]\)/\1raçara\2/g
s/\b\([Tt]\)racéssi\([mu]\)\([^[:alnum:]]\)/\1raçàre\2\3/g
s/\b\([Tt]\)racessi\([ns]\)\([^[:alnum:]]\)/\1raçare\2\3/g
s/\b\([Tt]\)raço\([^[:alnum:]]\)/\1race\2/g
s/\b\([Tt]\)raci\([ns]\|\)\([^[:alnum:]]\)/\1race\2\3/g
# tractar
s/\b\([Tt]\)ractés\([^[:alnum:]]\)/\1ractara\2/g
s/\b\([Tt]\)ractéssi\([mu]\)\([^[:alnum:]]\)/\1ractàre\2\3/g
s/\b\([Tt]\)ractessi\([ns]\)\([^[:alnum:]]\)/\1ractare\2\3/g
s/\b\([Tt]\)ract\([io]\)\([^[:alnum:]]\)/\1racte\3/g
s/\b\([Tt]\)racti\([ns]\)\([^[:alnum:]]\)/\1racte\2\3/g
# traduir
s/\b\([Tt]\)radueix\(e[ns]\|\)\([^[:alnum:]]\)/\1raduïx\2\3/g
s/\b\([Tt]\)radueixi\([^[:alnum:]]\)/\1raduïsca\2/g
s/\b\([Tt]\)radueixi\([ns]\)\([^[:alnum:]]\)/\1raduïsque\2\3/g
s/\b\([Tt]\)radueixo\([^[:alnum:]]\)/\1raduïsc\2/g
s/\b\([Tt]\)raduís\([^[:alnum:]]\)/\1raduïra\2/g
s/\b\([Tt]\)raduíssi\([mu]\)\([^[:alnum:]]\)/\1raduíre\2\3/g
s/\b\([Tt]\)raduïssi\([ns]\)\([^[:alnum:]]\)/\1raduïre\2\3/g
# transposa -> invertix (esmenes)
# travessar
s/\b\([Tt]\)ravessés\([^[:alnum:]]\)/\1ravessara\2/g
s/\b\([Tt]\)ravesséssi\([mu]\)\([^[:alnum:]]\)/\1ravessàre\2\3/g
s/\b\([Tt]\)ravessessi\([ns]\)\([^[:alnum:]]\)/\1ravessare\2\3/g
s/\b\([Tt]\)ravess\([io]\)\([^[:alnum:]]\)/\1ravesse\3/g
s/\b\([Tt]\)ravessi\([ns]\)\([^[:alnum:]]\)/\1ravesse\2\3/g
    # desentravessar
    s/\b\([Dd]\)esentravessés\([^[:alnum:]]\)/\1esentravessara\2/g
    s/\b\([Dd]\)esentravesséssi\([mu]\)\([^[:alnum:]]\)/\1esentravessàre\2\3/g
    s/\b\([Dd]\)esentravessessi\([ns]\)\([^[:alnum:]]\)/\1esentravessare\2\3/g
    s/\b\([Dd]\)esentravess\([io]\)\([^[:alnum:]]\)/\1esentravesse\3/g
    s/\b\([Dd]\)esentravessi\([ns]\)\([^[:alnum:]]\)/\1esentravesse\2\3/g
    # entravessar
    s/\b\([Ee]\)ntravessés\([^[:alnum:]]\)/\1ntravessara\2/g
    s/\b\([Ee]\)ntravesséssi\([mu]\)\([^[:alnum:]]\)/\1ntravessàre\2\3/g
    s/\b\([Ee]\)ntravessessi\([ns]\)\([^[:alnum:]]\)/\1ntravessare\2\3/g
    s/\b\([Ee]\)ntravess\([io]\)\([^[:alnum:]]\)/\1ntravesse\3/g
    s/\b\([Ee]\)ntravessi\([ns]\)\([^[:alnum:]]\)/\1ntravesse\2\3/g
# treballar
s/\b\([Tt]\)reballés\([^[:alnum:]]\)/\1reballara\2/g
s/\b\([Tt]\)reballéssi\([mu]\)\([^[:alnum:]]\)/\1reballàre\2\3/g
s/\b\([Tt]\)reballessi\([ns]\)\([^[:alnum:]]\)/\1reballare\2\3/g
s/\b\([Tt]\)reball\([io]\)\([^[:alnum:]]\)/\1reballe\3/g
s/\b\([Tt]\)reballi\([ns]\)\([^[:alnum:]]\)/\1reballe\2\3/g
# treure -> traure (esmenes)
    # atreure -> atraure (esmenes)
    # contreure -> contraure (esmenes)
    # distreure -> distraure (esmenes)
    # extreure -> extraure (esmenes)
    # retreure -> retraure (esmenes)
    # sostreure -> sostraure (esmenes)
# triar
s/\b\([Tt]\)riés\([^[:alnum:]]\)/\1riara\2/g
s/\b\([Tt]\)riéssi\([mu]\)\([^[:alnum:]]\)/\1riàre\2\3/g
s/\b\([Tt]\)riessi\([ns]\)\([^[:alnum:]]\)/\1riare\2\3/g
s/\b\([Tt]\)ri\([ïo]\)\([^[:alnum:]]\)/\1rie\3/g
s/\b\([Tt]\)riï\([ns]\)\([^[:alnum:]]\)/\1rie\2\3/g
# trigar -> tardar
s/\b\([Tt]\)rigà\([^[:alnum:]]\)/\1ardà\2/g
# s/\b\([Tt]\)riga\([^[:alnum:]]\)/\1arda\2/g # No es recomana
s/\b\([Tt]\)riga\(da\|des\|nt\|[rt]\|rà\|ran\|ren\|ria\|ts\|va\|ven\)\([^[:alnum:]]\)/\1arda\2\3/g
s/\b\([Tt]\)rigue\([mnsu]\)\([^[:alnum:]]\)/\1arde\2\3/g
s/\b\([Tt]\)rigués\([^[:alnum:]]\)/\1ardara\2/g
s/\b\([Tt]\)riguéssi\([mu]\|\)\([^[:alnum:]]\)/\1ardàre\2\3/g
s/\b\([Tt]\)riguessi\([ns]\|\)\([^[:alnum:]]\)/\1ardare\2\3/g
s/\b\([Tt]\)rigui\([ns]\|\)\([^[:alnum:]]\)/\1arde\2\3/g
s/\b\([Tt]\)rigo\([^[:alnum:]]\)/\1arde\2/g
    # tardar
    s/\b\([Tt]\)ardés\([^[:alnum:]]\)/\1ardara\2/g
    s/\b\([Tt]\)ardéssi\([mu]\|\)\([^[:alnum:]]\)/\1ardàre\2\3/g
    s/\b\([Tt]\)ardessi\([ns]\|\)\([^[:alnum:]]\)/\1ardare\2\3/g
    s/\b\([Tt]\)ardi\([ns]\|\)\([^[:alnum:]]\)/\1arde\2\3/g
    s/\b\([Tt]\)ardo\([^[:alnum:]]\)/\1arde\2/g
# trobar
s/\b\([Tt]\)robés\([^[:alnum:]]\)/\1robara\2/g
s/\b\([Tt]\)robéssi\([mu]\)\([^[:alnum:]]\)/\1robàre\2\3/g
s/\b\([Tt]\)robessi\([ns]\)\([^[:alnum:]]\)/\1robare\2\3/g
s/\b\([Tt]\)rob\([io]\)\([^[:alnum:]]\)/\1robe\3/g
s/\b\([Tt]\)robi\([ns]\)\([^[:alnum:]]\)/\1robe\2\3/g
    # retrobar
    s/\b\([Rr]\)etrobés\([^[:alnum:]]\)/\1etrobara\2/g
    s/\b\([Rr]\)etrobéssi\([mu]\)\([^[:alnum:]]\)/\1etrobàre\2\3/g
    s/\b\([Rr]\)etrobessi\([ns]\)\([^[:alnum:]]\)/\1etrobare\2\3/g
    s/\b\([Rr]\)etrob\([io]\)\([^[:alnum:]]\)/\1etrobe\3/g
    s/\b\([Rr]\)etrobi\([ns]\)\([^[:alnum:]]\)/\1etrobe\2\3/g
# trossejar
s/\b\([Tt]\)rossegés\([^[:alnum:]]\)/\1rossejara\2/g
s/\b\([Tt]\)rossegéssi\([mu]\)\([^[:alnum:]]\)/\1rossejàre\2\3/g
s/\b\([Tt]\)rossegessi\([ns]\)\([^[:alnum:]]\)/\1rossejare\2\3/g
s/\b\([Tt]\)rossegi\([ns]\|\)\([^[:alnum:]]\)/\1rossege\2\3/g
s/\b\([Tt]\)rossejo\([^[:alnum:]]\)/\1rossege\2/g
# trucar -> tocar
s/\b\([Tt]\)ruca\(da\|des\|nt\|nts\|[rt]\|rà\|\)\([^[:alnum:]]\)/\1oca\2\3/g
s/\b\([Tt]\)ruqués\([^[:alnum:]]\)/\1rucara\2/g
s/\b\([Tt]\)ruquéssi\([mu]\|\)\([^[:alnum:]]\)/\1rucàre\2\3/g
s/\b\([Tt]\)ruquessi\([ns]\|\)\([^[:alnum:]]\)/\1rucare\2\3/g
s/\b\([Tt]\)ruqui\([ns]\|\)\([^[:alnum:]]\)/\1oque\2\3/g
s/\b\([Tt]\)ruco\([^[:alnum:]]\)/\1oque\2/g
# truncar
s/\b\([Tt]\)runqués\([^[:alnum:]]\)/\1runcara\2/g
s/\b\([Tt]\)runquéssi\([mu]\|\)\([^[:alnum:]]\)/\1runcàre\2\3/g
s/\b\([Tt]\)runquessi\([ns]\|\)\([^[:alnum:]]\)/\1runcare\2\3/g
s/\b\([Tt]\)runqui\([ns]\|\)\([^[:alnum:]]\)/\1runque\2\3/g
s/\b\([Tt]\)runco\([^[:alnum:]]\)/\1runque\2/g
# turmentar
s/\b\([Tt]\)urmentés\([^[:alnum:]]\)/\1urmentara\2/g
s/\b\([Tt]\)urmentéssi\([mu]\)\([^[:alnum:]]\)/\1urmentàre\2\3/g
s/\b\([Tt]\)urmentessi\([ns]\)\([^[:alnum:]]\)/\1urmentare\2\3/g
s/\b\([Tt]\)urment\([io]\)\([^[:alnum:]]\)/\1urmente\3/g
s/\b\([Tt]\)urmenti\([ns]\)\([^[:alnum:]]\)/\1urmente\2\3/g
s/\b\([Tt]\)yumèn\([^[:alnum:]]\)/\1yumén\2/g
# u
#
s/\b\([Uu]\)craïnès\([^[:alnum:]]\)/\1craïnés\2/g
s/\b\([Uu]\)gandès\([^[:alnum:]]\)/\1gandés\2/g
# unificar
s/\b\([Uu]\)nifiqués\([^[:alnum:]]\)/\1nificara\2/g
s/\b\([Uu]\)nifiquéssi\([mu]\|\)\([^[:alnum:]]\)/\1nificàre\2\3/g
s/\b\([Uu]\)nifiquessi\([ns]\|\)\([^[:alnum:]]\)/\1nificare\2\3/g
s/\b\([Uu]\)nifiqui\([ns]\|\)\([^[:alnum:]]\)/\1nifique\2\3/g
s/\b\([Uu]\)nifico\([^[:alnum:]]\)/\1nifique\2/g
# unir
s/\b\([Uu]\)neix\(e[ns]\|\)\([^[:alnum:]]\)/\1nix\2\3/g
s/\b\([Uu]\)neixi\([^[:alnum:]]\)/\1nisca\2/g
s/\b\([Uu]\)neixi\([ns]\)\([^[:alnum:]]\)/\1nisque\2\3/g
s/\b\([Uu]\)neixo\([^[:alnum:]]\)/\1nisc\2/g
s/\b\([Uu]\)nís\([^[:alnum:]]\)/\1nira\2/g
s/\b\([Uu]\)níssi\([mu]\|\)\([^[:alnum:]]\)/\1níre\2\3/g
s/\b\([Uu]\)nissi\([ns]\|\)\([^[:alnum:]]\)/\1nire\2\3/g
    # reunir
    s/\b\([Rr]\)euneix\(e[ns]\|\)\([^[:alnum:]]\)/\1eunix\2\3/g
    s/\b\([Rr]\)euneixi\([^[:alnum:]]\)/\1eunisca\2/g
    s/\b\([Rr]\)euneixi\([ns]\)\([^[:alnum:]]\)/\1eunisque\2\3/g
    s/\b\([Rr]\)euneixo\([^[:alnum:]]\)/\1eunisc\2/g
    s/\b\([Rr]\)eunís\([^[:alnum:]]\)/\1eunira\2/g
    s/\b\([Rr]\)euníssi\([mu]\|\)\([^[:alnum:]]\)/\1euníre\2\3/g
    s/\b\([Rr]\)eunissi\([ns]\|\)\([^[:alnum:]]\)/\1eunire\2\3/g
# utilitzar
s/\b\([Uu]\)tilitzés\([^[:alnum:]]\)/\1tilitzara\2/g
s/\b\([Uu]\)tilitzéssi\([mu]\|\)\([^[:alnum:]]\)/\1tilitàre\2\3/g
s/\b\([Uu]\)tilitzessi\([ns]\|\)\([^[:alnum:]]\)/\1tilitzare\2\3/g
s/\b\([Uu]\)tilitz\([io]\)\([^[:alnum:]]\)/\1tilitze\3/g
s/\b\([Uu]\)tilitzi\([ns]\)\([^[:alnum:]]\)/\1tilitze\2\3/g
    # reutilitzar
    s/\b\([Rr]\)eutilitzés\([^[:alnum:]]\)/\1eutilitzara\2/g
    s/\b\([Rr]\)eutilitzéssi\([mu]\|\)\([^[:alnum:]]\)/\1eutilitàre\2\3/g
    s/\b\([Rr]\)eutilitzessi\([ns]\|\)\([^[:alnum:]]\)/\1eutilitzare\2\3/g
    s/\b\([Rr]\)eutilitz\([io]\)\([^[:alnum:]]\)/\1eutilitze\3/g
    s/\b\([Rr]\)eutilitzi\([ns]\)\([^[:alnum:]]\)/\1eutilitze\2\3/g
    # sobreutilitzar
    s/\b\([Ss]\)obreutilitzés\([^[:alnum:]]\)/\1obreutilitzara\2/g
    s/\b\([Ss]\)obreutilitzéssi\([mu]\|\)\([^[:alnum:]]\)/\1obreutilitàre\2\3/g
    s/\b\([Ss]\)obreutilitzessi\([ns]\|\)\([^[:alnum:]]\)/\1obreutilitzare\2\3/g
    s/\b\([Ss]\)obreutilitz\([io]\)\([^[:alnum:]]\)/\1obreutilitze\3/g
    s/\b\([Ss]\)obreutilitzi\([ns]\)\([^[:alnum:]]\)/\1obreutilitze\2\3/g
# v
#
# va (verb auxiliar)
s/\b\([Vv]\)àre\([mu]\)\([^[:alnum:]]\)/\1a\2\3/g
s/\b\([Vv]\)aren\([^[:alnum:]]\)/\1an\2/g
# valer -> valdre
s/\b\([Vv]\)aler\([^[:alnum:]]\)/\1aldre\2/g
s/\b\([Vv]\)algués\([^[:alnum:]]\)/\1alguera\2/g
s/\b\([Vv]\)alguéssi\([mu]\)\([^[:alnum:]]\)/\1alguère\2\3/g
s/\b\([Vv]\)alguessi\([ns]\)\([^[:alnum:]]\)/\1alguere\2\3/g
s/\b\([Vv]\)algui\([^[:alnum:]]\)/\1alga\2/g
s/\b\([Vv]\)alguin\([^[:alnum:]]\)/\1alguen\2/g
# varar
s/\b\([Vv]\)arau\([^[:alnum:]]\)/\1areu\2/g
s/\b\([Vv]\)arés\([^[:alnum:]]\)/\1arara\2/g
s/\b\([Vv]\)aréssi\([mu]\|\)\([^[:alnum:]]\)/\1aràre\2\3/g
s/\b\([Vv]\)aressi\([ns]\|\)\([^[:alnum:]]\)/\1arare\2\3/g
s/\b\([Vv]\)ar\([io]\)\([^[:alnum:]]\)/\1are\2\3/g
s/\b\([Vv]\)ari\([n]\)\([^[:alnum:]]\)/\1are\2\3/g
    # esvarar   
    s/\b\([Ee]\)svara\([mu]\)\([^[:alnum:]]\)/\1svare\2\3/g
    s/\b\([Ee]\)svarés\([^[:alnum:]]\)/\1svarara\2/g
    s/\b\([Ee]\)svaréssi\([mu]\|\)\([^[:alnum:]]\)/\1svaràre\2\3/g
    s/\b\([Ee]\)svaressi\([ns]\|\)\([^[:alnum:]]\)/\1svarare\2\3/g
    s/\b\([Ee]\)svar\([io]\)\([^[:alnum:]]\)/\1svare\3/g
    s/\b\([Ee]\)svari\([ns]\)\([^[:alnum:]]\)/\1svare\2\3/g
# variar
s/\b\([Vv]\)ariés\([^[:alnum:]]\)/\1ariara\2/g
s/\b\([Vv]\)ariéssi\([mu]\|\)\([^[:alnum:]]\)/\1ariàre\2\3/g
s/\b\([Vv]\)ariessi\([ns]\|\)\([^[:alnum:]]\)/\1ariare\2\3/g
s/\b\([Vv]\)ari\([ïo]\)\([^[:alnum:]]\)/\1arie\3/g
s/\b\([Vv]\)ariï\([ns]\)\([^[:alnum:]]\)/\1arie\2\3/g
s/\bVaris\([^[:alnum:]]\)/Miscelània\1/g
# venir -> vindre
    s/\b\([Vv]\)enir-\([mns]\)e\([^[:alnum:]]\)/\1indre'\2\3/g
    s/\b\([Vv]\)enir-lo\(s\|\)\([^[:alnum:]]\)/\1indre'l\2\3/g
    s/\b\([Vv]\)enir-nos\([^[:alnum:]]\)/\1indre'ns\2/g
    s/\b\([Vv]\)enir-\([st]\)e\([^[:alnum:]]\)/\1indre'\2\3/g
    s/\b\([Vv]\)enir-vos\([^[:alnum:]]\)/\1indre-us\2/g
s/\b\([Vv]\)enir\([^[:alnum:]]\)/\1indre\2/g
s/\b\([Vv]\)ingués\([^[:alnum:]]\)/\1inguera\2/g
s/\b\([Vv]\)inguéssi\([mu]\)\([^[:alnum:]]\)/\1inguére\2\3/g
s/\b\([Vv]\)inguessi\([ns]\)\([^[:alnum:]]\)/\1inguere\2\3/g
s/\b\([Vv]\)ingui\([^[:alnum:]]\)/\1inga\2/g
s/\b\([Vv]\)ingui\([ns]\)\([^[:alnum:]]\)/\1ingue\2\3/g
    # convenir -> convindre
        s/\b\([Cc]\)onvenir-\([mns]\)e\([^[:alnum:]]\)/\1onvindre'\2\3/g
        s/\b\([Cc]\)onvenir-lo\(s\|\)\([^[:alnum:]]\)/\1onvindre'l\2\3/g
        s/\b\([Cc]\)onvenir-nos\([^[:alnum:]]\)/\1onvindre'ns\2/g
        s/\b\([Cc]\)onvenir-\([st]\)e\([^[:alnum:]]\)/\1onvindre'\2\3/g
        s/\b\([Cc]\)onvenir-vos\([^[:alnum:]]\)/\1onvindre-us\2/g
    s/\b\([Cc]\)onvenir\([^[:alnum:]]\)/\1onvindre\1/g
    s/\b\([Cc]\)onvingués\([^[:alnum:]]\)/\1onvinguera\2/g
    s/\b\([Cc]\)onvinguéssi\([mu]\)\([^[:alnum:]]\)/\1onvinguére\2\3/g
    s/\b\([Cc]\)onvinguessi\([ns]\)\([^[:alnum:]]\)/\1onvinguere\2\3/g
    s/\b\([Cc]\)onvingui\([^[:alnum:]]\)/\1onvinga\2/g
    s/\b\([Cc]\)onvingui\([ns]\)\([^[:alnum:]]\)/\1onvingue\2\3/g
    # esdevenir -> esdevindre
        s/\b\([Ee]\)sdevenir-\([mns]\)e\([^[:alnum:]]\)/\1sdevindre'\2\3/g
        s/\b\([Ee]\)sdevenir-lo\(s\|\)\([^[:alnum:]]\)/\1sdevindre'l\2\3/g
        s/\b\([Ee]\)sdevenir-nos\([^[:alnum:]]\)/\1sdevindre'ns\2/g
        s/\b\([Ee]\)sdevenir-\([st]\)e\([^[:alnum:]]\)/\1sdevindre'\2\3/g
        s/\b\([Ee]\)sdevenir-vos\([^[:alnum:]]\)/\1sdevindre-us\2/g
    s/\b\([Ee]\)sdevenir\([^[:alnum:]]\)/\1sdevindre\2/g
    s/\b\([Ee]\)sdevingués\([^[:alnum:]]\)/\1sdevinguera\2/g
    s/\b\([Ee]\)sdevinguéssi\([mu]\)\([^[:alnum:]]\)/\1sdevinguére\2\3/g
    s/\b\([Ee]\)sdevinguessi\([ns]\)\([^[:alnum:]]\)/\1sdevinguere\2\3/g
    s/\b\([Ee]\)sdevingui\([^[:alnum:]]\)/\1sdevinga\2/g
    s/\b\([Ee]\)sdevingui\([ns]\)\([^[:alnum:]]\)/\1sdevingue\2\3/g
    # prevenir -> previndre
    # provenir -> provindre
        s/\b\([Pp]r[eo]\)venir-\([mns]\)e\([^[:alnum:]]\)/\1vindre'\2\3/g
        s/\b\([Pp]r[eo]\)venir-lo\(s\|\)\([^[:alnum:]]\)/\1vindre'l\2\3/g
        s/\b\([Pp]r[eo]\)venir-nos\([^[:alnum:]]\)/\1vindre'ns\2/g
        s/\b\([Pp]r[eo]\)venir-\([st]\)e\([^[:alnum:]]\)/\1vindre'\2\3/g
        s/\b\([Pp]r[eo]\)venir-vos\([^[:alnum:]]\)/\1vindre-us\2/g
    s/\b\([Pp]r[eo]\)venir\([^[:alnum:]]\)/\1vindre\2/g
    s/\b\([Pp]r[eo]\)vingués\([^[:alnum:]]\)/\1vinguera\2/g
    s/\b\([Pp]r[eo]\)vinguéssi\([mu]\)\([^[:alnum:]]\)/\1vinguére\2\3/g
    s/\b\([Pp]r[eo]\)vinguessi\([ns]\)\([^[:alnum:]]\)/\1vinguere\2\3/g
    s/\b\([Pp]r[eo]\)vingui\([^[:alnum:]]\)/\1vinga\2/g
    s/\b\([Pp]r[eo]\)vingui\([ns]\)\([^[:alnum:]]\)/\1vingue\2\3/g
s/\b\([Vv]\)eronès\([^[:alnum:]]\)/\1eronés\2/g
# vèncer -> véncer
s/\b\([Vv]\)èncer\([^[:alnum:]]\)/\1éncer\2/g
s/\b\([Vv]\)encés\([^[:alnum:]]\)/\1encera\2/g
s/\b\([Vv]\)encéssi\([mu]\)\([^[:alnum:]]\)/\1encére\2\3/g
s/\b\([Vv]\)encessi\([ns]\)\([^[:alnum:]]\)/\1encere\2\3/g
s/\b\([Vv]\)enci\([^[:alnum:]]\)/\1ença\2/g
s/\b\([Vv]\)enci\([ns]\)\([^[:alnum:]]\)/\1ence\2\3/g
s/\b\([Vv]\)enço\([^[:alnum:]]\)/\1enç\2/g
    # convèncer -> convéncer
    s/\b\([Cc]\)onvèncer\([^[:alnum:]]\)/\1onvéncer\2/g
    s/\b\([Cc]\)onvencés\([^[:alnum:]]\)/\1onvencera\2/g
    s/\b\([Cc]\)onvencéssi\([mu]\)\([^[:alnum:]]\)/\1onvencére\2\3/g
    s/\b\([Cc]\)onvencessi\([ns]\)\([^[:alnum:]]\)/\1onvencere\2\3/g
    s/\b\([Cc]\)onvenci\([^[:alnum:]]\)/\1onvença\2/g
    s/\b\([Cc]\)onvenci\([ns]\)\([^[:alnum:]]\)/\1onvence\2\3/g
    s/\b\([Cc]\)onvenço\([^[:alnum:]]\)/\1onvenç\2/g
    # revèncer -> revéncer
    s/\b\([Rr]\)evèncer\([^[:alnum:]]\)/\1evéncer\2/g
    s/\b\([Rr]\)evencés\([^[:alnum:]]\)/\1evencera\2/g
    s/\b\([Rr]\)evencéssi\([mu]\)\([^[:alnum:]]\)/\1evencére\2\3/g
    s/\b\([Rr]\)evencessi\([ns]\)\([^[:alnum:]]\)/\1evencere\2\3/g
    s/\b\([Rr]\)evenci\([^[:alnum:]]\)/\1evença\2/g
    s/\b\([Rr]\)evenci\([ns]\)\([^[:alnum:]]\)/\1evence\2\3/g
    s/\b\([Rr]\)evenço\([^[:alnum:]]\)/\1evenç\2/g
# verificar
s/\b\([Vv]\)erifiqués\([^[:alnum:]]\)/\1erificara\2/g
s/\b\([Vv]\)erifiquéssi\([mu]\)\([^[:alnum:]]\)/\1erificàre\2\3/g
s/\b\([Vv]\)erifiquessi\([ns]\)\([^[:alnum:]]\)/\1erificare\2\3/g
s/\b\([Vv]\)erifiqui\([ns]\|\)\([^[:alnum:]]\)/\1erifique\2\3/g
s/\b\([Vv]\)erifico\([^[:alnum:]]\)/\1erifique\2/g
s/\bVermell\([^[:alnum:]]\)/Roig\1/g
s/\bvermell\([^[:alnum:]]\)/roig\1/g
s/\bVermella\([^[:alnum:]]\)/Roja\1/g
s/\bvermella\([^[:alnum:]]\)/roja\1/g
s/\bVermells\([^[:alnum:]]\)/Rojos\1/g
s/\bvermells\([^[:alnum:]]\)/rojos\1/g
s/\bVermelles\([^[:alnum:]]\)/Rojes\1/g
s/\bvermelles\([^[:alnum:]]\)/rojes\1/g
# versejar
s/\b\([Vv]\)ersegés\([^[:alnum:]]\)/\1ersejara\2/g
s/\b\([Vv]\)ersegéssi\([mu]\)\([^[:alnum:]]\)/\1ersejàre\2\3/g
s/\b\([Vv]\)ersegessi\([ns]\)\([^[:alnum:]]\)/\1ersejare\2\3/g
s/\b\([Vv]\)ersegi\([ns]\|\)\([^[:alnum:]]\)/\1ersege\2\3/g
s/\b\([Vv]\)ersejo\([^[:alnum:]]\)/\1ersege\2/g
# vesprejar
s/\b\([Vv]\)espregés\([^[:alnum:]]\)/\1esprejara\2/g
s/\b\([Vv]\)espregéssi\([mu]\)\([^[:alnum:]]\)/\1esprejàre\2\3/g
s/\b\([Vv]\)espregessi\([ns]\)\([^[:alnum:]]\)/\1esprejare\2\3/g
s/\b\([Vv]\)espregi\([ns]\|\)\([^[:alnum:]]\)/\1esprege\2\3/g
s/\b\([Vv]\)esprejo\([^[:alnum:]]\)/\1esprege\2/g
# veure
s/\b\([Vv]\)egi\([^[:alnum:]]\)/\1eja\2/g
s/\b\([Vv]\)egi\([ns]\)\([^[:alnum:]]\)/\1ege\2\3/g
s/\b\([Vv]\)eié\([^[:alnum:]]\)/\1eu\2/g
s/\b\([Vv]\)eie\([mu]\|nt\)\([^[:alnum:]]\)/\1ee\2\3/g
s/\b\([Vv]\)eiére\([mu]\)\([^[:alnum:]]\)/\1ére\2\3/g
s/\b\([Vv]\)eiere\([ns]\)\([^[:alnum:]]\)/\1ere\2\3/g
s/\b\([Vv]\)eiéreu\([^[:alnum:]]\)/\1éreu\2/g
s/\b\([Vv]\)eiéssi\([mu]\)\([^[:alnum:]]\)/\1eiésse\2\3/g
s/\b\([Vv]\)eiessi\([ns]\)\([^[:alnum:]]\)/\1eiesse\2\3/g
s/\b\([Vv]\)ists\([^[:alnum:]]\)/\1istos\2/g
    # benveure
    s/\b\([Bb]\)envegi\([^[:alnum:]]\)/\1enveja\2/g
    s/\b\([Bb]\)envegi\([ns]\)\([^[:alnum:]]\)/\1envege\2\3/g
    s/\b\([Bb]\)enveié\([^[:alnum:]]\)/\1enveu\2/g
    s/\b\([Bb]\)envèie\([mu]\)\([^[:alnum:]]\)/\1envéie\2\3/g
    s/\b\([Bb]\)enveie\([mu]\|nt\)\([^[:alnum:]]\)/\1envee\2\3/g
    s/\b\([Bb]\)enveiére\([mu]\)\([^[:alnum:]]\)/\1envére\2\3/g
    s/\b\([Bb]\)enveiere\([ns]\)\([^[:alnum:]]\)/\1envere\2\3/g
    s/\b\([Bb]\)enveiés\([^[:alnum:]]\)/\1envera\2/g
    s/\b\([Bb]\)enveiéssi\([mu]\)\([^[:alnum:]]\)/\1envére\2\3/g
    s/\b\([Bb]\)enveiessi\([ns]\)\([^[:alnum:]]\)/\1envere\2\3/g
    s/\b\([Bb]\)envists\([^[:alnum:]]\)/\1envistos\2/g
    # entreveure
    s/\b\([Ee]\)ntrevegi\([^[:alnum:]]\)/\1ntreveja\2/g
    s/\b\([Ee]\)ntrevegi\([ns]\)\([^[:alnum:]]\)/\1ntrevege\2\3/g
    s/\b\([Ee]\)ntreveié\([^[:alnum:]]\)/\1ntreveu\2/g
    s/\b\([Ee]\)ntrevèie\([mu]\)\([^[:alnum:]]\)/\1ntrevéie\2\3/g
    s/\b\([Ee]\)ntreveie\([mu]\|nt\)\([^[:alnum:]]\)/\1ntrevee\2\3/g
    s/\b\([Ee]\)ntreveiére\([mu]\)\([^[:alnum:]]\)/\1ntrevére\2\3/g
    s/\b\([Ee]\)ntreveiere\([ns]\)\([^[:alnum:]]\)/\1ntrevere\2\3/g
    s/\b\([Ee]\)ntreveiés\([^[:alnum:]]\)/\1ntrevera\2/g
    s/\b\([Ee]\)ntreveiéssi\([mu]\)\([^[:alnum:]]\)/\1ntrevére\2\3/g
    s/\b\([Ee]\)ntreveiessi\([ns]\)\([^[:alnum:]]\)/\1ntrevere\2\3/g
    s/\b\([Ee]\)ntrevists\([^[:alnum:]]\)/\1ntrevistos\2/g
    # malveure
    s/\b\([Mm]\)alvegi\([^[:alnum:]]\)/\1alveja\2/g
    s/\b\([Mm]\)alvegi\([ns]\)\([^[:alnum:]]\)/\1alvege\2\3/g
    s/\b\([Mm]\)alveié\([^[:alnum:]]\)/\1alveu\2/g
    s/\b\([Mm]\)alvèie\([mu]\)\([^[:alnum:]]\)/\1alvéie\2\3/g
    s/\b\([Mm]\)alveie\([mu]\|nt\)\([^[:alnum:]]\)/\1alvee\2\3/g
    s/\b\([Mm]\)alveiére\([mu]\)\([^[:alnum:]]\)/\1alvére\2\3/g
    s/\b\([Mm]\)alveiere\([ns]\)\([^[:alnum:]]\)/\1alvere\2\3/g
    s/\b\([Mm]\)alveiés\([^[:alnum:]]\)/\1alvera\2/g
    s/\b\([Mm]\)alveiéssi\([mu]\)\([^[:alnum:]]\)/\1alvére\2\3/g
    s/\b\([Mm]\)alveiessi\([ns]\)\([^[:alnum:]]\)/\1alvere\2\3/g
    s/\b\([Mm]\)alvists\([^[:alnum:]]\)/\1alvistos\2/g
    # reveure
    s/\b\([Rr]\)evegi\([^[:alnum:]]\)/\1eveja\2/g
    s/\b\([Rr]\)evegi\([ns]\)\([^[:alnum:]]\)/\1evege\2\3/g
    s/\b\([Rr]\)eveié\([^[:alnum:]]\)/\1eveu\2/g
    s/\b\([Rr]\)evèie\([mu]\)\([^[:alnum:]]\)/\1evéie\2\3/g
    s/\b\([Rr]\)eveie\([mu]\|nt\)\([^[:alnum:]]\)/\1evee\2\3/g
    s/\b\([Rr]\)eveiére\([mu]\)\([^[:alnum:]]\)/\1evére\2\3/g
    s/\b\([Rr]\)eveiere\([ns]\)\([^[:alnum:]]\)/\1evere\2\3/g
    s/\b\([Rr]\)eveiés\([^[:alnum:]]\)/\1evera\2/g
    s/\b\([Rr]\)eveiéssi\([mu]\)\([^[:alnum:]]\)/\1evére\2\3/g
    s/\b\([Rr]\)eveiessi\([ns]\)\([^[:alnum:]]\)/\1evere\2\3/g
    s/\b\([Rr]\)evists\([^[:alnum:]]\)/\1evistos\2/g
    # preveure
    s/\b\([Pp]\)revegi\([^[:alnum:]]\)/\1reveja\2/g
    s/\b\([Pp]\)revegi\([ns]\)\([^[:alnum:]]\)/\1revege\2\3/g
    s/\b\([Pp]\)reveié\([^[:alnum:]]\)/\1reveu\2/g
    s/\b\([Pp]\)revèie\([mu]\)\([^[:alnum:]]\)/\1revéie\2\3/g
    s/\b\([Pp]\)reveie\([mu]\|nt\)\([^[:alnum:]]\)/\1revee\2\3/g
    s/\b\([Pp]\)reveiére\([mu]\)\([^[:alnum:]]\)/\1revére\2\3/g
    s/\b\([Pp]\)reveiere\([ns]\)\([^[:alnum:]]\)/\1revere\2\3/g
    s/\b\([Pp]\)reveiés\([^[:alnum:]]\)/\1revera\2/g
    s/\b\([Pp]\)reveiéssi\([mu]\)\([^[:alnum:]]\)/\1revére\2\3/g
    s/\b\([Pp]\)reveiessi\([ns]\)\([^[:alnum:]]\)/\1revere\2\3/g
    s/\b\([Pp]\)revists\([^[:alnum:]]\)/\1revistos\2/g
# victorejar
s/\b\([Vv]\)ictoregés\([^[:alnum:]]\)/\1ictorejara\2/g
s/\b\([Vv]\)ictoregéssi\([mu]\)\([^[:alnum:]]\)/\1ictorejàre\2\3/g
s/\b\([Vv]\)ictoregessi\([ns]\)\([^[:alnum:]]\)/\1ictorejare\2\3/g
s/\b\([Vv]\)ictoregi\([ns]\|\)\([^[:alnum:]]\)/\1ictorege\2\3/g
s/\b\([Vv]\)ictorejo\([^[:alnum:]]\)/\1ictorege\2/g
# vigilar
s/\b\([Vv]\)igilés\([^[:alnum:]]\)/\1igilara\2/g
s/\b\([Vv]\)igiléssi\([mu]\)\([^[:alnum:]]\)/\1igilàre\2\3/g
s/\b\([Vv]\)igilessi\([ns]\)\([^[:alnum:]]\)/\1igilare\2\3/g
s/\b\([Vv]\)igil\([io]\)\([^[:alnum:]]\)/\1igile\3/g
s/\b\([Vv]\)igili\([ns]\)\([^[:alnum:]]\)/\1igile\2\3/g
# vincular
s/\b\([Vv]\)inculés\([^[:alnum:]]\)/\1inculara\2/g
s/\b\([Vv]\)inculéssi\([mu]\)\([^[:alnum:]]\)/\1inculàre\2\3/g
s/\b\([Vv]\)inculessi\([ns]\)\([^[:alnum:]]\)/\1inculare\2\3/g
s/\b\([Vv]\)incul\([io]\)\([^[:alnum:]]\)/\1incule\3/g
s/\b\([Vv]\)inculi\([ns]\)\([^[:alnum:]]\)/\1incule\2\3/g
    # desvincular
    s/\b\([Dd]\)esvinculés\([^[:alnum:]]\)/\1esvinculara\2/g
    s/\b\([Dd]\)esvinculéssi\([mu]\)\([^[:alnum:]]\)/\1esvinculàre\2\3/g
    s/\b\([Dd]\)esvinculessi\([ns]\)\([^[:alnum:]]\)/\1esvinculare\2\3/g
    s/\b\([Dd]\)esvincul\([io]\)\([^[:alnum:]]\)/\1esvincule\3/g
    s/\b\([Dd]\)esvinculi\([ns]\)\([^[:alnum:]]\)/\1esvincule\2\3/g
# virtualitzar
s/\b\([Vv]\)irtualitzés\([^[:alnum:]]\)/\1irtualitzara\2/g
s/\b\([Vv]\)irtualitzéssi\([mu]\)\([^[:alnum:]]\)/\1irtualitzàre\2\3/g
s/\b\([Vv]\)irtualitzessi\([ns]\)\([^[:alnum:]]\)/\1irtualitzare\2\3/g
s/\b\([Vv]\)irtualitz\([io]\)\([^[:alnum:]]\)/\1irtualitze\3/g
s/\b\([Vv]\)irtualitzi\([ns]\)\([^[:alnum:]]\)/\1irtualitze\2\3/g
# visitar
s/\b\([Vv]\)isités\([^[:alnum:]]\)/\1isitara\2/g
s/\b\([Vv]\)isitéssi\([mu]\)\([^[:alnum:]]\)/\1isitàre\2\3/g
s/\b\([Vv]\)isitessi\([ns]\)\([^[:alnum:]]\)/\1isitare\2\3/g
s/\b\([Vv]\)isit\([io]\)\([^[:alnum:]]\)/\1isite\3/g
s/\b\([Vv]\)isiti\([ns]\)\([^[:alnum:]]\)/\1isite\2\3/g
s/\b\([Vv]\)isualitzador\(s\|\)\([^[:alnum:]]\)/\1isor\2\3/g
# viure
s/\b\([Vv]\)isqués\([^[:alnum:]]\)/\1isquera\2/g
s/\b\([Vv]\)isquéssi\([mu]\)\([^[:alnum:]]\)/\1isquére\2\3/g
s/\b\([Vv]\)isquessi\([ns]\)\([^[:alnum:]]\)/\1isquere\2\3/g
s/\b\([Vv]\)isqui\([^[:alnum:]]\)/\1isca\2/g
s/\b\([Vv]\)isqui\([ns]\)\([^[:alnum:]]\)/\1isque\2\3/g
    # conviure
    s/\b\([Cc]\)onvisqués\([^[:alnum:]]\)/\1onvisquera\2/g
    s/\b\([Cc]\)onvisquéssi\([mu]\)\([^[:alnum:]]\)/\1onvisquére\2\3/g
    s/\b\([Cc]\)onvisquessi\([ns]\)\([^[:alnum:]]\)/\1onvisquere\2\3/g
    s/\b\([Cc]\)onvisqui\([^[:alnum:]]\)/\1onvisca\2/g
    s/\b\([Cc]\)onvisqui\([ns]\)\([^[:alnum:]]\)/\1onvisque\2\3/g
    # desviure
    s/\b\([Dd]\)esvisqués\([^[:alnum:]]\)/\1esvisquera\2/g
    s/\b\([Dd]\)esvisquéssi\([mu]\)\([^[:alnum:]]\)/\1esvisquére\2\3/g
    s/\b\([Dd]\)esvisquessi\([ns]\)\([^[:alnum:]]\)/\1esvisquere\2\3/g
    s/\b\([Dd]\)esvisqui\([^[:alnum:]]\)/\1esvisca\2/g
    s/\b\([Dd]\)esvisqui\([ns]\)\([^[:alnum:]]\)/\1esvisque\2\3/g
    # malviure
    s/\b\([Mm]\)alvisqués\([^[:alnum:]]\)/\1alvisquera\2/g
    s/\b\([Mm]\)alvisquéssi\([mu]\)\([^[:alnum:]]\)/\1alvisquére\2\3/g
    s/\b\([Mm]\)alvisquessi\([ns]\)\([^[:alnum:]]\)/\1alvisquere\2\3/g
    s/\b\([Mm]\)alvisqui\([^[:alnum:]]\)/\1alvisca\2/g
    s/\b\([Mm]\)alvisqui\([ns]\)\([^[:alnum:]]\)/\1alvisque\2\3/g
    # perviure
    s/\b\([Pp]\)ervisqués\([^[:alnum:]]\)/\1ervisquera\2/g
    s/\b\([Pp]\)ervisquéssi\([mu]\)\([^[:alnum:]]\)/\1ervisquére\2\3/g
    s/\b\([Pp]\)ervisquessi\([ns]\)\([^[:alnum:]]\)/\1ervisquere\2\3/g
    s/\b\([Pp]\)ervisqui\([^[:alnum:]]\)/\1ervisca\2/g
    s/\b\([Pp]\)ervisqui\([ns]\)\([^[:alnum:]]\)/\1ervisque\2\3/g
    # sobreviure
    s/\b\([Ss]\)obrevisqués\([^[:alnum:]]\)/\1obrevisquera\2/g
    s/\b\([Ss]\)obrevisquéssi\([mu]\)\([^[:alnum:]]\)/\1obrevisquére\2\3/g
    s/\b\([Ss]\)obrevisquessi\([ns]\)\([^[:alnum:]]\)/\1obrevisquere\2\3/g
    s/\b\([Ss]\)obrevisqui\([^[:alnum:]]\)/\1obrevisca\2/g
    s/\b\([Ss]\)obrevisqui\([ns]\)\([^[:alnum:]]\)/\1obrevisque\2\3/g
# visualitzar
s/\b\([Vv]\)isualitzés\([^[:alnum:]]\)/\1isualitzara\2/g
s/\b\([Vv]\)isualitzéssi\([mu]\)\([^[:alnum:]]\)/\1isualitzàre\2\3/g
s/\b\([Vv]\)isualitzessi\([ns]\)\([^[:alnum:]]\)/\1isualitzare\2\3/g
s/\b\([Vv]\)isualitz\([io]\)\([^[:alnum:]]\)/\1isualitze\3/g
s/\b\([Vv]\)isualitzi\([ns]\)\([^[:alnum:]]\)/\1isualitze\2\3/g
    # previsualitzar
    s/\b\([Pp]\)revisualitzés\([^[:alnum:]]\)/\1revisualitzara\2/g
    s/\b\([Pp]\)revisualitzéssi\([mu]\)\([^[:alnum:]]\)/\1revisualitzàre\2\3/g
    s/\b\([Pp]\)revisualitzessi\([ns]\)\([^[:alnum:]]\)/\1revisualitzare\2\3/g
    s/\b\([Pp]\)revisualitz\([io]\)\([^[:alnum:]]\)/\1revisualitze\3/g
    s/\b\([Pp]\)revisualitzi\([ns]\)\([^[:alnum:]]\)/\1revisualitze\2\3/g
# voler
s/\b\([Vv]\)olgués\([^[:alnum:]]\)/\1olguera\2/g
s/\b\([Vv]\)olguéssi\([mu]\)\([^[:alnum:]]\)/\1olguére\2\3/g
s/\b\([Vv]\)olguessi\([ns]\)\([^[:alnum:]]\)/\1olguere\2\3/g
s/\b\([Vv]\)ulgui\([^[:alnum:]]\)/\1ullga\2/g
s/\b\([Vv]\)ulgui\([ns]\)\([^[:alnum:]]\)/\1ullgue\2\3/g
s/\b\([Vv]\)ullc\([^[:alnum:]]\)/\1ull\2/g
# vorejar
s/\b\([Vv]\)oregés\([^[:alnum:]]\)/\1orejara\2/g
s/\b\([Vv]\)oregéssi\([mu]\)\([^[:alnum:]]\)/\1orejàre\2\3/g
s/\b\([Vv]\)oregessi\([ns]\)\([^[:alnum:]]\)/\1orejare\2\3/g
s/\b\([Vv]\)oregi\([ns]\|\)\([^[:alnum:]]\)/\1orege\2\3/g
s/\b\([Vv]\)orejo\([^[:alnum:]]\)/\1orege\2/g
# x
#
s/\bXai\(s\|\)\([^[:alnum:]]\)/Corder\1\2/g
s/\bxai\(s\|\)\([^[:alnum:]]\)/corder\1\2/g
s/\bXemenei\(a\|es\)\([^[:alnum:]]\)/Fumeral\1\2/g
s/\bxemenei\(a\|es\)\([^[:alnum:]]\)/fumeral\1\2/g
# xafar
s/\b\([Xx]\)afés\([^[:alnum:]]\)/\1afara\2/g
s/\b\([Xx]\)aféssi\([mu]\)\([^[:alnum:]]\)/\1afàre\2\3/g
s/\b\([Xx]\)afessi\([ns]\)\([^[:alnum:]]\)/\1afare\2\3/g
s/\b\([Xx]\)af\([io]\)\([^[:alnum:]]\)/\1afe\3/g
s/\b\([Xx]\)afi\([ns]\)\([^[:alnum:]]\)/\1afe\2\3/g
    # aixafar -> xafar (esmenes)
# xatejar
# TODO:
s/\b\([Xx]\)ategés\([^[:alnum:]]\)/\1atejara\2/g
s/\b\([Xx]\)ategéssi\([mu]\)\([^[:alnum:]]\)/\1atejàre\2\3/g
s/\b\([Xx]\)ategessi\([ns]\)\([^[:alnum:]]\)/\1atejare\2\3/g
s/\b\([VX]\)ategi\([ns]\)\([^[:alnum:]]\)/\1atege\2\3/g
s/\b\([Xx]\)atejo\([^[:alnum:]]\)/\1atege\2/g
# xerrar -> xarrar (esmenes)
s/\b\([Xx]\)inès\([^[:alnum:]]\)/\1inés\2/g
# z
#

