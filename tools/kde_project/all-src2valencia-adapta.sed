#!/bin/sed -f

# Recursos:
# ---------
# <https://geiec.iec.cat/>
# <https://www.avl.gva.es/lexicval/>

# "tradueix" la capçalera
1,/^msgid / s/\bCatalan/Catalan (Valencian)/g

    s/\bLanguage-Team: kde-i18n-ca@kde.org/Language-Team: Catalan <kde-i18n-ca@kde.org>/g
s/\bLanguage-Team: kde-i18n-ca/Language-Team: Catalan <kde-i18n-ca@kde.org>/g
s/\bLanguage: ca/Language: ca-valencia/g
s/\bX-Pootle-Path: \/ca/X-Pootle-Path: \/ca-valencia/g

# No tradueixis linies que no pertanyin a un msgstr
/^msgstr/,/^#/ {

# No tradueixis les linies comentades ni els msgid
/^#/ b END
/^msgid/ b END

# Es protegeix \n i \t: les paraules enganxades
s/\\\([nt]\)/\\\1- /g

s/\bAjudeu la vostra llibertat\([^[:alnum:]]\)/Doneu suport a la vostra llibertat\1/g
s/\b\([Ee]\)l Tux\([^[:alnum:]]\)/\1n Tux\2/g
s/\bInforma d'errors o desitjos\([^[:alnum:]]\)/Informeu d'errors o desitjos\1/g
s/\"Instal·leu al\"/\"Instal·leu a\"/g
s/\bJocs i esbarjo\([^[:alnum:]]\)/Jocs i diversió\1/g
s/\bKDE al català a\([^[:alnum:]]\)/KDE al valencià a\1/g
s/\bMoltes gràcies per endavant per la vostra ajuda\([^[:alnum:]]\)/Moltes gràcies per la vostra ajuda\1/g
s/\b\([Rr]\)eproductor de suports\([^[:alnum:]]\)/\1eproductor multimèdia\2/g
s/\brestar anònim\([^[:alnum:]]\)/quedar en l'anonimat\1/g
s/\bSigues lliure\([^[:alnum:]]\)/Sigueu lliure\1/g
s/\bteamcode=ca\([^[:alnum:]]\)/teamcode=ca@valencia\1/g
s/\bUneix-te al KDE\([^[:alnum:]]\)/Uniu-vos al KDE\1/g
s/\bvoluntaris que tradueix el KDE al català a\([^[:alnum:]]\)/voluntaris que tradueix KDE al català i l'adapta a la variant valenciana a\1/g

# #
# #

# Ho sento -> Ho sentim
# L'accepció de Ho sentim és més impersonal que la primera persona, l'altra opció en valencià és Ho sent.
s/\b\([Hh]\)o sento\([^[:alnum:]]\)/\1o sentim\2/g

#s/\bMid\(a\|es\)\([^[:alnum:]]\)/Grandàri\1\2/g
#s/\bmid\(a\|es\)\([^[:alnum:]]\)/grandàri\1\2/g

s/\bSi us plau\([^[:alnum:]]\)/Per favor\1/g
s/\bsi us plau\([^[:alnum:]]\)/per favor\1/g

# us -> vos
s/\bUs\([^[:alnum:]]\)/Vos\1/g
s/\bus\([^[:alnum:]]\)/vos\1/g
	s/en-vos\([^[:alnum:]]\)/en-us\1/g
s/&vos\([^[:alnum:]]\)/\&us\1/g
# vos
s/\b\([Aa]\)quest mòdul vos permet\([^[:alnum:]]\)/\1quest mòdul permet\2/g
s/\b\([Ss]\)e vos demana\(rà\|\)\([^[:alnum:]]\)/\1e us demana\2\3/g
s/\b\([Ss]\)i no vos calen\([^[:alnum:]]\)/\1i no us calen\2/g
s/\b\([Ss]\)i vos cal\([^[:alnum:]]\)/\1i us cal\2/g
s/\bVos \(afecten\|animem\|ajuda\|autentiqueu\|connecteu\|convidem\|donem la benvinguda\)\([^[:alnum:]]\)/Us \1\2/g
s/\bvos \(afecten\|animem\|ajuda\|autentiqueu\|connecteu\|convidem\|donem la benvinguda\)\([^[:alnum:]]\)/us \1\2/g
s/\bVos \(està\|explica\|permet\|proporciona\)\(rà\|\)\([^[:alnum:]]\)/Us \1\2\3/g
s/\bvos \(està\|explica\|permet\|proporciona\)\(rà\|\)\([^[:alnum:]]\)/us \1\2\3/g

# errada->error NO es toca per que porta problemes amb el canvi de gènere
# a banda què:
# 17:25 < nyu> jordim: errada->error ?
# 17:26 < jordim> jo eixa no la canviaria

s/\"\( \)Fallada (%1)/\"Fallada (%1)/g
s/\bbaixada fallada\([^[:alnum:]]\)/baixada fallida\1/g
s/\bautocomprovacions fallades\([^[:alnum:]]\)/autocomprovacions fallides\1/g

# manlleva les etiquetes i després es posen tal qual
# # <[^<]\{1,\}>
# -> es protegeixen
s/%1, publicat el %2\([^[:alnum:]]\)/%1, publicat el -%2\1/g
s/%1 comença el %2\([^[:alnum:]]\)/%1 comença el -%2\1/g
s/%1 ha començat el %2\([^[:alnum:]]\)/%1 ha començat el -%2\1/g
s/\"el %1\"/\"el -%1\"/g
s/\bAnunci el %1\([^[:alnum:]]\)/Anunci el -%1\1/g
s/\bEl %1 està \(desconnectat\|en línia\)\([^[:alnum:]]\)/El -%1 està \1\2/g
s/\bendarrerida des del %1\([^[:alnum:]]\)/endarrerida des del -%1\1/g
s/\bEnregistrat el %1\([^[:alnum:]]\)/Enregistrat el -%1\1/g
s/\bFita finalitzada el %1\([^[:alnum:]]\)/Fita finalitzada el -%1\1/g
s/\bhora \(diürna\|nocturna\) a les %1 i està totalment canviada a les %2\([^[:alnum:]]\)/hora \1 a les -%1 i està totalment canviada a les -%2\2/g
s/\bpublicada el %2\([^[:alnum:]]\)/publicada el -%2\1/g
s/\bTasca \(finalitzada\|vençuda\) el %1\([^[:alnum:]]\)/Tasca \1 el -%1\2/g
s/\bVàlid fins al %1\([^[:alnum:]]\)/Vàlid fins al -%1\1/g
# #
s/\bamb els \(%1\|Mac\)\([^[:alnum:]]\)/amb els -\1\2/g
s/\b\([Ee]\)ls %\([12]\) \(articles\|comentaris\|contactes\|documents\|bytes\|elements\|fitxers\|fotogrames\|kB\|marcadors\|missatges\|objectes\|processos\|recursos\|temes\|tipus de lletra\|URL\)\([^[:alnum:]]\)/\1ls -%\2 \3\4/g
s/\b\([Ee]\)ls «\(crontab\|ping\)»\([^[:alnum:]]\)/\1ls -«\2»\3/g
s/\b\([Ee]\)ls \(CSV\|Flatpak\|GIF\|Git\|JPEG\|Metalink\|PDF\|SVG\)\([^[:alnum:]]\)/\1ls -\2\3/g
#
s/ DB\(us\|US\)\([^[:alnum:]]\)/ D-Bus\2/g
s/\bDigi\([Kk]\)am\([^[:alnum:]]\)/digiKam\2/g
	s/\bdel «panorama\([^[:alnum:]]\)/de «panorama\1/g
