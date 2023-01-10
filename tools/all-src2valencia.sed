#!/bin/sed -f

# "tradueix" la capçalera
1,/^msgid / s/\bCatalan/Catalan (Valencian)/g

s/\bLanguage-Team: kde-i18n-ca/Language-Team: Catalan <kde-i18n-ca@kde.org>/g
s/\bLanguage: ca/Language: ca-valencia/g
s/\bX-Pootle-Path: \/ca/X-Pootle-Path: \/ca-valencia/g

# No tradueixis linies que no pertanyin a un msgstr
/^msgstr/,/^#/ {

# No tradueixis les linies comentades ni els msgid
/^#/ b END
/^msgid/ b END

# -> es protegeix \n i \t: les paraules enganxades
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
s/\bteamcode=ca\([^[:alnum:]]\)/teamcode=ca@valencia\1/g
s/\bUneix-te al KDE\([^[:alnum:]]\)/Uniu-vos al KDE\1/g
s/\bvoluntaris que tradueix el KDE al català a\([^[:alnum:]]\)/voluntaris que tradueix KDE al català i l'adapta a la variant valenciana a\1/g

# ser <-> estar / trobar
	# 18.3 Usos dels verbs ser i estar <https://geiec.iec.cat/veure_taula_una.asp?id=166>
s/\bplafó és vertical\([^[:alnum:]]\)/plafó està en vertical\1/g
s/\bés \(actiu\|activa\|activada\|activat\|buida\|buit\|disponible\|en aquesta\|en curs\|en majúscules\|en un estat\|establert\|establerta\|operatiu\|present\)\([^[:alnum:]]\)/està \1\2/g
s/\bestà en \(aquesta sala\)\([^[:alnum:]]\)/es troba en \1\2/g
s/\b\([Ll]\)a partida és empatada\([^[:alnum:]]\)/\1a partida està empatada\2/g
s/\bseran \(disponibles\)\([^[:alnum:]]\)/estaran \1\2/g
s/\b\(hi \|\)són a la llista\([^[:alnum:]]\)/es troben en la llista\2/g
s/\bsón \(actius\|actives\|activades\|activats\|buides\|buits\|disponibles\|en curs\|en un estat\|operatius\|presents\)\([^[:alnum:]]\)/estan \1\2/g
    s/\bLes coses són on esperaríeu\([^[:alnum:]]\)/Les coses es troben on esperaríeu\1/g
	s/\bperò es pot instal·lar a partir dels repositoris de desenvolupament\([^[:alnum:]]\)/però es poden instal·lar a partir dels repositoris de desenvolupament\1/g
	s/\b\([Nn]\)omés està \(actiu\|activa\|activada\|activat\|disponible\)\([^[:alnum:]]\)/\1omés estarà \2\3/g
	s/\b\([Nn]\)omés estan \(actius\|actives\|activades\|activats\|disponibles\)\([^[:alnum:]]\)/\1omés estaran \2\3/g
s/\bestan definits\([^[:alnum:]]\)/es defineixen\1/g
s/\bser causada\([^[:alnum:]]\)/estar causada\1/g
s/\bpoden ser buits\([^[:alnum:]]\)/poden estar buits\1/g
s/\bquan les finestres són a pantalla completa\([^[:alnum:]]\)/quan les finestres estan a pantalla completa\1/g
#
s/\ba on és el\([^[:alnum:]]\)/a on es troba el\1/g
s/\ba on són\( ara\|\) les\([^[:alnum:]]\)/a on es troben\1 les\2/g
s/\bEl contingut del missatge és als adjunts\([^[:alnum:]]\)/El contingut del missatge es troba en els adjunts\1/g
s/\bha de ser a la variable\([^[:alnum:]]\)/s'ha de trobar en la variable\1/g
s/\bencara són en la llista\([^[:alnum:]]\)/encara es troben en la llista\1/g
s/\bés a l'escriptori\([^[:alnum:]]\)/es troba a l'escriptori\1/g
s/\bés al fitxer\([^[:alnum:]]\)/es troba en el fitxer\1/g
s/\bés a la llista\([^[:alnum:]]\)/es troba en la llista\1/g
	s/\b\([Nn]\)o hi es troba\([^[:alnum:]]\)/\1o es troba\2/g
s/\bestà en l'editor\([^[:alnum:]]\)/es troba en l'editor\1/g
s/\bestà en la \(IGU\|llista\)\([^[:alnum:]]\)/es troba en la \1\2/g

s/\bestà instal·lat i a la PATH\([^[:alnum:]]\)/està instal·lat i que es troba en la PATH\1/g
s/\b\([Jj]\)a \(és\|està\) \(a\|en\)\([^[:alnum:]]\)/\1a es troba en\4/g
s/\b\([Jj]\)a és a la seva\([^[:alnum:]]\)/\1a es troba en la seva\2/g
s/\b\([Jj]\)a estan en\([^[:alnum:]]\)/\1a es troben en\2/g
s/\b\([Jj]\)a està en\([^[:alnum:]]\)/\1a es troba en\2/g
s/\b\([Jj]\)a esteu en\([^[:alnum:]]\)/\1a us trobeu en\2/g
s/\bl'enemic és a mig camí\([^[:alnum:]]\)/l'enemic es trobi a mig camí\1/g
s/\bordre és o no en la variable\([^[:alnum:]]\)/ordre es troba o no en la variable\1/g
s/\bque és \(en el\|l'eixida\)\([^[:alnum:]]\)/que es troba \1\2/g
s/\bque són a la\([^[:alnum:]]\)/que es troben en la\1/g
s/\bsón a la safata del projecte\([^[:alnum:]]\)/es troben a la safata del projecte\1/g
s/\bsón a la ubicació\([^[:alnum:]]\)/es troben en la ubicació\1/g
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
s/\bEl %1 està \(desconnectat\|en línia\)\([^[:alnum:]]\)/El -%1 està \1\2/g
s/\bendarrerida des del %1\([^[:alnum:]]\)/endarrerida des del -%1\1/g
s/\bEnregistrat el %1\([^[:alnum:]]\)/Enregistrat el -%1\1/g
s/\bFita finalitzada el %1\([^[:alnum:]]\)/Fita finalitzada el -%1\1/g
s/\bhora \(diürna\|nocturna\) a les %1 i està totalment canviada a les %2\([^[:alnum:]]\)/hora \1 a les -%1 i està totalment canviada a les -%2\2/g
s/\bTasca \(finalitzada\|vençuda\) el %1\([^[:alnum:]]\)/Tasca \1 el -%1\2/g
s/\bVàlid fins el %1\([^[:alnum:]]\)/Vàlid fins el -%1\1/g
#
s/ DB\(us\|US\)\([^[:alnum:]]\)/ D-Bus\2/g
s/\bDigiKam\([^[:alnum:]]\)/digiKam\1/g
	s/\bdel «panorama\([^[:alnum:]]\)/de «panorama\1/g
s/\bFFMpeg\([^[:alnum:]]\)/FFmpeg\1/g
s/\bFFProbe\([^[:alnum:]]\)/FFprobe\1/g
s/\bGithub\([^[:alnum:]]\)/GitHub\1/g
s/\bGitlab\([^[:alnum:]]\)/GitLab\1/g
s/\bKAddressbook\([^[:alnum:]]\)/KAddressBook\1/g
s/\bKCachgrind\([^[:alnum:]]\)/KCachegrind\1/g
s/\bKInfocenter\([^[:alnum:]]\)/KInfoCenter\1/g
s/\bKnights\([^[:alnum:]]\)/KNights\1/g
s/\bKrunner\([^[:alnum:]]\)/KRunner\1/g
s/\bKSysguard\([^[:alnum:]]\)/KSysGuard\1/g
s/\bLytebox\([^[:alnum:]]\)/LyteBox\1/g
s/\bWordnet\([^[:alnum:]]\)/WordNet\1/g
s/\bXwayland\([^[:alnum:]]\)/XWayland\1/g
s/\b\([Aa]\)l \(\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(%1\|%2\|7z\|Affinity\|AllowedIP\|Analyze\|Apport\|Arianna\|Autocrypt\|AVIF\|Baloo\|Balsa\|Banner\|Bash\|Bas[Kk]et\|Batalla naval\|Bazaar\|Bespin\|BibSearch\|BibTeX\|Bittorrent\|Bitbucket\|Blackbox\|Blender\|Blinken\|Blowfish\|Blu-ray\|Blue Angel\|Bluetooth\|BMP\|bodyParam\|Bomber\|Bonsai\|Booth\|Bovo\|Braindump\|bravenec2nd\|Breakout\|Breeze\|Brisa\|Bugzilla\|Buho\|bup\|Burnfree\|Burnproof\|Bzip2\|C++\|Cachegrind\|Calindori\|Callgrind\|Calligra\|Calltree\|Cantor\|CAS\|Catfish\|CDDB\|CDS\|cdrdao\|cdrecord\|cdrskin\|CDV\|Centre d'informació\|Cervisia\|check-config\|checkXML5\|Chessbase\|Choqok\|Chrome\|Chromium\|CIFS\|Cisco\|cjpeg\|Clanbomber\|[Cc]lang\|Clang-Tidy\|ClayRGB\|Clazy\|clazy-standalone\|Clip\|clipboard\|[Cc][Mm]ake\|cmark\|CoCreateInstance\|commander\|CompteEnrere\|Communicator\|ConnectServer\|ConsoleKit\|contactprintthemeeditor\|contactthemeeditor\|contentItem\|convert\|convmv\|copy\|cor.test\|Corel\|Coverity\|Cpp\|CPP\|[Cc]ppcheck\|CRAN\|crontab\|cryfs\|CSV\|CTags\|CSound\|csv\|CUDA\|CUPS\|CurConv\|curconvd\|Cuttlefish\|cvs\|CVS\|D3D9\|[Dd]ataEngine\|data.frame\|D-Bus\|DarkTable\|DavDroid\|dbus\|dcraw\|Debconf\|Desfer\|[Dd]esigner\|dev2bitmap\|dev.print\|DH1080_INIT\|diff\|digiKam\|Digital\|dirmngr\|Discover\|DiSEqC\|displaycal\|div\|Django\|DjVuLibre\|dkim\|dmesg\|DNS\|Docbook\|Dolphin\|dot\|Doxygen\|DPMS\|Dr Konqi\|Dragon\|DrawPerfect\|DrKonqi\|DrKonqi2\|Dropbox\|DuckDuckGo\|dvd+rw-format\|DVI\|dvips\|en_US\|Eloquens\|EnviroInfo\|EPub\|Estació\|EXR\|Facebook\|Falkon\|ffmpeg\|FFmpeg\|ffprobe\|FFprobe\|Fielding\|Fiery\|Filelight\|FileStash\|Firefox\|firewalld\|fish\|FITS\|FLAC\|[Ff]latpak\|Flickr\|Flow\|FluidSynth\|FocusWriter\|Frameworks\|Francis\|freedesktop.org\|frei0r\|FreeType\|FSView\|fwhm\|Gadu-Gadu\|Galeon\|GALR\|GBR\|GCC\|gcc\|gcompris\|GCompris\|gdb\|GDB\|Gemini\|German\|get\|getAuditLog\|GetHotNewStuff\|[Gg]ettext\|Gherkin\|Ghostscript\|GI[FH]\|Gimp\|GIMP\|[Gg]it\|GitHub\|GitKlient\|GitLab\|Glaxnimate\|\.GlobalEnv\|GlobalEnv\|GMail\|GNOME\|GNU\|GnuCash\|GnuPG\|[Gg]nuplot\|GOCR\|gocryptfs\|Gomoku\|Google\|GoogleEart\|GoogleMaps\|_ghostwriter\|ghostwriter\|gop\|GOP\|goto\|gpasm\|GPG\|gpg\|Gpg4win\|gpg-agent\|GpgConf\|gpgsm\|GpgSM\|GPSBabel\|Grammalecte\|grammalected\|Granatier\|Grantlee\|Graphics\|[Gg]raphviz\|Gravatar\|GreaseMonkey\|grep\|GroupWise\|growisofs\|Grub\|GSSAPI\|GStreamer\|Gtk\|GUIProfile\|Gwenview\|Gzip\|h5dump\|HAL\|headerthemeeditor\|Healpix\|[Hh]eaptrack\|HEIF\|Helgrind\|hg\|High\|HiPS\|Hunspell\|IFrame\|Ikona\|Imgur\|input\|inputVectorData\|inputVectorTime\|jAlbum\|Jamendo\|Java\|Java[Ss]cript\|Jitsi\|jitter\|journald\|Jovie\|JPEG\|JPG\|JPL\|JSON\|Ju[Kk]\|[Jj]ulia\|Juniper\|Jupyter\|JXL\|K3b\|KAddressBook\|Kadmos\|KADMOS\|Kaffeine\|Kaidan\|Kairo\|Kajongg\|KAlarm\|Kalendar\|KAlgebra\|Kalk\|Kalzium\|Kamera\|Kamoso\|Kanagram\|Kapman\|KAppTemplate\|Karbon\|Kartographer\|Kasts\|Kate\|KAtomic\|KBabel\|KBackup\|KBibTeX\|KBlackBox\|KBlocks\|KBounce\|KBreakOut\|KBruch\|kbuildsycoca5\|KBuildSycoca\|KCachegrind\|KCalc\|KCharSelect\|KClock\|KCM\|KColorChooser\|KConfig\|KCron\|KDE\|kde4-config\|KDebug\|kdebugdialog5\|KDebugSettings\|kdeconnectd\|kded\|kded5\|KDED\|kdegraphics\|kdeinit\|kdeinit5\|Kdenlive\|kdesrc-build\|kdesu\|kdesudo\|Kdesvn\|KDevelop\|KDialog\|KDiamond\|KDiff3\|KDiskFree\|keditbookmarks\|KeePassXC\|KEuroCalc\|Kexi\|KEXI\|Keysmith\|kf5-config\|KFileDialog\|KFileMetaDataReader\|KFind\|KFloppy\|KFM\|KFourInLine\|KGameRenderer\|KGamma\|kgendesignerplugin\|KGeography\|KGeoTag\|KGet\|KGoldrunner\|KGpg\|KGraphViewer\|KHangMan\|[Kk][Hh]elp[Cc]enter\|Khipu\|khotkeys\|KHotkeys\|khtml\|Kid3\|Kig\|Kigo\|Kile\|Killbots\|Killer\|KImageMapEditor\|KInfoCenter\|KIO\|Kio-Extras\|kiod\|KIPI\|Kirigami\|Kiriki\|Kirogi\|Kiten\|KItinerary\|KJots\|KJournald\|KJumpingCube\|KLauncher\|Kleopatra\|KLettres\|Klickety\|Klimbgrades\|KLines\|Klipper\|ksld\|KMag\|KMagnifier\|KMahjongg\|KMail\|KMenu\|KMines\|KMix\|KMouseTool\|KMouth\|KMPlayer\|KmPlot\|KMuddy\|KMyMoney\|kmymoney\|KNetWalk\|KNewStuff\|KNights\|KNotes\|KNotify\|Kodaskanna\|Koko\|Kolab\|Kolf\|Kollision\|Kolor Lines\|Kolorfill\|KolourPaint\|[Kk]ompare\|Kongress\|Konqueror\|Konquest\|[Kk]onsole\|Kontact\|Kontrast\|Konversation\|Kooka\|Kookbook\|Kopete\|KOrganizer\|KPackage\|KPatience\|KPhotoAlbum\|KPipewire\|KPL\|KPlato\|KPresenter\|[Kk]razy2\|KRDC\|KRegExpEditor\|KRename\|KReport\|KReversi\|K[Rr]fb\|Krita\|Kronometer\|Kross\|KRuler\|KRun\|KRunner\|Krusader\|KSame\|KScreen\|KService\|KShisen\|KSIRC\|KsirK\|ksld\|KSnakeDuel\|KSokoban\|Sokoban\|KSpaceDuel\|Kspell\|KSpread\|KSquares\|Ksshaskpass\|[Kk]st\|KStars\|KSudoku\|KSysGuard\|KSystemLog\|KTeaTime\|KTechlab\|KTelnetService\|KTextEditor\|KTimer\|KTimeTracker\|KTorrent\|KTouch\|KTP\|KTrip\|KTuberling\|KTurtle\|Kube\|Kubric\|Kubrick\|Kuickshow\|KuickShow\|Kup\|KUserFeedback\|KWallet\|kwallet-query\|kwalletd\|KWalletManager\|KWatchGnuPG\|Kwave\|KWeather\|KwikDisk\|KWin\|KWordQuiz\|KWrite\|KXStitch\|Netscreen\|LabPlot\|LanguageTool\|lasso\|Last.fm\|latex\|LaTeX\|Latte\|lattice\|LDAP\|Libarchive\|LibreOffice\|Licentia\|LDAP\|Lightroom\|Lilo\|lin_guider\|LinGuider\|Linux\|Little\|Livechat\|LLDB\|lldb-mi\|loca[lt]e\|lock\|lockd\|logcat\|logger\|Logo\|LoginD\|Lokalize\|Lottie\|Lotus\|LSkat\|Lua\|LyteBox\|LyX\|LZMA\|Mac\|Magic\|Magnatune\|Mail\|mailfilteragent\|Mahjongg\|[Mm]ake\|man\|Mangonel\|Maniphest\|Marble\|Markdown\|[Mm]arlin\|Massif\|Mastodon\|Material\|MathJax\|Matlab\|Matrix\|MauiKit\|MauiManServer\|Maxima\|MBox\|MBoxImporter\|Mediawiki\|meinproc5\|Memcheck\|memcpy\|mencoder\|Mercurial\|merge\|Meson\|MesonManager\|Messenger\|Metalink\|[M̀m]icrobe\|Microsoft\|Milou\|MinGW\|Minuet\|mkdir\|mkisofs\|mmap\|Mobipocket\|ModemManager\|monopd\|move\|Moving\|Mozilla\|mplayer\|MPlayer\|MPRIS2\|mpv\|msgfmt\|msgmerge\|ms_print\|MUD\|MultiMarkdown\|Muon\|MuseScore\|MusicBrainz\|mutex\|muxer\|Mycroft\|mysql\|MySQL\|ncdump\|NeoChat\|Nepomuk\|Netscape\|NetworkManager\|Next[Cc]loud\|Ninja\|NKS\|noatun\|normalize\|Nota\|OCR\|OCRAD\|Office\|Okteta\|Okular\|[OK]RA\|OpenCL\|output\|outputVectorPeriodogram\|p7zip\|PackageKit\|Palapeli\|[Pp]andoc\|Panorama\|PaperKey\|par2\|Pareto\|Parley\|parsha\|Pascale\|Patreon\|P[BGP]M\|pdf\|PDF\|pdflatex\|pdfpages\|pdftk\|PeerTube\|[Pp]erforce\|Peruse\|Phabricator\|phd2logview\|Phonon\|Photoshop\|PhotoSwipe\|PHP\|PHPUnit\|Picmi\|Pidgin\|Pikasso\|pimdataexporter\|ping\|pip3\|PipeWire\|Pix\|Piwik\|Plan\|Planck\|PLANCK\|Planner\|Plasma\|plasmapkg2\|plasmashell\|Plastik\|Playdar\|Plymouth\|PNG\|pngquant\|PolicyKit\|Pology\|Pomodoro\|pool\|Poppler\|Portable\|PostgreSQL\|[Pp]ost[Ss]cript\|PowerDevil\|preparetips5\|Progressive\|ProPhotoRGB\|PSD\|psselect\|pstops\|PTY\|PulseAudio\|Purpose\|pvfViewer\|[Pp]ython\|Python[23]\|pyuic5\|Qalculate\|QApplication\|QCA\|QCommandLineParser\|QFileDialog\|QPGME\|QGraphicsView\|QGuiApplication\|QImageWriter\|QKeychain\|QMake\|QML\|qmljs\|QObject\|Qrca\|QSaveFile\|Qt\|QtChart\|QtComponents\|QtCurve\|QtQuick\|QtWebEngine\|Quicken\|QuickConnect\|Quickstates\|quota\|Quotient\|R\|RAR\|Raw\|raw\|RawTherapee\|readcd\|Real Media\|Redshift\|Refer\|[Rr]eplicode\|RepRap\|ReText\|REUSE\|reviewboard\|rio\|\.rkward\|RKward\|RKWard\|RMarkdown\|Rocs\|Rocket\|RocketChat\|Roliserver\|Rolisteam\|RPG\|RSIBreak\|rsync\|Ruby\|Ruqola\|Runner\|Rust\|Sage\|Samba\|Scilab\|scour\|SDDM\|[Ss]endmail\|sesameResolver\|Sextractor\|shader\|Sheets\|Shelf\|shell\|Showfoto\|[Ss]ieve\|sieveeditor\|SigG\|Sink\|Skanlite\|Skanpage\|Skrooge\|smb\|Smb4K\|S\/MIME\|Snore\|SnoreNotify\|Solid\|Sonicwall\|Soundcloud\|Source\|Spacebar\|Spectacle\|Sqlite\|SQLite\|src\|ssh-add\|sshfs\|SteamOS\|Stellarium\|Step\|Stopmotion\|StretchPlayer\|Strike\|Substance\|Subtitle Composer\|[Ss]ubversion\|sudo\|SV[GN]\|SymbolEditor\|Symmy\|syslog\|[Ss]ystemd\|SystemLog\|Tagged\|TAlbum\|Tangram\|TaskJuggler\|teamd\|[Tt]elepathy\|Tellico\|Template\|Tesseract\|TeX\|The\|Thunderbird\|Thunderbolt\|TIFF\|TLS\|TNamed\|Tok\|Tokodon\|top\|trait\|transcode\|Translate-Toolkit\|trixel\|Trojitá\|Tron\|tun\|TurtleScript\|Tuxpaint\|UberWriter\|UFRaw\|Umbrello\|unarchiver\|UNIX\|unpack\|unrar\|USSD\|Vakzination\|Valgrind\|VcdImager\|vcdxrip\|Vegastrike\|[Vv]era++\|Vi\|VLC\|VmSize\|VNC\|vsync\|Vvave\|Wacom\|Wake\|WashiPad\|Watney\|Wayland\|Weather\|WebEngine\|webhook\|WebKit\|weboob\|WEBP\|WebP\|WebRTC\|Will\|Windows\|winid\|WinPT\|Wolfram\|woob\|Word\|WordNet\|WordPerfect\|Words\|XDebug\|XFig\|xfreerdp\|Xine\|xjdic\|xmllint\|XML\|XSudoku\|XVideo\|XWayland\|Yahtzee\|Yakuake\|Youtube\|Zanshin\|Zeroconf\|Zotero\|Zstd\)\([^[:alnum:]]\)/\1 \2\3\4/g
s/\b\([Ee]\)l \(\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(%1\|%2\|7z\|Affinity\|AllowedIP\|Analyze\|Apport\|Arianna\|Autocrypt\|AVIF\|Baloo\|Balsa\|Banner\|Bash\|Bas[Kk]et\|Batalla naval\|Bazaar\|Bespin\|BibSearch\|BibTeX\|Bittorrent\|Bitbucket\|Blackbox\|Blender\|Blinken\|Blowfish\|Blu-ray\|Blue Angel\|Bluetooth\|BMP\|bodyParam\|Bomber\|Bonsai\|Booth\|Bovo\|Braindump\|bravenec2nd\|Breakout\|Breeze\|Brisa\|Bugzilla\|Buho\|bup\|Burnfree\|Burnproof\|Bzip2\|C++\|Cachegrind\|Calindori\|Callgrind\|Calligra\|Calltree\|Cantor\|CAS\|Catfish\|CDDB\|CDS\|cdrdao\|cdrecord\|cdrskin\|CDV\|Centre d'informació\|Cervisia\|check-config\|checkXML5\|Chessbase\|Choqok\|Chrome\|Chromium\|CIFS\|Cisco\|cjpeg\|Clanbomber\|[Cc]lang\|Clang-Tidy\|ClayRGB\|Clazy\|clazy-standalone\|Clip\|clipboard\|[Cc][Mm]ake\|cmark\|CoCreateInstance\|commander\|CompteEnrere\|Communicator\|ConnectServer\|ConsoleKit\|contactprintthemeeditor\|contactthemeeditor\|contentItem\|convert\|convmv\|copy\|cor.test\|Corel\|Coverity\|Cpp\|CPP\|[Cc]ppcheck\|CRAN\|crontab\|cryfs\|CSV\|CTags\|CSound\|csv\|CUDA\|CUPS\|CurConv\|curconvd\|Cuttlefish\|cvs\|CVS\|D3D9\|[Dd]ataEngine\|data.frame\|D-Bus\|DarkTable\|DavDroid\|dbus\|dcraw\|Debconf\|Desfer\|[Dd]esigner\|dev2bitmap\|dev.print\|DH1080_INIT\|diff\|digiKam\|Digital\|dirmngr\|Discover\|DiSEqC\|displaycal\|div\|Django\|DjVuLibre\|dkim\|dmesg\|DNS\|Docbook\|Dolphin\|dot\|Doxygen\|DPMS\|Dr Konqi\|Dragon\|DrawPerfect\|DrKonqi\|DrKonqi2\|Dropbox\|DuckDuckGo\|dvd+rw-format\|DVI\|dvips\|en_US\|Eloquens\|EnviroInfo\|EPub\|Estació\|EXR\|Facebook\|Falkon\|ffmpeg\|FFmpeg\|ffprobe\|FFprobe\|Fielding\|Fiery\|Filelight\|FileStash\|Firefox\|firewalld\|fish\|FITS\|FLAC\|[Ff]latpak\|Flickr\|Flow\|FluidSynth\|FocusWriter\|Frameworks\|Francis\|freedesktop.org\|frei0r\|FreeType\|FSView\|fwhm\|Gadu-Gadu\|Galeon\|GALR\|GBR\|GCC\|gcc\|gcompris\|GCompris\|gdb\|GDB\|Gemini\|German\|get\|getAuditLog\|GetHotNewStuff\|[Gg]ettext\|Gherkin\|Ghostscript\|GI[FH]\|Gimp\|GIMP\|[Gg]it\|GitHub\|GitKlient\|GitLab\|Glaxnimate\|\.GlobalEnv\|GlobalEnv\|GMail\|GNOME\|GNU\|GnuCash\|GnuPG\|[Gg]nuplot\|GOCR\|gocryptfs\|Gomoku\|Google\|GoogleEart\|GoogleMaps\|_ghostwriter\|ghostwriter\|gop\|GOP\|goto\|gpasm\|GPG\|gpg\|Gpg4win\|gpg-agent\|GpgConf\|gpgsm\|GpgSM\|GPSBabel\|Grammalecte\|grammalected\|Granatier\|Grantlee\|Graphics\|[Gg]raphviz\|Gravatar\|GreaseMonkey\|grep\|GroupWise\|growisofs\|Grub\|GSSAPI\|GStreamer\|Gtk\|GUIProfile\|Gwenview\|Gzip\|h5dump\|HAL\|headerthemeeditor\|Healpix\|[Hh]eaptrack\|HEIF\|Helgrind\|hg\|High\|HiPS\|Hunspell\|IFrame\|Ikona\|Imgur\|input\|inputVectorData\|inputVectorTime\|jAlbum\|Jamendo\|Java\|Java[Ss]cript\|Jitsi\|jitter\|journald\|Jovie\|JPEG\|JPG\|JPL\|JSON\|Ju[Kk]\|[Jj]ulia\|Juniper\|Jupyter\|JXL\|K3b\|KAddressBook\|Kadmos\|KADMOS\|Kaffeine\|Kaidan\|Kairo\|Kajongg\|KAlarm\|Kalendar\|KAlgebra\|Kalk\|Kalzium\|Kamera\|Kamoso\|Kanagram\|Kapman\|KAppTemplate\|Karbon\|Kartographer\|Kasts\|Kate\|KAtomic\|KBabel\|KBackup\|KBibTeX\|KBlackBox\|KBlocks\|KBounce\|KBreakOut\|KBruch\|kbuildsycoca5\|KBuildSycoca\|KCachegrind\|KCalc\|KCharSelect\|KClock\|KCM\|KColorChooser\|KConfig\|KCron\|KDE\|kde4-config\|KDebug\|kdebugdialog5\|KDebugSettings\|kdeconnectd\|kded\|kded5\|KDED\|kdegraphics\|kdeinit\|kdeinit5\|Kdenlive\|kdesrc-build\|kdesu\|kdesudo\|Kdesvn\|KDevelop\|KDialog\|KDiamond\|KDiff3\|KDiskFree\|keditbookmarks\|KeePassXC\|KEuroCalc\|Kexi\|KEXI\|Keysmith\|kf5-config\|KFileDialog\|KFileMetaDataReader\|KFind\|KFloppy\|KFM\|KFourInLine\|KGameRenderer\|KGamma\|kgendesignerplugin\|KGeography\|KGeoTag\|KGet\|KGoldrunner\|KGpg\|KGraphViewer\|KHangMan\|[Kk][Hh]elp[Cc]enter\|Khipu\|khotkeys\|KHotkeys\|khtml\|Kid3\|Kig\|Kigo\|Kile\|Killbots\|Killer\|KImageMapEditor\|KInfoCenter\|KIO\|Kio-Extras\|kiod\|KIPI\|Kirigami\|Kiriki\|Kirogi\|Kiten\|KItinerary\|KJots\|KJournald\|KJumpingCube\|KLauncher\|Kleopatra\|KLettres\|Klickety\|Klimbgrades\|KLines\|Klipper\|ksld\|KMag\|KMagnifier\|KMahjongg\|KMail\|KMenu\|KMines\|KMix\|KMouseTool\|KMouth\|KMPlayer\|KmPlot\|KMuddy\|KMyMoney\|kmymoney\|KNetWalk\|KNewStuff\|KNights\|KNotes\|KNotify\|Kodaskanna\|Koko\|Kolab\|Kolf\|Kollision\|Kolor Lines\|Kolorfill\|KolourPaint\|[Kk]ompare\|Kongress\|Konqueror\|Konquest\|[Kk]onsole\|Kontact\|Kontrast\|Konversation\|Kooka\|Kookbook\|Kopete\|KOrganizer\|KPackage\|KPatience\|KPhotoAlbum\|KPipewire\|KPL\|KPlato\|KPresenter\|[Kk]razy2\|KRDC\|KRegExpEditor\|KRename\|KReport\|KReversi\|K[Rr]fb\|Krita\|Kronometer\|Kross\|KRuler\|KRun\|KRunner\|Krusader\|KSame\|KScreen\|KService\|KShisen\|KSIRC\|KsirK\|ksld\|KSnakeDuel\|KSokoban\|Sokoban\|KSpaceDuel\|Kspell\|KSpread\|KSquares\|Ksshaskpass\|[Kk]st\|KStars\|KSudoku\|KSysGuard\|KSystemLog\|KTeaTime\|KTechlab\|KTelnetService\|KTextEditor\|KTimer\|KTimeTracker\|KTorrent\|KTouch\|KTP\|KTrip\|KTuberling\|KTurtle\|Kube\|Kubric\|Kubrick\|Kuickshow\|KuickShow\|Kup\|KUserFeedback\|KWallet\|kwallet-query\|kwalletd\|KWalletManager\|KWatchGnuPG\|Kwave\|KWeather\|KwikDisk\|KWin\|KWordQuiz\|KWrite\|KXStitch\|Netscreen\|LabPlot\|LanguageTool\|lasso\|Last.fm\|latex\|LaTeX\|Latte\|lattice\|LDAP\|Libarchive\|LibreOffice\|Licentia\|LDAP\|Lightroom\|Lilo\|lin_guider\|LinGuider\|Linux\|Little\|Livechat\|LLDB\|lldb-mi\|loca[lt]e\|lock\|lockd\|logcat\|logger\|Logo\|LoginD\|Lokalize\|Lottie\|Lotus\|LSkat\|Lua\|LyteBox\|LyX\|LZMA\|Mac\|Magic\|Magnatune\|Mail\|mailfilteragent\|Mahjongg\|[Mm]ake\|man\|Mangonel\|Maniphest\|Marble\|Markdown\|[Mm]arlin\|Massif\|Mastodon\|Material\|MathJax\|Matlab\|Matrix\|MauiKit\|MauiManServer\|Maxima\|MBox\|MBoxImporter\|Mediawiki\|meinproc5\|Memcheck\|memcpy\|mencoder\|Mercurial\|merge\|Meson\|MesonManager\|Messenger\|Metalink\|[M̀m]icrobe\|Microsoft\|Milou\|MinGW\|Minuet\|mkdir\|mkisofs\|mmap\|Mobipocket\|ModemManager\|monopd\|move\|Moving\|Mozilla\|mplayer\|MPlayer\|MPRIS2\|mpv\|msgfmt\|msgmerge\|ms_print\|MUD\|MultiMarkdown\|Muon\|MuseScore\|MusicBrainz\|mutex\|muxer\|Mycroft\|mysql\|MySQL\|ncdump\|NeoChat\|Nepomuk\|Netscape\|NetworkManager\|Next[Cc]loud\|Ninja\|NKS\|noatun\|normalize\|Nota\|OCR\|OCRAD\|Office\|Okteta\|Okular\|[OK]RA\|OpenCL\|output\|outputVectorPeriodogram\|p7zip\|PackageKit\|Palapeli\|[Pp]andoc\|Panorama\|PaperKey\|par2\|Pareto\|Parley\|parsha\|Pascale\|Patreon\|P[BGP]M\|pdf\|PDF\|pdflatex\|pdfpages\|pdftk\|PeerTube\|[Pp]erforce\|Peruse\|Phabricator\|phd2logview\|Phonon\|Photoshop\|PhotoSwipe\|PHP\|PHPUnit\|Picmi\|Pidgin\|Pikasso\|pimdataexporter\|ping\|pip3\|PipeWire\|Pix\|Piwik\|Plan\|Planck\|PLANCK\|Planner\|Plasma\|plasmapkg2\|plasmashell\|Plastik\|Playdar\|Plymouth\|PNG\|pngquant\|PolicyKit\|Pology\|Pomodoro\|pool\|Poppler\|Portable\|PostgreSQL\|[Pp]ost[Ss]cript\|PowerDevil\|preparetips5\|Progressive\|ProPhotoRGB\|PSD\|psselect\|pstops\|PTY\|PulseAudio\|Purpose\|pvfViewer\|[Pp]ython\|Python[23]\|pyuic5\|Qalculate\|QApplication\|QCA\|QCommandLineParser\|QFileDialog\|QPGME\|QGraphicsView\|QGuiApplication\|QImageWriter\|QKeychain\|QMake\|QML\|qmljs\|QObject\|Qrca\|QSaveFile\|Qt\|QtChart\|QtComponents\|QtCurve\|QtQuick\|QtWebEngine\|Quicken\|QuickConnect\|Quickstates\|quota\|Quotient\|R\|RAR\|Raw\|raw\|RawTherapee\|readcd\|Real Media\|Redshift\|Refer\|[Rr]eplicode\|RepRap\|ReText\|REUSE\|reviewboard\|rio\|\.rkward\|RKward\|RKWard\|RMarkdown\|Rocs\|Rocket\|RocketChat\|Roliserver\|Rolisteam\|RPG\|RSIBreak\|rsync\|Ruby\|Ruqola\|Runner\|Rust\|Sage\|Samba\|Scilab\|scour\|SDDM\|[Ss]endmail\|sesameResolver\|Sextractor\|shader\|Sheets\|Shelf\|shell\|Showfoto\|[Ss]ieve\|sieveeditor\|SigG\|Sink\|Skanlite\|Skanpage\|Skrooge\|smb\|Smb4K\|S\/MIME\|Snore\|SnoreNotify\|Solid\|Sonicwall\|Soundcloud\|Source\|Spacebar\|Spectacle\|Sqlite\|SQLite\|src\|ssh-add\|sshfs\|SteamOS\|Stellarium\|Step\|Stopmotion\|StretchPlayer\|Strike\|Substance\|Subtitle Composer\|[Ss]ubversion\|sudo\|SV[GN]\|SymbolEditor\|Symmy\|syslog\|[Ss]ystemd\|SystemLog\|Tagged\|TAlbum\|Tangram\|TaskJuggler\|teamd\|[Tt]elepathy\|Tellico\|Template\|Tesseract\|TeX\|The\|Thunderbird\|Thunderbolt\|TIFF\|TLS\|TNamed\|Tok\|Tokodon\|top\|trait\|transcode\|Translate-Toolkit\|trixel\|Trojitá\|Tron\|tun\|TurtleScript\|Tuxpaint\|UberWriter\|UFRaw\|Umbrello\|unarchiver\|UNIX\|unpack\|unrar\|USSD\|Vakzination\|Valgrind\|VcdImager\|vcdxrip\|Vegastrike\|[Vv]era++\|Vi\|VLC\|VmSize\|VNC\|vsync\|Vvave\|Wacom\|Wake\|WashiPad\|Watney\|Wayland\|Weather\|WebEngine\|webhook\|WebKit\|weboob\|WEBP\|WebP\|WebRTC\|Will\|Windows\|winid\|WinPT\|Wolfram\|woob\|Word\|WordNet\|WordPerfect\|Words\|XDebug\|XFig\|xfreerdp\|Xine\|xjdic\|xmllint\|XML\|XSudoku\|XVideo\|XWayland\|Yahtzee\|Yakuake\|Youtube\|Zanshin\|Zeroconf\|Zotero\|Zstd\)\([^[:alnum:]]\)/\2\3\4/g
s/\b\([Dd]\)el\(s\|\) \(\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(%1\|%2\|7z\|Affinity\|AllowedIP\|Analyze\|Apport\|Arianna\|Autocrypt\|AVIF\|Baloo\|Balsa\|Banner\|Bash\|Bas[Kk]et\|Batalla naval\|Bazaar\|Bespin\|BibSearch\|BibTeX\|Bitbucket\|Bittorrent\|Blackbox\|Blender\|Blinken\|Blowfish\|Blu-ray\|Blue Angel\|Bluetooth\|BMP\|bodyParam\|Bomber\|Bonsai\|Booth\|Bovo\|Braindump\|bravenec2nd\|Breakout\|Breeze\|Brisa\|Bugzilla\|Buho\|bup\|Burnfree\|Burnproof\|Bzip2\|C++\|Cachegrind\|Calindori\|Callgrind\|Calligra\|Calltree\|Cantor\|CAS\|Catfish\|CDDB\|CDS\|cdrdao\|cdrecord\|cdrskin\|CDV\|Centre d'informació\|Cervisia\|check-config\|checkXML5\|Chessbase\|Choqok\|Chrome\|Chromium\|CIFS\|Cisco\|cjpeg\|Clanbomber\|[Cc]lang\|Clang-Tidy\|ClayRGB\|Clazy\|clazy-standalone\|Clip\|clipboard\|[Cc][Mm]ake\|cmark\|CoCreateInstance\|commander\|CompteEnrere\|Communicator\|ConnectServer\|ConsoleKit\|contactprintthemeeditor\|contactthemeeditor\|contentItem\|convert\|convmv\|copy\|cor.test\|Corel\|Coverity\|Cpp\|CPP\|[Cc]ppcheck\|CRAN\|crontab\|cryfs\|CSV\|CTags\|CSound\|csv\|CUDA\|CUPS\|CurConv\|curconvd\|Cuttlefish\|cvs\|CVS\|D3D9\|[Dd]ataEngine\|data.frame\|D-Bus\|DarkTable\|DavDroid\|dbus\|dcraw\|Debconf\|Desfer\|[Dd]esigner\|dev2bitmap\|dev.print\|DH1080_INIT\|diff\|digiKam\|Digital\|dirmngr\|Discover\|DiSEqC\|displaycal\|div\|Django\|DjVuLibre\|dkim\|dmesg\|DNS\|Docbook\|Dolphin\|dot\|Doxygen\|DPMS\|Dr Konqi\|Dragon\|DrawPerfect\|DrKonqi\|DrKonqi2\|Dropbox\|DuckDuckGo\|dvd+rw-format\|DVI\|dvips\|en_US\|Eloquens\|EnviroInfo\|EPub\|Estació\|EXR\|Facebook\|Falkon\|ffmpeg\|FFmpeg\|ffprobe\|FFprobe\|Fielding\|Fiery\|Filelight\|FileStash\|Firefox\|firewalld\|fish\|FITS\|FLAC\|[Ff]latpak\|Flickr\|Flow\|FluidSynth\|FocusWriter\|Frameworks\|Francis\|freedesktop.org\|frei0r\|FreeType\|FSView\|fwhm\|Gadu-Gadu\|Galeon\|GALR\|GBR\|GCC\|gcc\|gcompris\|GCompris\|gdb\|GDB\|Gemini\|German\|get\|getAuditLog\|GetHotNewStuff\|[Gg]ettext\|Gherkin\|Ghostscript\|GI[FH]\|Gimp\|GIMP\|[Gg]it\|GitHub\|GitKlient\|GitLab\|Glaxnimate\|\.GlobalEnv\|GlobalEnv\|GMail\|GNOME\|GNU\|GnuCash\|GnuPG\|[Gg]nuplot\|GOCR\|gocryptfs\|Gomoku\|Google\|GoogleEart\|GoogleMaps\|_ghostwriter\|ghostwriter\|gop\|GOP\|goto\|gpasm\|GPG\|gpg\|Gpg4win\|gpg-agent\|GpgConf\|gpgsm\|GpgSM\|GPSBabel\|Grammalecte\|grammalected\|Granatier\|Grantlee\|Graphics\|[Gg]raphviz\|Gravatar\|GreaseMonkey\|grep\|GroupWise\|growisofs\|Grub\|GSSAPI\|GStreamer\|Gtk\|GUIProfile\|Gwenview\|Gzip\|h5dump\|HAL\|headerthemeeditor\|Healpix\|[Hh]eaptrack\|HEIF\|Helgrind\|hg\|High\|HiPS\|Hunspell\|IFrame\|Ikona\|Imgur\|input\|inputVectorData\|inputVectorTime\|jAlbum\|Jamendo\|Java\|Java[Ss]cript\|Jitsi\|jitter\|journald\|Jovie\|JPEG\|JPG\|JPL\|JSON\|Ju[Kk]\|[Jj]ulia\|Juniper\|Jupyter\|JXL\|K3b\|KAddressBook\|Kadmos\|KADMOS\|Kaffeine\|Kaidan\|Kairo\|Kajongg\|KAlarm\|Kalendar\|KAlgebra\|Kalk\|Kalzium\|Kamera\|Kamoso\|Kanagram\|Kapman\|KAppTemplate\|Karbon\|Kartographer\|Kasts\|Kate\|KAtomic\|KBabel\|KBackup\|KBibTeX\|KBlackBox\|KBlocks\|KBounce\|KBreakOut\|KBruch\|kbuildsycoca5\|KBuildSycoca\|KCachegrind\|KCalc\|KCharSelect\|KClock\|KCM\|KColorChooser\|KConfig\|KCron\|KDE\|kde4-config\|KDebug\|kdebugdialog5\|KDebugSettings\|kdeconnectd\|kded\|kded5\|KDED\|kdegraphics\|kdeinit\|kdeinit5\|Kdenlive\|kdesrc-build\|kdesu\|kdesudo\|Kdesvn\|KDevelop\|KDialog\|KDiamond\|KDiff3\|KDiskFree\|keditbookmarks\|KeePassXC\|KEuroCalc\|Kexi\|KEXI\|Keysmith\|kf5-config\|KFileDialog\|KFileMetaDataReader\|KFind\|KFloppy\|KFM\|KFourInLine\|KGameRenderer\|KGamma\|kgendesignerplugin\|KGeography\|KGeoTag\|KGet\|KGoldrunner\|KGpg\|KGraphViewer\|KHangMan\|[Kk][Hh]elp[Cc]enter\|Khipu\|khotkeys\|KHotkeys\|khtml\|Kid3\|Kig\|Kigo\|Kile\|Killbots\|Killer\|KImageMapEditor\|KInfoCenter\|KIO\|Kio-Extras\|kiod\|KIPI\|Kirigami\|Kiriki\|Kirogi\|Kiten\|KItinerary\|KJots\|KJournald\|KJumpingCube\|KLauncher\|Kleopatra\|KLettres\|Klickety\|Klimbgrades\|KLines\|Klipper\|ksld\|KMag\|KMagnifier\|KMahjongg\|KMail\|KMenu\|KMines\|KMix\|KMouseTool\|KMouth\|KMPlayer\|KmPlot\|KMuddy\|KMyMoney\|kmymoney\|KNetWalk\|KNewStuff\|KNights\|KNotes\|KNotify\|Kodaskanna\|Koko\|Kolab\|Kolf\|Kollision\|Kolor Lines\|Kolorfill\|KolourPaint\|[Kk]ompare\|Kongress\|Konqueror\|Konquest\|[Kk]onsole\|Kontact\|Kontrast\|Konversation\|Kooka\|Kookbook\|Kopete\|KOrganizer\|KPackage\|KPatience\|KPhotoAlbum\|KPipewire\|KPL\|KPlato\|KPresenter\|[Kk]razy2\|KRDC\|KRegExpEditor\|KRename\|KReport\|KReversi\|K[Rr]fb\|Krita\|Kronometer\|Kross\|KRuler\|KRun\|KRunner\|Krusader\|KSame\|KScreen\|KService\|KShisen\|KSIRC\|KsirK\|ksld\|KSnakeDuel\|KSokoban\|Sokoban\|KSpaceDuel\|Kspell\|KSpread\|KSquares\|Ksshaskpass\|[Kk]st\|KStars\|KSudoku\|KSysGuard\|KSystemLog\|KTeaTime\|KTechlab\|KTelnetService\|KTextEditor\|KTimer\|KTimeTracker\|KTorrent\|KTouch\|KTP\|KTrip\|KTuberling\|KTurtle\|Kube\|Kubric\|Kubrick\|Kuickshow\|KuickShow\|Kup\|KUserFeedback\|KWallet\|kwallet-query\|kwalletd\|KWalletManager\|KWatchGnuPG\|Kwave\|KWeather\|KwikDisk\|KWin\|KWordQuiz\|KWrite\|KXStitch\|Netscreen\|LabPlot\|LanguageTool\|lasso\|Last.fm\|latex\|LaTeX\|Latte\|lattice\|LDAP\|Libarchive\|LibreOffice\|Licentia\|LDAP\|Lightroom\|Lilo\|lin_guider\|LinGuider\|Linux\|Little\|Livechat\|LLDB\|lldb-mi\|loca[lt]e\|lock\|lockd\|logcat\|logger\|Logo\|LoginD\|Lokalize\|Lottie\|Lotus\|LSkat\|Lua\|LyteBox\|LyX\|LZMA\|Mac\|Magic\|Magnatune\|Mail\|mailfilteragent\|Mahjongg\|[Mm]ake\|man\|Mangonel\|Maniphest\|Marble\|Markdown\|[Mm]arlin\|Massif\|Mastodon\|Material\|MathJax\|Matlab\|Matrix\|MauiKit\|MauiManServer\|Maxima\|MBox\|MBoxImporter\|Mediawiki\|meinproc5\|Memcheck\|memcpy\|mencoder\|Mercurial\|merge\|Meson\|MesonManager\|Messenger\|Metalink\|[M̀m]icrobe\|Microsoft\|Milou\|MinGW\|Minuet\|mkdir\|mkisofs\|mmap\|Mobipocket\|ModemManager\|monopd\|move\|Moving\|Mozilla\|mplayer\|MPlayer\|MPRIS2\|mpv\|msgfmt\|msgmerge\|ms_print\|MUD\|MultiMarkdown\|Muon\|MuseScore\|MusicBrainz\|mutex\|muxer\|Mycroft\|mysql\|MySQL\|ncdump\|NeoChat\|Nepomuk\|Netscape\|NetworkManager\|Next[Cc]loud\|Ninja\|NKS\|noatun\|normalize\|Nota\|OCR\|OCRAD\|Office\|Okteta\|Okular\|[OK]RA\|OpenCL\|output\|outputVectorPeriodogram\|p7zip\|PackageKit\|Palapeli\|[Pp]andoc\|Panorama\|PaperKey\|par2\|Pareto\|Parley\|parsha\|Pascale\|Patreon\|P[BGP]M\|pdf\|PDF\|pdflatex\|pdfpages\|pdftk\|PeerTube\|[Pp]erforce\|Peruse\|Phabricator\|phd2logview\|Phonon\|Photoshop\|PhotoSwipe\|PHP\|PHPUnit\|Picmi\|Pidgin\|Pikasso\|pimdataexporter\|ping\|pip3\|PipeWire\|Pix\|Piwik\|Plan\|Planck\|PLANCK\|Planner\|Plasma\|plasmapkg2\|plasmashell\|Plastik\|Playdar\|Plymouth\|PNG\|pngquant\|PolicyKit\|Pology\|Pomodoro\|pool\|Poppler\|Portable\|PostgreSQL\|[Pp]ost[Ss]cript\|PowerDevil\|preparetips5\|Progressive\|ProPhotoRGB\|PSD\|psselect\|pstops\|PTY\|PulseAudio\|Purpose\|pvfViewer\|[Pp]ython\|Python[23]\|pyuic5\|Qalculate\|QApplication\|QCA\|QCommandLineParser\|QFileDialog\|QPGME\|QGraphicsView\|QGuiApplication\|QImageWriter\|QKeychain\|QMake\|QML\|qmljs\|QObject\|Qrca\|QSaveFile\|Qt\|QtChart\|QtComponents\|QtCurve\|QtQuick\|QtWebEngine\|Quicken\|QuickConnect\|Quickstates\|quota\|Quotient\|R\|RAR\|Raw\|raw\|RawTherapee\|readcd\|Real Media\|Redshift\|Refer\|[Rr]eplicode\|RepRap\|ReText\|REUSE\|reviewboard\|rio\|\.rkward\|RKward\|RKWard\|RMarkdown\|Rocs\|Rocket\|RocketChat\|Roliserver\|Rolisteam\|RPG\|RSIBreak\|rsync\|Ruby\|Ruqola\|Runner\|Rust\|Sage\|Samba\|Scilab\|scour\|SDDM\|[Ss]endmail\|sesameResolver\|Sextractor\|shader\|Sheets\|Shelf\|shell\|Showfoto\|[Ss]ieve\|sieveeditor\|SigG\|Sink\|Skanlite\|Skanpage\|Skrooge\|smb\|Smb4K\|S\/MIME\|Snore\|SnoreNotify\|Solid\|Sonicwall\|Soundcloud\|Source\|Spacebar\|Sqlite\|SQLite\|src\|ssh-add\|sshfs\|SteamOS\|Stellarium\|Step\|Stopmotion\|StretchPlayer\|Strike\|Substance\|Subtitle Composer\|[Ss]ubversion\|sudo\|SV[GN]\|SymbolEditor\|Symmy\|syslog\|[Ss]ystemd\|SystemLog\|Tagged\|TAlbum\|Tangram\|TaskJuggler\|teamd\|[Tt]elepathy\|Tellico\|Template\|Tesseract\|TeX\|The\|Thunderbird\|Thunderbolt\|TIFF\|TLS\|TNamed\|Tok\|Tokodon\|top\|trait\|transcode\|Translate-Toolkit\|trixel\|Trojitá\|Tron\|tun\|TurtleScript\|Tuxpaint\|UberWriter\|UFRaw\|Umbrello\|unarchiver\|UNIX\|unpack\|unrar\|USSD\|Vakzination\|Valgrind\|VcdImager\|vcdxrip\|Vegastrike\|[Vv]era++\|Vi\|VLC\|VmSize\|VNC\|vsync\|Vvave\|Wacom\|Wake\|WashiPad\|Watney\|Wayland\|Weather\|WebEngine\|webhook\|WebKit\|weboob\|WEBP\|WebP\|WebRTC\|Will\|Windows\|winid\|WinPT\|Wolfram\|woob\|Word\|WordNet\|WordPerfect\|Words\|XDebug\|XFig\|xfreerdp\|Xine\|xjdic\|xmllint\|XML\|XSudoku\|XVideo\|XWayland\|Yahtzee\|Yakuake\|Youtube\|Zanshin\|Zeroconf\|Zotero\|Zstd\)\([^[:alnum:]]\)/\1e \3\4\5/g
s/\b\([Pp]\)el \(\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(%1\|%2\|7z\|Affinity\|AllowedIP\|Analyze\|Apport\|Arianna\|Autocrypt\|AVIF\|Baloo\|Balsa\|Banner\|Bash\|Bas[Kk]et\|Batalla naval\|Bazaar\|Bespin\|BibSearch\|BibTeX\|Bitbucket\|Bittorrent\|Blackbox\|Blender\|Blinken\|Blowfish\|Blu-ray\|Blue Angel\|Bluetooth\|BMP\|bodyParam\|Bomber\|Bonsai\|Booth\|Bovo\|Braindump\|bravenec2nd\|Breakout\|Breeze\|Brisa\|Bugzilla\|Buho\|bup\|Burnfree\|Burnproof\|Bzip2\|C++\|Cachegrind\|Calindori\|Callgrind\|Calligra\|Calltree\|Cantor\|CAS\|Catfish\|CDDB\|CDS\|cdrdao\|cdrecord\|cdrskin\|CDV\|Centre d'informació\|Cervisia\|check-config\|checkXML5\|Chessbase\|Choqok\|Chrome\|Chromium\|CIFS\|Cisco\|cjpeg\|Clanbomber\|[Cc]lang\|Clang-Tidy\|ClayRGB\|Clazy\|clazy-standalone\|Clip\|clipboard\|[Cc][Mm]ake\|cmark\|CoCreateInstance\|commander\|CompteEnrere\|Communicator\|ConnectServer\|ConsoleKit\|contactprintthemeeditor\|contactthemeeditor\|contentItem\|convert\|convmv\|copy\|cor.test\|Corel\|Coverity\|Cpp\|CPP\|[Cc]ppcheck\|CRAN\|crontab\|cryfs\|CSV\|CTags\|CSound\|csv\|CUDA\|CUPS\|CurConv\|curconvd\|Cuttlefish\|cvs\|CVS\|D3D9\|[Dd]ataEngine\|data.frame\|D-Bus\|DarkTable\|DavDroid\|dbus\|dcraw\|Debconf\|Desfer\|[Dd]esigner\|dev2bitmap\|dev.print\|DH1080_INIT\|diff\|digiKam\|Digital\|dirmngr\|Discover\|DiSEqC\|displaycal\|div\|Django\|DjVuLibre\|dkim\|dmesg\|DNS\|Docbook\|Dolphin\|dot\|Doxygen\|DPMS\|Dr Konqi\|Dragon\|DrawPerfect\|DrKonqi\|DrKonqi2\|Dropbox\|DuckDuckGo\|dvd+rw-format\|DVI\|dvips\|en_US\|Eloquens\|EnviroInfo\|EPub\|Estació\|EXR\|Facebook\|Falkon\|ffmpeg\|FFmpeg\|ffprobe\|FFprobe\|Fielding\|Fiery\|Filelight\|FileStash\|Firefox\|firewalld\|fish\|FITS\|FLAC\|[Ff]latpak\|Flickr\|Flow\|FluidSynth\|FocusWriter\|Frameworks\|Francis\|freedesktop.org\|frei0r\|FreeType\|FSView\|fwhm\|Gadu-Gadu\|Galeon\|GALR\|GBR\|GCC\|gcc\|gcompris\|GCompris\|gdb\|GDB\|Gemini\|German\|get\|getAuditLog\|GetHotNewStuff\|[Gg]ettext\|Gherkin\|Ghostscript\|GI[FH]\|Gimp\|GIMP\|[Gg]it\|GitHub\|GitKlient\|GitLab\|Glaxnimate\|\.GlobalEnv\|GlobalEnv\|GMail\|GNOME\|GNU\|GnuCash\|GnuPG\|[Gg]nuplot\|GOCR\|gocryptfs\|Gomoku\|Google\|GoogleEart\|GoogleMaps\|_ghostwriter\|ghostwriter\|gop\|GOP\|goto\|gpasm\|GPG\|gpg\|Gpg4win\|gpg-agent\|GpgConf\|gpgsm\|GpgSM\|GPSBabel\|Grammalecte\|grammalected\|Granatier\|Grantlee\|Graphics\|[Gg]raphviz\|Gravatar\|GreaseMonkey\|grep\|GroupWise\|growisofs\|Grub\|GSSAPI\|GStreamer\|Gtk\|GUIProfile\|Gwenview\|Gzip\|h5dump\|HAL\|headerthemeeditor\|Healpix\|[Hh]eaptrack\|HEIF\|Helgrind\|hg\|High\|HiPS\|Hunspell\|IFrame\|Ikona\|Imgur\|input\|inputVectorData\|inputVectorTime\|jAlbum\|Jamendo\|Java\|Java[Ss]cript\|Jitsi\|jitter\|journald\|Jovie\|JPEG\|JPG\|JPL\|JSON\|Ju[Kk]\|[Jj]ulia\|Juniper\|Jupyter\|JXL\|K3b\|KAddressBook\|Kadmos\|KADMOS\|Kaffeine\|Kaidan\|Kairo\|Kajongg\|KAlarm\|Kalendar\|KAlgebra\|Kalk\|Kalzium\|Kamera\|Kamoso\|Kanagram\|Kapman\|KAppTemplate\|Karbon\|Kartographer\|Kasts\|Kate\|KAtomic\|KBabel\|KBackup\|KBibTeX\|KBlackBox\|KBlocks\|KBounce\|KBreakOut\|KBruch\|kbuildsycoca5\|KBuildSycoca\|KCachegrind\|KCalc\|KCharSelect\|KClock\|KCM\|KColorChooser\|KConfig\|KCron\|KDE\|kde4-config\|KDebug\|kdebugdialog5\|KDebugSettings\|kdeconnectd\|kded\|kded5\|KDED\|kdegraphics\|kdeinit\|kdeinit5\|Kdenlive\|kdesrc-build\|kdesu\|kdesudo\|Kdesvn\|KDevelop\|KDialog\|KDiamond\|KDiff3\|KDiskFree\|keditbookmarks\|KeePassXC\|KEuroCalc\|Kexi\|KEXI\|Keysmith\|kf5-config\|KFileDialog\|KFileMetaDataReader\|KFind\|KFloppy\|KFM\|KFourInLine\|KGameRenderer\|KGamma\|kgendesignerplugin\|KGeography\|KGeoTag\|KGet\|KGoldrunner\|KGpg\|KGraphViewer\|KHangMan\|[Kk][Hh]elp[Cc]enter\|Khipu\|khotkeys\|KHotkeys\|khtml\|Kid3\|Kig\|Kigo\|Kile\|Killbots\|Killer\|KImageMapEditor\|KInfoCenter\|KIO\|Kio-Extras\|kiod\|KIPI\|Kirigami\|Kiriki\|Kirogi\|Kiten\|KItinerary\|KJots\|KJournald\|KJumpingCube\|KLauncher\|Kleopatra\|KLettres\|Klickety\|Klimbgrades\|KLines\|Klipper\|ksld\|KMag\|KMagnifier\|KMahjongg\|KMail\|KMenu\|KMines\|KMix\|KMouseTool\|KMouth\|KMPlayer\|KmPlot\|KMuddy\|KMyMoney\|kmymoney\|KNetWalk\|KNewStuff\|KNights\|KNotes\|KNotify\|Kodaskanna\|Koko\|Kolab\|Kolf\|Kollision\|Kolor Lines\|Kolorfill\|KolourPaint\|[Kk]ompare\|Kongress\|Konqueror\|Konquest\|[Kk]onsole\|Kontact\|Kontrast\|Konversation\|Kooka\|Kookbook\|Kopete\|KOrganizer\|KPackage\|KPatience\|KPhotoAlbum\|KPipewire\|KPL\|KPlato\|KPresenter\|[Kk]razy2\|KRDC\|KRegExpEditor\|KRename\|KReport\|KReversi\|K[Rr]fb\|Krita\|Kronometer\|Kross\|KRuler\|KRun\|KRunner\|Krusader\|KSame\|KScreen\|KService\|KShisen\|KSIRC\|KsirK\|ksld\|KSnakeDuel\|KSokoban\|Sokoban\|KSpaceDuel\|Kspell\|KSpread\|KSquares\|Ksshaskpass\|[Kk]st\|KStars\|KSudoku\|KSysGuard\|KSystemLog\|KTeaTime\|KTechlab\|KTelnetService\|KTextEditor\|KTimer\|KTimeTracker\|KTorrent\|KTouch\|KTP\|KTrip\|KTuberling\|KTurtle\|Kube\|Kubric\|Kubrick\|Kuickshow\|KuickShow\|Kup\|KUserFeedback\|KWallet\|kwallet-query\|kwalletd\|KWalletManager\|KWatchGnuPG\|Kwave\|KWeather\|KwikDisk\|KWin\|KWordQuiz\|KWrite\|KXStitch\|Netscreen\|LabPlot\|LanguageTool\|lasso\|Last.fm\|latex\|LaTeX\|Latte\|lattice\|LDAP\|Libarchive\|LibreOffice\|Licentia\|LDAP\|Lightroom\|Lilo\|lin_guider\|LinGuider\|Linux\|Little\|Livechat\|LLDB\|lldb-mi\|loca[lt]e\|lock\|lockd\|logcat\|logger\|Logo\|LoginD\|Lokalize\|Lottie\|Lotus\|LSkat\|Lua\|LyteBox\|LyX\|LZMA\|Mac\|Magic\|Magnatune\|Mail\|mailfilteragent\|Mahjongg\|[Mm]ake\|man\|Mangonel\|Maniphest\|Marble\|Markdown\|[Mm]arlin\|Massif\|Mastodon\|Material\|MathJax\|Matlab\|Matrix\|MauiKit\|MauiManServer\|Maxima\|MBox\|MBoxImporter\|Mediawiki\|meinproc5\|memcpy\|Memcheck\|mencoder\|Mercurial\|merge\|Meson\|MesonManager\|Messenger\|Metalink\|[M̀m]icrobe\|Microsoft\|Milou\|MinGW\|Minuet\|mkdir\|mkisofs\|mmap\|Mobipocket\|ModemManager\|monopd\|move\|Moving\|Mozilla\|mplayer\|MPlayer\|MPRIS2\|mpv\|msgfmt\|msgmerge\|ms_print\|MUD\|MultiMarkdown\|Muon\|MuseScore\|MusicBrainz\|mutex\|muxer\|Mycroft\|mysql\|MySQL\|ncdump\|NeoChat\|Nepomuk\|Netscape\|NetworkManager\|Next[Cc]loud\|Ninja\|NKS\|noatun\|normalize\|Nota\|OCR\|OCRAD\|Office\|Okteta\|Okular\|[OK]RA\|OpenCL\|output\|outputVectorPeriodogram\|p7zip\|PackageKit\|Palapeli\|[Pp]andoc\|Panorama\|PaperKey\|par2\|Pareto\|Parley\|parsha\|Pascale\|Patreon\|P[BGP]M\|pdf\|PDF\|pdflatex\|pdfpages\|pdftk\|PeerTube\|[Pp]erforce\|Peruse\|Phabricator\|phd2logview\|Phonon\|Photoshop\|PhotoSwipe\|PHP\|PHPUnit\|Picmi\|Pidgin\|Pikasso\|pimdataexporter\|ping\|pip3\|PipeWire\|Pix\|Piwik\|Plan\|Planck\|PLANCK\|Planner\|Plasma\|plasmapkg2\|plasmashell\|Plastik\|Playdar\|Plymouth\|PNG\|pngquant\|PolicyKit\|Pology\|Pomodoro\|pool\|Poppler\|Portable\|PostgreSQL\|[Pp]ost[Ss]cript\|PowerDevil\|preparetips5\|Progressive\|ProPhotoRGB\|PSD\|psselect\|pstops\|PTY\|PulseAudio\|Purpose\|pvfViewer\|[Pp]ython\|Python[23]\|pyuic5\|Qalculate\|QApplication\|QCA\|QCommandLineParser\|QFileDialog\|QPGME\|QGraphicsView\|QGuiApplication\|QImageWriter\|QKeychain\|QMake\|QML\|qmljs\|QObject\|Qrca\|QSaveFile\|Qt\|QtChart\|QtComponents\|QtCurve\|QtQuick\|QtWebEngine\|Quicken\|QuickConnect\|Quickstates\|quota\|Quotient\|R\|RAR\|Raw\|raw\|RawTherapee\|readcd\|Real Media\|Redshift\|Refer\|[Rr]eplicode\|RepRap\|ReText\|REUSE\|reviewboard\|rio\|\.rkward\|RKward\|RKWard\|RMarkdown\|Rocs\|Rocket\|RocketChat\|Roliserver\|Rolisteam\|RPG\|RSIBreak\|rsync\|Ruby\|Ruqola\|Runner\|Rust\|Sage\|Samba\|Scilab\|scour\|SDDM\|[Ss]endmail\|sesameResolver\|Sextractor\|shader\|Sheets\|Shelf\|shell\|Showfoto\|[Ss]ieve\|sieveeditor\|SigG\|Sink\|Skanlite\|Skanpage\|Skrooge\|smb\|Smb4K\|S\/MIME\|Snore\|SnoreNotify\|Solid\|Sonicwall\|Soundcloud\|Source\|Spacebar\|Spectacle\|Sqlite\|SQLite\|src\|ssh-add\|sshfs\|SteamOS\|Stellarium\|Step\|Stopmotion\|StretchPlayer\|Strike\|Substance\|Subtitle Composer\|[Ss]ubversion\|sudo\|SV[GN]\|SymbolEditor\|Symmy\|syslog\|[Ss]ystemd\|SystemLog\|Tagged\|TAlbum\|Tangram\|TaskJuggler\|teamd\|[Tt]elepathy\|Tellico\|Template\|Tesseract\|TeX\|The\|Thunderbird\|Thunderbolt\|TIFF\|TLS\|TNamed\|Tok\|Tokodon\|top\|trait\|transcode\|Translate-Toolkit\|trixel\|Trojitá\|Tron\|tun\|TurtleScript\|Tuxpaint\|UberWriter\|UFRaw\|Umbrello\|unarchiver\|UNIX\|unpack\|unrar\|USSD\|Vakzination\|Valgrind\|VcdImager\|vcdxrip\|Vegastrike\|[Vv]era++\|Vi\|VLC\|VmSize\|VNC\|vsync\|Vvave\|Wacom\|Wake\|WashiPad\|Watney\|Wayland\|Weather\|WebEngine\|webhook\|WebKit\|weboob\|WEBP\|WebP\|WebRTC\|Will\|Windows\|winid\|WinPT\|Wolfram\|woob\|Word\|WordNet\|WordPerfect\|Words\|XDebug\|XFig\|xfreerdp\|Xine\|xjdic\|xmllint\|XML\|XSudoku\|XVideo\|XWayland\|Yahtzee\|Yakuake\|Youtube\|Zanshin\|Zeroconf\|Zotero\|Zstd\)\([^[:alnum:]]\)/\1er \2\3\4/g
#
s/\b\([Ll]\)a \(\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(Debian\|Kadmos\|KPart\|KPluginFactory\|Kubuntu\|QApplication\|Ubuntu\|WebEnginePart\)\([^[:alnum:]]\)/\2\3\4/g
s/\b\([Ll]\)es \(\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(KPart\|KParts\)\([^[:alnum:]]\)/\2\3\4/g
s/\bels \(\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)XSudoku\([^[:alnum:]]\)/\1XSudoku\2/g
#
s/\b\([Dd]\)e l'\(\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(mplayer\|Scilab\|Scratchpad\|SDDM\|sflphone-client-kde\|Skrooge\|Skype\|SMART\|Smoothie\|Spacebar\|SQLite\|Stage\|Stellarium\|Step\|Stockfish\|Stopmotion\|SVN\)\([^[:alnum:]]\)/\1e \2\3\4/g
s/\b\([Dd]\)e l'\(\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(Ad[Bb]lock\|Academy\|AccountWizard\|ACDSee\|Acrobat\|Active\|Adium\|Agrovoc\|Akonadi\|akonadictl\|Akregator\|Alligator\|Almanac\|alphagrad\|Amarok\|amarokcollectionscanner\|Amazon\|Amor\|Ampache\|Analitza\|Analyze\|Android\|Angelfish\|Apache\|AppData\|Apper\|AppImage\|Apple\|Apport\|[Aa]ppstream\|AqBanking\|Arch\|Arduino\|ARJ\|Ark\|Arkade\|Associated\|Audioscrobbler\|Configuració del sistema\|Artikulate\|ask\|Astrometry.net\|AtCore\|Atelier\|Atlantik\|Audex\|AUR\|Aura\|AV1\|AVPlayer\|AWS\|EEPROM\|EFFECT\|Ekiga\|Ekos\|EkosLive\|ELF\|Elisa\|Eloquens\|eMovix\|Enfuse\|EnigMail\|etesyncItem\|Evolution\|Evolution[123]\|Exchange\|[Ee]xif[Tt]ool\|extragear\|GPG\|Haruna\|Hessiana\|High\|Icedove\|ICQ\|IFrame\|Ikona\|ImageMagick\|Image[Ss]hack\|Imgur\|ImportWizard\|INDI\|INDIHub\|Info-zip\|initramfs\|Inkscape\|inotify\|InputMethod\|inputVectorData\|inputVectorTime\|Internet\|Invidious\|iPad\|iPod\|iPhone\|iptables\|IRIDIUM\|Itinerary\|iTip\|iTunes\|OAuth2\|OCR\|OCRA\|OCRAD\|Octave\|Office\|Ogg\|Okteta\|[Oo]kular\|OMEMO\|Onedrive\|OpenBabel\|OpenCL\|OpenColorIO\|OpenConnect\|OpenDivX\|OpenDocument\|OpenGL\|OpenGLES\|OpenOffice\|OpenPGP\|Opensearch\|OpenStreetMap\|OpenTimelineIO\|OpenVPN\|Opera\|Operational\|OProfile\|Orca\|Origin\|OriginLab\|OscarSocket\|OSD\|OSX\|OTR\|Outlook\|outputVectorPeriodogram\|ownCloud\|oxdvi\|Oxygen\|R\|r2\|SDDM\|Skanlite\|SkySafari\|Scilab\|Scratchpad\|Scribus\|ScriptEngine\|SDDM\|sketchbook\|Skrooge\|Skype\|Slack\|SlackBridge\|Smoothie\|Snap\|Spacebar\|Spectacle\|Spectral\|SPHINX\|SQL\|Stargate\|Station\|StellarMate\|U-Boot\|UberWriter\|Ubuntu\|UFRaw\|Unarchiver\|Unicode\|UnifiedPush\|UNIX\|Unrar\|updatedb\|UserFeedback\|xBase\|XDebug\|XFig\|XMMS\|XMPP\|Xplanet\|XPlanet\|XWayland\)\([^[:alnum:]]\)/\1'\2\3\4/g
#
s/\b\([Ll]\)'\(\[\|\*\|\*\*\|\*\*\*\|&\|«\|<[^<]\{1,\}>\|\)\(%1\|%2\|Ad[Bb]lock\|Academy\|AccountWizard\|ACDSee\|Acrobat\|Active\|Adium\|Agrovoc\|Akonadi\|akonadictl\|Akregator\|Alligator\|Almanac\|alphagrad\|Amarok\|amarokcollectionscanner\|Amazon\|Amor\|Ampache\|Analitza\|Analyze\|Android\|Angelfish\|Apache\|AppData\|Apper\|AppImage\|Apple\|Apport\|[Aa]ppstream\|AqBanking\|Arch\|Arduino\|ARJ\|Ark\|Arkade\|Associated\|Audioscrobbler\|Configuració del sistema\|Artikulate\|ask\|Astrometry.net\|AtCore\|Atelier\|Atlantik\|Audex\|AUR\|Aura\|AV1\|AVPlayer\|AWS\|EEPROM\|EFFECT\|Ekiga\|Ekos\|EkosLive\|ELF\|Elisa\|Eloquens\|eMovix\|Enfuse\|EnigMail\|etesyncItem\|Evolution\|Evolution[123]\|Exchange\|[Ee]xif[Tt]ool\|extragear\|GPG\|Haruna\|Hessiana\|High\|Icedove\|ICQ\|IFrame\|Ikona\|ImageMagick\|Image[Ss]hack\|Imgur\|ImportWizard\|INDI\|INDIHub\|Info-zip\|initramfs\|Inkscape\|inotify\|InputMethod\|inputVectorData\|inputVectorTime\|Internet\|Invidious\|iPad\|iPod\|iPhone\|iptables\|IRIDIUM\|Itinerary\|iTip\|iTunes\|OAuth2\|OCR\|OCRA\|OCRAD\|Octave\|Office\|Ogg\|Okteta\|[Oo]kular\|OMEMO\|Onedrive\|OpenBabel\|OpenCL\|OpenColorIO\|OpenConnect\|OpenDivX\|OpenDocument\|OpenGL\|OpenGLES\|OpenOffice\|OpenPGP\|Opensearch\|OpenStreetMap\|OpenTimelineIO\|OpenVPN\|Opera\|Operational\|OProfile\|Orca\|Origin\|OriginLab\|OscarSocket\|OSD\|OSX\|OTR\|Outlook\|outputVectorPeriodogram\|ownCloud\|oxdvi\|Oxygen\|R\|r2\|SDDM\|Skanlite\|SkySafari\|Scilab\|Scratchpad\|Scribus\|ScriptEngine\|SDDM\|sketchbook\|Skrooge\|Skype\|Slack\|SlackBridge\|Smoothie\|Snap\|Spacebar\|Spectacle\|Spectral\|SPHINX\|SQL\|SQLite\|Stage\|Stargate\|Station\|Stellarium\|StellarMate\|StellarSolver\|Step\|Stockfish\|Stopmotion\|U-Boot\|UberWriter\|Ubuntu\|UFRaw\|ufw\|Umbrello\|Unarchiver\|Unicode\|UnifiedPush\|Unrar\|update-alternatives\|UserFeedback\|xBase\|XDebug\|XFig\|XMMS\|XMPP\|xplanet\|Xplanet\|XPlanet\|XWayland\)\([^[:alnum:]]\)/\2\3\4/g

# entitats
s/\b\([Ee]\)l \(<[^<]\{1,\}>\|\)&\(blinken\|blogilo\|bomber\|bovo\|brahms\|BSD\|calligra\|calligraflow\|calligraplan\|calligrasheets\|calligrastage\|calligrawords\|cantor\|catalogmanager\|CD\|CDE\|CD-ROM\|cervisia\|choqok\|CIFS\|cmake\|CSS\|CUPS\|DBus\|DCOP\|Debian\|digikam\|documentation.index\|dolphin\|DOT\|dragon\|drkonqi\|DVD\|DVI\|ELF\|elisa\|Emacs\|falkon\|FDL\|filelight\|firefox\|Flash\|flashkard\|folder-cache-location\|folder-config-location\|folder-data-location\|frameworks\|FTP\|gcc\|gcompris\|GIF\|git\|GMT\|GNU\|gpg\|gpgsm\|GPL\|GPLNotice\|granatier\|GUI\|gwenview\|Handspring\|Hewlett-Packard\|HotSync\|HP\|HP-UX\|HTML\|HTTP\|ical\|IMAP\|infocenter\|irc\|IRIX\|Java\|javascript\|Jini\|jovie\|JSON\|juk\|kab2\|kaboodle\|kaddressbook\|kaffeine\|kajongg\|kalarm\|kalarmd\|kalgebra\|kalzium\|kamera\|kamoso\|kanagram\|kandy\|kaphorism\|kapman\|kapp\|kappfinder\|kapptemplate\|karbon\|karbon14\|kasteroids\|kate\|katepart\|katomic\|kaudiocreator\|kbabel\|kbabeldict\|kbackgammon\|kbackup\|kbattleship\|kbibtex\|kbiff\|kblackbox\|kblocks\|kbounce\|kbreakout\|kbruch\|kbugbuster\|kcachegrind\|kcalc\|kcharselect\|kchart\|kchat\|kcontrol\|kcron\|kdat\|kdcop\|kde\|kdebugdialog\|kdebugdialog5\|kde-ftp\|kde-http\|kde-frameworks\|kdenlive\|kdepasswd\|kdeprint\|kdesktop\|kdessh\|kdesu\|kdesvn\|kdevelop\|kdiamond\|kdict\|kdiff3\|kdiskfree\|kdm\|kdmrc\|kdvi\|kedit\|keditbookmarks\|keduca\|kenolaba\|kexi\|keystone\|kfax\|kfaxview\|kfeeder\|kfind\|kfloppy\|kfontview\|kformula\|kfouleggs\|kfourinline\|kfract\|kgeo\|kgeography\|kget\|kghostview\|kgoldrunner\|kgpg\|kgpgcertmanager\|kgraphviewer\|khangman\|khelpcenter\|khexedit\|kicker\|kickoff\|kiconedit\|kig\|kigo\|kikbd\|kile\|killbots\|kinfocenter\|Kirigami\|kiriki\|kit\|kitchensync\|kiten\|kivio\|kjots\|kjumpingcube\|klaptop\|klatin\|kleopatra\|klettres\|klickety\|klipper\|kljettool\|klpq\|klprfax\|kmagnifier\|kmahjongg\|kmail\|kmathtool\|kmenuedit\|kmessedwords\|kmid\|kmidi\|kmines\|kmix\|kmoon\|kmousetool\|kmouth\|kmplayer\|kmplot\|kmymoney\|knavalbattle\|knetattach\|knetwalk\|knewsticker\|knewstuff\|knights\|knode\|knorskverbs\|knotes\|kodometer\|koffice\|kolab\|kolf\|kollision\|kolorlines\|kolourpaint\|kompare\|koncd\|konqueror\|konquest\|konsole\|konsolekalendar\|kontact\|kontour\|konversation\|kooka\|kopete\|korganizer\|korn\|koshell\|kotalkd\|kpackage\|kpager\|kpaint\|kpanel\|kparts\|kpatience\|kpercentage\|kpf\|kpilot\|kpm\|kpoker\|kpovmodeler\|kppp\|kpresenter\|kprinter\|krdc\|kreatecd\|krec\|krecipes\|kregexpeditor\|krename\|kreversi\|krfb\|krita\|kronometer\|kruler\|[Kk][Rr]unner\|krusader\|ksame\|kscd\|kscore\|kscreensaver\|ksgmltools\|kshisen\|ksim\|ksirc\|ksirk\|ksirtet\|ksmiletris\|ksmserver\|ksnake\|ksnakeduel\|ksnapshot\|ksokoban\|kspaceduel\|ksplash\|kspread\|ksquares\|kst\|kstars\|kstart\|ksysctrl\|ksysguard\|ksystemlog\|ksysv\|ktalk\|ktalkd\|kteatime\|kthesaurus\|ktimemon\|ktimer\|ktimetracker\|ktip\|ktorrent\|ktouch\|ktron\|ktuberling\|kturtle\|kubrick\|kubuntu\|kugar\|kuickshow\|kuser\|kverbos\|kview\|kviewshell\|kvoctrain\|kwallet5\|kwalletmanager5\|kwatchgnupg\|kwave\|kwin\|kword\|kwordquiz\|kworldclock\|kwrite\|kwuftpd\|kxkb\|kxstitch\|LaserJet\|latex\|LGPL\|LGPLNotice\|Linux\|Linux-Mandrake\|LinuxPPC\|lisa\|lokalize\|lskat\|LZW\|Mac\|macOS\|MacOS\|Mandrake\|marble\|Markdown\|MathML\|mdn\|megami\|Microsoft\|MIDI\|MIME\|minuet\|moonphase\|Motif\|MRU\|MTU\|multisynk\|MusiXTeX\|Netscape\|NeXTSTEP\|NFS\|nntp\|noatun\|okteta\|okular\|openpgp\|OSD\|package\|palapeli\|PalmOS\|PalmPilot\|parley\|PDF\|phonon\|picmi\|PIM\|plasma\|plasmagik\|plasmoid\|plasmoids\|PMX\|POP3\|PostScript\|PPP\|Qt\|quanta\|quantaplus\|RealAudio\|RealVideo\|RedHat\|reslisa\|rocs\|rsibreak\|Samba\|SDDM\|Sendmail\|SGI\|skanlite\|skrooge\|SMB\|smb4k\|smime\|SMTP\|snake\|Solaris\|solid\|sonnet\|spectacle\|step\|superkaramba\|SuSE\|SVG\|sweeper\|symboleditor\|tellico\|ThreeCom\|tkmidi\|trojita\|TrueType\|ubuntu\|umbrello\|UNIX\|URI\|URL\|USB\|Visor\|Wayland\|windowmaker\|Windows\|WordNet\|Wordperfect\|X11\|XEmacs\|XHTML\|XML\|X-Server\|XSL\|X-Window\|zui\);\([^[:alnum:]]\)/\2\&\3;\4/g
s/\b\([Dd]\)el\(s\|\) \(<[^<]\{1,\}>\|\)&\(blinken\|blogilo\|bomber\|bovo\|brahms\|BSD\|calligra\|calligraflow\|calligraplan\|calligrasheets\|calligrastage\|calligrawords\|cantor\|catalogmanager\|CD\|CDE\|CD-ROM\|cervisia\|choqok\|CIFS\|cmake\|CSS\|CUPS\|DBus\|DCOP\|Debian\|digikam\|documentation.index\|dolphin\|DOT\|dragon\|drkonqi\|DVD\|DVI\|ELF\|elisa\|Emacs\|falkon\|FDL\|filelight\|firefox\|Flash\|flashkard\|folder-cache-location\|folder-config-location\|folder-data-location\|frameworks\|FTP\|gcc\|gcompris\|GIF\|git\|GMT\|GNU\|gpg\|gpgsm\|GPL\|GPLNotice\|granatier\|GUI\|gwenview\|Handspring\|Hewlett-Packard\|HotSync\|HP\|HP-UX\|HTML\|HTTP\|ical\|IMAP\|infocenter\|irc\|IRIX\|Java\|javascript\|Jini\|jovie\|JSON\|juk\|kab2\|kaboodle\|kaddressbook\|kaffeine\|kajongg\|kalarm\|kalarmd\|kalgebra\|kalzium\|kamera\|kamoso\|kanagram\|kandy\|kaphorism\|kapman\|kapp\|kappfinder\|kapptemplate\|karbon\|karbon14\|kasteroids\|kate\|katepart\|katomic\|kaudiocreator\|kbabel\|kbabeldict\|kbackgammon\|kbackup\|kbattleship\|kbibtex\|kbiff\|kblackbox\|kblocks\|kbounce\|kbreakout\|kbruch\|kbugbuster\|kcachegrind\|kcalc\|kcharselect\|kchart\|kchat\|kcontrol\|kcron\|kdat\|kdcop\|kde\|kdebugdialog\|kdebugdialog5\|kde-ftp\|kde-http\|kde-frameworks\|kdenlive\|kdepasswd\|kdeprint\|kdesktop\|kdessh\|kdesu\|kdesvn\|kdevelop\|kdiamond\|kdict\|kdiff3\|kdiskfree\|kdm\|kdmrc\|kdvi\|kedit\|keditbookmarks\|keduca\|kenolaba\|kexi\|keystone\|kfax\|kfaxview\|kfeeder\|kfind\|kfloppy\|kfontview\|kformula\|kfouleggs\|kfourinline\|kfract\|kgeo\|kgeography\|kget\|kghostview\|kgoldrunner\|kgpg\|kgpgcertmanager\|kgraphviewer\|khangman\|khelpcenter\|khexedit\|kicker\|kickoff\|kiconedit\|kig\|kigo\|kikbd\|kile\|killbots\|kinfocenter\|Kirigami\|kiriki\|kit\|kitchensync\|kiten\|kivio\|kjots\|kjumpingcube\|klaptop\|klatin\|kleopatra\|klettres\|klickety\|klipper\|kljettool\|klpq\|klprfax\|kmagnifier\|kmahjongg\|kmail\|kmathtool\|kmenuedit\|kmessedwords\|kmid\|kmidi\|kmines\|kmix\|kmoon\|kmousetool\|kmouth\|kmplayer\|kmplot\|kmymoney\|knavalbattle\|knetattach\|knetwalk\|knewsticker\|knewstuff\|knights\|knode\|knorskverbs\|knotes\|kodometer\|koffice\|kolab\|kolf\|kollision\|kolorlines\|kolourpaint\|kompare\|koncd\|konqueror\|konquest\|konsole\|konsolekalendar\|kontact\|kontour\|konversation\|kooka\|kopete\|korganizer\|korn\|koshell\|kotalkd\|kpackage\|kpager\|kpaint\|kpanel\|kparts\|kpatience\|kpercentage\|kpf\|kpilot\|kpm\|kpoker\|kpovmodeler\|kppp\|kpresenter\|kprinter\|krdc\|kreatecd\|krec\|krecipes\|kregexpeditor\|krename\|kreversi\|krfb\|krita\|kronometer\|kruler\|[Kk][Rr]unner\|krusader\|ksame\|kscd\|kscore\|kscreensaver\|ksgmltools\|kshisen\|ksim\|ksirc\|ksirk\|ksirtet\|ksmiletris\|ksmserver\|ksnake\|ksnakeduel\|ksnapshot\|ksokoban\|kspaceduel\|ksplash\|kspread\|ksquares\|kst\|kstars\|kstart\|ksysctrl\|ksysguard\|ksystemlog\|ksysv\|ktalk\|ktalkd\|kteatime\|kthesaurus\|ktimemon\|ktimer\|ktimetracker\|ktip\|ktorrent\|ktouch\|ktron\|ktuberling\|kturtle\|kubrick\|kubuntu\|kugar\|kuickshow\|kuser\|kverbos\|kview\|kviewshell\|kvoctrain\|kwallet5\|kwalletmanager5\|kwatchgnupg\|kwave\|kwin\|kword\|kwordquiz\|kworldclock\|kwrite\|kwuftpd\|kxkb\|kxstitch\|LaserJet\|latex\|LGPL\|LGPLNotice\|Linux\|Linux-Mandrake\|LinuxPPC\|lisa\|lokalize\|lskat\|LZW\|Mac\|macOS\|MacOS\|Mandrake\|marble\|Markdown\|MathML\|mdn\|megami\|Microsoft\|MIDI\|MIME\|minuet\|moonphase\|Motif\|MRU\|MTU\|multisynk\|MusiXTeX\|Netscape\|NeXTSTEP\|NFS\|nntp\|noatun\|okteta\|okular\|openpgp\|OSD\|package\|palapeli\|PalmOS\|PalmPilot\|parley\|PDF\|phonon\|picmi\|PIM\|plasma\|plasmagik\|plasmoid\|plasmoids\|PMX\|POP3\|PostScript\|PPP\|Qt\|quanta\|quantaplus\|RealAudio\|RealVideo\|RedHat\|reslisa\|rocs\|rsibreak\|Samba\|SDDM\|Sendmail\|SGI\|skanlite\|skrooge\|SMB\|smb4k\|smime\|SMTP\|snake\|Solaris\|solid\|sonnet\|spectacle\|step\|superkaramba\|SuSE\|SVG\|sweeper\|symboleditor\|tellico\|ThreeCom\|tkmidi\|trojita\|TrueType\|ubuntu\|umbrello\|UNIX\|URI\|URL\|USB\|Visor\|Wayland\|windowmaker\|Windows\|WordNet\|Wordperfect\|X11\|XEmacs\|XHTML\|XML\|X-Server\|XSL\|X-Window\|zui\);\([^[:alnum:]]\)/\1e \3\&\4;\5/g
s/\b\([Pp]\)el \(<[^<]\{1,\}>\|\)&\(blinken\|blogilo\|bomber\|bovo\|brahms\|BSD\|calligra\|calligraflow\|calligraplan\|calligrasheets\|calligrastage\|calligrawords\|cantor\|catalogmanager\|CD\|CDE\|CD-ROM\|cervisia\|choqok\|CIFS\|cmake\|CSS\|CUPS\|DBus\|DCOP\|Debian\|digikam\|\|documentation.index\|dolphin\|DOT\|dragon\|drkonqi\|DVD\|DVI\|ELF\|elisa\|Emacs\|falkon\|FDL\|filelight\|firefox\|Flash\|flashkard\|folder-cache-location\|folder-config-location\|folder-data-location\|frameworks\|FTP\|gcc\|gcompris\|GIF\|git\|GMT\|GNU\|gpg\|gpgsm\|GPL\|GPLNotice\|granatier\|GUI\|gwenview\|Handspring\|Hewlett-Packard\|HotSync\|HP\|HP-UX\|HTML\|HTTP\|ical\|IMAP\|infocenter\|irc\|IRIX\|Java\|javascript\|Jini\|jovie\|JSON\|juk\|kab2\|kaboodle\|kaddressbook\|kaffeine\|kajongg\|kalarm\|kalarmd\|kalgebra\|kalzium\|kamera\|kamoso\|kanagram\|kandy\|kaphorism\|kapman\|kapp\|kappfinder\|kapptemplate\|karbon\|karbon14\|kasteroids\|kate\|katepart\|katomic\|kaudiocreator\|kbabel\|kbabeldict\|kbackgammon\|kbackup\|kbattleship\|kbibtex\|kbiff\|kblackbox\|kblocks\|kbounce\|kbreakout\|kbruch\|kbugbuster\|kcachegrind\|kcalc\|kcharselect\|kchart\|kchat\|kcontrol\|kcron\|kdat\|kdcop\|kde\|kdebugdialog\|kdebugdialog5\|kde-ftp\|kde-http\|kde-frameworks\|kdenlive\|kdepasswd\|kdeprint\|kdesktop\|kdessh\|kdesu\|kdesvn\|kdevelop\|kdiamond\|kdict\|kdiff3\|kdiskfree\|kdm\|kdmrc\|kdvi\|kedit\|keditbookmarks\|keduca\|kenolaba\|kexi\|keystone\|kfax\|kfaxview\|kfeeder\|kfind\|kfloppy\|kfontview\|kformula\|kfouleggs\|kfourinline\|kfract\|kgeo\|kgeography\|kget\|kghostview\|kgoldrunner\|kgpg\|kgpgcertmanager\|kgraphviewer\|khangman\|khelpcenter\|khexedit\|kicker\|kickoff\|kiconedit\|kig\|kigo\|kikbd\|kile\|killbots\|kinfocenter\|Kirigami\|kiriki\|kit\|kitchensync\|kiten\|kivio\|kjots\|kjumpingcube\|klaptop\|klatin\|kleopatra\|klettres\|klickety\|klipper\|kljettool\|klpq\|klprfax\|kmagnifier\|kmahjongg\|kmail\|kmathtool\|kmenuedit\|kmessedwords\|kmid\|kmidi\|kmines\|kmix\|kmoon\|kmousetool\|kmouth\|kmplayer\|kmplot\|kmymoney\|knavalbattle\|knetattach\|knetwalk\|knewsticker\|knewstuff\|knights\|knode\|knorskverbs\|knotes\|kodometer\|koffice\|kolab\|kolf\|kollision\|kolorlines\|kolourpaint\|kompare\|koncd\|konqueror\|konquest\|konsole\|konsolekalendar\|kontact\|kontour\|konversation\|kooka\|kopete\|korganizer\|korn\|koshell\|kotalkd\|kpackage\|kpager\|kpaint\|kpanel\|kparts\|kpatience\|kpercentage\|kpf\|kpilot\|kpm\|kpoker\|kpovmodeler\|kppp\|kpresenter\|kprinter\|krdc\|kreatecd\|krec\|krecipes\|kregexpeditor\|krename\|kreversi\|krfb\|krita\|kronometer\|kruler\|[Kk][Rr]unner\|krusader\|ksame\|kscd\|kscore\|kscreensaver\|ksgmltools\|kshisen\|ksim\|ksirc\|ksirk\|ksirtet\|ksmiletris\|ksmserver\|ksnake\|ksnakeduel\|ksnapshot\|ksokoban\|kspaceduel\|ksplash\|kspread\|ksquares\|kst\|kstars\|kstart\|ksysctrl\|ksysguard\|ksystemlog\|ksysv\|ktalk\|ktalkd\|kteatime\|kthesaurus\|ktimemon\|ktimer\|ktimetracker\|ktip\|ktorrent\|ktouch\|ktron\|ktuberling\|kturtle\|kubrick\|kubuntu\|kugar\|kuickshow\|kuser\|kverbos\|kview\|kviewshell\|kvoctrain\|kwallet5\|kwalletmanager5\|kwatchgnupg\|kwave\|kwin\|kword\|kwordquiz\|kworldclock\|kwrite\|kwuftpd\|kxkb\|kxstitch\|LaserJet\|latex\|LGPL\|LGPLNotice\|Linux\|Linux-Mandrake\|LinuxPPC\|lisa\|lokalize\|lskat\|LZW\|Mac\|macOS\|MacOS\|Mandrake\|marble\|Markdown\|MathML\|mdn\|megami\|Microsoft\|MIDI\|MIME\|minuet\|moonphase\|Motif\|MRU\|MTU\|multisynk\|MusiXTeX\|Netscape\|NeXTSTEP\|NFS\|nntp\|noatun\|okteta\|okular\|openpgp\|OSD\|package\|palapeli\|PalmOS\|PalmPilot\|parley\|PDF\|phonon\|picmi\|PIM\|plasma\|plasmagik\|plasmoid\|plasmoids\|PMX\|POP3\|PostScript\|PPP\|Qt\|quanta\|quantaplus\|RealAudio\|RealVideo\|RedHat\|reslisa\|rocs\|rsibreak\|Samba\|SDDM\|Sendmail\|SGI\|skanlite\|skrooge\|SMB\|smb4k\|smime\|SMTP\|snake\|Solaris\|solid\|sonnet\|spectacle\|step\|superkaramba\|SuSE\|SVG\|sweeper\|symboleditor\|tellico\|ThreeCom\|tkmidi\|trojita\|TrueType\|ubuntu\|umbrello\|UNIX\|URI\|URL\|USB\|Visor\|Wayland\|windowmaker\|Windows\|WordNet\|Wordperfect\|X11\|XEmacs\|XHTML\|XML\|X-Server\|XSL\|X-Window\|zui\);\([^[:alnum:]]\)/\1er \2\&\3;\4/g
s/\b\([Aa]\)l \(<[^<]\{1,\}>\|\)&\(blinken\|blogilo\|bomber\|bovo\|brahms\|BSD\|calligra\|calligraflow\|calligraplan\|calligrasheets\|calligrastage\|calligrawords\|cantor\|catalogmanager\|CD\|CDE\|CD-ROM\|cervisia\|choqok\|CIFS\|cmake\|CSS\|CUPS\|DBus\|DCOP\|Debian\|digikam\|documentation.index\|dolphin\|DOT\|dragon\|drkonqi\|DVD\|DVI\|ELF\|elisa\|Emacs\|falkon\|FDL\|filelight\|firefox\|Flash\|flashkard\|folder-cache-location\|folder-config-location\|folder-data-location\|frameworks\|FTP\|gcc\|gcompris\|GIF\|git\|GMT\|GNU\|gpg\|gpgsm\|GPL\|GPLNotice\|granatier\|GUI\|gwenview\|Handspring\|Hewlett-Packard\|HotSync\|HP\|HP-UX\|HTML\|HTTP\|ical\|IMAP\|infocenter\|irc\|IRIX\|Java\|javascript\|Jini\|jovie\|JSON\|juk\|kab2\|kaboodle\|kaddressbook\|kaffeine\|kajongg\|kalarm\|kalarmd\|kalgebra\|kalzium\|kamera\|kamoso\|kanagram\|kandy\|kaphorism\|kapman\|kapp\|kappfinder\|kapptemplate\|karbon\|karbon14\|kasteroids\|kate\|katepart\|katomic\|kaudiocreator\|kbabel\|kbabeldict\|kbackgammon\|kbackup\|kbattleship\|kbibtex\|kbiff\|kblackbox\|kblocks\|kbounce\|kbreakout\|kbruch\|kbugbuster\|kcachegrind\|kcalc\|kcharselect\|kchart\|kchat\|kcontrol\|kcron\|kdat\|kdcop\|kde\|kdebugdialog\|kdebugdialog5\|kde-ftp\|kde-http\|kde-frameworks\|kdenlive\|kdepasswd\|kdeprint\|kdesktop\|kdessh\|kdesu\|kdesvn\|kdevelop\|kdiamond\|kdict\|kdiff3\|kdiskfree\|kdm\|kdmrc\|kdvi\|kedit\|keditbookmarks\|keduca\|kenolaba\|kexi\|keystone\|kfax\|kfaxview\|kfeeder\|kfind\|kfloppy\|kfontview\|kformula\|kfouleggs\|kfourinline\|kfract\|kgeo\|kgeography\|kget\|kghostview\|kgoldrunner\|kgpg\|kgpgcertmanager\|kgraphviewer\|khangman\|khelpcenter\|khexedit\|kicker\|kickoff\|kiconedit\|kig\|kigo\|kikbd\|kile\|killbots\|kinfocenter\|Kirigami\|kiriki\|kit\|kitchensync\|kiten\|kivio\|kjots\|kjumpingcube\|klaptop\|klatin\|kleopatra\|klettres\|klickety\|klipper\|kljettool\|klpq\|klprfax\|kmagnifier\|kmahjongg\|kmail\|kmathtool\|kmenuedit\|kmessedwords\|kmid\|kmidi\|kmines\|kmix\|kmoon\|kmousetool\|kmouth\|kmplayer\|kmplot\|kmymoney\|knavalbattle\|knetattach\|knetwalk\|knewsticker\|knewstuff\|knights\|knode\|knorskverbs\|knotes\|kodometer\|koffice\|kolab\|kolf\|kollision\|kolorlines\|kolourpaint\|kompare\|koncd\|konqueror\|konquest\|konsole\|konsolekalendar\|kontact\|kontour\|konversation\|kooka\|kopete\|korganizer\|korn\|koshell\|kotalkd\|kpackage\|kpager\|kpaint\|kpanel\|kparts\|kpatience\|kpercentage\|kpf\|kpilot\|kpm\|kpoker\|kpovmodeler\|kppp\|kpresenter\|kprinter\|krdc\|kreatecd\|krec\|krecipes\|kregexpeditor\|krename\|kreversi\|krfb\|krita\|kronometer\|kruler\|[Kk][Rr]unner\|krusader\|ksame\|kscd\|kscore\|kscreensaver\|ksgmltools\|kshisen\|ksim\|ksirc\|ksirk\|ksirtet\|ksmiletris\|ksmserver\|ksnake\|ksnakeduel\|ksnapshot\|ksokoban\|kspaceduel\|ksplash\|kspread\|ksquares\|kst\|kstars\|kstart\|ksysctrl\|ksysguard\|ksystemlog\|ksysv\|ktalk\|ktalkd\|kteatime\|kthesaurus\|ktimemon\|ktimer\|ktimetracker\|ktip\|ktorrent\|ktouch\|ktron\|ktuberling\|kturtle\|kubrick\|kubuntu\|kugar\|kuickshow\|kuser\|kverbos\|kview\|kviewshell\|kvoctrain\|kwallet5\|kwalletmanager5\|kwatchgnupg\|kwave\|kwin\|kword\|kwordquiz\|kworldclock\|kwrite\|kwuftpd\|kxkb\|kxstitch\|LaserJet\|latex\|LGPL\|LGPLNotice\|Linux\|Linux-Mandrake\|LinuxPPC\|lisa\|lokalize\|lskat\|LZW\|Mac\|macOS\|MacOS\|Mandrake\|marble\|Markdown\|MathML\|mdn\|megami\|Microsoft\|MIDI\|MIME\|minuet\|moonphase\|Motif\|MRU\|MTU\|multisynk\|MusiXTeX\|Netscape\|NeXTSTEP\|NFS\|nntp\|noatun\|okteta\|okular\|openpgp\|OSD\|package\|palapeli\|PalmOS\|PalmPilot\|parley\|PDF\|phonon\|picmi\|PIM\|plasma\|plasmagik\|plasmoid\|plasmoids\|PMX\|POP3\|PostScript\|PPP\|Qt\|quanta\|quantaplus\|RealAudio\|RealVideo\|RedHat\|reslisa\|rocs\|rsibreak\|Samba\|SDDM\|Sendmail\|SGI\|skanlite\|skrooge\|SMB\|smb4k\|smime\|SMTP\|snake\|Solaris\|solid\|sonnet\|spectacle\|step\|superkaramba\|SuSE\|SVG\|sweeper\|symboleditor\|tellico\|ThreeCom\|tkmidi\|trojita\|TrueType\|ubuntu\|umbrello\|UNIX\|URI\|URL\|USB\|Visor\|Wayland\|windowmaker\|Windows\|WordNet\|Wordperfect\|X11\|XEmacs\|XHTML\|XML\|X-Server\|XSL\|X-Window\|zui\);\([^[:alnum:]]\)/a \2\&\3;\4/g
s/\b\([Dd]\)e l'\(<[^<]\{1,\}>\|\)&\(acl\|AIX\|akonadi\|akregator\|aktion\|amarok\|amor\|ark\|artikulate\|arts\|arts-builder\|artscontrol\|artsd\|artsdsp\|artsserver\|artsshell\|artswrapper\|ASCII\|ATAPI\|atlantik\)\([^[:alnum:]]\)/\1'\2\&\3\4/g
s/\b\([Ll]\)'\(<[^<]\{1,\}>\|\)&\(acl\|AIX\|akonadi\|akregator\|aktion\|amarok\|amor\|ark\|artikulate\|arts\|arts-builder\|artscontrol\|artsd\|artsdsp\|artsserver\|artsshell\|artswrapper\|ASCII\|ATAPI\|astrometry.net\|atlantik\|FTP\)\([^[:alnum:]]\)/\2\&\3\4/g
s/\b\([Ll]\)'\(<[^<]\{1,\}>\|\)&IGU;\([^[:alnum:]]\)/\1a \2\&IGU;\3/g
# -> ja es poden desprotegir
s/%1, publicat el -%2\([^[:alnum:]]\)/%1, publicat el %2\1/g
s/\"el -%1\"/\"el %1\"/g
s/%1 comença el -%2\([^[:alnum:]]\)/%1 comença el %2\1/g
s/%1 ha començat el -%2\([^[:alnum:]]\)/%1 ha començat el %2\1/g
s/\bEl -%1 està \(desconnectat\|en línia\)\([^[:alnum:]]\)/El %1 està \1\2/g
s/\bendarrerida des del -%1\([^[:alnum:]]\)/endarrerida des del %1\1/g
s/\bEnregistrat el -%1\([^[:alnum:]]\)/Enregistrat el %1\1/g
s/\bFita finalitzada el -%1\([^[:alnum:]]\)/Fita finalitzada el %1\1/g
s/\bhora \(diürna\|nocturna\) a les -%1 i està totalment canviada a les -%2\([^[:alnum:]]\)/hora \1 a les %1 i està totalment canviada a les %2\2/g
s/\bTasca \(finalitzada\|vençuda\) el -%1\([^[:alnum:]]\)/Tasca \1 el %1\2/g
s/\bVàlid fins el -%1\([^[:alnum:]]\)/Vàlid fins el %1\1/g
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
# Títols
s/\bCreació de carpeta nova d'adreces d'interés a\([^[:alnum:]]\)/Creeu una carpeta nova d'adreces d'interés en\1/g
s/\bCreació de carpeta nova d'adreces d'interés\([^[:alnum:]]\)/Creeu una carpeta nova d'adreces d'interés\1/g
s/\bCreació de clip de \(compte enrere\|soroll\)\([^[:alnum:]]\)/Creeu el clip de \1\2/g
s/\bGestió de l'enllaç\([^[:alnum:]]\)/Gestioneu l'enllaç\1/g
s/\bReanomenar element\([^[:alnum:]]\)/Canvieu el nom d'un element\1/g
s/\bReanomenar elements\([^[:alnum:]]\)/Canvieu el nom dels elements\1/g
s/\bSelecció de carpeta\([^[:alnum:]]\)/Seleccioneu una carpeta\1/g
s/\bSelecció del\([^[:alnum:]]\)/Seleccioneu el\1/g
s/\bSelecció de l\([^[:alnum:]]\)/Seleccioneu l\1/g
s/\bSelecció de\([^[:alnum:]]\)/Seleccioneu el\1/g
	s/\bel la\([^[:alnum:]]\)/la\1/g
	s/\bel les\([^[:alnum:]]\)/les\1/g
	s/\bel script\([^[:alnum:]]\)/l'script\1/g
	s/\bSeleccioneu el \(camps\) a sincronitzar\([^[:alnum:]]\)/Seleccioneu els \1 que s'han de sincronitzar\2/g
	s/\bSeleccioneu el \(col·leccions\) a sincronitzar\([^[:alnum:]]\)/Seleccioneu les \1 que s'han de sincronitzar\2/g
	s/\bSeleccioneu el \(calendaris\|camps\|caràcters\|certificats\|connectors\|continents\|fitxers\|subtítols\|vectors\)\([^[:alnum:]]\)/Seleccioneu els \1\2/g
	s/\bSeleccioneu el \(&vores\|claus\|connexions\|dades\|frases\|marques\|propietats\|vores\)\([^[:alnum:]]\)/Seleccioneu les \1\2/g
	s/\bSeleccioneu les claus a usar\([^[:alnum:]]\)/Seleccioneu les claus que s'usaran\1/g
	s/Seleccioneu el \(&línia\|base\|branca\|clau\|data\|finestra\|font\|fórmula\|generació\|marca\|paleta\|pila\|prioritat\|programació\|regió\|sessió\|t&aula\|traça\)\([^[:alnum:]]\)/Seleccioneu la \1\2/g
	s/\bSeleccioneu el múltiples carpetes\([^[:alnum:]]\)/Seleccioneu múltiples carpetes\1/g
	s/\bSeleccioneu el Google/Seleccioneu a Google/g
s/\bSelecció d'un\(a\|\)\([^[:alnum:]]\)/Seleccioneu un\1\2/g
s/\bSelecció d'\([^[:alnum:]]\)/Seleccioneu l'\1/g
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
# continuació
s/\b\(a\|de\) la llista de sota\([^[:alnum:]]\)/en la llista a continuació\2/g
s/\bA sota, introduïu la contrasenya\([^[:alnum:]]\)/Introduïu la contrasenya a continuació\1/g
s/\bA sota, introduïu un nom d'usuari i una contrasenya\([^[:alnum:]]\)/Introduïu un nom d'usuari i una contrasenya a continuació\1/g
s/\bdes de la llista de sota\([^[:alnum:]]\)/des de la llista a continuació\1/g
s/\bper a la cartera de sota\([^[:alnum:]]\)/per a la cartera a continuació\1/g
s/\bpropietats de sota\([^[:alnum:]]\)/propietats a continuació\1/g
s/\bquadre de text de sota\([^[:alnum:]]\)/quadre de text a continuació\1/g
# Vos
s/\b\([Aa]\)quest mòdul vos permet\([^[:alnum:]]\)/\1quest mòdul permet\2/g
s/\b\([Ss]\)e vos demana\(rà\|\)\([^[:alnum:]]\)/\1e us demana\2\3/g
s/\b\([Ss]\)i no vos calen\([^[:alnum:]]\)/\1i no us calen\2/g
s/\b\([Ss]\)i vos cal\([^[:alnum:]]\)/\1i us cal\2/g
s/\bVos \(afecten\|animem\|ajuda\|autentiqueu\|connecteu\|convidem\|donem la benvinguda\)\([^[:alnum:]]\)/Us \1\2/g
s/\bvos \(afecten\|animem\|ajuda\|autentiqueu\|connecteu\|convidem\|donem la benvinguda\)\([^[:alnum:]]\)/us \1\2/g
s/\bVos \(està\|explica\|permet\|proporciona\)\(rà\|\)\([^[:alnum:]]\)/Us \1\2\3/g
s/\bvos \(està\|explica\|permet\|proporciona\)\(rà\|\)\([^[:alnum:]]\)/us \1\2\3/g
# #
# #

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
s/\b\([Aa]\) última hora\([^[:alnum:]]\)/\1 hora horada\2/g
# abandonar
s/\b\([Aa]\)bandonés\([^[:alnum:]]\)/\1bandonara\2/g
s/\b\([Aa]\)bandonéssi\([mu]\)\([^[:alnum:]]\)/\1bandonàre\2\3/g
s/\b\([Aa]\)bandonessi\([ns]\)\([^[:alnum:]]\)/\1bandonare\2\3/g
s/\b\([Aa]\)bandon\([io]\)\([^[:alnum:]]\)/\1bandone\3/g
s/\b\([Aa]\)bandoni\([ns]\)\([^[:alnum:]]\)/\1bandone\2\3/g
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
# acabar
s/\b\([Aa]\)cabés\([^[:alnum:]]\)/\1cabara\2/g
s/\b\([Aa]\)cabéssi\([mu]\)\([^[:alnum:]]\)/\1cabàre\2\3/g
s/\b\([Aa]\)cabessi\([ns]\)\([^[:alnum:]]\)/\1cabare\2\3/g
s/\b\([Aa]\)cab\([io]\)\([^[:alnum:]]\)/\1cabe\3/g
s/\b\([Aa]\)cabi\([ns]\)\([^[:alnum:]]\)/\1cabe\2\3/g
# accedir
s/\b\([Aa]\)ccedeix\(en\|es\|\)\([^[:alnum:]]\)/\1ccedix\2\3/g
s/\b\([Aa]\)ccedeixi\([^[:alnum:]]\)/\1ccedisca\2/g
s/\b\([Aa]\)ccedeixi\([ns]\)\([^[:alnum:]]\)/\1ccedisque\2\3/g
s/\b\([Aa]\)ccedeixo\([^[:alnum:]]\)/\1ccedisc\2/g
s/\b\([Aa]\)ccedís\([^[:alnum:]]\)/\1ccedira\2/g
s/\b\([Aa]\)ccedíssi\([mu]\)\([^[:alnum:]]\)/\1ccedíre\2\3/g
s/\b\([Aa]\)ccedissi\([ns]\)\([^[:alnum:]]\)/\1ccedire\2\3/g
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
s/\b\([Aa]\)clareix\(en\|es\|\)\([^[:alnum:]]\)/\1clarix\2\3/g
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
s/\b\([Aa]\)coloreix\(en\|es\|\)\([^[:alnum:]]\)/\1colorix\2\3/g
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
# adaptar
s/\b\([Aa]\)daptés\([^[:alnum:]]\)/\1daptara\2/g
s/\b\([Aa]\)daptéssi\([mu]\)\([^[:alnum:]]\)/\1daptàre\2\3/g
s/\b\([Aa]\)daptessi\([ns]\)\([^[:alnum:]]\)/\1daptare\2\3/g
s/\b\([Aa]\)dapt\([io]\)\([^[:alnum:]]\)/\1dapte\3/g
s/\b\([Aa]\)dapti\([ns]\)\([^[:alnum:]]\)/\1dapte\2\3/g
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
s/\b\([Aa]\)dverteix\(en\|es\|\)\([^[:alnum:]]\)/\1dvertix\2\3/g
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
s/\b\([Aa]\)favoreix\(en\|es\|\)\([^[:alnum:]]\)/\1favorix\2\3/g
s/\b\([Aa]\)favoreixi\([^[:alnum:]]\)/\1favorisca\2/g
s/\b\([Aa]\)favoreixi\([ns]\)\([^[:alnum:]]\)/\1favorisque\2\3/g
s/\b\([Aa]\)favoreixo\([^[:alnum:]]\)/\1favorisc\2/g
s/\b\([Aa]\)favorís\([^[:alnum:]]\)/\1favorira\2/g
s/\b\([Aa]\)favoríssi\([mu]\)\([^[:alnum:]]\)/\1favoríre\2\3/g
s/\b\([Aa]\)favorissi\([ns]\)\([^[:alnum:]]\)/\1favorire\2\3/g
	# desafavorir
	s/\b\([Dd]\)esafavoreix\(en\|es\|\)\([^[:alnum:]]\)/\1esafavorix\2\3/g
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
s/\b\([Aa]\)fegeix\(en\|es\|\)\([^[:alnum:]]\)/\1fig\2\3/g
s/\b\([Aa]\)fegeixi\([^[:alnum:]]\)/\1fija\2/g
s/\b\([Aa]\)fegeixi\([ns]\)\([^[:alnum:]]\)/\1fige\2\3/g
s/\b\([Aa]\)fegeixo\([^[:alnum:]]\)/\1fig\2/g
s/\b\([Aa]\)fegís\([^[:alnum:]]\)/\1fegira\2/g
s/\b\([Aa]\)fegíssi\([mu]\)\([^[:alnum:]]\)/\1fegíre\2\3/g
s/\b\([Aa]\)fegissi\([ns]\)\([^[:alnum:]]\)/\1fegire\2\3/g
	# sobreafegir
	s/\b\([Ss]\)obreafegeix\(en\|es\|\)\([^[:alnum:]]\)/\1obreafig\2\3/g
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
# agarrotar -> engarrotar
s/\bAgarrota\(da\|des\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Engarrota\1\2/g
s/\bagarrota\(da\|des\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/engarrota\1\2/g
s/\bAgarrotés\([^[:alnum:]]\)/Engarrotara\1/g
s/\bagarrotés\([^[:alnum:]]\)/engarrotara\1/g
s/\bAgarrotéssi\([mu]\)\([^[:alnum:]]\)/Engarrotàre\1\2/g
s/\bagarrotéssi\([mu]\)\([^[:alnum:]]\)/engarrotàre\1\2/g
s/\bAgarrotessi\([ns]\)\([^[:alnum:]]\)/Engarrotare\1\2/g
s/\bagarrotessi\([ns]\)\([^[:alnum:]]\)/engarrotare\1\2/g
s/\bAgarrot\([eio]\)\([mnsu]\)\([^[:alnum:]]\)/Engarrote\2\3/g
s/\bagarrot\([eio]\)\([mnsu]\)\([^[:alnum:]]\)/engarrote\2\3/g
s/\bAgarrot\([io]\)\([^[:alnum:]]\)/Engarrote\2/g
s/\bagarrot\([io]\)\([^[:alnum:]]\)/engarrote\2/g
s/\bAgarroti\([ns]\)\([^[:alnum:]]\)/Engarrote\1\2/g
s/\bagarroti\([ns]\)\([^[:alnum:]]\)/engarrote\1\2/g
# TODO: agilitar *
# agilitzar
s/\b\([Aa]\)gilitzés\([^[:alnum:]]\)/\1gilitzara\2/g
s/\b\([Aa]\)gilitzéssi\([mu]\)\([^[:alnum:]]\)/\1gilitzàre\2\3/g
s/\b\([Aa]\)gilitzessi\([ns]\)\([^[:alnum:]]\)/\1gilitzare\2\3/g
s/\b\([Aa]\)gilitz\([io]\)\([^[:alnum:]]\)/\1gilitze\3/g
s/\b\([Aa]\)gilitzi\([ns]\)\([^[:alnum:]]\)/\1gilitze\2\3/g
s/\b\([Aa]\)fganès\([^[:alnum:]]\)/\1fganés\2/g
# agradar
s/\b\([Aa]\)gradés\([^[:alnum:]]\)/\1gradara\2/g
s/\b\([Aa]\)gradéssi\([mu]\)\([^[:alnum:]]\)/\1gradàre\2\3/g
s/\b\([Aa]\)gradessi\([ns]\)\([^[:alnum:]]\)/\1gradare\2\3/g
s/\b\([Aa]\)grad\([io]\)\([^[:alnum:]]\)/\1grade\3/g
s/\b\([Aa]\)gradi\([ns]\)\([^[:alnum:]]\)/\1grade\2\3/g
# agrair
s/\b\([Aa]\)graeix\(en\|es\|\)\([^[:alnum:]]\)/\1graïx\2\3/g
s/\b\([Aa]\)graeixi\([^[:alnum:]]\)/\1graïsca\2/g
s/\b\([Aa]\)graeixi\([ns]\)\([^[:alnum:]]\)/\1graïsque\2\3/g
s/\b\([Aa]\)graeixo\([^[:alnum:]]\)/\1graïsc\2/g
s/\b\([Aa]\)graís\([^[:alnum:]]\)/\1graïra\2/g
s/\b\([Aa]\)graíssi\([mu]\)\([^[:alnum:]]\)/\1graíre\2\3/g
s/\b\([Aa]\)graïssi\([ns]\)\([^[:alnum:]]\)/\1graïre\2\3/g
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
s/\b\([Aa]\)lçada\([^[:alnum:]]\)/\1lçària\2/g
	s/\bnovaAlçada\([^[:alnum:]]\)/novaAlçària\1/g
	s/\bAmpladaxAlçada\([^[:alnum:]]\)/AmplàriaxAlçària\1/g
	s/\b\([Mm]\)à alçària\([^[:alnum:]]\)/\1à alçada\2/g
# alçar
s/\b\([Aa]\)lcés\([^[:alnum:]]\)/\1lçara\2/g
s/\b\([Aa]\)lcéssi\([mu]\)\([^[:alnum:]]\)/\1lçàre\2\3/g
s/\b\([Aa]\)lcessi\([ns]\)\([^[:alnum:]]\)/\1lçare\2\3/g
s/\b\([Aa]\)lci\([ns]\|\)\([^[:alnum:]]\)/\1lce\2\3/g
s/\b\([Aa]\)lço\([^[:alnum:]]\)/\1lce\2/g
	# calçar
	s/\b\([Cc]\)alcés\([^[:alnum:]]\)/\1alçara\2/g
	s/\b\([Cc]\)alcéssi\([mu]\)\([^[:alnum:]]\)/\1alçàre\2\3/g
	s/\b\([Cc]\)alcessi\([ns]\)\([^[:alnum:]]\)/\1alçare\2\3/g
# 	s/\b\([Cc]\)alci\([ns]\|\)\([^[:alnum:]]\)/\1alce\2\3/g # No: element químic
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
s/\b\([Aa]\)lenteix\(en\|es\|\)\([^[:alnum:]]\)/\1lentix\2\3/g
s/\b\([Aa]\)lenteixi\([^[:alnum:]]\)/\1lentisca\2/g
s/\b\([Aa]\)lenteixi\([ns]\)\([^[:alnum:]]\)/\1lentisque\2\3/g
s/\b\([Aa]\)lenteixo\([^[:alnum:]]\)/\1lentisc\2/g
s/\b\([Aa]\)lentís\([^[:alnum:]]\)/\1lentira\2/g
s/\b\([Aa]\)lentíssi\([mu]\)\([^[:alnum:]]\)/\1lentíre\2\3/g
s/\b\([Aa]\)lentissi\([ns]\)\([^[:alnum:]]\)/\1lentire\2\3/g
	# envalentir
	s/\b\([Ee]\)nvalenteix\(en\|es\|\)\([^[:alnum:]]\)/\1nvalentix\2\3/g
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
# amollar
	s/\bamollar fitxers\([^[:alnum:]]\)/deixar fitxers\1/g
	s/\bAmolleu el botó\([^[:alnum:]]\)/Deixeu anar el botó\1/g
	s/\bamolleu el botó\([^[:alnum:]]\)/deixeu anar el botó\1/g
	s/\barrossegar i amollar\([^[:alnum:]]\)/arrossegar i deixar\1/g
	s/\barrosseg\(ar\|ueu\)-lo i amoll\(ar\|eu\)-lo\([^[:alnum:]]\)/arrosseg\1-lo i deix\2-lo\3/g
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
s/\b\([Aa]\)mplad\(a\|es\)\([^[:alnum:]]\)/\1mplàri\2\3/g
	s/\bnovaAmplada\([^[:alnum:]]\)/novaAmplària\1/g
	s/\b\([Aa]\)mplària de banda\([^[:alnum:]]\)/\1mplada de banda\2/g
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
	# reanomenar -> canviar el nom
		s/\bReanomena aquest\(a\|\)\([^[:alnum:]]\)/Canvia el nom d'aquest\1\2/g
		s/\bReanomena \(«\|<[^<]\{1,\}>\|\)%\([12]\)\([^[:alnum:]]\)/Canvia el nom de \1%\2\3/g
			s/\bCanvia el nom de %1 element\([^[:alnum:]]\)/Canvia el nom d'%1 element\1/g
			s/\bCa&nvia el nom grup\([^[:alnum:]]\)/Ca\&nvia el nom del grup\1/g
			s/\bCa&nvia el nom el fitxer\([^[:alnum:]]\)/Ca\&nvia el nom del fitxer\1/g
		s/\bReanomena l'\(activitat\|adjunt\|adreça\|àlbum\|element\|etiqueta\|objecte\|script\)\([^[:alnum:]]\)/Canvia el nom de l'\1\2/g
		s/\breanomena l'\(activitat\|adjunt\|adreça\|àlbum\|element\|etiqueta\|objecte\|script\)\([^[:alnum:]]\)/canvia el nom de l'\1\2/g
		s/\bReanomena el \(beneficiari\|dispositiu\|filtre\|fitxer\|fons\|format\|full\|grup\|marcador\|pinzell\|pressupost\|primer pla\|punt\|tipus\|torrent\)\([^[:alnum:]]\)/Canvia el nom del \1\2/g
		s/\breanomena el \(beneficiari\|dispositiu\|filtre\|fitxer\|fons\|format\|full\|grup\|marcador\|pinzell\|pressupost\|primer pla\|punt\|tipus\|torrent\)\([^[:alnum:]]\)/canvia el nom del \1\2/g
		s/\bReanomena els \(fitxers\|fons\||fulls\|grups\)\([^[:alnum:]]\)/Canvia el nom dels \1\2/g
		s/\breanomena els \(fitxers\|fons\|fulls\|grups\)\([^[:alnum:]]\)/canvia el nom dels \1\2/g
		s/\bReanomena la \(capa\|carpeta\|col·lecció\|columna\|composició\|configuració\|declaració\|diapositiva\|divisa\|forma\|guia\|imatge\|pàgina\|identitat\|nota\|pestanya\|pista\|propietat\|secció\|sessió\|ubicació\|unitat\)\([^[:alnum:]]\)/Canvia el nom de la \1\2/g
		s/\breanomena la \(capa\|carpeta\|col·lecció\|columna\|composició\|configuració\|declaració\|diapositiva\|divisa\|forma\|guia\|imatge\|pàgina\|identitat\|nota\|pestanya\|pista\|propietat\|secció\|sessió\|ubicació\|unitat\)\([^[:alnum:]]\)/canvia el nom de la \1\2/g
		s/\bReanomena les \(notes\)\([^[:alnum:]]\)/Canvia el nom de les \1\2/g
		s/\breanomena les \(notes\)\([^[:alnum:]]\)/canvia el nom de les \1\2/g
		s/\bReanomena \(objecte\)\([^[:alnum:]]\)/Canvia el nom de l'\1\2/g
		s/\breanomena \(objecte\)\([^[:alnum:]]\)/canvia el nom de l'\1\2/g
		s/\bReanomena \(filtre\|full\)\([^[:alnum:]]\)/Canvia el nom del \1\2/g
		s/\breanomena \(filtre\|full\)\([^[:alnum:]]\)/canvia el nom del \1\2/g
		s/\bReanomena \(grups\)\([^[:alnum:]]\)/Canvia el nom dels \1\2/g
		s/\breanomena \(grups\)\([^[:alnum:]]\)/canvia el nom dels \1\2/g
		s/\bReanomena \(sessió\)\([^[:alnum:]]\)/Canvia el nom de la \1\2/g
		s/\breanomena \(sessió\)\([^[:alnum:]]\)/canvia el nom de la \1\2/g
		s/\bReanomena \(categories\)\([^[:alnum:]]\)/Canvia el nom de les \1\2/g
		s/\breanomena \(categories\)\([^[:alnum:]]\)/canvia el nom de les \1\2/g
		s/\bReanomena un\(a\|\)\([^[:alnum:]]\)/Canvia el nom d'un\1\2/g
		s/\breanomena un\(a\|\)\([^[:alnum:]]\)/canvia el nom d'un\1\2/g
		s/\bcanviar el nom d'aplicació\([^[:alnum:]]\)/canviar el nom de l'aplicació\1/g
	s/\bReanomena\(t\|\)\([^[:alnum:]]\)/Canvia\1 el nom\2/g
	s/\breanomena\(t\|\)\([^[:alnum:]]\)/canvia\1 el nom\2/g
		s/\bReanomenar el\([^[:alnum:]]\)/Canviar el nom del\1/g
		s/\breanomenar el\([^[:alnum:]]\)/canviar el nom del\1/g
		s/\b\([Cc]\)anvia el nom el compte\([^[:alnum:]]\)/\1anvia el nom del compte\2/g
		s/\b\([Cc]\)anvia el nom els elements de la selecció\([^[:alnum:]]\)/\1anvia el nom dels elements en la selecció\2/g
		s/\bde reanomenament\([^[:alnum:]]\)/del canvi de nom\1/g
	s/\bReanomenament\([^[:alnum:]]\)/Canvi de nom\1/g
	s/\breanomenament\([^[:alnum:]]\)/canvi de nom\1/g
		s/\bCanvia el nom una preferida\([^[:alnum:]]\)/Canvia el nom a una preferida\1/g
		s/\bCanvia el nom un fitxer\([^[:alnum:]]\)/Canvia el nom d'un fitxer\1/g
		s/\bEl canviat el nom\([^[:alnum:]]\)/Canviar el nom\1/g
		s/\bel canviat el nom\([^[:alnum:]]\)/canviar el nom\1/g
		s/\bcanviat el nom correctament el fitxer\([^[:alnum:]]\)/canviat correctament el nom del fitxer\1/g
	s/\bReanomenador\([^[:alnum:]]\)/Canviador de nom\1/g
	s/\bReanomen\(ades\|ador\|ant\|ar\|arà\|aran\|ats\|eu\)\([^[:alnum:]]\)/Canvi\1 de nom\2/g
	s/\breanomen\(ades\|ador\|ant\|ar\|arà\|aran\|ats\|eu\)\([^[:alnum:]]\)/canvi\1 de nom\2/g
		s/\bvoleu canviar de nom-la\([^[:alnum:]]\)/la voleu canviar de nom\1/g
	s/\bReanomenés\([^[:alnum:]]\)/Canviara de nom\1/g
	s/\breanomenés\([^[:alnum:]]\)/canviara de nom\1/g
	s/\bReanomenéssi\([mu]\)\([^[:alnum:]]\)/Canviàre\1 de nom\2/g
	s/\breanomenéssi\([mu]\)\([^[:alnum:]]\)/canviàre\1 de nom\2/g
	s/\bReanomenessi\([ns]\)\([^[:alnum:]]\)/Canviare\1 de nom\2/g
	s/\breanomenessi\([ns]\)\([^[:alnum:]]\)/canviare\1 de nom\2/g
	s/\bReanomeni\([^[:alnum:]]\)/Canviï de nom\1/g
	s/\breanomeni\([^[:alnum:]]\)/canviï de nom\1/g
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
# aprofundir
s/\b\([Aa]\)profundeix\(en\|es\|\)\([^[:alnum:]]\)/\1profundix\2\3/g
s/\b\([Aa]\)profundeixi\([^[:alnum:]]\)/\1profundisca\2/g
s/\b\([Aa]\)profundeixi\([ns]\)\([^[:alnum:]]\)/\1profundisque\2\3/g
s/\b\([Aa]\)profundeixo\([^[:alnum:]]\)/\1profundisc\2/g
s/\b\([Aa]\)profundís\([^[:alnum:]]\)/\1profundira\2/g
s/\b\([Aa]\)profundíssi\([mu]\)\([^[:alnum:]]\)/\1profundíre\2\3/g
s/\b\([Aa]\)profundissi\([ns]\)\([^[:alnum:]]\)/\1profundire\2\3/g
# apropar -> acostar
s/\b\([Aa]\)propa\(da\|des\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1costa\2\3/g
s/\b\([Aa]\)propés\([^[:alnum:]]\)/\1costara\2/g
s/\b\([Aa]\)propéssi\([mu]\)\([^[:alnum:]]\)/\1costàre\2\3/g
s/\b\([Aa]\)propessi\([ns]\)\([^[:alnum:]]\)/\1costare\2\3/g
s/\b\([Aa]\)prop\(e\|i\|o\)\(m\|n\|s\|u\)\([^[:alnum:]]\)/\1coste\3\4/g
s/\b\([Aa]\)prop\([io]\)\([^[:alnum:]]\)/\1coste\3/g
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
s/\bAquest\([^[:alnum:]]\)/Este\1/g
s/\baquest\([^[:alnum:]]\)/este\1/g
s/\bAquest\(a\|es\)\([^[:alnum:]]\)/Est\1\2/g
s/\baquest\(a\|es\)\([^[:alnum:]]\)/est\1\2/g
s/\bAquests\([^[:alnum:]]\)/Estos\1/g
s/\baquests\([^[:alnum:]]\)/estos\1/g
 	s/\baques&t\([^[:alnum:]]\)/es\&te\1/g
 	s/\baques&t\(a\|es\)\([^[:alnum:]]\)/es\&t\1\2/g
 	s/\baques&ts\([^[:alnum:]]\)/es\&tos\1/g
s/\b\([Aa]\)quí\([^[:alnum:]]\)/\1cí\2/g
	s/\bel_nom_especificat_aquí\([^[:alnum:]]\)/el_nom_especificat_ací\1/g
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
# arrencar -> arrancar
s/\b\([Aa]\)rrenca\(da\|des\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1rranca\2\3/g
s/\b\([Aa]\)rrenqués\([^[:alnum:]]\)/\1rrencara\2/g
s/\b\([Aa]\)rrenquéssi\([mu]\)\([^[:alnum:]]\)/\1rrencàre\2\3/g
s/\b\([Aa]\)rrenquessi\([ns]\)\([^[:alnum:]]\)/\1rrencare\2\3/g
s/\b\([Aa]\)rrenqu\(e\|i\)\(m\|n\|s\|u\)\([^[:alnum:]]\)/\1rranque\3/g
s/\b\([Aa]\)rrenqu\([io]\)\([^[:alnum:]]\)/\1rranque\3/g
# arribar
s/\b\([Aa]\)rribés\([^[:alnum:]]\)/\1rribara\2/g
s/\b\([Aa]\)rribéssi\([mu]\)\([^[:alnum:]]\)/\1rribàre\2\3/g
s/\b\([Aa]\)rribessi\([ns]\)\([^[:alnum:]]\)/\1rribare\2\3/g
s/\b\([Aa]\)rrib\([io]\)\([^[:alnum:]]\)/\1rribe\3/g
s/\b\([Aa]\)rribi\([ns]\)\([^[:alnum:]]\)/\1rribe\2\3/g
# arrodonir -> arredonir
s/\b\([Aa]\)rrodoni\(a\|da\|des\|en\|m\|ment\|r\|rà\|ran\|t\|ts\|u\|va\|ven\)\([^[:alnum:]]\)/\1rredoni\2\3/g
s/\b\([Aa]\)rrodoneix\(en\|es\|\)\([^[:alnum:]]\)/\1rredonix\2\3/g
s/\b\([Aa]\)rrodoneixi\([^[:alnum:]]\)/\1rredonisca\2/g
s/\b\([Aa]\)rrodoneixi\([ns]\)\([^[:alnum:]]\)/\1rredonisque\2\3/g
s/\b\([Aa]\)rrodoneixo\([^[:alnum:]]\)/\1rredonisc\2/g
s/\b\([Aa]\)rrodonís\([^[:alnum:]]\)/\1rredonira\2/g
s/\b\([Aa]\)rrodoníssi\([mu]\)\([^[:alnum:]]\)/\1rredoníre\2\3/g
s/\b\([Aa]\)rrodonissi\([ns]\)\([^[:alnum:]]\)/\1rredonire\2\3/g
# arxivar
s/\b\([Aa]\)rxivés\([^[:alnum:]]\)/\1rxivara\2/g
s/\b\([Aa]\)rxivéssi\([mu]\)\([^[:alnum:]]\)/\1rxivàre\2\3/g
s/\b\([Aa]\)rxivessi\([ns]\)\([^[:alnum:]]\)/\1rxivare\2\3/g
s/\b\([Aa]\)rxiv\([io]\)\([^[:alnum:]]\)/\1rxive\3/g
s/\b\([Aa]\)rxivi\([ns]\)\([^[:alnum:]]\)/\1rxive\2\3/g
# ascendir
s/\b\([Aa]\)scendeix\(en\|es\|\)\([^[:alnum:]]\)/\1scendix\2\3/g
s/\b\([Aa]\)scendeixi\([^[:alnum:]]\)/\1scendisca\2/g
s/\b\([Aa]\)scendeixi\([ns]\)\([^[:alnum:]]\)/\1scendisque\2\3/g
s/\b\([Aa]\)scendeixo\([^[:alnum:]]\)/\1scendisc\2/g
s/\b\([Aa]\)scendís\([^[:alnum:]]\)/\1scendira\2/g
s/\b\([Aa]\)scendíssi\([mu]\)\([^[:alnum:]]\)/\1scendíre\2\3/g
s/\b\([Aa]\)scendissi\([ns]\)\([^[:alnum:]]\)/\1scendire\2\3/g
	# condescendir
	s/\b\([Cc]\)ondescendeix\(en\|es\|\)\([^[:alnum:]]\)/\1ondescendix\2\3/g
	s/\b\([Cc]\)ondescendeixi\([^[:alnum:]]\)/\1ondescendisca\2/g
	s/\b\([Cc]\)ondescendeixi\([ns]\)\([^[:alnum:]]\)/\1ondescendisque\2\3/g
	s/\b\([Cc]\)ondescendeixo\([^[:alnum:]]\)/\1ondescendisc\2/g
	s/\b\([Cc]\)ondescendís\([^[:alnum:]]\)/\1ondescendira\2/g
	s/\b\([Cc]\)ondescendíssi\([mu]\)\([^[:alnum:]]\)/\1ondescendíre\2\3/g
	s/\b\([Cc]\)ondescendissi\([ns]\)\([^[:alnum:]]\)/\1ondescendire\2\3/g
	# descendir
	s/\b\([Dd]\)escendeix\(en\|es\|\)\([^[:alnum:]]\)/\1escendix\2\3/g
	s/\b\([Dd]\)escendeixi\([^[:alnum:]]\)/\1escendisca\2/g
	s/\b\([Dd]\)escendeixi\([ns]\)\([^[:alnum:]]\)/\1escendisque\2\3/g
	s/\b\([Dd]\)escendeixo\([^[:alnum:]]\)/\1escendisc\2/g
	s/\b\([Dd]\)escendís\([^[:alnum:]]\)/\1escendira\2/g
	s/\b\([Dd]\)escendíssi\([mu]\)\([^[:alnum:]]\)/\1escendíre\2\3/g
	s/\b\([Dd]\)escendissi\([ns]\)\([^[:alnum:]]\)/\1escendire\2\3/g
	# transcendir
	s/\b\([Tt]\)ranscendeix\(en\|es\|\)\([^[:alnum:]]\)/\1ranscendix\2\3/g
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
	# TODO: no
	# desassignar
	s/\b\([Dd]\)esassignés\([^[:alnum:]]\)/\1esassignara\2/g
	s/\b\([Dd]\)esassignéssi\([mu]\)\([^[:alnum:]]\)/\1esassignàre\2\3/g
	s/\b\([Dd]\)esassignessi\([ns]\)\([^[:alnum:]]\)/\1esassignare\2\3/g
		s/\b\([Dd]\)esassigna\(r\|\)\([^[:alnum:]]\)/\1esselecciona\2\3/g
	s/\b\([Dd]\)esassign\([io]\)\([^[:alnum:]]\)/\1esassigne\3/g
	s/\b\([Dd]\)esassigni\([ns]\)\([^[:alnum:]]\)/\1esassigne\2\3/g
	# TODO: no
	# reassignar
	s/\b\([Rr]\)eassignés\([^[:alnum:]]\)/\1eassignara\2/g
	s/\b\([Rr]\)eassignéssi\([mu]\)\([^[:alnum:]]\)/\1eassignàre\2\3/g
	s/\b\([Rr]\)eassignessi\([ns]\)\([^[:alnum:]]\)/\1eassignare\2\3/g
	s/\b\([Rr]\)eassign\([io]\)\([^[:alnum:]]\)/\1eassigne\3/g
	s/\b\([Rr]\)eassigni\([ns]\)\([^[:alnum:]]\)/\1eassigne\2\3/g
# associar
s/\b\([Aa]\)ssociés\([^[:alnum:]]\)/\1ssociara\2/g
s/\b\([Aa]\)ssociéssi\([mu]\)\([^[:alnum:]]\)/\1ssignàre\2\3/g
s/\b\([Aa]\)ssociessi\([ns]\)\([^[:alnum:]]\)/\1ssignare\2\3/g
s/\b\([Aa]\)ssoci\([ïo]\)\([^[:alnum:]]\)/\1ssocie\3/g
s/\b\([Aa]\)ssociï\([ns]\|\)\([^[:alnum:]]\)/\1ssocie\2\3/g
# assolir
s/\b\([Aa]\)ssoleix\(en\|es\|\)\([^[:alnum:]]\)/\1ssolix\2\3/g
s/\b\([Aa]\)ssoleixi\([^[:alnum:]]\)/\1ssolisca\2/g
s/\b\([Aa]\)ssoleixi\([ns]\)\([^[:alnum:]]\)/\1ssolisque\2\3/g
s/\b\([Aa]\)ssoleixo\([^[:alnum:]]\)/\1ssolisc\2/g
s/\b\([Aa]\)ssolís\([^[:alnum:]]\)/\1ssolira\2/g
s/\b\([Aa]\)ssolíssi\([mu]\)\([^[:alnum:]]\)/\1ssolíre\2\3/g
s/\b\([Aa]\)ssolissi\([ns]\)\([^[:alnum:]]\)/\1ssolire\2\3/g
# assumir
s/\b\([Aa]\)ssumeix\(en\|es\|\)\([^[:alnum:]]\)/\1ssumix\2\3/g
s/\b\([Aa]\)ssumeixi\([^[:alnum:]]\)/\1ssumisca\2/g
s/\b\([Aa]\)ssumeixi\([ns]\)\([^[:alnum:]]\)/\1ssumisque\2\3/g
s/\b\([Aa]\)ssumeixo\([^[:alnum:]]\)/\1ssumisc\2/g
s/\b\([Aa]\)ssumís\([^[:alnum:]]\)/\1ssumira\2/g
s/\b\([Aa]\)ssumíssi\([mu]\)\([^[:alnum:]]\)/\1ssumíre\2\3/g
s/\b\([Aa]\)ssumissi\([ns]\)\([^[:alnum:]]\)/\1ssumire\2\3/g
	# reassumir
	s/\b\([Rr]\)eassumeix\(en\|es\|\)\([^[:alnum:]]\)/\1eassumix\2\3/g
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
# atrapar
s/\b\([Aa]\)trapés\([^[:alnum:]]\)/\1trapara\2/g
s/\b\([Aa]\)trapéssi\([mu]\)\([^[:alnum:]]\)/\1trapàre\2\3/g
s/\b\([Aa]\)trapessi\([ns]\)\([^[:alnum:]]\)/\1trapare\2\3/g
s/\b\([Aa]\)trap\([io]\)\([^[:alnum:]]\)/\1trape\3/g
s/\b\([Aa]\)trapi\([ns]\)\([^[:alnum:]]\)/\1trape\2\3/g
# atribuir
s/\b\([Aa]\)tribueix\(en\|es\|\)\([^[:alnum:]]\)/\1tribuïx\2\3/g
s/\b\([Aa]\)tribueixi\([^[:alnum:]]\)/\1tribuïsca\2/g
s/\b\([Aa]\)tribueixi\([ns]\)\([^[:alnum:]]\)/\1tribuïsque\2\3/g
s/\b\([Aa]\)tribueixo\([^[:alnum:]]\)/\1tribuïsc\2/g
s/\b\([Aa]\)tribuís\([^[:alnum:]]\)/\1tribuïra\2/g
s/\b\([Aa]\)tribuíssi\([mu]\)\([^[:alnum:]]\)/\1tribuíre\2\3/g
s/\b\([Aa]\)tribuïssi\([ns]\)\([^[:alnum:]]\)/\1tribuïre\2\3/g
	# contribuir
	s/\b\([Cc]\)ontribueix\(en\|es\|\)\([^[:alnum:]]\)/\1ontribuïx\2\3/g
	s/\b\([Cc]\)ontribueixi\([^[:alnum:]]\)/\1ontribuïsca\2/g
	s/\b\([Cc]\)ontribueixi\([ns]\)\([^[:alnum:]]\)/\1ontribuïsque\2\3/g
	s/\b\([Cc]\)ontribueixo\([^[:alnum:]]\)/\1ontribuïsc\2/g
	s/\b\([Cc]\)ontribuís\([^[:alnum:]]\)/\1ontribuïra\2/g
	s/\b\([Cc]\)ontribuíssi\([mu]\|\)\([^[:alnum:]]\)/\1ontribuíre\2\3/g
	s/\b\([Cc]\)ontribuïssi\([ns]\|\)\([^[:alnum:]]\)/\1ontribuïre\2\3/g
	# distribuir
	s/\b\([Dd]\)istribueix\(en\|es\|\)\([^[:alnum:]]\)/\1istribuïx\2\3/g
	s/\b\([Dd]\)istribueixi\([^[:alnum:]]\)/\1istribuïsca\2/g
	s/\b\([Dd]\)istribueixi\([ns]\)\([^[:alnum:]]\)/\1istribuïsque\2\3/g
	s/\b\([Dd]\)istribueixo\([^[:alnum:]]\)/\1istribuïsc\2/g
	s/\b\([Dd]\)istribuís\([^[:alnum:]]\)/\1istribuïra\2/g
	s/\b\([Dd]\)istribuíssi\([mu]\|\)\([^[:alnum:]]\)/\1istribuíre\2\3/g
	s/\b\([Dd]\)istribuïssi\([ns]\|\)\([^[:alnum:]]\)/\1istribuïre\2\3/g
		# redistribuir
		s/\b\([Rr]\)edistribueix\(en\|es\|\)\([^[:alnum:]]\)/\1edistribuïx\2\3/g
		s/\b\([Rr]\)edistribueixi\([^[:alnum:]]\)/\1edistribuïsca\2/g
		s/\b\([Rr]\)edistribueixi\([ns]\)\([^[:alnum:]]\)/\1edistribuïsque\2\3/g
		s/\b\([Rr]\)edistribueixo\([^[:alnum:]]\)/\1edistribuïsc\2/g
		s/\b\([Rr]\)edistribuís\([^[:alnum:]]\)/\1edistribuïra\2/g
		s/\b\([Rr]\)edistribuíssi\([mu]\|\)\([^[:alnum:]]\)/\1edistribuíre\2\3/g
		s/\b\([Rr]\)edistribuïssi\([ns]\|\)\([^[:alnum:]]\)/\1edistribuïre\2\3/g
	# retribuir
	s/\b\([Rr]\)etribueix\(en\|es\|\)\([^[:alnum:]]\)/\1etribuïx\2\3/g
	s/\b\([Rr]\)etribueixi\([^[:alnum:]]\)/\1etribuïsca\2/g
	s/\b\([Rr]\)etribueixi\([ns]\)\([^[:alnum:]]\)/\1etribuïsque\2\3/g
	s/\b\([Rr]\)etribueixo\([^[:alnum:]]\)/\1etribuïsc\2/g
	s/\b\([Rr]\)etribuís\([^[:alnum:]]\)/\1etribuïra\2/g
	s/\b\([Rr]\)etribuíssi\([mu]\|\)\([^[:alnum:]]\)/\1etribuíre\2\3/g
	s/\b\([Rr]\)etribuïssi\([ns]\|\)\([^[:alnum:]]\)/\1etribuïre\2\3/g
# aturar -> parar
	s/\bd'atura\(da\|r\)\([^[:alnum:]]\)/de para\1\2/g
	s/\bl'aturada\([^[:alnum:]]\)/la parada\1/g
	s/\bs'atura\([^[:alnum:]]\)/es para\1/g
	s/\bS'aturarà\([^[:alnum:]]\)/Es pararà\1/g
	s/\bs'aturarà\([^[:alnum:]]\)/es pararà\1/g
	s/\bS'aturi\([^[:alnum:]]\)/Es pare\1/g
	s/\bs'aturi\([^[:alnum:]]\)/es pare\1/g
	s/\bs'aturés\([^[:alnum:]]\)/es parara\1/g
s/\bAtura\(da\|des\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Para\1\2/g
s/\batura\(da\|des\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/para\1\2/g
	s/\bATURA\([^[:alnum:]]\)/PARA\1/g
s/\bAturés\([^[:alnum:]]\)/Parara\1/g
s/\baturés\([^[:alnum:]]\)/parara\1/g
s/\bAturéssi\([mu]\)\([^[:alnum:]]\)/Paràre\1\2/g
s/\baturéssi\([mu]\)\([^[:alnum:]]\)/paràre\1\2/g
s/\bAturessi\([ns]\)\([^[:alnum:]]\)/Parare\1\2/g
s/\baturessi\([ns]\)\([^[:alnum:]]\)/parare\1\2/g
s/\bAtur\(e\|i\|o\)\(m\|n\|s\|u\|\)\([^[:alnum:]]\)/Pare\2\3/g
s/\batur\(e\|i\|o\)\(m\|n\|s\|u\|\)\([^[:alnum:]]\)/pare\2\3/g
	s/\b\([Pp]\)ari\([ns]\)\([^[:alnum:]]\)/\1are\2\3/g
	s/\b\([Pp]\)aro\([^[:alnum:]]\)/\1are\2/g
	s/\bS'para la reproducció\([^[:alnum:]]\)/S'ha parat la reproducció\1/g
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
s/\bAutor\(s\|\)\([^[:alnum:]]\)/Autoria\2/g
	s/\b\([Aa]\)utoria desconegut\([^[:alnum:]]\)/\1utoria desconeguda\2/g
	s/\bAutoria original\([^[:alnum:]]\)/Autor original\1/g
	s/\b\([Dd]\)rets d'autor\([^[:alnum:]]\)/\1rets d'autoria\2/g
	s/\bsobre l'autor\([^[:alnum:]]\)/sobre l'autoria\1/g
	s/\bllistes d'autors\([^[:alnum:]]\)/llistes d'autoria\1/g
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
	# reavaluar
	s/\bReavalua\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Torna\1 a avaluar\2/g
	s/\breavalua\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/torna\1 a avaluar\2/g
		s/\bla reavaluació\([^[:alnum:]]\)/el tornar a avaluar\1/g
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
# avançar
s/\b\([Aa]\)vancés\([^[:alnum:]]\)/\1vançara\2/g
s/\b\([Aa]\)vancéssi\([mu]\)\([^[:alnum:]]\)/\1vançàre\2\3/g
s/\b\([Aa]\)vancessi\([ns]\)\([^[:alnum:]]\)/\1vançare\2\3/g
s/\b\([Aa]\)vanço\([^[:alnum:]]\)/\1vance\2/g
s/\b\([Aa]\)vanci\([ns]\|\)\([^[:alnum:]]\)/\1vance\2\3/g
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
	s/\b\([Ee]\)l Barcelonés\([^[:alnum:]]\)/\1l Barcelonès\2/g
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
	s/\bPetó\([^[:alnum:]]\)/Bes\1/g
	s/\bpetó\([^[:alnum:]]\)/bes\1/g
	s/\bPetons\([^[:alnum:]]\)/Besos\1/g
	s/\bpetons\([^[:alnum:]]\)/besos\1/g
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
s/\b\([Bb]\)omboll\(a\|es\)\([^[:alnum:]]\)/\1amboll\2\3/g
# bordar -> lladrar
s/\bEl|gos|borda\([^[:alnum:]]\)/El|gos|lladra\1/g
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
# caber -> cabre
s/\b\([Cc]\)aber\([^[:alnum:]]\)/\1abre\2/g
s/\b\([Cc]\)abés\([^[:alnum:]]\)/\1abera\2/g
s/\b\([Cc]\)abéssi\([mu]\)\([^[:alnum:]]\)/\1abére\2\3/g
s/\b\([Cc]\)abessi\([ns]\)\([^[:alnum:]]\)/\1abere\2\3/g
s/\b\([Cc]\)abo\([^[:alnum:]]\)/\1ap\2/g
s/\b\([Cc]\)àpiga\([^[:alnum:]]\)/\1àpia\2/g
s/\b\([Cc]\)àpigue\([mnsu]\)\([^[:alnum:]]\)/\1àpie\2\3/g
	s/\bCap Rojo\([^[:alnum:]]\)/Cabo Rojo\1/g
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
	s/\b\([Dd]\)e la cantonada\([^[:alnum:]]\)/\1el cantó\2/g
	s/\bLa cantonada\([^[:alnum:]]\)/El cantó\1/g
	s/\bla cantonada\([^[:alnum:]]\)/el cantó\1/g
s/\b\([Cc]\)antonada\([^[:alnum:]]\)/\1antó\2/g
	s/\bcantó inferior esquerre està força agitada\([^[:alnum:]]\)/cantó inferior esquerre està força agitat\1/g
	s/\bla primera cantó\([^[:alnum:]]\)/el primer cantó\1/g
	s/\bla segona cantó\([^[:alnum:]]\)/el segon cantó\1/g
	s/\buna cantó angulada\([^[:alnum:]]\)/un cantó angulat\1/g
	s/\buna cantó arrodonida\([^[:alnum:]]\)/un cantó arrodonit\1/g
	s/\bcantó rodona\([^[:alnum:]]\)/cantó arrodonit\1/g
	s/\buna cantó\([^[:alnum:]]\)/un cantó\1/g
	s/\bCantó \(inferior\|superior\) dreta\([^[:alnum:]]\)/Cantó \1 dret\2/g
	s/\bcantó \(inferior\|superior\) dreta\([^[:alnum:]]\)/cantó \1 dret\2/g
	s/\bCantó \(inferior\|superior\) esquerra\([^[:alnum:]]\)/Cantó \1 esquerre\2/g
	s/\bcantó \(inferior\|superior\) esquerra\([^[:alnum:]]\)/cantó \1 esquerre\2/g
	s/\bcantó dreta superior\([^[:alnum:]]\)/cantó superior dret\1/g
	s/\ba el cantó\([^[:alnum:]]\)/al cantó\1/g
	s/\bA el cantó\([^[:alnum:]]\)/En el cantó\1/g
#
	s/\bamb cantonades primes\([^[:alnum:]]\)/amb cantons prims\1/g
	s/\bcantonades inverses\([^[:alnum:]]\)/cantons inversos\1/g
	s/\bdues cantonades oposades\([^[:alnum:]]\)/dos cantons oposats\1/g
		s/\ba les cantonades\([^[:alnum:]]\)/als cantons\1/g
		s/\bde les cantonades\([^[:alnum:]]\)/dels cantons\1/g
		s/\bles cantonades arredonides\([^[:alnum:]]\)/els cantons arredonits\1/g
			s/\b\([Cc]\)antonades a&rredonides\([^[:alnum:]]\)/\1antons a\&rredonits\2/g
			s/\b\([Cc]\)antonades arredonides\([^[:alnum:]]\)/\1antons arredonits\2/g
		s/\bles cantonades oposades\([^[:alnum:]]\)/els cantons oposats\1/g
		s/\b\([Tt]\)otes les cantonades\([^[:alnum:]]\)/\1ots els cantons\2/g
	s/\bles cantonades\([^[:alnum:]]\)/els cantons\1/g
	s/\bles quatre cantonades\([^[:alnum:]]\)/els quatre cantons\1/g
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
	# recarregar
		s/\bcontinuar recarregant\([^[:alnum:]]\)/continuar carregant\1/g
	s/\bRecarrega\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Torna\1 a carregar\2/g
	s/\brecarrega\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/torna\1 a carregar\2/g
	s/\bRecarreg\(ui\|o]\)\([^[:alnum:]]\)/Torne a carregar\2/g
	s/\brecarreg\(ui\|o]\)\([^[:alnum:]]\)/torne a carregar\2/g
	s/\bRecarregués\([^[:alnum:]]\)/Tornara a carregar\1/g
	s/\brecarregués\([^[:alnum:]]\)/tornara a carregar\1/g
	s/\bRecarreguéssi\([mu]\)\([^[:alnum:]]\)/Tornàre\1 a carregar\2/g
	s/\brecarreguéssi\([mu]\)\([^[:alnum:]]\)/tornàre\1 a carregar\2/g
	s/\bRecarreguessi\([ns]\)\([^[:alnum:]]\)/Tornare\1 a carregar\2/g
	s/\brecarreguessi\([ns]\)\([^[:alnum:]]\)/tornare\1 a carregar\2/g
	s/\bRecarregueu\([^[:alnum:]]\)/Torneu a carregar\1/g
	s/\brecarregueu\([^[:alnum:]]\)/torneu a carregar\1/g
	s/\bRecarregui\([ns]\)\([^[:alnum:]]\)/Torne\1 a carregar\2/g
	s/\brecarregui\([ns]\)\([^[:alnum:]]\)/torne\1 a carregar\2/g
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
	s/\b\([Qq]\)uèie\([mu]\)\([^[:alnum:]]\)/\1uéiem\2\3/g
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
# centrar
s/\b\([Cc]\)entrés\([^[:alnum:]]\)/\1entrara\2/g
s/\b\([Cc]\)entréssi\([mu]\)\([^[:alnum:]]\)/\1entràre\2\3/g
s/\b\([Cc]\)entressi\([ns]\)\([^[:alnum:]]\)/\1entrare\2\3/g
s/\b\([Cc]\)entr\([io]\)\([^[:alnum:]]\)/\1entre\3/g
s/\b\([Cc]\)entri\([ns]\)\([^[:alnum:]]\)/\1entre\2\3/g
	s/\bTallafoc Centre\([^[:alnum:]]\)/\Tallafoc Centri\1/g
	# concentrar
	s/\b\([Cc]\)oncentrés\([^[:alnum:]]\)/\1oncentrara\2/g
	s/\b\([Cc]\)oncentréssi\([mu]\)\([^[:alnum:]]\)/\1oncentràre\2\3/g
	s/\b\([Cc]\)oncentressi\([ns]\)\([^[:alnum:]]\)/\1oncentrare\2\3/g
	s/\b\([Cc]\)oncentr\([io]\)\([^[:alnum:]]\)/\1oncentre\3/g
	s/\b\([Cc]\)oncentri\([ns]\)\([^[:alnum:]]\)/\1oncentre\2\3/g
# cercar
	s/\bSe cerca\(rà\|ran\|va\|ven\|\)\([^[:alnum:]]\)/Es busca\1\2/g
	s/\bse cerca\(rà\|ran\|va\|ven\|\)\([^[:alnum:]]\)/es busca\1\2/g
s/\bCerca\(ble\|da\|des\|dor\|dors\|nt\|nts\|r\|rà\|ran\|rem\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Busca\1\2/g
s/\bcerca\(ble\|da\|des\|dor\|dors\|nt\|nts\|r\|rà\|ran\|rem\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/busca\1\2/g
s/\bCerco\([^[:alnum:]]\)/Busque\1/g
s/\bcerco\([^[:alnum:]]\)/busque\1/g
	s/\bBaixe Alentejo\([^[:alnum:]]\)/Baixo Alentejo\1/g
s/\bCerque\(m\|n\|s\|u\)\([^[:alnum:]]\)/Busque\1\2/g
s/\bcerque\(m\|n\|s\|u\)\([^[:alnum:]]\)/busque\1\2/g
s/\bCerqués\([^[:alnum:]]\)/Buscara\1/g
s/\bcerqués\([^[:alnum:]]\)/buscara\1/g
s/\bCerquéssi\([mu]\)\([^[:alnum:]]\)/Buscàre\1\2/g
s/\bcerquéssi\([mu]\)\([^[:alnum:]]\)/buscàre\1\2/g
s/\bCerquessi\([ns]\)\([^[:alnum:]]\)/Buscare\1\2/g
s/\bcerquessi\([ns]\)\([^[:alnum:]]\)/buscare\1\2/g
s/\bCerqui\([ns]\|\)\([^[:alnum:]]\)/Busque\1\2/g
s/\bcerqui\([ns]\|\)\([^[:alnum:]]\)/busque\1\2/g
	s/\bSe busquen\([^[:alnum:]]\)/Es busquen\1/g
	s/\bse busquen\([^[:alnum:]]\)/es busquen\1/g
s/\bCercapersones\([^[:alnum:]]\)/Buscapersones\1/g
s/\bcercapersones\([^[:alnum:]]\)/buscapersones\1/g
	s/\bRessaltatDeCerca\([^[:alnum:]]\)/RessaltatDeBusca\1/g
	s/\btext_\(a\|on\)_cercar\([^[:alnum:]]\)/text_\1_buscar\2/g
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
# clicar
s/\b\([Cc]\)liqués\([^[:alnum:]]\)/\1licara\2/g
s/\b\([Cc]\)liquéssi\([mu]\)\([^[:alnum:]]\)/\1licàre\2\3/g
s/\b\([Cc]\)liquessi\([ns]\)\([^[:alnum:]]\)/\1licare\2\3/g
s/\b\([Cc]\)liqu\([io]\)\([^[:alnum:]]\)/\1lique\3/g
s/\b\([Cc]\)liqui\([ns]\)\([^[:alnum:]]\)/\1lique\2\3/g
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
# coincidir
s/\b\([Cc]\)oincideix\(en\|es\|\)\([^[:alnum:]]\)/\1oincidix\2\3/g
s/\b\([Cc]\)oincideixi\([^[:alnum:]]\)/\1oincidisca\2/g
s/\b\([Cc]\)oincideixi\([ns]\)\([^[:alnum:]]\)/\1oincidisque\2\3/g
s/\b\([Cc]\)oincideixo\([^[:alnum:]]\)/\1oincidisc\2/g
s/\b\([Cc]\)oincidís\([^[:alnum:]]\)/\1oincidira\2/g
s/\b\([Cc]\)oincidíssi\([mu]\)\([^[:alnum:]]\)/\1oincidíre\2\3/g
s/\b\([Cc]\)oincidissi\([ns]\)\([^[:alnum:]]\)/\1oincidire\2\3/g
	# concordar -> coincidir (PDT.)
	# concordança i concordant(s)
	s/\b\([Cc]\)oncorda\(da\|des\|r\|rà\|ran\|t\|ts\)\([^[:alnum:]]\)/\1oincidi\2\3/g
	s/\b\([Cc]\)oncorda\([^[:alnum:]]\)/\1oincidix\2/g
	s/\b\([Cc]\)oncordav\(a\|en\)\([^[:alnum:]]\)/\1oincidi\2\3/g
	s/\b\([Cc]\)oncorde\([mu]\|\)\([^[:alnum:]]\)/\1oincidi\2\3/g
	s/\b\([Cc]\)oncorde\([ns]\|\)\([^[:alnum:]]\)/\1oincidixe\2\3/g
	s/\b\([Cc]\)oncordés\([^[:alnum:]]\)/\1oincidira\2/g
	s/\b\([Cc]\)oncordéssi\([mu]\)\([^[:alnum:]]\)/\1coincidíre\2\3/g
	s/\b\([Cc]\)oncordessi\([ns]\)\([^[:alnum:]]\)/\1coincidire\2\3/g
	s/\b\([Cc]\)oncordi\([^[:alnum:]]\)/\1oincidisca\2/g
	s/\b\([Cc]\)oncordi\([ns]\)\([^[:alnum:]]\)/\1oincidisque\2\3/g
	s/\b\([Cc]\)oncordo\([^[:alnum:]]\)/\1oincidisc\2/g
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
# col·lidir
s/\b\([Cc]\)ol·lideix\(en\|es\|\)\([^[:alnum:]]\)/\1ol·lidix\2\3/g
s/\b\([Cc]\)ol·lideixi\([^[:alnum:]]\)/\1ol·lidisca\2/g
s/\b\([Cc]\)ol·lideixi\([ns]\)\([^[:alnum:]]\)/\1ol·lidisque\2\3/g
s/\b\([Cc]\)ol·lideixo\([^[:alnum:]]\)/\1ol·lidisc\2/g
s/\b\([Cc]\)ol·lidís\([^[:alnum:]]\)/\1ol·lidira\2/g
s/\b\([Cc]\)ol·lidíssi\([mu]\)\([^[:alnum:]]\)/\1ol·lidíre\2\3/g
s/\b\([Cc]\)ol·lidissi\([ns]\)\([^[:alnum:]]\)/\1ol·lidire\2\3/g
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
s/\b\([Cc]\)ulli\([^[:alnum:]]\)/\1culla\2/g
s/\b\([Cc]\)ulli\([ns]\)\([^[:alnum:]]\)/\1culle\2\3/g
s/\b\([Cc]\)ullo\([^[:alnum:]]\)/\1ull\2/g
	# recollir -> arreplegar
	s/\bRecolli\(da\|des\|nt\|r\|rà\|ran\|rem\|t\|ts\)\([^[:alnum:]]\)/Arreplega\1\2/g
	s/\brecolli\(da\|des\|nt\|r\|rà\|ran\|rem\|t\|ts\)\([^[:alnum:]]\)/arreplega\1\2/g
	s/\bRecollia\([^[:alnum:]]\)/Arreplegava\1/g
	s/\brecollia\([^[:alnum:]]\)/arreplegava\1/g
	s/\bRecollien\([^[:alnum:]]\)/Arreplegaven\1/g
	s/\brecollien\([^[:alnum:]]\)/arreplegaven\1/g
	s/\bRecolli\([mu]\)\([^[:alnum:]]\)/Arreplegue\1\2/g
	s/\brecolli\([mu]\)\([^[:alnum:]]\)/arreplegue\1\2/g
	s/\bRecollís\([^[:alnum:]]\)/Arreplegara\1/g
	s/\brecollís\([^[:alnum:]]\)/arreplegara\1/g
	s/\bRecollíssi\([mu]\)\([^[:alnum:]]\)/Arreplegàre\1\2/g
	s/\brecollíssi\([mu]\)\([^[:alnum:]]\)/arreplegàre\1\2/g
	s/\bRecollissi\([ns]\)\([^[:alnum:]]\)/Arreplegare\1\2/g
	s/\brecollissi\([ns]\)\([^[:alnum:]]\)/arreplegare\1\2/g
	s/\bRecull\([^[:alnum:]]\)/Arreplega\1/g
	s/\brecull\([^[:alnum:]]\)/arreplega\1/g
	s/\bRecullen\([^[:alnum:]]\)/Arrepleguen\1/g
	s/\brecullen\([^[:alnum:]]\)/arrepleguen\1/g
	s/\bRecull\([io]\)\([^[:alnum:]]\)/Arreplegue\2/g
	s/\brecull\([io]\)\([^[:alnum:]]\)/arreplegue\2/g
	s/\bReculli\([ns]\)\([^[:alnum:]]\)/Arreplegue\1\2/g
	s/\breculli\([ns]\)\([^[:alnum:]]\)/arreplegue\1\2/g
	s/\bReculls\([^[:alnum:]]\)/Arreplegues\1/g
	s/\breculls\([^[:alnum:]]\)/arreplegues\1/g
		s/\bes recolliren\([^[:alnum:]]\)/s'arreplegaren\1/g
	s/\bRecollidor\([^[:alnum:]]\)/Arreplegador\1/g
	s/\brecollidor\([^[:alnum:]]\)/arreplegador\1/g
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
# commutar -> canviar (PDT.)
	s/\bla commutació\([^[:alnum:]]\)/el canvi\1/g
s/\b\([Cc]\)ommuta\(da\|des\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1anvia\2\3/g
s/\b\([Cc]\)ommut\(a\|em\|en\|es\|eu\)\([^[:alnum:]]\)/\1anvi\2\3/g
s/\b\([Cc]\)ommutés\([^[:alnum:]]\)/\1ommutara\2/g
s/\b\([Cc]\)ommutéssi\([mu]\)\([^[:alnum:]]\)/\1ommutàre\2\3/g
s/\b\([Cc]\)ommutessi\([ns]\)\([^[:alnum:]]\)/\1ommutare\2\3/g
s/\b\([Cc]\)ommut\([io]\)\([^[:alnum:]]\)/\1anvie\3/g
s/\b\([Cc]\)ommuti\([ns]\)\([^[:alnum:]]\)/\1anvie\2\3/g
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
s/\b\([Cc]\)omparteix\(en\|es\|\)\([^[:alnum:]]\)/\1ompartix\2\3/g
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
s/\b\([Cc]\)ompleix\(en\|es\|\)\([^[:alnum:]]\)/\1omplix\2\3/g
s/\b\([Cc]\)ompleixi\([^[:alnum:]]\)/\1omplisca\2/g
s/\b\([Cc]\)ompleixi\([ns]\)\([^[:alnum:]]\)/\1omplisque\2\3/g
s/\b\([Cc]\)ompleixo\([^[:alnum:]]\)/\1omplisc\2/g
s/\b\([Cc]\)omplís\([^[:alnum:]]\)/\1omplira\2/g
s/\b\([Cc]\)omplíssi\([mu]\)\([^[:alnum:]]\)/\1omplíre\2\3/g
s/\b\([Cc]\)omplissi\([ns]\)\([^[:alnum:]]\)/\1omplire\2\3/g
	# acomplir
	s/\b\([Aa]\)compleix\(en\|es\|\)\([^[:alnum:]]\)/\1complix\2\3/g
	s/\b\([Aa]\)compleixi\([^[:alnum:]]\)/\1complisca\2/g
	s/\b\([Aa]\)compleixi\([ns]\)\([^[:alnum:]]\)/\1complisque\2\3/g
	s/\b\([Aa]\)compleixo\([^[:alnum:]]\)/\1complisc\2/g
	s/\b\([Aa]\)complís\([^[:alnum:]]\)/\1complira\2/g
	s/\b\([Aa]\)complíssi\([mu]\)\([^[:alnum:]]\)/\1complíre\2\3/g
	s/\b\([Aa]\)complissi\([ns]\)\([^[:alnum:]]\)/\1complire\2\3/g
	# incomplir
	s/\b\([Ii]\)ncompleix\(en\|es\|\)\([^[:alnum:]]\)/\1ncomplix\2\3/g
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
# comprimir
s/\b\([Cc]\)omprimeix\(en\|es\|\)\([^[:alnum:]]\)/\1omprimix\2\3/g
s/\b\([Cc]\)omprimeixi\([^[:alnum:]]\)/\1omprimisca\2/g
s/\b\([Cc]\)omprimeixi\([ns]\)\([^[:alnum:]]\)/\1omprimisque\2\3/g
s/\b\([Cc]\)omprimeixo\([^[:alnum:]]\)/\1omprimisc\2/g
s/\b\([Cc]\)omprimís\([^[:alnum:]]\)/\1omprimira\2/g
s/\b\([Cc]\)omprimíssi\([mu]\)\([^[:alnum:]]\)/\1omprimíre\2\3/g
s/\b\([Cc]\)omprimissi\([ns]\)\([^[:alnum:]]\)/\1omprimire\2\3/g
	# descomprimir
	s/\b\([Dd]\)escomprimeix\(en\|es\|\)\([^[:alnum:]]\)/\1escomprimix\2\3/g
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
	# TODO: no
	# contabilitzar -> comptabilitzar
	s/\b\([Cc]\)ontabilitza\(ble\|bles\|ció\|cions\|da\|des\|dor\|dors\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1omptabilitza\2\3/g
	s/\b\([Cc]\)ontabilitz\(em\|en\|es\|eu\)\([^[:alnum:]]\)/\1omptabilitz\2\3/g
	s/\b\([Cc]\)ontabilitzés\([^[:alnum:]]\)/\1omptabilitzara\2/g
	s/\b\([Cc]\)ontabilitzéssi\([mu]\)\([^[:alnum:]]\)/\1omptabilitzàre\2\3/g
	s/\b\([Cc]\)ontabilitzessi\([ns]\)\([^[:alnum:]]\)/\1omptabilitzare\2\3/g
	s/\b\([Cc]\)ontabilitz\([io]\)\([^[:alnum:]]\)/\1omptabilitze\3/g
	s/\b\([Cc]\)ontabilitzi\([ns]\)\([^[:alnum:]]\)/\1omptabilitz\2\3/g
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
# concedir
s/\b\([Cc]\)oncedeix\(en\|es\|\)\([^[:alnum:]]\)/\1oncedix\2\3/g
s/\b\([Cc]\)oncedeixi\([^[:alnum:]]\)/\1oncedisca\2/g
s/\b\([Cc]\)oncedeixi\([ns]\)\([^[:alnum:]]\)/\1oncedisque\2\3/g
s/\b\([Cc]\)oncedeixo\([^[:alnum:]]\)/\1oncedisc\2/g
s/\b\([Cc]\)oncedís\([^[:alnum:]]\)/\1oncedira\2/g
s/\b\([Cc]\)oncedíssi\([mu]\)\([^[:alnum:]]\)/\1oncedíre\2\3/g
s/\b\([Cc]\)oncedissi\([ns]\)\([^[:alnum:]]\)/\1oncedire\2\3/g
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
# conduir
s/\b\([Cc]\)ondueix\(en\|es\|\)\([^[:alnum:]]\)/\1onduïx\2\3/g
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
	# reconnectar
	# TODO: no
		s/\breconnectar-se\([^[:alnum:]]\)/tornar-se a connectar\1/g
	s/\bReconnecta\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Torna\1 a connectar\2/g
	s/\breconnecta\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/torna\1 a connectar\2/g
	s/\bReconnectés\([^[:alnum:]]\)/Tornara a connectar\1/g
	s/\breconnectés\([^[:alnum:]]\)/tornara a connectar\1/g
	s/\bReconnectéssi\([mu]\)\([^[:alnum:]]\)/Tornàre\1 a connectar\2/g
	s/\breconnectéssi\([mu]\)\([^[:alnum:]]\)/tornàre\1 a connectar\2/g
	s/\bReconnectessi\([ns]\)\([^[:alnum:]]\)/Tornare\1 a connectar\2/g
	s/\breconnectessi\([ns]\)\([^[:alnum:]]\)/tornare\1 a connectar\2/g
	s/\bReconnect\(i\|o]\)\([^[:alnum:]]\)/Torne a connectar\2/g
	s/\breconnect\(i\|o]\)\([^[:alnum:]]\)/torne a connectar\2/g
	s/\bReconnecti\([ns]\)\([^[:alnum:]]\)/Torne\1 a connectar\2/g
	s/\breconnecti\([ns]\)\([^[:alnum:]]\)/torne\1 a connectar\2/g
		s/\bla reconnexió\([^[:alnum:]]\)/tornar a connectar\1/g
			s/\bActiva tornar a connectar automàtica\([^[:alnum:]]\)/Activa tornar a connectar automàticament\1/g
	s/\bReconnexió\([^[:alnum:]]\)/Tornar a connectar\1/g
	s/\breconnexió\([^[:alnum:]]\)/tornar a connectar\1/g
# confeccionar
s/\b\([Cc]\)onfeccionés\([^[:alnum:]]\)/\1onfeccionara\2/g
s/\b\([Cc]\)onfeccionéssi\([mu]\)\([^[:alnum:]]\)/\1onfeccionàre\2\3/g
s/\b\([Cc]\)onfeccionessi\([ns]\)\([^[:alnum:]]\)/\1onfeccionare\2\3/g
s/\b\([Cc]\)onfeccion\([io]\)\([^[:alnum:]]\)/\1onfeccione\3/g
s/\b\([Cc]\)onfeccioni\([ns]\)\([^[:alnum:]]\)/\1onfeccione\2\3/g
# conquerir
s/\b\([Cc]\)onquereix\(en\|es\|\)\([^[:alnum:]]\)/\1onquerix\2\3/g
s/\b\([Cc]\)onquereixi\([^[:alnum:]]\)/\1onquerisca\2/g
s/\b\([Cc]\)onquereixi\([ns]\)\([^[:alnum:]]\)/\1onquerisque\2\3/g
s/\b\([Cc]\)onquereixo\([^[:alnum:]]\)/\1onquerisc\2/g
s/\b\([Cc]\)onquerís\([^[:alnum:]]\)/\1onquerira\2/g
s/\b\([Cc]\)onqueríssi\([mu]\)\([^[:alnum:]]\)/\1onqueríre\2\3/g
s/\b\([Cc]\)onquerissi\([ns]\)\([^[:alnum:]]\)/\1onquerire\2\3/g
	# reconquerir
	s/\b\([Rr]\)econquereix\(en\|es\|\)\([^[:alnum:]]\)/\1econquerix\2\3/g
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
s/\b\([Cc]\)onsisteix\(en\|es\|\)\([^[:alnum:]]\)/\1onsistix\2\3/g
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
s/\b\([Cc]\)onstitueix\(en\|es\|\)\([^[:alnum:]]\)/\1onstituïx\2\3/g
s/\b\([Cc]\)onstitueixi\([^[:alnum:]]\)/\1onstituïsca\2/g
s/\b\([Cc]\)onstitueixi\([ns]\)\([^[:alnum:]]\)/\1onstituïsque\2\3/g
s/\b\([Cc]\)onstitueixo\([^[:alnum:]]\)/\1onstituïsc\2/g
s/\b\([Cc]\)onstituís\([^[:alnum:]]\)/\1onstituïra\2/g
s/\b\([Cc]\)onstituíssi\([mu]\)\([^[:alnum:]]\)/\1onstituíre\2\3/g
s/\b\([Cc]\)onstituïssi\([ns]\)\([^[:alnum:]]\)/\1onstituïre\2\3/g
	# reconstituir
	s/\b\([Rr]\)econstitueix\(en\|es\|\)\([^[:alnum:]]\)/\1econstituïx\2\3/g
	s/\b\([Rr]\)econstitueixi\([^[:alnum:]]\)/\1econstituïsca\2/g
	s/\b\([Rr]\)econstitueixi\([ns]\)\([^[:alnum:]]\)/\1econstituïsque\2\3/g
	s/\b\([Rr]\)econstitueixo\([^[:alnum:]]\)/\1econstituïsc\2/g
	s/\b\([Rr]\)econstituís\([^[:alnum:]]\)/\1econstituïra\2/g
	s/\b\([Rr]\)econstituíssi\([mu]\)\([^[:alnum:]]\)/\1econstituíre\2\3/g
	s/\b\([Rr]\)econstituïssi\([ns]\)\([^[:alnum:]]\)/\1econstituïre\2\3/g
# construir
s/\b\([Cc]\)onstrueix\(en\|es\|\)\([^[:alnum:]]\)/\1onstruïx\2\3/g
s/\b\([Cc]\)onstrueixi\([^[:alnum:]]\)/\1onstruïsca\2/g
s/\b\([Cc]\)onstrueixi\([ns]\)\([^[:alnum:]]\)/\1onstruïsque\2\3/g
s/\b\([Cc]\)onstrueixo\([^[:alnum:]]\)/\1onstruïsc\2/g
s/\b\([Cc]\)onstruís\([^[:alnum:]]\)/\1onstruïra\2/g
s/\b\([Cc]\)onstruíssi\([mu]\)\([^[:alnum:]]\)/\1onstruíre\2\3/g
s/\b\([Cc]\)onstruïssi\([ns]\)\([^[:alnum:]]\)/\1onstruïre\2\3/g
	s/\bconstrueix\([^[:alnum:]]\)/construïx\1/g
	# deconstruir / reconstruir
	s/\b\([DdRr]\)econstrueix\(en\|es\|\)\([^[:alnum:]]\)/\1econstruïx\2\3/g
	s/\b\([DdRr]\)econstrueixi\([^[:alnum:]]\)/\1econstruïsca\2/g
	s/\b\([DdRr]\)econstrueixi\([ns]\)\([^[:alnum:]]\)/\1econstruïsque\2\3/g
	s/\b\([DdRr]\)econstrueixo\([^[:alnum:]]\)/\1econstruïsc\2/g
	s/\b\([DdRr]\)econstruís\([^[:alnum:]]\)/\1econstruïra\2/g
	s/\b\([DdRr]\)econstruíssi\([mu]\)\([^[:alnum:]]\)/\1econstruíre\2\3/g
	s/\b\([DdRr]\)econstruïssi\([ns]\)\([^[:alnum:]]\)/\1econstruïre\2\3/g
# consumir
s/\b\([Cc]\)onsumeix\(en\|es\|\)\([^[:alnum:]]\)/\1onsumix\2\3/g
s/\b\([Cc]\)onsumeixi\([^[:alnum:]]\)/\1onsumisca\2/g
s/\b\([Cc]\)onsumeixi\([ns]\)\([^[:alnum:]]\)/\1onsumisque\2\3/g
s/\b\([Cc]\)onsumeixo\([^[:alnum:]]\)/\1onsumisc\2/g
s/\b\([Cc]\)onsumís\([^[:alnum:]]\)/\1onsumira\2/g
s/\b\([Cc]\)onsumíssi\([mu]\)\([^[:alnum:]]\)/\1onsumíre\2\3/g
s/\b\([Cc]\)onsumissi\([ns]\)\([^[:alnum:]]\)/\1onsumire\2\3/g
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
s/\b\([Cc]\)onvergeix\(en\|es\|\)\([^[:alnum:]]\)/\1onvergix\2\3/g
s/\b\([Cc]\)onvergeixi\([^[:alnum:]]\)/\1onvergisca\2/g
s/\b\([Cc]\)onvergeixi\([ns]\)\([^[:alnum:]]\)/\1onvergisque\2\3/g
s/\b\([Cc]\)onvergeixo\([^[:alnum:]]\)/\1onvergisc\2/g
s/\b\([Cc]\)onvergís\([^[:alnum:]]\)/\1onvergira\2/g
s/\b\([Cc]\)onvergíssi\([mu]\)\([^[:alnum:]]\)/\1onvergíre\2\3/g
s/\b\([Cc]\)onvergissi\([ns]\)\([^[:alnum:]]\)/\1onvergire\2\3/g
# convertir
s/\b\([Cc]\)onverteix\(en\|es\|\)\([^[:alnum:]]\)/\1onvertix\2\3/g
s/\b\([Cc]\)onverteixi\([^[:alnum:]]\)/\1onvertisca\2/g
s/\b\([Cc]\)onverteixi\([ns]\)\([^[:alnum:]]\)/\1onvertisque\2\3/g
s/\b\([Cc]\)onverteixo\([^[:alnum:]]\)/\1onvertisc\2/g
s/\b\([Cc]\)onvertís\([^[:alnum:]]\)/\1onvertira\2/g
s/\b\([Cc]\)onvertíssi\([mu]\)\([^[:alnum:]]\)/\1onvertíre\2\3/g
s/\b\([Cc]\)onvertissi\([ns]\)\([^[:alnum:]]\)/\1onvertire\2\3/g
	# reconvertir
	s/\b\([Rr]\)econverteix\(en\|es\|\)\([^[:alnum:]]\)/\1econvertix\2\3/g
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
# cop -> colp / vegada
	s/\b\([Cc]\)op d'ull\([^[:alnum:]]\)/\1olp d'ull\2/g
	s/\bde cop\([^[:alnum:]]\)/de colp\1/g
	s/\b\([Dd]\)esfés el cop\([^[:alnum:]]\)/\1esfés el colp\2/g
	s/\b\([Ff]\)orça del cop\([^[:alnum:]]\)/\1orça del colp\2/g
	s/\bNombre màxim de cops\([^[:alnum:]]\)/Nombre màxim de colps\1/g
	s/\b\([Uu]\)n cop de penalització\([^[:alnum:]]\)/\1n colp de penalització\2/g
	s/\b\([Uu]\)n cop suau\([^[:alnum:]]\)/\1n colp suau\2/g
	#
	s/\b\([Cc]\)ada cop\([^[:alnum:]]\)/\1ada vegada\2/g
	s/\bcops consecutius\([^[:alnum:]]\)/vegades consecutives\1/g
	s/\bDarrer cop\([^[:alnum:]]\)/Última vegada\1/g
	s/\bdarrer cop\([^[:alnum:]]\)/última vegada\1/g
	s/\bel primer cop\([^[:alnum:]]\)/la primera vegada\1/g
	s/\bel pròxim cop\([^[:alnum:]]\)/la propera vegada\1/g
	s/\beste és el primer cop\([^[:alnum:]]\)/esta és la primera vegada\1/g
	s/\b\([Pp]\)er primer cop\([^[:alnum:]]\)/\1er primera vegada\2/g
	s/\bproveu-ho un altre cop\([^[:alnum:]]\)/proveu-ho una altra vegada\1/g
	s/\bqualsevol cop\([^[:alnum:]]\)/qualsevol vegada\1/g
	s/\b\([Úú]\)ltim cop\([^[:alnum:]]\)/\1ltima vegada\2/g
		s/\bdel última vegada\([^[:alnum:]]\)/de la última vegada\1/g
	s/\b\([Uu]\)n cop\([^[:alnum:]]\)/\1na vegada\2/g
	s/\b\([Uu]\)n altre cop\([^[:alnum:]]\)/\1na altra vegada\2/g
	s/\b\([Uu]\)n sol cop\([^[:alnum:]]\)/\1na sola vegada\2/g
	s/\bun-cop\([^[:alnum:]]\)/una-vegada\1/g
s/\bCops\([^[:alnum:]]\)/Vegades\1/g
s/\bcops\([^[:alnum:]]\)/vegades\1/g
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
s/\b\([Cc]\)orregeix\(en\|es\|\)\([^[:alnum:]]\)/\1orregix\2\3/g
s/\b\([Cc]\)orregeixi\([^[:alnum:]]\)/\1orregisca\2/g
s/\b\([Cc]\)orregeixi\([ns]\)\([^[:alnum:]]\)/\1orregisque\2\3/g
s/\b\([Cc]\)orregeixo\([^[:alnum:]]\)/\1orregisc\2/g
s/\b\([Cc]\)orregís\([^[:alnum:]]\)/\1orregira\2/g
s/\b\([Cc]\)orregíssi\([mu]\)\([^[:alnum:]]\)/\1orregíre\2\3/g
s/\b\([Cc]\)orregissi\([ns]\)\([^[:alnum:]]\)/\1orregire\2\3/g
	# recorregir
	s/\b\([Rr]\)ecorregeix\(en\|es\|\)\([^[:alnum:]]\)/\1ecorregix\2\3/g
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
# costar
s/\b\([Cc]\)ostés\([^[:alnum:]]\)/\1ostara\2/g
s/\b\([Cc]\)ostéssi\([mu]\)\([^[:alnum:]]\)/\1ostàre\2\3/g
s/\b\([Cc]\)ostessi\([ns]\)\([^[:alnum:]]\)/\1ostare\2\3/g
s/\b\([Cc]\)ost\([io]\)\([^[:alnum:]]\)/\1oste\3/g
s/\b\([Cc]\)osti\([ns]\)\([^[:alnum:]]\)/\1oste\2\3/g
	s/\bClaudiu Costen\([^[:alnum:]]\)/Claudiu Costin\1/g
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
s/\b\([Cc]\)reix\(en\|es\|\)\([^[:alnum:]]\)/\1rix\2\3/g
s/\b\([Cc]\)reixi\([^[:alnum:]]\)/\1resca\2/g
s/\b\([Cc]\)reixi\([ns]\)\([^[:alnum:]]\)/\1resque\2\3/g
s/\b\([Cc]\)reixo\([^[:alnum:]]\)/\1resc\2/g
s/\b\([Cc]\)re\(ix\|qu\)és\([^[:alnum:]]\)/\1resquera\2/g
s/\b\([Cc]\)re\(ix\|qu\)éssi\([mu]\)\([^[:alnum:]]\)/\1resquére\2\3/g
s/\b\([Cc]\)re\(ix\|qu\)essi\([ns]\)\([^[:alnum:]]\)/\1resquere\2\3/g
	# acréixer
	s/\b\([Aa]\)crèixer\([^[:alnum:]]\)/\1créixer\2/g
	s/\b\([Aa]\)creix\(en\|es\|\)\([^[:alnum:]]\)/\1crix\2\3/g
	s/\b\([Aa]\)creixi\([^[:alnum:]]\)/\1cresca\2/g
	s/\b\([Aa]\)creixi\([ns]\)\([^[:alnum:]]\)/\1cresque\2\3/g
	s/\b\([Aa]\)creixo\([^[:alnum:]]\)/\1cresc\2/g
	s/\b\([Aa]\)cre\(ix\|qu\)és\([^[:alnum:]]\)/\1cresquera\2/g
	s/\b\([Aa]\)cre\(ix\|qu\)éssi\([mu]\)\([^[:alnum:]]\)/\1cresquére\2\3/g
	s/\b\([Aa]\)cre\(ix\|qu\)essi\([ns]\)\([^[:alnum:]]\)/\1cresquere\2\3/g
	# decréixer / recréixer
	s/\b\([DdRr]\)ecrèixer\([^[:alnum:]]\)/\1ecréixer\2/g
	s/\b\([DdRr]\)ecreix\(en\|es\|\)\([^[:alnum:]]\)/\1ecrix\2\3/g
	s/\b\([DdRr]\)ecreixi\([^[:alnum:]]\)/\1ecresca\2/g
	s/\b\([DdRr]\)ecreixi\([ns]\)\([^[:alnum:]]\)/\1ecresque\2\3/g
	s/\b\([DdRr]\)ecreixo\([^[:alnum:]]\)/\1ecresc\2/g
	s/\b\([DdRr]\)ecre\(ix\|qu\)és\([^[:alnum:]]\)/\1ecresquera\2/g
	s/\b\([DdRr]\)ecre\(ix\|qu\)éssi\([mu]\)\([^[:alnum:]]\)/\1ecresquére\2\3/g
	s/\b\([DdRr]\)ecre\(ix\|qu\)essi\([ns]\)\([^[:alnum:]]\)/\1ecresquere\2\3/g
	# sobrecréixer
	s/\b\([Ss]\)obrecrèixer\([^[:alnum:]]\)/\1obrecréixer\2/g
	s/\b\([Ss]\)obrecreix\(en\|es\|\)\([^[:alnum:]]\)/\1obrecrix\2\3/g
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
# NOTE: PDT
s/\b\([Cc]\)rític\([^[:alnum:]]\)/\1rítica\2/g
	s/\b\([Ee]\)rror crítica\([^[:alnum:]]\)/\1rror crític\2/g
# cronometrar
s/\b\([Cc]\)ronometrés\([^[:alnum:]]\)/\1ronometrara\2/g
s/\b\([Cc]\)ronometréssi\([mu]\)\([^[:alnum:]]\)/\1ronometràre\2\3/g
s/\b\([Cc]\)ronometressi\([ns]\)\([^[:alnum:]]\)/\1ronometrare\2\3/g
s/\b\([Cc]\)ronometr\([io]\)\([^[:alnum:]]\)/\1ronometre\3/g
s/\b\([Cc]\)ronometri\([ns]\)\([^[:alnum:]]\)/\1ronometre\2\3/g
# d
#
s/\bD'hora\([^[:alnum:]]\)/Prompte\1/g
s/\bd'hora\([^[:alnum:]]\)/prompte\1/g
	s/\b\(Ajust\|ajust\|canvi\|expressió\|format\|indicador\|preferències\|Quarts\|quarts\|selecció\|Servidor\|servidor\|valor\) prompte\([^[:alnum:]]\)/\1 d'hora\2/g
s/\b\([Dd]\)anès\([^[:alnum:]]\)/\1anés\2/g
# danyar
s/\b\([Dd]\)anyés\([^[:alnum:]]\)/\1anyara\2/g
s/\b\([Dd]\)anyéssi\([mu]\)\([^[:alnum:]]\)/\1anyàre\2\3/g
s/\b\([Dd]\)anyessi\([ns]\)\([^[:alnum:]]\)/\1anyare\2\3/g
s/\b\([Dd]\)any\([io]\)\([^[:alnum:]]\)/\1anye\3/g
s/\b\([Dd]\)anyi\([ns]\)\([^[:alnum:]]\)/\1anye\2\3/g
	s/\bEl darrer\([^[:alnum:]]\)/L'últim\1/g
	s/\bel darrer\([^[:alnum:]]\)/l'últim\1/g
s/\bDarrer\(a\|es\|\)\([^[:alnum:]]\)/Últim\1\2/g
s/\bdarrer\(a\|es\|\)\([^[:alnum:]]\)/últim\1\2/g
s/\b\([Dd]\)e debò\([^[:alnum:]]\)/\1e veres\2/g
# debatre
s/\b\([Dd]\)ebatés\([^[:alnum:]]\)/\1ebatera\2/g
s/\b\([Dd]\)ebatéssi\([mu]\)\([^[:alnum:]]\)/\1ebatére\2\3/g
s/\b\([Dd]\)ebatessi\([ns]\)\([^[:alnum:]]\)/\1ebatere\2\3/g
s/\b\([Dd]\)ebati\([^[:alnum:]]\)/\1ebata\2/g
s/\b\([Dd]\)ebati\([ns]\)\([^[:alnum:]]\)/\1ebate\2\3/g
s/\b\([Dd]\)ebato\([^[:alnum:]]\)/\1ebat\2/g
# decidir
s/\b\([Dd]\)ecideix\(en\|es\|\)\([^[:alnum:]]\)/\1ecidix\2\3/g
s/\b\([Dd]\)ecideixi\([^[:alnum:]]\)/\1ecidisca\2/g
s/\b\([Dd]\)ecideixi\([ns]\)\([^[:alnum:]]\)/\1ecidisque\2\3/g
s/\b\([Dd]\)ecideixo\([^[:alnum:]]\)/\1ecidisc\2/g
s/\b\([Dd]\)ecidís\([^[:alnum:]]\)/\1ecidira\2/g
s/\b\([Dd]\)ecidíssi\([mu]\)\([^[:alnum:]]\)/\1ecidíre\2\3/g
s/\b\([Dd]\)ecidissi\([ns]\)\([^[:alnum:]]\)/\1ecidire\2\3/g
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
s/\b\([Dd]\)edueix\(en\|es\|\)\([^[:alnum:]]\)/\1eduïx\2\3/g
s/\b\([Dd]\)edueixi\([^[:alnum:]]\)/\1eduïsca\2/g
s/\b\([Dd]\)edueixi\([ns]\)\([^[:alnum:]]\)/\1eduïsque\2\3/g
s/\b\([Dd]\)edueixo\([^[:alnum:]]\)/\1eduïsc\2/g
s/\b\([Dd]\)eduís\([^[:alnum:]]\)/\1eduïra\2/g
s/\b\([Dd]\)eduíssi\([mu]\)\([^[:alnum:]]\)/\1eduíre\2\3/g
s/\b\([Dd]\)eduïssi\([ns]\)\([^[:alnum:]]\)/\1eduïre\2\3/g
# definir
s/\b\([Dd]\)efineix\(en\|es\|\)\([^[:alnum:]]\)/\1efinix\2\3/g
s/\b\([Dd]\)efineixi\([^[:alnum:]]\)/\1efinisca\2/g
s/\b\([Dd]\)efineixi\([ns]\)\([^[:alnum:]]\)/\1efinisque\2\3/g
s/\b\([Dd]\)efineixo\([^[:alnum:]]\)/\1efinisc\2/g
s/\b\([Dd]\)efinís\([^[:alnum:]]\)/\1efinira\2/g
s/\b\([Dd]\)efiníssi\([mu]\)\([^[:alnum:]]\)/\1efiníre\2\3/g
s/\b\([Dd]\)efinissi\([ns]\)\([^[:alnum:]]\)/\1efinire\2\3/g
	# TODO: no
	# redefinir
	s/\b\([Rr]\)edefineix\(en\|es\|\)\([^[:alnum:]]\)/\1edefinix\2\3/g
	s/\b\([Rr]\)edefineixi\([^[:alnum:]]\)/\1edefinisca\2/g
	s/\b\([Rr]\)edefineixi\([ns]\)\([^[:alnum:]]\)/\1edefinisque\2\3/g
	s/\b\([Rr]\)edefineixo\([^[:alnum:]]\)/\1edefinisc\2/g
	s/\b\([Rr]\)edefinís\([^[:alnum:]]\)/\1edefinira\2/g
	s/\b\([Rr]\)edefiníssi\([mu]\)\([^[:alnum:]]\)/\1edefiníre\2\3/g
	s/\b\([Rr]\)edefinissi\([ns]\)\([^[:alnum:]]\)/\1edefinire\2\3/g
s/\b\([Dd]\)e franc\([^[:alnum:]]\)/\1ebades\2/g
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
# desar -> guardar
s/\bDes\(a\|ada\|ades\|ant\|ar\|arà\|aran\|areu\|at\|ats\|ava\|aven\|en\|es\|eu\|in\|is\)\([^[:alnum:]]\)/Guard\1\2/g
s/\bdes\(a\|ada\|ades\|ant\|ar\|arà\|aran\|areu\|at\|ats\|ava\|aven\|en\|es\|eu\|in\|is\)\([^[:alnum:]]\)/guard\1\2/g
	s/\b\([Aa]\)utodesat\([^[:alnum:]]\)/\1utoguardat\2/g
	s/\bObrir i guardar fitxers\([^[:alnum:]]\)/Obri i guarda fitxers\1/g
	s/\bdel desament automàtic\([^[:alnum:]]\)/de la guardada automàtica\1/g
	s/\bdels desaments automàtics\([^[:alnum:]]\)/de les guardades automàtiques\1/g
	s/\bDesament automàtic\([^[:alnum:]]\)/Guardada automàtica\1/g
	s/\bdesament automàtic\([^[:alnum:]]\)/guardada automàtica\1/g
	s/\bDesaments automàtics\([^[:alnum:]]\)/Guardades automàtiques\1/g
	s/\bdesaments automàtics\([^[:alnum:]]\)/guardades automàtiques\1/g
s/\bDesament\([^[:alnum:]]\)/Guardada\1/g
s/\bdesament\([^[:alnum:]]\)/guardada\1/g
s/\bDesaments\([^[:alnum:]]\)/Guardades\1/g
s/\bdesaments\([^[:alnum:]]\)/guardades\1/g
	s/\bEl guardada\([^[:alnum:]]\)/La guardada\1/g
	s/\bel guardada\([^[:alnum:]]\)/la guardada\1/g
    s/\bguardada manual de la sessió estigui actiu\([^[:alnum:]]\)/guardada manual de la sessió estiga activa\1/g
s/\bDesés\([^[:alnum:]]\)/Guardara\1/g
s/\bdesés\([^[:alnum:]]\)/guardara\1/g
s/\bDeséssi\([mu]\)\([^[:alnum:]]\)/Guardàre\1\2/g
s/\bdeséssi\([mu]\)\([^[:alnum:]]\)/guardàre\1\2/g
s/\bDesessi\([ns]\)\([^[:alnum:]]\)/Guardare\1\2/g
s/\bdesessi\([ns]\)\([^[:alnum:]]\)/guardare\1\2/g
s/\bDes[io]\([^[:alnum:]]\)/Guarde\1/g
s/\bdes[io]\([^[:alnum:]]\)/guarde\1/g
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
# desitjar
s/\b\([Dd]\)esitgés\([^[:alnum:]]\)/\1esitjara\2/g
s/\b\([Dd]\)esitgéssi\([mu]\)\([^[:alnum:]]\)/\1esitjàre\2\3/g
s/\b\([Dd]\)esitgessi\([ns]\)\([^[:alnum:]]\)/\1esitjare\2\3/g
s/\bDesitgeu\([^[:alnum:]]\)/Voleu\1/g
s/\bdesitgeu\([^[:alnum:]]\)/voleu\1/g
    s/\"voleu de les quals\([^[:alnum:]]\)/\"vulgueu de les quals\1/g
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
# destil·lar
s/\b\([Dd]\)estil·lés\([^[:alnum:]]\)/\1estil·lara\2/g
s/\b\([Dd]\)estil·léssi\([mu]\|\)\([^[:alnum:]]\)/\1estil·làre\2\3/g
s/\b\([Dd]\)estil·lessi\([ns]\|\)\([^[:alnum:]]\)/\1estil·lare\2\3/g
s/\b\([Dd]\)estil·l\([io]\)\([^[:alnum:]]\)/\1estil·le\3/g
s/\b\([Dd]\)estil·li\([ns]\)\([^[:alnum:]]\)/\1estil·le\2\3/g
# #
# s/\b\([Dd]\)estinació\([^[:alnum:]]\)/\1estí\2/g
# s/\b\([Dd]\)estinacions\([^[:alnum:]]\)/\1estins\2/g
# digikam.po, gcompris_qt.po, org.kde.itinerary.appdata.po, kde-itinerary.po, kphotoalbum.po, ktrip.po, marble_qt
	s/\barribat en la destinació\([^[:alnum:]]\)/arribat al destí\1/g
	s/\batènyer la vostra destinació\([^[:alnum:]]\)/atényer el vostre destí\1/g
 	s/\bBusca la ubicació de destinació\([^[:alnum:]]\)/Busca la ubicació de destí\1/g
	s/\bCarcassona es troba entre les destinacions turístiques més prestigioses\([^[:alnum:]]\)/Carcassona es troba entre els destins turístics més prestigiosos\1/g
	s/\bde la destinació durant el viatge\([^[:alnum:]]\)/del destí durant el viatge\1/g
	s/\bDestinació enfront\([^[:alnum:]]\)/Destí enfront\1/g
	s/\bElimina aquesta destinació\([^[:alnum:]]\)/Elimina aquest destí\1/g
	s/\ben les destinacions de viatges\([^[:alnum:]]\)/en els destins de viatges\1/g
	s/\bID de la destinació\([^[:alnum:]]\)/ID del destí\1/g
	s/\bIndiqueu la destinació del sobre\([^[:alnum:]]\)/Indiqueu el destí del sobre\1/g
# 	Destinació:
	s/\bper a les destinacions seleccionades\([^[:alnum:]]\)/per als destins seleccionats\1/g
 	s/\bSeleccioneu la destinació\([^[:alnum:]]\)/Seleccioneu el destí\1/g
 	s/\bVídeo de destinació\([^[:alnum:]]\)/Vídeo del destí\1/g
# #
# destorbar
s/\b\([Dd]\)estorbés\([^[:alnum:]]\)/\1estorbara\2/g
s/\b\([Dd]\)estorbéssi\([mu]\|\)\([^[:alnum:]]\)/\1estorbàre\2\3/g
s/\b\([Dd]\)estorbessi\([ns]\|\)\([^[:alnum:]]\)/\1estorbare\2\3/g
s/\b\([Dd]\)estorb\([io]\)\([^[:alnum:]]\)/\1estorbe\3/g
s/\b\([Dd]\)estorbi\([ns]\)\([^[:alnum:]]\)/\1estorbe\2\3/g
# destruir
s/\b\([Dd]\)estrueix\(en\|es\|\)\([^[:alnum:]]\)/\1estruïx\2\3/g
s/\b\([Dd]\)estrueixi\([^[:alnum:]]\)/\1estruïsca\2/g
s/\b\([Dd]\)estrueixi\([ns]\)\([^[:alnum:]]\)/\1estruïsque\2\3/g
s/\b\([Dd]\)estrueixo\([^[:alnum:]]\)/\1estruïsc\2/g
s/\b\([Dd]\)estruís\([^[:alnum:]]\)/\1estruïra\2/g
s/\b\([Dd]\)estruíssi\([mu]\|\)\([^[:alnum:]]\)/\1estruíre\2\3/g
s/\b\([Dd]\)estruïssi\([ns]\|\)\([^[:alnum:]]\)/\1estruïre\2\3/g
	s/\b\([Dd]\)iàleg de desconnexió\([^[:alnum:]]\)/\1iàleg d'eixida\2/g
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
# diferenciar
s/\b\([Dd]\)iferenciés\([^[:alnum:]]\)/\1iferenciara\2/g
s/\b\([Dd]\)iferenciéssi\([mu]\|\)\([^[:alnum:]]\)/\1iferenciàre\2\3/g
s/\b\([Dd]\)iferenciessi\([ns]\|\)\([^[:alnum:]]\)/\1iferenciare\2\3/g
s/\b\([Dd]\)iferenci\([ïo]\)\([^[:alnum:]]\)/\1iferencie\3/g
s/\b\([Dd]\)iferenciï\([ns]\)\([^[:alnum:]]\)/\1iferencie\2\3/g
# diferir
s/\b\([Dd]\)ifereix\(en\|es\|\)\([^[:alnum:]]\)/\1iferix\2\3/g
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
s/\bDIPÒSIT\([^[:alnum:]]\)/DEPÓSIT\1/g
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
# dipositar -> depositar
s/\b\([Dd]\)iposita\(da\|des\|nt\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1eposita\2\3/g
s/\b\([Dd]\)iposités\([^[:alnum:]]\)/\1epositara\2/g
s/\b\([Dd]\)ipositéssi\([mu]\|\)\([^[:alnum:]]\)/\1epositàre\2\3/g
s/\b\([Dd]\)ipositessi\([ns]\|\)\([^[:alnum:]]\)/\1epositare\2\3/g
s/\b\([Dd]\)iposite\(m\|n\|s\|u\)\([^[:alnum:]]\)/\1eposite\2\3/g
s/\b\([Dd]\)iposit\([io]\)\([^[:alnum:]]\)/\1eposite\3/g
s/\b\([Dd]\)ipositi\([ns]\)\([^[:alnum:]]\)/\1eposite\2\3/g
# dir
s/\b\([Dd]\)igués\([^[:alnum:]]\)/\1iguera\2/g
s/\b\([Dd]\)iguéssi\([mu]\|\)\([^[:alnum:]]\)/\1iguére\2\3/g
s/\b\([Dd]\)iguessi\([ns]\|\)\([^[:alnum:]]\)/\1iguere\2\3/g
s/\b\([Dd]\)igui\([^[:alnum:]]\)/\1iga\2/g
s/\b\([Dd]\)igui\([ns]\)\([^[:alnum:]]\)/\1igue\2\3/g
# dirigir
s/\b\([Dd]\)irigeix\(en\|es\|\)\([^[:alnum:]]\)/\1irigix\2\3/g
s/\b\([Dd]\)irigeixi\([^[:alnum:]]\)/\1irigisca\2/g
s/\b\([Dd]\)irigeixi\([ns]\)\([^[:alnum:]]\)/\1irigisque\2\3/g
s/\b\([Dd]\)irigeixo\([^[:alnum:]]\)/\1irigisc\2/g
s/\b\([Dd]\)irigís\([^[:alnum:]]\)/\1irigira\2/g
s/\b\([Dd]\)irigíssi\([mu]\|\)\([^[:alnum:]]\)/\1irigíre\2\3/g
s/\b\([Dd]\)irigissi\([ns]\|\)\([^[:alnum:]]\)/\1irigire\2\3/g
	# TODO: no
	# redirigir
	s/\b\([Rr]\)edirigeix\(en\|es\|\)\([^[:alnum:]]\)/\1edirigix\2\3/g
	s/\b\([Rr]\)edirigeixi\([^[:alnum:]]\)/\1edirigisca\2/g
	s/\b\([Rr]\)edirigeixi\([ns]\)\([^[:alnum:]]\)/\1edirigisque\2\3/g
	s/\b\([Rr]\)edirigeixo\([^[:alnum:]]\)/\1edirigisc\2/g
	s/\b\([Rr]\)edirigís\([^[:alnum:]]\)/\1edirigira\2/g
	s/\b\([Rr]\)edirigíssi\([mu]\|\)\([^[:alnum:]]\)/\1edirigíre\2\3/g
	s/\b\([Rr]\)edirigissi\([ns]\|\)\([^[:alnum:]]\)/\1edirigire\2\3/g
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
s/\b\([Dd]\)isminueix\(en\|es\|\)\([^[:alnum:]]\)/\1isminuïx\2\3/g
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
s/\b\([Dd]\)istingeix\(en\|es\|\)\([^[:alnum:]]\)/\1istingix\2\3/g
s/\b\([Dd]\)istingeixi\([^[:alnum:]]\)/\1istingisca\2/g
s/\b\([Dd]\)istingeixi\([ns]\)\([^[:alnum:]]\)/\1istingisque\2\3/g
s/\b\([Dd]\)istingeixo\([^[:alnum:]]\)/\1istingisc\2/g
s/\b\([Dd]\)istingís\([^[:alnum:]]\)/\1istingira\2/g
s/\b\([Dd]\)istingíssi\([mu]\|\)\([^[:alnum:]]\)/\1istingíre\2\3/g
s/\b\([Dd]\)istingissi\([ns]\|\)\([^[:alnum:]]\)/\1istingire\2\3/g
# divertir
s/\b\([Dd]\)iverteix\(en\|es\|\)\([^[:alnum:]]\)/\1ivertix\2\3/g
s/\b\([Dd]\)iverteixi\([^[:alnum:]]\)/\1ivertisca\2/g
s/\b\([Dd]\)iverteixi\([ns]\)\([^[:alnum:]]\)/\1ivertisque\2\3/g
s/\b\([Dd]\)iverteixo\([^[:alnum:]]\)/\1ivertisc\2/g
s/\b\([Dd]\)ivertís\([^[:alnum:]]\)/\1ivertira\2/g
s/\b\([Dd]\)ivertíssi\([mu]\|\)\([^[:alnum:]]\)/\1ivertíre\2\3/g
s/\b\([Dd]\)ivertissi\([ns]\|\)\([^[:alnum:]]\)/\1ivertire\2\3/g
# dividir
s/\b\([Dd]\)ivideix\(en\|es\|\)\([^[:alnum:]]\)/\1ividix\2\3/g
s/\b\([Dd]\)ivideixi\([^[:alnum:]]\)/\1ividisca\2/g
s/\b\([Dd]\)ivideixi\([ns]\)\([^[:alnum:]]\)/\1ividisque\2\3/g
s/\b\([Dd]\)ivideixo\([^[:alnum:]]\)/\1ividisc\2/g
s/\b\([Dd]\)ividís\([^[:alnum:]]\)/\1ividira\2/g
s/\b\([Dd]\)ividíssi\([mu]\|\)\([^[:alnum:]]\)/\1ividíre\2\3/g
s/\b\([Dd]\)ividissi\([ns]\|\)\([^[:alnum:]]\)/\1ividire\2\3/g
# documentar
s/\b\([Dd]\)ocumentés\([^[:alnum:]]\)/\1ocumentara\2/g
s/\b\([Dd]\)ocumentéssi\([mu]\|\)\([^[:alnum:]]\)/\1ocumentàre\2\3/g
s/\b\([Dd]\)ocumentessi\([ns]\|\)\([^[:alnum:]]\)/\1ocumentare\2\3/g
s/\b\([Dd]\)ocument\([io]\)\([^[:alnum:]]\)/\1ocumente\3/g
s/\b\([Dd]\)ocumenti\([ns]\)\([^[:alnum:]]\)/\1ocumente\2\3/g
s/\b\([Dd]\)odecanès\([^[:alnum:]]\)/\1odecanés\2/g
s/\bDOLENT\([^[:alnum:]]\)/ROÍN\1/g
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
# durar
s/\b\([Dd]\)urada\([^[:alnum:]]\)/\1uració\2/g
s/\b\([Dd]\)urés\([^[:alnum:]]\)/\1urara\2/g
s/\b\([Dd]\)uréssi\([mu]\|\)\([^[:alnum:]]\)/\1uràre\2\3/g
s/\b\([Dd]\)uressi\([ns]\|\)\([^[:alnum:]]\)/\1urare\2\3/g
s/\b\([Dd]\)ur\([io]\)\([^[:alnum:]]\)/\1ure\3/g
s/\b\([Dd]\)uri\([ns]\)\([^[:alnum:]]\)/\1ure\2\3/g
	s/\"Duren\"/\"Durin\"/g
s/\b\([Dd]\)urrès\([^[:alnum:]]\)/\1urrés\2/g
# e
#
# editar
s/\b\([Ee]\)dités\([^[:alnum:]]\)/\1ditara\2/g
s/\b\([Ee]\)ditéssi\([mu]\|\)\([^[:alnum:]]\)/\1ditàre\2\3/g
s/\b\([Ee]\)ditessi\([ns]\|\)\([^[:alnum:]]\)/\1ditare\2\3/g
s/\b\([Ee]\)dit\([io]\)\([^[:alnum:]]\)/\1dite\3/g
s/\b\([Ee]\)diti\([ns]\)\([^[:alnum:]]\)/\1dite\2\3/g
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
# elidir
s/\b\([Ee]\)lideix\(en\|es\|\)\([^[:alnum:]]\)/\1lidix\2\3/g
s/\b\([Ee]\)lideixi\([^[:alnum:]]\)/\1lidisca\2/g
s/\b\([Ee]\)lideixi\([ns]\)\([^[:alnum:]]\)/\1lidisque\2\3/g
s/\b\([Ee]\)lideixo\([^[:alnum:]]\)/\1lidisc\2/g
s/\b\([Ee]\)lidís\([^[:alnum:]]\)/\1lidira\2/g
s/\b\([Ee]\)lidíssi\([mu]\|\)\([^[:alnum:]]\)/\1lidíre\2\3/g
s/\b\([Ee]\)lidissi\([ns]\|\)\([^[:alnum:]]\)/\1lidire\2\3/g
# eliminar
s/\b\([Ee]\)liminés\([^[:alnum:]]\)/\1liminara\2/g
s/\b\([Ee]\)liminéssi\([mu]\|\)\([^[:alnum:]]\)/\1liminàre\2\3/g
s/\b\([Ee]\)liminessi\([ns]\|\)\([^[:alnum:]]\)/\1liminare\2\3/g
s/\b\([Ee]\)limin\([io]\)\([^[:alnum:]]\)/\1limine\3/g
s/\b\([Ee]\)limini\([ns]\)\([^[:alnum:]]\)/\1limine\2\3/g
s/\bEmbolcalla\(r\|\)\([^[:alnum:]]\)/Ajusta\1\2/g
s/\bembolcalla\(r\|\)\([^[:alnum:]]\)/ajusta\1\2/g
# embruixar
s/\b\([Ee]\)mbruixés\([^[:alnum:]]\)/\1mbruixara\2/g
s/\b\([Ee]\)mbruixéssi\([mu]\|\)\([^[:alnum:]]\)/\1mbruixàre\2\3/g
s/\b\([Ee]\)mbruixessi\([ns]\|\)\([^[:alnum:]]\)/\1mbruixare\2\3/g
s/\b\([Ee]\)mbruix\([io]\)\([^[:alnum:]]\)/\1mbruixe\3/g
s/\b\([Ee]\)mbruixi\([ns]\|\)\([^[:alnum:]]\)/\1mbruixe\2\3/g
# embolicar
s/\b\([Ee]\)mboliqués\([^[:alnum:]]\)/\1mbolicara\2/g
s/\b\([Ee]\)mboliquéssi\([mu]\|\)\([^[:alnum:]]\)/\1mbolicàre\2\3/g
s/\b\([Ee]\)mboliquessi\([ns]\|\)\([^[:alnum:]]\)/\1mbolicare\2\3/g
s/\b\([Ee]\)mbolico\([^[:alnum:]]\)/\1mbolique\2/g
s/\b\([Ee]\)mboliqui\([ns]\|\)\([^[:alnum:]]\)/\1mbolique\2\3/g
# emergir
s/\b\([Ee]\)mergeix\(en\|es\|\)\([^[:alnum:]]\)/\1mergix\2\3/g
s/\b\([Ee]\)mergeixi\([^[:alnum:]]\)/\1mergisca\2/g
s/\b\([Ee]\)mergeixi\([ns]\)\([^[:alnum:]]\)/\1mergisque\2\3/g
s/\b\([Ee]\)mergeixo\([^[:alnum:]]\)/\1mergisc\2/g
s/\b\([Ee]\)mergís\([^[:alnum:]]\)/\1mergira\2/g
s/\b\([Ee]\)mergíssi\([mu]\|\)\([^[:alnum:]]\)/\1mergíre\2\3/g
s/\b\([Ee]\)mergissi\([ns]\|\)\([^[:alnum:]]\)/\1mergire\2\3/g
	# submergir
	s/\b\([Ss]\)ubmergeix\(en\|es\|\)\([^[:alnum:]]\)/\1ubmergix\2\3/g
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
	s/\bEmmagatzema l'últim\([^[:alnum:]]\)/Emmagatzema l'última\1/g
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
s/\b\([Ee]\)mpenyés\([^[:alnum:]]\)/\1mpenyera\2/g
s/\b\([Ee]\)mpenyéssi\([mu]\)\([^[:alnum:]]\)/\1mpenyére\2\3/g
s/\b\([Ee]\)mpenyessi\([ns]\)\([^[:alnum:]]\)/\1mpenyere\2\3/g
	s/\b\([Ee]\)mpenyar\([^[:alnum:]]\)/\1mpènyer\2/g
s/\b\([Ee]\)mpè\(nyer\|s\)\([^[:alnum:]]\)/\1mpé\2\3/g
s/\b\([Ee]\)mpenyi\([^[:alnum:]]\)/\1mpenya\2/g
s/\b\([Ee]\)mpenyi\([ns]\)\([^[:alnum:]]\)/\1mpenye\2\3/g
s/\b\([Ee]\)mpenyo\([^[:alnum:]]\)/\1mpeny\2/g
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
s/\b\([Ee]\)ncabeix\(en\|es\|\)\([^[:alnum:]]\)/\1ncabix\2\3/g
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
# encongir -> encollir
s/\b\([Ee]\)ncongeix\([^[:alnum:]]\)/\1ncull\2/g
s/\b\([Ee]\)ncongeixen\([^[:alnum:]]\)/\1ncullen\2/g
s/\b\([Ee]\)ncongeixes\([^[:alnum:]]\)/\1nculls\2/g
s/\b\([Ee]\)ncongeixi\([^[:alnum:]]\)/\1nculla\2/g
s/\b\([Ee]\)ncongeixi\([ns]\)\([^[:alnum:]]\)/\1nculle\2\3/g
s/\b\([Ee]\)ncongeixo\([^[:alnum:]]\)/\1ncull\2/g
s/\b\([Ee]\)ncongi\(a\|en\|da\|des\|nt\|r\|rà\|ran\|t\|ts\)\([^[:alnum:]]\)/\1ncolli\2\3/g
s/\b\([Ee]\)ncongi\([mu]\|\)\([^[:alnum:]]\)/\1ncolli\2\3/g
s/\b\([Ee]\)ncongiment\([^[:alnum:]]\)/\1ncolliment\2/g
	s/\bper al seu encriptatge\([^[:alnum:]]\)/per a l'encriptació\1/g
	s/\bun encriptatge segur màxim\([^[:alnum:]]\)/una encriptació segura màxima\1/g
s/\b\([Ee]\)ncriptatge\([^[:alnum:]]\)/\1ncriptació\2/g
	s/\bclau de l'encriptació\([^[:alnum:]]\)/clau d'encriptació\1/g
	s/\b\([Ee]\)ncriptació simètric\([^[:alnum:]]\)/\1ncriptació simètrica\2/g
s/\b\([Dd]\)esencriptatge\([^[:alnum:]]\)/\1esencriptació\2/g
	s/\bdel desencriptació\([^[:alnum:]]\)/de desencriptació\1/g
	s/\bEl desencriptació\([^[:alnum:]]\)/La desencriptació\1/g
	s/\b\(a \|\)el desencriptació\([^[:alnum:]]\)/\1la desencriptació\2/g
	s/\bal desencriptació\([^[:alnum:]]\)/la desencriptació\1/g
	s/\bdesprés de desencriptació\([^[:alnum:]]\)/després de la desencriptació\1/g
	s/\b\([Dd]\)esencriptació correcte\([^[:alnum:]]\)/\1esencriptació correcte\2/g
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
# endarrerir
s/\b\([Ee]\)ndarrereix\(en\|es\|\)\([^[:alnum:]]\)/\1ndarrerix\2\3/g
s/\b\([Ee]\)ndarrereixi\([^[:alnum:]]\)/\1ndarrerisca\2/g
s/\b\([Ee]\)ndarrereixi\([ns]\)\([^[:alnum:]]\)/\1ndarrerisque\2\3/g
s/\b\([Ee]\)ndarrereixo\([^[:alnum:]]\)/\1ndarrerisc\2/g
s/\b\([Ee]\)ndarrerís\([^[:alnum:]]\)/\1ndarrerira\2/g
s/\b\([Ee]\)ndarreríssi\([mu]\)\([^[:alnum:]]\)/\1ndarreríre\2\3/g
s/\b\([Ee]\)ndarrerissi\([ns]\)\([^[:alnum:]]\)/\1ndarrerire\2\3/g
s/\bEn\(dar\|\)rere\([^[:alnum:]]\)/Arrere\2/g
s/\ben\(dar\|\)rere\([^[:alnum:]]\)/arrere\2/g
	s/\bCompteEnrere\([^[:alnum:]]\)/CompteArrere\1/g
	s/\b\([Dd]\)'ara endavant\([^[:alnum:]]\)/\1'ara en avant\2/g
s/\bEndavant\([^[:alnum:]]\)/Avant\1/g
s/\bendavant\([^[:alnum:]]\)/avant\1/g
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
# endollar
# PDT:
s/\bEndoll\(a\|ada\|ant\|at\|i\|in\)\([^[:alnum:]]\)/Connect\1\2/g
s/\bendoll\(a\|ada\|ant\|at\|i\|in\)\([^[:alnum:]]\)/connect\1\2/g
	s/\bs'connecti\(n\|\)\([^[:alnum:]]\)/es connecte\1\2/g
	# desendollar
	# PDT:
	s/\b\([Dd]\)esendoll\(a\|ada\|ant\|at\|i\|in\)\([^[:alnum:]]\)/\1esconnect\2\3/g
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
	# reenfocar
	# TODO: no
	s/\bReenfoca\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Torna\1 a enfocar\2/g
	s/\breenfoca\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/torna\1 a enfocar\2/g
	s/\bReenfoqués\([^[:alnum:]]\)/Tornara a enfocar\1/g
	s/\breenfoqués\([^[:alnum:]]\)/tornara a enfocar\1/g
	s/\bReenfoquéssi\([mu]\)\([^[:alnum:]]\)/Tornàre\1 a enfocar\2/g
	s/\breenfoquéssi\([mu]\)\([^[:alnum:]]\)/tornàre\1 a enfocar\2/g
	s/\bReenfoquessi\([ns]\)\([^[:alnum:]]\)/Tornare\1 a enfocar\2/g
	s/\breenfoquessi\([ns]\)\([^[:alnum:]]\)/tornare\1 a enfocar\2/g
	s/\bReenfoqui\([ns]\|\)\([^[:alnum:]]\)/Torne\1 a enfocar\2/g
	s/\breenfoqui\([ns]\|\)\([^[:alnum:]]\)/torne\1 a enfocar\2/g
	s/\bReenfoco\([^[:alnum:]]\)/Torne a enfocar\1/g
	s/\breenfoco\([^[:alnum:]]\)/torne a enfocar\1/g
# enfosquir
s/\b\([Ee]\)nfosqueix\(en\|es\|\)\([^[:alnum:]]\)/\1nfosquix\2\3/g
s/\b\([Ee]\)nfosqueixi\([^[:alnum:]]\)/\1nfosquisca\2/g
s/\b\([Ee]\)nfosqueixi\([ns]\)\([^[:alnum:]]\)/\1nfosquisque\2\3/g
s/\b\([Ee]\)nfosqueixo\([^[:alnum:]]\)/\1nfosquisc\2/g
s/\b\([Ee]\)nfosquís\([^[:alnum:]]\)/\1nfosquira\2/g
s/\b\([Ee]\)nfosquíssi\([mu]\|\)\([^[:alnum:]]\)/\1nfosquíre\2\3/g
s/\b\([Ee]\)nfosquissi\([ns]\|\)\([^[:alnum:]]\)/\1nfosquire\2\3/g
# enganxar
	s/\bCopiar i enganxar\([^[:alnum:]]\)/Copia i apega\1/g
	s/\b\([Dd]\)esenganxa\([^[:alnum:]]\)/\1esapega\2/g
	s/\b\([Dd]\)esenganxen\([^[:alnum:]]\)/\1esapeguen\2/g
s/\bEnganxa\(nt\|r\|rà\|ran\|t\|ts\|\)\([^[:alnum:]]\)/Apega\1\2/g
s/\benganxa\(nt\|r\|rà\|ran\|t\|ts\|\)\([^[:alnum:]]\)/apega\1\2/g
	s/\b\([Aa]\)utoenganxa\(t\|\)\([^[:alnum:]]\)/\1utoapega\2\3/g
s/\bEnganxés\([^[:alnum:]]\)/Apegara\1/g
s/\benganxés\([^[:alnum:]]\)/apegara\1/g
s/\bEnganxéssi\([mu]\|\)\([^[:alnum:]]\)/Apegàre\1\2/g
s/\benganxéssi\([mu]\|\)\([^[:alnum:]]\)/apegàre\1\2/g
s/\bEnganxessi\([ns]\|\)\([^[:alnum:]]\)/Apegare\1\2/g
s/\benganxessi\([ns]\|\)\([^[:alnum:]]\)/apegare\1\2/g
s/\bEnganxeu\([^[:alnum:]]\)/Apegueu\1/g
s/\benganxeu\([^[:alnum:]]\)/apegueu\1/g
	s/\b\([Aa]\)ccions d'enganxament\([^[:alnum:]]\)/\1ccions d'apegada\2/g
s/\bEnganxament\([^[:alnum:]]\)/Apegades\1/g
s/\benganxament\([^[:alnum:]]\)/apegades\1/g
s/\bEnganxi\([ns]\)\([^[:alnum:]]\)/Apegue\1\2/g
s/\benganxi\([ns]\)\([^[:alnum:]]\)/apegue\1\2/g
s/\bEnganxen\([^[:alnum:]]\)/Apeguen\1/g
s/\benganxen\([^[:alnum:]]\)/apeguen\1/g
s/\bEnganx\([io]\)\([^[:alnum:]]\)/Apegue\2/g
s/\benganx\([io]\)\([^[:alnum:]]\)/apegue\2/g
	s/\b\([Dd]\)esenganxa\(nt\|r\|rà\|ran\|t\|ts\|\)\([^[:alnum:]]\)/\1esapega\2\3/g
	s/\b\([Dd]\)esenganxament\([^[:alnum:]]\)/\1esapegades\2/g
	s/\b\([Dd]\)esenganxen\([^[:alnum:]]\)/\1esapeguen\2/g
	s/\b\([Dd]\)esenganxeu\([^[:alnum:]]\)/\1esapegueu\2/g
	s/\b\([Dd]\)esenganx\([io]\)\([^[:alnum:]]\)/\1esapegue\3/g
	s/\b\([Dd]\)esenganxi\([ns]\)\([^[:alnum:]]\)/\1esapegue\2\3/g
# engegar -> iniciar
s/\bENGEGAT\([^[:alnum:]]\)/INICIAT\1/g
s/\bEngega\(da\|des\|nt\|nts\|r\|rà\|t\|ts\|\)\([^[:alnum:]]\)/Inicia\1\2/g
s/\bengega\(da\|des\|nt\|nts\|r\|rà\|t\|ts\|\)\([^[:alnum:]]\)/inicia\1\2/g
s/\bEngegués\([^[:alnum:]]\)/Iniciara\1/g
s/\bengegués\([^[:alnum:]]\)/iniciara\1/g
s/\bEngeguéssi\([mu]\|\)\([^[:alnum:]]\)/Iniciàre\1\2/g
s/\bengeguéssi\([mu]\|\)\([^[:alnum:]]\)/iniciàre\1\2/g
s/\bEngeguessi\([ns]\|\)\([^[:alnum:]]\)/Iniciare\1\2/g
s/\bengeguessi\([ns]\|\)\([^[:alnum:]]\)/iniciare\1\2/g
s/\bEngegueu\([^[:alnum:]]\)/Inicieu\1/g
s/\bengegueu\([^[:alnum:]]\)/inicieu\1/g
s/\bEngegui\([ns]\|\)\([^[:alnum:]]\)/Inicie\1\2/g
s/\bengegui\([ns]\|\)\([^[:alnum:]]\)/inicie\1\2/g
	s/\bReengega\(da\|des\|nt\|nts\|r\|rà\|t\|ts\|\)\([^[:alnum:]]\)/Reinicia\1\2/g
	s/\breengega\(da\|des\|nt\|nts\|r\|rà\|t\|ts\|\)\([^[:alnum:]]\)/reinicia\1\2/g
	s/\bReengegués\([^[:alnum:]]\)/Reiniciara\1/g
	s/\breengegués\([^[:alnum:]]\)/reiniciara\1/g
	s/\bReengeguéssi\([mu]\|\)\([^[:alnum:]]\)/Reiniciàre\1\2/g
	s/\breengeguéssi\([mu]\|\)\([^[:alnum:]]\)/reiniciàre\1\2/g
	s/\bReengeguessi\([ns]\|\)\([^[:alnum:]]\)/Reiniciare\1\2/g
	s/\breengeguessi\([ns]\|\)\([^[:alnum:]]\)/reiniciare\1\2/g
	s/\bReengegueu\([^[:alnum:]]\)/Reinicieu\1/g
	s/\breengegueu\([^[:alnum:]]\)/reinicieu\1/g
	s/\bReengegui\([ns]\|\)\([^[:alnum:]]\)/Reinicie\1\2/g
	s/\breengegui\([ns]\|\)\([^[:alnum:]]\)/reinicie\1\2/g
# engrandir
s/\b\([Ee]\)ngrandeix\(en\|es\|\)\([^[:alnum:]]\)/\1ngrandix\2\3/g
s/\b\([Ee]\)ngrandeixi\([^[:alnum:]]\)/\1ngrandisca\2/g
s/\b\([Ee]\)ngrandeixi\([ns]\)\([^[:alnum:]]\)/\1ngrandisque\2\3/g
s/\b\([Ee]\)ngrandeixo\([^[:alnum:]]\)/\1ngrandisc\2/g
s/\b\([Ee]\)ngrandís\([^[:alnum:]]\)/\1ngrandira\2/g
s/\b\([Ee]\)ngrandíssi\([mu]\)\([^[:alnum:]]\)/\1ngrandíre\2\3/g
s/\b\([Ee]\)ngrandissi\([ns]\)\([^[:alnum:]]\)/\1ngrandire\2\3/g
# enllaçar
s/\b\([Ee]\)nllaçara\([^[:alnum:]]\)/\1ngrandira\2/g
s/\b\([Ee]\)nllaçàre\([mu]\)\([^[:alnum:]]\)/\1ngrandíre\2\3/g
s/\b\([Ee]\)nllaçare\([ns]\)\([^[:alnum:]]\)/\1ngrandire\2\3/g
s/\b\([Ee]\)nllaço\([^[:alnum:]]\)/\1nllace\2/g
s/\b\([Ee]\)nllaci\([ns]\|\)\([^[:alnum:]]\)/\1nllace\2\3/g
# enregistrar -> gravar
s/\bEnregistra\(dor\|nt\|\)\([^[:alnum:]]\)/Grava\1\2/g
s/\benregistra\(dor\|nt\|\)\([^[:alnum:]]\)/grava\1\2/g
    s/\b\([Pp]\)reenregistrant\([^[:alnum:]]\)/\1regravant\2/g
	s/\b\([Dd]\)e l'gravador\([^[:alnum:]]\)/\1el gravador\2/g
	s/\bL'\([Gg]\)ravador\([^[:alnum:]]\)/El gravador\2/g
	s/\bl'gravador\([^[:alnum:]]\)/el gravador\1/g
	s/\bn'grava un de nou\([^[:alnum:]]\)/en grava una de nova\1/g
s/\bEnregistrament\([^[:alnum:]]\)/Gravació\1/g
s/\benregistrament\([^[:alnum:]]\)/gravació\1/g
    s/\b\([Pp]\)reenregistrament\([^[:alnum:]]\)/\1regravació\2/g
        s/\bel \(<[^<]\{1,\}>\|\)\([Pp]\)regravació\([^[:alnum:]]\)/la \1\2regravació\3/g
	s/\b\([Dd]\)'gravació\([^[:alnum:]]\)/\1e gravació\2/g
	s/\b\([Gg]\)ravació activat\([^[:alnum:]]\)/\1ravació activada\2/g
	s/\b\([Gg]\)ravació automàtic\([^[:alnum:]]\)/\1ravació automàtica\2/g
	s/\b\([Gg]\)ravació de pantalla nou\([^[:alnum:]]\)/\1ravació de pantalla nova\2/g
	s/\bGravació guardat a\([^[:alnum:]]\)/Gravació guardada a\1/g
	s/\b\([Gg]\)ravació instantani\([^[:alnum:]]\)/\1ravació instantània\2/g
	s/\b\([Ll]\)'gravació\([^[:alnum:]]\)/\1a gravació\2/g
    s/\b\([Tt]\)emps a enregistrar\([^[:alnum:]]\)/\1emps que s'ha de gravar\2/g
	s/\bun gravació\([^[:alnum:]]\)/una gravació\1/g
	s/\buna gravació nou\([^[:alnum:]]\)/una gravació nova\1/g
s/\bEnregistraments\([^[:alnum:]]\)/Gravacions\1/g
s/\benregistraments\([^[:alnum:]]\)/gravacions\1/g
    s/\bals gravacions\([^[:alnum:]]\)/a les gravacions\1/g
    s/\bbotó d'enregistrar\([^[:alnum:]]\)/botó de gravar\1/g
	s/\bconté gravacions d'errors\([^[:alnum:]]\)/conté l'enregistrament dels errors\1/g
	s/\b\([Dd]\)'gravacions\([^[:alnum:]]\)/\1e gravacions\2/g
	s/\bEls gravacions\([^[:alnum:]]\)/Les gravacions\1/g
	s/\bels gravacions\([^[:alnum:]]\)/les gravacions\1/g
    s/\bes conservaran els ja exportats\([^[:alnum:]]\)/es conservaran les ja exportades\1/g
    s/\bgravacions per a aquest document i no els podreu tornar\([^[:alnum:]]\)/gravacions per a aquest document i no les podreu tornar\1/g
        s/\b(encara que es conservaran els ja exportats)/(encara que es conservaran les ja exportades)/g
        s/\bles gravacions seleccionats i ja no els podreu\([^[:alnum:]]\)/les gravacions seleccionades i ja no les podreu\1/g
	s/\b\([Gg]\)ravacions programats\([^[:alnum:]]\)/\1ravacions programades\2/g
	s/\bNombre dels gravacions\([^[:alnum:]]\)/Nombre de gravacions\1/g
s/\ben la qual s'enregistrarà el fitxer\([^[:alnum:]]\)/en la qual es gravarà el fitxer\1/g
s/\bha demanat de crear\([^[:alnum:]]\)/ha demanat crear\1/g
s/\bKwave podeu enregistrar\([^[:alnum:]]\)/Kwave podeu gravar\1/g
s/\bper a enregistrar en mono\([^[:alnum:]]\)/per a gravar en mono\1/g
s/\b\([Ee]\)nregistrés\([^[:alnum:]]\)/\1nregistrara\2/g
s/\b\([Ee]\)nregistréssi\([mu]\)\([^[:alnum:]]\)/\1nregistràre\2\3/g
s/\b\([Ee]\)nregistressi\([ns]\)\([^[:alnum:]]\)/\1nregistrare\2\3/g
s/\b\([Ee]\)nregistr\([io]\)\([^[:alnum:]]\)/\1nregistre\3/g
s/\b\([Ee]\)nregistri\([ns]\)\([^[:alnum:]]\)/\1nregistre\2\3/g
# enriquir
s/\b\([Ee]\)nriqueix\(en\|es\|\)\([^[:alnum:]]\)/\1nriquix\2\3/g
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
# enxampar -> atrapar
s/\bEnxampa\(r\|\)\([^[:alnum:]]\)/Atrapa\1\2/g
s/\benxampa\(r\|\)\([^[:alnum:]]\)/atrapa\1\2/g
s/\bEnxampés\([^[:alnum:]]\)/Atrapara\1/g
s/\benxampés\([^[:alnum:]]\)/atrapara\1/g
s/\bEnxampéssi\([mu]\)\([^[:alnum:]]\)/Atrapàre\1\2/g
s/\benxampéssi\([mu]\)\([^[:alnum:]]\)/atrapàre\1\2/g
s/\bEnxampessi\([ns]\)\([^[:alnum:]]\)/Atrapare\1\2/g
s/\benxampessi\([ns]\)\([^[:alnum:]]\)/atrapare\1\2/g
s/\bEnxamp\([io]\)\([^[:alnum:]]\)/Atrape\2/g
s/\benxamp\([io]\)\([^[:alnum:]]\)/atrape\2/g
s/\bEnxampi\([ns]\)\([^[:alnum:]]\)/Atrape\1\2/g
s/\benxampi\([ns]\)\([^[:alnum:]]\)/atrape\1\2/g
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
s/\b\([Ee]\)rigeix\(en\|es\|\)\([^[:alnum:]]\)/\1rigix\2\3/g
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
# escollir
# PDT:
s/\bEscull\([^[:alnum:]]\)/Trieu\1/g
s/\bescull\([^[:alnum:]]\)/trieu\1/g
s/\bEsculli\(n\|\)\([^[:alnum:]]\)/Trie\1\2/g
s/\besculli\(n\|\)\([^[:alnum:]]\)/trie\1\2/g
s/\b\([Ee]\)sculli\([^[:alnum:]]\)/\1sculla\2/g
s/\b\([Ee]\)sculli\([ns]\)\([^[:alnum:]]\)/\1sculle\2\3/g
s/\b\([Ee]\)scollís\([^[:alnum:]]\)/\1scollira\2/g
s/\b\([Ee]\)scollíssi\([mu]\)\([^[:alnum:]]\)/\1scollíre\2\3/g
s/\b\([Ee]\)scollissi\([ns]\)\([^[:alnum:]]\)/\1scollire\2\3/g
s/\b\([Ee]\)scullo\([^[:alnum:]]\)/\1scull\2/g
# escoltar
s/\b\([Ee]\)scoltés\([^[:alnum:]]\)/\1scoltara\2/g
s/\b\([Ee]\)scoltéssi\([mu]\)\([^[:alnum:]]\)/\1scoltàre\2\3/g
s/\b\([Ee]\)scoltessi\([ns]\)\([^[:alnum:]]\)/\1scoltare\2\3/g
s/\b\([Ee]\)scolt\([io]\)\([^[:alnum:]]\)/\1scolte\3/g
s/\b\([Ee]\)scolti\([ns]\)\([^[:alnum:]]\)/\1scolte\2\3/g
# escombrar -> agranar
s/\bEscombr\(a\|es\)\([^[:alnum:]]\)/Graner\1\2/g
s/\bescombr\(a\|es\)\([^[:alnum:]]\)/graner\1\2/g
s/\bEscombra\(da\|des\|nt\|nts\|r\|t\|ts\)\([^[:alnum:]]\)/Agrana\1\2/g
s/\bescombra\(da\|des\|nt\|nts\|r\|t\|ts\)\([^[:alnum:]]\)/agrana\1\2/g
s/\bEscombrés\([^[:alnum:]]\)/Agranara\1/g
s/\bescombrés\([^[:alnum:]]\)/agranara\1/g
s/\bEscombréssi\([mu]\)\([^[:alnum:]]\)/Agranàre\1\2/g
s/\bescombréssi\([mu]\)\([^[:alnum:]]\)/agranàre\1\2/g
s/\bEscombressi\([ns]\)\([^[:alnum:]]\)/Agranare\1\2/g
s/\bescombressi\([ns]\)\([^[:alnum:]]\)/agranare\1\2/g
s/\bEscombr\([io]\)\([^[:alnum:]]\)/Agrane\2/g
s/\bescombr\([io]\)\([^[:alnum:]]\)/agrane\2/g
s/\bEscombri\([ns]\)\([^[:alnum:]]\)/Agrane\1\2/g
s/\bescombri\([ns]\)\([^[:alnum:]]\)/agrane\1\2/g
s/\bEscombra\(dor\|ire\)\([^[:alnum:]]\)/Agranador\2/g
s/\bescombra\(dor\|ire\)\([^[:alnum:]]\)/agranador\2/g
s/\bEscombraries\([^[:alnum:]]\)/Brossa\1/g
s/\bescombraries\([^[:alnum:]]\)/brossa\1/g
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
# esgarrapar -> arrapar
s/\bEsgarrapa\(da\|des\|nt\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Arrapa\1\2/g
s/\besgarrapa\(da\|des\|nt\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/arrapa\1\2/g
s/\bEsgarrape\([nmus]\)\([^[:alnum:]]\)/Arrape\1\2/g
s/\besgarrape\([nmus]\)\([^[:alnum:]]\)/arrape\1\2/g
s/\bEsgarrapés\([^[:alnum:]]\)/Arrapara\1/g
s/\besgarrapés\([^[:alnum:]]\)/arrapara\1/g
s/\bEsgarrapéssi\([mu]\)\([^[:alnum:]]\)/Arrapàre\1\2/g
s/\besgarrapéssi\([mu]\)\([^[:alnum:]]\)/arrapàre\1\2/g
s/\bEsgarrapessi\([ns]\)\([^[:alnum:]]\)/Arrapare\1\2/g
s/\besgarrapessi\([ns]\)\([^[:alnum:]]\)/arrapare\1\2/g
s/\bEsgarrap\([io]\)\([^[:alnum:]]\)/Arrape\2/g
s/\besgarrap\([io]\)\([^[:alnum:]]\)/arrape\2/g
s/\bEsgarrapi\([ns]\)\([^[:alnum:]]\)/Arrape\1\2/g
s/\besgarrapi\([ns]\)\([^[:alnum:]]\)/arrape\1\2/g
# esguerrar -> esgarrar
s/\b\([Ee]\)sguerra\(da\|des\|nt\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1sgarra\2\3/g
s/\b\([Ee]\)sguerrés\([^[:alnum:]]\)/\1sgarrara\2/g
s/\b\([Ee]\)sguerréssi\([mu]\)\([^[:alnum:]]\)/\1sgarràre\2\3/g
s/\b\([Ee]\)sguerressi\([ns]\)\([^[:alnum:]]\)/\1sgarrare\2\3/g
s/\b\([Ee]\)sguerr\([io]\)\([^[:alnum:]]\)/\1sgarre\3/g
s/\b\([Ee]\)sguerri\([ns]\)\([^[:alnum:]]\)/\1sgarre\2\3/g
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
	s/\b\([Rr]\)respatller\(s\|\)\([^[:alnum:]]\)/\1espatler\2\3/g
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
# esquitxar -> esguitar
s/\b\([Ee]\)squitxa\(da\|des\|dor\|dors\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1sguita\2\3/g
s/\b\([Ee]\)squitxés\([^[:alnum:]]\)/\1sguitara\2/g
s/\b\([Ee]\)squitxéssi\([mu]\)\([^[:alnum:]]\)/\1sguitàre\2\3/g
s/\b\([Ee]\)squitxessi\([ns]\)\([^[:alnum:]]\)/\1sguitare\2\3/g
s/\b\([Ee]\)squitx\(em\|en\|es\|eu\)\([^[:alnum:]]\)/\1sguit\2\3/g
s/\b\([Ee]\)squitx\([io]\)\([^[:alnum:]]\)/\1sguite\3/g
s/\b\([Ee]\)squitxi\([ns]\)\([^[:alnum:]]\)/\1sguite\2\3/g
# estabilitzar
s/\b\([Ee]\)stabilitzés\([^[:alnum:]]\)/\1stabilitzara\2/g
s/\b\([Ee]\)stabilitzéssi\([mu]\)\([^[:alnum:]]\)/\1stabilitzàre\2\3/g
s/\b\([Ee]\)stabilitzessi\([ns]\)\([^[:alnum:]]\)/\1stabilitzare\2\3/g
s/\b\([Ee]\)stabilitz\([io]\)\([^[:alnum:]]\)/\1stabilitze\3/g
s/\b\([Ee]\)stabilitzi\([ns]\)\([^[:alnum:]]\)/\1stabilitze\2\3/g
# establir
s/\b\([Ee]\)stableix\(en\|es\|\)\([^[:alnum:]]\)/\1stablix\2\3/g
s/\b\([Ee]\)stableixi\([^[:alnum:]]\)/\1stablisca\2/g
s/\b\([Ee]\)stableixi\([ns]\)\([^[:alnum:]]\)/\1stablisque\2\3/g
s/\b\([Ee]\)stableixo\([^[:alnum:]]\)/\1stablisc\2/g
	s/\"Estableix/\"Establix/g
s/\b\([Ee]\)stablert\(s\|\)\([^[:alnum:]]\)/\1stablit\2\3/g
s/\b\([Ee]\)stablert\(a\|es\)\([^[:alnum:]]\)/\1stablid\2\3/g
s/\b\([Ee]\)stablís\([^[:alnum:]]\)/\1stablira\2/g
s/\b\([Ee]\)stablíssi\([mu]\)\([^[:alnum:]]\)/\1stablíre\2\3/g
s/\b\([Ee]\)stablissi\([ns]\)\([^[:alnum:]]\)/\1stablire\2\3/g
	# preestablir
	s/\b\([Pp]\)reestablert\(s\|\)\([^[:alnum:]]\)/\1redefinit\2\3/g
	s/\b\([Pp]\)reestablert\(a\|es\)\([^[:alnum:]]\)/\1redefinid\2\3/g
	s/\b\([Pp]\)reestableix\(en\|es\|\)\([^[:alnum:]]\)/\1reestablix\2\3/g
	s/\b\([Pp]\)reestableixi\([^[:alnum:]]\)/\1reestablisca\2/g
	s/\b\([Pp]\)reestableixi\([ns]\)\([^[:alnum:]]\)/\1reestablisque\2\3/g
	s/\b\([Pp]\)reestableixo\([^[:alnum:]]\)/\1reestablisc\2/g
	s/\b\([Pp]\)reestablís\([^[:alnum:]]\)/\1reestablira\2/g
	s/\b\([Pp]\)reestablíssi\([mu]\)\([^[:alnum:]]\)/\1reestablíre\2\3/g
	s/\b\([Pp]\)reestablissi\([ns]\)\([^[:alnum:]]\)/\1reestablire\2\3/g
	# restablir
	s/\b\([Rr]\)establert\(s\|\)\([^[:alnum:]]\)/\1establit\2\3/g
	s/\b\([Rr]\)establert\(a\|es\)\([^[:alnum:]]\)/\1establid\2\3/g
	s/\b\([Rr]\)estableix\(en\|es\|\)\([^[:alnum:]]\)/\1establix\2\3/g
	s/\b\([Rr]\)estableixi\([^[:alnum:]]\)/\1establisca\2/g
	s/\b\([Rr]\)estableixi\([ns]\)\([^[:alnum:]]\)/\1establisque\2\3/g
	s/\b\([Rr]\)estableixo\([^[:alnum:]]\)/\1establisc\2/g
	s/\b\([Rr]\)establís\([^[:alnum:]]\)/\1establira\2/g
	s/\b\([Rr]\)establíssi\([mu]\)\([^[:alnum:]]\)/\1establíre\2\3/g
	s/\b\([Rr]\)establissi\([ns]\)\([^[:alnum:]]\)/\1establire\2\3/g
s/\bEstalvi de pantalla\([^[:alnum:]]\)/Salvapantalla\1/g
s/\bestalvi de pantalla\([^[:alnum:]]\)/salvapantalla\1/g
s/\bEstalvis de pantalla\([^[:alnum:]]\)/Salvapantalles\1/g
s/\bestalvis de pantalla\([^[:alnum:]]\)/salvapantalles\1/g
	s/\bde l'salvapantalla\([^[:alnum:]]\)/del salvapantalla\1/g
	s/\bl'salvapantalla\([^[:alnum:]]\)/el salvapantalla\1/g
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
	s/\bL'ESTEL DE KAWELO\([^[:alnum:]]\)/EL CATXERULO DE KAWELO\1/g
	s/\"Estel\"/\"Catxerulo\"/g
s/\bESTEL\([^[:alnum:]]\)/ESTRELA\1/g
s/\b\([Ee]\)stel\([^[:alnum:]]\)/\1strel\2/g
s/\b\([Ee]\)stels\([^[:alnum:]]\)/\1streles\2/g
s/\bESTRELL\(A\|ES\)\([^[:alnum:]]\)/ESTREL\1\2/g
s/\b\([Ee]\)strell\(a\|at\|es\)\([^[:alnum:]]\)/\1strel\2\3/g
	s/\b\([Mm]\)ultiestrella\([^[:alnum:]]\)/\1ultiestrela\2/g
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
# esvair
s/\b\([Ee]\)svaeix\(en\|es\|\)\([^[:alnum:]]\)/\1svaïx\2\3/g
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
# excedir
s/\b\([Ee]\)xcedeix\(en\|es\|\)\([^[:alnum:]]\)/\1xcedix\2\3/g
s/\b\([Ee]\)xcedeixi\([^[:alnum:]]\)/\1xcedisca\2/g
s/\b\([Ee]\)xcedeixi\([ns]\)\([^[:alnum:]]\)/\1xcedisque\2\3/g
s/\b\([Ee]\)xcedeixo\([^[:alnum:]]\)/\1xcedisc\2/g
s/\b\([Ee]\)xcedís\([^[:alnum:]]\)/\1xcedira\2/g
s/\b\([Ee]\)xcedíssi\([mu]\)\([^[:alnum:]]\)/\1xcedíre\2\3/g
s/\b\([Ee]\)xcedissi\([ns]\)\([^[:alnum:]]\)/\1xcedire\2\3/g
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
s/\b\([Ee]\)xhaureix\(en\|es\|\)\([^[:alnum:]]\)/\1xhaurix\2\3/g
s/\b\([Ee]\)xhaureixi\([^[:alnum:]]\)/\1xhaurisca\2/g
s/\b\([Ee]\)xhaureixi\([ns]\)\([^[:alnum:]]\)/\1xhaurisque\2\3/g
s/\b\([Ee]\)xhaureixo\([^[:alnum:]]\)/\1xhaurisc\2/g
s/\b\([Ee]\)xhaurís\([^[:alnum:]]\)/\1xhaurira\2/g
s/\b\([Ee]\)xhauríssi\([mu]\)\([^[:alnum:]]\)/\1xhauríre\2\3/g
s/\b\([Ee]\)xhaurissi\([ns]\)\([^[:alnum:]]\)/\1xhaurire\2\3/g
# exigir
s/\b\([Ee]\)xigeix\(en\|es\|\)\([^[:alnum:]]\)/\1xigix\2\3/g
s/\b\([Ee]\)xigeixi\([^[:alnum:]]\)/\1xigsca\2/g
s/\b\([Ee]\)xigeixi\([ns]\)\([^[:alnum:]]\)/\1xigisque\2\3/g
s/\b\([Ee]\)xigeixo\([^[:alnum:]]\)/\1xigisc\2/g
s/\b\([Ee]\)xigís\([^[:alnum:]]\)/\1xigira\2/g
s/\b\([Ee]\)xigíssi\([mu]\)\([^[:alnum:]]\)/\1xigíre\2\3/g
s/\b\([Ee]\)xigissi\([ns]\)\([^[:alnum:]]\)/\1xigire\2\3/g
# existir
s/\b\([Ee]\)xisteix\(en\|es\|\)\([^[:alnum:]]\)/\1xistix\2\3/g
s/\b\([Ee]\)xisteixi\([^[:alnum:]]\)/\1xistisca\2/g
s/\b\([Ee]\)xisteixi\([ns]\)\([^[:alnum:]]\)/\1xistisque\2\3/g
s/\b\([Ee]\)xisteixo\([^[:alnum:]]\)/\1xistisc\2/g
s/\b\([Ee]\)xistís\([^[:alnum:]]\)/\1xistira\2/g
s/\b\([Ee]\)xistíssi\([mu]\)\([^[:alnum:]]\)/\1xistíre\2\3/g
s/\b\([Ee]\)xistissi\([ns]\)\([^[:alnum:]]\)/\1xistire\2\3/g
# expandir
s/\b\([Ee]\)xpandeix\(en\|es\|\)\([^[:alnum:]]\)/\1xpandix\2\3/g
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
# expressar
s/\b\([Ee]\)xpressés\([^[:alnum:]]\)/\1xpressara\2/g
s/\b\([Ee]\)xpréssi\([mu]\)\([^[:alnum:]]\)/\1xpressàre\2\3/g
s/\b\([Ee]\)xpressi\([ns]\)\([^[:alnum:]]\)/\1xpressare\2\3/g
s/\b\([Ee]\)xpress\([io]\)\([^[:alnum:]]\)/\1xpresse\3/g
s/\b\([Ee]\)xpressi\([ns]\)\([^[:alnum:]]\)/\1xpresse\2\3/g
	s/\bExpresse%C3%B3_regular\([^[:alnum:]]\)/Expressi%C3%B3_regular\1/g
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
s/\b\([Ff]\)arceix\(en\|es\|\)\([^[:alnum:]]\)/\1arcix\2\3/g
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
	s/\b\([Dd]\)esfés\([^[:alnum:]]\)/\1esfera\2/g
	s/\b\([Dd]\)esféssi\([mu]\)\([^[:alnum:]]\)/\1esfére\2\3/g
	s/\b\([Dd]\)esfessi\([ns]\)\([^[:alnum:]]\)/\1esfere\2\3/g
		s/\bDesfera\([^[:alnum:]]\)/Desfés\1/g
		s/\Fes i desfera\([^[:alnum:]]\)/Fes i Desfés\1/g
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
	s/\b\([Rr]\)efés\([^[:alnum:]]\)/\1efera\2/g
	s/\b\([Rr]\)eféssi\([mu]\)\([^[:alnum:]]\)/\1efére\2\3/g
	s/\b\([Rr]\)efessi\([ns]\)\([^[:alnum:]]\)/\1efere\2\3/g
		s/\bRefera\([^[:alnum:]]\)/Refés\1/g
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
# fer clic
    s/\bclic \(central \|dret \|del mig \|esquerre \|mig \|sobre seu \|\)a\([^[:alnum:]]\)/clic \1en\2/g
    s/\bclic \(central \|dret \|del mig \|esquerre \|mig \|sobre seu \|\)al\(s\|\)\([^[:alnum:]]\)/clic \1en el\2\3/g
        s/\bEn fer clic en un fitxer en un arxiu\([^[:alnum:]]\)/Fent clic en un fitxer, un arxiu\1/g
        s/\bclic \(central \|dret \|del mig \|esquerre \|mig \|\)en \(prop\|sobre\)\([^[:alnum:]]\)/clic \1a \2\3/g
        s/\bclic en el mig\([^[:alnum:]]\)/clic del mig\1/g
        s/\bclic en on\([^[:alnum:]]\)/clic a on\1/g
        s/\bclic en l'\(<[^<]\{1,\}>\|\)esquerra\([^[:alnum:]]\)/clic a l'\1esquerra\2/g
        s/\bclic en la \(<[^<]\{1,\}>\|\)dreta\([^[:alnum:]]\)/clic a la \1dreta\2/g
    # damunt
    s/\bclic \(central \|dret \|del mig \|esquerre \|mig \|\)sobre \(esta\|en\)\([^[:alnum:]]\)/clic \1damunt d'\2\3/g
    s/\bclic \(central \|dret \|del mig \|esquerre \|mig \|\)sobre el\(s\|\)\([^[:alnum:]]\)/clic \1damunt del\2\3/g
    s/\bclic \(central \|dret \|del mig \|esquerre \|mig \|\)sobre \(cada\|fitxers\|l'\|qualsevol\|totes\)\([^[:alnum:]]\)/clic \1damunt de \2\3/g
    s/\bclic \(central \|dret \|del mig \|esquerre \|mig \|\)sobre la\([^[:alnum:]]\)/clic \1damunt de la\2/g
    s/\bclic \(central \|dret \|del mig \|esquerre \|mig \|\)sobre seu\([^[:alnum:]]\)/clic \1damunt seu\2/g
    s/\bclic \(central \|dret \|del mig \|esquerre \|mig \|\)sobre un\(a\|\)\([^[:alnum:]]\)/clic \1damunt d'un\2\3/g
    s/\bclic en \(el punt\|els punts\)\([^[:alnum:]]\)/clic damunt d\1\2/g
    s/\bclic en l'\(etiqueta\|objectiu\)\([^[:alnum:]]\)/clic damunt de l'\1\2/g
    s/\bclic en la \(lletra\)\([^[:alnum:]]\)/clic damunt de la \1\2/g
        s/\bdesprés sobre un\([^[:alnum:]]\)/després damunt d'un\1/g
        s/\bpremeu clic en\([^[:alnum:]]\)/feu clic en\1/g
    s/\bclic en un valor\([^[:alnum:]]\)/clic damunt d'un valor\1/g
    # esmenes
    s/\b\En fer clic \(central \|dret \|del mig \|esquerre \|mig \|\)en\([^[:alnum:]]\)/Fent clic \1en\2/g
    s/\b\en fer clic \(central \|dret \|del mig \|esquerre \|mig \|\)en\([^[:alnum:]]\)/fent clic \1en\2/g
    s/\b\([Ff]\)ent clic en el botó \(central\|dret\|del mig\|esquerre\|mig\)\([^[:alnum:]]\)/\1ent clic amb el botó \2\3/g
        s/\bclic \(central \|dret \|del mig \|esquerre \|mig \|\)en \(dins\|prop\|sobre\)\([^[:alnum:]]\)/clic \1a \2\3/g
        s/\bclic en el damunt\([^[:alnum:]]\)/clic damunt\1/g
        s/\bclic en els punts\([^[:alnum:]]\)/clic damunt dels punts\1/g
        s/\bclic en la \(icona\|lletra\)\([^[:alnum:]]\)/clic damunt de la \1\2/g
        s/\bclic sobre \(«Crea un subcircuit»\|«Envia»\)\([^[:alnum:]]\)/clic en \1\2/g
        s/\ben sobre\([^[:alnum:]]\)/a sobre\1/g
        s/\b\([Ff]\)eu un clic dret en el fitxer\([^[:alnum:]]\)/\1eu clic dret damunt del fitxer\2/g
    # clicar
    s/\b\([Cc]\)lica\(nt\|r\|\) a\([^[:alnum:]]\)/\1lica\2 en\3/g
    s/\b\([Cc]\)lica\(nt\|r\|\) al\(s\|\)\([^[:alnum:]]\)/\1lica\2 en el\3\4/g
    s/\b\([Cc]\)liqu\(eu\|e\) a\([^[:alnum:]]\)/\1liqu\2 en\3/g
    s/\b\([Cc]\)liqu\(eu\|e\) \([ae]\)l\([^[:alnum:]]\)/\1liqu\2 en el\4/g
        s/\b\([Cc]\)liqueu en el botó \(central\|dret\|del mig\|esquerre\|mig\)\([^[:alnum:]]\)/\1liqueu amb el botó \2\3/g
    s/\b\([Cc]\)lique amb el botó \(central\|dret\|del mig\|esquerre\|mig\) a\([^[:alnum:]]\)/\1lique amb el botó \2 en\3/g
    # esmenes
    s/\b\([Cc]\)lica el botó del ratolí a\([^[:alnum:]]\)/\1lica el botó del ratolí en\2/g
    s/\b\([Cc]\)lica\(nt\|r\|\) en sobre\([^[:alnum:]]\)/\1lica\2 a sobre\3/g
    s/\b\([Cc]\)licant a qualsevol\([^[:alnum:]]\)/\1licant en qualsevol\2/g
    s/\b\([Cc]\)licant el botó\([^[:alnum:]]\)/\1licant en el botó\2/g
    s/\b\([Cc]\)licant els botons\([^[:alnum:]]\)/\1licant en els botons\2/g
    s/\b\([Cc]\)lica\(nt\|r\|\) \(la\|les\)\([^[:alnum:]]\)/\1lica\2 en \3\4/g
    s/\b\([Cc]\)liqueu amb el botó \(central\|dret\|del mig\|esquerre\|mig\) \(a\|en\) la\([^[:alnum:]]\)/\1liqueu amb el botó \2 damunt de la\4/g
    s/\b\([Cc]\)liqueu en \(prop\|sobre\)\([^[:alnum:]]\)/\1liqueu a \2\3/g
    s/\bEn clicar en\([^[:alnum:]]\)/Clicant en\1/g
    s/\ben clicar en\([^[:alnum:]]\)/clicant en\1/g
# #
# ferejar
s/\b\([Ff]\)eregés\([^[:alnum:]]\)/\1erejara\2/g
s/\b\([Ff]\)eregéssi\([mu]\)\([^[:alnum:]]\)/\1erejàre\2\3/g
s/\b\([Ff]\)eregessi\([ns]\)\([^[:alnum:]]\)/\1erejare\2\3/g
s/\b\([Ff]\)eregi\([ns]\|\)\([^[:alnum:]]\)/\1erege\2\3/g
s/\b\([Ff]\)erejo\([^[:alnum:]]\)/\1erege\2/g
# ferir
s/\b\([Ff]\)ereix\(en\|es\|\)\([^[:alnum:]]\)/\1erix\2\3/g
s/\b\([Ff]\)ereixi\([^[:alnum:]]\)/\1erisca\2/g
s/\b\([Ff]\)ereixi\([ns]\)\([^[:alnum:]]\)/\1erisque\2\3/g
s/\b\([Ff]\)ereixo\([^[:alnum:]]\)/\1erisc\2/g
s/\b\([Ff]\)erís\([^[:alnum:]]\)/\1erira\2/g
s/\b\([Ff]\)eríssi\([mu]\|\)\([^[:alnum:]]\)/\1eríre\2\3/g
s/\b\([Ff]\)erissi\([ns]\|\)\([^[:alnum:]]\)/\1erire\2\3/g
	# deferir
	s/\b\([Dd]\)efereix\(en\|es\|\)\([^[:alnum:]]\)/\1eferix\2\3/g
	s/\b\([Dd]\)efereixi\([^[:alnum:]]\)/\1eferisca\2/g
	s/\b\([Dd]\)efereixi\([ns]\)\([^[:alnum:]]\)/\1eferisque\2\3/g
	s/\b\([Dd]\)efereixo\([^[:alnum:]]\)/\1eferisc\2/g
	s/\b\([Dd]\)eferís\([^[:alnum:]]\)/\1eferira\2/g
	s/\b\([Dd]\)eferíssi\([mu]\)\([^[:alnum:]]\)/\1eferíre\2\3/g
	s/\b\([Dd]\)eferissi\([ns]\)\([^[:alnum:]]\)/\1eferire\2\3/g
	# diferir
	s/\b\([Dd]\)ifereix\(en\|es\|\)\([^[:alnum:]]\)/\1iferix\2\3/g
	s/\b\([Dd]\)ifereixi\([^[:alnum:]]\)/\1iferisca\2/g
	s/\b\([Dd]\)ifereixi\([ns]\)\([^[:alnum:]]\)/\1iferisque\2\3/g
	s/\b\([Dd]\)ifereixo\([^[:alnum:]]\)/\1iferisc\2/g
	s/\b\([Dd]\)iferís\([^[:alnum:]]\)/\1iferira\2/g
	s/\b\([Dd]\)iferíssi\([mu]\|\)\([^[:alnum:]]\)/\1iferíre\2\3/g
	s/\b\([Dd]\)iferissi\([ns]\|\)\([^[:alnum:]]\)/\1iferire\2\3/g
	# inferir
	s/\b\([Ii]\)nfereix\(en\|es\|\)\([^[:alnum:]]\)/\1nferix\2\3/g
	s/\b\([Ii]\)nfereixi\([^[:alnum:]]\)/\1nferisca\2/g
	s/\b\([Ii]\)nfereixi\([ns]\)\([^[:alnum:]]\)/\1nferisque\2\3/g
	s/\b\([Ii]\)nfereixo\([^[:alnum:]]\)/\1nferisc\2/g
	s/\b\([Ii]\)nferís\([^[:alnum:]]\)/\1nferira\2/g
	s/\b\([Ii]\)nferíssi\([mu]\)\([^[:alnum:]]\)/\1nferíre\2\3/g
	s/\b\([Ii]\)nferissi\([ns]\)\([^[:alnum:]]\)/\1nferire\2\3/g
	# interferir
	s/\b\([Ii]\)nterfereix\(en\|es\|\)\([^[:alnum:]]\)/\1nterferix\2\3/g
	s/\b\([Ii]\)nterfereixi\([^[:alnum:]]\)/\1nterferisca\2/g
	s/\b\([Ii]\)nterfereixi\([ns]\)\([^[:alnum:]]\)/\1nterferisque\2\3/g
	s/\b\([Ii]\)nterfereixo\([^[:alnum:]]\)/\1nterferisc\2/g
	s/\b\([Ii]\)nterferís\([^[:alnum:]]\)/\1nterferira\2/g
	s/\b\([Ii]\)nterferíssi\([mu]\)\([^[:alnum:]]\)/\1nterferíre\2\3/g
	s/\b\([Ii]\)nterferissi\([ns]\)\([^[:alnum:]]\)/\1nterferire\2\3/g
	# malferir
	s/\b\([Mm]\)alfereix\(en\|es\|\)\([^[:alnum:]]\)/\1alferix\2\3/g
	s/\b\([Mm]\)alfereixi\([^[:alnum:]]\)/\1alferisca\2/g
	s/\b\([Mm]\)alfereixi\([ns]\)\([^[:alnum:]]\)/\1alferisque\2\3/g
	s/\b\([Mm]\)alfereixo\([^[:alnum:]]\)/\1alferisc\2/g
	s/\b\([Mm]\)alferís\([^[:alnum:]]\)/\1alferira\2/g
	s/\b\([Mm]\)alferíssi\([mu]\)\([^[:alnum:]]\)/\1alferíre\2\3/g
	s/\b\([Mm]\)alferissi\([ns]\)\([^[:alnum:]]\)/\1alferire\2\3/g
	# oferir
	s/\b\([Oo]\)fereix\(en\|es\|\)\([^[:alnum:]]\)/\1ferix\2\3/g
	s/\b\([Oo]\)fereixi\([^[:alnum:]]\)/\1ferisca\2/g
	s/\b\([Oo]\)fereixi\([ns]\)\([^[:alnum:]]\)/\1ferisque\2\3/g
	s/\b\([Oo]\)fereixo\([^[:alnum:]]\)/\1ferisc\2/g
	s/\b\([Oo]\)ferís\([^[:alnum:]]\)/\1ferira\2/g
	s/\b\([Oo]\)feríssi\([mu]\)\([^[:alnum:]]\)/\1feríre\2\3/g
	s/\b\([Oo]\)ferissi\([ns]\)\([^[:alnum:]]\)/\1ferire\2\3/g
	s/\b\([Oo]\)fert\(s\|\)\([^[:alnum:]]\)/\1ferit\2\3/g
	s/\b\([Oo]\)fert\(a\|es\)\([^[:alnum:]]\)/\1ferid\2\3/g
	# preferir
	s/\b\([Pp]\)refereix\(en\|es\|\)\([^[:alnum:]]\)/\1referix\2\3/g
	s/\b\([Pp]\)refereixi\([^[:alnum:]]\)/\1referisca\2/g
	s/\b\([Pp]\)refereixi\([ns]\)\([^[:alnum:]]\)/\1referisque\2\3/g
	s/\b\([Pp]\)refereixo\([^[:alnum:]]\)/\1referisc\2/g
	s/\b\([Pp]\)referís\([^[:alnum:]]\)/\1referira\2/g
	s/\b\([Pp]\)referíssi\([mu]\)\([^[:alnum:]]\)/\1referíre\2\3/g
	s/\b\([Pp]\)referissi\([ns]\)\([^[:alnum:]]\)/\1referire\2\3/g
	# proferir
	s/\b\([Pp]\)rofereix\(en\|es\|\)\([^[:alnum:]]\)/\1roferix\2\3/g
	s/\b\([Pp]\)rofereixi\([^[:alnum:]]\)/\1roferisca\2/g
	s/\b\([Pp]\)rofereixi\([ns]\)\([^[:alnum:]]\)/\1roferisque\2\3/g
	s/\b\([Pp]\)rofereixo\([^[:alnum:]]\)/\1roferisc\2/g
	s/\b\([Pp]\)roferís\([^[:alnum:]]\)/\1roferira\2/g
	s/\b\([Pp]\)roferíssi\([mu]\)\([^[:alnum:]]\)/\1roferíre\2\3/g
	s/\b\([Pp]\)roferissi\([ns]\)\([^[:alnum:]]\)/\1roferire\2\3/g
	# referir
	s/\b\([Rr]\)efereix\(en\|es\|\)\([^[:alnum:]]\)/\1eferix\2\3/g
	s/\b\([Rr]\)efereixi\([^[:alnum:]]\)/\1eferisca\2/g
	s/\b\([Rr]\)efereixi\([ns]\)\([^[:alnum:]]\)/\1eferisque\2\3/g
	s/\b\([Rr]\)efereixo\([^[:alnum:]]\)/\1eferisc\2/g
	s/\b\([Rr]\)eferís\([^[:alnum:]]\)/\1eferira\2/g
	s/\b\([Rr]\)eferíssi\([mu]\)\([^[:alnum:]]\)/\1eferíre\2\3/g
	s/\b\([Rr]\)eferissi\([ns]\)\([^[:alnum:]]\)/\1eferire\2\3/g
	# transferir
	s/\b\([Tt]\)ransfereix\(en\|es\|\)\([^[:alnum:]]\)/\1ransferix\2\3/g
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
# flamarejar -> flamerejar
s/\b\([Ff]\)lamaregés\([^[:alnum:]]\)/\1lamerejara\2/g
s/\b\([Ff]\)lamaregéssi\([mu]\)\([^[:alnum:]]\)/\1lamerejàre\2\3/g
s/\b\([Ff]\)lamaregessi\([ns]\)\([^[:alnum:]]\)/\1lamerejare\2\3/g
s/\b\([Ff]\)lamaregi\([ns]\|\)\([^[:alnum:]]\)/\1lamerege\2\3/g
s/\b\([Ff]\)lamarejo\([^[:alnum:]]\)/\1lamerege\2/g
# flotar
s/\b\([Ff]\)lotés\([^[:alnum:]]\)/\1lotara\2/g
s/\b\([Ff]\)lotéssi\([mu]\)\([^[:alnum:]]\)/\1lotàre\2\3/g
s/\b\([Ff]\)lotessi\([ns]\)\([^[:alnum:]]\)/\1lotare\2\3/g
s/\b\([Ff]\)lot\([io]\)\([^[:alnum:]]\)/\1lote\3/g
s/\b\([Ff]\)loti\([ns]\)\([^[:alnum:]]\)/\1lote\2\3/g
# fluir
s/\b\([Ff]\)lueix\(en\|es\|\)\([^[:alnum:]]\)/\1luïx\2\3/g
s/\b\([Ff]\)lueixi\([^[:alnum:]]\)/\1luïsca\2/g
s/\b\([Ff]\)lueixi\([ns]\)\([^[:alnum:]]\)/\1luïsque\2\3/g
s/\b\([Ff]\)lueixo\([^[:alnum:]]\)/\1luïsc\2/g
s/\b\([Ff]\)luís\([^[:alnum:]]\)/\1luïra\2/g
s/\b\([Ff]\)luíssi\([mu]\)\([^[:alnum:]]\)/\1luíre\2\3/g
s/\b\([Ff]\)luïssi\([ns]\)\([^[:alnum:]]\)/\1luïre\2\3/g
	# confluir
	s/\b\([Cc]\)onflueix\(en\|es\|\)\([^[:alnum:]]\)/\1onfluïx\2\3/g
	s/\b\([Cc]\)onflueixi\([^[:alnum:]]\)/\1onfluïsca\2/g
	s/\b\([Cc]\)onflueixi\([ns]\)\([^[:alnum:]]\)/\1onfluïsque\2\3/g
	s/\b\([Cc]\)onflueixo\([^[:alnum:]]\)/\1onfluïsc\2/g
	s/\b\([Cc]\)onfluís\([^[:alnum:]]\)/\1onfluïra\2/g
	s/\b\([Cc]\)onfluíssi\([mu]\)\([^[:alnum:]]\)/\1onfluíre\2\3/g
	s/\b\([Cc]\)onfluïssi\([ns]\)\([^[:alnum:]]\)/\1onfluïre\2\3/g
	# difluir
	s/\b\([Dd]\)iflueix\(en\|es\|\)\([^[:alnum:]]\)/\1ifluïx\2\3/g
	s/\b\([Dd]\)iflueixi\([^[:alnum:]]\)/\1ifluïsca\2/g
	s/\b\([Dd]\)iflueixi\([ns]\)\([^[:alnum:]]\)/\1ifluïsque\2\3/g
	s/\b\([Dd]\)iflueixo\([^[:alnum:]]\)/\1ifluïsc\2/g
	s/\b\([Dd]\)ifluís\([^[:alnum:]]\)/\1ifluïra\2/g
	s/\b\([Dd]\)ifluíssi\([mu]\)\([^[:alnum:]]\)/\1ifluíre\2\3/g
	s/\b\([Dd]\)ifluïssi\([ns]\)\([^[:alnum:]]\)/\1ifluïre\2\3/g
	# efluir / refluir
	s/\b\([Rr]\|\)\([Ee]\)flueix\(en\|es\|\)\([^[:alnum:]]\)/\1\2fluïx\3\4/g
	s/\b\([Rr]\|\)\([Ee]\)flueixi\([^[:alnum:]]\)/\1\2fluïsca\3/g
	s/\b\([Rr]\|\)\([Ee]\)flueixi\([ns]\)\([^[:alnum:]]\)/\1\2fluïsque\3\4/g
	s/\b\([Rr]\|\)\([Ee]\)flueixo\([^[:alnum:]]\)/\1\2fluïsc\3/g
	s/\b\([Rr]\|\)\([Ee]\)fluís\([^[:alnum:]]\)/\1\2fluïra\3/g
	s/\b\([Rr]\|\)\([Ee]\)fluíssi\([mu]\)\([^[:alnum:]]\)/\1\2fluíre\3\4/g
	s/\b\([Rr]\|\)\([Ee]\)fluïssi\([ns]\)\([^[:alnum:]]\)/\1\2fluïre\3\4/g
	# influir
	s/\b\([Ii]\)nflueix\(en\|es\|\)\([^[:alnum:]]\)/\1nfluïx\2\3/g
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
	s/\b\([Uu]\)nidad de fomente\([^[:alnum:]]\)/\1nitat de Fomento\2/g
	s/\b\([Uu]\)nidades de fomente\([^[:alnum:]]\)/\1nitats de Fomento\2/g
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
s/\b\([Ff]\)rueix\(en\|es\|\)\([^[:alnum:]]\)/\1ruïx\2\3/g
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
# fusionar
s/\b\([Ff]\)usionés\([^[:alnum:]]\)/\1usionara\2/g
s/\b\([Ff]\)usionéssi\([mu]\)\([^[:alnum:]]\)/\1usionàre\2\3/g
s/\b\([Ff]\)usionessi\([ns]\)\([^[:alnum:]]\)/\1usionare\2\3/g
s/\b\([Ff]\)usion\([io]\)\([^[:alnum:]]\)/\1usione\3/g
s/\b\([Ff]\)usioni\([ns]\)\([^[:alnum:]]\)/\1usione\2\3/g
# g
#
	s/\bper a gairebé tots els sistemes\([^[:alnum:]]\)/per quasi tots els sistemes\1/g
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
s/\b\([Gg]\)aranteix\(en\|es\|\)\([^[:alnum:]]\)/\1arantix\2\3/g
s/\b\([Gg]\)aranteixi\([^[:alnum:]]\)/\1arantisca\2/g
s/\b\([Gg]\)aranteixi\([ns]\)\([^[:alnum:]]\)/\1arantisque\2\3/g
s/\b\([Gg]\)aranteixo\([^[:alnum:]]\)/\1arantisc\2/g
s/\b\([Gg]\)arantís\([^[:alnum:]]\)/\1arantira\2/g
s/\b\([Gg]\)arantíssi\([mu]\)\([^[:alnum:]]\)/\1arantíre\2\3/g
s/\b\([Gg]\)arantissi\([ns]\)\([^[:alnum:]]\)/\1arantire\2\3/g
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
s/\b\([Gg]\)audeix\(en\|es\|\)\([^[:alnum:]]\)/\1audix\2\3/g
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
	s/\b\([Ee]\)l Gironés\([^[:alnum:]]\)/\1l Gironès\2/g
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
s/\bGra\(ó\|ons\)\([^[:alnum:]]\)/Escal\1\2/g
s/\bgra\(ó\|ons\)\([^[:alnum:]]\)/escal\1\2/g
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
s/\b\([Hh]\)agi\([^[:alnum:]]\)/\1aja\2/g
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
# immergir
s/\b\([Ii]\)mmergeix\(en\|es\|\)\([^[:alnum:]]\)/\1mmergix\2\3/g
s/\b\([Ii]\)mmergeixi\([^[:alnum:]]\)/\1mmergisca\2/g
s/\b\([Ii]\)mmergeixi\([ns]\)\([^[:alnum:]]\)/\1mmergisque\2\3/g
s/\b\([Ii]\)mmergeixo\([^[:alnum:]]\)/\1mmergisc\2/g
s/\b\([Ii]\)mmergís\([^[:alnum:]]\)/\1mmergira\2/g
s/\b\([Ii]\)mmergíssi\([mu]\)\([^[:alnum:]]\)/\1mmergíre\2\3/g
s/\b\([Ii]\)mmergissi\([ns]\)\([^[:alnum:]]\)/\1mmergire\2\3/g
	# TODO: no
	# submmergir
	s/\b\([Ss]\)ubmmergeix\(en\|es\|\)\([^[:alnum:]]\)/\1ubmmergix\2\3/g
	s/\b\([Ss]\)ubmmergeixi\([^[:alnum:]]\)/\1ubmmergisca\2/g
	s/\b\([Ss]\)ubmmergeixi\([ns]\)\([^[:alnum:]]\)/\1ubmmergisque\2\3/g
	s/\b\([Ss]\)ubmmergeixo\([^[:alnum:]]\)/\1ubmmergisc\2/g
	s/\b\([Ss]\)ubmmergís\([^[:alnum:]]\)/\1ubmmergira\2/g
	s/\b\([Ss]\)ubmmergíssi\([mu]\)\([^[:alnum:]]\)/\1ubmmergíre\2\3/g
	s/\b\([Ss]\)ubmmergissi\([ns]\)\([^[:alnum:]]\)/\1ubmmergire\2\3/g
# immobilitzar
s/\b\([Ii]\)mmobilitzés\([^[:alnum:]]\)/\1mmobilitzara\2/g
s/\b\([Ii]\)mmobilitzéssi\([mu]\)\([^[:alnum:]]\)/\1mmobilitzàre\2\3/g
s/\b\([Ii]\)mmobilitzessi\([ns]\)\([^[:alnum:]]\)/\1mmobilitzare\2\3/g
s/\b\([Ii]\)mmobilitz\([io]\)\([^[:alnum:]]\)/\1mmovilitze\3/g
s/\b\([Ii]\)mmobilitzi\([ns]\)\([^[:alnum:]]\)/\1mmovilitze\2\3/g
# impedir
s/\b\([Ii]\)mpedeix\(en\|es\|\)\([^[:alnum:]]\)/\1mpedix\2\3/g
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
s/\b\([Ii]\)mprimeix\(en\|es\|\)\([^[:alnum:]]\)/\1mprimix\2\3/g
s/\b\([Ii]\)mprimeixi\([^[:alnum:]]\)/\1mprimisca\2/g
s/\b\([Ii]\)mprimeixi\([ns]\)\([^[:alnum:]]\)/\1mprimisque\2\3/g
s/\b\([Ii]\)mprimeixo\([^[:alnum:]]\)/\1mprimisc\2/g
s/\b\([Ii]\)mprimís\([^[:alnum:]]\)/\1mprimira\2/g
s/\b\([Ii]\)mprimíssi\([mu]\)\([^[:alnum:]]\)/\1mprimíre\2\3/g
s/\b\([Ii]\)mprimissi\([ns]\)\([^[:alnum:]]\)/\1mprimire\2\3/g
	# sobreimprimir
	s/\b\([Ss]\)obreimprès\([^[:alnum:]]\)/\1obreimprés\2/g
	s/\b\([Ss]\)obreimprimeix\(en\|es\|\)\([^[:alnum:]]\)/\1obreimprimix\2\3/g
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
s/\b\([Ii]\)ngereix\(en\|es\|\)\([^[:alnum:]]\)/\1ngerix\2\3/g
s/\b\([Ii]\)ngereixi\([^[:alnum:]]\)/\1ngerisca\2/g
s/\b\([Ii]\)ngereixi\([ns]\)\([^[:alnum:]]\)/\1ngerisque\2\3/g
s/\b\([Ii]\)ngereixo\([^[:alnum:]]\)/\1ngerisc\2/g
s/\b\([Ii]\)ngerís\([^[:alnum:]]\)/\1ngerira\2/g
s/\b\([Ii]\)ngeríssi\([mu]\)\([^[:alnum:]]\)/\1ngeríre\2\3/g
s/\b\([Ii]\)ngerissi\([ns]\)\([^[:alnum:]]\)/\1ngerire\2\3/g
# inhibir
s/\b\([Ii]\)nhibeix\(en\|es\|\)\([^[:alnum:]]\)/\1nhibix\2\3/g
s/\b\([Ii]\)nhibeixi\([^[:alnum:]]\)/\1nhibisca\2/g
s/\b\([Ii]\)nhibeixi\([ns]\)\([^[:alnum:]]\)/\1nhibisque\2\3/g
s/\b\([Ii]\)nhibeixo\([^[:alnum:]]\)/\1nhibisc\2/g
s/\b\([Ii]\)nhibís\([^[:alnum:]]\)/\1nhibira\2/g
s/\b\([Ii]\)nhibíssi\([mu]\)\([^[:alnum:]]\)/\1nhibíre\2\3/g
s/\b\([Ii]\)nhibissi\([ns]\)\([^[:alnum:]]\)/\1nhibire\2\3/g
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
# indexar
s/\b\([Ii]\)ndexés\([^[:alnum:]]\)/\1ndexara\2/g
s/\b\([Ii]\)ndexéssi\([mu]\)\([^[:alnum:]]\)/\1ndexàre\2\3/g
s/\b\([Ii]\)ndexessi\([ns]\)\([^[:alnum:]]\)/\1ndexare\2\3/g
s/\b\([Ii]\)ndex\([io]\)\([^[:alnum:]]\)/\1ndexe\3/g
s/\b\([Ii]\)ndexi\([ns]\|\)\([^[:alnum:]]\)/\1ndexe\2\3/g
# induir
s/\b\([Ii]\)ndueix\(en\|es\|\)\([^[:alnum:]]\)/\1nduïx\2\3/g
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
	s/\bTorna\(r\|\) a engegar\([^[:alnum:]]\)/Reinicia\1\2/g
	s/\btorna\(r\|\) a engegar\([^[:alnum:]]\)/reinicia\1\2/g
# inicialitzar
s/\bInicialitza\([^[:alnum:]]\)/Restablix\1/g
s/\binicialitza\([^[:alnum:]]\)/restablix\1/g
s/\bInicialitzar\([^[:alnum:]]\)/Restablir\1/g
s/\binicialitzar\([^[:alnum:]]\)/restablir\1/g
	s/\bd'restablir\([^[:alnum:]]\)/de restablir\1/g
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
# inserir
	s/\bsigui inserit\([^[:alnum:]]\)/s'insereixi\1/g
s/\b\([Ii]\)nsereix\(en\|es\|\)\([^[:alnum:]]\)/\1nserix\2\3/g
s/\b\([Ii]\)nsereixi\([^[:alnum:]]\)/\1nserisca\2/g
s/\b\([Ii]\)nsereixi\([ns]\)\([^[:alnum:]]\)/\1nserisque\2\3/g
s/\b\([Ii]\)nsereixo\([^[:alnum:]]\)/\1nserisc\2/g
s/\b\([Ii]\)nserís\([^[:alnum:]]\)/\1nserira\2/g
s/\b\([Ii]\)nseríssi\([mu]\)\([^[:alnum:]]\)/\1nseríre\2\3/g
s/\b\([Ii]\)nserissi\([ns]\)\([^[:alnum:]]\)/\1nserire\2\3/g
# insistir
s/\b\([Ii]\)nsisteix\(en\|es\|\)\([^[:alnum:]]\)/\1nsistix\2\3/g
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
s/\b\([Ii]\)nstrueix\(en\|es\|\)\([^[:alnum:]]\)/\1nstruïx\2\3/g
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
# introduir
s/\b\([Ii]\)ntrodueix\(en\|es\|\)\([^[:alnum:]]\)/\1ntroduïx\2\3/g
s/\b\([Ii]\)ntrodueixi\([^[:alnum:]]\)/\1ntroduïsca\2/g
s/\b\([Ii]\)ntrodueixi\([ns]\)\([^[:alnum:]]\)/\1ntroduïsque\2\3/g
s/\b\([Ii]\)ntrodueixo\([^[:alnum:]]\)/\1ntroduïsc\2/g
s/\b\([Ii]\)ntroduís\([^[:alnum:]]\)/\1ntroduïra\2/g
s/\b\([Ii]\)ntroduíssi\([mu]\)\([^[:alnum:]]\)/\1ntroduíre\2\3/g
s/\b\([Ii]\)ntroduïssi\([ns]\)\([^[:alnum:]]\)/\1ntroduïre\2\3/g
# invertir
s/\b\([Ii]\)nverteix\(en\|es\|\)\([^[:alnum:]]\)/\1nvertix\2\3/g
s/\b\([Ii]\)nverteixi\([^[:alnum:]]\)/\1nvertisca\2/g
s/\b\([Ii]\)nverteixi\([ns]\)\([^[:alnum:]]\)/\1nvertisque\2\3/g
s/\b\([Ii]\)nverteixo\([^[:alnum:]]\)/\1nvertisc\2/g
	s/\bINVERTEIX\([^[:alnum:]]\)/INVERTIX\1/g
s/\b\([Ii]\)nvertís\([^[:alnum:]]\)/\1nvertira\2/g
s/\b\([Ii]\)nvertíssi\([mu]\)\([^[:alnum:]]\)/\1nvertíre\2\3/g
s/\b\([Ii]\)nvertissi\([ns]\)\([^[:alnum:]]\)/\1nvertire\2\3/g
	# reinvertir
	s/\b\([Rr]\)einverteix\(en\|es\|\)\([^[:alnum:]]\)/\1einvertix\2\3/g
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
	# PDT:
	s/\bJunta\([^[:alnum:]]\)/Uneix\1/g
	s/\bjunta\([^[:alnum:]]\)/uneix\1/g
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
# limitar
s/\b\([Ll]\)imités\([^[:alnum:]]\)/\1imitara\2/g
s/\b\([Ll]\)imitéssi\([mu]\)\([^[:alnum:]]\)/\1imitàre\2\3/g
s/\b\([Ll]\)imitessi\([ns]\)\([^[:alnum:]]\)/\1imitare\2\3/g
s/\b\([Ll]\)imit\([io]\)\([^[:alnum:]]\)/\1imite\3/g
s/\b\([Ll]\)imiti\([ns]\)\([^[:alnum:]]\)/\1imite\2\3/g
	# delimitar
	s/\b\([Dd]\)elimités\([^[:alnum:]]\)/\1elimitara\2/g
	s/\b\([Dd]\)elimitéssi\([mu]\)\([^[:alnum:]]\)/\1elimitàre\2\3/g
	s/\b\([Dd]\)elimitessi\([ns]\)\([^[:alnum:]]\)/\1elimitare\2\3/g
	s/\b\([Dd]\)elimit\([io]\)\([^[:alnum:]]\)/\1elimite\3/g
	s/\b\([Dd]\)elimiti\([ns]\)\([^[:alnum:]]\)/\1elimite\2\3/g
s/\bLocalitzaci\(ó\|ons\)\([^[:alnum:]]\)/Ubicaci\1\2/g
s/\blocalitzaci\(ó\|ons\)\([^[:alnum:]]\)/ubicaci\1\2/g
	s/\[Ubicació\]/\[Localització\]/g
	s/\bde ubicació\([^[:alnum:]]\)/d'ubicació\1/g
	s/\bidioma d'ubicació\([^[:alnum:]]\)/idioma de traducció\1/g
	s/\b\([Ii]\)nternacionalització i ubicació\([^[:alnum:]]\)/\1nternacionalització i localització\2/g
	s/\b\([Ll]\)loc web d'ubicació\([^[:alnum:]]\)/\1loc web de localització\2/g
	s/\bMillora d'ubicació\([^[:alnum:]]\)/Millora de la localització\1/g
	s/\bmillorar la ubicació del sistema\([^[:alnum:]]\)/millorar la localització del sistema\1/g
	s/\bal llançador\([^[:alnum:]]\)/a l'iniciador\1/g
s/\bLlança\(dor\|dors\|r\|\)\([^[:alnum:]]\)/Inicia\1\2/g
s/\bllança\(dor\|dors\|r\|\)\([^[:alnum:]]\)/inicia\1\2/g
	s/\b\([Dd]\)'iniciar-te\([^[:alnum:]]\)/\1e llançar-te\2/g
	s/\b\([Dd]\)el \([Ii]\)niciador\([^[:alnum:]]\)/\1e l'\2niciador\3/g
	s/\bmenú del <interface>Iniciador\([^[:alnum:]]\)/menú de l'<interface>Iniciador\1/g
	s/\bdel llançament del\([^[:alnum:]]\)/de la iniciació del\1/g
	s/\bIniciar bomba\([^[:alnum:]]\)/Llançar bomba\1/g
	s/\bIniciar els dards\([^[:alnum:]]\)/Llançar els dards\1/g
	s/\biniciar-los en un dels pous\([^[:alnum:]]\)/llançar-los en un dels pous\1/g
	s/\bInicia't\([^[:alnum:]]\)/Llança't\1/g
	s/\binicia't\([^[:alnum:]]\)/llança't\1/g
	s/\biniciar-se \(a l'esquerra\|al mig\)\([^[:alnum:]]\)/llançar-se \1\2/g
	s/\biniciar-te\([^[:alnum:]]\)/llançar-te\1/g
	s/\b\([Nn]\)otes d'iniciament\([^[:alnum:]]\)/\1otes de llançament\2/g
	s/per a iniciar un dard\([^[:alnum:]]\)/per a llançar un dard\1/g
	s/per a iniciar els dards\([^[:alnum:]]\)/per a llançar els dards\1/g
	s/\bes llanci\([^[:alnum:]]\)/s'inicie\1/g
s/\bLlanci\([^[:alnum:]]\)/Inicie\1/g
s/\bllanci\([^[:alnum:]]\)/inicie\1/g
s/\bLlangardaix\([^[:alnum:]]\)/Fardatxo\1/g
s/\bllangardaix\([^[:alnum:]]\)/fardatxo\1/g
s/\bLlangardaixos\([^[:alnum:]]\)/Fardatxos\1/g
s/\bllangardaixos\([^[:alnum:]]\)/fardatxos\1/g
s/\b\([Ll]\)lenti\(a\|es\)\([^[:alnum:]]\)/\1lentill\2\3/g
	s/\bLima llimona\([^[:alnum:]]\)/Llima - llima dolça\1/g
s/\b\([Ll]\)limon\(a\|es\)\([^[:alnum:]]\)/\1lim\2\3/g
s/\bLlardons\([^[:alnum:]]\)/Cucarrons\1/g
s/\bllardons\([^[:alnum:]]\)/cucarrons\1/g
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
# llançar
s/\b\([Ll]\)lancés\([^[:alnum:]]\)/\1lançara\2/g
s/\b\([Ll]\)lancéssi\([mu]\)\([^[:alnum:]]\)/\1lançàre\2\3/g
s/\b\([Ll]\)lancessi\([ns]\)\([^[:alnum:]]\)/\1lançare\2\3/g
s/\b\([Ll]\)lanço\([^[:alnum:]]\)/\1lance\2/g
s/\b\([Ll]\)lanci\([ns]\|\)\([^[:alnum:]]\)/\1lance\2\3/g
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
s/\b\([Ll]\)legeix\(en\|es\|\)\([^[:alnum:]]\)/\1lig\2\3/g
s/\b\([Ll]\)legeixi\([^[:alnum:]]\)/\1lija\2/g
s/\b\([Ll]\)legeixi\([ns]\)\([^[:alnum:]]\)/\1lige\2\3/g
s/\b\([Ll]\)legeixo\([^[:alnum:]]\)/\1lig\2/g
s/\b\([Ll]\)legís\([^[:alnum:]]\)/\1legira\2/g
s/\b\([Ll]\)legíssi\([mu]\)\([^[:alnum:]]\)/\1legíre\2\3/g
s/\b\([Ll]\)legissi\([ns]\)\([^[:alnum:]]\)/\1legire\2\3/g
	s/\bLLEGEIX\([^[:alnum:]]\)/LLIG\1/g
	# rellegir
	s/\b\([Rr]\)ellegeix\(en\|es\|\)\([^[:alnum:]]\)/\1ellig\2\3/g
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
s/\b\([Ll]\)lueix\(en\|es\|\)\([^[:alnum:]]\)/\1luïx\2\3/g
s/\b\([Ll]\)lueixi\([^[:alnum:]]\)/\1luïsca\2/g
s/\b\([Ll]\)lueixi\([ns]\)\([^[:alnum:]]\)/\1luïsque\2\3/g
s/\b\([Ll]\)lueixo\([^[:alnum:]]\)/\1luïsc\2/g
s/\b\([Ll]\)luís\([^[:alnum:]]\)/\1luïra\2/g
s/\b\([Ll]\)luíssi\([mu]\)\([^[:alnum:]]\)/\1luíre\2\3/g
s/\b\([Ll]\)luïssi\([ns]\)\([^[:alnum:]]\)/\1luïre\2\3/g
	s/\bLluïra \(II\|Demo\)\([^[:alnum:]]\)/Lluís \1\2/g
s/\b\([Ll]\)ongitud\([^[:alnum:]]\)/\1largària\2/g
s/\b\([Ll]\)uxemburguès\([^[:alnum:]]\)/\1uxemburgués\2/g
# m
#
s/\bMaduix\(a\|es\)\([^[:alnum:]]\)/Fraul\1\2/g
s/\bmaduix\(a\|es\)\([^[:alnum:]]\)/fraul\1\2/g
s/\bMainada\([^[:alnum:]]\)/Xicalla\1/g
s/\bmainada\([^[:alnum:]]\)/xicalla\1/g
# s/\b\([Mm]\)anat\(s\|\)\([^[:alnum:]]\)/\1anoll\2\3/g # Manat d'Azerbaidjan
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
# mancar -> faltar
s/\bManca\(nt\|r\|rà\|ran\|va\|ven\|\)\([^[:alnum:]]\)/Falta\1\2/g
s/\bmanca\(nt\|r\|rà\|ran\|va\|ven\|\)\([^[:alnum:]]\)/falta\1\2/g
s/\bMancances\([^[:alnum:]]\)/Faltes\1/g
s/\bmancances\([^[:alnum:]]\)/faltes\1/g
s/\bManqu\(en\|eu\)\([^[:alnum:]]\)/Falt\1\2/g
s/\bmanqu\(en\|eu\)\([^[:alnum:]]\)/falt\1\2/g
s/\bManqués\([^[:alnum:]]\)/Faltara\1/g
s/\bmanqués\([^[:alnum:]]\)/faltara\1/g
s/\bManquéssi\([mu]\)\([^[:alnum:]]\)/Faltàre\1\2/g
s/\bmanquéssi\([mu]\)\([^[:alnum:]]\)/faltàre\1\2/g
s/\bManquessi\([ns]\)\([^[:alnum:]]\)/Faltare\1\2/g
s/\bmanquessi\([ns]\)\([^[:alnum:]]\)/faltare\1\2/g
s/\bManqui\(n\|\)\([^[:alnum:]]\)/Falte\1\2/g
s/\bmanqui\(n\|\)\([^[:alnum:]]\)/falte\1\2/g
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
	s/\bwebsites-manifeste-kde-org\([^[:alnum:]]\)/websites-manifesto-kde-org\1/g
	s/\bmanifeste.softwaresmanship.org\([^[:alnum:]]\)/manifesto.softwaresmanship.org\1/g
# manipular
s/\b\([Mm]\)anipulés\([^[:alnum:]]\)/\1anipulara\2/g
s/\b\([Mm]\)anipuléssi\([mu]\)\([^[:alnum:]]\)/\1anipulàre\2\3/g
s/\b\([Mm]\)anipulessi\([ns]\)\([^[:alnum:]]\)/\1anipulare\2\3/g
s/\b\([Mm]\)anipul\([io]\)\([^[:alnum:]]\)/\1anipule\3/g
s/\b\([Mm]\)anipuli\([ns]\)\([^[:alnum:]]\)/\1anipule\2\3/g
# manllevar
	s/\bde manllevar\([^[:alnum:]]\)/d'amprar\1/g
s/\bManlleva\(da\|des\|dor\|dors\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|ves\|\)\([^[:alnum:]]\)/Ampra\1\2/g
s/\bmanlleva\(da\|des\|dor\|dors\|nt\|nts\|r\|rà\|ran\|t\|ts\|va\|ven\|ves\|\)\([^[:alnum:]]\)/ampra\1\2/g
s/\bManllev\(em\|en\|es\|eu\)\([^[:alnum:]]\)/Ampr\1\2/g
s/\bmanllev\(em\|en\|es\|eu\)\([^[:alnum:]]\)/ampr\1\2/g
s/\bManllevés\([^[:alnum:]]\)/Amprara\1/g
s/\bmanllevés\([^[:alnum:]]\)/amprara\1/g
s/\bManllevéssi\([mu]\)\([^[:alnum:]]\)/Ampràre\1\2/g
s/\bmanllevéssi\([mu]\)\([^[:alnum:]]\)/ampràre\1\2/g
s/\bManllevessi\([ns]\)\([^[:alnum:]]\)/Amprare\1\2/g
s/\bmanllevessi\([ns]\)\([^[:alnum:]]\)/amprare\1\2/g
s/\bManllev\([io]\)\([^[:alnum:]]\)/Ampre\2/g
s/\bmanllev\([io]\)\([^[:alnum:]]\)/ampre\2/g
s/\bManllevi\([ns]\)\([^[:alnum:]]\)/Ampre\1\2/g
s/\bmanllevi\([ns]\)\([^[:alnum:]]\)/ampre\1\2/g
# marcar
s/\b\([Mm]\)arco\([^[:alnum:]]\)/\1arque\2/g
s/\b\([Mm]\)arqués\([^[:alnum:]]\)/\1arcara\2/g
s/\b\([Mm]\)arquéssi\([mu]\|\)\([^[:alnum:]]\)/\1arcàre\2\3/g
s/\b\([Mm]\)arquessi\([ns]\|\)\([^[:alnum:]]\)/\1arcare\2\3/g
s/\b\([Mm]\)arqui\([ns]\|\)\([^[:alnum:]]\)/\1arque\2\3/g
	s/\bMarque \(Gulino\|Martin\|Nelles\)\([^[:alnum:]]\)/Marco \1\2/g
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
	s/\"Mate\"/\"Mati\"/g
	s/\bMate Grosso\([^[:alnum:]]\)/Mato Grosso\1/g
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
# millorar
s/\b\([Mm]\)illorés\([^[:alnum:]]\)/\1illorara\2/g
s/\b\([Mm]\)illoréssi\([mu]\)\([^[:alnum:]]\)/\1illoràre\2\3/g
s/\b\([Mm]\)illoressi\([ns]\)\([^[:alnum:]]\)/\1illorare\2\3/g
s/\b\([Mm]\)illor\([io]\)\([^[:alnum:]]\)/\1illore\3/g
s/\b\([Mm]\)illori\([ns]\)\([^[:alnum:]]\)/\1illore\2\3/g
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
	s/\bal espill\([^[:alnum:]]\)/a l'espill\1/g
	s/\bdel espill\([^[:alnum:]]\)/de l'espill\1/g
# mirar
s/\b\([Mm]\)irés\([^[:alnum:]]\)/\1irara\2/g
s/\b\([Mm]\)iréssi\([mu]\)\([^[:alnum:]]\)/\1iràre\2\3/g
s/\b\([Mm]\)iressi\([ns]\)\([^[:alnum:]]\)/\1irare\2\3/g
s/\b\([Mm]\)ir\([io]\)\([^[:alnum:]]\)/\1ire\3/g
s/\b\([Mm]\)iri\([ns]\)\([^[:alnum:]]\)/\1ire\2\3/g
s/\bMitges\([^[:alnum:]]\)/Calces\1/g
s/\bmitges\([^[:alnum:]]\)/calces\1/g
	s/\bCalces hores\([^[:alnum:]]\)/Mitges hores\1/g
	s/\bcalces hores\([^[:alnum:]]\)/mitges hores\1/g
	s/\bCalces marques\([^[:alnum:]]\)/Mitges marques\1/g
	s/\bcalces marques\([^[:alnum:]]\)/mitges marques\1/g
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
	s/\bque mogui els fitxers\([^[:alnum:]]\)/que es moguen els fitxers\1/g
s/\bMoisès\([^[:alnum:]]\)/Moisés\1/g
# molestar
s/\b\([Mm]\)olestés\([^[:alnum:]]\)/\1olestara\2/g
s/\b\([Mm]\)olestéssi\([mu]\)\([^[:alnum:]]\)/\1oguére\2\3/g
s/\b\([Mm]\)olestessi\([ns]\)\([^[:alnum:]]\)/\1oguere\2\3/g
s/\b\([Mm]\)olest\([io]\)\([^[:alnum:]]\)/\1oleste\3/g
s/\b\([Mm]\)olesti\([ns]\)\([^[:alnum:]]\)/\1oleste\2\3/g
# moure
s/\b\([Mm]\)ogués\([^[:alnum:]]\)/\1oguera\2/g
s/\b\([Mm]\)oguéssi\([mu]\)\([^[:alnum:]]\)/\1olestàre\2\3/g
s/\b\([Mm]\)oguessi\([ns]\)\([^[:alnum:]]\)/\1olestare\2\3/g
s/\b\([Mm]\)ogui\([^[:alnum:]]\)/\1oga\2/g
s/\b\([Mm]\)ogui\([ns]\)\([^[:alnum:]]\)/\1ogue\2\3/g
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
# nedar -> nadar
s/\b\([Nn]\)eda\(da\|des\|nt\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1ada\2\3/g
s/\b\([Nn]\)ede\([mnsu]\)\([^[:alnum:]]\)/\1ade\2\3/g
s/\b\([Nn]\)edés\([^[:alnum:]]\)/\1adara\2/g
s/\b\([Nn]\)edéssi\([mu]\)\([^[:alnum:]]\)/\1adàre\2\3/g
s/\b\([Nn]\)edessi\([ns]\)\([^[:alnum:]]\)/\1adare\2\3/g
s/\b\([Nn]\)ed\([io]\)\([^[:alnum:]]\)/\1ade\3/g
s/\b\([Nn]\)edi\([ns]\)\([^[:alnum:]]\)/\1ade\2\3/g
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
# néixer -> nàixer
s/\b\([Nn]\)éixer\([^[:alnum:]]\)/\1àixer\2/g
s/\b\([Nn]\)\([ae]\)ix\(en\|es\|\)\([^[:alnum:]]\)/\1aix\3\4/g
s/\b\([Nn]\)a\(ix\|squ\)és\([^[:alnum:]]\)/\1asquera\2/g
s/\b\([Nn]\)a\(ix\|squ\)éssi\([mu]\)\([^[:alnum:]]\)/\1asquére\3\4/g
s/\b\([Nn]\)a\(ix\|squ\)essi\([ns]\)\([^[:alnum:]]\)/\1asquere\3\4/g
s/\b\([Nn]\)\([ae]\)ixi\([^[:alnum:]]\)/\1asca\3/g
s/\b\([Nn]\)\([ae]\)ixi\([ns]\)\([^[:alnum:]]\)/\1asque\3\4/g
s/\b\([Nn]\)\([ae]\)ixo\([^[:alnum:]]\)/\1asc\3/g
	# renéixer -> renàixer
	s/\b\([Rr]\)enéixer\([^[:alnum:]]\)/\1enàixer\2/g
	s/\b\([Rr]\)en\([ae]\)ix\(en\|es\|\)\([^[:alnum:]]\)/\1enaix\3\4/g
	s/\b\([Rr]\)ena\(ix\|squ\)és\([^[:alnum:]]\)/\1enasquera\2/g
	s/\b\([Rr]\)ena\(ix\|squ\)éssi\([mu]\)\([^[:alnum:]]\)/\1enasquére\3\4/g
	s/\b\([Rr]\)ena\(ix\|squ\)essi\([ns]\)\([^[:alnum:]]\)/\1enasquere\3\4/g
	s/\b\([Rr]\)en\([ae]\)ixi\([^[:alnum:]]\)/\1enasca\3/g
	s/\b\([Rr]\)en\([ae]\)ixi\([ns]\)\([^[:alnum:]]\)/\1enasque\3\4/g
	s/\b\([Rr]\)en\([ae]\)ixo\([^[:alnum:]]\)/\1enasc\3/g
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
s/\b\([Oo]\)beeix\(en\|es\|\)\([^[:alnum:]]\)/\1beïx\2\3/g
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
# obrir
s/\bObri\([^[:alnum:]]\)/Òbriga\1/g
s/\bobri\([^[:alnum:]]\)/òbriga\1/g
s/\b\([Oo]\)bre\([ns]\|\)\([^[:alnum:]]\)/\1bri\2\3/g
s/\bObri\([ns]\)\([^[:alnum:]]\)/Òbrigue\1\2/g
s/\bobri\([ns]\)\([^[:alnum:]]\)/òbrigue\1\2/g
s/\b\([Oo]\)brís\([^[:alnum:]]\)/\1brira\2/g
s/\b\([Oo]\)bríssi\([mu]\)\([^[:alnum:]]\)/\1briríe\2\3/g
s/\b\([Oo]\)brissi\([ns]\)\([^[:alnum:]]\)/\1bririe\2\3/g
s/\bObro\([^[:alnum:]]\)/Òbric\1/g
s/\bobro\([^[:alnum:]]\)/òbric\1/g
	s/\bLes obris\([^[:alnum:]]\)/Les obres\1/g
	s/\bMostra les obris\([^[:alnum:]]\)/Mostra les obres\1/g
	s/\bòbrigues mestres\([^[:alnum:]]\)/obres mestres\1/g
	s/\bobris mestres\([^[:alnum:]]\)/obres mestres\1/g
	# cobrir
	s/\b\([Cc]\)obreix\(en\|es\|\)\([^[:alnum:]]\)/\1obrix\2\3/g
	s/\b\([Cc]\)obreixi\([^[:alnum:]]\)/\1obrisca\2/g
	s/\b\([Cc]\)obreixi\([ns]\)\([^[:alnum:]]\)/\1obrisque\2\3/g
	s/\b\([Cc]\)obreixo\([^[:alnum:]]\)/\1obrisc\2/g
	s/\b\([Cc]\)obrís\([^[:alnum:]]\)/\1obrira\2/g
	s/\b\([Cc]\)obríssi\([mu]\)\([^[:alnum:]]\)/\1obríre\2\3/g
	s/\b\([Cc]\)obrissi\([ns]\)\([^[:alnum:]]\)/\1obrire\2\3/g
		# descobrir
		s/\b\([Dd]\)escobreix\(en\|es\|\)\([^[:alnum:]]\)/\1escobrix\2\3/g
		s/\b\([Dd]\)escobreixi\([^[:alnum:]]\)/\1escobrisca\2/g
		s/\b\([Dd]\)escobreixi\([ns]\)\([^[:alnum:]]\)/\1escobrisque\2\3/g
		s/\b\([Dd]\)escobreixo\([^[:alnum:]]\)/\1escobrisc\2/g
		s/\b\([Dd]\)escobrís\([^[:alnum:]]\)/\1escobrira\2/g
		s/\b\([Dd]\)escobríssi\([mu]\)\([^[:alnum:]]\)/\1escobríre\2\3/g
		s/\b\([Dd]\)escobrissi\([ns]\)\([^[:alnum:]]\)/\1escobrire\2\3/g
			# redescobrir
			s/\b\([Rr]\)edescobreix\(en\|es\|\)\([^[:alnum:]]\)/\1edescobrix\2\3/g
			s/\b\([Rr]\)edescobreixi\([^[:alnum:]]\)/\1edescobrisca\2/g
			s/\b\([Rr]\)edescobreixi\([ns]\)\([^[:alnum:]]\)/\1edescobrisque\2\3/g
			s/\b\([Rr]\)edescobreixo\([^[:alnum:]]\)/\1edescobrisc\2/g
			s/\b\([Rr]\)edescobrís\([^[:alnum:]]\)/\1edescobrira\2/g
			s/\b\([Rr]\)edescobríssi\([mu]\)\([^[:alnum:]]\)/\1edescobríre\2\3/g
			s/\b\([Rr]\)edescobrissi\([ns]\)\([^[:alnum:]]\)/\1edescobrire\2\3/g
		# encobrir
		s/\b\([Ee]\)ncobreix\(en\|es\|\)\([^[:alnum:]]\)/\1ncobrix\2\3/g
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
	# reobrir
		s/\breobrir-la\([^[:alnum:]]\)/tornar-la a obrir\1/g
	s/\bReobri\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/Torna\1 a obrir\2/g
	s/\breobri\(da\|des\|nt\|r\|rà\|ran\|reu\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/torna\1 a obrir\2/g
	s/\bReobre\([ns]\|\)\([^[:alnum:]]\)/Torne\1 a obrir\2/g
	s/\breobre\([ns]\|\)\([^[:alnum:]]\)/Torne\1 a obrir\2/g
	s/\bReobr\([io]\)\([^[:alnum:]]\)/Torne a obrir\2/g
	s/\breobr\([io]\)\([^[:alnum:]]\)/torne a obrir\2/g
	s/\bReobri\([ns]\)\([^[:alnum:]]\)/Torne\1 a obrir\2/g
	s/\breobri\([ns]\)\([^[:alnum:]]\)/torne\1 a obrir\2/g
	s/\bReobrís\([^[:alnum:]]\)/Tornara a obrir\1/g
	s/\breobrís\([^[:alnum:]]\)/tornara a obrir\1/g
	s/\bReobríssi\([mu]\)\([^[:alnum:]]\)/Tornàre\1 a obrir\2/g
	s/\breobríssi\([mu]\)\([^[:alnum:]]\)/tornàre\1 a obrir\2/g
	s/\bReobrissi\([ns]\)\([^[:alnum:]]\)/Tornare\1 a obrir\2/g
	s/\breobrissi\([ns]\)\([^[:alnum:]]\)/tornare\1 a obrir\2/g
# observar
s/\b\([Oo]\)bservés\([^[:alnum:]]\)/\1bservara\2/g
s/\b\([Oo]\)bservéssi\([mu]\)\([^[:alnum:]]\)/\1bservàre\2\3/g
s/\b\([Oo]\)bservessi\([ns]\)\([^[:alnum:]]\)/\1bservare\2\3/g
s/\b\([Oo]\)bserv\([io]\)\([^[:alnum:]]\)/\1bserve\3/g
s/\b\([Oo]\)bservi\([ns]\)\([^[:alnum:]]\)/\1bserve\2\3/g
# obstruir
s/\b\([Oo]\)bstrueix\(en\|es\|\)\([^[:alnum:]]\)/\1bstruïx\2\3/g
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
s/\b\([Pp]\)arteix\(en\|es\|\)\([^[:alnum:]]\)/\1artix\2\3/g
s/\b\([Pp]\)arteixi\([^[:alnum:]]\)/\1artisca\2/g
s/\b\([Pp]\)arteixi\([ns]\)\([^[:alnum:]]\)/\1artisque\2\3/g
s/\b\([Pp]\)arteixo\([^[:alnum:]]\)/\1artisc\2/g
s/\b\([Pp]\)artís\([^[:alnum:]]\)/\1artira\2/g
s/\b\([Pp]\)artíssi\([mu]\)\([^[:alnum:]]\)/\1artíre\2\3/g
s/\b\([Pp]\)artissi\([ns]\)\([^[:alnum:]]\)/\1artire\2\3/g
	# repartir
	s/\b\([Rr]\)eparteix\(en\|es\|\)\([^[:alnum:]]\)/\1epartix\2\3/g
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
s/\bpasses d'embarcament\([^[:alnum:]]\)/targetes d'embarcament\1/g
s/\bpasses de la Cartera d'Apple\([^[:alnum:]]\)/targetes de la Cartera d'Apple\1/g
s/\bpasses de tarifa plana\([^[:alnum:]]\)/targetes de tarifa plana\1/g
s/\bPasses i programes\([^[:alnum:]]\)/Targetes i programes\1/g
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
	s/\bEs pensa\([^[:alnum:]]\)/Se pensa\1/g
	s/\bes pensa\([^[:alnum:]]\)/se pensa\1/g
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
s/\b\([Pp]\)ersisteix\(en\|es\|\)\([^[:alnum:]]\)/\1ersistix\2\3/g
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
	s/\bHenrique Pinte\([^[:alnum:]]\)/Henrique Pinto\1/g
# pitjar
s/\b\([Pp]\)itgés\([^[:alnum:]]\)/\1itjara\2/g
s/\b\([Pp]\)itgéssi\([mu]\)\([^[:alnum:]]\)/\1itjàre\2\3/g
s/\b\([Pp]\)itgessi\([ns]\)\([^[:alnum:]]\)/\1itjare\2\3/g
s/\b\([Pp]\)itgi\([ns]\|\)\([^[:alnum:]]\)/\1itge\2\3/g
s/\b\([Pp]\)itjo\([^[:alnum:]]\)/\1itge\2/g
	# espitjar -> espentar
	s/\b\([Ee]\)spitja\(da\|des\|nt\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1spenta\2\3/g
	s/\b\([Ee]\)spitgés\([^[:alnum:]]\)/\1spentara\2/g
	s/\b\([Ee]\)spitgéssi\([mu]\)\([^[:alnum:]]\)/\1spentàre\2\3/g
	s/\b\([Ee]\)spitgessi\([ns]\)\([^[:alnum:]]\)/\1spentare\2\3/g
	s/\b\([Ee]\)spitgi\([ns]\|\)\([^[:alnum:]]\)/\1spente\2\3/g
	s/\b\([Ee]\)spitjo\([^[:alnum:]]\)/\1spente\2/g
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
# portar
s/\b\([Pp]\)ortés\([^[:alnum:]]\)/\1ortara\2/g
s/\b\([Pp]\)ortéssi\([mu]\)\([^[:alnum:]]\)/\1ortàre\2\3/g
s/\b\([Pp]\)ortessi\([ns]\)\([^[:alnum:]]\)/\1ortare\2\3/g
s/\b\([Pp]\)ort\([io]\)\([^[:alnum:]]\)/\1orte\3/g
s/\b\([Pp]\)orti\([ns]\)\([^[:alnum:]]\)/\1orte\2\3/g
	s/\"Porte\"/\"Porto\"/g
	s/\bPorte_Acre\([^[:alnum:]]\)/Porto_Acre\1/g
	s/\bPorte Alegre\([^[:alnum:]]\)/Porto Alegre\1/g
	s/\bPorte-Novo\([^[:alnum:]]\)/Porto-Novo\1/g
	s/\bPorte_Velho\([^[:alnum:]]\)/Porto_Velho\1/g
	s/\bPorte Velho\([^[:alnum:]]\)/Porto Velho\1/g
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
s/\bposicionat\([^[:alnum:]]\)/ubicat\1/g
# posseir
s/\b\([Pp]\)osseeix\(en\|es\|\)\([^[:alnum:]]\)/\1osseïx\2\3/g
s/\b\([Pp]\)osseeixi\([^[:alnum:]]\)/\1osseïsca\2/g
s/\b\([Pp]\)osseeixi\([ns]\)\([^[:alnum:]]\)/\1osseïsque\2\3/g
s/\b\([Pp]\)osseeixo\([^[:alnum:]]\)/\1osseïsc\2/g
s/\b\([Pp]\)osseís\([^[:alnum:]]\)/\1osseïra\2/g
s/\b\([Pp]\)osseíssi\([mu]\)\([^[:alnum:]]\)/\1osseíre\2\3/g
s/\b\([Pp]\)osseïssi\([ns]\)\([^[:alnum:]]\)/\1osseïre\2\3/g
	# desposseir
	s/\b\([Dd]\)esposseeix\(en\|es\|\)\([^[:alnum:]]\)/\1esposseïx\2\3/g
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
# precedir
s/\b\([Pp]\)recedeix\(en\|es\|\)\([^[:alnum:]]\)/\1recedix\2\3/g
s/\b\([Pp]\)recedeixi\([^[:alnum:]]\)/\1recedisca\2/g
s/\b\([Pp]\)recedeixi\([ns]\)\([^[:alnum:]]\)/\1recedisque\2\3/g
s/\b\([Pp]\)recedeixo\([^[:alnum:]]\)/\1recedisc\2/g
s/\b\([Pp]\)recedís\([^[:alnum:]]\)/\1recedira\2/g
s/\b\([Pp]\)recedíssi\([mu]\)\([^[:alnum:]]\)/\1recedíre\2\3/g
s/\b\([Pp]\)recedissi\([ns]\)\([^[:alnum:]]\)/\1recedire\2\3/g
# precipitar
s/\b\([Pp]\)recipités\([^[:alnum:]]\)/\1recipitara\2/g
s/\b\([Pp]\)recipitéssi\([mu]\)\([^[:alnum:]]\)/\1recipitàre\2\3/g
s/\b\([Pp]\)recipitessi\([ns]\)\([^[:alnum:]]\)/\1recipitare\2\3/g
s/\b\([Pp]\)recipit\([io]\)\([^[:alnum:]]\)/\1recipite\3/g
s/\b\([Pp]\)recipiti\([ns]\)\([^[:alnum:]]\)/\1recipite\2\3/g
# predir
s/\b\([Pp]\)redigués\([^[:alnum:]]\)/\1rediguera\2/g
s/\b\([Pp]\)rediguéssi\([mu]\)\([^[:alnum:]]\)/\1rediguére\2\3/g
s/\b\([Pp]\)rediguessi\([ns]\)\([^[:alnum:]]\)/\1rediguere\2\3/g
s/\b\([Pp]\)redigui\([^[:alnum:]]\)/\1rediga\2/g
s/\b\([Pp]\)redigui\([ns]\)\([^[:alnum:]]\)/\1redigue\2\3/g
s/\bPregària\([^[:alnum:]]\)/Oració\1/g
s/\bpregària\([^[:alnum:]]\)/oració\1/g
s/\bPregàries\([^[:alnum:]]\)/Oracions\1/g
s/\bpregàries\([^[:alnum:]]\)/oracions\1/g
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
s/\bPreserva\([^[:alnum:]]\)/Mantín\1/g
s/\bpreserva\([^[:alnum:]]\)/mantín\1/g
# presidir
s/\b\([Pp]\)resideix\(en\|es\|\)\([^[:alnum:]]\)/\1residix\2\3/g
s/\b\([Pp]\)resideixi\([^[:alnum:]]\)/\1residisca\2/g
s/\b\([Pp]\)resideixi\([ns]\)\([^[:alnum:]]\)/\1residisque\2\3/g
s/\b\([Pp]\)resideixo\([^[:alnum:]]\)/\1residisc\2/g
s/\b\([Pp]\)residís\([^[:alnum:]]\)/\1residira\2/g
s/\b\([Pp]\)residíssi\([mu]\)\([^[:alnum:]]\)/\1residíre\2\3/g
s/\b\([Pp]\)residissi\([ns]\)\([^[:alnum:]]\)/\1residire\2\3/g
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
s/\b\([Pp]\)resumeix\(en\|es\|\)\([^[:alnum:]]\)/\1resumix\2\3/g
s/\b\([Pp]\)resumeixi\([^[:alnum:]]\)/\1resumisca\2/g
s/\b\([Pp]\)resumeixi\([ns]\)\([^[:alnum:]]\)/\1resumisque\2\3/g
s/\b\([Pp]\)resumeixo\([^[:alnum:]]\)/\1resumisc\2/g
s/\b\([Pp]\)resumís\([^[:alnum:]]\)/\1resumira\2/g
s/\b\([Pp]\)resumíssi\([mu]\)\([^[:alnum:]]\)/\1resumíre\2\3/g
s/\b\([Pp]\)resumissi\([ns]\)\([^[:alnum:]]\)/\1resumire\2\3/g
# procedir
s/\b\([Pp]\)rocedeix\(en\|es\|\)\([^[:alnum:]]\)/\1rocedix\2\3/g
s/\b\([Pp]\)rocedeixi\([^[:alnum:]]\)/\1rocedisca\2/g
s/\b\([Pp]\)rocedeixi\([ns]\)\([^[:alnum:]]\)/\1rocedisque\2\3/g
s/\b\([Pp]\)rocedeixo\([^[:alnum:]]\)/\1rocedisc\2/g
s/\b\([Pp]\)rocedís\([^[:alnum:]]\)/\1rocedira\2/g
s/\b\([Pp]\)rocedíssi\([mu]\)\([^[:alnum:]]\)/\1rocedíre\2\3/g
s/\b\([Pp]\)rocedissi\([ns]\)\([^[:alnum:]]\)/\1rocedire\2\3/g
# processar
s/\b\([Pp]\)processés\([^[:alnum:]]\)/\1rocessara\2/g
s/\b\([Pp]\)processéssi\([mu]\)\([^[:alnum:]]\)/\1rocessàre\2\3/g
s/\b\([Pp]\)processessi\([ns]\)\([^[:alnum:]]\)/\1rocessare\2\3/g
s/\b\([Pp]\)rocess\([io]\)\([^[:alnum:]]\)/\1rocesse\3/g
s/\b\([Pp]\)rocessi\([ns]\)\([^[:alnum:]]\)/\1rocesse\2\3/g
# produir
s/\b\([Pp]\)rodueix\(en\|es\|\)\([^[:alnum:]]\)/\1roduïx\2\3/g
s/\b\([Pp]\)rodueixi\([^[:alnum:]]\)/\1roduïsca\2/g
s/\b\([Pp]\)rodueixi\([ns]\)\([^[:alnum:]]\)/\1roduïsque\2\3/g
s/\b\([Pp]\)rodueixo\([^[:alnum:]]\)/\1roduïsc\2/g
s/\b\([Pp]\)roduís\([^[:alnum:]]\)/\1roduïra\2/g
s/\b\([Pp]\)roduíssi\([mu]\)\([^[:alnum:]]\)/\1roduíre\2\3/g
s/\b\([Pp]\)roduïssi\([ns]\)\([^[:alnum:]]\)/\1roduïre\2\3/g
	# reproduir
	s/\b\([Rr]\)eprodueix\(en\|es\|\)\([^[:alnum:]]\)/\1eproduïx\2\3/g
	s/\b\([Rr]\)eprodueixi\([^[:alnum:]]\)/\1eproduïsca\2/g
	s/\b\([Rr]\)eprodueixi\([ns]\)\([^[:alnum:]]\)/\1eproduïsque\2\3/g
	s/\b\([Rr]\)eprodueixo\([^[:alnum:]]\)/\1eproduïsc\2/g
	s/\b\([Rr]\)eproduís\([^[:alnum:]]\)/\1eproduïra\2/g
	s/\b\([Rr]\)eproduíssi\([mu]\)\([^[:alnum:]]\)/\1eproduíre\2\3/g
	s/\b\([Rr]\)eproduïssi\([ns]\)\([^[:alnum:]]\)/\1eproduïre\2\3/g
		s/\bREPRODUEIX\([^[:alnum:]]\)/REPRODUÏX\1/g
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
s/\b\([Pp]\)rohibeix\(en\|es\|\)\([^[:alnum:]]\)/\1rohibix\2\3/g
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
s/\bPronuncia\([^[:alnum:]]\)/Llig\1/g
s/\bpronuncia\([^[:alnum:]]\)/llig\1/g
s/\bPronunciar\([^[:alnum:]]\)/Llegir\1/g
s/\bpronunciar\([^[:alnum:]]\)/llegir\1/g
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
s/\b\([Pp]\)rotegeix\(en\|es\|\)\([^[:alnum:]]\)/\1rotegix\2\3/g
s/\b\([Pp]\)rotegeixi\([^[:alnum:]]\)/\1rotegisca\2/g
s/\b\([Pp]\)rotegeixi\([ns]\)\([^[:alnum:]]\)/\1rotegisque\2\3/g
s/\b\([Pp]\)rotegeixo\([^[:alnum:]]\)/\1rotegisc\2/g
s/\b\([Pp]\)rotegís\([^[:alnum:]]\)/\1rotegira\2/g
s/\b\([Pp]\)rotegíssi\([mu]\)\([^[:alnum:]]\)/\1rotegíre\2\3/g
s/\b\([Pp]\)rotegissi\([ns]\)\([^[:alnum:]]\)/\1rotegire\2\3/g
	# desprotegir
	s/\b\([Dd]\)esprotegeix\(en\|es\|\)\([^[:alnum:]]\)/\1esprotegix\2\3/g
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
s/\b\([Pp]\)roveeix\(en\|es\|\)\([^[:alnum:]]\)/\1roveïx\2\3/g
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
# quadrar
s/\b\([Qq]\)uadrés\([^[:alnum:]]\)/\1uadrara\2/g
s/\b\([Qq]\)uadréssi\([mu]\)\([^[:alnum:]]\)/\1uadràre\2\3/g
s/\b\([Qq]\)uadressi\([ns]\)\([^[:alnum:]]\)/\1uadrare\2\3/g
s/\b\([Qq]\)uadr\([io]\)\([^[:alnum:]]\)/\1uadre\3/g
s/\b\([Qq]\)uadri\([ns]\)\([^[:alnum:]]\)/\1uadre\2\3/g
	# enquadrar
	s/\b\([Ee]\)nquadrés\([^[:alnum:]]\)/\1nquadrara\2/g
	s/\b\([Ee]\)nquadréssi\([mu]\)\([^[:alnum:]]\)/\1nquadràre\2\3/g
	s/\b\([Ee]\)nquadressi\([ns]\)\([^[:alnum:]]\)/\1nquadrare\2\3/g
	s/\b\([Ee]\)nquadr\([io]\)\([^[:alnum:]]\)/\1nquadre\3/g
	s/\b\([Ee]\)nquadri\([ns]\)\([^[:alnum:]]\)/\1nquadre\2\3/g
s/\b\([Qq]\)uadre\(s\|\)\([^[:alnum:]]\)/\1uadro\2\3/g
	s/\b\([Rr]\)equadre\(s\|\)\([^[:alnum:]]\)/\1equadro\2\3/g
	s/\bquadre\(1\|2\)\([^[:alnum:]]\)/quadro\1\2/g
	s/\bquadreCombinat\([^[:alnum:]]\)/quadroCombinat\1/g
	s/\bquadreDeText\([^[:alnum:]]\)/quadroDeText\1/g
s/\bQuant al\([^[:alnum:]]\)/Quant a\1/g
	s/\b\([Qq]\)uant a \(component\|connector\|dorsal\)\([^[:alnum:]]\)/\1uant al \2\3/g
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
	s/\bde quelcom nou\([^[:alnum:]]\)/d'alguna cosa nova\1/g
	s/\bo quelcom altre\([^[:alnum:]]\)/o a alguna cosa\1/g
	s/\bsubstitueix per quelcom altre\([^[:alnum:]]\)/substitueix per algun altre\1/g
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
s/\b\([Rr]\)edueix\(en\|es\|\)\([^[:alnum:]]\)/\1eduïx\2\3/g
s/\b\([Rr]\)edueixi\([^[:alnum:]]\)/\1eduïsca\2/g
s/\b\([Rr]\)edueixi\([ns]\)\([^[:alnum:]]\)/\1eduïsque\2\3/g
s/\b\([Rr]\)edueixo\([^[:alnum:]]\)/\1eduïsc\2/g
s/\b\([Rr]\)eduís\([^[:alnum:]]\)/\1eduïra\2/g
s/\b\([Rr]\)eduíssi\([mu]\)\([^[:alnum:]]\)/\1eduíre\2\3/g
s/\b\([Rr]\)eduïssi\([ns]\)\([^[:alnum:]]\)/\1eduïre\2\3/g
	s/\bdreceraRedueix\([^[:alnum:]]\)/dreceraReduix\1/g
# referenciar
s/\b\([Rr]\)eferenciés\([^[:alnum:]]\)/\1eferenciara\2/g
s/\b\([Rr]\)eferenciéssi\([mu]\)\([^[:alnum:]]\)/\1eferenciàre\2\3/g
s/\b\([Rr]\)eferenciessi\([ns]\)\([^[:alnum:]]\)/\1eferenciare\2\3/g
s/\b\([Rr]\)eferenci\([ïo]\)\([^[:alnum:]]\)/\1eferencie\3/g
s/\b\([Rr]\)eferenciï\([ns]\)\([^[:alnum:]]\)/\1eferencie\2\3/g
# reflectir
s/\b\([Rr]\)eflecteix\(en\|es\|\)\([^[:alnum:]]\)/\1eflectix\2\3/g
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
s/\b\([Rr]\)egeix\(en\|es\|\)\([^[:alnum:]]\)/\1egix\2\3/g
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
s/\b\([Rr]\)epeteix\(en\|es\|\)\([^[:alnum:]]\)/\1epetix\2\3/g
s/\b\([Rr]\)epeteixi\([^[:alnum:]]\)/\1epetisca\2/g
s/\b\([Rr]\)epeteixi\([ns]\)\([^[:alnum:]]\)/\1epetisque\2\3/g
s/\b\([Rr]\)epeteixo\([^[:alnum:]]\)/\1epetisc\2/g
s/\b\([Rr]\)epetís\([^[:alnum:]]\)/\1epetira\2/g
s/\b\([Rr]\)epetíssi\([mu]\)\([^[:alnum:]]\)/\1epetíre\2\3/g
s/\b\([Rr]\)epetissi\([ns]\)\([^[:alnum:]]\)/\1epetire\2\3/g
# requerir
s/\b\([Rr]\)equereix\(en\|es\|\)\([^[:alnum:]]\)/\1equerix\2\3/g
s/\b\([Rr]\)equereixi\([^[:alnum:]]\)/\1equerisca\2/g
s/\b\([Rr]\)equereixi\([ns]\)\([^[:alnum:]]\)/\1equerisque\2\3/g
s/\b\([Rr]\)equereixo\([^[:alnum:]]\)/\1equerisc\2/g
s/\b\([Rr]\)equerís\([^[:alnum:]]\)/\1equerira\2/g
s/\b\([Rr]\)equeríssi\([mu]\)\([^[:alnum:]]\)/\1equeríre\2\3/g
s/\b\([Rr]\)equerissi\([ns]\)\([^[:alnum:]]\)/\1equerire\2\3/g
	s/\bREQUEREIX\([^[:alnum:]]\)/REQUERIX\1/g
# rescatar
s/\b\([Rr]\)escatés\([^[:alnum:]]\)/\1escatara\2/g
s/\b\([Rr]\)escatéssi\([mu]\)\([^[:alnum:]]\)/\1escatàre\2\3/g
s/\b\([Rr]\)escatessi\([ns]\)\([^[:alnum:]]\)/\1escatare\2\3/g
s/\b\([Rr]\)escat\([io]\)\([^[:alnum:]]\)/\1escate\3/g
s/\b\([Rr]\)escati\([ns]\)\([^[:alnum:]]\)/\1escate\2\3/g
# residir
s/\b\([Rr]\)esideix\(en\|es\|\)\([^[:alnum:]]\)/\1esidix\2\3/g
s/\b\([Rr]\)esideixi\([^[:alnum:]]\)/\1esidisca\2/g
s/\b\([Rr]\)esideixi\([ns]\)\([^[:alnum:]]\)/\1esidisque\2\3/g
s/\b\([Rr]\)esideixo\([^[:alnum:]]\)/\1esidisc\2/g
s/\b\([Rr]\)esidís\([^[:alnum:]]\)/\1esidira\2/g
s/\b\([Rr]\)esidíssi\([mu]\)\([^[:alnum:]]\)/\1esidíre\2\3/g
s/\b\([Rr]\)esidissi\([ns]\)\([^[:alnum:]]\)/\1esidire\2\3/g
# resistir
s/\b\([Rr]\)esisteix\(en\|es\|\)\([^[:alnum:]]\)/\1esistix\2\3/g
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
# ressaltar
s/\b\([Rr]\)essaltés\([^[:alnum:]]\)/\1essaltara\2/g
s/\b\([Rr]\)essaltéssi\([mu]\)\([^[:alnum:]]\)/\1essaltàre\2\3/g
s/\b\([Rr]\)essaltessi\([ns]\)\([^[:alnum:]]\)/\1essaltare\2\3/g
s/\b\([Rr]\)essalt\([io]\)\([^[:alnum:]]\)/\1essalte\3/g
s/\b\([Rr]\)essalti\([ns]\)\([^[:alnum:]]\)/\1essalte\2\3/g
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
s/\b\([Rr]\)estitueix\(en\|es\|\)\([^[:alnum:]]\)/\1estituïx\2\3/g
s/\b\([Rr]\)estitueixi\([^[:alnum:]]\)/\1estituïsca\2/g
s/\b\([Rr]\)estitueixi\([ns]\)\([^[:alnum:]]\)/\1estituisque\2\3/g
s/\b\([Rr]\)estitueixo\([^[:alnum:]]\)/\1estituïsc\2/g
s/\b\([Rr]\)estituís\([^[:alnum:]]\)/\1estituïra\2/g
s/\b\([Rr]\)estituíssi\([mu]\)\([^[:alnum:]]\)/\1estituíre\2\3/g
s/\b\([Rr]\)estituïssi\([ns]\)\([^[:alnum:]]\)/\1estituïre\2\3/g
# restringir
s/\b\([Rr]\)estringeix\(en\|es\|\)\([^[:alnum:]]\)/\1estringix\2\3/g
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
s/\b\([Rr]\)esumeix\(en\|es\|\)\([^[:alnum:]]\)/\1esumix\2\3/g
s/\b\([Rr]\)esumeixi\([^[:alnum:]]\)/\1esumisca\2/g
s/\b\([Rr]\)esumeixi\([ns]\)\([^[:alnum:]]\)/\1esumisque\2\3/g
s/\b\([Rr]\)esumeixo\([^[:alnum:]]\)/\1esumisc\2/g
s/\b\([Rr]\)esumís\([^[:alnum:]]\)/\1esumira\2/g
s/\b\([Rr]\)esumíssi\([mu]\)\([^[:alnum:]]\)/\1esumíre\2\3/g
s/\b\([Rr]\)esumissi\([ns]\)\([^[:alnum:]]\)/\1esumire\2\3/g
s/\bRetorn de carro\([^[:alnum:]]\)/Tecla de retorn\1/g
s/\bretorn de carro\([^[:alnum:]]\)/tecla de retorn\1/g
# revertir
s/\b\([Rr]\)everteix\(en\|es\|\)\([^[:alnum:]]\)/\1evertix\2\3/g
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
# sacsejar -> sacsar
s/\b\([Ss]\)acseja\(da\|des\|nt\|r\|rà\|ran\|t\|ts\|va\|ven\|\)\([^[:alnum:]]\)/\1acsa\2\3/g
s/\b\([Ss]\)acsege\(m\|n\|s\|u\)\([^[:alnum:]]\)/\1acse\2\3/g
s/\b\([Ss]\)acsegi\([ns]\|\)\([^[:alnum:]]\)/\1acse\2\3/g
s/\b\([Ss]\)acsejo\([^[:alnum:]]\)/\1acse\2/g
s/\b\([Ss]\)acseig\([^[:alnum:]]\)/\1acsament\2/g
# sagnar
s/\b\([Ss]\)agnés\([^[:alnum:]]\)/\1agnara\2/g
s/\b\([Ss]\)agnéssi\([mu]\)\([^[:alnum:]]\)/\1agnàre\2\3/g
s/\b\([Ss]\)agnessi\([ns]\)\([^[:alnum:]]\)/\1agnare\2\3/g
s/\b\([Ss]\)agn\([io]\)\([^[:alnum:]]\)/\1agne\3/g
s/\b\([Ss]\)agni\([ns]\)\([^[:alnum:]]\)/\1agne\2\3/g
# saltar
s/\b\([Ss]\)altés\([^[:alnum:]]\)/\1altara\2/g
s/\b\([Ss]\)altéssi\([mu]\)\([^[:alnum:]]\)/\1altàre\2\3/g
s/\b\([Ss]\)altessi\([ns]\)\([^[:alnum:]]\)/\1altare\2\3/g
s/\b\([Ss]\)alt\([io]\)\([^[:alnum:]]\)/\1alte\3/g
s/\b\([Ss]\)alti\([ns]\)\([^[:alnum:]]\)/\1alte\2\3/g
	s/\"Salte\"/\"Salto\"/g
	s/\bSalte del Guairá\([^[:alnum:]]\)/Salto del Guairá\1/g
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
s/\b\([Ss]\)egueix\(en\|es\|\)\([^[:alnum:]]\)/\1eguix\2\3/g
s/\b\([Ss]\)egueixi\([^[:alnum:]]\)/\1eguisca\2/g
s/\b\([Ss]\)egueixi\([ns]\)\([^[:alnum:]]\)/\1eguisque\2\3/g
s/\b\([Ss]\)egueixo\([^[:alnum:]]\)/\1eguisc\2/g
s/\b\([Ss]\)egís\([^[:alnum:]]\)/\1egira\2/g
s/\b\([Ss]\)egíssi\([mu]\)\([^[:alnum:]]\)/\1egíre\2\3/g
s/\b\([Ss]\)egissi\([ns]\)\([^[:alnum:]]\)/\1egire\2\3/g
	# aconseguir
	s/\b\([Aa]\)consegueix\(en\|es\|\)\([^[:alnum:]]\)/\1conseguix\2\3/g
	s/\b\([Aa]\)consegueixi\([^[:alnum:]]\)/\1conseguisca\2/g
	s/\b\([Aa]\)consegueixi\([ns]\)\([^[:alnum:]]\)/\1conseguisque\2\3/g
	s/\b\([Aa]\)consegueixo\([^[:alnum:]]\)/\1conseguisc\2/g
	s/\b\([Aa]\)consegís\([^[:alnum:]]\)/\1consegira\2/g
	s/\b\([Aa]\)consegíssi\([mu]\)\([^[:alnum:]]\)/\1consegíre\2\3/g
	s/\b\([Aa]\)consegissi\([ns]\)\([^[:alnum:]]\)/\1consegire\2\3/g
	# perseguir
	s/\b\([Pp]\)ersegueix\(en\|es\|\)\([^[:alnum:]]\)/\1erseguix\2\3/g
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
# semblar -> paréixer
s/\bSembla\([^[:alnum:]]\)/Pareix\1/g
s/\bsembla\([^[:alnum:]]\)/pareix\1/g
s/\bSembla\(da\|des\|t\|ts\)\([^[:alnum:]]\)/Paregu\1\2/
s/\bsembla\(da\|des\|t\|ts\)\([^[:alnum:]]\)/paregu\1\2/
s/\bSemblar\([^[:alnum:]]\)/Paréixer\1/
s/\bsemblar\([^[:alnum:]]\)/paréixer\1/
s/\bSembla\(nt\|rà\|ran\)\([^[:alnum:]]\)/Pareixe\1\2/g
s/\bsembla\(nt\|rà\|ran\)\([^[:alnum:]]\)/pareixe\1\2/g
s/\bSemblav\(a\|en\)\([^[:alnum:]]\)/Pareixi\1\2/g
s/\bsemblav\(a\|en\)\([^[:alnum:]]\)/pareixi\1\2/g
s/\bSembl\(em\|eu\)\([^[:alnum:]]\)/Paregu\1\2/g
s/\bsembl\(em\|eu\)\([^[:alnum:]]\)/paregu\1\2/g
s/\bSemble\(n\|s\)\([^[:alnum:]]\)/Pareixe\1\2/g
s/\bsemble\(n\|s\)\([^[:alnum:]]\)/pareixe\1\2/g
s/\bSemblés\([^[:alnum:]]\)/Pareguera\1/g
s/\bsemblés\([^[:alnum:]]\)/pareguera\1/g
s/\bSembléssi\([mu]\)\([^[:alnum:]]\)/Pareguére\1\2/g
s/\bsembléssi\([mu]\)\([^[:alnum:]]\)/pareguére\1\2/g
s/\bSemblessi\([ns]\)\([^[:alnum:]]\)/Pareguere\1\2/g
s/\bsemblessi\([ns]\)\([^[:alnum:]]\)/pareguere\1\2/g
s/\bSembli\([^[:alnum:]]\)/Parega\1/g
s/\bsembli\([^[:alnum:]]\)/parega\1/g
s/\bSembli\([ns]\)\([^[:alnum:]]\)/Paregue\1\2/g
s/\bsembli\([ns]\)\([^[:alnum:]]\)/paregue\1\2/g
s/\bSemblo\([^[:alnum:]]\)/Parec\1/g
s/\bsemblo\([^[:alnum:]]\)/parec\1/g
# sembrar
s/\b\([Ss]\)embrés\([^[:alnum:]]\)/\1embrara\2/g
s/\b\([Ss]\)embréssi\([mu]\)\([^[:alnum:]]\)/\1embràre\2\3/g
s/\b\([Ss]\)embressi\([ns]\)\([^[:alnum:]]\)/\1embrare\2\3/g
s/\b\([Ss]\)embr\([io]\)\([^[:alnum:]]\)/\1embre\3/g
s/\b\([Ss]\)embri\([ns]\)\([^[:alnum:]]\)/\1embre\2\3/g
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
# separar
s/\b\([Ss]\)eparés\([^[:alnum:]]\)/\1eparara\2/g
s/\b\([Ss]\)eparéssi\([mu]\)\([^[:alnum:]]\)/\1eparàre\2\3/g
s/\b\([Ss]\)eparessi\([ns]\)\([^[:alnum:]]\)/\1eparare\2\3/g
s/\b\([Ss]\)epar\([io]\)\([^[:alnum:]]\)/\1epare\3/g
s/\b\([Ss]\)epari\([ns]\)\([^[:alnum:]]\)/\1epare\2\3/g
s/\b\([Ss]\)èpi\(a\|es\)\([^[:alnum:]]\)/\1épi\2\3/g
s/\b\([Pp]\)èsol\(s\|\)\([^[:alnum:]]\)/\1ésol\2\3/g
s/\b\([Tt]\)èrbol\(s\|\)\([^[:alnum:]]\)/\1érbol\2\3/g
# ser
s/\bÉsser\(s\|\)\([^[:alnum:]]\)/Ser\1\2/g
s/\bésser\(s\|\)\([^[:alnum:]]\)/ser\1\2/g
s/\bEssent\([^[:alnum:]]\)/Sent\1/g
s/\bessent\([^[:alnum:]]\)/sent\1/g
s/\besta\(da\|des\)\([^[:alnum:]]\)/sigu\1\2/g
	# estat(s)
	s/\bha\(n\|\) estat\([^[:alnum:]]\)/ha\1 sigut\2/g
		s/\bha sigut calculant\([^[:alnum:]]\)/ha estat calculant\1/g
		s/\bs'ha sigut executant\([^[:alnum:]]\)/ha sigut executat\1/g
s/\b\([Ee]\)ts\([^[:alnum:]]\)/\1res\2/g
s/\b\([Ee]\)ts\([^[:alnum:]]\)/\1res\2/g
s/\b\([Ff]\)os\([^[:alnum:]]\)/\1ora\2/g
s/\b\([Ff]\)ossi\([ns]\)\([^[:alnum:]]\)/\1ore\2\3/g
s/\b\([Ff]\)óssi\([mu]\)\([^[:alnum:]]\)/\1óre\2\3/g
s/\b\([Ss]\)igui\([^[:alnum:]]\)/\1iga\2/g
s/\b\([Ss]\)igui\([ns]\)\([^[:alnum:]]\)/\1igue\2\3/g
# servir
s/\b\([Ss]\)erveix\(en\|es\|\)\([^[:alnum:]]\)/\1ervix\2\3/g
s/\b\([Ss]\)erveixi\([^[:alnum:]]\)/\1ervisca\2/g
s/\b\([Ss]\)erveixi\([ns]\)\([^[:alnum:]]\)/\1ervisque\2\3/g
s/\b\([Ss]\)erveixo\([^[:alnum:]]\)/\1ervisc\2/g
s/\b\([Ss]\)ervís\([^[:alnum:]]\)/\1ervira\2/g
s/\b\([Ss]\)ervíssi\([mu]\)\([^[:alnum:]]\)/\1ervíre\2\3/g
s/\b\([Ss]\)ervissi\([ns]\)\([^[:alnum:]]\)/\1ervire\2\3/g
s/\bSeveritat\([^[:alnum:]]\)/Gravetat\1/g
s/\bseveritat\([^[:alnum:]]\)/gravetat\1/g
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
	s/\bA sobre\([^[:alnum:]]\)/Damunt\1/g
	s/\ba sobre\([^[:alnum:]]\)/damunt\1/g
		s/\bde sobre dels maons\([^[:alnum:]]\)/damunt dels maons\1/g
		s/\bde sobre l'objecte\([^[:alnum:]]\)/damunt de l'objecte\1/g
		s/\bde sobre un pla\([^[:alnum:]]\)/damunt d'un pla\1/g
	s/\bde sobre\([^[:alnum:]]\)/de dalt\1/g
	s/\b\([Mm]\)antén sobre\([^[:alnum:]]\)/\1antín damunt\2/g
	s/\bratolí està sobre\([^[:alnum:]]\)/ratolí està damunt\1/g
	s/\bper sobre\([^[:alnum:]]\)/per damunt\1/g
	s/\bper sota\([^[:alnum:]]\)/per davall\1/g
	s/\bsobre la imatge\([^[:alnum:]]\)/damunt de la imatge\1/g
	s/\bSota el cursor\([^[:alnum:]]\)/Baix el cursor\1/g
	s/\bsota el cursor\([^[:alnum:]]\)/baix el cursor\1/g
	s/\ba sota\([^[:alnum:]]\)/davall\1/g
s/\bSota\([^[:alnum:]]\)/Davall\1/g
s/\bsota\([^[:alnum:]]\)/davall\1/g
	s/\bDavall demanda\([^[:alnum:]]\)/Sota demanda\1/g
	s/\bdavall demanda\([^[:alnum:]]\)/sota demanda\1/g
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
s/\bSorr\(a\|es\)\([^[:alnum:]]\)/Aren\1\2/g
s/\bsorr\(a\|es\)\([^[:alnum:]]\)/aren\1\2/g
# sonar
s/\b\([Ss]\)onés\([^[:alnum:]]\)/\1onara\2/g
s/\b\([Ss]\)onéssi\([mu]\)\([^[:alnum:]]\)/\1onàre\2\3/g
s/\b\([Ss]\)onessi\([ns]\)\([^[:alnum:]]\)/\1onare\2\3/g
s/\b\([Ss]\)on\([io]\)\([^[:alnum:]]\)/\1one\3/g
s/\b\([Ss]\)oni\([ns]\)\([^[:alnum:]]\)/\1one\2\3/g
# sortir -> eixir
s/\bSortints\([^[:alnum:]]\)/Ixents\1/g
s/\bsortints\([^[:alnum:]]\)/ixents\1/g
	s/\bla &sortida\([^[:alnum:]]\)/l'\&eixida\1/g
	s/\bla sortida\([^[:alnum:]]\)/l'eixida\1/g
	s/\bquan sorti\([mu]\)\([^[:alnum:]]\)/quan isque\1\2/g		# hi ha cap manera millor de capturar el subjuntiu?
s/\bSorti\(a\|da\|des\|en\|m\|nt\|r\|rà\|ran\|t\|ts\|u\)\([^[:alnum:]]\)/Eixi\1\2/g
s/\bsorti\(a\|da\|des\|en\|m\|nt\|r\|rà\|ran\|t\|ts\|u\)\([^[:alnum:]]\)/eixi\1\2/g
	s/\bse eixirà\([^[:alnum:]]\)/s'eixirà\1/g
s/\bSortí\([^[:alnum:]]\)/Isquí\1/g
s/\bsortí\([^[:alnum:]]\)/isquí\1/g
s/\bSortís\([^[:alnum:]]\)/Isquera\1/g
s/\bsortís\([^[:alnum:]]\)/isquera\1/g
s/\bSortíssi\([mu]\)\([^[:alnum:]]\)/Isquére\1\2/g
s/\bsortíssi\([mu]\)\([^[:alnum:]]\)/isquére\1\2/g
s/\bSortissi\([ns]\)\([^[:alnum:]]\)/Isquere\1\2/g
s/\bsortissi\([ns]\)\([^[:alnum:]]\)/isquere\1\2/g
# SUBJUNTIU: isquem, isqueu
s/\bSurt\(en\|\)\([^[:alnum:]]\)/Ix\1\2/g
s/\bsurt\(en\|\)\([^[:alnum:]]\)/ix\1\2/g
	s/\bIx del\([^[:alnum:]]\)/Ix de\1/g
	s/\bIx de mode\([^[:alnum:]]\)/Ix del mode\1/g
	s/\ben ixen\([^[:alnum:]]\)/n'ixen\1/g
	s/\bse ix\([^[:alnum:]]\)/s'ix\1/g
s/\bSurti\([^[:alnum:]]\)/Isca\1/g
s/\bsurti\([^[:alnum:]]\)/isca\1/g
s/\bSurti\([ns]\)\([^[:alnum:]]\)/Isque\1\2/g
s/\bsurti\([ns]\)\([^[:alnum:]]\)/isque\1\2/g
s/\bSurto\([^[:alnum:]]\)/Isc\1/g
s/\bsurto\([^[:alnum:]]\)/isc\1/g
s/\bSurts\([^[:alnum:]]\)/Ixes\1/g
s/\bsurts\([^[:alnum:]]\)/ixes\1/g
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
		s/\bquan sobresorti\([mu]\)\([^[:alnum:]]\)/quan sobreïsque\1\2/g		# hi ha cap manera millor de capturar el subjuntiu?
	s/\b\([Ss]\)obresorti\(a\|da\|des\|en\|m\|nt\|r\|rà\|ran\|t\|ts\|u\)\([^[:alnum:]]\)/\1obreeixi\2\3/g
	# SUBJUNTIU: sobreïsquem, sobreïsqueu
	s/\b\([Ss]\)obresurt\(en\|es\|\)\([^[:alnum:]]\)/\1obreïx\2\3/g
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
# substituir
s/\b\([Ss]\)ubstitueix\(en\|es\|\)\([^[:alnum:]]\)/\1ubstituïx\2\3/g
s/\b\([Ss]\)ubstitueixi\([^[:alnum:]]\)/\1ubstituïsca\2/g
s/\b\([Ss]\)ubstitueixi\([ns]\)\([^[:alnum:]]\)/\1ubstituisque\2\3/g
s/\b\([Ss]\)ubstitueixo\([^[:alnum:]]\)/\1ubstituïsc\2/g
s/\b\([Ss]\)ubstituís\([^[:alnum:]]\)/\1ubstituïra\2/g
s/\b\([Ss]\)ubstituíssi\([mu]\)\([^[:alnum:]]\)/\1ubstituíre\2\3/g
s/\b\([Ss]\)ubstituïssi\([ns]\)\([^[:alnum:]]\)/\1ubstituïre\2\3/g
# succeir
s/\b\([Ss]\)ucceeix\(en\|es\|\)\([^[:alnum:]]\)/\1ucceïx\2\3/g
s/\b\([Ss]\)ucceeixi\([^[:alnum:]]\)/\1ucceïsca\2/g
s/\b\([Ss]\)ucceeixi\([ns]\)\([^[:alnum:]]\)/\1ucceïsque\2\3/g
s/\b\([Ss]\)ucceeixo\([^[:alnum:]]\)/\1ucceïsc\2/g
s/\b\([Ss]\)ucceís\([^[:alnum:]]\)/\1ucceïra\2/g
s/\b\([Ss]\)ucceíssi\([mu]\)\([^[:alnum:]]\)/\1ucceíre\2\3/g
s/\b\([Ss]\)ucceïssi\([ns]\)\([^[:alnum:]]\)/\1ucceïre\2\3/g
s/\b\([Ss]\)udanès\([^[:alnum:]]\)/\1udanés\2/g
# suggerir
s/\b\([Ss]\)uggereix\(en\|es\|\)\([^[:alnum:]]\)/\1uggerix\2\3/g
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
s/\b\([Ss]\)uprimeix\(en\|es\|\)\([^[:alnum:]]\)/\1uprimix\2\3/g
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
	s/\bVesprada molt més\([^[:alnum:]]\)/Tarda molt més\1/g
	s/\bvesprada molt més\([^[:alnum:]]\)/tarda molt més\1/g
	s/\bdel vespre\([^[:alnum:]]\)/de la vesprada\1/g
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
s/\b\([Tt]\)endeix\(en\|es\|\)\([^[:alnum:]]\)/\1endix\2\3/g
s/\b\([Tt]\)endeixi\([^[:alnum:]]\)/\1endisca\2/g
s/\b\([Tt]\)endeixi\([ns]\)\([^[:alnum:]]\)/\1endisque\2\3/g
s/\b\([Tt]\)endeixo\([^[:alnum:]]\)/\1endisc\2/g
s/\b\([Tt]\)endís\([^[:alnum:]]\)/\1endira\2/g
s/\b\([Tt]\)endíssi\([mu]\)\([^[:alnum:]]\)/\1endíre\2\3/g
s/\b\([Tt]\)endissi\([ns]\)\([^[:alnum:]]\)/\1endire\2\3/g
# tenir -> tindre
s/\b\([Tt]\)\(en\|ingues\)\([^[:alnum:]]\)/\1ingues\3/g
	s/\b\([Tt]\)enir-\([ns]\)e\([^[:alnum:]]\)/\1indre'\2\3/g
s/\b\([Tt]\)enir\([^[:alnum:]]\)/\1indre\2/g
s/\b\([Tt]\)ingués\([^[:alnum:]]\)/\1inguera\2/g
s/\b\([Tt]\)inguéssi\([mu]\)\([^[:alnum:]]\)/\1inguére\2\3/g
s/\b\([Tt]\)inguessi\([ns]\)\([^[:alnum:]]\)/\1inguere\2\3/g
s/\b\([Tt]\)ingui\([^[:alnum:]]\)/\1inga\2/g
s/\b\([Tt]\)ingui\([ns]\)\([^[:alnum:]]\)/\1ingue\2\3/g
	# contenir -> contindre
		s/\b\([Cc]\)ontenir-\([ns]\)e\([^[:alnum:]]\)/\1ontindre'\2\3/g
	s/\b\([Cc]\)ontenir\([^[:alnum:]]\)/\1ontindre\2/g
	s/\b\([Cc]\)ontingues\([^[:alnum:]]\)/\1ontén\2/g
	s/\b\([Cc]\)ontingués\([^[:alnum:]]\)/\1ontinguera\2/g
	s/\b\([Cc]\)ontinguéssi\([mu]\)\([^[:alnum:]]\)/\1ontinguére\2\3/g
	s/\b\([Cc]\)ontinguessi\([ns]\)\([^[:alnum:]]\)/\1ontinguere\2\3/g
	s/\b\([Cc]\)ont\(e\|i\)ngui\([^[:alnum:]]\)/\1ontinga\3/g
	s/\b\([Cc]\)ont\(e\|i\)ngui\([ns]\)\([^[:alnum:]]\)/\1ontingue\3\4/g
	# mantenir -> mantindre
	s/\b\([Mm]\)ant\(én\|ingues\)\([^[:alnum:]]\)/\1antín\3/g
		s/\b\([Mm]\)antenir-\([ns]\)e\([^[:alnum:]]\)/\1antindre'\2\3/g
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
		s/\b\([Oo]\)btenir-\([ns]\)e\([^[:alnum:]]\)/\1btindre'\2\3/g
	s/\b\([Oo]\)btenir\([^[:alnum:]]\)/\1btindre\2/g
	s/\b\([Oo]\)btingués\([^[:alnum:]]\)/\1btinguera\2/g
	s/\b\([Oo]\)btinguéssi\([mu]\)\([^[:alnum:]]\)/\1btinguére\2\3/g
	s/\b\([Oo]\)btinguessi\([ns]\)\([^[:alnum:]]\)/\1btinguere\2\3/g
	s/\b\([Oo]\)btingui\([^[:alnum:]]\)/\1btinga\2/g
	s/\b\([Oo]\)btingui\([ns]\)\([^[:alnum:]]\)/\1btingue\2\3/g
	# retenir -> retindre
	s/\b\([Rr]\)et\(én\|ingues\)\([^[:alnum:]]\)/\1etín\3/g
		s/\b\([Rr]\)etenir-\([ns]\)e\([^[:alnum:]]\)/\1etindre'\2\3/g
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
s/\bToro\(s\|\)\([^[:alnum:]]\)/Bou\1\2/g
s/\btoro\(s\|\)\([^[:alnum:]]\)/bou\1\2/g
# tocar
s/\b\([Tt]\)oqués\([^[:alnum:]]\)/\1ocara\2/g
s/\b\([Tt]\)oquéssi\([mu]\)\([^[:alnum:]]\)/\1ocàre\2\3/g
s/\b\([Tt]\)oquessi\([ns]\)\([^[:alnum:]]\)/\1ocare\2\3/g
s/\b\([Tt]\)oqui\([ns]\|\)\([^[:alnum:]]\)/\1oque\2\3/g
s/\b\([Tt]\)oco\([^[:alnum:]]\)/\1oque\2/g
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
s/\b\([Tt]\)radueix\(en\|es\|\)\([^[:alnum:]]\)/\1raduïx\2\3/g
s/\b\([Tt]\)radueixi\([^[:alnum:]]\)/\1raduïsca\2/g
s/\b\([Tt]\)radueixi\([ns]\)\([^[:alnum:]]\)/\1raduïsque\2\3/g
s/\b\([Tt]\)radueixo\([^[:alnum:]]\)/\1raduïsc\2/g
s/\b\([Tt]\)raduís\([^[:alnum:]]\)/\1raduïra\2/g
s/\b\([Tt]\)raduíssi\([mu]\)\([^[:alnum:]]\)/\1raduíre\2\3/g
s/\b\([Tt]\)raduïssi\([ns]\)\([^[:alnum:]]\)/\1raduïre\2\3/g
s/\bTransposa\([^[:alnum:]]\)/Invertix\1/g
s/\btransposa\([^[:alnum:]]\)/invertix\1/g
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
# treure -> traure
s/\b\([Tt]\)raie\(m\|nt\|u\)\([^[:alnum:]]\)/\1rae\2\3/g
s/\b\([Tt]\)ragués\([^[:alnum:]]\)/\1raguera\2/g
s/\b\([Tt]\)raguéssi\([mu]\)\([^[:alnum:]]\)/\1raguére\2\3/g
s/\b\([Tt]\)raguessi\([ns]\)\([^[:alnum:]]\)/\1raguere\2\3/g
s/\b\([Tt]\)re\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1ra\2\3/g
s/\b\([Tt]\)regui\([^[:alnum:]]\)/\1raga\2/g
s/\b\([Tt]\)regui\([ns]\)\([^[:alnum:]]\)/\1rague\2\3/g
s/\b\([Tt]\)reia\([^[:alnum:]]\)/\1ragué\2/g
s/\b\([Tt]\)reien\([^[:alnum:]]\)/\1ragueren\2/g
	# atreure -> atraure
	s/\b\([Aa]\)traie\(m\|nt\|u\)\([^[:alnum:]]\)/\1trae\2\3/g
	s/\b\([Aa]\)tragués\([^[:alnum:]]\)/\1traguera\2/g
	s/\b\([Aa]\)traguéssi\([mu]\)\([^[:alnum:]]\)/\1traguére\2\3/g
	s/\b\([Aa]\)traguessi\([ns]\)\([^[:alnum:]]\)/\1traguere\2\3/g
	s/\b\([Aa]\)tre\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1tra\2\3/g
	s/\b\([Aa]\)tregui\([^[:alnum:]]\)/\1traga\2/g
	s/\b\([Aa]\)tregui\([ns]\)\([^[:alnum:]]\)/\1trague\2\3/g
	s/\b\([Aa]\)treia\([^[:alnum:]]\)/\1tragué\2/g
	s/\b\([Aa]\)treien\([^[:alnum:]]\)/\1tragueren\2/g
	# contreure -> contraure
	s/\b\([Cc]\)ontraie\(m\|u\)\([^[:alnum:]]\)/\1ontrae\2\3/g
	s/\b\([Cc]\)ontragués\([^[:alnum:]]\)/\1ontraguera\2/g
	s/\b\([Cc]\)ontraguéssi\([mu]\)\([^[:alnum:]]\)/\1ontraguére\2\3/g
	s/\b\([Cc]\)ontraguessi\([ns]\)\([^[:alnum:]]\)/\1ontraguere\2\3/g
	s/\b\([Cc]\)ontre\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1ontra\2\3/g
	s/\b\([Cc]\)ontregui\([^[:alnum:]]\)/\1ontraga\2/g
	s/\b\([Cc]\)ontregui\([ns]\)\([^[:alnum:]]\)/\1ontrague\2\3/g
	s/\b\([Cc]\)ontreia\([^[:alnum:]]\)/\1ontragué\2/g
	s/\b\([Cc]\)ontreien\([^[:alnum:]]\)/\1ontragueren\2/g
	# distreure -> distraure
	s/\b\([Dd]\)istraie\(m\|nt\|u\)\([^[:alnum:]]\)/\1istrae\2\3/g
	s/\b\([Dd]\)istragués\([^[:alnum:]]\)/\1istraguera\2/g
	s/\b\([Dd]\)istraguéssi\([mu]\)\([^[:alnum:]]\)/\1istraguére\2\3/g
	s/\b\([Dd]\)istraguessi\([ns]\)\([^[:alnum:]]\)/\1istraguere\2\3/g
	s/\b\([Dd]\)istre\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1istra\2\3/g
	s/\b\([Dd]\)istregui\([^[:alnum:]]\)/\1istraga\2/g
	s/\b\([Dd]\)istregui\([ns]\)\([^[:alnum:]]\)/\1istrague\2\3/g
	s/\b\([Dd]\)istreia\([^[:alnum:]]\)/\1istragué\2/g
	s/\b\([Dd]\)istreien\([^[:alnum:]]\)/\1istragueren\2/g
	# extreure -> extraure
	s/\b\([Ee]\)xtraie\(m\|nt\|u\)\([^[:alnum:]]\)/\1xtrae\2\3/g
	s/\b\([Ee]\)xtragués\([^[:alnum:]]\)/\1xtraguera\2/g
	s/\b\([Ee]\)xtraguéssi\([mu]\)\([^[:alnum:]]\)/\1xtraguére\2\3/g
	s/\b\([Ee]\)xtraguessi\([ns]\)\([^[:alnum:]]\)/\1xtraguere\2\3/g
	s/\b\([Ee]\)xtre\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1xtra\2\3/g
	s/\b\([Ee]\)xtregui\([^[:alnum:]]\)/\1xtraga\2/g
	s/\b\([Ee]\)xtregui\([ns]\)\([^[:alnum:]]\)/\1xtrague\2\3/g
	s/\b\([Ee]\)xtreia\([^[:alnum:]]\)/\1xtragué\2/g
	s/\b\([Ee]\)xtreien\([^[:alnum:]]\)/\1xtragueren\2/g
		s/\bescollit d'extraure\([^[:alnum:]]\)/escollit extraure\1/g
	# retreure -> retraure
	s/\b\([Rr]\)etraie\(m\|nt\|u\)\([^[:alnum:]]\)/\1etrae\2\3/g
	s/\b\([Rr]\)etragués\([^[:alnum:]]\)/\1etraguera\2/g
	s/\b\([Rr]\)etraguéssi\([mu]\)\([^[:alnum:]]\)/\1etraguére\2\3/g
	s/\b\([Rr]\)etraguessi\([ns]\)\([^[:alnum:]]\)/\1etraguere\2\3/g
	s/\b\([Rr]\)etre\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1etra\2\3/g
	s/\b\([Rr]\)etregui\([^[:alnum:]]\)/\1etraga\2/g
	s/\b\([Rr]\)etregui\([ns]\)\([^[:alnum:]]\)/\1etrague\2\3/g
	s/\b\([Rr]\)etreia\([^[:alnum:]]\)/\1etragué\2/g
	s/\b\([Rr]\)etreien\([^[:alnum:]]\)/\1etragueren\2/g
	# sostreure -> sostraure
	s/\b\([Ss]\)ostraie\(m\|nt\|u\)\([^[:alnum:]]\)/\1ostrae\2\3/g
	s/\b\([Ss]\)ostragués\([^[:alnum:]]\)/\1ostraguera\2/g
	s/\b\([Ss]\)ostraguéssi\([mu]\)\([^[:alnum:]]\)/\1ostraguére\2\3/g
	s/\b\([Ss]\)ostraguessi\([ns]\)\([^[:alnum:]]\)/\1ostraguere\2\3/g
	s/\b\([Ss]\)ostre\(c\|u\|uen\|ure\|us\)\([^[:alnum:]]\)/\1ostra\2\3/g
	s/\b\([Ss]\)ostregui\([^[:alnum:]]\)/\1ostraga\2/g
	s/\b\([Ss]\)ostregui\([ns]\)\([^[:alnum:]]\)/\1ostrague\2\3/g
	s/\b\([Ss]\)ostreia\([^[:alnum:]]\)/\1ostragué\2/g
	s/\b\([Ss]\)ostreien\([^[:alnum:]]\)/\1ostragueren\2/g
# triar
s/\b\([Tt]\)riés\([^[:alnum:]]\)/\1riara\2/g
s/\b\([Tt]\)riéssi\([mu]\)\([^[:alnum:]]\)/\1riàre\2\3/g
s/\b\([Tt]\)riessi\([ns]\)\([^[:alnum:]]\)/\1riare\2\3/g
s/\b\([Tt]\)ri\([ïo]\)\([^[:alnum:]]\)/\1rie\3/g
s/\b\([Tt]\)riï\([ns]\)\([^[:alnum:]]\)/\1rie\2\3/g
	s/\bs'trieu\([^[:alnum:]]\)/trieu\1/g
# trigar -> tardar
s/\b\([Tt]\)rigà\([^[:alnum:]]\)/\1ardà\2/g
# s/\b\([Tt]\)riga\([^[:alnum:]]\)/\1arda\2/g # No es recomana
s/\b\([Tt]\)riga\(da\|des\|nt\|r\|rà\|ran\|ren\|ria\|t\|ts\|va\|ven\)\([^[:alnum:]]\)/\1arda\2\3/g
s/\b\([Tt]\)rigue\(m\|n\|s\|u\)\([^[:alnum:]]\)/\1arde\2\3/g
s/\b\([Tt]\)rigués\([^[:alnum:]]\)/\1ardara\2/g
s/\b\([Tt]\)riguéssi\([mu]\|\)\([^[:alnum:]]\)/\1ardàre\2\3/g
s/\b\([Tt]\)riguessi\([ns]\|\)\([^[:alnum:]]\)/\1ardare\2\3/g
s/\b\([Tt]\)rigui\([ns]\|\)\([^[:alnum:]]\)/\1arde\2\3/g
s/\b\([Tt]\)rigo\([^[:alnum:]]\)/\1arde\2/g
	s/\b\([Qq]\)uant triga\([^[:alnum:]]\)/\1uant tarda\2/g
	s/\b\([Tt]\)emps \(que \|\)triga\([^[:alnum:]]\)/\1emps \2tarda\3/g
	s/\b\([Tt]\)riga \(alguns minuts\|el doble\|massa\|més\|moltíssim\|poc temps\|una estona\|Urà\)\([^[:alnum:]]\)/\1arda \2\3/g
 	s/\b\([Tt]\)riguera\([^[:alnum:]]\)/\1arda\2/g
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
s/\b\([Tt]\)ruca\(da\|des\|nt\|nts\|r\|rà\|\)\([^[:alnum:]]\)/\1oca\2\3/g
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
s/\b\([Ll]\)a última\([^[:alnum:]]\)/\1'última\2/g
s/\b\([Dd]\)el últim\([^[:alnum:]]\)/\1e l'últim\2/g
s/\bEl últim\([^[:alnum:]]\)/L'últim\1/g
s/\bel últim\([^[:alnum:]]\)/l'últim\1/g
s/\b\([Uu]\)craïnès\([^[:alnum:]]\)/\1craïnés\2/g
s/\b\([Uu]\)gandès\([^[:alnum:]]\)/\1gandés\2/g
# unificar
s/\b\([Uu]\)nifiqués\([^[:alnum:]]\)/\1nificara\2/g
s/\b\([Uu]\)nifiquéssi\([mu]\|\)\([^[:alnum:]]\)/\1nificàre\2\3/g
s/\b\([Uu]\)nifiquessi\([ns]\|\)\([^[:alnum:]]\)/\1nificare\2\3/g
s/\b\([Uu]\)nifiqui\([ns]\|\)\([^[:alnum:]]\)/\1nifique\2\3/g
s/\b\([Uu]\)nifico\([^[:alnum:]]\)/\1nifique\2/g
# unir
s/\b\([Uu]\)neix\(en\|es\|\)\([^[:alnum:]]\)/\1nix\2\3/g
s/\b\([Uu]\)neixi\([^[:alnum:]]\)/\1nisca\2/g
s/\b\([Uu]\)neixi\([ns]\)\([^[:alnum:]]\)/\1nisque\2\3/g
s/\b\([Uu]\)neixo\([^[:alnum:]]\)/\1nisc\2/g
s/\b\([Uu]\)nís\([^[:alnum:]]\)/\1nira\2/g
s/\b\([Uu]\)níssi\([mu]\|\)\([^[:alnum:]]\)/\1níre\2\3/g
s/\b\([Uu]\)nissi\([ns]\|\)\([^[:alnum:]]\)/\1nire\2\3/g
	s/\bBifurcaUneix\([^[:alnum:]]\)/BifurcaUnix\1/g
	# reunir
	s/\b\([Rr]\)euneix\(en\|es\|\)\([^[:alnum:]]\)/\1eunix\2\3/g
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
# valer -> valdre
s/\b\([Vv]\)aler\([^[:alnum:]]\)/\1aldre\2/g
s/\b\([Vv]\)algués\([^[:alnum:]]\)/\1alguera\2/g
s/\b\([Vv]\)alguéssi\([mu]\)\([^[:alnum:]]\)/\1alguère\2\3/g
s/\b\([Vv]\)alguessi\([ns]\)\([^[:alnum:]]\)/\1alguere\2\3/g
s/\b\([Vv]\)algui\([^[:alnum:]]\)/\1alga\2/g
s/\b\([Vv]\)alguin\([^[:alnum:]]\)/\1alguen\2/g
# variar
s/\b\([Vv]\)ariés\([^[:alnum:]]\)/\1ariara\2/g
s/\b\([Vv]\)ariéssi\([mu]\|\)\([^[:alnum:]]\)/\1ariàre\2\3/g
s/\b\([Vv]\)ariessi\([ns]\|\)\([^[:alnum:]]\)/\1ariare\2\3/g
s/\b\([Vv]\)ari\([ïo]\)\([^[:alnum:]]\)/\1arie\3/g
s/\b\([Vv]\)ariï\([ns]\)\([^[:alnum:]]\)/\1arie\2\3/g
s/\bVaris\([^[:alnum:]]\)/Miscelània\1/g
# venir -> vindre
		s/\b\([Vv]\)enir-\([ns]\)e\([^[:alnum:]]\)/\1indre'\2\3/g
	s/\b\([Vv]\)enir-\([ns]\)e\([^[:alnum:]]\)/\1indre'\2\3/g
s/\b\([Vv]\)enir\([^[:alnum:]]\)/\1indre\2/g
s/\b\([Vv]\)ingués\([^[:alnum:]]\)/\1inguera\2/g
s/\b\([Vv]\)inguéssi\([mu]\)\([^[:alnum:]]\)/\1inguére\2\3/g
s/\b\([Vv]\)inguessi\([ns]\)\([^[:alnum:]]\)/\1inguere\2\3/g
s/\b\([Vv]\)ingui\([^[:alnum:]]\)/\1inga\2/g
s/\b\([Vv]\)ingui\([ns]\)\([^[:alnum:]]\)/\1ingue\2\3/g
	s/\bEs venen\([^[:alnum:]]\)/Se venen\1/g
	s/\bes venen\([^[:alnum:]]\)/se venen\1/g
	# convenir -> convindre
		s/\b\([Cc]\)onvenir-\([ns]\)e\([^[:alnum:]]\)/\1onvindre'\2\3/g
	s/\b\([Cc]\)onvenir\([^[:alnum:]]\)/\1onvindre\1/g
	s/\b\([Cc]\)onvingués\([^[:alnum:]]\)/\1onvinguera\2/g
	s/\b\([Cc]\)onvinguéssi\([mu]\)\([^[:alnum:]]\)/\1onvinguére\2\3/g
	s/\b\([Cc]\)onvinguessi\([ns]\)\([^[:alnum:]]\)/\1onvinguere\2\3/g
	s/\b\([Cc]\)onvingui\([^[:alnum:]]\)/\1onvinga\2/g
	s/\b\([Cc]\)onvingui\([ns]\)\([^[:alnum:]]\)/\1onvingue\2\3/g
	# esdevenir -> esdevindre
		s/\b\([Ee]\)edevenir-\([ns]\)e\([^[:alnum:]]\)/\1edevindre'\2\3/g
	s/\b\([Ee]\)sdevenir\([^[:alnum:]]\)/\1sdevindre\2/g
	s/\b\([Ee]\)sdevingués\([^[:alnum:]]\)/\1sdevinguera\2/g
	s/\b\([Ee]\)sdevinguéssi\([mu]\)\([^[:alnum:]]\)/\1sdevinguére\2\3/g
	s/\b\([Ee]\)sdevinguessi\([ns]\)\([^[:alnum:]]\)/\1sdevinguere\2\3/g
	s/\b\([Ee]\)sdevingui\([^[:alnum:]]\)/\1sdevinga\2/g
	s/\b\([Ee]\)sdevingui\([ns]\)\([^[:alnum:]]\)/\1sdevingue\2\3/g
	# prevenir -> previndre
		s/\b\([Pp]\)revenir-\([ns]\)e\([^[:alnum:]]\)/\1revindre'\2\3/g
	s/\b\([Pp]\)revenir\([^[:alnum:]]\)/\1revindre\2/g
	s/\b\([Pp]\)revingués\([^[:alnum:]]\)/\1revinguera\2/g
	s/\b\([Pp]\)revinguéssi\([mu]\)\([^[:alnum:]]\)/\1revinguére\2\3/g
	s/\b\([Pp]\)revinguessi\([ns]\)\([^[:alnum:]]\)/\1revinguere\2\3/g
	s/\b\([Pp]\)revingui\([^[:alnum:]]\)/\1revinga\2/g
	s/\b\([Pp]\)revingui\([ns]\)\([^[:alnum:]]\)/\1revingue\2\3/g
	# provenir -> provindre
		s/\b\([Pp]\)rovenir-\([ns]\)e\([^[:alnum:]]\)/\1rovindre'\2\3/g
	s/\b\([Pp]\)rovenir\([^[:alnum:]]\)/\1rovindre\2/g
	s/\b\([Pp]\)rovingués\([^[:alnum:]]\)/\1rovinguera\2/g
	s/\b\([Pp]\)rovinguéssi\([mu]\)\([^[:alnum:]]\)/\1rovinguére\2\3/g
	s/\b\([Pp]\)rovinguessi\([ns]\)\([^[:alnum:]]\)/\1rovinguere\2\3/g
	s/\b\([Pp]\)rovingui\([^[:alnum:]]\)/\1rovinga\2/g
	s/\b\([Pp]\)rovingui\([ns]\)\([^[:alnum:]]\)/\1rovingue\2\3/g
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
	s/Creu_vermella_petita\([^[:alnum:]]\)/Creu_roja_xicoteta\1/g
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
s/\b\([Vv]\)eie\(m\|nt\|u\)\([^[:alnum:]]\)/\1ee\2\3/g
s/\b\([Vv]\)eiére\([mu]\)\([^[:alnum:]]\)/\1ére\2\3/g
s/\b\([Vv]\)eiere\([ns]\)\([^[:alnum:]]\)/\1eres\2\3/g
s/\b\([Vv]\)eiéreu\([^[:alnum:]]\)/\1éreu\2/g
s/\b\([Vv]\)eiéssi\([mu]\)\([^[:alnum:]]\)/\1eiésse\2\3/g
s/\b\([Vv]\)eiessi\([ns]\)\([^[:alnum:]]\)/\1eiesse\2\3/g
s/\b\([Vv]\)ists\([^[:alnum:]]\)/\1istos\2/g
	# preveure
	s/\b\([Pp]\)revegi\([^[:alnum:]]\)/\1reveja\2/g
	s/\b\([Pp]\)revegi\([ns]\)\([^[:alnum:]]\)/\1revege\2\3/g
	s/\b\([Pp]\)reveié\([^[:alnum:]]\)/\1reveu\2/g
	s/\b\([Pp]\)revèie\([mu]\)\([^[:alnum:]]\)/\1revéie\2\3/g
	s/\b\([Pp]\)reveiére\([mu]\)\([^[:alnum:]]\)/\1revére\2\3/g
	s/\b\([Pp]\)reveiere\([ns]\)\([^[:alnum:]]\)/\1revere\2\3/g
	s/\b\([Pp]\)reveiés\([^[:alnum:]]\)/\1revera\2/g
	s/\b\([Pp]\)reveiéssi\([mu]\)\([^[:alnum:]]\)/\1revére\2\3/g
	s/\b\([Pp]\)reveiessi\([ns]\)\([^[:alnum:]]\)/\1revere\2\3/g
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
	s/\bEina de visualització dels registres del sistema\([^[:alnum:]]\)/Eina de visor dels registres del sistema\1/g
	s/\bObri amb el \(pre\|\)visualitzador predeterminat\([^[:alnum:]]\)/Obri amb el visor predeterminat\2/g
# viure
s/\b\([Vv]\)isqués\([^[:alnum:]]\)/\1isquera\2/g
s/\b\([Vv]\)isquéssi\([mu]\)\([^[:alnum:]]\)/\1isquére\2\3/g
s/\b\([Vv]\)isquessi\([ns]\)\([^[:alnum:]]\)/\1isquere\2\3/g
s/\b\([Vv]\)isqui\([^[:alnum:]]\)/\1isca\2/g
s/\b\([Vv]\)isqui\([ns]\)\([^[:alnum:]]\)/\1isque\2\3/g
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
s/\bVuit\([^[:alnum:]]\)/Huit\1/g
s/\bvuit\([^[:alnum:]]\)/huit\1/g
	s/\b\([Dd]\)isset\([^[:alnum:]]\)/\1èsset\2/g
	s/\b\([Dd]\)ivuit\([^[:alnum:]]\)/\1íhuit\2/g
	s/\b\([Dd]\)inou\([^[:alnum:]]\)/\1ènou\2/g
	s/\bVuitanta\([^[:alnum:]]\)/Huitanta\1/g
	s/\bvuitanta\([^[:alnum:]]\)/huitanta\1/g
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
	# aixafar -> xafar
	s/\bAixaf\(ada\|ades\|ant\|ar\|arà\|aran\|areu\|at\|ats\|ava\|aven\|eu\|\)\([^[:alnum:]]\)/Xaf\1\2/g
	s/\baixaf\(ada\|ades\|ant\|ar\|arà\|aran\|areu\|at\|ats\|ava\|aven\|eu\|\)\([^[:alnum:]]\)/xaf\1\2/g
	s/\bAixafés\([^[:alnum:]]\)/Xafara\1/g
	s/\baixafés\([^[:alnum:]]\)/xafara\1/g
	s/\bAixaféssi\([mu]\)\([^[:alnum:]]\)/Xafàre\1\2/g
	s/\baixaféssi\([mu]\)\([^[:alnum:]]\)/xafàre\1\2/g
	s/\bAixafessi\([ns]\)\([^[:alnum:]]\)/Xafare\1\2/g
	s/\baixafessi\([ns]\)\([^[:alnum:]]\)/xafare\1\2/g
	s/\bAixaf\([io]\)\([^[:alnum:]]\)/Xafe\2/g
	s/\baixaf\([io]\)\([^[:alnum:]]\)/xafe\2/g
	s/\bAixafi\([ns]\)\([^[:alnum:]]\)/Xafe\1\2/g
	s/\baixafi\([ns]\)\([^[:alnum:]]\)/xafe\1\2/g
# xatejar
# TODO:
s/\b\([Xx]\)ategés\([^[:alnum:]]\)/\1atejara\2/g
s/\b\([Xx]\)ategéssi\([mu]\)\([^[:alnum:]]\)/\1atejàre\2\3/g
s/\b\([Xx]\)ategessi\([ns]\)\([^[:alnum:]]\)/\1atejare\2\3/g
s/\b\([VX]\)ategi\([ns]\)\([^[:alnum:]]\)/\1atege\2\3/g
s/\b\([Xx]\)atejo\([^[:alnum:]]\)/\1atege\2/g
# xerrar -> xarrar
s/\b\([Xx]\)arrés\([^[:alnum:]]\)/\1arrara\2/g
s/\b\([Xx]\)arréssi\([mu]\)\([^[:alnum:]]\)/\1arràre\2\3/g
s/\b\([Xx]\)arressi\([ns]\)\([^[:alnum:]]\)/\1arrare\2\3/g
s/\b\([Xx]\)arr\([io]\)\([^[:alnum:]]\)/\1arre\3/g
s/\b\([VX]\)arri\([ns]\)\([^[:alnum:]]\)/\1arre\2\3/g
s/\b\([Xx]\)inès\([^[:alnum:]]\)/\1inés\2/g
# z
#
# # Per mirar
# en / ca / va
# Failed / Ha fallat en / No s'ha pogut **
# uploader / pujador / Gestor de pujades
# Bookmarks / punts / marcadors
# per sobre i sota / per damunt i per davall

# -> es desprotegeix
s/\\\([nt]\)- /\\\1/g

# Apostrofacions incorrectes
s/\([^_&[:alnum:]]\)\([Dd]\)e \([aeiouAEIOU]\)/\1\2'\3/g
s/\([^_&[:alnum:]]\)Es \([aeiouAEIOU]\)/\1S'\2/g
s/\([^_&[:alnum:]]\)es \([aeiouAEIOU]\)/\1s'\2/g
s/\([^_&[:alnum:]]\)S'\([g]\)/\1Es \2/g
s/\([^_&[:alnum:]]\)s'\([g]\)/\1es \2/g

s/\([^-\|·_&[:alnum:]]\)\([Ll]\)a \([aeoAEO]\)/\1\2'\3/g
	# L'apostrofament de "la [iu]" depèn de si la primera síŀlaba
	# és àtona i per tant no es pot generalitzar.
	# El "-" és per evitar pífies de l'estil "convertiu-la en -> convertiu-l'en"
	# El "·" és per evitar pífies de l'estil "Instal·la el -> Instal·l'el"
s/\([^_&[:alnum:]]\)El \([aeiouAEIOU]\)/\1L'\2/g
s/\([^_&[:alnum:]]\)el \([aeiouAEIOU]\)/\1l'\2/g
# anti-anti-pífia ad-hoc
s/\([^_&[:alnum:]]\)\([Dd]\)'\(UNIX\|Unix\|unix\)/\1\2e \3/g
s/\([^_&[:alnum:]]\)L'\(UNIX\|Unix\|unix\)/\1El \2/g
s/\([^_&[:alnum:]]\)l'\(UNIX\|Unix\|unix\)/\1el \2/g
# femenins
	# 7.4.3 La formació de sigles i de mots creuats <https://geiec.iec.cat/capitol_veure.asp?id_gelc=405&capitol=7>
s/\([^_&[:alnum:]]\)\([Ll]\)'API\([^[:alnum:]]\)/\1\2a API\3/g
s/\([^_&[:alnum:]]\)\([Ll]\)'IGU\([^[:alnum:]]\)/\1\2a IGU\3/g

# Per a reemplaçar Last-Translator si s'escau.
# Ha de ser al final!!  No volem que se'ns «valencianitze» el nom o l'adreça.
#s/^\(\"Last-Translator\): .*\\n/\1: Jo Mateix <jo@jo.cat>\\n/g

:END

}
