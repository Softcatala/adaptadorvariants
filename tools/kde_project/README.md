
# KDE Project in Catalan (Valencian)

This project was started thanks to the comments and translations into Valencian. One tip
is to install GCompris on your mobile (*android*) and enjoy the Valencian language in games
for children from 2 to 10 years old (we need a native voice for recordings). We also need
to see if the two-letter code for Valencian can be enabled, maybe '**va**', which is now
free and so it might be easier for [Qt](https://www.qt.io/) to support our language (see this
[bug report](https://bugreports.qt.io/browse/QTBUG-7100?gerritIssueType=IssueOnly)).

***va:*** Este projecte es va iniciar gràcies als comentaris i traduccions al valencià. Un
consell és que intal·leu GCompris en el mòbil (android) i que gaudiu del valencià en jocs
per a xiquets i xiquetes des dels 2 fins als 10 asnys (ens cal una veu nativa per a les
gravacions). També cal veure si es pot habiliar el codi de dues lletres per al valencià,
potser '**va**', el qual ara està lliure i així potser serà més fàcil que les
[Qt](https://www.qt.io/) admetin el nostre idioma (veure aquest
[informe d'error](https://bugreports.qt.io/browse/QTBUG-7100?gerritIssueType=IssueOnly)).

An explanation of the scripts:

| Script                        | Description                                            |
|----------------------------------------------------------------------------------------|
| `c_crea_val-po.sh`            | Helper script in Bash to manage Valencian translations |
| `adapta-kde_recursivament.sh` | Bash script to process translations with sed           |


## sed scripts:

| Script                                | Description                                                                                                          |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `kde-src2valencia.sed` *(unreleased)* | Make corrections and improves (Catalan text) **IMPORTANT:** also includes some adaptations to Valencian                   |
| `all-src2valencia.sed`                | Core rules with Valencian language (e.g. verb conjugation, app names...)                                                |

**Note:** sed files are very large, it is recommended to close one before opening the other


## Linguistic resources:

* [Institut d'Estudis Catalans](https://geiec.iec.cat/)
* [Diccionari de la llengua catalana](https://dlc.iec.cat/) - (DIEC2)
* [Acadèmia Valenciana de la Llengua](https://www.avl.gva.es/)
* [Diccionari Normatiu Valencià](https://www.avl.gva.es/lexicval/)


## Contributing

Contact through the [KDE Catalan Translation Team](kde-i18n-ca@kde.org) mailing list (visit the [kde-i18n-ca Archives](https://mail.kde.org/pipermail/kde-i18n-ca/) too) and we will treat any level of collaboration.

***va:*** Poseu-vos en contacte amb la llista de correu de l'[Equip de traducció al català de KDE](kde-i18n-ca@kde.org) (visiteu també els [arxius de kde-i18n-ca](https://mail.kde.org/pipermail/kde-i18n-ca/)) i tractarem qualsevol nivell de col·laboració.


## Work License

SPDX: [LGPL-2.1-or-later](https://spdx.org/licenses/LGPL-2.1-or-later.html) or later versions approved by the membership of [KDE e.V.](https://ev.kde.org/)

See [Guidelines and HOWTOs/Licensing](https://community.kde.org/Guidelines_and_HOWTOs/Licensing) and [Policies/Licensing Policy](https://community.kde.org/Policies/Licensing_Policy) pages from the [KDE Community Wiki](https://community.kde.org/)