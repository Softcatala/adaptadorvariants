
# KDE Project in Catalan (Valencian)

This project was started thanks to the comments and translations into Valencian. One tip
is to install [GCompris](https://gcompris.net/index-ca@valencia.html) on your mobile
(*Android*, *GNU/Linux*, *macOS*, *Raspberry Pi* or *Windows*) and enjoy the Valencian
language in games for children from 2 to 10 years old (we need a native voice for
recordings). We also need to see if the two-letter code for Valencian can be enabled,
maybe '**va**', which is now free and so it might be easier for
[Qt](https://www.qt.io/) to support our language (see this
[bug report](https://bugreports.qt.io/browse/QTBUG-7100?gerritIssueType=IssueOnly)).

***va:*** Este projecte es va iniciar gràcies als comentaris i traduccions al valencià. Un
consell és que instal·leu [GCompris](https://gcompris.net/index-ca@valencia.html) en el mòbil
(*Android*, *GNU/Linux*, *macOS*, *Raspberry Pi* o *Windows*) i que gaudiu del valencià en
jocs per a xiquets i xiquetes des dels 2 fins als 10 anys (ens cal una veu nativa per a les
gravacions). També cal veure si es pot habilitar el codi de dues lletres per al valencià,
potser '**va**', el qual ara està lliure i així potser serà més fàcil que les
[Qt](https://www.qt.io/) admeten el nostre idioma (vegeu este
[informe d'error](https://bugreports.qt.io/browse/QTBUG-7100?gerritIssueType=IssueOnly)).

An explanation of the scripts:

* `c_crea_val-po.sh`            *->* Helper script in Bash to manage the workflow
* `append-a_en.in`              *->* pology helper - content is included in the first script
* `adapta-kde_recursivament.sh` *->* Bash script to process translations with sed


## sed scripts:

* `kde-src2valencia_a.sed`      *->* Make corrections and improves (into Catalan text)
* `kde-src2valencia_b.sed`
* `kde-src2valencia-esmena.sed` *->* Fixes (improves the control and review)

**IMPORTANT:** also includes some adaptations to Valencian *(in review)*.

* `all-src2valencia-adapta.sed` *->* Rules to adapt the language to Valencian (e.g. a -> en, app names...)
* `all-src2valencia.sed`        *->* Core rules with Valencian language (e.g. verb conjugation, loose words...)
* `all-src2valencia-esmena.sed` *->* Fixes (improves the control and review)

**Note 1:** all-src2valencia sed file are very large, we recommend *closing everything* before opening it.

**Note 2:** multiple sed files (so called '*all-\**' and '*kde-\**') lightens the load, speeds up the workflow and allows you to create reports for improvements.
Concatenated into two single files for the adaptation process.

**Note 3:** the '*\*-esmena*' files are used to keep updated the major changes (the last review).

### Dimarts, 16 de juny del 2025

The task of adapting to Valencian the entire branch (**KF5** and **KF6**) in the local SVN tests takes ***4h*** and ***57m*** with 81%CPU.

***va:*** La tasca d'adaptar al valencià tota la branca (**KF5** i **KF6**) en el SVN local de proves tarda ***4 h*** i ***57 m*** amb un 81% de la CPU.

**SVN Message (*with version info*):** Updates to 012.02 (http://avl.gva.es/lexicval/)


## Linguistic resources:

* [Institut d'Estudis Catalans](https://geiec.iec.cat/)
* [Acadèmia Valenciana de la Llengua](https://www.avl.gva.es/)

### Dictionaries

* [Conjugació de tots els verbs](https://giec.iec.cat/conjugacio) - (IEC)
* [Diccionari de la llengua catalana](https://dlc.iec.cat/) - (DIEC2)
* [Diccionari Normatiu Valencià](https://www.avl.gva.es/lexicval/) - (AVL)

### Language regulations

* [Recursos lingüístics en línia](https://www.iec.cat/recursos-linguistics-en-linia/) - (IEC)
* [Gramàtica bàsica i d'ús](https://gbu.iec.cat/inici) - (IEC) *recommended*
* [Gramàtiques Normatives Valencianes](https://www.avl.gva.es/gnv/buscador.jsp) - (AVL) *recommended query tool*


## Contributing

Contact through the [KDE Catalan Translation Team](mailto:kde-i18n-ca@kde.org) mailing list
(visit the [kde-i18n-ca Archives](https://mail.kde.org/pipermail/kde-i18n-ca/) too)
and we will treat any level of collaboration.

***va:*** Poseu-vos en contacte amb la llista de correu de
l'[Equip de traducció al català de KDE](mailto:kde-i18n-ca@kde.org) (visiteu també
l'[arxiu de kde-i18n-ca](https://mail.kde.org/pipermail/kde-i18n-ca/)) i tractarem
qualsevol nivell de col·laboració.


## Work License

SPDX: [LGPL-2.1-or-later](https://spdx.org/licenses/LGPL-2.1-or-later.html)
or later versions approved by the membership of [KDE e.V.](https://ev.kde.org/)

See [Guidelines and HOWTOs/Licensing](https://community.kde.org/Guidelines_and_HOWTOs/Licensing)
and [Policies/Licensing Policy](https://community.kde.org/Policies/Licensing_Policy) pages from
the [KDE Community Wiki](https://community.kde.org/)
