
# KDE Project in Catalan (Valencian)

This project was started thanks to the comments and translations into Valencian. One tip
is to install GCompris on your mobile (*android*) and enjoy the Valencian language in games
for children from 2 to 10 years old (we need a native voice for recordings). We also need
to see if the two-letter code for Valencian can be enabled, maybe '**va**', which is now
free and so it might be easier for [Qt](https://www.qt.io/) to support our language (see this
[bug report](https://bugreports.qt.io/browse/QTBUG-7100?gerritIssueType=IssueOnly)).

***va:*** Este projecte es va iniciar gràcies als comentaris i traduccions al valencià. Un
consell és que intal·leu GCompris en el mòbil (android) i que gaudiu del valencià en jocs
per a xiquets i xiquetes des dels 2 fins als 10 anys (ens cal una veu nativa per a les
gravacions). També cal veure si es pot habilitar el codi de dues lletres per al valencià,
potser '**va**', el qual ara està lliure i així potser serà més fàcil que les
[Qt](https://www.qt.io/) admeten el nostre idioma (vegeu aquest
[informe d'error](https://bugreports.qt.io/browse/QTBUG-7100?gerritIssueType=IssueOnly)).

An explanation of the scripts:

* `c_crea_val-po.sh`            *->* Helper script in Bash to manage the workflow
* `adapta-kde_recursivament.sh` *->* Bash script to process translations with sed


## sed scripts:

* `kde-src2valencia.sed`       *(unreleased) ->* Make corrections and improves (into Catalan text)

**IMPORTANT:** also includes some adaptations to Valencian *(in review)*.

* `all-src2valencia-adapta.sed` *(in review) ->* Rules to adapt the language to Valencian (e.g. a -> en, app names...)
* `all-src2valencia.sed`                    *->* Core rules with Valencian language (e.g. verb conjugation, loose words...)

**Note 1:** this last sed file are very large, we recommend *closing everything* before opening it.

**Note 2:** having two smaller sed files (so called '\**-adapta*' and '*kde-*\*') lightens the load and speeds up the workflow.

### Dilluns, 9 d'octubre de 2023

The task of adapting to Valencian the entire branch (**KF5** and **KF6**) in the local SVN tests takes ***2h*** and ***50m***.

***va:*** La tasca d'adaptar al valencià tota la branca (**KF5** i **KF6**) en el SVN local de proves tarda ***2 h*** i ***50 m***.

**SVN Message (*with version info*):** Updates to 010.00 (http://avl.gva.es/lexicval/)

## Linguistic resources:

* [Institut d'Estudis Catalans](https://geiec.iec.cat/)
* [Diccionari de la llengua catalana](https://dlc.iec.cat/) - (DIEC2)
* [Acadèmia Valenciana de la Llengua](https://www.avl.gva.es/)
* [Diccionari Normatiu Valencià](https://www.avl.gva.es/lexicval/)


## Contributing

Contact through the [KDE Catalan Translation Team](kde-i18n-ca@kde.org) mailing list
(visit the [kde-i18n-ca Archives](https://mail.kde.org/pipermail/kde-i18n-ca/) too)
and we will treat any level of collaboration.

***va:*** Poseu-vos en contacte amb la llista de correu de
l'[Equip de traducció al català de KDE](kde-i18n-ca@kde.org) (visiteu també els
[arxius de kde-i18n-ca](https://mail.kde.org/pipermail/kde-i18n-ca/)) i tractarem
qualsevol nivell de col·laboració.


## Work License

SPDX: [LGPL-2.1-or-later](https://spdx.org/licenses/LGPL-2.1-or-later.html)
or later versions approved by the membership of [KDE e.V.](https://ev.kde.org/)

See [Guidelines and HOWTOs/Licensing](https://community.kde.org/Guidelines_and_HOWTOs/Licensing)
and [Policies/Licensing Policy](https://community.kde.org/Policies/Licensing_Policy) pages from
the [KDE Community Wiki](https://community.kde.org/)