s/\bFFMpeg\([^[:alnum:]]\)/FFmpeg\1/g
s/\bFFProbe\([^[:alnum:]]\)/FFprobe\1/g
s/\bGithub\([^[:alnum:]]\)/GitHub\1/g
s/\bGitlab\([^[:alnum:]]\)/GitLab\1/g
s/\bGnucash\([^[:alnum:]]\)/GnuCash\1/g
s/\bHash-o-matic\([^[:alnum:]]\)/Hash-o-Matic\1/g
s/\bHomebank\([^[:alnum:]]\)/HomeBank\1/g
s/\bKAddressbook\([^[:alnum:]]\)/KAddressBook\1/g
s/\bKBibTex\([^[:alnum:]]\)/KBibTeX\1/g
s/\bKCachgrind\([^[:alnum:]]\)/KCachegrind\1/g
s/\bKGPG\([^[:alnum:]]\)/KGpg\1/g
s/\bKInfocenter\([^[:alnum:]]\)/KInfoCenter\1/g
s/\bKnights\([^[:alnum:]]\)/KNights\1/g
s/\bKrunner\([^[:alnum:]]\)/KRunner\1/g
s/\bKSysguard\([^[:alnum:]]\)/KSysGuard\1/g
s/\bdel ledger\([^[:alnum:]]\)/del Ledger\1/g
s/\bLytebox\([^[:alnum:]]\)/LyteBox\1/g
s/\bMarknote\([^[:alnum:]]\)/MarkNote\1/g
s/\bMediawiki\([^[:alnum:]]\)/MediaWiki\1/g
s/\bMyCroft\([^[:alnum:]]\)/Mycroft\1/g
s/\bNeochat\([^[:alnum:]]\)/NeoChat\1/g
s/\bPostmarketOS\([^[:alnum:]]\)/postmarketOS\1/g
s/\bPulseaudio\([^[:alnum:]]\)/PulseAudio\1/g
s/\bWordnet\([^[:alnum:]]\)/WordNet\1/g
s/\bXwayland\([^[:alnum:]]\)/XWayland\1/g
s/\b\([Aa]\)l \(|\|\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(%1\|%2\|0Ad\|7z\|Affinity\|AllowedIP\|Analyze\|Apport\|Arca\|Arianna\|Autocrypt\|AVIF\|Baloo\|Balsa\|Banner\|Bash\|BAR\|Bas[Kk]et\|Batalla naval\|Bazaar\|Bergamot\|Bespin\|BibSearch\|BibTeX\|Bittorrent\|Bitbucket\|Blackbox\|Blender\|Blinken\|Blowfish\|Blu-ray\|Blue Angel\|Bluetooth\|BMP\|bodyParam\|Bomber\|Bomberman\|Bonsai\|Booth\|Bovo\|Bottles\|Box\|Braindump\|bravenec2nd\|Breakout\|Breeze\|Brisa\|Bugzilla\|Buho\|bup\|Burnfree\|Burnproof\|Bzip2\|C++\|Cachegrind\|Calcudoku\|Calindori\|Callgrind\|Calligra\|Calltree\|Cantor\|CAS\|Catfish\|CDDB\|CDS\|cdrdao\|cdrecord\|cdrskin\|CDS Sesame\|CDV\|CEC\|Centre d'informació\|Cervisia\|check-config\|checkXML[56]\|Chessbase\|Choqok\|Chrome\|Chromium\|CIFS\|Cisco\|cjpeg\|Clanbomber\|[Cc]lang\|Clang-Tidy\|ClayRGB\|Clazy\|clazy-standalone\|Clip\|clipboard\|[Cc][Mm]ake\|cmark\|CoCreateInstance\|commander\|CompteEnrere\|Communicator\|ConnectServer\|ConsoleKit\|contactprintthemeeditor\|contactthemeeditor\|contentItem\|convert\|convmv\|copy\|cor.test\|Corel\|Coverity\|Cpp\|CPP\|[Cc]ppcheck\|CRAN\|Crio\|crontab\|cryfs\|Crystal\|CSV\|CTags\|CSound\|csv\|CUDA\|CUPS\|CurConv\|curconvd\|Cuttlefish\|cvs\|CVS\|D3D9\|[Dd]ark[Tt]able\|[Dd]ataEngine\|data.frame\|D-Bus\|DarkTable\|DavDroid\|dbus\|dcraw\|dcraw_process\|Debconf\|DebugView\|DeepL\|Desfer\|[Dd]esigner\|dev2bitmap\|dev.print\|DH1080_INIT\|diff\|digiKam\|Digital\|ding\|dirmngr\|Discover\|DiSEqC\|displaycal\|div\|Django\|DjVuLibre\|DKIM\|dkim\|dmesg\|DNS\|Docker\|Docbook\|Dolphin\|dot\|Doxygen\|DPMS\|Dr Konqi\|Dragon\|DrawPerfect\|DrKonqi\|DrKonqi2\|Dropbox\|Drupal\|DuckDuckGo\|dvd+rw-format\|DVI\|dvips\|DXVK\|en_US\|Eloquens\|EnviroInfo\|EPub\|Estació\|EXR\|Facebook\|Falkon\|ffmpeg\|FFmpeg\|ffprobe\|FFprobe\|Fielding\|Fiery\|Filelight\|FileStash\|Firefox\|firewalld\|fish\|FITS\|FLAC\|[Ff]latpak\|Flickr\|Flow\|FluidSynth\|FocusWriter\|Font Management\|Fontmatrix\|Francis\|freedesktop.org\|Freenode\|frei0r\|FreeType\|fsync\|FSView\|fwhm\|G'Mic\|Gadu-Gadu\|Galeon\|GALR\|GBR\|GCC\|gcc\|gcompris\|GCompris\|gdb\|GDB\|Gemini\|German\|get\|getAuditLog\|GetHotNewStuff\|[Gg]ettext\|Gherkin\|Ghostscript\|GI[FH]\|Giggle\|Gimp\|GIMP\|[Gg]it\|git[gk]\|GitHub\|GitKlient\|GitLab\|Glaxnimate\|\.GlobalEnv\|GlobalEnv\|GMail\|GNOME\|GNU\|GnuCash\|GnuPG\|[Gg]nuplot\|GOCR\|gocryptfs\|Godot\|Gomoku\|Google\|GoogleEart\|GoogleMaps\|_ghostwriter\|ghostwriter\|gop\|GOP\|goto\|GoToSocial\|GParted\|gpasm\|GPG\|gpg\|Gpg4win\|gpg-agent\|GpgConf\|gpgsm\|GpgSM\|GPodder\|GPSBabel\|Grammalecte\|grammalected\|Granatier\|Grantlee\|Graphics\|[Gg]raphviz\|Gravatar\|GreaseMonkey\|grep\|Grisbi\|GroupWise\|growisofs\|Grub\|GSSAPI\|GStreamer\|Gtk\|GUIProfile\|Gwenview\|Gzip\|h5dump\|HAL\|Hash-o-Matic\|headerthemeeditor\|Healpix\|[Hh]eaptrack\|HEIF\|Helgrind\|hg\|High\|HiPS\|HomeBank\|HotShots\|Htop\|Hunspell\|Hyprland\|IFrame\|Ikona\|IMAP\|Imgur\|iNaturalist\|Index\|Invidious\|input\|inputVectorData\|inputVectorTime\|jAlbum\|Jamendo\|Java\|Java[Ss]cript\|Jitsi\|jitter\|journald\|Jovie\|JPEG\|JPG\|JPL\|JSON\|Ju[Kk]\|[Jj]ulia\|Juniper\|Jupyter\|JXL\|K3b\|KAddressBook\|Kadmos\|KADMOS\|Kaffeine\|Kaidan\|Kairo\|Kajongg\|KAlarm\|Kalendar\|KAlgebra\|Kalk\|Kalzium\|Kamera\|Kamoso\|Kanagram\|Kapman\|KAppTemplate\|Kaption\|Karbon\|Kartographer\|Kasts\|Kate\|KAtomic\|KBabel\|KBackup\|KBibTeX\|KBlackBox\|KBlocks\|KBounce\|KBreakOut\|KBruch\|kbuildsycoca[56]\|KBuildSycoca\|KCachegrind\|KCalc\|KCalendarCore\|KCharSelect\|KClock\|KCM\|KColorChooser\|KConfig\|KContact\|KCron\|KDE\|kde4-config\|KDebug\|kdebugdialog[56]\|[Kk][Dd]ebug[Ss]ettings\|kdeconnectd\|kded\|kded[56]\|KDED\|kdegraphics\|kdeinit\|kdeinit[56]\|Kdenlive\|KDEPrint\|kdesrc-build\|kdesu\|kdesudo\|Kdesvn\|KDevelop\|KDialog\|KDiamond\|KDiff3\|KDing\|KDiskFree\|keditbookmarks\|keditfiletype\|KeePassXC\|KEuroCalc\|Kexi\|KEXI\|Keysmith\|kf5-config\|KFileDialog\|KFileMetaDataReader\|KFind\|KFloppy\|KFM\|KFourInLine\|KGameRenderer\|KGamma\|kgendesignerplugin\|KGeography\|KGeoTag\|KGet\|KGoldrunner\|KGpg\|KGraphViewer\|KHangMan\|[Kk][Hh]elp[Cc]enter\|Khipu\|khotkeys\|KHotkeys\|khtml\|Kid3\|Kig\|Kigo\|Kile\|Killbots\|Killer\|KImageMapEditor\|KInfoCenter\|KIO\|Kio-Extras\|kiod\|KIPI\|Kirigami\|Kiriki\|Kirogi\|Kiten\|KItinerary\|KJots\|KJournald\|KJumpingCube\|KLauncher\|Kleopatra\|KLettres\|Klever\|KleverNotes\|Klickety\|Klimbgrades\|KLines\|Klipper\|ksld\|KMag\|KMagnifier\|KMahjongg\|KMail\|KMenu\|KMines\|KMix\|kmix\|KML\|KMouseTool\|KMouth\|KMPlayer\|KmPlot\|KMuddy\|KMyMoney\|kmymoney\|KNetWalk\|KNewStuff\|KNights\|KNotes\|KNotify\|Kodaskanna\|KOffice\|Koko\|Kolab\|Kolf\|Kollision\|Kolor Lines\|Kolorfill\|KolourPaint\|Kommit\|[Kk]ompare\|Kongress\|Konqueror\|Konquest\|[Kk]onsole\|Kontact\|Kontrast\|Konversation\|Kooka\|Kookbook\|Kopete\|KOrganizer\|KPackage\|KPackageType\|KPat\|KPatience\|KPhotoAlbum\|KPipewire\|KPL\|KPlato\|KPresenter\|[Kk]razy2\|KRDC\|KRdp\|KRegExpEditor\|KRename\|KReport\|KReversi\|K[Rr]fb\|Krita\|Kronometer\|Kross\|KRuler\|KRun\|KRunner\|Krusader\|KSame\|KScreen\|KService\|KSeExpr\|KShisen\|KSIRC\|KsirK\|ksld\|KSnakeDuel\|KSokoban\|Sokoban\|KSpaceDuel\|Kspell\|KSpread\|KSquares\|Ksshaskpass\|[Kk]st\|KStars\|KSudoku\|KSyntaxHighlighter\|KSyntaxHighlighting\|KSysGuard\|KSystemLog\|KTeaTime\|KTechlab\|KTelnetService\|KTextEditor\|KTimer\|KTimeTracker\|KTorrent\|KTouch\|KTP\|KTrip\|KTuberling\|KTurtle\|Kube\|Kubric\|Kubrick\|Kuickshow\|KuickShow\|Kup\|KUserFeedback\|KWallet\|kwallet-query\|kwalletd\|KWalletManager\|KWatchGnuPG\|Kwave\|KWeather\|KWidgetsAddons\|KwikDisk\|KWin\|KWordQuiz\|KWrite\|KXStitch\|Netscreen\|LabPlot\|LanguageTool\|lasso\|Last.fm\|latex\|LaTeX\|Latte\|lattice\|LDAP\|LDAPS\|Ledger\|Libarchive\|LibreOffice\|Licentia\|LDAP\|Lightroom\|LIGO\|Lilo\|lin_guider\|Lin-Guider\|Linux\|Little\|Livechat\|LLDB\|lldb-mi\|loca[lt]e\|lock\|lockd\|logcat\|logger\|Logo\|LoginD\|Lokalize\|Lottie\|Lotus\|LSkat\|Lua\|Lutris\|LyteBox\|LyX\|LZMA\|Mac\|Magic\|Magnatune\|Mail\|mailfilteragent\|Mahjongg\|[Mm]ake\|man\|Mangonel\|Maniphest\|Marble\|Markdown\|MarkNote\|[Mm]arlin\|Massif\|Mastodon\|Material\|MathJax\|Matlab\|Matrix\|MauiKit\|MauiManServer\|Maxima\|MBox\|MBoxImporter\|MediaWiki\|meinproc[56]\|[Mm]elt\|Memcheck\|memcpy\|mencoder\|Mercurial\|Merkuro\|merge\|Meson\|MesonManager\|Messenger\|Metalink\|[M̀m]icrobe\|Microsoft\|MiddleClickLoader\|Milou\|MinGW\|Minetest\|MINIX\|Minuet\|mkdir\|mkinitcpio\|mkisofs\|MLT\|mmap\|Mobipocket\|ModemManager\|Money\|monopd\|[Mm]orse\|move\|Moving\|Mozilla\|mplayer\|MPlayer\|MPRIS2\|mpv\|msgfmt\|msgmerge\|ms_print\|MUD\|MultiMarkdown\|Muon\|MuseScore\|MusicBrainz\|mutex\|muxer\|Mycroft\|MyPaint\|mysql\|MySQL\|ncdump\|NeoChat\|Nepomuk\|Netscape\|NetworkManager\|Next[Cc]loud\|nginx\|Ninja\|NKS\|noatun\|normalize\|Nota\|OCR\|OCRAD\|Office\|Okteta\|Okular\|[OK]RA\|OpenCL\|output\|outputVectorPeriodogram\|p7zip\|Pac-Man\|PackageKit\|Palapeli\|[Pp]andoc\|Panorama\|PaperKey\|par2\|Pareto\|Parley\|parsha\|Partitioner\|Pascale\|Patreon\|P[BGP]M\|pdf\|PDF\|pdflatex\|pdfpages\|pdftk\|Peek\|PeerTube\|[Pp]erforce\|Peruse\|Phabricator\|PHD2\|phd2logview\|Phonon\|Photoshop\|PhotoSwipe\|PHP\|PHPUnit\|Picmi\|Pidgin\|Pikasso\|pimdataexporter\|Pine64\|Pinebook\|Pine[Pp]hone\|PineTab\|ping\|Pinterest\|pip3\|PipeWire\|Piwigo\|Pix\|Piwik\|Pixelfed\|Plan\|Planck\|PLANCK\|Planner\|Plasma\|plasmapkg2\|plasmashell\|PlasmaTube\|Plastik\|Playdar\|Plymouth\|PNG\|pngquant\|PolicyKit\|Pology\|Pomodoro\|pool\|Poppler\|Portable\|Portfolio\|PostgreSQL\|postmarketOS\|[Pp]ost[Ss]cript\|PowerDevil\|PowerTop\|preparetips[56]\|Progressive\|ProPhotoRGB\|Proton\|ProtonDB\|PSD\|psselect\|pstops\|PTY\|PulseAudio\|Purpose\|pvfViewer\|PyQt\|[Pp]ython\|Python[23]\|pyuic[56]\|Qalculate\|QApplication\|QCA\|QCommandLineParser\|QEMU\|QFileDialog\|QGit\|QGraphicsView\|QGuiApplication\|QImageWriter\|QKeychain\|QMake\|QML\|qmljs\|QObject\|QPGME\|Qrca\|QSaveFile\|Qt\|QtChart\|QtComponents\|QtCurve\|QtQuick\|QtWebEngine\|Quicken\|QuickConnect\|Quickstates\|quota\|Quotient\|R\|Rajce\|Rattlesnake\|RAR\|Raw\|raw\|RawTherapee\|readcd\|Real Media\|Redshift\|Refer\|[Rr]eplicode\|RepRap\|Rest\|ReText\|RetroArch\|REUSE\|reviewboard\|rio\|\.rkward\|RKward\|RKWard\|RMarkdown\|Rocs\|Rocket\|RocketChat\|Roliserver\|Rolisteam\|Roy\|RPG\|RSIBreak\|rsync\|Ruby\|Ruqola\|Runner\|Rust\|Sage\|Samba\|Scilab\|scour\|SDDM\|[Ss]endmail\|sesameResolver\|Sextractor\|shader\|Sheets\|Shelf\|shell\|Showfoto\|Shutter\|[Ss]ieve\|sieveeditor\|SigG\|SimpleScreenRecorder\|Sink\|Sixel\|Skanlite\|Skanpage\|Skrooge\|smb\|Smb4K\|S\/MIME\|SMTP\|SmugMug\|Snore\|SnoreNotify\|Solid\|Sonicwall\|Soundcloud\|Source\|Spacebar\|Spectacle\|Sqlite\|SQLite\|src\|SSH\|ssh-add\|sshfs\|Star\|SteamOS\|Stellarium\|Step\|Stopmotion\|StretchPlayer\|Strike\|subreddit\|Substance\|Subtitle Composer\|[Ss]ubversion\|sudo\|SV[GN]\|SymbolEditor\|Symmy\|Synaptic\|syslog\|syspath\|[Ss]ystemd\|SystemLog\|Sway\|Tagged\|TAlbum\|Tangram\|TaskJuggler\|teamd\|[Tt]elepathy\|Tellico\|Telly\|Template\|Tesseract\|Tetris\|TeX\|The\|Thunderbird\|Thunderbolt\|TIFF\|TLS\|TNamed\|Tok\|Tokodon\|top\|TOTP\|trait\|transcode\|Translate-Toolkit\|trixel\|Trojitá\|Tron\|tun\|TurtleScript\|Tuxpaint\|Twitter\|UberWriter\|UFRaw\|Umbrello\|unarchiver\|UNIX\|unpack\|unpack_thumb\|unrar\|USSD\|Vail\|Vakzination\|Valgrind\|VcdImager\|vcdxrip\|Vegastrike\|[Vv]era++\|[Vv]i\|[Vv]im\|VirtualBox\|VLC\|VmSize\|VNC\|VokoscreenNG\|Vorbis\|VMap\|VoIP\|VOSK\|vsync\|Vvave\|Wacom\|Wake\|WashiPad\|Watney\|Wayland\|Weather\|WebEngine\|webhook\|WebKit\|weboob\|WEBP\|WebP\|WebRTC\|Weston\|Will\|Windows\|WINE\|Wine\|winid\|WinPT\|WireGuard\|Whisper\|Wolfram\|[Ww]oob\|Word\|WordNet\|WordPerfect\|Words\|x.org\|XDebug\|XFig\|xfreerdp\|Xine\|xjdic\|xmllint\|XML\|XSudoku\|XVideo\|XWayland\|Yahtzee\|Yakuake\|YaST\|You[Tt]ube\|ytmusicapi\|xdotool\|Zanshin\|Zeroconf\|Zotero\|Zstd\)\([^[:alnum:]]\)/\1 \2\3\4/g
s/\b\([Ee]\)l\(s\|\) \(|\|\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(%1\|%2\|0Ad\|7z\|Affinity\|AllowedIP\|Analyze\|Apport\|Arca\|Arianna\|Autocrypt\|AVIF\|Baloo\|Balsa\|Banner\|Bash\|BAR\|Bas[Kk]et\|Batalla naval\|Bazaar\|Bergamot\|Bespin\|BibSearch\|BibTeX\|Bittorrent\|Bitbucket\|Blackbox\|Blender\|Blinken\|Blowfish\|Blu-ray\|Blue Angel\|Bluetooth\|BMP\|bodyParam\|Bomber\|Bomberman\|Bonsai\|Booth\|Bottles\|Bovo\|Box\|Braindump\|bravenec2nd\|Breakout\|Breeze\|Brisa\|Bugzilla\|Buho\|bup\|Burnfree\|Burnproof\|Bzip2\|C++\|Cachegrind\|Calcudoku\|Calindori\|Callgrind\|Calligra\|Calltree\|Cantor\|CAS\|Catfish\|CDDB\|CDS\|cdrdao\|cdrecord\|cdrskin\|CDS Sesame\|CDV\|CEC\|Centre d'informació\|Cervisia\|check-config\|checkXML[56]\|Chessbase\|Choqok\|Chrome\|Chromium\|CIFS\|Cisco\|cjpeg\|Clanbomber\|[Cc]lang\|Clang-Tidy\|ClayRGB\|Clazy\|clazy-standalone\|Clip\|clipboard\|[Cc][Mm]ake\|cmark\|CoCreateInstance\|commander\|CompteEnrere\|Communicator\|ConnectServer\|ConsoleKit\|contactprintthemeeditor\|contactthemeeditor\|contentItem\|convert\|convmv\|copy\|cor.test\|Corel\|Coverity\|Cpp\|CPP\|[Cc]ppcheck\|CRAN\|Crio\|crontab\|cryfs\|Crystal\|CSV\|CTags\|CSound\|csv\|CUDA\|CUPS\|CurConv\|curconvd\|Cuttlefish\|cvs\|CVS\|D3D9\|[Dd]ark[Tt]able\|[Dd]ataEngine\|data.frame\|D-Bus\|DarkTable\|DavDroid\|dbus\|dcraw\|dcraw_process\|Debconf\|DebugView\|DeepL\|Desfer\|[Dd]esigner\|dev2bitmap\|dev.print\|DH1080_INIT\|diff\|digiKam\|Digital\|ding\|dirmngr\|Discover\|DiSEqC\|displaycal\|div\|Django\|DjVuLibre\|DKIM\|dkim\|dmesg\|DNS\|Docker\|Docbook\|Dolphin\|dot\|Doxygen\|DPMS\|Dr Konqi\|Dragon\|DrawPerfect\|DrKonqi\|DrKonqi2\|Dropbox\|Drupal\|DuckDuckGo\|dvd+rw-format\|DVI\|dvips\|DXVK\|en_US\|Eloquens\|EnviroInfo\|EPub\|Estació\|EXR\|Facebook\|Falkon\|ffmpeg\|FFmpeg\|ffprobe\|FFprobe\|Fielding\|Fiery\|Filelight\|FileStash\|Firefox\|firewalld\|fish\|FITS\|FLAC\|[Ff]latpak\|Flickr\|Flow\|FluidSynth\|FocusWriter\|Font Management\|Fontmatrix\|Francis\|freedesktop.org\|Freenode\|frei0r\|FreeType\|fsync\|FSView\|fwhm\|G'Mic\|Gadu-Gadu\|Galeon\|GALR\|GBR\|GCC\|gcc\|gcompris\|GCompris\|gdb\|GDB\|Gemini\|German\|get\|getAuditLog\|GetHotNewStuff\|[Gg]ettext\|Gherkin\|Ghostscript\|GI[FH]\|Giggle\|Gimp\|GIMP\|[Gg]it\|git[gk]\|GitHub\|GitKlient\|GitLab\|Glaxnimate\|\.GlobalEnv\|GlobalEnv\|GMail\|GNOME\|GNU\|GnuCash\|GnuPG\|[Gg]nuplot\|GOCR\|gocryptfs\|Godot\|Gomoku\|Google\|GoogleEart\|GoogleMaps\|_ghostwriter\|ghostwriter\|gop\|GOP\|goto\|GoToSocial\|GParted\|gpasm\|GPG\|gpg\|Gpg4win\|gpg-agent\|GpgConf\|gpgsm\|GpgSM\|GPodder\|GPSBabel\|Grammalecte\|grammalected\|Granatier\|Grantlee\|Graphics\|[Gg]raphviz\|Gravatar\|GreaseMonkey\|grep\|Grisbi\|GroupWise\|growisofs\|Grub\|GSSAPI\|GStreamer\|Gtk\|GUIProfile\|Gwenview\|Gzip\|h5dump\|HAL\|Hash-o-Matic\|headerthemeeditor\|Healpix\|[Hh]eaptrack\|HEIF\|Helgrind\|hg\|High\|HiPS\|HomeBank\|HotShots\|Htop\|Hunspell\|Hyprland\|IFrame\|Ikona\|IMAP\|Imgur\|iNaturalist\|Index\|Invidious\|input\|inputVectorData\|inputVectorTime\|jAlbum\|Jamendo\|Java\|Java[Ss]cript\|Jitsi\|jitter\|journald\|Jovie\|JPEG\|JPG\|JPL\|JSON\|Ju[Kk]\|[Jj]ulia\|Juniper\|Jupyter\|JXL\|K3b\|KAddressBook\|Kadmos\|KADMOS\|Kaffeine\|Kaidan\|Kairo\|Kajongg\|KAlarm\|Kalendar\|KAlgebra\|Kalk\|Kalzium\|Kamera\|Kamoso\|Kanagram\|Kapman\|KAppTemplate\|Kaption\|Karbon\|Kartographer\|Kasts\|Kate\|KAtomic\|KBabel\|KBackup\|KBibTeX\|KBlackBox\|KBlocks\|KBounce\|KBreakOut\|KBruch\|kbuildsycoca[56]\|KBuildSycoca\|KCachegrind\|KCalc\|KCalendarCore\|KCharSelect\|KClock\|KCM\|KColorChooser\|KConfig\|KContact\|KCron\|KDE\|kde4-config\|KDebug\|kdebugdialog[56]\|[Kk][Dd]ebug[Ss]ettings\|kdeconnectd\|kded\|kded[56]\|KDED\|kdegraphics\|kdeinit\|kdeinit[56]\|Kdenlive\|KDEPrint\|kdesrc-build\|kdesu\|kdesudo\|Kdesvn\|KDevelop\|KDialog\|KDiamond\|KDiff3\|KDing\|KDiskFree\|keditbookmarks\|keditfiletype\|KeePassXC\|KEuroCalc\|Kexi\|KEXI\|Keysmith\|kf5-config\|KFileDialog\|KFileMetaDataReader\|KFind\|KFloppy\|KFM\|KFourInLine\|KGameRenderer\|KGamma\|kgendesignerplugin\|KGeography\|KGeoTag\|KGet\|KGoldrunner\|KGpg\|KGraphViewer\|KHangMan\|[Kk][Hh]elp[Cc]enter\|Khipu\|khotkeys\|KHotkeys\|khtml\|Kid3\|Kig\|Kigo\|Kile\|Killbots\|Killer\|KImageMapEditor\|KInfoCenter\|KIO\|Kio-Extras\|kiod\|KIPI\|Kirigami\|Kiriki\|Kirogi\|Kiten\|KItinerary\|KJots\|KJournald\|KJumpingCube\|KLauncher\|Kleopatra\|KLettres\|Klever\|KleverNotes\|Klickety\|Klimbgrades\|KLines\|Klipper\|ksld\|KMag\|KMagnifier\|KMahjongg\|KMail\|KMenu\|KMines\|KMix\|kmix\|KML\|KMouseTool\|KMouth\|KMPlayer\|KmPlot\|KMuddy\|KMyMoney\|kmymoney\|KNetWalk\|KNewStuff\|KNights\|KNotes\|KNotify\|Kodaskanna\|KOffice\|Koko\|Kolab\|Kolf\|Kollision\|Kolor Lines\|Kolorfill\|KolourPaint\|Kommit\|[Kk]ompare\|Kongress\|Konqueror\|Konquest\|[Kk]onsole\|Kontact\|Kontrast\|Konversation\|Kooka\|Kookbook\|Kopete\|KOrganizer\|KPackage\|KPackageType\|KPat\|KPatience\|KPhotoAlbum\|KPipewire\|KPL\|KPlato\|KPresenter\|[Kk]razy2\|KRDC\|KRdp\|KRegExpEditor\|KRename\|KReport\|KReversi\|K[Rr]fb\|Krita\|Kronometer\|Kross\|KRuler\|KRun\|KRunner\|Krusader\|KSame\|KScreen\|KService\|KSeExpr\|KShisen\|KSIRC\|KsirK\|ksld\|KSnakeDuel\|KSokoban\|Sokoban\|KSpaceDuel\|Kspell\|KSpread\|KSquares\|Ksshaskpass\|[Kk]st\|KStars\|KSudoku\|KSyntaxHighlighter\|KSyntaxHighlighting\|KSysGuard\|KSystemLog\|KTeaTime\|KTechlab\|KTelnetService\|KTextEditor\|KTimer\|KTimeTracker\|KTorrent\|KTouch\|KTP\|KTrip\|KTuberling\|KTurtle\|Kube\|Kubric\|Kubrick\|Kuickshow\|KuickShow\|Kup\|KUserFeedback\|KWallet\|kwallet-query\|kwalletd\|KWalletManager\|KWatchGnuPG\|Kwave\|KWeather\|KWidgetsAddons\|KwikDisk\|KWin\|KWordQuiz\|KWrite\|KXStitch\|Netscreen\|LabPlot\|LanguageTool\|lasso\|Last.fm\|latex\|LaTeX\|Latte\|lattice\|LDAP\|LDAPS\|Ledger\|Libarchive\|LibreOffice\|Licentia\|LDAP\|Lightroom\|LIGO\|Lilo\|lin_guider\|Lin-Guider\|Linux\|Little\|Livechat\|LLDB\|lldb-mi\|loca[lt]e\|lock\|lockd\|logcat\|logger\|Logo\|LoginD\|Lokalize\|Lottie\|Lotus\|LSkat\|Lua\|Lutris\|LyteBox\|LyX\|LZMA\|Mac\|Magic\|Magnatune\|Mail\|mailfilteragent\|Mahjongg\|[Mm]ake\|man\|Mangonel\|Maniphest\|Marble\|Markdown\|MarkNote\|[Mm]arlin\|Massif\|Mastodon\|Material\|MathJax\|Matlab\|Matrix\|MauiKit\|MauiManServer\|Maxima\|MBox\|MBoxImporter\|MediaWiki\|meinproc[56]\|[Mm]elt\|Memcheck\|memcpy\|mencoder\|Mercurial\|Merkuro\|merge\|Meson\|MesonManager\|Messenger\|Metalink\|[M̀m]icrobe\|Microsoft\|MiddleClickLoader\|Milou\|MinGW\|Minetest\|MINIX\|Minuet\|mkdir\|mkinitcpio\|mkisofs\|MLT\|mmap\|Mobipocket\|ModemManager\|Money\|monopd\|[Mm]orse\|move\|Moving\|Mozilla\|mplayer\|MPlayer\|MPRIS2\|mpv\|msgfmt\|msgmerge\|ms_print\|MUD\|MultiMarkdown\|Muon\|MuseScore\|MusicBrainz\|mutex\|muxer\|Mycroft\|MyPaint\|mysql\|MySQL\|ncdump\|NeoChat\|Nepomuk\|Netscape\|NetworkManager\|Next[Cc]loud\|nginx\|Ninja\|NKS\|noatun\|normalize\|Nota\|OCR\|OCRAD\|Office\|Okteta\|Okular\|[OK]RA\|OpenCL\|output\|outputVectorPeriodogram\|p7zip\|Pac-Man\|PackageKit\|Palapeli\|[Pp]andoc\|Panorama\|PaperKey\|par2\|Pareto\|Parley\|parsha\|Partitioner\|Pascale\|Patreon\|P[BGP]M\|pdf\|PDF\|pdflatex\|pdfpages\|pdftk\|Peek\|PeerTube\|[Pp]erforce\|Peruse\|Phabricator\|PHD2\|phd2logview\|Phonon\|Photoshop\|PhotoSwipe\|PHP\|PHPUnit\|Picmi\|Pidgin\|Pikasso\|pimdataexporter\|Pine64\|Pinebook\|Pine[Pp]hone\|PineTab\|ping\|Pinterest\|pip3\|PipeWire\|Piwigo\|Pix\|Piwik\|Pixelfed\|Plan\|Planck\|PLANCK\|Planner\|Plasma\|plasmapkg2\|plasmashell\|PlasmaTube\|Plastik\|Playdar\|Plymouth\|PNG\|pngquant\|PolicyKit\|Pology\|Pomodoro\|pool\|Poppler\|Portable\|Portfolio\|PostgreSQL\|postmarketOS\|[Pp]ost[Ss]cript\|PowerDevil\|PowerTop\|preparetips[56]\|Progressive\|ProPhotoRGB\|Proton\|ProtonDB\|PSD\|psselect\|pstops\|PTY\|PulseAudio\|Purpose\|pvfViewer\|PyQt\|[Pp]ython\|Python[23]\|pyuic[56]\|Qalculate\|QApplication\|QCA\|QCommandLineParser\|QEMU\|QFileDialog\|QGit\|QGraphicsView\|QGuiApplication\|QImageWriter\|QKeychain\|QMake\|QML\|qmljs\|QObject\|QPGME\|Qrca\|QSaveFile\|Qt\|QtChart\|QtComponents\|QtCurve\|QtQuick\|QtWebEngine\|Quicken\|QuickConnect\|Quickstates\|quota\|Quotient\|R\|Rajce\|Rattlesnake\|RAR\|Raw\|raw\|RawTherapee\|readcd\|Real Media\|Redshift\|Refer\|[Rr]eplicode\|RepRap\|Rest\|ReText\|RetroArch\|REUSE\|reviewboard\|rio\|\.rkward\|RKward\|RKWard\|RMarkdown\|Rocs\|Rocket\|RocketChat\|Roliserver\|Rolisteam\|Roy\|RPG\|RSIBreak\|rsync\|Ruby\|Ruqola\|Runner\|Rust\|Sage\|Samba\|Scilab\|scour\|SDDM\|[Ss]endmail\|sesameResolver\|Sextractor\|shader\|Sheets\|Shelf\|shell\|Showfoto\|Shutter\|[Ss]ieve\|sieveeditor\|SigG\|SimpleScreenRecorder\|Sink\|Sixel\|Skanlite\|Skanpage\|Skrooge\|smb\|Smb4K\|S\/MIME\|SMTP\|SmugMug\|Snore\|SnoreNotify\|Solid\|Sonicwall\|Soundcloud\|Source\|Spacebar\|Spectacle\|Sqlite\|SQLite\|src\|SSH\|ssh-add\|sshfs\|Star\|SteamOS\|Stellarium\|Step\|Stopmotion\|StretchPlayer\|Strike\|subreddit\|Substance\|Subtitle Composer\|[Ss]ubversion\|sudo\|SV[GN]\|SymbolEditor\|Symmy\|Synaptic\|syslog\|syspath\|[Ss]ystemd\|SystemLog\|Sway\|Tagged\|TAlbum\|Tangram\|TaskJuggler\|teamd\|[Tt]elepathy\|Tellico\|Telly\|Template\|Tesseract\|Tetris\|TeX\|The\|Thunderbird\|Thunderbolt\|TIFF\|TLS\|TNamed\|Tok\|Tokodon\|top\|TOTP\|trait\|transcode\|Translate-Toolkit\|trixel\|Trojitá\|Tron\|tun\|TurtleScript\|Tuxpaint\|Twitter\|UberWriter\|UFRaw\|Umbrello\|unarchiver\|UNIX\|unpack\|unpack_thumb\|unrar\|USSD\|Vail\|Vakzination\|Valgrind\|VcdImager\|vcdxrip\|Vegastrike\|[Vv]era++\|[Vv]i\|[Vv]im\|VirtualBox\|VLC\|VmSize\|VNC\|VokoscreenNG\|Vorbis\|VMap\|VoIP\|VOSK\|vsync\|Vvave\|Wacom\|Wake\|WashiPad\|Watney\|Wayland\|Weather\|WebEngine\|webhook\|WebKit\|weboob\|WEBP\|WebP\|WebRTC\|Weston\|Will\|Windows\|WINE\|Wine\|winid\|WinPT\|WireGuard\|Whisper\|Wolfram\|[Ww]oob\|Word\|WordNet\|WordPerfect\|Words\|x.org\|XDebug\|XFig\|xfreerdp\|Xine\|xjdic\|xmllint\|XML\|XSudoku\|XVideo\|XWayland\|Yahtzee\|Yakuake\|YaST\|You[Tt]ube\|ytmusicapi\|xdotool\|Zanshin\|Zeroconf\|Zotero\|Zstd\)\([^[:alnum:]]\)/\3\4\5/g
s/\b\([Dd]\)el\(s\|\) \(|\|\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(%1\|%2\|0Ad\|7z\|Affinity\|AllowedIP\|Analyze\|Apport\|Arca\|Arianna\|Autocrypt\|AVIF\|Baloo\|Balsa\|Banner\|Bash\|BAR\|Bas[Kk]et\|Batalla naval\|Bazaar\|Bergamot\|Bespin\|BibSearch\|BibTeX\|Bitbucket\|Bittorrent\|Blackbox\|Blender\|Blinken\|Blowfish\|Blu-ray\|Blue Angel\|Bluetooth\|BMP\|bodyParam\|Bomber\|Bomberman\|Bonsai\|Booth\|Bottles\|Bovo\|Box\|Braindump\|bravenec2nd\|Breakout\|Breeze\|Brisa\|Bugzilla\|Buho\|bup\|Burnfree\|Burnproof\|Bzip2\|C++\|Cachegrind\|Calcudoku\|Calindori\|Callgrind\|Calligra\|Calltree\|Cantor\|CAS\|Catfish\|CDDB\|CDS\|cdrdao\|cdrecord\|cdrskin\|CDS Sesame\|CDV\|CEC\|Centre d'informació\|Cervisia\|check-config\|checkXML[56]\|Chessbase\|Choqok\|Chrome\|Chromium\|CIFS\|Cisco\|cjpeg\|Clanbomber\|[Cc]lang\|Clang-Tidy\|ClayRGB\|Clazy\|clazy-standalone\|Clip\|clipboard\|[Cc][Mm]ake\|cmark\|CoCreateInstance\|commander\|CompteEnrere\|Communicator\|ConnectServer\|ConsoleKit\|contactprintthemeeditor\|contactthemeeditor\|contentItem\|convert\|convmv\|copy\|cor.test\|Corel\|Coverity\|Cpp\|CPP\|[Cc]ppcheck\|CRAN\|Crio\|crontab\|cryfs\|Crystal\|CSV\|CTags\|CSound\|csv\|CUDA\|CUPS\|CurConv\|curconvd\|Cuttlefish\|cvs\|CVS\|D3D9\|[Dd]ark[Tt]able\|[Dd]ataEngine\|data.frame\|D-Bus\|DarkTable\|DavDroid\|dbus\|dcraw\|dcraw_process\|Debconf\|DebugView\|DeepL\|Desfer\|[Dd]esigner\|dev2bitmap\|dev.print\|DH1080_INIT\|diff\|digiKam\|Digital\|ding\|dirmngr\|Discover\|DiSEqC\|displaycal\|div\|Django\|DjVuLibre\|DKIM\|dkim\|dmesg\|DNS\|Docker\|Docbook\|Dolphin\|dot\|Doxygen\|DPMS\|Dr Konqi\|Dragon\|DrawPerfect\|DrKonqi\|DrKonqi2\|Dropbox\|Drupal\|DuckDuckGo\|dvd+rw-format\|DVI\|dvips\|DXVK\|en_US\|Eloquens\|EnviroInfo\|EPub\|Estació\|EXR\|Facebook\|Falkon\|ffmpeg\|FFmpeg\|ffprobe\|FFprobe\|Fielding\|Fiery\|Filelight\|FileStash\|Firefox\|firewalld\|fish\|FITS\|FLAC\|[Ff]latpak\|Flickr\|Flow\|FluidSynth\|FocusWriter\|Font Management\|Fontmatrix\|Francis\|freedesktop.org\|Freenode\|frei0r\|FreeType\|fsync\|FSView\|fwhm\|G'Mic\|Gadu-Gadu\|Galeon\|GALR\|GBR\|GCC\|gcc\|gcompris\|GCompris\|gdb\|GDB\|Gemini\|German\|get\|getAuditLog\|GetHotNewStuff\|[Gg]ettext\|Gherkin\|Ghostscript\|GI[FH]\|Giggle\|Gimp\|GIMP\|[Gg]it\|git[gk]\|GitHub\|GitKlient\|GitLab\|Glaxnimate\|\.GlobalEnv\|GlobalEnv\|GMail\|GNOME\|GNU\|GnuCash\|GnuPG\|[Gg]nuplot\|GOCR\|gocryptfs\|Godot\|Gomoku\|Google\|GoogleEart\|GoogleMaps\|_ghostwriter\|ghostwriter\|gop\|GOP\|goto\|GoToSocial\|GParted\|gpasm\|GPG\|gpg\|Gpg4win\|gpg-agent\|GpgConf\|gpgsm\|GpgSM\|GPodder\|GPSBabel\|Grammalecte\|grammalected\|Granatier\|Grantlee\|Graphics\|[Gg]raphviz\|Gravatar\|GreaseMonkey\|grep\|Grisbi\|GroupWise\|growisofs\|Grub\|GSSAPI\|GStreamer\|Gtk\|GUIProfile\|Gwenview\|Gzip\|h5dump\|HAL\|Hash-o-Matic\|headerthemeeditor\|Healpix\|[Hh]eaptrack\|HEIF\|Helgrind\|hg\|High\|HiPS\|HomeBank\|HotShots\|Htop\|Hunspell\|Hyprland\|IFrame\|Ikona\|IMAP\|Imgur\|iNaturalist\|Index\|Invidious\|input\|inputVectorData\|inputVectorTime\|jAlbum\|Jamendo\|Java\|Java[Ss]cript\|Jitsi\|jitter\|journald\|Jovie\|JPEG\|JPG\|JPL\|JSON\|Ju[Kk]\|[Jj]ulia\|Juniper\|Jupyter\|JXL\|K3b\|KAddressBook\|Kadmos\|KADMOS\|Kaffeine\|Kaidan\|Kairo\|Kajongg\|KAlarm\|Kalendar\|KAlgebra\|Kalk\|Kalzium\|Kamera\|Kamoso\|Kanagram\|Kapman\|KAppTemplate\|Kaption\|Karbon\|Kartographer\|Kasts\|Kate\|KAtomic\|KBabel\|KBackup\|KBibTeX\|KBlackBox\|KBlocks\|KBounce\|KBreakOut\|KBruch\|kbuildsycoca[56]\|KBuildSycoca\|KCachegrind\|KCalc\|KCalendarCore\|KCharSelect\|KClock\|KCM\|KColorChooser\|KConfig\|KContact\|KCron\|KDE\|kde4-config\|KDebug\|kdebugdialog[56]\|[Kk][Dd]ebug[Ss]ettings\|kdeconnectd\|kded\|kded[56]\|KDED\|kdegraphics\|kdeinit\|kdeinit[56]\|Kdenlive\|KDEPrint\|kdesrc-build\|kdesu\|kdesudo\|Kdesvn\|KDevelop\|KDialog\|KDiamond\|KDiff3\|KDing\|KDiskFree\|keditbookmarks\|keditfiletype\|KeePassXC\|KEuroCalc\|Kexi\|KEXI\|Keysmith\|kf5-config\|KFileDialog\|KFileMetaDataReader\|KFind\|KFloppy\|KFM\|KFourInLine\|KGameRenderer\|KGamma\|kgendesignerplugin\|KGeography\|KGeoTag\|KGet\|KGoldrunner\|KGpg\|KGraphViewer\|KHangMan\|[Kk][Hh]elp[Cc]enter\|Khipu\|khotkeys\|KHotkeys\|khtml\|Kid3\|Kig\|Kigo\|Kile\|Killbots\|Killer\|KImageMapEditor\|KInfoCenter\|KIO\|Kio-Extras\|kiod\|KIPI\|Kirigami\|Kiriki\|Kirogi\|Kiten\|KItinerary\|KJots\|KJournald\|KJumpingCube\|KLauncher\|Kleopatra\|KLettres\|Klever\|KleverNotes\|Klickety\|Klimbgrades\|KLines\|Klipper\|ksld\|KMag\|KMagnifier\|KMahjongg\|KMail\|KMenu\|KMines\|KMix\|kmix\|KML\|KMouseTool\|KMouth\|KMPlayer\|KmPlot\|KMuddy\|KMyMoney\|kmymoney\|KNetWalk\|KNewStuff\|KNights\|KNotes\|KNotify\|Kodaskanna\|KOffice\|Koko\|Kolab\|Kolf\|Kollision\|Kolor Lines\|Kolorfill\|KolourPaint\|Kommit\|[Kk]ompare\|Kongress\|Konqueror\|Konquest\|[Kk]onsole\|Kontact\|Kontrast\|Konversation\|Kooka\|Kookbook\|Kopete\|KOrganizer\|KPackage\|KPackageType\|KPat\|KPatience\|KPhotoAlbum\|KPipewire\|KPL\|KPlato\|KPresenter\|[Kk]razy2\|KRDC\|KRdp\|KRegExpEditor\|KRename\|KReport\|KReversi\|K[Rr]fb\|Krita\|Kronometer\|Kross\|KRuler\|KRun\|KRunner\|Krusader\|KSame\|KScreen\|KService\|KSeExpr\|KShisen\|KSIRC\|KsirK\|ksld\|KSnakeDuel\|KSokoban\|Sokoban\|KSpaceDuel\|Kspell\|KSpread\|KSquares\|Ksshaskpass\|[Kk]st\|KStars\|KSudoku\|KSyntaxHighlighter\|KSyntaxHighlighting\|KSysGuard\|KSystemLog\|KTeaTime\|KTechlab\|KTelnetService\|KTextEditor\|KTimer\|KTimeTracker\|KTorrent\|KTouch\|KTP\|KTrip\|KTuberling\|KTurtle\|Kube\|Kubric\|Kubrick\|Kuickshow\|KuickShow\|Kup\|KUserFeedback\|KWallet\|kwallet-query\|kwalletd\|KWalletManager\|KWatchGnuPG\|Kwave\|KWeather\|KWidgetsAddons\|KwikDisk\|KWin\|KWordQuiz\|KWrite\|KXStitch\|Netscreen\|LabPlot\|LanguageTool\|lasso\|Last.fm\|latex\|LaTeX\|Latte\|lattice\|LDAP\|LDAPS\|Ledger\|Libarchive\|LibreOffice\|Licentia\|LDAP\|Lightroom\|LIGO\|Lilo\|lin_guider\|Lin-Guider\|Linux\|Little\|Livechat\|LLDB\|lldb-mi\|loca[lt]e\|lock\|lockd\|logcat\|logger\|Logo\|LoginD\|Lokalize\|Lottie\|Lotus\|LSkat\|Lua\|Lutris\|LyteBox\|LyX\|LZMA\|Mac\|Magic\|Magnatune\|Mail\|mailfilteragent\|Mahjongg\|[Mm]ake\|man\|Mangonel\|Maniphest\|Marble\|Markdown\|MarkNote\|[Mm]arlin\|Massif\|Mastodon\|Material\|MathJax\|Matlab\|Matrix\|MauiKit\|MauiManServer\|Maxima\|MBox\|MBoxImporter\|MediaWiki\|meinproc[56]\|[Mm]elt\|Memcheck\|memcpy\|mencoder\|Mercurial\|Merkuro\|merge\|Meson\|MesonManager\|Messenger\|Metalink\|[M̀m]icrobe\|Microsoft\|MiddleClickLoader\|Milou\|MinGW\|Minetest\|MINIX\|Minuet\|mkdir\|mkinitcpio\|mkisofs\|MLT\|mmap\|Mobipocket\|ModemManager\|Money\|monopd\|[Mm]orse\|move\|Moving\|Mozilla\|mplayer\|MPlayer\|MPRIS2\|mpv\|msgfmt\|msgmerge\|ms_print\|MUD\|MultiMarkdown\|Muon\|MuseScore\|MusicBrainz\|mutex\|muxer\|Mycroft\|MyPaint\|mysql\|MySQL\|ncdump\|NeoChat\|Nepomuk\|Netscape\|NetworkManager\|Next[Cc]loud\|nginx\|Ninja\|NKS\|noatun\|normalize\|Nota\|OCR\|OCRAD\|Office\|Okteta\|Okular\|[OK]RA\|OpenCL\|output\|outputVectorPeriodogram\|p7zip\|Pac-Man\|PackageKit\|Palapeli\|[Pp]andoc\|Panorama\|PaperKey\|par2\|Pareto\|Parley\|parsha\|Partitioner\|Pascale\|Patreon\|P[BGP]M\|pdf\|PDF\|pdflatex\|pdfpages\|pdftk\|Peek\|PeerTube\|[Pp]erforce\|Peruse\|Phabricator\|PHD2\|phd2logview\|Phonon\|Photoshop\|PhotoSwipe\|PHP\|PHPUnit\|Picmi\|Pidgin\|Pikasso\|pimdataexporter\|Pine64\|Pinebook\|Pine[Pp]hone\|PineTab\|ping\|Pinterest\|pip3\|PipeWire\|Piwigo\|Pix\|Piwik\|Pixelfed\|Plan\|Planck\|PLANCK\|Planner\|Plasma\|plasmapkg2\|plasmashell\|PlasmaTube\|Plastik\|Playdar\|Plymouth\|PNG\|pngquant\|PolicyKit\|Pology\|Pomodoro\|pool\|Poppler\|Portable\|Portfolio\|PostgreSQL\|postmarketOS\|[Pp]ost[Ss]cript\|PowerDevil\|PowerTop\|preparetips[56]\|Progressive\|ProPhotoRGB\|Proton\|ProtonDB\|PSD\|psselect\|pstops\|PTY\|PulseAudio\|Purpose\|pvfViewer\|PyQt\|[Pp]ython\|Python[23]\|pyuic[56]\|Qalculate\|QApplication\|QCA\|QCommandLineParser\|QEMU\|QFileDialog\|QGit\|QGraphicsView\|QGuiApplication\|QImageWriter\|QKeychain\|QMake\|QML\|qmljs\|QObject\|QPGME\|Qrca\|QSaveFile\|Qt\|QtChart\|QtComponents\|QtCurve\|QtQuick\|QtWebEngine\|Quicken\|QuickConnect\|Quickstates\|quota\|Quotient\|R\|Rajce\|Rattlesnake\|RAR\|Raw\|raw\|RawTherapee\|readcd\|Real Media\|Redshift\|Refer\|[Rr]eplicode\|RepRap\|Rest\|ReText\|RetroArch\|REUSE\|reviewboard\|rio\|\.rkward\|RKward\|RKWard\|RMarkdown\|Rocs\|Rocket\|RocketChat\|Roliserver\|Rolisteam\|Roy\|RPG\|RSIBreak\|rsync\|Ruby\|Ruqola\|Runner\|Rust\|Sage\|Samba\|Scilab\|scour\|SDDM\|[Ss]endmail\|sesameResolver\|Sextractor\|shader\|Sheets\|Shelf\|shell\|Showfoto\|Shutter\|[Ss]ieve\|sieveeditor\|SigG\|SimpleScreenRecorder\|Sink\|Sixel\|Skanlite\|Skanpage\|smb\|Smb4K\|S\/MIME\|SMTP\|SmugMug\|Snore\|SnoreNotify\|Solid\|Sonicwall\|Soundcloud\|Source\|Spacebar\|Spectacle\|Sqlite\|SQLite\|src\|SSH\|ssh-add\|sshfs\|Star\|SteamOS\|Stellarium\|Step\|Stopmotion\|StretchPlayer\|Strike\|subreddit\|Substance\|Subtitle Composer\|[Ss]ubversion\|sudo\|SV[GN]\|SymbolEditor\|Symmy\|Synaptic\|syslog\|syspath\|[Ss]ystemd\|SystemLog\|Sway\|Tagged\|TAlbum\|Tangram\|TaskJuggler\|teamd\|[Tt]elepathy\|Tellico\|Telly\|Template\|Tesseract\|Tetris\|TeX\|The\|Thunderbird\|Thunderbolt\|TIFF\|TLS\|TNamed\|Tok\|Tokodon\|top\|TOTP\|trait\|transcode\|Translate-Toolkit\|trixel\|Trojitá\|Tron\|tun\|TurtleScript\|Tuxpaint\|Twitter\|UberWriter\|UFRaw\|Umbrello\|unarchiver\|UNIX\|unpack\|unpack_thumb\|unrar\|USSD\|Vail\|Vakzination\|Valgrind\|VcdImager\|vcdxrip\|Vegastrike\|[Vv]era++\|[Vv]i\|[Vv]im\|VirtualBox\|VLC\|VmSize\|VNC\|VokoscreenNG\|Vorbis\|VMap\|VoIP\|VOSK\|vsync\|Vvave\|Wacom\|Wake\|WashiPad\|Watney\|Wayland\|Weather\|WebEngine\|webhook\|WebKit\|weboob\|WEBP\|WebP\|WebRTC\|Weston\|Will\|Windows\|WINE\|Wine\|winid\|WinPT\|WireGuard\|Whisper\|Wolfram\|[Ww]oob\|Word\|WordNet\|WordPerfect\|Words\|x.org\|XDebug\|XFig\|xfreerdp\|Xine\|xjdic\|xmllint\|XML\|XSudoku\|XVideo\|XWayland\|Yahtzee\|Yakuake\|YaST\|You[Tt]ube\|ytmusicapi\|xdotool\|Zanshin\|Zeroconf\|Zotero\|Zstd\)\([^[:alnum:]]\)/\1e \3\4\5/g
s/\b\([Pp]\)el \(|\|\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(%1\|%2\|0Ad\|7z\|Affinity\|AllowedIP\|Analyze\|Apport\|Arca\|Arianna\|Autocrypt\|AVIF\|Baloo\|Balsa\|Banner\|Bash\|BAR\|Bas[Kk]et\|Batalla naval\|Bazaar\|Bergamot\|Bespin\|BibSearch\|BibTeX\|Bitbucket\|Bittorrent\|Blackbox\|Blender\|Blinken\|Blowfish\|Blu-ray\|Blue Angel\|Bluetooth\|BMP\|bodyParam\|Bomber\|Bomberman\|Bonsai\|Booth\|Bottles\|Bovo\|Box\|Braindump\|bravenec2nd\|Breakout\|Breeze\|Brisa\|Bugzilla\|Buho\|bup\|Burnfree\|Burnproof\|Bzip2\|C++\|Cachegrind\|Calcudoku\|Calindori\|Callgrind\|Calligra\|Calltree\|Cantor\|CAS\|Catfish\|CDDB\|CDS\|cdrdao\|cdrecord\|cdrskin\|CDS Sesame\|CDV\|CEC\|Centre d'informació\|Cervisia\|check-config\|checkXML[56]\|Chessbase\|Choqok\|Chrome\|Chromium\|CIFS\|Cisco\|cjpeg\|Clanbomber\|[Cc]lang\|Clang-Tidy\|ClayRGB\|Clazy\|clazy-standalone\|Clip\|clipboard\|[Cc][Mm]ake\|cmark\|CoCreateInstance\|commander\|CompteEnrere\|Communicator\|ConnectServer\|ConsoleKit\|contactprintthemeeditor\|contactthemeeditor\|contentItem\|convert\|convmv\|copy\|cor.test\|Corel\|Coverity\|Cpp\|CPP\|[Cc]ppcheck\|CRAN\|Crio\|crontab\|cryfs\|Crystal\|CSV\|CTags\|CSound\|csv\|CUDA\|CUPS\|CurConv\|curconvd\|Cuttlefish\|cvs\|CVS\|D3D9\|[Dd]ark[Tt]able\|[Dd]ataEngine\|data.frame\|D-Bus\|DarkTable\|DavDroid\|dbus\|dcraw\|dcraw_process\|Debconf\|DebugView\|DeepL\|Desfer\|[Dd]esigner\|dev2bitmap\|dev.print\|DH1080_INIT\|diff\|digiKam\|Digital\|ding\|dirmngr\|Discover\|DiSEqC\|displaycal\|div\|Django\|DjVuLibre\|DKIM\|dkim\|dmesg\|DNS\|Docker\|Docbook\|Dolphin\|dot\|Doxygen\|DPMS\|Dr Konqi\|Dragon\|DrawPerfect\|DrKonqi\|DrKonqi2\|Dropbox\|Drupal\|DuckDuckGo\|dvd+rw-format\|DVI\|dvips\|DXVK\|en_US\|Eloquens\|EnviroInfo\|EPub\|Estació\|EXR\|Facebook\|Falkon\|ffmpeg\|FFmpeg\|ffprobe\|FFprobe\|Fielding\|Fiery\|Filelight\|FileStash\|Firefox\|firewalld\|fish\|FITS\|FLAC\|[Ff]latpak\|Flickr\|Flow\|FluidSynth\|FocusWriter\|Font Management\|Fontmatrix\|Francis\|freedesktop.org\|Freenode\|frei0r\|FreeType\|fsync\|FSView\|fwhm\|G'Mic\|Gadu-Gadu\|Galeon\|GALR\|GBR\|GCC\|gcc\|gcompris\|GCompris\|gdb\|GDB\|Gemini\|German\|get\|getAuditLog\|GetHotNewStuff\|[Gg]ettext\|Gherkin\|Ghostscript\|GI[FH]\|Giggle\|Gimp\|GIMP\|[Gg]it\|git[gk]\|GitHub\|GitKlient\|GitLab\|Glaxnimate\|\.GlobalEnv\|GlobalEnv\|GMail\|GNOME\|GNU\|GnuCash\|GnuPG\|[Gg]nuplot\|GOCR\|gocryptfs\|Godot\|Gomoku\|Google\|GoogleEart\|GoogleMaps\|_ghostwriter\|ghostwriter\|gop\|GOP\|goto\|GoToSocial\|GParted\|gpasm\|GPG\|gpg\|Gpg4win\|gpg-agent\|GpgConf\|gpgsm\|GpgSM\|GPodder\|GPSBabel\|Grammalecte\|grammalected\|Granatier\|Grantlee\|Graphics\|[Gg]raphviz\|Gravatar\|GreaseMonkey\|grep\|Grisbi\|GroupWise\|growisofs\|Grub\|GSSAPI\|GStreamer\|Gtk\|GUIProfile\|Gwenview\|Gzip\|h5dump\|HAL\|Hash-o-Matic\|headerthemeeditor\|Healpix\|[Hh]eaptrack\|HEIF\|Helgrind\|hg\|High\|HiPS\|HomeBank\|HotShots\|Htop\|Hunspell\|Hyprland\|IFrame\|Ikona\|IMAP\|Imgur\|iNaturalist\|Index\|Invidious\|input\|inputVectorData\|inputVectorTime\|jAlbum\|Jamendo\|Java\|Java[Ss]cript\|Jitsi\|jitter\|journald\|Jovie\|JPEG\|JPG\|JPL\|JSON\|Ju[Kk]\|[Jj]ulia\|Juniper\|Jupyter\|JXL\|K3b\|KAddressBook\|Kadmos\|KADMOS\|Kaffeine\|Kaidan\|Kairo\|Kajongg\|KAlarm\|Kalendar\|KAlgebra\|Kalk\|Kalzium\|Kamera\|Kamoso\|Kanagram\|Kapman\|KAppTemplate\|Kaption\|Karbon\|Kartographer\|Kasts\|Kate\|KAtomic\|KBabel\|KBackup\|KBibTeX\|KBlackBox\|KBlocks\|KBounce\|KBreakOut\|KBruch\|kbuildsycoca[56]\|KBuildSycoca\|KCachegrind\|KCalc\|KCalendarCore\|KCharSelect\|KClock\|KCM\|KColorChooser\|KConfig\|KContact\|KCron\|KDE\|kde4-config\|KDebug\|kdebugdialog[56]\|[Kk][Dd]ebug[Ss]ettings\|kdeconnectd\|kded\|kded[56]\|KDED\|kdegraphics\|kdeinit\|kdeinit[56]\|Kdenlive\|KDEPrint\|kdesrc-build\|kdesu\|kdesudo\|Kdesvn\|KDevelop\|KDialog\|KDiamond\|KDiff3\|KDing\|KDiskFree\|keditbookmarks\|keditfiletype\|KeePassXC\|KEuroCalc\|Kexi\|KEXI\|Keysmith\|kf5-config\|KFileDialog\|KFileMetaDataReader\|KFind\|KFloppy\|KFM\|KFourInLine\|KGameRenderer\|KGamma\|kgendesignerplugin\|KGeography\|KGeoTag\|KGet\|KGoldrunner\|KGpg\|KGraphViewer\|KHangMan\|[Kk][Hh]elp[Cc]enter\|Khipu\|khotkeys\|KHotkeys\|khtml\|Kid3\|Kig\|Kigo\|Kile\|Killbots\|Killer\|KImageMapEditor\|KInfoCenter\|KIO\|Kio-Extras\|kiod\|KIPI\|Kirigami\|Kiriki\|Kirogi\|Kiten\|KItinerary\|KJots\|KJournald\|KJumpingCube\|KLauncher\|Kleopatra\|KLettres\|Klever\|KleverNotes\|Klickety\|Klimbgrades\|KLines\|Klipper\|ksld\|KMag\|KMagnifier\|KMahjongg\|KMail\|KMenu\|KMines\|KMix\|kmix\|KML\|KMouseTool\|KMouth\|KMPlayer\|KmPlot\|KMuddy\|KMyMoney\|kmymoney\|KNetWalk\|KNewStuff\|KNights\|KNotes\|KNotify\|Kodaskanna\|KOffice\|Koko\|Kolab\|Kolf\|Kollision\|Kolor Lines\|Kolorfill\|KolourPaint\|Kommit\|[Kk]ompare\|Kongress\|Konqueror\|Konquest\|[Kk]onsole\|Kontact\|Kontrast\|Konversation\|Kooka\|Kookbook\|Kopete\|KOrganizer\|KPackage\|KPackageType\|KPat\|KPatience\|KPhotoAlbum\|KPipewire\|KPL\|KPlato\|KPresenter\|[Kk]razy2\|KRDC\|KRdp\|KRegExpEditor\|KRename\|KReport\|KReversi\|K[Rr]fb\|Krita\|Kronometer\|Kross\|KRuler\|KRun\|KRunner\|Krusader\|KSame\|KScreen\|KService\|KSeExpr\|KShisen\|KSIRC\|KsirK\|ksld\|KSnakeDuel\|KSokoban\|Sokoban\|KSpaceDuel\|Kspell\|KSpread\|KSquares\|Ksshaskpass\|[Kk]st\|KStars\|KSudoku\|KSyntaxHighlighter\|KSyntaxHighlighting\|KSysGuard\|KSystemLog\|KTeaTime\|KTechlab\|KTelnetService\|KTextEditor\|KTimer\|KTimeTracker\|KTorrent\|KTouch\|KTP\|KTrip\|KTuberling\|KTurtle\|Kube\|Kubric\|Kubrick\|Kuickshow\|KuickShow\|Kup\|KUserFeedback\|KWallet\|kwallet-query\|kwalletd\|KWalletManager\|KWatchGnuPG\|Kwave\|KWeather\|KWidgetsAddons\|KwikDisk\|KWin\|KWordQuiz\|KWrite\|KXStitch\|Netscreen\|LabPlot\|LanguageTool\|lasso\|Last.fm\|latex\|LaTeX\|Latte\|lattice\|LDAP\|LDAPS\|Ledger\|Libarchive\|LibreOffice\|Licentia\|LDAP\|Lightroom\|LIGO\|Lilo\|lin_guider\|Lin-Guider\|Linux\|Little\|Livechat\|LLDB\|lldb-mi\|loca[lt]e\|lock\|lockd\|logcat\|logger\|Logo\|LoginD\|Lokalize\|Lottie\|Lotus\|LSkat\|Lua\|Lutris\|LyteBox\|LyX\|LZMA\|Mac\|Magic\|Magnatune\|Mail\|mailfilteragent\|Mahjongg\|[Mm]ake\|man\|Mangonel\|Maniphest\|Marble\|Markdown\|MarkNote\|[Mm]arlin\|Massif\|Mastodon\|Material\|MathJax\|Matlab\|Matrix\|MauiKit\|MauiManServer\|Maxima\|MBox\|MBoxImporter\|MediaWiki\|meinproc[56]\|[Mm]elt\|memcpy\|Memcheck\|mencoder\|Mercurial\|Merkuro\|merge\|Meson\|MesonManager\|Messenger\|Metalink\|[M̀m]icrobe\|Microsoft\|MiddleClickLoader\|Milou\|MinGW\|Minetest\|MINIX\|Minuet\|mkdir\|mkinitcpio\|mkisofs\|MLT\|mmap\|Mobipocket\|ModemManager\|Money\|monopd\|[Mm]orse\|move\|Moving\|Mozilla\|mplayer\|MPlayer\|MPRIS2\|mpv\|msgfmt\|msgmerge\|ms_print\|MUD\|MultiMarkdown\|Muon\|MuseScore\|MusicBrainz\|mutex\|muxer\|Mycroft\|MyPaint\|mysql\|MySQL\|ncdump\|NeoChat\|Nepomuk\|Netscape\|NetworkManager\|Next[Cc]loud\|nginx\|Ninja\|NKS\|noatun\|normalize\|Nota\|OCR\|OCRAD\|Office\|Okteta\|Okular\|[OK]RA\|OpenCL\|output\|outputVectorPeriodogram\|p7zip\|Pac-Man\|PackageKit\|Palapeli\|[Pp]andoc\|Panorama\|PaperKey\|par2\|Pareto\|Parley\|parsha\|Partitioner\|Pascale\|Patreon\|P[BGP]M\|pdf\|PDF\|pdflatex\|pdfpages\|pdftk\|Peek\|PeerTube\|[Pp]erforce\|Peruse\|Phabricator\|PHD2\|phd2logview\|Phonon\|Photoshop\|PhotoSwipe\|PHP\|PHPUnit\|Picmi\|Pidgin\|Pikasso\|pimdataexporter\|Pine64\|Pinebook\|Pine[Pp]hone\|PineTab\|ping\|Pinterest\|pip3\|PipeWire\|Piwigo\|Pix\|Piwik\|Pixelfed\|Plan\|Planck\|PLANCK\|Planner\|Plasma\|plasmapkg2\|plasmashell\|PlasmaTube\|Plastik\|Playdar\|Plymouth\|PNG\|pngquant\|PolicyKit\|Pology\|Pomodoro\|pool\|Poppler\|Portable\|Portfolio\|PostgreSQL\|postmarketOS\|[Pp]ost[Ss]cript\|PowerDevil\|PowerTop\|preparetips[56]\|Progressive\|ProPhotoRGB\|Proton\|ProtonDB\|PSD\|psselect\|pstops\|PTY\|PulseAudio\|Purpose\|pvfViewer\|PyQt\|[Pp]ython\|Python[23]\|pyuic[56]\|Qalculate\|QApplication\|QCA\|QCommandLineParser\|QEMU\|QFileDialog\|QGit\|QGraphicsView\|QGuiApplication\|QImageWriter\|QKeychain\|QMake\|QML\|qmljs\|QObject\|QPGME\|Qrca\|QSaveFile\|Qt\|QtChart\|QtComponents\|QtCurve\|QtQuick\|QtWebEngine\|Quicken\|QuickConnect\|Quickstates\|quota\|Quotient\|R\|Rajce\|Rattlesnake\|RAR\|Raw\|raw\|RawTherapee\|readcd\|Real Media\|Redshift\|Refer\|[Rr]eplicode\|RepRap\|Rest\|ReText\|RetroArch\|REUSE\|reviewboard\|rio\|\.rkward\|RKward\|RKWard\|RMarkdown\|Rocs\|Rocket\|RocketChat\|Roliserver\|Rolisteam\|Roy\|RPG\|RSIBreak\|rsync\|Ruby\|Ruqola\|Runner\|Rust\|Sage\|Samba\|Scilab\|scour\|SDDM\|[Ss]endmail\|sesameResolver\|Sextractor\|shader\|Sheets\|Shelf\|shell\|Showfoto\|Shutter\|[Ss]ieve\|sieveeditor\|SigG\|SimpleScreenRecorder\|Sink\|Sixel\|Skanlite\|Skanpage\|Skrooge\|smb\|Smb4K\|S\/MIME\|SMTP\|SmugMug\|Snore\|SnoreNotify\|Solid\|Sonicwall\|Soundcloud\|Source\|Spacebar\|Spectacle\|Sqlite\|SQLite\|src\|SSH\|ssh-add\|sshfs\|Star\|SteamOS\|Stellarium\|Step\|Stopmotion\|StretchPlayer\|Strike\|subreddit\|Substance\|Subtitle Composer\|[Ss]ubversion\|sudo\|SV[GN]\|SymbolEditor\|Symmy\|Synaptic\|syslog\|syspath\|[Ss]ystemd\|SystemLog\|Sway\|Tagged\|TAlbum\|Tangram\|TaskJuggler\|teamd\|[Tt]elepathy\|Tellico\|Telly\|Template\|Tesseract\|Tetris\|TeX\|The\|Thunderbird\|Thunderbolt\|TIFF\|TLS\|TNamed\|Tok\|Tokodon\|top\|TOTP\|trait\|transcode\|Translate-Toolkit\|trixel\|Trojitá\|Tron\|tun\|TurtleScript\|Tuxpaint\|Twitter\|UberWriter\|UFRaw\|Umbrello\|unarchiver\|UNIX\|unpack\|unpack_thumb\|unrar\|USSD\|Vail\|Vakzination\|Valgrind\|VcdImager\|vcdxrip\|Vegastrike\|[Vv]era++\|[Vv]i\|[Vv]im\|VirtualBox\|VLC\|VmSize\|VNC\|VokoscreenNG\|Vorbis\|VMap\|VoIP\|VOSK\|vsync\|Vvave\|Wacom\|Wake\|WashiPad\|Watney\|Wayland\|Weather\|WebEngine\|webhook\|WebKit\|weboob\|WEBP\|WebP\|WebRTC\|Weston\|Will\|Windows\|WINE\|Wine\|winid\|WinPT\|WireGuard\|Whisper\|Wolfram\|[Ww]oob\|Word\|WordNet\|WordPerfect\|Words\|x.org\|XDebug\|XFig\|xfreerdp\|Xine\|xjdic\|xmllint\|XML\|XSudoku\|XVideo\|XWayland\|Yahtzee\|Yakuake\|YaST\|You[Tt]ube\|ytmusicapi\|xdotool\|Zanshin\|Zeroconf\|Zotero\|Zstd\)\([^[:alnum:]]\)/\1er \2\3\4/g
#
s/\b\([Ll]\)a \(|\|\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(Bigscreen\|Debian\|Kadmos\|KPart\|KPluginFactory\|Kubuntu\|QApplication\|Ubuntu\|VoIP\|WebEnginePart\)\([^[:alnum:]]\)/\2\3\4/g
s/\b\([Ll]\)es \(|\|\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(KPart\|KParts\)\([^[:alnum:]]\)/\2\3\4/g
s/\bels \(|\|\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)XSudoku\([^[:alnum:]]\)/\1XSudoku\2/g
#
s/\b\([Dd]\)e l'\(|\|\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(mplayer\|Scilab\|Scratchpad\|SDDM\|sflphone-client-kde\|Skype\|SMART\|Smoothie\|Spacebar\|sqcipher\|SQLite\|Stage\|Stellarium\|Step\|Stockfish\|Stopmotion\|SVN\)\([^[:alnum:]]\)/\1e \2\3\4/g
s/\b\([Dd]\)e l'\(|\|\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(Ad[Bb]lock\|Academy\|AccountWizard\|ACDSee\|Acrobat\|Actiona\|Active\|Adium\|Agrovoc\|Akkoma\|Akonadi\|akonadictl\|Akregator\|Alligator\|Almanac\|alphagrad\|Amarok\|amarokcollectionscanner\|Amazon\|Amor\|Ampache\|Analitza\|Analyze\|Anbox\|Android\|Angelfish\|ANSVR\|Apache\|AppData\|Apper\|AppImage\|Apple\|Apport\|[Aa]ppstream\|AqBanking\|Arch\|Ard&uino\|Arduino\|Arianna\|ARJ\|Ark\|Arkade\|ART\|Associated\|ASTAP\|Audioscrobbler\|Configuració del sistema\|Artikulate\|ask\|Astra\|[Aa]strometry.net\|AtCore\|Atelier\|Atlantik\|Audex\|AUR\|Aura\|AV1\|AVPlayer\|AWS\|EEPROM\|EFFECT\|Ekiga\|Ekos\|EkosLive\|ELF\|Elisa\|Eloquens\|Emacs\|eMovix\|Enfuse\|EnigMail\|ESLint\|etesyncItem\|Evolution\|Evolution[123]\|EWS\|Excel\|Exchange\|[Ee]xif[Tt]ool\|extragear\|GPG\|Haruna\|Heroic\|Hessiana\|High\|HOTP\|ICC\|Icedove\|ICQ\|IFrame\|Ikona\|ImageMagick\|Image\|Image[Ss]hack\|Imgur\|ImportWizard\|INDI\|INDIHub\|Info-zip\|initramfs\|Inkscape\|inotify\|InputMethod\|inputVectorData\|inputVectorTime\|InSight\|Internet\|Invidious\|iPad\|iPod\|iPhone\|iptables\|IRIDIUM\|Itinerary\|iTip\|iTunes\|OAG\|OAuth2\|OBS\|OCR\|OCRA\|OCRAD\|Octave\|Office\|Ogg\|Okteta\|[Oo]kular\|OMEMO\|Onedrive\|Open\|OpenAstronomyLog\|OpenBabel\|OpenCL\|OpenColorIO\|OpenConnect\|OpenDivX\|OpenDocument\|OpenGL\|OpenGLES\|OpenOffice\|OpenPGP\|Opensearch\|OpenStreetMap\|OpenTimelineIO\|OpenVPN\|Opera\|Operational\|OProfile\|Opus\|Orca\|Origin\|OriginLab\|OSCAR\|OscarSocket\|OSD\|OSX\|OTR\|Outlook\|outputVectorPeriodogram\|ownCloud\|oxdvi\|Oxygen\|R\|r2\|SDDM\|Skanlite\|SkySafari\|Scilab\|Scratchpad\|Scribus\|ScriptEngine\|SDDM\|Skanpage\|sketchbook\|[Ss]krooge\|Skype\|Slack\|SlackBridge\|Slimbook\|Smoothie\|Snap\|Spacebar\|Spectacle\|Spectral\|SPHINX\|Sphinx\|Spirit\|SQL\|Stargate\|Station\|Steam\|StellarMate\|StellarSolver\|Step\|StepCore\|U-Boot\|UberWriter\|Ubuntu\|UFRaw\|Unarchiver\|Unicode\|UnifiedPush\|UNIX\|Unrar\|updatedb\|UserFeedback\|xBase\|XDebug\|XFig\|Xming\|XMMS\|XMPP\|Xplanet\|XPlanet\|XWayland\)\([^[:alnum:]]\)/\1'\2\3\4/g
s/\b\([Dd]\)el \(|\|\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(SQL\|Steam\)\([^[:alnum:]]\)/\1'\2\3\4/g
s/\b\([Dd]\)el \(|\|\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(Final Fantasy\)\([^[:alnum:]]\)/\1e \2\3\4/g
#
s/\b\([Ll]\)'\(|\|\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(%1\|%2\|Ad[Bb]lock\|Academy\|AccountWizard\|ACDSee\|Acrobat\|Actiona\|Active\|Adium\|Agrovoc\|Akkoma\|Akonadi\|akonadictl\|Akregator\|Alligator\|Almanac\|alphagrad\|Amarok\|amarokcollectionscanner\|Amazon\|Amor\|Ampache\|Analitza\|Analyze\|Anbox\|Android\|Angelfish\|ANSVR\|Apache\|AppData\|Apper\|AppImage\|Apple\|Apport\|[Aa]ppstream\|AqBanking\|Arch\|Ard&uino\|Arduino\|Arianna\|ARJ\|Ark\|Arkade\|ART\|Associated\|ASTAP\|Audioscrobbler\|Configuració del sistema\|Artikulate\|ask\|Astra\|[Aa]strometry.net\|AtCore\|Atelier\|Atlantik\|Audex\|AUR\|Aura\|AV1\|AVPlayer\|AWS\|EEPROM\|EFFECT\|Ekiga\|Ekos\|EkosLive\|ELF\|Elisa\|Eloquens\|Emacs\|eMovix\|Enfuse\|EnigMail\|ESLint\|etesyncItem\|Evolution\|Evolution[123]\|EWS\|Excel\|Exchange\|[Ee]xif[Tt]ool\|extragear\|GPG\|Haruna\|Heroic\|Hessiana\|High\|HOTP\|ICC\|Icedove\|ICQ\|IFrame\|Ikona\|ImageMagick\|Image\|Image[Ss]hack\|Imgur\|ImportWizard\|INDI\|INDIHub\|Info-zip\|initramfs\|Inkscape\|inotify\|InputMethod\|inputVectorData\|inputVectorTime\|InSight\|Internet\|Invidious\|iPad\|iPod\|iPhone\|iptables\|IRIDIUM\|Itinerary\|iTip\|iTunes\|OAG\|OAuth2\|OBS\|OCR\|OCRA\|OCRAD\|Octave\|Office\|Ogg\|Okteta\|[Oo]kular\|OMEMO\|Onedrive\|Open\|OpenAstronomyLog\|OpenBabel\|OpenCL\|OpenColorIO\|OpenConnect\|OpenDivX\|OpenDocument\|OpenGL\|OpenGLES\|OpenOffice\|OpenPGP\|Opensearch\|OpenStreetMap\|OpenTimelineIO\|OpenVPN\|Opera\|Operational\|OProfile\|Opus\|Orca\|Origin\|OriginLab\|OSCAR\|OscarSocket\|OSD\|OSX\|OTR\|Outlook\|outputVectorPeriodogram\|ownCloud\|oxdvi\|Oxygen\|R\|r2\|SDDM\|Skanlite\|SkySafari\|Scilab\|Scratchpad\|Scribus\|ScriptEngine\|SDDM\|Skanpage\|sketchbook\|[Ss]krooge\|Skype\|Slack\|SlackBridge\|Slimbook\|Smoothie\|Snap\|Spacebar\|Spectacle\|Spectral\|SPHINX\|Sphinx\|Spirit\|SQL\|SQLite\|Stage\|Stargate\|Station\|Steam\|Stellarium\|StellarMate\|StellarSolver\|Step\|StepCore\|Stockfish\|Stopmotion\|U-Boot\|UberWriter\|Ubuntu\|UFRaw\|ufw\|Umbrello\|Unarchiver\|Unicode\|UnifiedPush\|Unrar\|update-alternatives\|UserFeedback\|xBase\|XDebug\|XFig\|Xming\|XMMS\|XMPP\|xplanet\|Xplanet\|XPlanet\|XWayland\)\([^[:alnum:]]\)/\2\3\4/g

# entitats
s/\b\([Ee]\)l \(<[^<]\{1,\}>\|\)&\(blinken\|blogilo\|bomber\|bovo\|brahms\|BSD\|calligra\|calligraflow\|calligraplan\|calligrasheets\|calligrastage\|calligrawords\|cantor\|catalogmanager\|CD\|CDE\|CD-ROM\|cervisia\|choqok\|CIFS\|cmake\|CMake\|CSS\|CUPS\|DBus\|DCOP\|Debian\|digikam\|documentation.index\|dolphin\|DOT\|dragon\|drkonqi\|DVD\|DVI\|ELF\|elisa\|Emacs\|falkon\|FDL\|filelight\|firefox\|Flash\|flashkard\|folder-cache-location\|folder-config-location\|folder-data-location\|FTP\|gcc\|gcompris\|GIF\|git\|GMT\|GNU\|gpg\|gpgsm\|GPL\|GPLNotice\|granatier\|GUI\|gwenview\|Handspring\|Hewlett-Packard\|HotSync\|HP\|HP-UX\|HTML\|HTTP\|ical\|IMAP\|infocenter\|irc\|IRIX\|Java\|javascript\|Jini\|jovie\|JSON\|juk\|kab2\|kaboodle\|kaddressbook\|kaffeine\|kajongg\|kalarm\|kalarmd\|kalgebra\|kalzium\|kamera\|kamoso\|kanagram\|kandy\|kaphorism\|kapman\|kapp\|kappfinder\|kapptemplate\|karbon\|karbon14\|kasteroids\|kate\|katepart\|katomic\|kaudiocreator\|kbabel\|kbabeldict\|kbackgammon\|kbackup\|kbattleship\|kbibtex\|kbiff\|kblackbox\|kblocks\|kbounce\|kbreakout\|kbruch\|kbugbuster\|kcachegrind\|kcalc\|kcharselect\|kchart\|kchat\|kcontrol\|kcron\|kdat\|kdcop\|kde\|kdebugdialog\|kdebugdialog[56]?\|kde-ftp\|kde-http\|kde-frameworks\|kdenlive\|kdepasswd\|kdeprint\|kdesktop\|kdessh\|kdesu\|kdesvn\|kdevelop\|kdiamond\|kdict\|kdiff3\|kdiskfree\|kdm\|kdmrc\|kdvi\|kedit\|keditbookmarks\|keduca\|kenolaba\|kexi\|keystone\|kfax\|kfaxview\|kfeeder\|kfind\|kfloppy\|kfontview\|kformula\|kfouleggs\|kfourinline\|kfract\|kgeo\|kgeography\|kget\|kghostview\|kgoldrunner\|kgpg\|kgpgcertmanager\|kgraphviewer\|khangman\|khelpcenter\|khexedit\|kicker\|kickoff\|kiconedit\|kig\|kigo\|kikbd\|kile\|killbots\|kinfocenter\|Kirigami\|kiriki\|kit\|kitchensync\|kiten\|kivio\|kjots\|kjumpingcube\|klaptop\|klatin\|kleopatra\|klettres\|klickety\|klipper\|kljettool\|klpq\|klprfax\|kmagnifier\|kmahjongg\|kmail\|kmathtool\|kmenuedit\|kmessedwords\|kmid\|kmidi\|kmines\|kmix\|kmoon\|kmousetool\|kmouth\|kmplayer\|kmplot\|kmymoney\|knavalbattle\|knetattach\|knetwalk\|knewsticker\|knewstuff\|knights\|knode\|knorskverbs\|knotes\|kodometer\|koffice\|kolab\|kolf\|kollision\|kolorlines\|kolourpaint\|kompare\|koncd\|konqueror\|konquest\|konsole\|konsolekalendar\|kontact\|kontour\|konversation\|kooka\|kopete\|korganizer\|korn\|koshell\|kotalkd\|kpackage\|kpager\|kpaint\|kpanel\|kparts\|kpatience\|kpercentage\|kpf\|kpilot\|kpm\|kpoker\|kpovmodeler\|kppp\|kpresenter\|kprinter\|krdc\|kreatecd\|krec\|krecipes\|kregexpeditor\|krename\|kreversi\|krfb\|krita\|kronometer\|kruler\|[Kk][Rr]unner\|krusader\|ksame\|kscd\|kscore\|kscreensaver\|ksgmltools\|kshisen\|ksim\|ksirc\|ksirk\|ksirtet\|ksmiletris\|ksmserver\|ksnake\|ksnakeduel\|ksnapshot\|ksokoban\|kspaceduel\|ksplash\|kspread\|ksquares\|kst\|kstars\|kstart\|ksysctrl\|ksysguard\|ksystemlog\|ksysv\|ktalk\|ktalkd\|kteatime\|kthesaurus\|ktimemon\|ktimer\|ktimetracker\|ktip\|ktorrent\|ktouch\|ktron\|ktuberling\|kturtle\|kubrick\|kubuntu\|kugar\|kuickshow\|kuser\|kverbos\|kview\|kviewshell\|kvoctrain\|kwallet[56]?\|kwalletmanager[56]?\|kwatchgnupg\|kwave\|kwin\|kword\|kwordquiz\|kworldclock\|kwrite\|kwuftpd\|kxkb\|kxstitch\|LaserJet\|latex\|LGPL\|LGPLNotice\|Linux\|Linux-Mandrake\|LinuxPPC\|lisa\|lokalize\|lskat\|LZW\|Mac\|macOS\|MacOS\|Mandrake\|marble\|Markdown\|MathML\|mdn\|megami\|Microsoft\|MIDI\|MIME\|minuet\|moonphase\|Motif\|MRU\|MTU\|multisynk\|MusiXTeX\|Netscape\|NeXTSTEP\|NFS\|nntp\|noatun\|okteta\|okular\|openpgp\|OSD\|package\|palapeli\|PalmOS\|PalmPilot\|parley\|PDF\|phonon\|picmi\|PIM\|plasma\|plasmagik\|plasmoid\|plasmoids\|PMX\|POP3\|PostScript\|PPP\|Qt\|quanta\|quantaplus\|RealAudio\|RealVideo\|RedHat\|reslisa\|rocs\|rsibreak\|Samba\|SDDM\|Sendmail\|SGI\|skanlite\|skrooge\|SMB\|smb4k\|smime\|SMTP\|snake\|Solaris\|solid\|sonnet\|spectacle\|step\|superkaramba\|SuSE\|SVG\|sweeper\|symboleditor\|tellico\|ThreeCom\|tkmidi\|trojita\|TrueType\|ubuntu\|umbrello\|UNIX\|URI\|URL\|USB\|Visor\|Wayland\|windowmaker\|Windows\|WordNet\|Wordperfect\|X11\|XEmacs\|XHTML\|XML\|X-Server\|XSL\|X-Window\|zui\);\([^[:alnum:]]\)/\2\&\3;\4/g
s/\b\([Dd]\)el\(s\|\) \(<[^<]\{1,\}>\|\)&\(blinken\|blogilo\|bomber\|bovo\|brahms\|BSD\|calligra\|calligraflow\|calligraplan\|calligrasheets\|calligrastage\|calligrawords\|cantor\|catalogmanager\|CD\|CDE\|CD-ROM\|cervisia\|choqok\|CIFS\|cmake\|CMake\|CSS\|CUPS\|DBus\|DCOP\|Debian\|digikam\|documentation.index\|dolphin\|DOT\|dragon\|drkonqi\|DVD\|DVI\|ELF\|elisa\|Emacs\|falkon\|FDL\|filelight\|firefox\|Flash\|flashkard\|folder-cache-location\|folder-config-location\|folder-data-location\|FTP\|gcc\|gcompris\|GIF\|git\|GMT\|GNU\|gpg\|gpgsm\|GPL\|GPLNotice\|granatier\|GUI\|gwenview\|Handspring\|Hewlett-Packard\|HotSync\|HP\|HP-UX\|HTML\|HTTP\|ical\|IMAP\|infocenter\|irc\|IRIX\|Java\|javascript\|Jini\|jovie\|JSON\|juk\|kab2\|kaboodle\|kaddressbook\|kaffeine\|kajongg\|kalarm\|kalarmd\|kalgebra\|kalzium\|kamera\|kamoso\|kanagram\|kandy\|kaphorism\|kapman\|kapp\|kappfinder\|kapptemplate\|karbon\|karbon14\|kasteroids\|kate\|katepart\|katomic\|kaudiocreator\|kbabel\|kbabeldict\|kbackgammon\|kbackup\|kbattleship\|kbibtex\|kbiff\|kblackbox\|kblocks\|kbounce\|kbreakout\|kbruch\|kbugbuster\|kcachegrind\|kcalc\|kcharselect\|kchart\|kchat\|kcontrol\|kcron\|kdat\|kdcop\|kde\|kdebugdialog\|kdebugdialog[56]?\|kde-ftp\|kde-http\|kde-frameworks\|kdenlive\|kdepasswd\|kdeprint\|kdesktop\|kdessh\|kdesu\|kdesvn\|kdevelop\|kdiamond\|kdict\|kdiff3\|kdiskfree\|kdm\|kdmrc\|kdvi\|kedit\|keditbookmarks\|keduca\|kenolaba\|kexi\|keystone\|kfax\|kfaxview\|kfeeder\|kfind\|kfloppy\|kfontview\|kformula\|kfouleggs\|kfourinline\|kfract\|kgeo\|kgeography\|kget\|kghostview\|kgoldrunner\|kgpg\|kgpgcertmanager\|kgraphviewer\|khangman\|khelpcenter\|khexedit\|kicker\|kickoff\|kiconedit\|kig\|kigo\|kikbd\|kile\|killbots\|kinfocenter\|Kirigami\|kiriki\|kit\|kitchensync\|kiten\|kivio\|kjots\|kjumpingcube\|klaptop\|klatin\|kleopatra\|klettres\|klickety\|klipper\|kljettool\|klpq\|klprfax\|kmagnifier\|kmahjongg\|kmail\|kmathtool\|kmenuedit\|kmessedwords\|kmid\|kmidi\|kmines\|kmix\|kmoon\|kmousetool\|kmouth\|kmplayer\|kmplot\|kmymoney\|knavalbattle\|knetattach\|knetwalk\|knewsticker\|knewstuff\|knights\|knode\|knorskverbs\|knotes\|kodometer\|koffice\|kolab\|kolf\|kollision\|kolorlines\|kolourpaint\|kompare\|koncd\|konqueror\|konquest\|konsole\|konsolekalendar\|kontact\|kontour\|konversation\|kooka\|kopete\|korganizer\|korn\|koshell\|kotalkd\|kpackage\|kpager\|kpaint\|kpanel\|kparts\|kpatience\|kpercentage\|kpf\|kpilot\|kpm\|kpoker\|kpovmodeler\|kppp\|kpresenter\|kprinter\|krdc\|kreatecd\|krec\|krecipes\|kregexpeditor\|krename\|kreversi\|krfb\|krita\|kronometer\|kruler\|[Kk][Rr]unner\|krusader\|ksame\|kscd\|kscore\|kscreensaver\|ksgmltools\|kshisen\|ksim\|ksirc\|ksirk\|ksirtet\|ksmiletris\|ksmserver\|ksnake\|ksnakeduel\|ksnapshot\|ksokoban\|kspaceduel\|ksplash\|kspread\|ksquares\|kst\|kstars\|kstart\|ksysctrl\|ksysguard\|ksystemlog\|ksysv\|ktalk\|ktalkd\|kteatime\|kthesaurus\|ktimemon\|ktimer\|ktimetracker\|ktip\|ktorrent\|ktouch\|ktron\|ktuberling\|kturtle\|kubrick\|kubuntu\|kugar\|kuickshow\|kuser\|kverbos\|kview\|kviewshell\|kvoctrain\|kwallet[56]?\|kwalletmanager[56]?\|kwatchgnupg\|kwave\|kwin\|kword\|kwordquiz\|kworldclock\|kwrite\|kwuftpd\|kxkb\|kxstitch\|LaserJet\|latex\|LGPL\|LGPLNotice\|Linux\|Linux-Mandrake\|LinuxPPC\|lisa\|lokalize\|lskat\|LZW\|Mac\|macOS\|MacOS\|Mandrake\|marble\|Markdown\|MathML\|mdn\|megami\|Microsoft\|MIDI\|MIME\|minuet\|moonphase\|Motif\|MRU\|MTU\|multisynk\|MusiXTeX\|Netscape\|NeXTSTEP\|NFS\|nntp\|noatun\|okteta\|okular\|openpgp\|OSD\|package\|palapeli\|PalmOS\|PalmPilot\|parley\|PDF\|phonon\|picmi\|PIM\|plasma\|plasmagik\|plasmoid\|plasmoids\|PMX\|POP3\|PostScript\|PPP\|Qt\|quanta\|quantaplus\|RealAudio\|RealVideo\|RedHat\|reslisa\|rocs\|rsibreak\|Samba\|SDDM\|Sendmail\|SGI\|skanlite\|skrooge\|SMB\|smb4k\|smime\|SMTP\|snake\|Solaris\|solid\|sonnet\|spectacle\|step\|superkaramba\|SuSE\|SVG\|sweeper\|symboleditor\|tellico\|ThreeCom\|tkmidi\|trojita\|TrueType\|ubuntu\|umbrello\|UNIX\|URI\|URL\|USB\|Visor\|Wayland\|windowmaker\|Windows\|WordNet\|Wordperfect\|X11\|XEmacs\|XHTML\|XML\|X-Server\|XSL\|X-Window\|zui\);\([^[:alnum:]]\)/\1e \3\&\4;\5/g
s/\b\([Pp]\)el \(<[^<]\{1,\}>\|\)&\(blinken\|blogilo\|bomber\|bovo\|brahms\|BSD\|calligra\|calligraflow\|calligraplan\|calligrasheets\|calligrastage\|calligrawords\|cantor\|catalogmanager\|CD\|CDE\|CD-ROM\|cervisia\|choqok\|CIFS\|cmake\|CMake\|CSS\|CUPS\|DBus\|DCOP\|Debian\|digikam\|\|documentation.index\|dolphin\|DOT\|dragon\|drkonqi\|DVD\|DVI\|ELF\|elisa\|Emacs\|falkon\|FDL\|filelight\|firefox\|Flash\|flashkard\|folder-cache-location\|folder-config-location\|folder-data-location\|frameworks\|FTP\|gcc\|gcompris\|GIF\|git\|GMT\|GNU\|gpg\|gpgsm\|GPL\|GPLNotice\|granatier\|GUI\|gwenview\|Handspring\|Hewlett-Packard\|HotSync\|HP\|HP-UX\|HTML\|HTTP\|ical\|IMAP\|infocenter\|irc\|IRIX\|Java\|javascript\|Jini\|jovie\|JSON\|juk\|kab2\|kaboodle\|kaddressbook\|kaffeine\|kajongg\|kalarm\|kalarmd\|kalgebra\|kalzium\|kamera\|kamoso\|kanagram\|kandy\|kaphorism\|kapman\|kapp\|kappfinder\|kapptemplate\|karbon\|karbon14\|kasteroids\|kate\|katepart\|katomic\|kaudiocreator\|kbabel\|kbabeldict\|kbackgammon\|kbackup\|kbattleship\|kbibtex\|kbiff\|kblackbox\|kblocks\|kbounce\|kbreakout\|kbruch\|kbugbuster\|kcachegrind\|kcalc\|kcharselect\|kchart\|kchat\|kcontrol\|kcron\|kdat\|kdcop\|kde\|kdebugdialog\|kdebugdialog[56]?\|kde-ftp\|kde-http\|kde-frameworks\|kdenlive\|kdepasswd\|kdeprint\|kdesktop\|kdessh\|kdesu\|kdesvn\|kdevelop\|kdiamond\|kdict\|kdiff3\|kdiskfree\|kdm\|kdmrc\|kdvi\|kedit\|keditbookmarks\|keduca\|kenolaba\|kexi\|keystone\|kfax\|kfaxview\|kfeeder\|kfind\|kfloppy\|kfontview\|kformula\|kfouleggs\|kfourinline\|kfract\|kgeo\|kgeography\|kget\|kghostview\|kgoldrunner\|kgpg\|kgpgcertmanager\|kgraphviewer\|khangman\|khelpcenter\|khexedit\|kicker\|kickoff\|kiconedit\|kig\|kigo\|kikbd\|kile\|killbots\|kinfocenter\|Kirigami\|kiriki\|kit\|kitchensync\|kiten\|kivio\|kjots\|kjumpingcube\|klaptop\|klatin\|kleopatra\|klettres\|klickety\|klipper\|kljettool\|klpq\|klprfax\|kmagnifier\|kmahjongg\|kmail\|kmathtool\|kmenuedit\|kmessedwords\|kmid\|kmidi\|kmines\|kmix\|kmoon\|kmousetool\|kmouth\|kmplayer\|kmplot\|kmymoney\|knavalbattle\|knetattach\|knetwalk\|knewsticker\|knewstuff\|knights\|knode\|knorskverbs\|knotes\|kodometer\|koffice\|kolab\|kolf\|kollision\|kolorlines\|kolourpaint\|kompare\|koncd\|konqueror\|konquest\|konsole\|konsolekalendar\|kontact\|kontour\|konversation\|kooka\|kopete\|korganizer\|korn\|koshell\|kotalkd\|kpackage\|kpager\|kpaint\|kpanel\|kparts\|kpatience\|kpercentage\|kpf\|kpilot\|kpm\|kpoker\|kpovmodeler\|kppp\|kpresenter\|kprinter\|krdc\|kreatecd\|krec\|krecipes\|kregexpeditor\|krename\|kreversi\|krfb\|krita\|kronometer\|kruler\|[Kk][Rr]unner\|krusader\|ksame\|kscd\|kscore\|kscreensaver\|ksgmltools\|kshisen\|ksim\|ksirc\|ksirk\|ksirtet\|ksmiletris\|ksmserver\|ksnake\|ksnakeduel\|ksnapshot\|ksokoban\|kspaceduel\|ksplash\|kspread\|ksquares\|kst\|kstars\|kstart\|ksysctrl\|ksysguard\|ksystemlog\|ksysv\|ktalk\|ktalkd\|kteatime\|kthesaurus\|ktimemon\|ktimer\|ktimetracker\|ktip\|ktorrent\|ktouch\|ktron\|ktuberling\|kturtle\|kubrick\|kubuntu\|kugar\|kuickshow\|kuser\|kverbos\|kview\|kviewshell\|kvoctrain\|kwallet[56]?\|kwalletmanager[56]?\|kwatchgnupg\|kwave\|kwin\|kword\|kwordquiz\|kworldclock\|kwrite\|kwuftpd\|kxkb\|kxstitch\|LaserJet\|latex\|LGPL\|LGPLNotice\|Linux\|Linux-Mandrake\|LinuxPPC\|lisa\|lokalize\|lskat\|LZW\|Mac\|macOS\|MacOS\|Mandrake\|marble\|Markdown\|MathML\|mdn\|megami\|Microsoft\|MIDI\|MIME\|minuet\|moonphase\|Motif\|MRU\|MTU\|multisynk\|MusiXTeX\|Netscape\|NeXTSTEP\|NFS\|nntp\|noatun\|okteta\|okular\|openpgp\|OSD\|package\|palapeli\|PalmOS\|PalmPilot\|parley\|PDF\|phonon\|picmi\|PIM\|plasma\|plasmagik\|plasmoid\|plasmoids\|PMX\|POP3\|PostScript\|PPP\|Qt\|quanta\|quantaplus\|RealAudio\|RealVideo\|RedHat\|reslisa\|rocs\|rsibreak\|Samba\|SDDM\|Sendmail\|SGI\|skanlite\|skrooge\|SMB\|smb4k\|smime\|SMTP\|snake\|Solaris\|solid\|sonnet\|spectacle\|step\|superkaramba\|SuSE\|SVG\|sweeper\|symboleditor\|tellico\|ThreeCom\|tkmidi\|trojita\|TrueType\|ubuntu\|umbrello\|UNIX\|URI\|URL\|USB\|Visor\|Wayland\|windowmaker\|Windows\|WordNet\|Wordperfect\|X11\|XEmacs\|XHTML\|XML\|X-Server\|XSL\|X-Window\|zui\);\([^[:alnum:]]\)/\1er \2\&\3;\4/g
s/\b\([Aa]\)l \(<[^<]\{1,\}>\|\)&\(blinken\|blogilo\|bomber\|bovo\|brahms\|BSD\|calligra\|calligraflow\|calligraplan\|calligrasheets\|calligrastage\|calligrawords\|cantor\|catalogmanager\|CD\|CDE\|CD-ROM\|cervisia\|choqok\|CIFS\|cmake\|CMake\|CSS\|CUPS\|DBus\|DCOP\|Debian\|digikam\|documentation.index\|dolphin\|DOT\|dragon\|drkonqi\|DVD\|DVI\|ELF\|elisa\|Emacs\|falkon\|FDL\|filelight\|firefox\|Flash\|flashkard\|folder-cache-location\|folder-config-location\|folder-data-location\|frameworks\|FTP\|gcc\|gcompris\|GIF\|git\|GMT\|GNU\|gpg\|gpgsm\|GPL\|GPLNotice\|granatier\|GUI\|gwenview\|Handspring\|Hewlett-Packard\|HotSync\|HP\|HP-UX\|HTML\|HTTP\|ical\|IMAP\|infocenter\|irc\|IRIX\|Java\|javascript\|Jini\|jovie\|JSON\|juk\|kab2\|kaboodle\|kaddressbook\|kaffeine\|kajongg\|kalarm\|kalarmd\|kalgebra\|kalzium\|kamera\|kamoso\|kanagram\|kandy\|kaphorism\|kapman\|kapp\|kappfinder\|kapptemplate\|karbon\|karbon14\|kasteroids\|kate\|katepart\|katomic\|kaudiocreator\|kbabel\|kbabeldict\|kbackgammon\|kbackup\|kbattleship\|kbibtex\|kbiff\|kblackbox\|kblocks\|kbounce\|kbreakout\|kbruch\|kbugbuster\|kcachegrind\|kcalc\|kcharselect\|kchart\|kchat\|kcontrol\|kcron\|kdat\|kdcop\|kde\|kdebugdialog\|kdebugdialog[56]?\|kde-ftp\|kde-http\|kde-frameworks\|kdenlive\|kdepasswd\|kdeprint\|kdesktop\|kdessh\|kdesu\|kdesvn\|kdevelop\|kdiamond\|kdict\|kdiff3\|kdiskfree\|kdm\|kdmrc\|kdvi\|kedit\|keditbookmarks\|keduca\|kenolaba\|kexi\|keystone\|kfax\|kfaxview\|kfeeder\|kfind\|kfloppy\|kfontview\|kformula\|kfouleggs\|kfourinline\|kfract\|kgeo\|kgeography\|kget\|kghostview\|kgoldrunner\|kgpg\|kgpgcertmanager\|kgraphviewer\|khangman\|khelpcenter\|khexedit\|kicker\|kickoff\|kiconedit\|kig\|kigo\|kikbd\|kile\|killbots\|kinfocenter\|Kirigami\|kiriki\|kit\|kitchensync\|kiten\|kivio\|kjots\|kjumpingcube\|klaptop\|klatin\|kleopatra\|klettres\|klickety\|klipper\|kljettool\|klpq\|klprfax\|kmagnifier\|kmahjongg\|kmail\|kmathtool\|kmenuedit\|kmessedwords\|kmid\|kmidi\|kmines\|kmix\|kmoon\|kmousetool\|kmouth\|kmplayer\|kmplot\|kmymoney\|knavalbattle\|knetattach\|knetwalk\|knewsticker\|knewstuff\|knights\|knode\|knorskverbs\|knotes\|kodometer\|koffice\|kolab\|kolf\|kollision\|kolorlines\|kolourpaint\|kompare\|koncd\|konqueror\|konquest\|konsole\|konsolekalendar\|kontact\|kontour\|konversation\|kooka\|kopete\|korganizer\|korn\|koshell\|kotalkd\|kpackage\|kpager\|kpaint\|kpanel\|kparts\|kpatience\|kpercentage\|kpf\|kpilot\|kpm\|kpoker\|kpovmodeler\|kppp\|kpresenter\|kprinter\|krdc\|kreatecd\|krec\|krecipes\|kregexpeditor\|krename\|kreversi\|krfb\|krita\|kronometer\|kruler\|[Kk][Rr]unner\|krusader\|ksame\|kscd\|kscore\|kscreensaver\|ksgmltools\|kshisen\|ksim\|ksirc\|ksirk\|ksirtet\|ksmiletris\|ksmserver\|ksnake\|ksnakeduel\|ksnapshot\|ksokoban\|kspaceduel\|ksplash\|kspread\|ksquares\|kst\|kstars\|kstart\|ksysctrl\|ksysguard\|ksystemlog\|ksysv\|ktalk\|ktalkd\|kteatime\|kthesaurus\|ktimemon\|ktimer\|ktimetracker\|ktip\|ktorrent\|ktouch\|ktron\|ktuberling\|kturtle\|kubrick\|kubuntu\|kugar\|kuickshow\|kuser\|kverbos\|kview\|kviewshell\|kvoctrain\|kwallet[56]?\|kwalletmanager[56]?\|kwatchgnupg\|kwave\|kwin\|kword\|kwordquiz\|kworldclock\|kwrite\|kwuftpd\|kxkb\|kxstitch\|LaserJet\|latex\|LGPL\|LGPLNotice\|Linux\|Linux-Mandrake\|LinuxPPC\|lisa\|lokalize\|lskat\|LZW\|Mac\|macOS\|MacOS\|Mandrake\|marble\|Markdown\|MathML\|mdn\|megami\|Microsoft\|MIDI\|MIME\|minuet\|moonphase\|Motif\|MRU\|MTU\|multisynk\|MusiXTeX\|Netscape\|NeXTSTEP\|NFS\|nntp\|noatun\|okteta\|okular\|openpgp\|OSD\|package\|palapeli\|PalmOS\|PalmPilot\|parley\|PDF\|phonon\|picmi\|PIM\|plasma\|plasmagik\|plasmoid\|plasmoids\|PMX\|POP3\|PostScript\|PPP\|Qt\|quanta\|quantaplus\|RealAudio\|RealVideo\|RedHat\|reslisa\|rocs\|rsibreak\|Samba\|SDDM\|Sendmail\|SGI\|skanlite\|skrooge\|SMB\|smb4k\|smime\|SMTP\|snake\|Solaris\|solid\|sonnet\|spectacle\|step\|superkaramba\|SuSE\|SVG\|sweeper\|symboleditor\|tellico\|ThreeCom\|tkmidi\|trojita\|TrueType\|ubuntu\|umbrello\|UNIX\|URI\|URL\|USB\|Visor\|Wayland\|windowmaker\|Windows\|WordNet\|Wordperfect\|X11\|XEmacs\|XHTML\|XML\|X-Server\|XSL\|X-Window\|zui\);\([^[:alnum:]]\)/a \2\&\3;\4/g
s/\b\([Dd]\)e l'\(<[^<]\{1,\}>\|\)&\(acl\|AIX\|akonadi\|akregator\|aktion\|amarok\|amor\|ark\|artikulate\|arts\|arts-builder\|artscontrol\|artsd\|artsdsp\|artsserver\|artsshell\|artswrapper\|ASCII\|ATAPI\|atlantik\)\([^[:alnum:]]\)/\1'\2\&\3\4/g
s/\b\([Ll]\)'\(<[^<]\{1,\}>\|\)&\(acl\|AIX\|akonadi\|akregator\|aktion\|amarok\|amor\|ark\|artikulate\|arts\|arts-builder\|artscontrol\|artsd\|artsdsp\|artsserver\|artsshell\|artswrapper\|ASCII\|ATAPI\|astrometry.net\|atlantik\|FTP\)\([^[:alnum:]]\)/\2\&\3\4/g
s/\b\([Ll]\)'\(<[^<]\{1,\}>\|\)&IGU;\([^[:alnum:]]\)/\1a \2\&IGU;\3/g
# -> ja es poden desprotegir
s/%1, publicat el -%2\([^[:alnum:]]\)/%1, publicat el %2\1/g
s/\"el -%1\"/\"el %1\"/g
s/%1 comença el -%2\([^[:alnum:]]\)/%1 comença el %2\1/g
s/%1 ha començat el -%2\([^[:alnum:]]\)/%1 ha començat el %2\1/g
s/\bAnunci el -%1\([^[:alnum:]]\)/Anunci el %1\1/g
s/\bEl -%1 està \(desconnectat\|en línia\)\([^[:alnum:]]\)/El %1 està \1\2/g
s/\bendarrerida des del -%1\([^[:alnum:]]\)/endarrerida des del %1\1/g
s/\bEnregistrat el -%1\([^[:alnum:]]\)/Enregistrat el %1\1/g
s/\bFita finalitzada el -%1\([^[:alnum:]]\)/Fita finalitzada el %1\1/g
s/\bhora \(diürna\|nocturna\) a les -%1 i està totalment canviada a les -%2\([^[:alnum:]]\)/hora \1 a les %1 i està totalment canviada a les %2\2/g
s/\bpublicada el -%2\([^[:alnum:]]\)/publicada el %2\1/g
s/\bTasca \(finalitzada\|vençuda\) el -%1\([^[:alnum:]]\)/Tasca \1 el %1\2/g
s/\bVàlid fins al -%1\([^[:alnum:]]\)/Vàlid fins al %1\1/g
# #
s/\bamb els -\(%[12]\|Mac\)\([^[:alnum:]]\)/amb els \1\2/g
s/\b\([Ee]\)ls -%\([12]\) \(articles\|comentaris\|contactes\|documents\|bytes\|elements\|fitxers\|fotogrames\|kB\|marcadors\|missatges\|objectes\|processos\|recursos\|temes\|tipus de lletra\|URL\)\([^[:alnum:]]\)/\1ls %\2 \3\4/g
s/\b\([Ee]\)ls -«\(crontab\|ping\)»\([^[:alnum:]]\)/\1ls «\2»\3/g
s/\b\([Ee]\)ls -\(CSV\|Flatpak\|GIF\|Git\|JPEG\|Metalink\|PDF\|SVG\)\([^[:alnum:]]\)/\1ls \2\3/g
#

# Elements de menú/opcions
s/\([^[:alnum:]]\|^\)A~fegeix\([^[:alnum:]]\|$\)/\1A\~fig\2/g
s/\([^_&[:alnum:]]\|^\)_aquest\([^[:alnum:]]\|$\)/\1_este\2/g
s/\([^[:alnum:]]\|^\)de~sa\([^[:alnum:]]\|$\)/\1gua~rda\2/g
s/\([^[:alnum:]]\|^\)De~sa\([^[:alnum:]]\|$\)/\1Gua~rda\2/g
s/\([^[:alnum:]]\|^\)En~darrere\([^[:alnum:]]\|$\)/\1A\~rrere\2/g
s/\([^[:alnum:]]\|^\)e~ndavant\([^[:alnum:]]\|$\)/\1ava\~nt\2/g
s/\([^[:alnum:]]\|^\)En~rere\([^[:alnum:]]\|$\)/\1A\~rrere\2/g
s/\([^[:alnum:]]\|^\)en~rere\([^[:alnum:]]\|$\)/\1a\~rrere\2/g
s/\([^[:alnum:]]\|^\)Verme~ll\([^[:alnum:]]\|$\)/\1~Roig\2/g
#
s/\([^[:alnum:]]\|^\)_Desa\([^[:alnum:]]\|$\)/\1Guar_da\2/g
s/\([^[:alnum:]]\|^\)_desa\([^[:alnum:]]\|$\)/\1guar_da\2/g
s/\([^[:alnum:]]\|^\)De_sa\([^[:alnum:]]\|$\)/\1_Guarda\2/g
s/\([^[:alnum:]]\|^\)de_sa\([^[:alnum:]]\|$\)/\1_guarda\2/g
#
s/&Acoloreix\([^[:alnum:]]\)/A\&colorix\1/g
	s/\bA&coloreix\([^[:alnum:]]\)/A\&colorix\1/g
	s/\bAcolorei&x\([^[:alnum:]]\)/A\&colorix\1/g
s/&Actualitza\([^[:alnum:]]\)/Act\&ualitza\1/g
	s/\bAct&ualitza\([^[:alnum:]]\)/Act\&ualitza\1/g
		# ksystemlog: &Reload -> A&ctualitza
		s/\bA&ctualitza\([^[:alnum:]]\)/Torna a ca\&rregar\1/g
s/&Afegeix\([^[:alnum:]]\)/Afi\&g\1/g
	s/\bA&fegeix\([^[:alnum:]]\)/Afi\&g\1/g
	s/\bAfe&geix\([^[:alnum:]]\)/Afi\&g\1/g
	s/\bAfegei&x\([^[:alnum:]]\)/Afi\&g\1/g
s/&Aguditza\([^[:alnum:]]\)/A\&guditza\1/g
s/&Allibera\([^[:alnum:]]\)/Allibe\&ra\1/g
	s/\bAllibe&ra\([^[:alnum:]]\)/Allibe\&ra\1/g
s/&Altres\([^[:alnum:]]\)/Al\&tres\1/g
	s/\bA&ltres\([^[:alnum:]]\)/Al\&tres\1/g
	s/\ba&ltres\([^[:alnum:]]\)/al\&tres\1/g
s/&\([Aa]\)mplada\([^[:alnum:]]\)/\1\&mplària\2/g
	s/\b\([Aa]\)&mplada\([^[:alnum:]]\)/\1\&mplària\2/g
	s/\bAmpla&da\([^[:alnum:]]\)/A\&mplària\1/g
s/&\([Aa]\)lçada\([^[:alnum:]]\)/\1\&lçària\2/g
	s/\b\([Aa]\)&lçada\([^[:alnum:]]\)/\1\&lçària\2/g
	s/\bAl&çada\([^[:alnum:]]\)/A\&lçària\1/g
s/&Configuració\([^[:alnum:]]\)/Con\&figuració\1/g
	s/\bA&rranjament\([^[:alnum:]]\)/Con\&figuració\1/g
	s/\bArra&njament\([^[:alnum:]]\)/Con\&figuració\1/g
	s/\bArran&jament\([^[:alnum:]]\)/Con\&figuració\1/g
s/&Configuracions\([^[:alnum:]]\)/Con\&figuracions\1/g
	s/\bA&rranjaments\([^[:alnum:]]\)/Con\&figuracions\1/g
s/\barri&bin\([^[:alnum:]]\)/arri\&ben\1/g
s/\ba&rrodonides\([^[:alnum:]]\)/a\&rredonides\1/g
s/\bar&xiu\([^[:alnum:]]\)/a\&rxiu\1/g
s/\barxi&u\([^[:alnum:]]\)/a\&rxiu\1/g
s/&Avui\([^[:alnum:]]\)/H\&ui\1/g
	s/\bA&vui\([^[:alnum:]]\)/H\&ui\1/g
s/&Cancel·la\([^[:alnum:]]\)/C\&ancel·la\1/g
	s/\bC&ancel·la\([^[:alnum:]]\)/C\&ancel·la\1/g
	s/\bCa&ncel·la\([^[:alnum:]]\)/C\&ancel·la\1/g
s/&Cerca\([^[:alnum:]]\)/Bu\&sca\1/g
	s/\bC&erca\([^[:alnum:]]\)/Bu\&sca\1/g
	s/\bCe&rca\([^[:alnum:]]\)/Bu\&sca\1/g
	s/\bCer&ca\([^[:alnum:]]\)/Bu\&sca\1/g
	s/\bBu&sca al missatge...\([^[:alnum:]]\)/Bu\&sca en el missatge...\1/g
s/\bCodi&ficació de reserva\([^[:alnum:]]\)/Codi\&ficació alternativa\1/g
s/&Commuta\([^[:alnum:]]\)/Can\&via\1/g
	s/\bCo&mmuta\([^[:alnum:]]\)/Can\&via\1/g
	s/\bCommu&ta\([^[:alnum:]]\)/Can\&via\1/g
s/&Comparteix\([^[:alnum:]]\)/Com\&partix\1/g
	s/\bCom&parteix\([^[:alnum:]]\)/Com\&partix\1/g
	s/\bCompartei&x\([^[:alnum:]]\)/Com\&partix\1/g
s/&Construeix\([^[:alnum:]]\)/Cons\&truix\1/g
	s/\bCons&trueix\([^[:alnum:]]\)/Cons\&truix\1/g
	s/\bConstr&ueix\([^[:alnum:]]\)/Constr\&uix\1/g
s/\bc&ontinguin\([^[:alnum:]]\)/c\&ontinguen\1/g
s/&Converteix\([^[:alnum:]]\)/Con\&vertix\1/g
	s/\bC&onverteix\([^[:alnum:]]\)/Con\&vertix\1/g
	s/\bCon&verteix\([^[:alnum:]]\)/Con\&vertix\1/g
	s/\bConver&teix\([^[:alnum:]]\)/Con\&vertix\1/g
	s/\bConvertei&x\([^[:alnum:]]\)/Con\&vertix\1/g
s/\bC&otitzacions\([^[:alnum:]]\)/Co\&titzacions\1/g
s/&Deseu\([^[:alnum:]]\)/Guar\&deu\1/g
	s/\bDese&u\([^[:alnum:]]\)/Guar\&deu\1/g
s/&Desament\([^[:alnum:]]\)/Guar\&dada\1/g
	s/\bDe&sament\([^[:alnum:]]\)/Guar\&dada\1/g
	s/\bde&sament\([^[:alnum:]]\)/guar\&dada\1/g
s/&Desa com a\([^[:alnum:]]\)/Anomena i gu\&arda\1/g
	s/\bDesa com a\([^[:alnum:]]\)/Anomena i guarda\1/g
	s/\bD&esa com a\([^[:alnum:]]\)/Anomena i gu\&arda\1/g
	s/\bDes&a com a\([^[:alnum:]]\)/Anomena i gu\&arda\1/g
	s/\bDesa &com a\([^[:alnum:]]\)/Anomena i gu\&arda\1/g
	s/\bDesa com &a\([^[:alnum:]]\)/Anomena i gu\&arda\1/g
		s/\bAnomena i gu&arda \(esborrany\|imatge\|predeterminat\)\([^[:alnum:]]\)/Anomena i gu\&arda com a \1\2/g
		s/\bDesa el perfil com a\([^[:alnum:]]\)/Anomena i guarda el perfil\1/g
		s/\bAnomena i guarda &fitxer\([^[:alnum:]]\)/Anomena i guarda com a fi\&txer\1/g
s/\bDesa amb\([^[:alnum:]]\)/Anomena i guarda amb\1/g
s/\bDesa diff com a\([^[:alnum:]]\)/Anomena i guarda el diff\1/g
s/&Desa l'enllaç com a\([^[:alnum:]]\)/Anomena i gu\&arda l'enllaç\1/g
s/\bDesa la \(sessió\|sortida\) com &a\([^[:alnum:]]\)/Anomena i gu\&arda la \1\2/g
s/\bDesa una &còpia com a\([^[:alnum:]]\)/Anomena i guarda la \&còpia\1/g
s/&Desa\([^[:alnum:]]\)/Guar\&da\1/g
s/&desa\([^[:alnum:]]\)/guar\&da\1/g
	s/\bDe&sa\([^[:alnum:]]\)/Guar\&da\1/g
	s/\bde&sa\([^[:alnum:]]\)/guar\&da\1/g
	s/\bDes&a\([^[:alnum:]]\)/Guar\&da\1/g
	s/\bdes&a\([^[:alnum:]]\)/guar\&da\1/g
s/&Distingeix\([^[:alnum:]]\)/Distin\&gix\1/g
	s/\bDisting&eix\([^[:alnum:]]\)/Distin\&gix\1/g
s/&Distribueix\([^[:alnum:]]\)/Distrib\&uïx\1/g
	s/\bDistrib&ueix\([^[:alnum:]]\)/Distrib\&uïx\1/g
s/&Divideix\([^[:alnum:]]\)/\&Dividix\1/g
	s/\bDi&videix\([^[:alnum:]]\)/\&Dividix\1/g
s/\bla sorti&da\([^[:alnum:]]\)/l'eixi\&da\1/g
s/&Encès\([^[:alnum:]]\)/E\&ncés\1/g
	s/\bE&ncès\([^[:alnum:]]\)/E\&ncés\1/g
s/&Endavant\([^[:alnum:]]\)/A\&vant\1/g
	s/\bEn&davant\([^[:alnum:]]\)/A\&vant\1/g
	s/\bEnda&vant\([^[:alnum:]]\)/A\&vant\1/g
	s/\bEndavan&t\([^[:alnum:]]\)/A\&vant\1/g
s/&Enganxa\([^[:alnum:]]\)/A\&pega\1/g
	s/\bE&nganxa\(r\|t\|\)\([^[:alnum:]]\)/A\&pega\1\2/g
	s/\bEn&ganxa\(r\|t\|\)\([^[:alnum:]]\)/A\&pega\1\2/g
	s/\bEngan&xa\(r\|t\|\)\([^[:alnum:]]\)/A\&pega\1\2/g
	s/\bengan&xat\([^[:alnum:]]\)/a\&pegat\1/g
s/&Engega\([^[:alnum:]]\)/I\&nicia\1/g
	s/\bE&ngega\([^[:alnum:]]\)/I\&nicia\1/g
	s/\bEn&gega\([^[:alnum:]]\)/I\&nicia\1/g
s/&Enrere\([^[:alnum:]]\)/A\&rrere\1/g
	s/\bE&nrere\([^[:alnum:]]\)/A\&rrere\1/g
	s/\ben&rere\([^[:alnum:]]\)/a\&rrere\1/g
s/&Escull\([^[:alnum:]]\)/\&Trieu\1/g
	s/\bEs&cull\([^[:alnum:]]\)/\&Trieu\1/g
s/&Espaiat\([^[:alnum:]]\)/Es\&paiat\1/g
	s/\bE&spaiat\([^[:alnum:]]\)/Es\&paiat\1/g
	s/\bEspa&iat\([^[:alnum:]]\)/Es\&paiat\1/g
s/&Estableix\([^[:alnum:]]\)/E\&stablix\1/g
	s/\bE&stableix\([^[:alnum:]]\)/E\&stablix\1/g
	s/\bEs&tableix\([^[:alnum:]]\)/Es\&tablix\1/g
	s/\bEsta&bleix\([^[:alnum:]]\)/Es\&tablix\1/g
	s/\bEstab&leix\([^[:alnum:]]\)/Es\&tablix\1/g
	s/\bEstable&ix\([^[:alnum:]]\)/Es\&tablix\1/g
	s/\bEstablei&x\([^[:alnum:]]\)/Es\&tablix\1/g
s/&Esvaeix\([^[:alnum:]]\)/Es\&vaïx\1/g
	s/\bEs&vaeix\([^[:alnum:]]\)/Es\&vaïx\1/g
s/&Expandeix\([^[:alnum:]]\)/Ex\&pandix\1/g
	s/\bEx&pandeix\([^[:alnum:]]\)/Ex\&pandix\1/g
s/&Extreu\([^[:alnum:]]\)/E\&xtrau\1/g
	s/\bE&xtreu\([^[:alnum:]]\)/E\&xtrau\1/g
s/&\([Ff]\)itxer\([^[:alnum:]]\)/\1i\&txer\2/g
	s/\bf&itxer\([^[:alnum:]]\)/fi\&txer\1/g
	s/\bfit&xer\([^[:alnum:]]\)/fi\&txer\1/g
s/&\([Ff]\)itxers\([^[:alnum:]]\)/\1i\&txers\2/g
	s/\bf&itxers\([^[:alnum:]]\)/fi\&txers\1/g
	s/\bfit&xers\([^[:alnum:]]\)/fi\&txers\1/g
	s/\bfitxe&rs\([^[:alnum:]]\)/fi\&txers\1/g
s/\bgra&us\([^[:alnum:]]\)/\&graus\1/g
s/&Impedeix\([^[:alnum:]]\)/Impedi\&x\1/g
	s/\bImpedei&x\([^[:alnum:]]\)/Impedi\&x\1/g
s/&Imprimeix\([^[:alnum:]]\)/Im\&primix\1/g
	s/\bIm&primeix\([^[:alnum:]]\)/Im\&primix\1/g
	s/\bImp&rimeix\([^[:alnum:]]\)/Imp\&rimix\1/g
	s/\bImpr&imeix\([^[:alnum:]]\)/Impr\&imix\1/g
s/&Iniciat\([^[:alnum:]]\)/\&Activa\1/g
s/&Instal·la\([^[:alnum:]]\)/I\&nstal·la\1/g
	s/\bI&nstal·la\([^[:alnum:]]\)/I\&nstal·la\1/g
	s/\bInsta&l·la\([^[:alnum:]]\)/I\&nstal·la\1/g
	s/\bprei&nstal·lat\([^[:alnum:]]\)/prei\&nstal·lat\1/g
s/\bin&stal·lació\([^[:alnum:]]\)/in\&stal·lació\1/g
s/\bin&tentin\([^[:alnum:]]\)/in\&tenten\1/g
s/\bIntèr&pret\([^[:alnum:]]\)/Intér\&pret\1/g
s/&Introdueix\([^[:alnum:]]\)/Intro\&duïx\1/g
	s/\bIntrodu&eix\([^[:alnum:]]\)/Intro\&duïx\1/g
s/&Inverteix\([^[:alnum:]]\)/I\&nvertix\1/g
	s/\bI&nverteix\([^[:alnum:]]\)/I\&nvertix\1/g
	s/\bIn&verteix\([^[:alnum:]]\)/I\&nvertix\1/g
	s/\bInve&rteix\([^[:alnum:]]\)/I\&nvertix\1/g
	s/\bInver&teix\([^[:alnum:]]\)/I\&nvertix\1/g
s/\bel JavaScri&pt\([^[:alnum:]]\)/JavaScri\&pt\1/g
s/&Llegeix\([^[:alnum:]]\)/Lli\&g\1/g
	s/\bLl&egeix\([^[:alnum:]]\)/Lli\&g\1/g
	s/\bLle&geix\([^[:alnum:]]\)/Lli\&g\1/g
s/&Rellegeix\([^[:alnum:]]\)/\&Rellig\1/g
s/\bL&ocalització\([^[:alnum:]]\)/L\&ocalització\1/g
s/\blocalit&zat\([^[:alnum:]]\)/l\&ocalitzat\1/g
s/&Mantén\([^[:alnum:]]\)/Man\&tín\1/g
	s/\bMa&ntén\([^[:alnum:]]\)/Man\&tín\1/g
	s/\bMan&tén\([^[:alnum:]]\)/Man\&tín\1/g
s/&marquis\([^[:alnum:]]\)/\&marques\1/g
s/&Maximitza\([^[:alnum:]]\)/Ma\&ximitza\1/g
	s/\bM&aximitza\([^[:alnum:]]\)/Ma\&ximitza\1/g
	s/\bMa&ximitza\([^[:alnum:]]\)/Ma\&ximitza\1/g
#s/\bMi&da\([^[:alnum:]]\)/Gran\&dària\1/g
#s/\bmi&da\([^[:alnum:]]\)/gran\&dària\1/g
s/&Minimitza\([^[:alnum:]]\)/Mi\&nimitza\1/g
	s/\bM&inimitza\([^[:alnum:]]\)/Mi\&nimitza\1/g
	s/\bMi&nimitza\([^[:alnum:]]\)/Mi\&nimitza\1/g
s/&Obre\([^[:alnum:]]\)/O\&bri\1/g
	s/\bO&bre\([^[:alnum:]]\)/O\&bri\1/g
	s/\bObr&e\([^[:alnum:]]\)/O\&bri\1/g
s/&Obtén\([^[:alnum:]]\)/O\&btín\1/g
	s/\bO&btén\([^[:alnum:]]\)/O\&btín\1/g
s/&Optimitza\([^[:alnum:]]\)/Opti\&mitza\1/g
	s/\bO&ptimitza\([^[:alnum:]]\)/Opti\&mitza\1/g
	s/\bOpti&mitza\([^[:alnum:]]\)/Opti\&mitza\1/g
s/\boptimit&zació\([^[:alnum:]]\)/Or\&ganització\1/g
s/\bOrganit&zació\([^[:alnum:]]\)/Or\&ganització\1/g
s/&Pausa\([^[:alnum:]]\)/Fes una \&pausa\1/g
s/\bPercen&tatge\([^[:alnum:]]\)/Percen\&tage\1/g
s/\bPermet un c&op\([^[:alnum:]]\)/Permet una v\&egada\1/g
s/\bP&ersonalitza\([^[:alnum:]]\)/Personal\&itza\1/g
s/\bpersonalit&zada\([^[:alnum:]]\)/personal\&isada\1/g
s/\bPe&rsonalitzat\([^[:alnum:]]\)/Personal\&itzat\1/g
s/\bPer&sonalitzat\([^[:alnum:]]\)/Personal\&itzat\1/g
s/\bP&rotegeix\([^[:alnum:]]\)/P\&rotegix\1/g
s/\bQ&uadre\([^[:alnum:]]\)/Q\&uadro\1/g
s/&Reanomena\([^[:alnum:]]\)/Ca\&nvia el nom\1/g
		s/\bCa&nvia el nom els fitxers d'entrada\([^[:alnum:]]\)/Ca\&nvia el nom dels fitxers d'entrada\1/g
		s/\bCa&nvia el nom la \(carpeta\|col·lecció\|llista de reproducció\|pestanya\)\([^[:alnum:]]\)/Ca\&nvia el nom de la \1\2/g
		s/\bCa&nvia el nom tots els fitxers una altra vegada\([^[:alnum:]]\)/Ca\&nvia el nom de tots els fitxers una altra vegada\1/g
	s/\bR&eanomena\([^[:alnum:]]\)/Ca\&nvia el nom\1/g
	s/\bRea&nomena\([^[:alnum:]]\)/Ca\&nvia el nom\1/g
s/&Recarrega\([^[:alnum:]]\)/Torna a ca\&rregar\1/g
	s/\bRe&carrega\([^[:alnum:]]\)/Torna a ca\&rregar\1/g
	s/\bReca&rrega\([^[:alnum:]]\)/Torna a ca\&rregar\1/g
	s/\bRecarre&ga\([^[:alnum:]]\)/Torna a ca\&rregar\1/g
s/&Redueix\([^[:alnum:]]\)/Red\&uix\1/g
	s/\bRed&ueix\([^[:alnum:]]\)/Red\&uix\1/g
s/&Repeteix\([^[:alnum:]]\)/Repeti\&x\1/g
	s/\bRepetei&x\([^[:alnum:]]\)/Repeti\&x\1/g
s/&Reprèn\([^[:alnum:]]\)/\&Reprén\1/g
s/&Reprodueix\([^[:alnum:]]\)/Re\&produïx\1/g
	s/\bRe&produeix\([^[:alnum:]]\)/Re\&produïx\1/g
	s/\bReproduei&x\([^[:alnum:]]\)/Re\&produïx\1/g
s/&Reverteix\([^[:alnum:]]\)/Re\&vertix\1/g
	s/\bRe&verteix\([^[:alnum:]]\)/Re\&vertix\1/g
	s/\bRever&teix\([^[:alnum:]]\)/Re\&vertix\1/g
s/\bSe&veritat\([^[:alnum:]]\)/Grav\&etat\1/g
s/\bSímbols del &CDV\([^[:alnum:]]\)/Símbols de \&CDV\1/g
s/&Sortida\([^[:alnum:]]\)/Ei\&xida\1/g
	s/\bS&ortida\([^[:alnum:]]\)/Ei\&xida\1/g
	s/\bSor&tida\([^[:alnum:]]\)/Ei\&xida\1/g
	s/\bde s&ortida\([^[:alnum:]]\)/d'ei\&xida\1/g
	s/\bla s&ortida\([^[:alnum:]]\)/l'ei\&xida\1/g
s/&Sortides\([^[:alnum:]]\)/Ei\&xides\1/g
	s/\bSortid&es\([^[:alnum:]]\)/Ei\&xides\1/g
s/\bsor&tint\([^[:alnum:]]\)/ei\&xint\1/g
s/&Subdivideix\([^[:alnum:]]\)/Subdi\&vidix\1/g
	s/\bSubdi&videix\([^[:alnum:]]\)/Subdi\&vidix\1/g
s/&Substitueix\([^[:alnum:]]\)/Su\&bstituïx\1/g
	s/\bS&ubstitueix\([^[:alnum:]]\)/Su\&bstituïx\1/g
	s/\bSu&bstitueix\([^[:alnum:]]\)/Su\&bstituïx\1/g
	s/\bSubstituei&x\([^[:alnum:]]\)/Su\&bstituïx\1/g
s/&Suggereix\([^[:alnum:]]\)/S\&uggerix\1/g
	s/\bS&uggereix\([^[:alnum:]]\)/S\&uggerix\1/g
s/&Suprimeix\([^[:alnum:]]\)/Sup\&rimix\1/g
	s/\bS&uprimeix\([^[:alnum:]]\)/Sup\&rimix\1/g
	s/\bSu&primeix\([^[:alnum:]]\)/Sup\&rimix\1/g
		s/\bsu&primeix\([^[:alnum:]]\)/sup\&rimix\1/g
	s/\bSup&rimeix\([^[:alnum:]]\)/Sup\&rimix\1/g
	s/\bSupr&imeix\([^[:alnum:]]\)/Sup\&rimix\1/g
	s/\bSupri&meix\([^[:alnum:]]\)/Sup\&rimix\1/g
s/&Surt\([^[:alnum:]]\)/I\&x\1/g
	s/\bS&urt\([^[:alnum:]]\)/I\&x\1/g
	s/\bs&urt\([^[:alnum:]]\)/i\&x\1/g
	s/\bSur&t\([^[:alnum:]]\)/I\&x\1/g
s/&Usa\([^[:alnum:]]\)/Utilit\&za\1/g
	s/\bU&sa\([^[:alnum:]]\)/Utilit\&za\1/g
s/&Visualitza\([^[:alnum:]]\)/Vi\&sualitza\1/g
	s/\bVi&sualitza\([^[:alnum:]]\)/Vi\&sualitza\1/g
		s/\bVi&sualitza el fitxer de l'esquerra\([^[:alnum:]]\)/Visualitza el fitxer de l'\&esquerra\1/g
		s/\bVi&sualitza el fitxer de la dreta\([^[:alnum:]]\)/Visualitza el fitxer de la \&dreta\1/g
s/\bvisualit&zació\([^[:alnum:]]\)/vi\&sualització\1/g
# #
s/\bNo hi ha el fitxer\([^[:alnum:]]\)/No existeix el fitxer\1/g
s/\bNo hi ha fitxer de metadades\([^[:alnum:]]\)/No existeix el fitxer de metadades\1/g
# #
# #

# #
# #
s/\"Arrossega'm\"/\"Arrossegueu-me\"/g
s/\"Defereix\b/\"Ajorna/g
s/\"\([Ee]\)n passar\"/\"\1n passar per damunt\"/g
s/\"Impressió\"/\"Imprimix\"/g
s/\"Romà\"/\"Redona\"/g
s/\"Torneu-ho a intentar\"/\"Torna-ho a intentar\"/g
s/\"Traductors\"/\"Equip de traducció\"/g
# #
# # # # # # # # # # # # # #
#
# continuació
s/\b\(a\|de\) la llista de sota\([^[:alnum:]]\)/en la llista a continuació\2/g
s/\bA sota, introduïu la contrasenya\([^[:alnum:]]\)/Introduïu la contrasenya a continuació\1/g
s/\bA sota, introduïu un nom d'usuari i una contrasenya\([^[:alnum:]]\)/Introduïu un nom d'usuari i una contrasenya a continuació\1/g
s/\bdes de la llista de sota\([^[:alnum:]]\)/des de la llista a continuació\1/g
s/\bper a la cartera de sota\([^[:alnum:]]\)/per a la cartera a continuació\1/g
s/\bpropietats de sota\([^[:alnum:]]\)/propietats a continuació\1/g
s/\bquadre de text de sota\([^[:alnum:]]\)/quadre de text a continuació\1/g
# #
# # # # # # # # # # # # # #
#
# Usa
s/\b\(artificial\|Nom\|Pantalla\) a usar\([^[:alnum:]]\)/\1 que s'usarà\2/g
s/\b\(Camí\|color\) a usar\([^[:alnum:]]\)/\1 que cal usar\2/g
s/\bEmpr\(a\|eu\)\([^[:alnum:]]\)/Utilitz\1\2/g
s/\bempr\(a\|eu\)\([^[:alnum:]]\)/utilitz\1\2/g
s/\bF\(a\|eu\) servir\([^[:alnum:]]\)/Utilitz\1\2/g
s/\bf\(a\|eu\) servir\([^[:alnum:]]\)/utilitz\1\2/g
s/\bFer servir\([^[:alnum:]]\)/Utilitzar\1/g
s/\bfer servir\([^[:alnum:]]\)/utilitzar\1/g
s/\b\([Uu]\)s\(a\|able\|ada\|ades\|ant\|ar\|arà\|aran\|at\|ats\|em\|en\|es\|eu\|i\|in\|is\|o\)\([^[:alnum:]]\)/\1tilitz\2\3/g
    s/\bPa&utilitza\([^[:alnum:]]\)/Pa\&usa\1/g

# #
# # # # # # # # # # # # # #
#
# a -> en
s/\bSkrooge a KDE Discuss\([^[:alnum:]]\)/Skrooge en KDE Discuss\1/g
s/\ba \(\[\)\(Discuss\|KDE-Apps\)\([^[:alnum:]]\)/en \1\2\3/g
s/\ba «Quant a\(l\|\)»/en «Quant a»/g
s/\bdedicada a \(\[\)aplicacions KDE\([^[:alnum:]]\)/dedicada en \1Aplicacions KDE\2/g
s/\binstal·len a `\/usr\([^[:alnum:]]\)/instal·len en `\/usr\1/g
s/\binterès a provar\([^[:alnum:]]\)/interès en provar\1/g
s/\bla lletra a «Ingressos\([^[:alnum:]]\)/la lletra en «Ingressos\1/g
s/\bObre l'URL a:/Obre l'URL en\:/g
s/\bpersones a rkward-devel@kde\.org\([^[:alnum:]]\)/persones en rkward-devel@kde\.org\1/g
# a aquest(a)
s/\btrob\(a\|eu\) a aquesta\([^[:alnum:]]\)/trob\1 en aquesta\2/g
# a baixar
s/\b\(interessat\) a baixar\([^[:alnum:]]\)/\1 en baixar\2/g
# a cada
s/\b\(buida\) a cada\([^[:alnum:]]\)/\1 en cada\2/g
# a Bugzilla
s/\b\([Ee]l nom del producte\|informeu-ne\|tancats\|vàlids\) a Bugzilla\([^[:alnum:]]\)/\1 en Bugzilla\2/g
# a Dolphin
s/\b\([Dd]emana confirmació\|[Ee]rror\|[Gg]estió de fitxers\|Samba\) a Dolphin\([^[:alnum:]]\)/\1 en Dolphin\2/g
# a KHelpCenter
s/\b\(Kioslaves\) a KHelpCenter\([^[:alnum:]]\)/\1 en KHelpCenter\2/g
# a Konqueror
s/\b\(Enganxa<\/b>\|[Ee]rror\|execució\|incrustar\|Kioslaves\|menús contextuals\|ordre <b>Apega<\/b>\|seleccionat\) a Konqueror\([^[:alnum:]]\)/\1 en Konqueror\2/g
# a KWallet
s/\b\(dades del formulari\|desar-la\|emmagatzemar les contrasenyes\|[Ee]rror\) a KWallet\([^[:alnum:]]\)/\1 en KWallet\2/g
# a Plasma
s/\bElisa a Plasma Mobile\([^[:alnum:]]\)/Elisa en Plasma Mobile\1/g
# a RKWard
s/\b\(opció predeterminada\|s'utilitzaran\) a RKWard\([^[:alnum:]]\)/\1 en RKWard\2/g
# a Skrooge
s/\b\([Aa]ctiveu les icones\) a Skrooge\([^[:alnum:]]\)/\1 en Skrooge\2/g
# a StellarMate
s/\b\([Ee]rror\|dispositiu\|selecció oficial\) a StellarMate\([^[:alnum:]]\)/\1 en StellarMate\2/g

s/\bpodeu emprar aquest &URL; al &konqueror;\([^[:alnum:]]\)/podeu emprar aquest \&URL; a dins del \&konqueror;\1/g
s/\bincrustar al Konqueror\([^[:alnum:]]\)/incrustar a dins del Konqueror\1/g

# #
# # # # # # # # # # # # # #
#
# a l', a la/a les, al, als
# en
#
s/\"%1 %2 a %3\"/\"%1 %2 en %3\"/g
s/\"Pantalla interna a %1\"/\"Pantalla interna en %1\"/g
# a terra
s/\bpeus a terra\([^[:alnum:]]\)/peus en terra\1/g
# a l'acció
s/\bA l'acció\([^[:alnum:]]\)/En l'acció\1/g
	s/\ba l'\(<[^<]\{1,\}>\|«\|\[\|\)Acció\([^[:alnum:]]\)/en l'\1Acció\2/g
	s/\bEn l'acció que heu demanat li calen\([^[:alnum:]]\)/En l'acció que heu demanat calen\1/g
s/\b\([Cc]om\) a l'acció\([^[:alnum:]]\)/\1 en l'acció\2/g
 #
	s/\bel llenç, i a les accions\([^[:alnum:]]\)/el llenç i en les accions\1/g
s/\b\(de prova\) a les accions\([^[:alnum:]]\)/\1 en les accions\2/g
# a l'acoblable
	s/\ba l'acoblable de la dreta\([^[:alnum:]]\)/en l'acoblable de la dreta\1/g
s/\b\(seleccionant aquestes parts\) a l'acoblable\([^[:alnum:]]\)/\1 en l'acoblable\2/g
# a l'acoblador
s/\bA l'aco&blador\([^[:alnum:]]\)/En l'aco\&blador\1/g
s/\b\(a sota i\|Selecciona una màscara\|seleccionats\) a l'acoblador\([^[:alnum:]]\)/\1 en l'acoblador\2/g
 #
s/\b\(barres de títol\) als acobladors\([^[:alnum:]]\)/\1 en els acobladors\2/g
# a l'activitat
s/\bA l'activitat\([^[:alnum:]]\)/En l'activitat\1/g
s/\b\(Corregir un problema\|disponible\) a l'activitat\([^[:alnum:]]\)/\1 en l'activitat\2/g
 #
s/\bA les activitats\([^[:alnum:]]\)/En les activitats\1/g
	s/\bEnllaçat de fitxers a les activitats\([^[:alnum:]]\)/Enllaçat de fitxers amb les activitats\1/g
	s/\b\([Mm]ostra\) a les &activitats\([^[:alnum:]]\)/\1 en les \&activitats\2/g
s/\b\(errors\|senars i els nombres\) a les activitats\([^[:alnum:]]\)/\1 en les activitats\2/g
# a l'adreça
s/\b\(Escolta les connexions de xarxa\|Nota: <\/b>%s\) a l'adreça\([^[:alnum:]]\)/\1 en l'adreça\2/g
 #
s/\b\(que heu indicat\|Sala inclosa\|Sala no inclosa\) a les adreces\([^[:alnum:]]\)/\1 en les adreces\2/g
# a l'agenda
s/\b\(seleccionada\) a l'agenda\([^[:alnum:]]\)/\1 en l'agenda\2/g
# a l'ajuda
s/\b\(Consulteu els detalls\|per a cercar\) a l'ajuda\([^[:alnum:]]\)/\1 en l'ajuda\2/g
# a l'àlbum
	s/\bimportar a l'àlbum\([^[:alnum:]]\)/importar a dins de l'àlbum\1/g
s/\b\(l'anterior\|ordenació\) a l'àlbum\([^[:alnum:]]\)/\1 en l'àlbum\2/g
 #
s/\b\([Cc]erca\|estan\|estan tant\|estaran\|inclosos\|però no\) als àlbums\([^[:alnum:]]\)/\1 en els àlbums\2/g
# a l'alta
s/\b\(Transport públic regional\) a l'alta\([^[:alnum:]]\)/\1 en l'alta\2/g
# a l'altra / a l'altre
s/, a l'altra part\([^[:alnum:]]\)/, en l'altra part\1/g
s/, a l'altre costat\([^[:alnum:]]\)/, en l'altre costat\1/g
s/\bA l'altra banda\([^[:alnum:]]\)/En l'altra banda\1/g
s/\bA l'altre extrem\([^[:alnum:]]\)/En l'altre extrem\1/g
	s/\bflueixi des d'un terminal de la bateria a l'altre\([^[:alnum:]]\)/flueixi des d'un terminal de la bateria fins a l'altre\1/g
	s/\bLlisca la imatge d'una banda a l'altra\([^[:alnum:]]\)/Llisca la imatge d'una banda fins a l'altra\1/g
	s/\bs'ajusten a les altres categories\([^[:alnum:]]\)/s'ajusten a dins de les altres categories\1/g
	s/\bsaltaran de la barra a l'altra meitat\([^[:alnum:]]\)/saltaran des de la barra fins a l'altra meitat\1/g
s/\b\(agrupi\|canviat a «Alguna CoSA»\|correspon a un fitxer amb el mateix nom\|estàs\|expandit per espais\|Fusió a tres bandes amb base»\|i la imatge final\|suprimit\|té una imatge\) a l'altr\([ae]\)\([^[:alnum:]]\)/\1 en l'altr\2\3/g
 #
s/\b\(establirà l'estat d'aquest diagrama\) als altres\([^[:alnum:]]\)/\1 en els altres\2/g
s/\b\(trucada de prova\|xat activa i\) a les altres\([^[:alnum:]]\)/\1 en les altres\2/g
# a l'anàlisi
s/\b\(seleccioneu-la\) a l'anàlisi\([^[:alnum:]]\)/\1 en l'anàlisi\2/g
# a l'anell
s/\b\(disponible\|estan\|gestió dels certificats X.509 i OpenPGP\|present\|trobat\|troben\) a l'anell\([^[:alnum:]]\)/\1 en l'anell\2/g
# a l'animació
s/\b\(canviar les unitats per al pas temporal\|pausa entre fotogrames\|posar-lo\) a l'animació\([^[:alnum:]]\)/\1 en l'animació\2/g
# a l'anterior
s/\b\(Especifica a sota»\) a l'anterior\([^[:alnum:]]\)/\1 en l'anterior\2/g
# a l'antiga
s/\b\(va originar\) a l'antiga\([^[:alnum:]]\)/\1 en l'antiga\2/g
# a l'any
 #
s/\b\(aparegué\|febrer\) als anys\([^[:alnum:]]\)/\1 en els anys\2/g
# a l'aparell
s/\b\(activats\) a l'aparell\([^[:alnum:]]\)/\1 en l'aparell\2/g
# a l'aparença
s/\b\(soldat\|tant\) a l'aparença\([^[:alnum:]]\)/\1 en l'aparença\2/g
# a l'API
s/\b\([Cc]erca\) a l'API\([^[:alnum:]]\)/\1 en l'API\2/g
# a l'aplicació
s/\bA l'aplicació\([^[:alnum:]]\)/En l'aplicació\1/g
	s/\boberts a les següents aplicacions\([^[:alnum:]]\)/oberts en les aplicacions següents\1/g
s/\b\(actualització del microprogramari\|ajuda\|apuntat per l'«url»,\|característica\|configuració no predeterminada\|dibuixaran\|es mostra\|feu servir\|oberts\|[Oo]bre\|obriria el fitxer nou\|integrat\|oberts\|quant als enllaços externs\|char \*__lsan_default_suppressions()»\|tal com els veieu\|trobarà\|trobareu el que calgui\|troben\|trobeu\|trobeu a faltar\|utilitzeu\) a l'aplicació\([^[:alnum:]]\)/\1 en l'aplicació\2/g
 #
s/\bA les aplicacions\([^[:alnum:]]\)/En les aplicacions\1/g
s/\b\(accedir al seu contingut\|aplicació\]»\|comentar els fitxers\|emprar\|errors visuals\|oberts\|permetre carpetes virtuals\|posar les icones KDE\|Protocol -PTP-)\|utilitzar\|veure'ls\) a les aplicacions\([^[:alnum:]]\)/\1 en les aplicacions\2/g
# a l'arbre
s/\bA l'arbre\([^[:alnum:]]\)/En l'arbre\1/g
	s/\ba l'arbre de treball i a l'índex\([^[:alnum:]]\)/en l'arbre de treball i en l'índex\1/g
s/\b\(conflicte\|filtrar\|mostrarà\|optimitzador «peephole»\|seleccioneu de nou Actualitza\|trobat l'element eliminat\|trobat l'element modificat\|trobat la col·lecció eliminada\|trobat la col·lecció modificada\|trobat la col·lecció pare\|trobat la col·lecció pare «%1»\) a l'arbre\([^[:alnum:]]\)/\1 en l'arbre\2/g
# a l'àrea
s/\bA l'àrea\([^[:alnum:]]\)/En l'àrea\1/g
	s/\b\([Aa]\)justa la imatge a l'àrea de visualització\([^[:alnum:]]\)/\1justa la imatge a dins de l'àrea de visualització\2/g
	s/\bintroduir un filtre a mida directament a l'àrea\([^[:alnum:]]\)/introduir un filtre a mida directament a dins de l'àrea\1/g
s/\b\(afegir una instrucció\|cerqueu\|Construeix\|construir\|corresponent\|Deixa una peça d'or\|disponibles\|editeu l'expressió regular\|El color de la quadrícula\|en blau\|escriviu «\/media»\|especifica cap extensió\|especificada\|estendre les partícules\|Fes clic en els punts\|fins al seu nom corresponent\|Imprimeix els missatges de progrés\|inserit el text <b>%1<\/b>\|intercanviar dos elements\|marca les baixades\|modificar una instrucció\|Mostra el &progrés\|Mostra les baixades\|mostra una imatge\|mostrarà el progrés\|mostrarà missatges detallats\|mostren\|No hi ha prou punts\|Només creus menudes\|quedarà més espai disponible\|[Rr]eproduir la torre de la dreta\|romangui viu\|seleccionada\|teclejar\|toqueu sobre seu\|Transport local\|Transport públic\|Transport públic local\|trobis\|un quadrat\|vista amb pestanyes dels diagrames\) a l'àrea\([^[:alnum:]]\)/\1 en l'àrea\2/g
 #
s/\bA les àrees\([^[:alnum:]]\)/En les àrees\1/g
s/\b\(assolir aquesta quantitat\|trobar la subcarpeta de les partides del sistema «\/system\/»\) a les àrees\([^[:alnum:]]\)/\1 en les àrees\2/g
# a l'argument
s/\b\(llistades\) a l'argument\([^[:alnum:]]\)/\1 en l'argument\2/g
 #
s/\b\([Ee]rror de citació\|inclòs un metacaràcter\) als arguments\([^[:alnum:]]\)/\1 en els arguments\2/g
# a l'arrel
	s/\bsituar al directori LICENSES\/ a l'arrel\([^[:alnum:]]\)/situar en el directori LICENSES\/ en l'arrel\1/g
s/\b\(.txt)\|de GNU[,)]\) a l'arrel\([^[:alnum:]]\)/\1 en l'arrel\2/g
# a l'arxiu
	s/\bafegir el fitxer a l'arxiu\([^[:alnum:]]\)/afegir el fitxer a dins de l'arxiu\1/g
s/\b\(accedir directament als fitxers\|localitzar els fitxers requerits\|Obre el missatge\|obrir les entrades\|seran incloses\|trobar el fitxer «filters»\|trobar el fitxer «emailidentities»\|trobar el fitxer «mailtransports»\|trobat cap connector\|trobat cap script\) a l'arxiu\([^[:alnum:]]\)/\1 en l'arxiu\2/g
# a l'assistent
s/\b\(usar\|utilitzar\) a l'assistent\([^[:alnum:]]\)/\1 en l'assistent\2/g
# a l'editor
s/\bA l'\(<[^<]\{1,\}>\|\)editor\([^[:alnum:]]\)/En l'\1editor\2/g
	s/\b\(Arrossegueu una clau pública\|deixant anar una imatge des del sistema de fitxers\) a l'editor\([^[:alnum:]]\)/\1 a dins de l'editor\2/g
	s/\b\(definit\) a l'\(<[^<]\{1,\}>\|\)Editor\([^[:alnum:]]\)/\1 en l'\2Editor\3/g
	s/\bés controlat a l'editor\([^[:alnum:]]\)/és controlat per l'editor\1/g
	s/\bes poden definir a l'editor\([^[:alnum:]]\)/es poden establir en l'editor\1/g
	s/\bPer a sortir, escriviu <command>quit()<\/command> o premeu <command>Ctrl+D<\/command> a l'editor de línies\([^[:alnum:]]\)/Per a sortir de l'editor de línies, escriviu <command>quit()<\/command> o premeu <command>Ctrl+D<\/command>\1/g
	s/\bposant els vostres valors per omissió a l'editor automàticament\([^[:alnum:]]\)/posant automàticament els vostres valors predeterminats en l'editor\1/g
s/\b\(característica «Adjunta el meu certificat»\|característica «Adjunta la meva clau pública»\|carregades\|carregar aquesta imatge\|clicant\|com a separador\|comportar la tecla de retorn\|configuració actual\|configurats\|corregir automàticament tot el text\|De tornada\|desactiva els números de línia\|desar\|desfet\|disposició\|emplaçament\|emprat\|errors\|escrites\|escriviu-lo\|està\|Executa el fitxer obert\|i línies noves\|inserció\|inserir caràcters especials\|inserir-lo\|mostra\|mostrar la línia respectiva\|mostrarà automàticament\|mostrats\|mou\|Obre\|Obre aquesta col·lecció de vocabulari\|Obre el fitxer\|Obre els documents de vocabulari\|Obre els fitxers RAW\|Obre l'object\|Obre la carpeta\|obrir\|obrir les imatges RAW\|obrir un fitxer\|ortogràfica\|renderització d'imatges fosques\|seleccionat\|text de la finestra\|troba\|troba el camp\|ubicació de les tecles addicionals de compleció automàtica\|Utilitza la vista de color gestionat\|utilitzada\|utilitzat\|Veure\|[Zz]oom\) a l'\([Ee]\)ditor\([^[:alnum:]]\)/\1 en l'\2ditor\3/g
 #
s/\b\(mostren\) als editors\([^[:alnum:]]\)/\1 en els editors\2/g
# a l'educació
s/\bdonar suport al programari lliure a l'educació\([^[:alnum:]]\)/donar suport al programari lliure en l'educació\1/g
# a l'eina
s/\bA l'eina\([^[:alnum:]]\)/En l'eina\1/g
	s/\"a l'eina\([^[:alnum:]]\)/\"en l'eina\1/g
s/\b\(apareix en el menú CDV i\|establir la muntura\|estigui\|[Mm]illores\|mostra\|mostraran\|mostren\|Obre una imatge\|Utilitza la vista prèvia de la pila\) a l'eina\([^[:alnum:]]\)/\1 en l'eina\2/g
 #
s/\bA les eines\([^[:alnum:]]\)/En les eines\1/g
# a l'eix
s/\b\(cau\|de l'est\|de l'oest\|del nord\|del sud\|guiatge automàtic\|i l'hora\|moure's\|representació gràfica de l'angle de l'altitud\|Utilitza una escala\|Valor\) a l'eix\([^[:alnum:]]\)/\1 en l'eix\2/g
# a l'element
s/\b\(llistades\|o directament\) a l'element\([^[:alnum:]]\)/\1 en l'element\2/g
 #
	s/\bals elements especials del menú d'adreces\([^[:alnum:]]\)/als elements especials en el menú d'adreces\1/g
	s/\bals elements seleccionats de la barra\([^[:alnum:]]\)/als elements seleccionats en la barra\1/g
# a l'emmagatzematge
s/\b\(desar\|Dimensions\|present\) a l'emmagatzematge\([^[:alnum:]]\)/\1 en l'emmagatzematge\2/g
# a l'emulador
s/\b\(AqBanking\|Executa\) a l'emulador\([^[:alnum:]]\)/\1 en l'emulador\2/g
# a l'enllaç
s/\b\(clic\|llegir la nostra política\) a l'enllaç\([^[:alnum:]]\)/\1 en l'enllaç\2/g
# a l'entorn
s/\bA l'entorn\([^[:alnum:]]\)/En l'entorn\1/g
s/\b\(\\"\|com\|executi\|millores\|partida\|[Pp]artida nova\|útils\) a l'entorn\([^[:alnum:]]\)/\1 en l'entorn\2/g
 #
s/\bAls entorns\([^[:alnum:]]\)/En els entorns\1/g
s/\b\(executar\|Les accions més importants\|[Ss]agnat\) als entorns\([^[:alnum:]]\)/\1 en els entorns\2/g
# a l'entrada
	s/\bCamí com s'ha inserit a l'entrada\([^[:alnum:]]\)/Camí com s'ha inserit a dins de l'entrada\1/g
	s/\bllegirà a l'entrada estàndard\([^[:alnum:]]\)/llegirà des de l'entrada estàndard\1/g
s/\b\(Afegiu aquestes aplicacions a continuació\|apareixerà\|assenyala les línies comentades\|canvis\|cap paraula\|[Ee]rror de citació\|la qual pot ser una imatge\|número d'1\|passat\|prenen\|si el nombre d'1\|Skype\|vistos\) a l'entrada\([^[:alnum:]]\)/\1 en l'entrada\2/g
 #
s/\b\(Mostra el progrés\|Mostra tots els detalls\|per a les expressions matemàtiques\|Utilitza el format de text enriquit\) a les entrades\([^[:alnum:]]\)/\1 en les entrades\2/g
# a l'esborrany
s/\b\(descriu\) a l'esborrany\([^[:alnum:]]\)/\1 en l'esborrany\2/g
# a l'escenari
s/\b\(Alexander\) a l'escenari\([^[:alnum:]]\)/\1 en l'escenari\2/g
# a l'escriptori
s/\bA l'escriptori /En l'escriptori /g
	s/\bquan el giny és a l'escriptori\([^[:alnum:]]\)/quan el giny es troba en l'escriptori\1/g
	s/\"Vista a l'escriptori\"/\"Vista de l'escriptori\"/g
s/\(#   \|Alligator\|apareixerà una finestra nova\|Barra de menús global\|Calindori\|classe de finestres\|col·locarà\|composició 3D\|dibuixar línies\|Fes aparèixer la finestra\|funciona\|funciona bé\|funciona en els mòbils i\|gestionar de forma genèrica tota classe de metadades\|Kasts\|Kongress\|L'Station\|manera\|mostra la posició de les finestres\|prémer qualsevol tecla\|Presenta les finestres\|Station\|tant\|treballa bé\|troba\|utilitzable\|veieu\|visualitzador de plasmoides\|viuen\) a l'escriptori\([^[:alnum:]]\)/\1 en l'escriptori\2/g
 #
s/\bAls escriptoris\([^[:alnum:]]\)/En els escriptoris\1/g
s/\b\(utilitza\) als escriptoris\([^[:alnum:]]\)/\1 en els escriptoris\2/g
# a l'esdeveniment
	s/\bassociada a l'esdeveniment\([^[:alnum:]]\)/associada amb l'esdeveniment\1/g
 #
	s/\bno reaccionen als esdeveniments\([^[:alnum:]]\)/no reaccionaran als esdeveniments\1/g
s/\b\(mostrarà\) als esdeveniments\([^[:alnum:]]\)/\1 en els esdeveniments\2/g
# a l'esglèsia
 #
s/\b\(roques\) a les esglésies\([^[:alnum:]]\)/\1 en les esglésies\2/g
# a l'espai
s/\b\([Cc]om\|Construeix una corba\|crear\|definida\|Deixa la llavor\|Desa els resultats\|emmagatzemar com un objecte nou\|emmagatzemen en una variable diferent\|estalvia uns quants bytes\|Format de fitxer\|instal·lació\|laplacià\|Mantén el resultat\|mostren objectes R\|moviment\|obre a una finestra nova\|posicionat\|presents\) a l'espai\([^[:alnum:]]\)/\1 en l'espai\2/g
 #
    s/\butilitzar als &plasma-workspaces\([^[:alnum:]]\)/utilitzar en els \&plasma-workspaces\1/g
	s/\bi també als espais de nom dels paquets\([^[:alnum:]]\)/així com també en els espais de nom dels paquets\1/g
s/\b\(canvis\) als espais\([^[:alnum:]]\)/\1 en els espais\2/g
# a l'especificació
s/\b\(definit\) a l'especificació\([^[:alnum:]]\)/\1 en l'especificació\2/g
# a l'espectre
s/\b\(dibuixar\) a l'espectre\([^[:alnum:]]\)/\1 en l'espectre\2/g
# a l'esquema
s/\b\(es poden canviar\|incloure\|personalitzar\|s'haurien d'incloure\) a l'\(<[^<]\{1,\}>\|\)esquema\([^[:alnum:]]\)/\1 en l'\2esquema\3/g
# a l'esquerra
# a l'estació
s/\(llavors al núvol,\) a l'estació\([^[:alnum:]]\)/\1 en l'estació\2/g
# a l'estimador
s/\b\(Tolerància\) a l'estimador\([^[:alnum:]]\)/\1 en l'estimador\2/g
# a l'estructura
s/\b\(Bolca els missatges de correu electrònic\|[Ee]rror\) a l'estructura\([^[:alnum:]]\)/\1 en l'estructura\2/g
# a l'estil
	s/\bVisualitza les fotografies a l'estil de Matrix\([^[:alnum:]]\)/Visualitza les fotografies amb l'estil de Matrix\1/g
s/\b\(El fons esdevé opac\|es despatxaran\|es retorna l'adreça\|establiu les opcions adequades\|no es comporten com s'espera quan formen part dels menús de la barra de menús de nivell superior\|utilitza diàlegs\) a l'estil\([^[:alnum:]]\)/\1 en l'estil\2/g
# a l'etiqueta
s/\b\(anterior, a\|i també\|especificar el text\|mostrar el temps restant de la peça\|mostraran\|Valor no vàlid\) a l'etiqueta\([^[:alnum:]]\)/\1 en l'etiqueta\2/g
 #
	s/\bDistància a les etiquetes\([^[:alnum:]]\)/Distància fins a les etiquetes\1/g
s/\b\(com\|desaran\|detecció del joc de caràcters\|Elimina els e&spais finals\|emmagatzemar el rètol de color de l'element\|emmagatzemar el rètol de selecció de l'element\|emmagatzemar la data i hora de l'element\|emmagatzemar la informació de geolocalització\|emmagatzemar la plantilla de les metadades\|emmagatzemar la valoració de l'element\|emmagatzemar les etiquetes de l'element\|estaran\|Mostra el contingut de la barra de títol\|mostrar noms llargs\|mostraran noms llargs (noms comuns)\|seleccionats però no\) a les etiquetes\([^[:alnum:]]\)/\1 en les etiquetes\2/g
# a l'execució
s/\b\(generar múltiples parts\|pausa\) a l'execució\([^[:alnum:]]\)/\1 en l'execució\2/g
# a l'executable
s/\b\([Ee]rror de citació\|inclòs un metacaràcter\) a l'executable\([^[:alnum:]]\)/\1 en l'executable\2/g
# a l'exemple
s/\bA l'exemple\([^[:alnum:]]\)/En l'exemple\1/g
s/\b\(com\) a l'exemple\([^[:alnum:]]\)/\1 en l'exemple\2/g
# a l'exercici
s/\bA l'exercici\([^[:alnum:]]\)/En l'exercici\1/g
s/\b\(inclosa\|inclouran\) a l'exercici\([^[:alnum:]]\)/\1 en l'exercici\2/g
 #
s/\bAls exercicis\([^[:alnum:]]\)/En els exercicis\1/g
# a l'extensió
s/\b\([Ee]rror\) a l'extensió\([^[:alnum:]]\)/\1 en l'extensió\2/g
# a l'extracte
s/\b\(contingut\) a l'extracte\([^[:alnum:]]\)/\1 en l'extracte\2/g
# a l'extrem
s/\b\(Apunta la vista d'ocell\|arribant a terra de nou\|capturats\|utilitzar el terra fals\) a l'extrem\([^[:alnum:]]\)/\1 en l'extrem\2/g
# a l'hiperespai
s/\b\(Una carrera\) a l'hiperespai\([^[:alnum:]]\)/\1 en l'hiperespai\2/g
# a l'historial
s/\b\([Aa]nterior\|cap entrada\|[Cc]erca\|Cerca llocs web visitats\|com a sobrenom\|desats\|emmagatzema automàticament\|emmagatzemar\|emmagatzemarà\|emmagatzemarà automàticament «en el lloc»\|emmagatzemarà cap diagrama més\|emmagatzemat\|emmagatzemats\|endavant\|endavant un pas\|enrere\|mancar\|Manté la notificació\|mantenir\|totes<\/span> les accions\|màxim d'elements\|Mostra\|posició corresponent\|posició del diagrama actual\|retrocedir\|[Ss]egüent\|seleccionades\|tindreu una entrada\|un pas enrere\) a l'historial\([^[:alnum:]]\)/\1 en l'historial\2/g
# a l'ID
	s/\bassociada a l'ID\([^[:alnum:]]\)/associada amb l'ID\1/g
# a l'IGU
	s/\bd'IGU\([^[:alnum:]]\)/de la IGU\1/g
s/\bA l'IGU\([^[:alnum:]]\)/En la IGU\1/g
s/\b\([Mm]illores\|està\|troba\) a l'IGU\([^[:alnum:]]\)/\1 en la IGU\2/g
# a l'índex
s/\b\(llisten\) a l'índex\([^[:alnum:]]\)/\1 en l'índex\2/g
 #
s/\b\([Cc]erca\) als índexs\([^[:alnum:]]\)/\1 en els índexs\2/g
# a l'indicador
s/\b\(permesos els següents contenidors\) a l'indicador\([^[:alnum:]]\)/\1 en l'indicador\2/g
# a l'indicatiu
s/\b\(teclegeu <pre>kgpg -k<\/pre>\) a l'indicatiu\([^[:alnum:]]\)/\1 en l'indicatiu\2/g
# a l'informe
	s/\bEnganxeu la informació següent a l'informe d'error\([^[:alnum:]]\)/Enganxeu la informació següent a dins de l'informe d'error\1/g
s/\b\(cap operació\|disponible\|Inclou o no els ingressos\|Inclou o no les despeses\|Inclou o no les operacions agrupades\|Inclou o no les operacions seguides\|Inclou o no les transferències\|Mostra la versió\|tenen en compte\) a l'informe\([^[:alnum:]]\)/\1 en l'informe\2/g
 #
s/\b\(cap operació\|en un valor\|impacte\|inclòs\|mostrat\) als \(<[^<]\{1,\}>\|\)informes\([^[:alnum:]]\)/\1 en els \2informes\3/g
# a l'insegur
	s/\bcartera; <br \/>voleu\([^[:alnum:]]\)/cartera\. <br \/>Voleu\1/g
s/\b\(desar-la\) a l'\(<[^<]\{1,\}>\|\)insegur\([^[:alnum:]]\)/\1 en l'\2insegur\3/g
# a l'intèrpret
s/\bA l'intèrpret\([^[:alnum:]]\)/En l'intèrpret\1/g
s/\b\([Ee]rror de citació\|Executa la línia actual\|executarà\|inclòs un metacaràcter\) a l'intèrpret\([^[:alnum:]]\)/\1 en l'intèrpret\2/g
 #
s/\bAls intèrprets\([^[:alnum:]]\)/En els intèrprets\1/g
# a l'interval
s/\b\(contingut\|Converteix els bytes\|descarregar\|disponible\|estar\|hi ha\|hi ha plafons\|produir\|suma tots els valors\|tots els bytes\|utilitza\) a l'interval\([^[:alnum:]]\)/\1 en l'interval\2/g
# a l'IU
s/\bA l'IU\([^[:alnum:]]\)/En la IU\1/g
s/\b\([Mm]illores\|visualitza\) a l'IU\([^[:alnum:]]\)/\1 en la IU\2/g
# a l'objecte
s/\b\(fets\|trobat l'atribut «%1»\) a l'objecte\([^[:alnum:]]\)/\1 en l'objecte\2/g
 #
s/\b\(Desa els canvis\) als objectes\([^[:alnum:]]\)/\1 en els objectes\2/g
# a l'objectiu
	s/\bvostre telescopi a l'objectiu\([^[:alnum:]]\)/vostre telescopi amb l'objectiu\1/g
	s/\b\(camí i que\|la temperatura del llit\|Tux\) arribi a l'objectiu\([^[:alnum:]]\)/\1 arribi fins a l'objectiu\2/g
s/\b\(centrat\|instal·lat\) a l'objectiu\([^[:alnum:]]\)/\1 en l'objectiu\2/g
# a l'obra
# s/\b\(\) a l'obra\([^[:alnum:]]\)/\1 en l'obra\2/g
# a l'opció
s/\b\(disponible\|especificar\|especificat\|Seleccioneu «Altres»\) a l'opció\([^[:alnum:]]\)/\1 en l'opció\2/g
 #
	s/\bVerifiqueu a les opcions\([^[:alnum:]]\)/Verifiqueu les opcions\1/g
s/\b\(activació\|activar-ho\|Ajusteu el termini de lliurament\|canviar qualsevol preferència\|desactiveu l'opció del rotor\|es pot ajustar\|especificat\|establert\|habilitada\|HFR<\/guilabel>\|mostrades\|port\|presenten\|rotor»,\|tasca<\/guilabel>\|Utilitza els desplaçaments de l'alba i la posta\) a les \(<[^<]\{1,\}>\|\)\([Oo]\)pcions\([^[:alnum:]]\)/\1 en les \2\3pcions\4/g
# a l'operant
s/\b\(Falta un operador o espai\) a l'operant\([^[:alnum:]]\)/\1 en l'operant\2/g
# a l'ordenació
s/\b\(Pes\) a l'ordenació\([^[:alnum:]]\)/\1 en l'ordenació\2/g
# a l'ordinador
	s/\b\(connectada\|connectat\|connectats\|connecti\|connexió\) a l'ordinador\([^[:alnum:]]\)/\1 amb l'ordinador\2/g
s/\b\(cap a aquests programes\|Compartiu fitxers i URL\|comprimida\|Desa aquest perfil individual a un fitxer separat\|desades\|desar la imatge\|desaran localment\|desen\|detectar aquestes eines\|eliminant\|emmagatzemades\|executant\|executant-se\|executar\|fitxers d'índex de l'astrometria\|gestiona la impressió\|instal·lada\|hi ha\|instal·lades\|instal·lar KDE Connect\|instal·lat\|instal·lat correctament\|instal·lats\|invoca un programa &FTP;\|localitzar el programa <em>dvips<\/em>\|Mostra les notificacions del dispositiu\|obtenir una vista prèvia del flux\|que ho feu\|suprimir totes les contrasenyes\|trobar el programa <em>dvipdfm<\/em>\|visualitzar l'ús del disc\) a l'ordinador\([^[:alnum:]]\)/\1 en l'ordinador\2/g
 #
s/\b\(en l'escriptori Linux i\) als ordinadors\([^[:alnum:]]\)/\1 en els ordinadors\2/g
# a l'ordre
s/\b\(emprat\|error\|errònia\|[Ee]rror de sintaxi\|indicat\|Paràmetre incorrecte\|proporcionada\|subministrat\|Un <placeholder>&#37;s<\/placeholder>\|utilitzar les variables <b>%1, %2\.\.\. %9<\/b>\|utilitza[rt]\) a l'ordre\([^[:alnum:]]\)/\1 en l'ordre\2/g
 #
s/\b\(supressió dels espais\|retard\) a les ordres\([^[:alnum:]]\)/\1 en les ordres\2/g
# a l'origen
s/\b\(afegir el projecte %1\|incloses les traduccions buides\) a l'origen\([^[:alnum:]]\)/\1 en l'origen\2/g
	s/\bdisponible als orígens següents\([^[:alnum:]]\)/disponible per als orígens següents\1/g
# a l'script
	s/\"a l'script\([^[:alnum:]]\)/\"en l'script\1/g
s/\b\([Ee]rror de citació\|errors\|estigui desat\|inclòs un metacaràcter\|pausa\|posició\|presents\|pujarà una posició\) a l'script\([^[:alnum:]]\)/\1 en l'script\2/g
 #
	s/\"als scripts\([^[:alnum:]]\)/\"en els scripts\1/g
s/\b\(cercar en l'ajuda d'R per al símbol sota el cursor\) als scripts\([^[:alnum:]]\)/\1 en els scripts\2/g
# a l'última
s/\bA l'últim\(a\|\)\([^[:alnum:]]\)/En l'últim\1\2/g
	s/\"Apunta a l'última carpeta\"/\"Focus en l'última carpeta\"/g
	s/\bMou el cursor a l'últim\([^[:alnum:]]\)/Mou el cursor fins a l'últim\1/g
s/\b\(ancoratge\) a l'última\([^[:alnum:]]\)/\1 en l'última\2/g
 #
s/\b\(primers períodes que\) als últims\([^[:alnum:]]\)/\1 en els últims\2/g
# a l'URL
s/\b\(les «xxx»\|script d'inici\|script de tancament\|tipografia\) a l'URL\([^[:alnum:]]\)/\1 en l'URL\2/g
# a l'URI
s/\b\(Afegeix el nom del torrent\|com a valor de substitució\) a l'URI\([^[:alnum:]]\)/\1 en l'URI\2/g
 #
s/\b\(indicar <emphasis>paràmetres<\/emphasis>\) als &URI;\([^[:alnum:]]\)/\1 en els \&URI;\2/g
# a l'urna
s/\b\(nombre de boles blanques\|nombre de boles negres\) a l'urna\([^[:alnum:]]\)/\1 en l'urna\2/g
# a l'ús
s/\b\(s'inclou\) a l'ús\([^[:alnum:]]\)/\1 en l'ús\2/g
# a l'X11
s/\b\(Força els ppp de les lletres\) a l'X11\([^[:alnum:]]\)/\1 en l'X11\2/g
# a l'XML
s/\b\(Manca l'element requerit <b>%1<\/b>\) a l'XML\([^[:alnum:]]\)/\1 en l'XML\2/g
# #
# # # # # # # # # # # # # #
#
# a la «biblioteca»
s/\b\(anàlisi\) a la «libical»\([^[:alnum:]]\)/\1 en la «libical»\2/g
# a la %1
s/\b\([Dd]ocumentació\) a la %1\([^[:alnum:]]\)/\1 en la %1\2/g
	s/\banàlisi XML a %1\([^[:alnum:]]\)/anàlisi XML en %1\1/g
# a la Baixa
s/\bpúblic a la Baixa\([^[:alnum:]]\)/públic en la Baixa\1/g
# a la banda
s/\bA la banda\([^[:alnum:]]\)/En la banda\1/g
	s/\bCorre a la banda \(dreta\|esquerra\|més llarga\)\([^[:alnum:]]\)/Corre damunt la banda \1\2/g
	s/\bel nom indicat a la banda esquerra\([^[:alnum:]]\)/el nom establert en la banda esquerra\1/g
s/\b\(addicional\|cap a directoris\|creació de fitxers nous\|desmastegui els enllaços simbòlics\|duplicat correctament\|enroca\|error\|existeixen\|generats automàticament\|Implementa el filtratge Sieve\|invocant\|mesura\|missatges d'avís\|modifiqui tots els enllaços simbòlics\|Mostra els números de les línies\|presents\|seleccioneu valors no-SD\|Suprimeix els fitxers\|suprimeixi qualsevol fitxer\|suprimir els fitxers\|Toc\|treball»\|troben\|utilitza\|utilitzarà\) a la banda\([^[:alnum:]]\)/\1 en la banda\2/g
 #
	s/\bCorre a les bandes \(més amples\)\([^[:alnum:]]\)/Corre damunt les bandes \1\2/g
s/\b\(perforat\) a les bandes\([^[:alnum:]]\)/\1 en les bandes\2/g
# a la bandera
s/\b\(Apareixerà una lletra\|Mostra l'etiqueta\|que hi ha\) a la bandera\([^[:alnum:]]\)/\1 en la bandera\2/g
# a la barra
s/\bA la barra\([^[:alnum:]]\)/En la barra\1/g
	s/\b\(apareixen\|descrita\|o\) a la \(<[^<]\{1,\}>\|«\|\[\|\)Barra\([^[:alnum:]]\)/\1 en la \2Barra\3/g
	s/\barribar a la barra\([^[:alnum:]]\)/arribar fins a la barra\1/g
	s/\barrossegant-la a la barra\([^[:alnum:]]\)/arrossegant-la des de dins de la barra\1/g
	s/\b\(Ekos\|gt;\|kate\|programari\|Redueix\) \(<[^<]\{1,\}>\|«\|\[\|\)a la barra\([^[:alnum:]]\)/\1\2 en la barra\3/g
	s/\bINDI a la &barra\([^[:alnum:]]\)/INDI en la \&barra\1/g
	s/\b\(escriure\|incrustat\|introduït\) a la barra\([^[:alnum:]]\)/\1 a dins de la barra\2/g
	s/\b\(botó d'augment\|botó enrere\|creu blanca\|L'historial\) \(<[^<]\{1,\}>\|«\|\[\|\)\(<[^<]\{1,\}>\|«\|\[\|\) a la barra\([^[:alnum:]]\)/\1 \2\3 en la barra\4/g
	s/\bla seva entrada a la barra de tasques es ressaltarà\([^[:alnum:]]\)/es ressaltarà la seva entrada en la barra de tasques\1/g
	s/\bs'hauria de visualitzar a la barra\([^[:alnum:]]\)/s'hauria de mostrar en la barra\1/g
s/\b\([Aa]maga\|generar les icones dels caràcters\|Adreces d'interès\|alineació del text\|amb l'època actual\|amb l'època estàndard\|ambdós també\|apareixeran\|Botó\|cada element individual\|canviar el text\|Centra les pestanyes\|Color només\|com un cursor ocupat o\|Commuta la visualització dels missatges INDI\|dels elements individuals\|disponible\|disponibles\|donarà color\|editeu-los\|Elements\|en aquesta icona\|Endavant<\/guiicon> (fletxa a la dreta)\|escriviu-la\|Espera\|espera a dalt esquerra (o millor a la dreta)\|Esperat\|Estableix el focus\|Focus\|Funció mos&trada\|hi ha\|icones de precisió d'increment o decrement\|Incrusta una categoria\|La finestra no surt\|llista de la cua per lots i\|Mapa en miniatura\|marcades\|Mida de les columnes de l'histograma\|Missatges INDI\|Modifiqueu el text\|[Mm]ostra\|Mo&stra el camí\|[Mm]ostra el camí sencer\|Mostra el control lliscant del zoom\|Mostra el menú d'&usuari\|Mostra el progrés de càrrega\|Mostra el títol de la finestra\|Mostra els articles sense llegir\|Mostra els consells dels botons\|Mostra els correus sense llegir\|Mostra els missatges d'estat d'INDI\|Mostra els missatges entrants d'estat d'INDI\|Mostra els no llegits\|Mostra icones grans\|Mostra icones normals\|Mostra icones petites\|Mostra l'indicatiu\|Mostra la informació sobre l'espai\|Mostra la nota\|Mostra les identitats\|Mostra només les adreces marcades\|Mostra només les etiquetes de cara per a assignar noms\|mostra sempre el camí sencer\|Mostra un mapa en miniatura\|Mostra una icona\|Mostra una icona addicional\|mostra una imatge, i\|Mostra una vista prèvia\|Mostra vistes prèvies dels entorns\|mostrades\|mostrar\|mostrar els missatges d'INDI\|mostrar les coordenades Alt\/Az\|mostrar les coordenades AR\/Dec\|mostrar les coordenades AR\/Dec del J2000\.0\|mostrar o no els missatges de l'estat INDI\|mostrarà\|mostrarà al costat del botó de recàrrega\|mostrarà el &kstars;\|mostrarà marques\|mostrarà un camí editable\|mostrarà un mapa en miniatura\|mostrarà un mapa en miniatura de tot el document\|mostraran\|mostraran els articles sense llegir\|Nova\*\*\|nova»\|[Oo]culta\|oculta el comptador de línies\|oculta el comptador de paraules\|oculta el mapa en miniatura\|oculta les marques\|ocultar els camps de coordenades tant AR\/Dec com Alt\/Az\|ordenació dels elements\|ocupar espai\|Planificador de l'Ekos o\|representa una unitat i cada quadre\|ressaltar un URL\|s'actualitzen\|s'identificarà\|seguiu les instruccions\|Seleccioneu els botons habilitats\|seleccioni l'element corresponent\|situar\|sobre aquesta ubicació\|teclegeu fonts:\/\|teclejant fonts:\/\|teclejar <i>«audiocd:\/»<\/i>\|tenir un botó <interface>Menú d'hamburguesa<\/interface>\|Trieu els botons habilitats\|utilitzar aquesta ajuda\|utilitzar la icona Moneda\|utilitzar la icona de tant per cent\|veure el full de trucs\|veure el progrés\|visitar\|vista en arbre\) a la \([Bb]\)arra\([^[:alnum:]]\)/\1 en la \2arra\3/g
 #
s/\bA les barres\([^[:alnum:]]\)/En les barres\1/g
s/\b\(amb el text\|aparèixer\|aplicar als botons\|dibuixa una vora\|ombra clara de les ratlles\|vista en arbre\) a les barres\([^[:alnum:]]\)/\1 en les barres\2/g
# a la base
	s/\bAquest fitxer se sol trobar a\"/Aquest fitxer se sol trobar en\"/g
	s/\bError a la base de dades\([^[:alnum:]]\)/S'ha produït un error en la base de dades\1/g
	s/\b\(s'inclouran\|l'insereix\) \(a\|en\) la base de dades\([^[:alnum:]]\)/\1 a dins de la base de dades\3/g
s/\b\(actualitzant l'orientació\|aplicada a l'URL dels elements\|[Cc]erca\|Cerca marques de llocs\|cercant els duplicats\|Clau\|corrupció\|crear la taula\|desades\|desar\|desar-les\|desat\|Emmagatzema el missatge\|[Ee]mmagatzema el missatge\|[Ee]mmagatzema els missatges\|emmagatzema les seves adreces d'interès\|emmagatzemada\|emmagatzemar\|emmagatzemarà\|emmagatzemarà més dades\|emmagatzemen\|escriptura\|existeix\|existia\|existís anteriorment\|exploració d'elements nous\|inserir\|Llegeix les metadades des del fitxer\|Manca la taula de ciutats\|ocupa espai\|ordenar-les\|registrar els elements nous\|registrar tots els elements\|reparat incoherències\|totes les imatges\|tots<\/em> els fitxers\|troba\|trobar %1 objecte\|trobar %1 objectes\|trobar elements nous\|trobar la informació del dispositiu de la càmera pertinent\|trobar la informació pertinent a la lent\|trobat\|trobat cap actualització\|trobat dades\|trobat la càmera\|trobat la informació de la pista\|trobat lents\|trobat taules\) a la base\([^[:alnum:]]\)/\1 en la base\2/g
	s/\baccés d'escriptura en la base\([^[:alnum:]]\)/accés d'escriptura a la base\1/g
 #
s/\b\(Cerca dades d'entrades bibliogràfiques\|trobat l'objecte\) a les bases\([^[:alnum:]]\)/\1 en les bases\2/g
# a la bibliografia
s/\b\(duplicades\|Vista prèvia de les entrades\) a la bibliografia\([^[:alnum:]]\)/\1 en la bibliografia\2/g
# a la biblioteca
s/\b\(anàlisi\|desar crearà símbols addicionals\|desar-lo actualitzarà aquest símbol\|desaran automàticament\|Deseu el símbol actual com a nou\|disponibles\|existeix\|existeixen\|Introduïu un nom per al clip\) a la biblioteca\([^[:alnum:]]\)/\1 en la biblioteca\2/g
 #
s/\b\(disponible\|explorar amb facilitat les dades i funcions\) a les biblioteques\([^[:alnum:]]\)/\1 en les biblioteques\2/g
# a la bombolla
s/\b\(botó «Veure»\|visualitzada\) a la bombolla\([^[:alnum:]]\)/\1 en la bombolla\2/g
 #
s/\b\(botó «I&gnora»\) a les bombolles\([^[:alnum:]]\)/\1 en les bombolles\2/g
# a la botiga
s/\b\(comprar alguns articles\|disponible aviat\|repositori de F-Droid i\) a la botiga\([^[:alnum:]]\)/\1 en la botiga\2/g
# a la branca
s/\b\(al cau com\|Comet els canvis a <b>%1<\/b>\|comissió\|[Ee]steu\|trobeu\) a la branca\([^[:alnum:]]\)/\1 en la branca\2/g
# a la cadena
s/\b\(Caràcter no vàlid\|Comproveu la línia %1 columna %2\|eliminat\|és l'únic certificat\|Inclou enllaços\|Pols\|Retorna el nombre d'àrees\|Testimonis del &procés\|troba un element amb el títol igual (sense distingir entre minúscules i majúscules)\) a la cadena\([^[:alnum:]]\)/\1 en la cadena\2/g
 #
s/\b\(Cometes\) a les cadenes\([^[:alnum:]]\)/\1 en les cadenes\2/g
# a la caixa
s/\b\(seleccionada\) a la caixa\([^[:alnum:]]\)/\1 en la caixa\2/g
# a la càmera
s/\b\(disponibles\) a la càmera\([^[:alnum:]]\)/\1 en la càmera\2/g
# a la cantonada
s/\bA la cantonada\([^[:alnum:]]\)/En la cantonada\1/g
	s/, que està a la cantonada\([^[:alnum:]]\)/, el qual es troba en la cantonada\1/g
	s/\bSi vas a la cantonada inferior dreta\([^[:alnum:]]\)/Si vas fins a la cantonada inferior dreta\1/g
s/\b\(Amb els botons\|botó «Focus»\|botó «Hemingway»\|botons de configuració\|col·locarà la finestra\|dibuixat\|en el quadre verd\|giny d'informació\|hi ha\|icona d'ajuda principal\|icona «descalç \/ sabata esportiva»\|marcaran amb un petit triangle vermell\|Mostra el rendiment de KWin\|mostra una etiqueta\|mostrarà un petit triangle blau\|posa el ratolí\|Punt\|quart botó\|situa\|situat\|troba\|trobar un camí\|trobareu un resum del tauler de joc\) a la cantonada\([^[:alnum:]]\)/\1 en la cantonada\2/g
 #
s/\bA les cantonades\([^[:alnum:]]\)/En les cantonades\1/g
s/\b\(ajusta la brillantor\|amb un camp no pla\|especialment\) a les cantonades\([^[:alnum:]]\)/\1 en les cantonades\2/g
# a la capa
s/\b\(exploració en blocs de dades d'usuari\) a la capa\([^[:alnum:]]\)/\1 en la capa\2/g
# a la capçalera
s/\b\(aparegui\|clic\|desada\|[Dd]ocumenta la icona de configuració\|emmagatzemar\|figuri\|mida de la imatge perquè s'adapti\|pestanya d'informació o\|s'especifica\|trobat cap informació\|visualitzarà\) a la capçalera\([^[:alnum:]]\)/\1 en la capçalera\2/g
 #
s/\bdefinit cap codificació explícita a la pàgina a les capçaleres\([^[:alnum:]]\)/establert cap codificació explícita a la pàgina en les capçaleres\1/g
# a la captura
s/\b\(exclou les decoracions\|inclou el punter\|mostra't\|Per exemple,\|s'inclou\|s'inclouen\|tal com s'il·lustra\) a la captura\([^[:alnum:]]\)/\1 en la captura\2/g
# a la cara
s/\bA la cara\([^[:alnum:]]\)/En la cara\1/g
 #
s/\ba les cares marcades però encara no confirmades\([^[:alnum:]]\)/en les cares marcades però encara no confirmades\1/g
# a la característica
	s/\bmemòria de traducció i a la característica\([^[:alnum:]]\)/memòria de traducció i amb la característica\1/g
 #
s/\bmillores a les característiques\([^[:alnum:]]\)/millores en les característiques\1/g
# a la carpeta
s/\bA la carpeta\([^[:alnum:]]\)/En la carpeta\1/g
	s/\b\(anar ràpidament\|continuarà\) a la carpeta\([^[:alnum:]]\)/\1 fins la carpeta\2/g
	s/\"\(Copia\|Mou\) a la carpeta\"/\"\1 a dins de la carpeta\"/g
	s/\b\(Copia els correus enviats\|copiar els correus enviats\|copiar l'esquema de color\|copieu-lo\|copieu-ne un\|desarà informació del cronometratge\|desaran\|escriure un missatge\) a la carpeta\([^[:alnum:]]\)/\1 a dins de la carpeta\2/g
	s/\bl'enllaç %1 a la carpeta\([^[:alnum:]]\)/l'enllaç %1 amb la carpeta\1/g
	s/\bObre un terminal, a la carpeta actual\([^[:alnum:]]\)/Obre un terminal en la carpeta actual\1/g
	s/\bSelecciona-ho tot a la &carpeta\([^[:alnum:]]\)/Selecciona-ho tot en la \&carpeta\1/g
	s/\bNo s'ha pogut subscriure's\([^[:alnum:]]\)/No s'ha pogut subscriure\1/g
	s/\bsense llegir a la paperera i a la carpeta\([^[:alnum:]]\)/sense llegir en la paperera i en la carpeta\1/g
s/\b\(amb el mateix nom\|amb permisos d'escriptura\|anar al següent missatge sense llegir\|arxivat del correu\|baixar un missatge\|Callgrind\|[Cc]erca\|Còmics\|Controla els canvis\|Crea en&llaços simbòlics\|Crea fitxers desencriptats temporals\|creació d'elements\|creació de carpetes\|crear carpetes\|Desa aquest missatge\|Desa el correu\|desa una còpia\|desant els escanejats\|desar aquest missatge\|desar una còpia\|desarà els fitxers\|desat una captura de pantalla com a «%1»\|desen\|determinar l'espai lliure\|emmagatzema les seves adreces d'interès\|enllaçar el fitxer temporal\|error de permisos\|estan\|executa un informe\|executar ordres\|existeix\|existeixen\|Expandeix totes les converses\|Fa una còpia de seguretat de totes les vostres etiquetes\|Fa una còpia de seguretat del fitxer actual\|Falta el Makefile\|hi ha\|hi ha prou espai lliure\|hi ha un fitxer amb el mateix nom («%1»)\|L'espai lliure\|modificació d'elements\|modificació de carpetes\|modificar el correu\|modificar els correus\|Mostra\|No es permet un nom buit\|Nombre total d'imatges\|obrir un fitxer temporal\|obriu una terminal\|OE-Import»\|permisos de fitxer\|permisos del fitxer\|Posa el clip\|Redueix totes les converses\|requereix permisos d'escriptura\|s'emplaçarà\|Selecciona tots els fitxers\|supressió d'elements\|supressió de carpetes\|Sylpheed-Import»\|trobar cap fitxer de codi font\|trobat %1 coincidències (%3)\|trobat cap fitxer de codi font\|trobat un missatge no vàlid\|trobat una coincidència (%3)\|trobat una entrada no vàlida\|troben\|voleu <b>totes les fonts\) a la carpeta\([^[:alnum:]]\)/\1 en la carpeta\2/g
 #
s/\bA les carpetes\([^[:alnum:]]\)/En les carpetes\1/g
	s/\bque heu fet als fitxers o a les carpetes\([^[:alnum:]]\)/que heu fet en els fitxers o en les carpetes\1/g
s/\b\(aplicar efectes\|canvis\|[Cc]erca\|cerca perfils ICC\|Cerca recursiva\|deixa anar\|hi ha missatges sense llegir\|Permet les etiquetes locals\) a les carpetes\([^[:alnum:]]\)/\1 en les carpetes\2/g
# a la cartera
	s/\bDesa la contrasenya (a la cartera\([^[:alnum:]]\)/Desa la contrasenya (a dins de la cartera\1/g
	s/\bEn desar les contrasenyes, fer-ho a la cartera\([^[:alnum:]]\)/En desar les contrasenyes, fer-ho a dins de la cartera\1/g
s/\b\(Desa la contrasenya de text\|Desa les contrasenyes\|desarà les contrasenyes\|el valor de l'entrada\|emmagatzemades\|emmagatzemar\|Indiqueu la carpeta\|obtenir tota la informació continguda\|programar els projectes\|sobreescriurà el valor previ de l'entrada\) a la \([Cc]\)artera\([^[:alnum:]]\)/\1 en la \2artera\3/g
# a la casa
s/\b\(capturarà les llavors\|col·locaran\) a la casa\([^[:alnum:]]\)/\1 en la casa\2/g
 #
	s/\bdistribuiran a les cases\([^[:alnum:]]\)/distribuiran a dins de les cases\1/g
s/\b\(esglésies\) a les cases\([^[:alnum:]]\)/\1 en les cases\2/g
# a la categoria
	s/\(%1, \|\"\)a la categoria\([^[:alnum:]]\)/\1en la categoria\2/g
s/\b\(Activa la condició\|despeses\|ingressos\|menuchoice>\|troba\|trobat\|Store<\/link>,\) a la categoria\([^[:alnum:]]\)/\1 en la categoria\2/g
#
s/\b\(Totes\) a les categories\([^[:alnum:]]\)/\1 en les categories\2/g
# a la cel·la
	s/\bper a configurar-la a la cel·la actual\([^[:alnum:]]\)/per a establir-la en la cel·la actual\1/g
s/\b\(alternen el seu objectiu respectiu\|Començant\|configurar-la\|hi haurà\|mostrarà\|posició del contingut\|Reproduïu el caràcter sol·licitat\|teniu un nombre\) a la cel·la\([^[:alnum:]]\)/\1 en la cel·la\2/g
 #
	s/\bdes del porta-retalls a les cel·les\([^[:alnum:]]\)/des del porta-retalls a dins de les cel·les\1/g
s/\b\(editar una AR o una Dec d'un punt concret directament\|Esquitxades en mescla\|Esquitxades humides\|mostrarà la fórmula real\) a les cel·les\([^[:alnum:]]\)/\1 en les cel·les\2/g
# a la cerca
s/\bA la cerca\([^[:alnum:]]\)/En la cerca\1/g
	s/\bMou el focus a la cerca\([^[:alnum:]]\)/Mou el focus fins a la cerca\1/g
s/\b\(coincideixen\|consideraran els participants amb els rols seleccionats\|empraran\|error\|Focus\|Inclou el nom de les peces\|Inclou el nom dels àlbums\|Inclou el nom dels gèneres\|Inclou els noms dels artistes\|Inclou els noms dels compositors\|Inclou els anys\|Inclou les etiquetes\|incloure\|incloure les alarmes actives\|incloure les alarmes arxivades\|incloure les alarmes d'àudio\|incloure les alarmes d'ordre\|incloure les alarmes de correu\|incloure les alarmes de fitxer\|alarmes de missatge de text\|la interfície d'usuari i\|s'inclouran\|trobat cap resultat\|utilitzaran\|verificar\) a la cerca\([^[:alnum:]]\)/\1 en la cerca\2/g
 #
s/\bA les cerques\([^[:alnum:]]\)/En les cerques\1/g
s/\b\(Coincidències de majúscules\|Concorda les caixes\|Oculta la imatge\) a les cerques\([^[:alnum:]]\)/\1 en les cerques\2/g
# a la cistella
s/\b\(Enganxa el contingut del porta-retalls\|Enganxa la selecció\|enganxar el contingut del porta-retalls\|enganxar el porta-retalls o la selecció\|enganxar la selecció del porta-retalls\|Enregistra una àrea de la pantalla com a una imatge\) a la cistella\([^[:alnum:]]\)/\1 en la cistella\2/g
 #
s/\b\(Mo&stra consells\) a les cistelles\([^[:alnum:]]\)/\1 en les cistelles\2/g
# a la clau
s/\b\(trobat l'adreça de correu\) a la clau\([^[:alnum:]]\)/\1 en la clau\2/g
 #
# a la comunitat
s/\b\(Contingut recent\) a la comunitat\([^[:alnum:]]\)/\1 en la comunitat\2/g
# a la col·lecció
	s/\"a la col·lecció actual\([^[:alnum:]]\)/\"en la col·lecció actual\1/g
	s/\bFusiona el contingut del fitxer importat a la col·lecció actual\([^[:alnum:]]\)/Fusiona el contingut del fitxer importat amb la col·lecció actual\1/g
	s/\bImporta a la col·lecció local\([^[:alnum:]]\)/Importa a dins de la col·lecció local\1/g
	s/\bimportar el contingut d'un fitxer iCalendar o vCalendar a la col·lecció\([^[:alnum:]]\)/importar el contingut d'un fitxer iCalendar o vCalendar a dins de la col·lecció\1/g
	s/\bimportant «%1» a la col·lecció\([^[:alnum:]]\)/important «%1» a dins de la col·lecció\1/g
s/\b\(canvien els camps\|cerqueu el seu nom\|[Cc]erca\|Crea un àlbum buit nou\|creant l'element\|Executa filtres de vista definits per l'usuari\|hi ha\|ID de les llistes de tasques\|ID dels calendaris\|la carpeta de paperera «.dtrash»\|la carpeta de paperera «%2»\|massa imatges grans\|reproduir-les\|teniu imatges amb aquests formats\|trobat cap forma\) a la col·lecció\([^[:alnum:]]\)/\1 en la col·lecció\2/g
# a la columna
s/\bA la columna\([^[:alnum:]]\)/En la columna\1/g
s/\b\(alinea les línies del bloc seleccionat o de tot el document\|aplicar l'element de filtre només\|[Cc]erca\|coincideix, el valor\|desviat per una bola\|detectar el símbol decimal\|elimina el PID\|es pot veure\|especificat\|mostrades\|mostrar\|mostrar els permisos en format estàndard (rwxr-xr-x)\|Mou qualsevol cosa que hàgiu escrit\|veureu\) a la columna\([^[:alnum:]]\)/\1 en la columna\2/g
	s/\bel valor a la «columna»\([^[:alnum:]]\)/el valor en la «columna»\1/g
 #
s/\bA les columnes\([^[:alnum:]]\)/En les columnes\1/g
s/\b\([Cc]erca\|com a SD\) a les columnes\([^[:alnum:]]\)/\1 en les columnes\2/g
# a la configuració
s/\bA la configuració\([^[:alnum:]]\)/En la configuració\1/g
	s/\b\(activat\|ajustar\|definit\|inhabilitar aquesta característica\|modificar la mida màxima de la pila de desfer\/refer\) a la \(<[^<]\{1,\}>\|«\|\[\|\)configuració\([^[:alnum:]]\)/\1 en la \2configuració\3/g
	s/\bAugmenta les imatges petites\(<[^<]\{1,\}>\|«\|\[\|\) \(<[^<]\{1,\}>\|«\|\[\|\) a la configuració\([^[:alnum:]]\)/Augmenta les imatges petites\1 \2en la configuració\3/g
	s/\bDisposició a la configuració actual del Plasma\([^[:alnum:]]\)/Disposició des de la configuració actual del Plasma\1/g
	s/\b\(seleccionar un CCD del sistema de guiatge\|valor d'ampliació anterior\) \(<[^<]\{1,\}>\|«\|\[\|\)a la configuració\([^[:alnum:]]\)/\1 \2en la configuració\3/g
s/\b\(activat\|activat el resolutor d'Internet\|Ajusteu-lo\|amb l'angle de posició\|canvia[rt]\|canviar el tema\|configuració de la gestió del color\|configurar a través de la interfície de <i>Dreceres de teclat<\/i>\|configurat\|configurats\|configureu aquestes opcions\|definir un altre port\|definir un servidor de claus\|desactiva[rt]\|desactivar completament la característica\|desactiveu l'agent GnuPG\|disponibles\|durada del bloqueig automàtic\|emmagatzema\|Equip d'idioma de l'usuari\|especificar un altre fitxer\|especificat\|esquema de color\|establerta\|establir el camí correcte\|establir-la\|Establiu el fitxer del terreny\|Establiu els detalls del propietari del calendari\|Establiu els paràmetres d'importació\|fitxers<\/span>\|gestionar els proveïdors de l'escriptori social\|habilitat\|Habiliteu «Mostra els errors»\|habiliteu-lo\|hi hagi\|indicat\|indicat cap servidor\|indicats\|inhabilitat l'opció «Notifica sempre»\|inhabilitats\|introdu\(ïu\|ir\) la vostra clau d'encriptatge\|introduïu la vostra clau d'encriptació\|Krita»\|Krita, i no\|marcada\|obriu la pàgina «Programes»\|partició o\|perdeu\|Proporcioneu el camí correcte\|[Qq]ualsevol canvi\|reduint la mida de l'historial\|reduint la mida de la memòria intermèdia per programari\|seleccionar un CCD del sistema de guiatge\|Seleccioneu un perfil QIF\|Servidor buit\|sol·licitar un reinici\|suprimir\|Tipus no vàlid de còpia de seguretat\|trieu un altre port\|Us perdeu\|utilitzar\|utilitzarà\|utilitzaran\|Utilitzeu l'editor de perfil QIF\) a la \(<[^<]\{1,\}>\|«\|\[\|\)\([Cc]\)onfiguració\([^[:alnum:]]\)/\1 en la \3\4onfiguració\5/g
# a la connexió
s/\b\(Error\) a la connexió\([^[:alnum:]]\)/\1 en la connexió\2/g
# a la consola
	s/(a la consola)\([^[:alnum:]]\)/(en la consola)\1/g
	s/\bMostra l'indicatiu a la &consola\([^[:alnum:]]\)/Mostra l'indicatiu en la \&consola\1/g
s/\b\(help.start ()»\|calcular expressions matemàtiques\|des d'aquest directori\|Des d'un indicatiu\|Descriu les característiques i els paràmetres referits\|després\|en els scripts i\|[Ee]xecuteu\|[Ee]xecuteu les línies següents\|funciona\|hi ha una altra ordre activa\|imprimeix missatges\|introduïu «base::pa»\|introduïu -per exemple- «print»\|mostra\|mostrar\|mostraran\|mostraran més que aquest nombre total de línies (ordres i sortida)\|Ordres entrades\|però no\|teclejar-los directament\|visualització d'ordres\|visualització dels missatges del sistema\) a la consola\([^[:alnum:]]\)/\1 en la consola\2/g
# a la construcció
s/\b\([Pp]roblema inesperat\) a la \(<[^<]\{1,\}>\|«\|\[\|\)\([Cc]\)onstrucció\([^[:alnum:]]\)/\1 en la \2\3onstrucció\4/g
# a la consulta
s/\b\(existeix\|valor»\) a la consulta\([^[:alnum:]]\)/\1 en la consulta\2/g
# a la conversa
s/\b\([Ee]rror d'invitació\) a la conversa\([^[:alnum:]]\)/\1 en la conversa\2/g
# a la còpia
s/\b\(enregistrada\|hi ha actualitzacions\|inclosa\|incloure\|se suprimirà de la carpeta\|Selecciona els canvis\|substituït amb zeros\|substituït per zeros\) a la còpia\([^[:alnum:]]\)/\1 en la còpia\2/g
 #
s/\b\(llista\) a les còpies\([^[:alnum:]]\)/\1 en les còpies\2/g
# a la corba
s/\b\(marcat\|situar el punt nou o\|troben\) a la corba\([^[:alnum:]]\)/\1 en la corba\2/g
 #
s/\b\(Su&bstituïx\|Substitueix\) a les corbes\([^[:alnum:]]\)/\1 en les corbes\2/g
# a la cua
s/\b\(2\|dels blocs\|enviant el missatge (1 element\|enviant els missatges (%1 elements\|esperant\|hi ha elements\|Hi ha %1 treballs d'impressió\|Hi ha un treball d'impressió\|Mou cap avall un torrent\|Mou cap amunt un torrent\|Nombre de treballs\|Ordre d'un torrent\|processar\|queden %1 tasques\|queden tasques\|queden tasques interrompudes\|s'especifica\|troben\) a la cua\([^[:alnum:]]\)/\1 en la cua\2/g
 #
s/\b\(hi ha cap element per a processar\) a les cues\([^[:alnum:]]\)/\1 en les cues\2/g
# a les dades
s/\b\(Té una validesa desconeguda\) a les dades\([^[:alnum:]]\)/\1 en les dades\2/g
# a la data
	s/\"a la data de venciment\([^[:alnum:]]\)/\"en la data de venciment\1/g
	s/\bdes de la data1 a la data2\([^[:alnum:]]\)/des de la data1 fins a la data2\1/g
s/\b\(Caràcter inesperat %1\|Centra el diagrama de Gantt\|posició dels planetes principals\) a la data\([^[:alnum:]]\)/\1 en la data\2/g
# a la declaració
s/\b\(present\) a la declaració\([^[:alnum:]]\)/\1 en la declaració\2/g
# a la depuració
s/\b\(ajuda\) a la depuració\([^[:alnum:]]\)/\1 en la depuració\2/g
# a la depuradora
s/\ba la depuradora d'aigües residuals\([^[:alnum:]]\)/en la depuradora d'aigües residuals\1/g
# a la destinació
s/\b\(escriure\|Executeu «aplicació»\|Executeu «gdbserver \.\.\. aplicació»\|existeixin\|ocupin menys espai\|Sobreescriu els elements existents\|Utilitza el camí d'àlbum dels elements\) a la destinació\([^[:alnum:]]\)/\1 en la destinació\2/g
 #
s/\b\(escriure\) a les destinacions\([^[:alnum:]]\)/\1 en les destinacions\2/g
# a la disposició
s/\b\(canvis\|fet els canvis\|Mostra les &línies de la nota\|presents\) a la disposició\([^[:alnum:]]\)/\1 en la disposició\2/g
 #
s/\b\(Mostra\|utilitzades\) a les disposicions\([^[:alnum:]]\)/\1 en les disposicions\2/g
# a la dissolució
s/\b\(especificar la quantitat de solut\|especificar les unitats de la quantitat de dissolvent\|especificar les unitats de la quantitat de solut\) a la dissolució\([^[:alnum:]]\)/\1 en la dissolució\2/g
# a la documentació
	s/\b\(actualitzada\|defineixen\|descriuen\) a la \(<[^<]\{1,\}>\|«\|\[\|\)\(<[^<]\{1,\}>\|\)documentació\([^[:alnum:]]\)/\1 en la \2\3documentació\4/g
s/\b\([Cc]erca\|busqueu els termes de llicència\|Més informació\|Vegeu l'article «Static Image Export»\) a la documentació\([^[:alnum:]]\)/\1 en la documentació\2/g
# a la dutxa
s/\b\(estigui\) a la dutxa\([^[:alnum:]]\)/\1 en la dutxa\2/g
# a la fila
	s/\balinea a la fila\([^[:alnum:]]\)/alinea amb la fila\1/g
	s/\bel valor a la «fila»\([^[:alnum:]]\)/el valor en la «fila»\1/g
 #
s/\b\(des de l'u fins al nou\) a les files\([^[:alnum:]]\)/\1 en les files\2/g
# a la finestra
s/\bA la finestra\([^[:alnum:]]\)/En la finestra\1/g
	s/\ba la finestra del Kig\([^[:alnum:]]\)/en la finestra del Kig\1/g
	s/\bajustar-se a la finestra\([^[:alnum:]]\)/ajustar-se amb la finestra\1/g
	s/\b\(amollar-lo\|sistema de fitxers\) a la finestra\([^[:alnum:]]\)/\1 a dins de la finestra\2/g
	s/\b\(arrossegar una imatge\) a la finestra\([^[:alnum:]]\)/\1 fins a la finestra\2/g
	s/\bcoincideix a la \(<[^<]\{1,\}>\|«\|\[\|\)finestra\([^[:alnum:]]\)/coincideix en la \1finestra\2/g
	s/\bes mostrarà a la «finestra\([^[:alnum:]]\)/es mostrarà en la «finestra\1/g
	s/\bsi s'engega a\([^[:alnum:]]\)/si s'engega en\1/g
s/\b\(a l'esquerra del control lliscant de progrés\|A més,\|agafades de les opcions\|ajustar l'alçada de la pàgina\|ajustar l'amplada de la pàgina\|ajustar la pàgina\|anar al seu codi font\|animació\|aplicació KDE<\/replaceable>\|canviant els valors\|canvieu primer a coordenades equatorials\|Cerca les pestanyes del navegador\|cliqueu «Envia»\|Columnes visibles\|Commuta l'efecte d'inversió\|crear un parell de claus\|definir el vostre propi\|des del menú <i>Carpeta<\/i>\|desactivar aquesta característica\|desactivar la bombolla d'ajuda\|el tanca\|emplaçament\|Emplaçament:<\/guilabel>\|Enganxament especial\.\.\.<\/i>\|especificar un valor constant per a algun dels paràmetres\|Executa l'script\|executar l'script actual\|executar una ordre\|Focus\|generar la sortida\|hi ha\|hi ha text seleccionat\|i apliqueu l'operació resultant\|I&gnora la sortida\|introduïu les coordenades desitjades\|La vista de persones\|llistats\|Lluentor\|millores\|Mo&stra\|Mostra cada imatge capturada en seqüència\|Mostra la imatge\|Mostra la informació emergent\|Mostra la música que esteu escoltant\|Mostra la pestanya de vista dels fragments baixats\|Mostra la pestanya de vista dels parells\|Mostra la pestanya de vista dels seguidors\|Mostra les imatges FITS rebudes\|mostrar el contingut de la carpeta\|mostrar el temps restant de les peces en comptes del temps transcorregut\|mostrar-les totes\|mostraran\|mostri\|Obre el document\|[Oo]bre un fitxer addicional de traça\|Obre una carpeta CVS de treball\|obrir aquest fitxer\|per als esdeveniments\|rebut un missatge entrant\|replegats\|Representa fórmules LaTeX\|representar fórmules LaTeX\|s'afegiran automàticament\|seleccioneu la pestanya «Permisos»\|seleccioneu part de l'expressió regular\|seleccioneu un objecte i una propietat\|sense animació\|sota el diagrama\|Tipus de lletra base\|Transicions del canvi d'estat\|visualitzar les imatges\|vora el camp d'edició\|veure el diagrama exportat\) a la finestra\([^[:alnum:]]\)/\1 en la finestra\2/g
    s/\ba la finestra de Kig\([^[:alnum:]]\)/en la finestra de Kig\1/g
 #
s/\bA les finestres\([^[:alnum:]]\)/En les finestres\1/g
s/\b\(mostrarà un document sense títol\|utilitza\) a les finestres\([^[:alnum:]]\)/\1 en les finestres\2/g
# a la fitxa
s/\b\(Escriviu el número\) a la fitxa\([^[:alnum:]]\)/\1 en la fitxa\2/g
 #
s/\b\(Un gran ocell carnívor\|utilitzar imatges en lloc de paraules\) a les fitxes\([^[:alnum:]]\)/\1 en les fitxes\2/g
# a la fletxa
# s/\b\(\) a la fletxa\([^[:alnum:]]\)/\1 en la fletxa\2/g
# a la fórmula
s/\b\(emprats\) a la fórmula\([^[:alnum:]]\)/\1 en la fórmula\2/g
# a la frase
s/\b\(Majúscules\/minúscules\) a la frase\([^[:alnum:]]\)/\1 en la frase\2/g
# a la funció
s/\b\(cercar coincidències a la memòria de traducció i\|el lloc\|entrar\|és el paràmetre <i>width<\/i> (amplada)\|gastat\|Inhabilita les variables &automàtiques\|són arguments\|Tipus no compatibles\) a la funció\([^[:alnum:]]\)/\1 en la funció\2/g
 #
s/\b\(conserva durant tot el procés i\) a les funcions\([^[:alnum:]]\)/\1 en les funcions\2/g
# a la galeria
s/\b\(estan\|troben\|visualitzarà\) a la galeria\([^[:alnum:]]\)/\1 en la galeria\2/g
# a la gestió
	s/\bDes de les opcions del tema a la gestió de dispositiu\([^[:alnum:]]\)/Des de les opcions del tema fins a la gestió de dispositius\1/g
s/\b\([Mm]illores\) a la gestió\([^[:alnum:]]\)/\1 en la gestió\2/g
# a la guia
s/\b\(Proveïdor de cerques\) a la guia\([^[:alnum:]]\)/\1 en la guia\2/g
# a la gropa
# a la història
s/\b\(Aquest mes\) a la història\([^[:alnum:]]\)/\1 en la història\2/g
# a la icona
s/\b\(animacions\|carpeta anomenada KDE.trash,\|Mostra el nombre de notes\|Mostra el percentatge de la bateria\) a la icona\([^[:alnum:]]\)/\1 en la icona\2/g
# a la identitat
    s/\bd'afegir un sobrenom com a mínim\([^[:alnum:]]\)/d'afegir com a mínim un sobrenom\1/g
s/\b\(definit\|donat\) a la identitat\([^[:alnum:]]\)/\1 en la identitat\2/g
# a la IGU
s/\b\([Mm]illores\|[Tt]roba\) a la \(GUI\|IGU\)\([^[:alnum:]]\)/\1 en la IGU\3/g
# a la imatge
s/\b\(ajust\|centrat\|conserva la saturació dels colors\|Detecta les estrelles\|determina la mida de les parts copiades\|dibuixa un espectre de l'àudio\|dibuixa un nivell d'àudio\|Emmagatzema la configuració de la provatura suau\|emmagatzemar aquesta paleta\|establir l'escala de magnituds de les estrelles\|Etiquetes\|hi hagi estrelles suficients\|inserit\|marca les estrelles\|més soroll quedarà\|Mostra els objectes\|mostrar el blanc sobreacolorit\|mostrar el negre sobreacolorit\|nombre d'estrelles\|Objectes\|reconstrucció des de Bayer\|se superposin\|seleccionada (o amb la selecció automàtica)\|seleccioneu el punt d'origen\|superposats\|troba les vores de color\|trobada\|trobi\) a la imatge\([^[:alnum:]]\)/\1 en la imatge\2/g
 #
s/\b\(ajustar l'hora\|amb un intercanvi sense costures\|corregir els píxels cremats\|Detecta la quantitat de compressió\|Detecta la quantitat de difuminat\|Detecta la quantitat de soroll\|[Dd]etect[ai] les cares\|detecti cares\|detectades\|Executa l'estirament automàtic\|manté l'èmfasi\|reconeixerà automàticament les persones\|reduir el soroll\|reduir l'efecte de l'ull vermell\|Traça el valor de la mediana de la mostra\|Traça l'excentricitat mediana de les estrelles\) a les imatges\([^[:alnum:]]\)/\1 en les imatges\2/g
# a la impressió
s/\b\(Fa una pausa\|mostraran\) a la impressió\([^[:alnum:]]\)/\1 en la impressió\2/g
# a la incidència
s/\b\(trobat cap adjunt anomenat «%1»\) a la incidència\([^[:alnum:]]\)/\1 en la incidència\2/g
# a la indexació
s/\b\(fallat\) a la indexació\([^[:alnum:]]\)/\1 en la indexació\2/g
# a la indústria
s/\b\(professió\) a la indústria\([^[:alnum:]]\)/\1 en la indústria\2/g
# a la informació
s/\b\(es proporcionen\|hi ha un error\|propietari\|troben\) a la informació\([^[:alnum:]]\)/\1 en la informació\2/g
# a la interfície
    s/\bprocessament a la interfície\([^[:alnum:]]\)/processament amb la interfície\1/g
s/\b\(admissió de pestanyes\|Configureu els connectors\|desactivar l'autenticació\|esmenes\|esmenes d'errors\|esmenes secundàries\|Implementació de dreta a esquerra\|integrades\|ja heu seleccionat\|[Mm]illores\|seleccionat\|té la seva pròpia pestanya i icona\|Utilitza un tipus de lletra personalitzat\|utilitzat\|utilitzeu un dispositiu\|visualitzar-la\) a la interfície\([^[:alnum:]]\)/\1 en la interfície\2/g
 #
s/\b\(serveis que proporcionen notificacions d'estat\) a les interfícies\([^[:alnum:]]\)/\1 en les interfícies\2/g
# a la instal·lació
s/\b\(Hi ha algun error\) a la instal·lació\([^[:alnum:]]\)/\1 en la instal·lació\2/g
# a la instància
s/\b\(disponible\) a la instància\([^[:alnum:]]\)/\1 en la instància\2/g
# a la instrucció
 #
s/\b\(com es descriu\) a les instruccions\([^[:alnum:]]\)/\1 en les instruccions\2/g
# a la invitació
s/\b\(Hi ha adjunta una resposta\) a la invitació\([^[:alnum:]]\)/\1 en la invitació\2/g
# a la IU
s/\b\([Mm]illores\|visualitza\) a la IU\([^[:alnum:]]\)/\1 en la IU\2/g
# a la jerarquia
s/\b\(existeix\) a la jerarquia\([^[:alnum:]]\)/\1 en la jerarquia\2/g
# a la jungla
s/\b\(divertir-se\) a la jungla\([^[:alnum:]]\)/\1 en la jungla\2/g
# a la KDE
    s/\bpublicar la pestanya personalitzada a la \(<[^<]\{1,\}>\|«\|\[\|\)KDE\([^[:alnum:]]\)/publicar la pestanya personalitzada en la \1KDE\2/g
s/\b\(existent\) a la KDE\([^[:alnum:]]\)/\1 en la KDE\2/g
# a la LaKademy
s/\b\(Fotografia de grup\) a la LaKademy\([^[:alnum:]]\)/\1 en la LaKademy\2/g
# a la línia
    s/\bsaltar a la línia\([^[:alnum:]]\)/saltar fins a la línia\1/g
s/\bA la línia\([^[:alnum:]]\)/En la línia\1/g
	s/\" a la línia:\([^[:alnum:]]\)/\" en la línia:\1/g
	s/\"a la línia d'ordres\([^[:alnum:]]\)/\"en la línia d'ordres\1/g
	s/\ba la línia de temps\([^[:alnum:]]\)/en la línia de temps\1/g
        s/\bper en la línia de temps\([^[:alnum:]]\)/per a la línia de temps\1/g
    s/\bagrupar-les a les línies\([^[:alnum:]]\)/agrupar-les a dins de les línies\1/g
    s/\bDesancora el temps de presentació a la línia\([^[:alnum:]]\)/Desancora el temps de presentació de la línia\1/g
    s/\bdesprés d'aquest caràcter a la línia\([^[:alnum:]]\)/després d'aquest caràcter en una línia\1/g
	s/\bemplaçarà a la <b>Línia\([^[:alnum:]]\)/emplaçarà en la <b>Línia\1/g
	s/\bteclegi el contingut d'aquest quadre a la línia\([^[:alnum:]]\)/teclegi el contingut d'aquest quadre a dins de la línia\1/g
    s/\btrobat un error a la línia %1 del fitxer %2\([^[:alnum:]]\)/trobat un error a la línia %1 en el fitxer %2\1/g
    s/\bvisualització dels fotogrames clau en el clip a la línia de temps\([^[:alnum:]]\)/visualització dels fotogrames clau en el clip sobre la línia de temps\1/g
s/\b\(Afegeix un cursor (accent circumflex)\|anàlisi sintàctica de l'XML\|analitzar l'XML des del CDS Sesame: %1\|Atribut %1 buit\|cap altre\|Característica de subtítols (GSoC), colors\|carregar els punts\|clic del ratolí\|Clip\|Codi\|col·locarà\|declarat a %2\|Enganxa clips\|enganxar els elements\|error d'anàlisi fatal: %1\|Error en analitzar l'XML\|error en l'anàlisi sintàctica XML\|error ha estat: «%1»\|es netejarà la selecció actual de la data\|escrivint «fuser -v %1»\|escriviu\|especificar-se\|especificat\|Estableix el focus\|establert\|executar «gpgconf %3»\|Fitxer LDIF no vàlid\|Focus\|hi ha text\|hi ha una crida\|Insereix els blocs seleccionats\|Insereix una zona del clip\|inserirà una altra línia\|introduir una opció\|ja s'ha declarat a %2\|llegir el fitxer de plantilla <b>%1<\/b>\|llegir el fitxer en XML\|Manca l'atribut %1\|Mantén el focus\|minúscules)\|Mostra %1\|Mostra els fotogrames clau\|Mostra les etiquetes de color\|Mostra els segons\|mostrar els segons\|mostrarà\|no permet cap URL\|Nombre no vàlid de columnes\|Oculta els fotogrames clau\|orbitarà al voltant d'un punt de gravitació estable\|Part real de la funció digamma\|Permet 1.000 fotogrames\|romandran\|s'indica\|seleccionades\|selecciona[rt]\|seleccioneu un fitxer de dades\|Sobreescriu la zona del clip\|substituir només el component d'àudio d'aquest clip\|substituir només el component de v[ií]deo d'aquest clip\|Substitueix\|Substitueix un clip\|suprimir l'última pista\|també és possible\|teclegi el contingut d'aquest quadre\|trobar l'ID del compte amb l'expressió regular «%1»\|trobat el preu per a «%1» amb l'expressió regular «%2»\|trobat un error\|utilitzats\|valor del text «%1»\|visualització dels subtítols\) a la línia\([^[:alnum:]]\)/\1 en la línia\2/g
 #
s/\bA les línies\([^[:alnum:]]\)/En les línies\1/g
    s/\ba les línies de temps\([^[:alnum:]]\)/en les línies de temps\1/g
    s/\bDesplaça a les línies\([^[:alnum:]]\)/Desplaça fins a les línies\1/g
    s/\bDesplaça o no a les línies\([^[:alnum:]]\)/Desplaça o no fins a les línies\1/g
s/\b\(apareixerà una icona de creu\|Commuta l'atribut de cursiva\|Commuta l'atribut de negreta\|Commuta l'atribut de subratllat\|Commuta l'atribut de ratllat\|Commuta la marca\|Comprova els errors\|[Hh]i ha errors\|La clau de text «%1»\|mostrar\|Neteja els errors\|provocaran bucles\|Verifica l'ortografia\) a les línies\([^[:alnum:]]\)/\1 en les línies\2/g
# a la llegenda
s/\b\(Mostra el camí complet cap al document\) a la llegenda\([^[:alnum:]]\)/\1 en la llegenda\2/g
# a la llibreta
    s/\"a la llibreta\([^[:alnum:]]\)/\"en la llibreta\1/g
	s/\b\(contacte nou\) a la Llibreta\([^[:alnum:]]\)/\1 en la Llibreta\2/g
    s/\bimportar aquest contacte a la llibreta\([^[:alnum:]]\)/importar aquest contacte a dins de la llibreta\1/g
    s/\bimportar-la a la llibreta\([^[:alnum:]]\)/importar-la a dins de la llibreta\1/g
s/\b\(Actualitza aquest contacte\|actualitzat la vCard\|Cap adreça de correu-e\|Contacte nou\|Crea un contacte nou\|definit\|desat\|emmagatzemats\|existeix\|existeix un contacte amb l'adreça de correu <email>%1<\/email>\|O&bri\|[Oo]bre\|Quin nom tindrà el contacte «%1»\|troba\|trobat\|trobat cap entrada\) a la llibreta\([^[:alnum:]]\)/\1 en la llibreta\2/g
# a la llista
s/\bA la llista\([^[:alnum:]]\)/En la llista\1/g
    s/\"a la llista de les/\"en la llista de les/g
    s/\ba la llista en totes les sessions futures\([^[:alnum:]]\)/en la llista en totes les sessions futures\1/g
    s/\barrossegueu-los a la llista\([^[:alnum:]]\)/arrossegueu-los fins a la llista\1/g
    s/\bcercar progressivament a la llista\([^[:alnum:]]\)/cercar progressivament a través de la llista\1/g
    s/\bestà a la «llista\([^[:alnum:]]\)/està en la «llista\1/g
	s/lement \(anterior\|següent\) a la llista\([^[:alnum:]]\)/lement \1 en la llista\2/g
	s/\b\(podeu demanar ajuda\|Un element\) a la \(<[^<]\{1,\}>\|«\|\[\|\)llista\([^[:alnum:]]\)/\1 en la \2llista\3/g
    s/\bseleccioneu \(<[^<]\{1,\}>\|«\|\[\|\)Cap\(<[^<]\{1,\}>\|«\|\[\|\) a la llista\([^[:alnum:]]\)/seleccioneu \1Cap\2 en la llista\3/g
    s/\btenen lloc a la \[llista\([^[:alnum:]]\)/tenen lloc en la \[llista\1/g
s/\b\(Activa el desplaçament suau\|apareguin\|apareix\|apareixen\|apareixen els esquemes\|aparèixer\|apareixerà\|apareixerà el contacte\|apareixeran\|Aplica les operacions pendents\|Aquesta opció oculta\|Aquesta opció ocultarà\|baixant-l[ao]\|calcular la data mitjana de totes les imatges\|canviant la tasca\|[Cc]erca\|cerca l'estrella més propera\|[Cc]erca\|cercar\|cercar consell\|Codifica a UTF-8\|Codificació del text\|Comes al final, al principi o duplicades\|conserven\|Contactes\|crear una tasca nova\|d'un interval d'opcions\|definit un conjunt d'expressions URL\|dependents de l'estat de les claus\|desaran els canvis\|desfer\|després seleccioneu un element\|donada\|El nom d'aquesta entrada\|El nombre màxim d'elements\|Element anterior\|Element següent\|Elimina l'adjunt seleccionat\|està present\|està\|establerta per a aquest contacte\|estat de les clau\|esteu\|estiguin\|existeix\|Falta una «,» entre cadenes\|Falta una «,» entre tests\|fer clic doble sobre una entrada d'un assistent\|feu clic sobre el dia corresponent de la setmana\|feu clic sobre un element\|fica\|hi ha cap certificat adequat\|hi ha cap destinatari\|hi ha cap sala %1\|hi ha una coincidència\|incloure\|incloure'l\|Inicia el disseny de l'objecte\|Inicia el disseny de l'objecte seleccionat\|inserir els fulls seleccionats\|Introduïu el camí\|L'últim element\|La col·lecció\|Llista de correus\|mantenir\|mantenir inicialment\|menú Scripts o\|Mida dels elements\|moguin les fonts\|mostra\|Mostra algunes planificacions\|Mostra els correus electrònics\|Mostra els grups buits\|Mostra els usuaris fora de línia\|Mostra la columna Remitent\/Destinatari\|Mostra la màscara de &xarxa\|Mostra més planificacions\|mostrades\|mostra[rt]\|mostrar informació sobre un element\|mostrats\|mostren\|Mou cap amunt la imatge actual\|Mou cap amunt la peça seleccionada\|Mou cap avall la imatge actual\|Mou cap avall la peça seleccionada\|Mou la dependència seleccionada cap amunt\|Mou la dependència seleccionada cap avall\|Nombre màxim d'entrades\|ocultar-l[ao]\|Ofusca parcialment el nom de domini\|ordeni pel percentatge d'altitud\|ordenen els fitxers\|passar per sobre d'un element\|passi per sobre del giny\|posar-l[ao]\|prefereixen les imatges de l'Sloan Digital Sky Survey\|preguntar\|pujant-l[ao]\|Qualsevol canvi\|Repeteix totes les pistes\|ressalteu una ciutat\|restituir\|s'inclourà\|s'inclouran\|s'inserirà\|s'ocultaran\|seguir els debats\|Selecciona un nombre\|seleccionada actualment\|seleccionant-l[ao]\|seleccionat\|seleccionats\|seleccioneu\|seleccioneu <guilabel>Cap<\/guilabel>\|seleccioneu senzillament el tipus de paraula\|seleccioneu un certificat sota una organització\|seleccioneu un element\|seleccioneu-l[ao]\|Situeu\|són tots els sobrenoms\|Substitueix l'element actual ressaltat\|Suprimeix tots els tipus seleccionats\|Tanca la vista seleccionada\|Tria el color del text\|troba\|trobar %1 (%2)\|trobar la substitució correcta\|trobat massa errors\|trobat una ordre de byte incorrecta\|troben\|Un element\|Una entrada\|Utilitza la navegació amb el ratolí només\|Utilitza camins de fitxer absoluts\|Utilitza un c&amí absolut per als fitxers\|Utilitza un camí &relatiu per als fitxers\|utilitzant un dels elements\|versió %2<br\/>1 model\|versió %2<br\/>%1 models\) a la \(<[^<]\{1,\}>\|\[\|\)llista\([^[:alnum:]]\)/\1 en la \2llista\3/g
 #
s/\bA les llistes\([^[:alnum:]]\)/En les llistes\1/g
s/\b\(fòrum del &kdevelop;,\|indicats\|millores\|Nombre màxim d'entrades\|Ombreja la columna orde&nada\|permeten cadenes\|permeten tests\|seu nom no es permeten\|trobi\) a les llistes\([^[:alnum:]]\)/\1 en les llistes\2/g
# a la maduresa
    s/\bMobile a la maduresa\([^[:alnum:]]\)/Mobile fins a la maduresa\1/g
# a la majoria
s/\bA la majoria\([^[:alnum:]]\)/En la majoria\1/g
s/\b\(falta\|funcionarà\|present\) a la majoria\([^[:alnum:]]\)/\1 en la majoria\2/g





# a la manera
s/\b\(repetits\) a la manera\([^[:alnum:]]\)/\1 en la manera\2/g
# a la marca
s/\b\(exemple,\|teniu\) a la marca\([^[:alnum:]]\)/\1 en la marca\2/g
# a la mateixa
s/\b\(carpetes\|compte\|Connect\|grups de missatges\|mateix grup\|metacontacte\|treballant\|vistes prèvies\) a la mateixa\([^[:alnum:]]\)/\1 en la mateixa\2/g
# a la memòria
s/\b\(cercar coincidències\|claus secretes\|dades\|desades\|desaran\|desis els inodes\|[Ee]mmagatzema\|emmagatzemen\|espai\|mentre està\|mostra la sortida\|Nombre de línies que s'han de mantenir\|seleccionades\|sortida\|tenir-les\|tinguin còpies\) a la memòria\([^[:alnum:]]\)/\1 en la memòria\2/g
# a la mescla
# a les metadades
s/\b\(alternatiu\|escriure la informació de geolocalització\) a les metadades\([^[:alnum:]]\)/\1 en les metadades\2/
# a la meva
s/\b\(invitació\|Jesper<\/b>\|resposta\) a la meva\([^[:alnum:]]\)/\1 en la meva\2/g
# a la migració
s/\b\(pausa\) a la migració\([^[:alnum:]]\)/\1 en la migració\2/g
# a la molècula
s/\b\(exemple,\) a la molècula\([^[:alnum:]]\)/\1 en la molècula\2/g
# a la mostra
s/\b\(amb èxit\) a la mostra\([^[:alnum:]]\)/\1 en la mostra\2/g
# a la motobomba
s/\b\(clic\) a la motobomba\([^[:alnum:]]\)/\1 en la motobomba\2/g
# a la nostra
s/\b\(col·laboració\|conversa\|llistats\) a la nostra\([^[:alnum:]]\)/\1 en la nostra\2/g
# a la música
s/\b\([Cc]erca\|pausa\) a la \([Mm]\)úsica\([^[:alnum:]]\)/\1 en la \2úsica\3/g
# a les notícies
s/\b\(KDE Eco\|Sprint\) a les notícies\([^[:alnum:]]\)/\1 en les notícies\2/g
# a la notificació
s/\b\([Cc]lic esquerre\) a la notificació\([^[:alnum:]]\)/\1 en la notificació\2/g
# a la pàgina
    s/\bsaltar des de l'editor a la pàgina\([^[:alnum:]]\)/saltar des de l'editor fins a la pàgina\1/g
s/\bA la pàgina\([^[:alnum:]]\)/En la pàgina\1/g
s/\b\(Actualitzeu-l[eo]s\|Alineació de taula\|capçalera\|CSS)\|[Cc]erca\|cerques «i\/o»\|contingudes\|correcta\|definit cap operació planificada\|definit cap operació ressaltada\|disponible\|disponibles\|[Ee]rror\|[Ee]xecuta una acció\|fitxers de so»\|horària\|instal·lar\|interessants\|límit del compte\|línies\|[Mm]ostra\|[Mm]ostra el fons\|[Mm]ostra les imatges\|opció\|saldo zero\|serveis de xarxa local\|Text\|trieu\|trobar el text\|última conciliació\|visualitzaran\) a la \(<[^<]\{1,\}>\|\[\|\)pàgina\([^[:alnum:]]\)/\1 en la \2pàgina\3/g
	s/, a la pàgina\([^[:alnum:]]\)/, en la pàgina\1/g
s/\bA les pàgines\([^[:alnum:]]\)/En les pàgines\1/g
# a la pantalla
s/\bA la pantalla\([^[:alnum:]]\)/En la pantalla\1/g
s/\b\(apareixen\|assenyalar coses\|botons\|cada animal\|canvis pendents\|[Cc]olor del fons\|[Cc]olor dels dígits\|com vulgueu\|corresponent\|Criatura\|entre píxels\|és un regle\|Fons\|[Ii]mprimix\|informació\|mateixa mida que\|mateixa mida que es veu\|[Mm]ostra\|mostrarà\|nombre de contactes\|oberta\|píxel\|que es mostra\|veu\|visibles\|vista de pista\) a la pantalla\([^[:alnum:]]\)/\1 en la pantalla\2/g
# a la paperera
s/\b\(Restaura només la darrera entrada\|romandre\) a la paperera\([^[:alnum:]]\)/\1 en la paperera\2/g
# a la part
s/\bA la part \(inferior\|superior\)\([^[:alnum:]]\)/En la part \1\2/g
s/(a la part \(inferior\|superior\)\([^[:alnum:]]\)/(en la part \1\2/g
s/\b\(acoblable mostra\|Aplica un segell de primer pla\|cada pestanya\|camp de text\|col·locació d'una peça addicional\|conté una clau\|cridant\|disponible\|Drive\|[Ee]nganxa\|Estora\|fosca\|ha d'estar activat\|hi ha\|imprimirà\|la pregunta\|la seva informació\|línia d'ordres\|llegits\|lleugera\|mostrar entrades\|mostrarà com a superposició\|números de línia\|pestanya dels fragments\|pestanya dels parells\|pestanya dels seguidors\|pestanya dels sembradors web\|pestanyes\|plafó d'escriptori\|posarà\|[Rr]essalta\|seleccionada\|situarà\|situen\|tenir murs\|troba\|troba[rt]\|ubicada\) a la part\([^[:alnum:]]\)/\1 en la part\2/g
	s/\balinea a la fila\([^[:alnum:]]\)/alinea en la fila\1/g
 #
s/\b\(aspra\) a les parts\([^[:alnum:]]\)/\1 en les parts\2/g
# a la partició
s/\b\(Estableix els atributs «%2»\|Estableix l'UUID «%2»\|Estableix l'etiqueta «%2»\|[Ii]nstal·la\|sistema de fitxers\|sistema de fitxers %1\|sistema de fitxers <filename>%1<\/filename>\|sistema de fitxers encriptat\) a la partició\([^[:alnum:]]\)/\1 en la partició\2/g
# a la $PATH
s/\b\(accessible\|baixades (%1)\|eines\|troba\) a la \(<[^<]\{1,\}>\|\)$PATH\([^[:alnum:]]\)/\1 en la \2$PATH\3/g
# a la PATH
s/\b\(accessible\|troba\) a la PATH\([^[:alnum:]]\)/\1 en la PATH\2/g
# a la peça
    s/\bsalteu a la peça\([^[:alnum:]]\)/salteu fins a la peça\1/g
# a la pestanya
s/\bA la pestanya\([^[:alnum:]]\)/En la pestanya\1/g
s/\b\(a causa d'un valor de precisió incorrecte\|Afegiu un camí cap a FFmpeg\|cada imatge\|carregar l'adreça\|[Cc]erca el text\|configurar\|detalls\|específic\|especificar el nom del lloc\|Focus\|llistats\|[Oo]bre\|un port\) a la pestanya\([^[:alnum:]]\)/\1 en la pestanya\2/g
s/\bA les pestanyes\([^[:alnum:]]\)/En les pestanyes\1/g
s/\b\(estadístiques en directe\) a les pestanyes\([^[:alnum:]]\)/\1 en les pestanyes\2/g
# a la pila
s/\b\(dades temporals\|ordre\|ordres\) a la pila\([^[:alnum:]]\)/\1 en la pila\2/g
# a la pista
s/\b\(clip %1\|escrites\|incorrecta %1\|línia de temps\|mescla %1\|no s'ha aplicat\|Selecciona-ho tot\|trobat la composició desconeguda %1\|vàlid %1\) a la pista\([^[:alnum:]]\)/\1 en la pista\2/g
 #
s/\b\(eliminar blancs\) a les pistes\([^[:alnum:]]\)/\1 en les pistes\2/g
# a la plataforma
s/\bA la plataforma\([^[:alnum:]]\)/En la plataforma\1/g
s/\b\(Arribada a %1\|Arribada a les %1\|de %1\|itinerari\|JavaScript\|mateix sentit que\|notificacions\|utilitzat en el mateix sentit que\) a la plataforma\([^[:alnum:]]\)/\1 en la plataforma\2/g
 #
s/\bA les plataformes\([^[:alnum:]]\)/En les plataformes\1/g
# a la porteria
s/\b\(toc\) a la porteria\([^[:alnum:]]\)/\1 en la porteria\2/g
# a la posició
s/\b\(Bloqueja les fonts\|fonts\) a la posició\([^[:alnum:]]\)/\1 en la posició\2/g
# a la pràctica
s/\bA la pràctica\([^[:alnum:]]\)/En la pràctica\1/g
# a la presentació
s/\b\([Dd]ibuix\|negra\) a la presentació\([^[:alnum:]]\)/\1 en la presentació\2/g
# a la primera
    s/\b\(prement un botó del ratolí\) a la primera\([^[:alnum:]]\)/\1 sobre la primera\2/g
s/\b\(Cada fruita\|cerca»\|coincident\|columnes\|detectar el delimitador de camp\|energia\|files\|Nombre màxim de càpsules d'energia\|normals\|peu de pàgina\|ràpids\) a la primera\([^[:alnum:]]\)/\1 en la primera\2/g
# a la prioritat
s/\b\(canvis\) a la prioritat\([^[:alnum:]]\)/\1 en la prioritat\2/g
# a la prova
s/\b\(fallat\) a la prova\([^[:alnum:]]\)/\1 en la prova\2/g
# a la província
s/\b\(Ejiri\) a la província\([^[:alnum:]]\)/\1 en la província\2/g
# a la pròxima
s/\b\(activarà\|aplicaran\|utilitzarà\) a la pròxima\([^[:alnum:]]\)/\1 en la pròxima\2/g
# a la quadrícula
s/\b\(clic\|[Dd]ibuixeu la imatge\|emplaçats\|[Mm]ida dels elements\|mostrada\) a la quadrícula\([^[:alnum:]]\)/\1 en la quadrícula\2/g
# a la qual
s/\b\([Aa]justa la velocitat\|mostra la velocitat\|o en la corba\|[Pp]osició relativa\|ubicació\) a la qual\([^[:alnum:]]\)/\1 en la qual\2/g
# a la reacció
 #
s/\b\(Corregeix els GIF animats\) a les reaccions\([^[:alnum:]]\)/\1 en les reaccions\2/g
# a la recepció
	s/\"a la recepció\([^[:alnum:]]\)/\"en la recepció\1/g
# a la recta
s/\b\([Rr]eflecteix\) a la recta\([^[:alnum:]]\)/\1 en la recta\2/g
# a la regió
s/\b\(públic local\) a la regió\([^[:alnum:]]\)/\1 en la regió\2/g
# a la regla
s/\b\(impossibles %2\/%3\) a la regla\([^[:alnum:]]\)/\1 en la regla\2/g
# a la regressió
s/\b\(cada x\) a la regressió\([^[:alnum:]]\)/\1 en la regressió\2/g
# a la repetició
s/\b\(guany\) a la repetició\([^[:alnum:]]\)/\1 en la repetició\2/g
# a la reproducció
s/\b\([Pp]ausa\) a la reproducció\([^[:alnum:]]\)/\1 en la reproducció\2/g
# a la roda
s/\b\(trobat el filtre %1\) a la roda\([^[:alnum:]]\)/\1 en la roda\2/g
# a la safata
s/\bA la safata\([^[:alnum:]]\)/En la safata\1/g
s/\b\([Aa]cobla\|[Aa]coblat\|activat\|àudio\|automàtica\|automàticament\|Clip\|contextual\|continuarà\|Desa la part del clip\|emergents\|execució\|executant-se\|funcionant\|icona\|KAlarm\|KAlarm<\/application>\|Kopete\|KOrganizer\|[Mm]antén\|mantindrà\|[Mm]ostra\|[Mm]ostra el progré\|s[Mm]ostra la icona\|[Mm]ostrar sempre la icona\|[Nn]otificació\|ocultes\|principal\|recordatoris\|RSIBreak\|S'ha trobat un clip de seqüència no vàlid\|[Ss]eleccionat cap clip\|[Ss]eleccioneu un clip\|tasca %1\|trobat\|velocitat\) a la safata\([^[:alnum:]]\)/\1 en la safata\2/g
	s/\bMostra a la &safata\([^[:alnum:]]\)/Mostra en la \&safata\1/g
	s/\bmoure la tasca %1 en la safata\([^[:alnum:]]\)/moure la tasca %1 a la safata\1/g
s/\b\([Gg]\)estor a la safata del sistema\([^[:alnum:]]\)/\1estor en la safata del sistema\2/g
# a la sala
s/\b\(acceptats\|escriure missatges\|llegir missatges\|o\|tenir\|trobeu\) a la \(<[^<]\{1,\}>\|\[\|\)sala\([^[:alnum:]]\)/\1 en la \2sala\3/g
 #
s/\b\(disponible\) a les \(<[^<]\{1,\}>\|\[\|\)sales\([^[:alnum:]]\)/\1 en les \2sales\3/g
# a la secció
    s/\bsaltar a la secció\([^[:alnum:]]\)/saltar fins a la secció\1/g
s/\b\(clau i el nom\|com botons\|del sistema\|establir\|ID de la clau\|literal>\|seleccioneu la configuració preferida\|títol de l'element\) a la secció\([^[:alnum:]]\)/\1 en la secció\2/g
# a la segona
s/\b\(marcades com a preferides\|mostren\) a la segona\([^[:alnum:]]\)/\1 en la segona\2/g
# a la selecció
s/\b\(Afegeix un marcador\|codi de temps\) a la selecció\([^[:alnum:]]\)/\1 en la selecció\2/g
	s/\bcompartir a la selecció\([^[:alnum:]]\)/compartir amb la selecció\1/g
# a la seqüència
s/\b\(valor present\) a la seqüència\([^[:alnum:]]\)/\1 en la seqüència\2/g
# a la sessió
s/\b\(execució\|executant\|[Mm]ostra\|[Oo]bre'l\) a la sessió\([^[:alnum:]]\)/\1 en la sessió\2/g
# a la setmana
s/\b\(dia\) a la setmana\([^[:alnum:]]\)/\1 en la setmana\2/g
	s/\bdefinits a la \(<[^<]\{1,\}>\|«\|\[\|\)Setmana\([^[:alnum:]]\)/definits a la \1Setmana\2/g
# a la seva
s/\b\(clic\|disponibles\) a la seva\([^[:alnum:]]\)/\1 en la seva\2/g
# a la signatura
s/\b\(incrusten el contingut\) a la signatura\([^[:alnum:]]\)/\1 en la signatura\2/g
# a la sintaxi
s/\b\(definit\|establert\) a la sintaxi de ressaltat\([^[:alnum:]]\)/\1 en la sintaxi de ressaltat\2/g
# a la solució
s/\b\(forma mixta\) a la solució\([^[:alnum:]]\)/\1 en la solució\2/g
# a la sortida
s/\bA la sortida\([^[:alnum:]]\)/En la sortida\1/g
s/\b\(acolorits\|automàticament\|codi font\|detalls\|d'un altre\|depuració\|disponibles\|emprada\|etiquetes\|fitxer actual\|impedància\|interbloqueig\|mallat\|mida\|nou\|SD\|tabulacions a espais\|tecleig\|valor\) a la sortida\([^[:alnum:]]\)/\1 en la sortida\2/g
	s/\b\(escriure els seus resultats\) a la stdout\([^[:alnum:]]\)/\1 en la stdout\2/g
s/\b\(emprada\|utilitzada\|utilitzar-se\|utilitzat\) a les sortides\([^[:alnum:]]\)/\1 en les sortides\2/g
# a la subcarpeta
s/\bA la subcarpeta\([^[:alnum:]]\)/En la subcarpeta\1/g
s/\bA les subcarpetes\([^[:alnum:]]\)/En les subcarpetes\1/g
# a la subfinestra
s/\bA la subfinestra\([^[:alnum:]]\)/En la subfinestra\1/g
s/\b\(carregar perfils de configuració\|imatges de fons\|mathgroups»\|Moure amunt\|png»\|seleccionada\) a la subfinestra\([^[:alnum:]]\)/\1 en la subfinestra\2/g
# a la superfície
s/\b\(emplaçament\) a la superfície\([^[:alnum:]]\)/\1 en la superfície\2/g
# a la targeta
s/\b\(emmagatzemada\|emmagatzemades\|emmagatzemat\|Fitxers\|genera les subclaus\|hi ha\|[Ss]uprimix un fitxer\|utilitzar les claus\) a la targeta\([^[:alnum:]]\)/\1 en la targeta\2/g
# a la taula
s/\bA la taula\([^[:alnum:]]\)/En la taula\1/g
s/\b\(1 element\|1 elements\|[Cc]lic\|com un camp\|falten\|gràfic com\|[Ii]nclou\|línia\|[Mm]ostra\|[Pp]rem\|previsualització i\|propietat donada d'un element\|punts\|veure la durada de cada esdeveniment\) a la taula\([^[:alnum:]]\)/\1 en la taula\2/g
s/\bA les taules\([^[:alnum:]]\)/En les taules\1/g
# a la traça
s/\b\(seleccionada\) a la traça\([^[:alnum:]]\)/\1 en la traça\2/g
# a la traducció
s/\b\(col·laborat\|correccions\) a la traducció\([^[:alnum:]]\)/\1 en la traducció\2/g
# a la transcripció
s/\b\(echo» de l'ordre\) a la transcripció\([^[:alnum:]]\)/\1 en la transcripció\2/g
# a la transferència
s/\b\([Ee]rror\) a la transferència\([^[:alnum:]]\)/\1 en la transferència\2/g
# a les tres
s/\bA les tres\([^[:alnum:]]\)/En les tres\1/g
# a la ubicació
s/\b\(fitxers i carpetes\|toqueu\|trobat cap fitxer de configuració\|troben\) a la ubicació\([^[:alnum:]]\)/\1 en la ubicació\2/g
# a la unitat
s/\b\(CD\|CD-ROM\|correcció d'errors\|ECC\/EDC\|sobreescriurà tot\|teniu un CD\) a la unitat\([^[:alnum:]]\)/\1 en la unitat\2/g
# a la utilitat
s/\b\(mostrades\|mostrats\) a la utilitat\([^[:alnum:]]\)/\1 en la utilitat\2/g
# a la variable
s/\b\(llistat\|ordre és o no\|regla\|s'ha de trobar\|troba o no\|utilitzar el jre\) a la variable\([^[:alnum:]]\)/\1 en la variable\2/g
# a la versió
s/\bA la \(<[^<]\{1,\}>\|\[\|\)versió\([^[:alnum:]]\)/En la \1versió\2/g
s/\b\(anunciat\|utilitzades\) a la versió\([^[:alnum:]]\)/\1 en la versió\2/g
# a la Viquipèdia / Wikipedia
	s/\b\(sobre això\) a la \(<[^<]\{1,\}>\|«\|\[\|\)Viquipèdia\([^[:alnum:]]\)/\1 en la \2Viquipèdia\3/g
    s/\btroben a la &lt;https:\/\/www\.wikipedia\.org\([^[:alnum:]]\)/troben a la \&lt;https:\/\/www\.wikipedia\.org\1/g
s/\b\(descriu\|finestra\|perfil del col·laborador\) a la \(Viquipèdia\|Wikipedia\)\([^[:alnum:]]\)/\1 en la \2\3/g
# a la vista
s/\bA la vista\([^[:alnum:]]\)/En la vista\1/g
s/\(,\|»\|<\/b>\|)TeX\|abc\|actualitza automàticament\|alhora\|apareixerà\|artefacte\|bibitems\|canviar-ho\|canviar-la\|categories\|cel·la\|clic\|columnes\|conciliades\|contextual\|cppcheck»\|definides\|desar-la\|diaris\|disponibles\|elements\|els fitxers\|entrades\|erronis\|esdeveniments\|espai\|esquerre\|esteu\|etiqueta\|etiquetes\|expansió\|festiu\|finalitzades\|fitxer\|flotants\|fracció\|gràfic\|hora actual\|horari\|hores\|i\|icones\|imatges\|laborables\|línia\|llista\|llistaran\|mantindran\|manual\|manualment)\|marcar\|miniatures\|mostra\|Mostra el títols dels àlbums i els artistes\|mostrar\|mostraran\|mostren\|moveu el cursor\|navegar\|nombres\|normals\|nou\|objecte\|[Oo]bre\|obrir-l[ao]\|oculta\|operació\|ordenen\|part inferior\|part superior\|peces\|pendents\|podcast\|preferit\|projecte\|registre\|resource>\|resultat\|que\|s'usarà\|seleccionada\|seleccionats\|[Ss]eleccions\|sencera com\|subtasques\|tapades<\/span>\|temps\|temps actual\|utilitzarà\|valor\|vista prèvia\) a la vista\([^[:alnum:]]\)/\1 en la vista\2/g
	s/\bicones en els elements en la vista mensual\([^[:alnum:]]\)/icones d'element en la vista mensual\1/g
	s/\bmostren a la <b>vista\([^[:alnum:]]\)/mostren en la <b>vista\1/g
 #
s/\bA les vistes\([^[:alnum:]]\)/En les vistes\1/g
s/\b\(Activa la navegació de llocs\|elements\|miniatures\|mostra\|Mostra les tasques\|Mostra les subtasques\|mostren\|pestanyes\|repetitius\|s'ignora\|seleccionats\|subtasques\|text\) a les vistes\([^[:alnum:]]\)/\1 en les vistes\2/g
# a la visualització
s/\b\(6\|ocultarà\|visible\) a la visualització\([^[:alnum:]]\)/\1 en la visualització\2/g
# a la vora
s/\b\(acceleròmetre\|desviació\|horitzontal\|mostra una etiqueta\|text plegat\|vertical\) a la vora\([^[:alnum:]]\)/\1 en la vora\2/
# a la vostra
	s/\barribar a la vostra\([^[:alnum:]]\)/arribar fins a la vostra\1/g
s/\b\(aniversaris dels contactes\|[Cc]erca\|clic\|com a «%1»\|configurat\|desi\|eines d'empaquetat noves\|entrada nova\|esdevingut un canvi\|establerta\|forma segura\|grup de treball\|identificar una plantilla\|incloure\|llista\|paquet\|problema\|ràpides\|trobat\) a la vostra\([^[:alnum:]]\)/\1 en la vostra\2/g
	s/\b\([Nn]\)o \(és\|està\) a la vostra\([^[:alnum:]]\)/\1o es troba en la vostra\3/g
		s/\bcontacte\( ja\|\) \(és\|està\) a la vostra\([^[:alnum:]]\)/contacte\1 es troba en la vostra\3/g
	s/\b\([Nn]\)o \(estan\|són\) a la vostra\([^[:alnum:]]\)/\1o es troben en la vostra\3/g
 #
s/\b\(reconéixer persones\) a les vostres\([^[:alnum:]]\)/\1 en les vostres\2/g
# a la web
s/\b\([Cc]erca\|ubiqueu les imatges\|una adreça\) a la \([Ww]\)eb\([^[:alnum:]]\)/\1 en la \2eb\3/g
# a la xarxa
    s/\b\([Cc]\)onnectar a la xarxa\([^[:alnum:]]\)/\1onnectar amb la xarxa\2/g
s/\b\(baixi qualsevol fitxer\|[Aa]nuncia el servei\|[Cc]erca\|[Cc]erca dispositius\|compartir elements\|comparteixin\|disponibles\|Monopoly®\|[Pp]arla amb amics\|problema\|reconeixement de les cares\|repositoris\|són nodes propis\|transparents\|transport\|únics\|utilitzar\|Usuaris actuals\) a la xarxa\([^[:alnum:]]\)/\1 en la xarxa\2/g
# a la zona
s/\b\(anteriors\|clic\) a la zona\([^[:alnum:]]\)/\1 en la zona\2/g

# #
# # # # # # # # # # # # # #
#
# al cantó
s/\b\(Transport públic local\) al cantó\([^[:alnum:]]\)/\1 en el cantó\2/g
# al cau
s/\b\(simulació\) al cau\([^[:alnum:]]\)/\1 en el cau\2/g
# al costat
s/\bAl costat \(del servidor\|dret\|esquerre\)\([^[:alnum:]]\)/En el costat \1\2/g
	s/\b\(arrossegueu qualsevol peça\|Moveu-vos\) al costat\([^[:alnum:]]\)/\1 fins al costat\2/g
	s/\bvista costat al costat\([^[:alnum:]]\)/vista costat a costat\1/g
s/\b\(construir un patró idèntic\|De manera predeterminada és\|desades\|doble toc\|hi ha\|Hi ha literals\|mètode estadístic,\|Mostra la barra de desplaçament\|mostrarà els números de les línies\|mostrarà una vora per a les icones\|número d'equació\|penja\|propostes\|reproduir simètricament el patró\|Sense vores\|sis botons\|veus\) al costat\([^[:alnum:]]\)/\1 en el costat\2/g
 #
s/\b\(funciona\) als costats\([^[:alnum:]]\)/\1 en els costats\2/g
# al fòrum
s/\b\([Cc]erqueu l'aplicació %1\|[Dd]ebateu\|debatre-ho\|feu preguntes\) al \(<[^<]\{1,\}>\|«\|\[\|\)\([Ff]\)òrum\([^[:alnum:]]\)/\1 en el \2\3òrum\4/g
 #
s/\b\([Ee]rrors\) als \(<[^<]\{1,\}>\|«\|\[\|\)\([Ff]\)òrums\([^[:alnum:]]\)/\1 en els \2\3òrums\4/g
# al fstab
s/\b\(definida\) al \(<[^<]\{1,\}>\|«\|\[\|\)fstab\([^[:alnum:]]\)/\1 en el \2fstab\3/g
# al giny
s/\b\(indiquen\|llistar els idiomes alternatius\/traduïts preferits\|traduccions en línia\|verificació ortogràfica\) al giny\([^[:alnum:]]\)/\1 en el giny\2/g
# al grup
s/\b\(qüestions\) als \(<[^<]\{1,\}>\|\[\|\)grups\([^[:alnum:]]\)/\1 en els \2grups\3/g
# al món
s/\b\(contactes\) al món\([^[:alnum:]]\)/\1 en el món\2/g
# al monitor
s/\b\(Treballs de clip de superposició\) al monitor\([^[:alnum:]]\)/\1 en el monitor\2/g
# al navegador
s/\b\(apareguin\|Bu&sca\|inici de sessió\|l'agenda i\) al navegador\([^[:alnum:]]\)/\1 en el navegador\2/g
# al núvol
s/\b\(emmagatzemar les vostres dades\|llavors\|Shells\) al núvol\([^[:alnum:]]\)/\1 en el núvol\2/g

# al calaix
s/\b\(mostrar els elements multimèdia remots\) al calaix\([^[:alnum:]]\)/\1 en el calaix\2/
# al canal
s/\b\(tenen lloc\) al \(<[^<]\{1,\}>\|\[\|\)canal\([^[:alnum:]]\)/\1 en el \2canal\3/g
 #
s/\b\(aconseguir actualitzacions\) als canals\([^[:alnum:]]\)/\1 en els canals\2/g
# al cau
s/\b\(simulació\) al cau\([^[:alnum:]]\)/\1 en el cau\2/g
# al codi
	s/\b\"o al codi\([^[:alnum:]]\)/\"o en el codi\1/g
# al botó
s/\bAl botó\([^[:alnum:]]\)/En el botó\1/g
s/\b\(<\/em>\|clic simultani\|dies\|estableix\|lambda\|[Pp]ulsació llarga\|repetidament\|text\) al botó\([^[:alnum:]]\)/\1 en el botó\2/g
 #
    s/\bVincula les tecles del controlador remot de la Wii als botons\([^[:alnum:]]\)/Vincula les tecles del controlador remot de la Wii amb els botons\1/g
s/\bAls botons\([^[:alnum:]]\)/En els botons\1/g
s/\b\(<\/em>\|estableix\|repetidament\|text\) als botons\([^[:alnum:]]\)/\1 en els botons\2/g
# al camí
s/\b\(àlbum\|[Cc]erca\|[Cc]erca[rt]\|disc\|percnt;1\|situar\|troba\) al camí\([^[:alnum:]]\)/\1 en el camí\2/g
s/\b\([Cc]erca\|[Cc]erca[rt]\) als camins\([^[:alnum:]]\)/\1 en els camins\2/g
# al camp
    s/\bescrivint «^el» al camp de cerca\([^[:alnum:]]\)/escrivint «^el» a dins del camp de cerca\1/g
s/\b\(addicionals\|[Aa]dreça\|[Cc]ognom\|compressió\|contacte\|correu\|entrada\|és superior\|escollint\|fosc\|[Nn]om\|número»\|objectiu\|pregunta\|res\|salts de línia\|teclejar\) al camp\([^[:alnum:]]\)/\1 en el camp\2/g
s/\bal camp de sota\([^[:alnum:]]\)/en el camp de sota\1/g
s/\b\(copiaran\|paraules\) als camps\([^[:alnum:]]\)/\1 en els camps\2/g
# al CAS
s/\bA CAS\([^[:alnum:]]\)/En CAS\1/g
# al centre
s/\b\(casella de selecció\) al centre\([^[:alnum:]]\)/\1 en el centre\2/g
# al còmic
s/\b\([Cc]lic del mig\) al còmic\([^[:alnum:]]\)/\1 en el còmic\2/g
# al consell
s/\b\(alarmes\) al consell\([^[:alnum:]]\)/\1 en el consell\2/g
s/\b\(fitxer\|mostraran\) als consells\([^[:alnum:]]\)/\1 en els consells\2/g
# al costat
s/\b\(apareix\) al costat\([^[:alnum:]]\)/\1 en el costat\2/g
# al darrer
s/\b\(interès que s'ha de pagar\) al darrer\([^[:alnum:]]\)/\1 en el darrer\2/g
# al diàleg
s/\bAl diàleg\([^[:alnum:]]\)/En el diàleg\1/g
s/\b\(interface>\|actualització\|aplica\|assumpte\|barreja\|canvis fets\|canvis realitzats\|carpeta\|clar\|col·lecció\|[Cc]onfiguració\|[Cc]onfiguració predeterminada\|[Cc]onfigureu-[hl][ao]\|context\|data\|definiu\|destinatari\|es pot trobar\|especificada\|especificat\|establert\|establerta\|establida\|[Ee]stabliu-la\|executar\|fer\|fitxers\|fitxers, si no s'ha canviat\|icones\|identitats\|intermediari\|introduïu la drecera web\|o\|OCR\|Obre el disseny d'informe\|opció\|opcions\|obrir fitxers d'àudio\|obrir fitxers d'imatge\|ordre\|perfil\|pestanya\|que trieu\|recordatori\|recordatoris\|recurrència\|remitent\|seleccionada més recentment\|seleccionat\|Si és cert,\|so\|so predeterminat\|suprimir\|TLS\|utilitzar-lo\|[Vv]alor predeterminat\) al diàleg\([^[:alnum:]]\)/\1 en el diàleg\2/g
		s/\bdiàleg\(s\|\) d'edició d'alarma\([^[:alnum:]]\)/diàleg\1 d'edició d'una alarma\2/g
		s/\bdiàleg\(s\|\) de selecció de \(la \|\)carpeta\([^[:alnum:]]\)/diàleg\1 de selecció d'una carpeta\3/g
s/\bAls diàlegs\([^[:alnum:]]\)/En els diàlegs\1/g
s/\b\([Cc]onfiguració predeterminada\|horària\|mostri\|reproducció de sons\|[Vv]alor predeterminat\|visualització de la imatge\) als diàlegs\([^[:alnum:]]\)/\1 en els diàlegs\2/g
# al diccionari
s/\b\([Nn]o\) al diccionari\([^[:alnum:]]\)/\1 en el diccionari\2/g
# al directori
s/\b\(addicionals\|adreces\|cap %1\|cerca\|cercar\|cerquis\|configuració\|desarà\|disc\|emmagatzemats\|FIFO\|fitxer\|fitxer nou\|fitxers\|gsc»\|instal·leu\|mantenir\|nom\|ordres\|personalitzats\|registre\|romanen\|situa\|situa[rt]\|troba[rt]\|ubicat normalment\|uninstall`\) al directori\([^[:alnum:]]\)/\1 en el directori\2/g
s/\b\([Cc]anvis\|cercaran\|fitxer d'índex\) als directoris\([^[:alnum:]]\)/\1 en els directoris\2/g
# al disc
s/\b\(apuntar cap a un estil\|canviï\|dades\|desa[rt]\|desaran\|dispositiu\|emmagatzemats\|emmagatzemen\|Error durant l'escriptura\|escenes\|escriptura\|espai\|imatges\|memòria cau\) al disc\([^[:alnum:]]\)/\1 en el disc\2/g
# al dispositiu
s/\b\(sector %1\) al dispositiu\([^[:alnum:]]\)/\1 en el dispositiu\2/g
 #
s/\b\(com\|i\) als dispositius\([^[:alnum:]]\)/\1 en els dispositius\2/g
# al document
s/\bAl document\([^[:alnum:]]\)/En el document\1/g
s/\b\(anàlisi\|canvia\|canvis\|canvis posteriors\|centrar la pantalla\|cercarà\|clicar\|conjunts de marc\|definit\|definits\|error\|establertes\|Desa\|paleta\|present\|text\) al document\([^[:alnum:]]\)/\1 en el document\2/g
	s/\bL'adreça al document\([^[:alnum:]]\)/L'adreça del document\1/g
s/\bAls documents\([^[:alnum:]]\)/En els documents\1/g
s/\b\(esmenes\|inserir\|inserits\|JavaScript\|nivell més gran\|pàgines\|text\) als documents\([^[:alnum:]]\)/\1 en els documents\2/g
# al dorsal
s/\b\(completar\|entrada %1\|gestionat\|sintaxi\|un error\|xarxa\) al dorsal\([^[:alnum:]]\)/\1 en el dorsal\2/g
s/\b\(fallades\|secundàries\|xarxa\) als dorsals\([^[:alnum:]]\)/\1 en els dorsals\2/g
# al fitxer
s/\bAl fi&txer\([^[:alnum:]]\)/En el fi\&txer\1/g
s/\bAl fitxer\([^[:alnum:]]\)/En el fitxer\1/g
	s/\berror de lectura al fitxer\([^[:alnum:]]\)/error de lectura des del fitxer\1/g
	s/\bal fitxer XML\([^[:alnum:]]\)/en el fitxer XML\1/g
s/\(,\|1»\|1<\/b>\|a X11)\|afegir un fitxer de vista prèvia\|afegiran com a referències\|anàlisi\|aparèixer\|aquesta funció\|àudio\/vídeo\|bandera\|bloqueig\|canviades\|canvis\|canvis des de l'exterior\|cap canvi\|cap figura\|caràtula\|caràtules\|[Cc]erca\|[Cc]lau\|codi\|configuració\|continuar\|contrasenyes\|control de canvis\|corresponents\|crides\|dades\|dades de connexió\|definides\|[Dd]esa\|[Dd]esa els resultats\|[Dd]esa la imatge\|desades\|desant-la\|desar\|desar el calendari\|desar la bibliografia\|desar la contrasenya\|desar la imatge\|desat\|desa[rt] la melodia\|desarà\|desen\|dibuix:oficina\|diferents\|disponible\|Element arrel no vàlid\|emmagatzemada\|emmagatzemades\|emmagatzema[rt]\|emmagatzemar la frase de pas\|emmagatzemaran\|enllaç\|enllestides\|[Ee]rror\|error d'anàlisi\|es definia\|es definien\|es mostren\|escriptura\|escriptura de dades del porta-retalls\|Escriu les estadístiques\|escrit\|escriu\|escriurà\|escriure\|1\|escriure els certificats\|escriure els grups\|escriure la clau\|escriure la plantilla de llicència personalitzada\|escriure les subclaus\|especificat\|esperat\|establert\|establerta\|estrelles)\|estigui\|etiqueta\|1<\/b>\|etiquetes\|falten (SD)\|1<\/filename>\|fitxers\|forma diferent\|format de fitxer\|funcions\|Guar&da\|implementació d'àudio\/vídeo\|incrusta\|incrustat\|informació del canal\|instruccions\|llicència\|metadades\|[Mm]ostra\|mostren\|muntatge\|nivell\|o\|opcions diferents\|pàgines\|paraules\|particions\|pistes que\|preferències\|problemes\|rectificació múltiple\|SD)\|subclau\|traducció\|trobat formes\|tros\|ubicacions corresponents\|URL de baixada\|utilitzat\|troba\|vectors\) al fitxer\([^[:alnum:]]\)/\1 en el fitxer\2/g
	s/\b\(Executa l'script\) al \(<[^<]\{1,\}>\|«\|\[\|\)fitxer\([^[:alnum:]]\)/\1 en el \2fitxer\3\1/g
	s/\berror de lectura al fitxer\([^[:alnum:]]\)/error de lectura des del fitxer\1/g
	s/\bmida del caràcter al fitxer\([^[:alnum:]]\)/mida del caràcter per al fitxer\1/g
	s/\bno al fitxer o al lateral\([^[:alnum:]]\)/no en el fitxer o en el lateral\1/g
s/\bAls [Ff]itxers\([^[:alnum:]]\)/En els fitxers\1/g
	s/(als fitxers\([^[:alnum:]]\)/(en els fitxers\1/g
	s/\b\([Nn]omés\|restricció<\/a>\) als fitxers locals\([^[:alnum:]]\)/\1 en els fitxers locals\2/g
s/\b\(canvi del propietari\|canvi dels atributs\|canvis\|canvis des de l'exterior\|canvis fets\|[Cc]erca\|corresponents\|escriuen\|etiquetes\|implementació d'àudio\/vídeo\|línies\|metadades\|o\|que heu fet\|utilitzar-lo\) als fitxers\([^[:alnum:]]\)/\1 en els fitxers\2/g
	s/\bi als fitxers RAW\([^[:alnum:]]\)/i en els fitxers RAW\1/g
	s/\bmonitorar els canvis dels fitxers\([^[:alnum:]]\)/monitorar els canvis en els fitxers\1/g
	s/\bals fitxers de capçalera\([^[:alnum:]]\)/en els fitxers de capçalera\1/g
# al forat
s/\bAl forat\([^[:alnum:]]\)/En el forat\1/g
s/\b\(atrapa'ls\|bala\|caigui\|caure\|desar\|estigui\) al forat\([^[:alnum:]]\)/\1 en el forat\2/g
s/\bAls forats\([^[:alnum:]]\)/En els forats\1/g
s/\b\(posar\|situar-les\) als forats\([^[:alnum:]]\)/\1 en els forats\2/g
# al gestor
s/\b\(blocat\|calendaris\|destinació\|directori actual\|disponible\|[Ii]matges\|[Mm]ostra\|[Oo]bre\|ombres\|visibles\) al gestor\([^[:alnum:]]\)/\1 en el gestor\2/g
# al giny
s/\b\(s'indiquen\) al giny\([^[:alnum:]]\)/\1 en el giny\2/g
# al gràfic
s/\b\(netejar el desordre, tant\) al gràfic\([^[:alnum:]]\)/\1 en el gràfic\2/g
# als jardins
s/\b\(Okular\) als jardins\([^[:alnum:]]\)/\1 en els jardins\2/g
# al laboratori
s/\b\(mesura\|mesurar-les\) al laboratori\([^[:alnum:]]\)/\1 en el laboratori\2/g
# al lateral
s/\b\(escriptura\|situats\) als laterals\([^[:alnum:]]\)/\1 en els laterals\2/g
# al lector
s/\b\(visibles\) als lectors\([^[:alnum:]]\)/\1 en els lectors\2/g
# al llibre
s/\b\(amb la data i el saldo\) al llibre\([^[:alnum:]]\)/\1 en el llibre\2/g
# al lloc
s/\b\(apareixerà\|[Ii]nformeu de tots els errors\|nacional\|unió\) al lloc\([^[:alnum:]]\)/\1 en el lloc\2/g
 #
s/\b\(apareixerà\|descripcions\|plantilles\) als llocs\([^[:alnum:]]\)/\1 en els llocs\2/g
# al menú
s/\bAl menú\([^[:alnum:]]\)/En el menú\1/g
s/\b\(accions»\|Anotacions<\/i>\|aparegui\|apareixen\|capturadora\|cel·les\|cerqueu aquesta acció\|columnes\|compartir\|completa»\|d'usuari\|eines\|entrades\|falten\|finestra\|fitxer»\|habilitar el bloqueig\|hi ha\|Importa<\/b>\|interface>\|Kdesvn\|KGoldrunner\|laterals<\/b>\|[Mm]ostra\|mostrarà\|nom\|opacitat\|possibles\|pot fer\|Potencia la funcionalitat de cerca\|preseleccionats\|ratlles\|retalls»\|segur)\|seleccionada\|seleccionat\|subcircuit»\|trobar\|trobareu\|troben\|usuari\|veieu\|vista»\) al menú\([^[:alnum:]]\)/\1 en el menú\2/g
	s/\bfuncions estan al menú\([^[:alnum:]]\)/funcions es troben en el menú\1/g
	s/\bsímbols als suggeriments i als menús\([^[:alnum:]]\)/símbols en els suggeriments i en els menús\1/g
s/\bAls menús\([^[:alnum:]]\)/En els menús\1/g
s/\b\(cerqueu aquesta acció\|icones\|interface>\|seva acció\|trobar\|troben\|veieu\) als menús\([^[:alnum:]]\)/\1 en els menús\2/g
s/\bAfegeix eina al menú\([^[:alnum:]]\)/Afegeix l'eina al menú\1/g
	s/\bmostrar al menú tradueix\([^[:alnum:]]\)/mostrar en el menú Tradueix\1/g
# al meu
s/\b\(Bigscreen\) al meu\([^[:alnum:]]\)/\1 en el meu\2/g
# al mig
s/\b\(tenen una roda\) al mig\([^[:alnum:]]\)/\1 en el mig\2/g
# al missatge
s/\b\(canvis\|[Cc]erca\|Enllaç\|mencionat\|mostrar\|temps\) al missatge\([^[:alnum:]]\)/\1 en el missatge\2/g
	s/\bfitxer %1 al missatge %2\([^[:alnum:]]\)/fitxer %1 per al missatge %2\1/g
 #
s/\b\(acolorit\|activades\|Bu&sca\|[Cc]erca\|compartició de fitxers\|Enllaços\|inserir\|signatures\|temps\|total\) als missatges\([^[:alnum:]]\)/\1 en els missatges\2/g
# al mòbil
s/\b\(estigui habilitat\) al mòbil\([^[:alnum:]]\)/\1 en el mòbil\2/g
# al mòdul
s/\b\(localitzadors de mailto\) al mòdul\([^[:alnum:]]\)/\1 en el mòdul\2/g
 #
s/\bAls mòduls\([^[:alnum:]]\)/En els mòduls\1/g
# al navegador*
s/\b\(1<\/b>\|agenda i\|àlbums\|autenticació\|[Cc]erca\|diària\|diaris\|directament\|etiquetes\|festiu\|frame»\|geoposició\|grup\|incrustat\|mensual i\|[Mm]ostra\|laborables\|mostren\|pendents\|perfil\|predeterminats<\/i>\|seleccionades\|seleccionats\|setmanal\|valor de la força\|visualitzarà\|web\) al navegador\([^[:alnum:]]\)/\1 en el navegador\2/g
# al nivell
s/\b\(Inserix\) al nivell\([^[:alnum:]]\)/\1 en el nivell\2/g
# al nom
s/\b\([*]»\|d'R\|espais\|tabuladors\) al nom\([^[:alnum:]]\)/\1 en el nom\2/g
	s/\bCerca al Nominatim d'OpenStreetMap\([^[:alnum:]]\)/Cerca en el Nominatim d'OpenStreetMap\1/g
	s/\bnomés al Nom\([^[:alnum:]]\)/només en el Nom\1/g
 #
s/\([_.]»\|barres\|[Cc]ometes\|espais\|icones\|són vàlids\|títols i\|utilitzen\) als noms\([^[:alnum:]]\)/\1 en els noms\2/g
	s/\bals noms d'R\([^[:alnum:]]\)/en els noms d'R\1/g
	s/\bals títols i en els noms\([^[:alnum:]]\)/als títols i als noms\1/g
# al nostre
s/\b\(escriviu un suggeriment\|informeu-ne\) al \(<[^<]\{1,\}>\|«\|\[\|\)nostre\([^[:alnum:]]\)/\1 en el \2nostre\3/g
# al paquet
s/\b\([Tt]roba\|trobat\|trobat cap directori de dades predeterminat\) al paquet\([^[:alnum:]]\)/\1 en el paquet\2/g
# al patró
s/\b\([Ee]rror\) al patró\([^[:alnum:]]\)/\1 en el patró\2/g
# al plafó
s/\bAl plafó\([^[:alnum:]]\)/En el plafó\1/g
s/\b\([Aa]mplada\|apareixerà\|aplicacions i\|baixats\|barra d'eines\|cares<\/u>\|carpeta\|carregar perfils de configuració\|clic\|d'ajuda\|duplicades\|elements\|emergents\|[Ee]specifiqueu un camí absolut\|està buit\|executant\|executant-se\|existents\|gestor de fitxers\|icona\|mostren\|Oculta els elements nous\|posició<\/b>\|ressalteu\|transparència\|veurà\) al plafó\([^[:alnum:]]\)/\1 en el plafó\2/g
s/\b\(Oculta els elements nous\) al quadre\([^[:alnum:]]\)/\1 en el quadre\2/g
	s/\b\(modificar\) al \(<[^<]\{1,\}>\|«\|\[\|\)plafó\([^[:alnum:]]\)/\1 en el \2plafó\3/g
	s/\btroba al Plafó d'eines\([^[:alnum:]]\)/troba en el Plafó d'eines\1/g
s/\bAls plafons\([^[:alnum:]]\)/En els plafons\1/g
s/\b\(\\\n-\|clic\) als plafons\([^[:alnum:]]\)/\1 en els plafons\2/g
# al port
s/\b\(Mòdem\) al port\([^[:alnum:]]\)/\1 en el port\2/g
# al porta-retalls
    s/\bCopiarà el camí del primer element seleccionat al porta-retalls\([^[:alnum:]]\)/Copiarà el camí del primer element seleccionat a dins del porta-retalls\1/g
s/\b\(certificat\|[Cc]opia\|copiar la imatge\|dades útils\|dades vàlides\|de la imatge\|ha actualment\|ha dades\|ha informació\|hi ha\|hi ha cap dada vàlida de fotograma clau\|pantalla\|posa'l\|si n'hi ha,\|[Ss]ubstitueix\|text\) al porta-retalls\([^[:alnum:]]\)/\1 en el porta-retalls\2/g
# al primer
s/\b\(dona més\) als primers\([^[:alnum:]]\)/\1 en els primers\2/g
# al procés
s/\b\(escriptura\|escriure\) al procés\([^[:alnum:]]\)/\1 en el procés\2/g
# al programa
s/\b\(errada\) al programa\([^[:alnum:]]\)/\1 en el programa\2/g
s/\b\(parpelleig de text\|Rust\) als programes\([^[:alnum:]]\)/\1 en els programes\2/g
# al programador
s/\b\([Mm]illores\) al programador\([^[:alnum:]]\)/\1 en el programador\2/g
# al programari
s/\b\(descobert un error\|descobert un problema de seguretat\) al programari\([^[:alnum:]]\)/\1 en el programari\2/g
# al projecte
s/\bAl projecte\([^[:alnum:]]\)/En el projecte\1/g
s/\b\(object_name»\|[Aa]justa el zoom\|[Cc]anvis\|canvis fets\|canvis realitzats\|[Cc]lips usats\|configuració\|[Dd]esa la imatge\|enllaç simbòlic\|enllaços simbòlics\|horària\|1\|trobat cap intermediari\|URL\|utilitzats\) al projecte\([^[:alnum:]]\)/\1 en el projecte\2/g
 #
s/\bAls projectes\([^[:alnum:]]\)/En els projectes\1/g
# al quadre
	s/\bal quadre del terminal\([^[:alnum:]]\)/en el quadre del terminal\1/g
s/\b\([Ee]specifiqueu un camí absolut\|[Mm]ostrar\|selecciona[rt]\|seleccionada\) al quadre\([^[:alnum:]]\)/\1 en el quadre\2/g
	s/\bes classifiquen en \(<[^<]\{1,\}>\|«\|\[\|\)Certificats\([^[:alnum:]]\)/es classifiquen en \1Certificats\2/g
	s/\bIntroduïu una cadena coincident en el quadre\([^[:alnum:]]\)/Introduïu una cadena coincident a dins del quadre\1/g
# al quadro
s/\b\(200202\|aleatòria\|[Aa]mplada\|apareixerà\|aplicacions i\|buit\|calcular\|camí absolut\|cares<\/u>\|carpeta\|correcta\|d'ajuda\|escriure\|especificat\|està buit\|estableix\|executant\|executant-se\|existents\|icona\|introduïu-l[ao]\|mida\|[Mm]illores\|mostra[rt]\|mostrarà\|nom\|nous\|observació\|ordres\|paraules\|seleccionada\|seleccionat\|text\|transparència\|vegades\) al quadro\([^[:alnum:]]\)/\1 en el quadro\2/g
s/\b\(\\\n-\|cliqueu\|[Mm]illores\|utilitzar\) als quadros\([^[:alnum:]]\)/\1 en els quadros\2/g
# al repositori
s/\b\(mantenen\) al repositori\([^[:alnum:]]\)/\1 en el repositori\2/g
# al reproductor
s/\b\(proveu-los\) al reproductor\([^[:alnum:]]\)/\1 en el reproductor\2/g
# al resultat
s/\b\(visibles\) al resultat\([^[:alnum:]]\)/\1 en el resultat\2/g
s/\bals resultats\([^[:alnum:]]\)/en els resultats\1/g
	s/\b\(per\|quant\) en els resultats\([^[:alnum:]]\)/\1 als resultats\2/g
# al sensor
    s/\bLlisqueu\([^[:alnum:]]\)/Feu lliscar\1/g
s/\b\(\(Feu lliscar\|Poseu\) repetidament el vostre \(dit anular\|dit auricular (petit)\|dit índex\|dit mitger\|polze\) \(dret\|esquerre\)\) al sensor\([^[:alnum:]]\)/\1 sobre el sensor\5/g
# al servidor
s/\b\([Ee]rror intern\|iniciar la sessió\|obrir\|pertanyents a les claus de targeta intel·ligent\) al servidor\([^[:alnum:]]\)/\1 en el servidor\2/g
# al seu
	s/\banar al seu codi font\([^[:alnum:]]\)/anar fins al seu codi font\1/g
# al sistema
s/\b\(existeix\|Llocs\) al sistema\([^[:alnum:]]\)/\1 en el sistema\2/g
# al sufix
s/\b\(troba\) al sufix\([^[:alnum:]]\)/\1 en el sufix\2/g
# al suggeriment
s/\b\(símbols\) als suggeriments\([^[:alnum:]]\)/\1 en els suggeriments\2/g
# al tauler
s/\b\(més\) al tauler\([^[:alnum:]]\)/\1 en el tauler\2/g
# al teclat
s/\b\(mirar\|no trobats\) al teclat\([^[:alnum:]]\)/\1 en el teclat\2/g
# al títol
s/\b\(camí complet\|fitxers\|minúscules\|s'inclourà\|velocitat total\|velocitats\) al títol\([^[:alnum:]]\)/\1 en el títol\2/g
	s/\bprimera lletra als &títols\([^[:alnum:]]\)/primera lletra en els \&títols\1/g
# al valor
# al visualitzador / visor
s/\b\(cursor\|fitxer\|imatge\|[Mm]ostra el fitxer\|[Mm]ostrar els vídeos\|mostrarà\|[Oo]bre\|ratolí\|rebudes\|s'obriran\|utilitzarà\|veu\) al vis\(or\|ualitzador\)\([^[:alnum:]]\)/\1 en el visualitzador\3/g
# al vostre
s/\b\(configurada\|configurades\|configurat\|configurats\|emmagatzemant una galeta\|instal·lat el &frameworks;\|KDE\|referir-se a un recurs tal com un fitxer\|Responeu a missatges de text del telèfon\|tal com un fitxer\|Vegeu les notificacions del telèfon\) al vostre\([^[:alnum:]]\)/\1 en el vostre\2/g
# al wiki
    s/\bComunitat KDE Wiki\([^[:alnum:]]\)/wiki de la comunitat KDE\1/g
s/\b\(disponibles\|el vostre compte\|Hi ha disponible una llista d'aquests\|informació genèrica\|present\|quant a aquest projecte\) al \(<[^<]\{1,\}>\|\[\|\)wiki\([^[:alnum:]]\)/\1 en el \2wiki\3/g
# al xat
s/\bAl xat\([^[:alnum:]]\)/En el xat\1/g
s/\b\(Color dels enllaços\|Mostra efectes sofisticats\) al xat\([^[:alnum:]]\)/\1 en el xat\2/g
# #
# # # # # # # # # # # # # #
#
# a un
s/\bamb la imatge original a una meitat\([^[:alnum:]]\)/amb la imatge original en una meitat\1/g
# a un directori
s/\b\(estigui\) a un directori\([^[:alnum:]]\)/\1 en un directori\2/g
# a una paraula
s/\b\(Converteix el missatge\) a una paraula\([^[:alnum:]]\)/\1 en una paraula\2/g
# a una pila
s/\b\(troben\) a una pila\([^[:alnum:]]\)/\1 en una pila\2/g

# #
# # # # # # # # # # # # # #
#
# davall


# #
# # # # # # # # # # # # # #
#
# llocs
s/\ba \(Arnsberg\|Berlín\|Erlangen\|Nuremberg\|Tübingen\), Alemanya\([^[:alnum:]]\)/en \1, Alemanya\2/g
s/\ba Berlín, Màlaga\([^[:alnum:]]\)/en Berlín, Màlaga\1/g
s/\ba Bilbao, Espanya\([^[:alnum:]]\)/en Bilbao, Espanya\1/g
s/\ba la Corunya\([^[:alnum:]]\)/en la Corunya\1/g
s/\ba la República Txeca\([^[:alnum:]]\)/en la República Txeca\1/g
s/\ba Trysil, Noruega\([^[:alnum:]]\)/en Trysil, Noruega\1/g
s/\bals Països Baixos\([^[:alnum:]]\)/en els Països Baixos\1/g
    s/\bavís de viatge» en els Països Baixos\([^[:alnum:]]\)/avís de viatge» als Països Baixos\1/g
# #
# # # # # # # # # # # # # #
#
s/\b\([Cc]\)erca %1 a %2\([^[:alnum:]]\)/\1erca %1 en %2\2/g
s/\b\([Cc]\)erca «%1» a %2\([^[:alnum:]]\)/\1erca «%1» en %2\2/g
s/\bcomunicació lliure a tots els dispositius\([^[:alnum:]]\)/comunicació lliure en tots els dispositius\1/g
s/\bdels missatges als\([^[:alnum:]]\)/dels missatges en els\1/g
s/\bdesar les adreces d'interés a\([^[:alnum:]]\)/guardar les adreces d'interés en\1/g
s/\belements a dispositius muntats\([^[:alnum:]]\)/elements en els dispositius muntats\1/g
s/\b\([Ee]\)mmagatzemar a «\([^[:alnum:]]\)/\1mmagatzemar en «\2/g
s/\b\([Ee]\)scriu els secrets a\([^[:alnum:]]\)/\1scriu els secrets en\2/g
s/\bfalta d'espai al suport d'instal·lació\([^[:alnum:]]\)/falta d'espai en el suport d'instal·lació\1/g
s/\bForça icones del diàleg\([^[:alnum:]]\)/Força icones en el diàleg\1/g
s/\b\([Dd]\)esa a memòria\([^[:alnum:]]\)/\1esa en memòria\2/g
s/\b\([Mm]\)enús contextuals al Konqueror\([^[:alnum:]]\)/\1enús contextuals en el Konqueror\2/g
s/\bmissatges als \(canals\|grups\|missatges\)\([^[:alnum:]]\)/missatges en els \1\2/g
s/\bMostra l'emplaçament a %1\([^[:alnum:]]\)/Mostra l'emplaçament en %1\1/g
s/\b\mostrarà al dissenyador\([^[:alnum:]]\)/mostrarà en el dissenyador\1/g
s/\b\([Nn]\)oms \(de canal\|d'usuari\) UTF8\([^[:alnum:]]\)/\1oms \2 en UTF8\3/g
s/\bnotificar els canvis dels fitxers\([^[:alnum:]]\)/notificar els canvis en els fitxers\1/g
s/\b\([Oo]\)cult a cada carpeta en que\([^[:alnum:]]\)/\1cult en cada carpeta en què\2/g
s/\bopcions de veu del menú d'eines en gris[?]/opcions de veu en gris en el menú d'eines\?/g
s/\bper a tancar a cada pestanya\([^[:alnum:]]\)/per a tancar en cada pestanya\1/g
s/\b\([Pp]\)remeu a qualsevol lloc\([^[:alnum:]]\)/\1remeu en qualsevol lloc\2/g
s/\bque el text resultant\([^[:alnum:]]\)/que el text que en resulti\1/g
s/\buna entrada de l'historial del porta-retalls\([^[:alnum:]]\)/una entrada en l'historial del porta-retalls\1/g

s/\\\([nt]\)- /\\\1/g

:END

}
