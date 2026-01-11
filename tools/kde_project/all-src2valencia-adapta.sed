#!/bin/sed -f

# Recursos:
# ---------
# <https://geiec.iec.cat/>
# <https://giec.iec.cat/conjugacio>
# <https://www.avl.gva.es/lexicval/>

# #
# # # # # # # # # # # # # #
#
# «tradueix» la capçalera
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

# #
# # # # # # # # # # # # # #
#
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
# # # # # # # # # # # # # #
#
# Ho sento -> Ho sentim
# L'accepció de Ho sentim és més impersonal que la primera persona, l'altra opció en valencià és Ho sent.
s/\b\([Hh]\)o sento\([^[:alnum:]]\)/\1o sentim\2/g

#s/\bMid\(a\|es\)\([^[:alnum:]]\)/Grandàri\1\2/g
#s/\bmid\(a\|es\)\([^[:alnum:]]\)/grandàri\1\2/g

# errada->error NO es toca per que porta problemes amb el canvi de gènere
# a banda què:
# 17:25 < nyu> jordim: errada->error ?
# 17:26 < jordim> jo eixa no la canviaria

# #
# # # # # # # # # # # # # #
#
# -> es protegeixen
s/%1, publicat el %2\([^[:alnum:]]\)/%1, publicat el -%2\1/g
s/%1 comença el %2\([^[:alnum:]]\)/%1 comença el -%2\1/g
s/%1 ha començat el %2\([^[:alnum:]]\)/%1 ha començat el -%2\1/g
s/\"el %1\"/\"el -%1\"/g
s/\bal %1%\([^[:alnum:]]\)/al -%1%\1/g
s/\bAnunci el %1\([^[:alnum:]]\)/Anunci el -%1\1/g
s/\bde %1 al %2%/de %1 al -%2%/g
s/\bEl «%1» està \(desconnectat\|en línia\|fora de línia\)\([^[:alnum:]]\)/El «-%1» està \1\2/g
s/\bendarrerida des del %1\([^[:alnum:]]\)/endarrerida des del -%1\1/g
s/\bEnregistrat el %1\([^[:alnum:]]\)/Enregistrat el -%1\1/g
s/\bFita finalitzada el %1\([^[:alnum:]]\)/Fita finalitzada el -%1\1/g
s/\bhora \(diürna\|nocturna\) a les %1 i està totalment canviada a les %2\([^[:alnum:]]\)/hora \1 a les -%1 i està totalment canviada a les -%2\2/g
s/\bpublicada el %2\([^[:alnum:]]\)/publicada el -%2\1/g
s/\bTasca \(finalitzada\|vençuda\) el %1\([^[:alnum:]]\)/Tasca \1 el -%1\2/g
s/\bVàlid fins al %1\([^[:alnum:]]\)/Vàlid fins al -%1\1/g
 #
s/\bamb els \(%1\|Mac\)\([^[:alnum:]]\)/amb els -\1\2/g
s/\b\([Ee]\)ls %\([12]\) \(articles\|comentaris\|contactes\|documents\|bytes\|elements\|fitxers\|fotogrames\|kB\|marcadors\|missatges\|objectes\|processos\|recursos\|temes\|tipus de lletra\|URL\)\([^[:alnum:]]\)/\1ls -%\2 \3\4/g
s/\b\([Ee]\)ls «\(crontab\|ping\)»\([^[:alnum:]]\)/\1ls -«\2»\3/g
s/\b\([Ee]\)ls \(CSV\|Flatpak\|GIF\|Git\|JPEG\|Metalink\|PDF\|SVG\)\([^[:alnum:]]\)/\1ls -\2\3/g
# #
# # # # # # # # # # # # # #
#
# correccions en els noms
s/\bDarkTable\([^[:alnum:]]\)/Darktable\1/g
s/ DB\(us\|US\)\([^[:alnum:]]\)/ D-Bus\2/g
s/\bDigi\([Kk]\)am\([^[:alnum:]]\)/digiKam\2/g
  s/\bdel «panorama\([^[:alnum:]]\)/de «panorama\1/g
s/\bDropbox\([^[:alnum:]]\)/DropBox\1/g
s/\bDuck Duck Go\([^[:alnum:]]\)/DuckDuckGo\1/g
s/\bFFMpeg\([^[:alnum:]]\)/FFmpeg\1/g
s/\bFFProbe\([^[:alnum:]]\)/FFprobe\1/g
s/\bGatekeeper\([^[:alnum:]]\)/GateKeeper\1/g
s/\bGithub\([^[:alnum:]]\)/GitHub\1/g
s/\bGitlab\([^[:alnum:]]\)/GitLab\1/g
s/\bGnucash\([^[:alnum:]]\)/GnuCash\1/g
s/\bGPhoto\([^[:alnum:]]\)/gPhoto\1/g
s/\bHash-o-matic\([^[:alnum:]]\)/Hash-o-Matic\1/g
s/\bHIPS\([^[:alnum:]]\)/HiPS\1/g
s/\bHomebank\([^[:alnum:]]\)/HomeBank\1/g
s/\bide-scsi\([^[:alnum:]]\)/IDE-SCSI\1/g
s/\bKAddressbook\([^[:alnum:]]\)/KAddressBook\1/g
s/\bK\([Aa][Ii][Cc]\)hat\([^[:alnum:]]\)/KAIChat\2/g
s/\bKBibTex\([^[:alnum:]]\)/KBibTeX\1/g
s/\bKCachgrind\([^[:alnum:]]\)/KCachegrind\1/g
s/\bKee\([Pp]\)ass\([Xx][Cc]\)\([^[:alnum:]]\)/KeePassXC\3/g
s/\bKeepsecret\([^[:alnum:]]\)/KeepSecret\1/g
s/\bKGPG\([^[:alnum:]]\)/KGpg\1/g
s/\bKInfocenter\([^[:alnum:]]\)/KInfoCenter\1/g
s/\bKnights\([^[:alnum:]]\)/KNights\1/g
s/\bKParts\([^[:alnum:]]\)/KPart\1/g
s/\b\(K[Rr]eg[Ee]xp[Ee]ditor\)\([^[:alnum:]]\)/KRegexpEditor\2/g
s/\bKrunner\([^[:alnum:]]\)/KRunner\1/g
s/\bKSyntaxhighlighting\([^[:alnum:]]\)/KSyntaxHighlighting\1/g
s/\bKSysguard\([^[:alnum:]]\)/KSysGuard\1/g
s/\bKTExtEditor\([^[:alnum:]]\)/KTextEditor\1/g
s/\bKUiViewer\([^[:alnum:]]\)/KUIViewer\1/g
s/\bKUserfeedback\([^[:alnum:]]\)/KUserFeedback\1/g
s/\bdel ledger\([^[:alnum:]]\)/del Ledger\1/g
s/\bLytebox\([^[:alnum:]]\)/LyteBox\1/g
s/\bMacOS\([^[:alnum:]]\)/macOS\1/g
s/\bMarknote\([^[:alnum:]]\)/MarkNote\1/g
s/\bMediawiki\([^[:alnum:]]\)/MediaWiki\1/g
s/\bMyCroft\([^[:alnum:]]\)/Mycroft\1/g
s/\bNeochat\([^[:alnum:]]\)/NeoChat\1/g
s/\bPeertube\([^[:alnum:]]\)/PeerTube\1/g
s/\bPlasma mobile\([^[:alnum:]]\)/Plasma Mobile\1/g
s/\bPostmarketOS\([^[:alnum:]]\)/postmarketOS\1/g
s/\bPulseaudio\([^[:alnum:]]\)/PulseAudio\1/g
s/\b\(Pu[Mm]o[Kk]u\)\([^[:alnum:]]\)/PuMoKu\2/g
s/\bQpdf\([^[:alnum:]]\)/QPDF\1/g
s/\bRetropad\([^[:alnum:]]\)/RetroPad\1/g
s/\bToolbox\([^[:alnum:]]\)/ToolboX\1/g
s/\bWeb\([Dd][Aa][Vv]\)\([^[:alnum:]]\)/WebDAV\2/g
s/\bWeb\([Dd][Aa][Vv][Ss]\)\([^[:alnum:]]\)/WebDAVS\2/g
s/\bWordnet\([^[:alnum:]]\)/WordNet\1/g
s/\bXPlanet\([^[:alnum:]]\)/Xplanet\1/g
s/\bXwayland\([^[:alnum:]]\)/XWayland\1/g
s/\bYoutube\([^[:alnum:]]\)/YouTube\1/g
s/\b\([Yy]\)ouTube-dl\([^[:alnum:]]\)/\1outube-dl\2/g
# #
# # # # # # # # # # # # # #
#
s/\b\([Ee]\)l \(<[^<]\{1,\}>\|\[\|«\|\)\(BSD\|Debian\|Haiku\|Linux\|macOS\|MeeGo\|Solaris\|SteamOS\|Windows\)\([^[:alnum:]]\)/\2\3\4/g
#
s/\b\([Aa]\)l \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(%1\|%2\|0Ad\|AppSocket\|automodule\|BakLLaVA\|Baloo\|Balsa\|Banner\|Bash\|BAR\|Bas[Kk]et\|Batalla naval\|Bazaar\|Bergamot\|Bespin\|BGE\|BibSearch\|BibTeX\|Bigscreen\|Bitbucket\|Bittorrent\|Blackbox\|Blender\|Blinken\|Blowfish\|Blu-ray\|Blue Angel\|Bluetooth\|bodyParam\|Bomber\|Bomberman\|Bonsai\|Booth\|Bovo\|Bottles\|Box\|Braindump\|bravenec2nd\|Breakout\|Breeze\|Brisa\|bookworm\|Bugzilla\|Buho\|bup\|Burnfree\|Burnproof\|C++\|Cachegrind\|Calcudoku\|Calindori\|[Cc]allgrind\|Calligra\|Calltree\|Cantor\|CAS\|Catfish\|CCD\|CDDB\|CDS\|cdrdao\|cdrecord\|cdrskin\|CD[SV]\|CEC\|Centre d'informació\|Cervisia\|ChatGPT\|check-config\|checkXML[56]\|Chessament\|Chessbase\|Choqok\|Chrome\|Chromium\|CinePaint\|Cisco\|cjpeg\|Clanbomber\|[Cc]lang\|clangd\|[Cc]lazy\|CLI\|Clip\|clipboard\|[Cc][Mm]ake\|cmap\|cmark\|cnoremap\|CoCreateInstance\|CodeGemma\|Code Llama\|CodeQwen[123456789]\|Codestral\|Cogito\|Cohere\|Command\|commander\|CompteEnrere\|Communicator\|ConnectServer\|CompilerExplorer\|ConsoleKit\|contactprintthemeeditor\|contactthemeeditor\|contentItem\|convert\|convmv\|copy\|cor.test\|Corel\|Coverity\|[Cc]ppcheck\|CRAN\|Crio\|crontab\|Crow\|cryfs\|Crystal\|CTags\|CSound\|CUDA\|CUPS\|CurConv\|curconvd\|Cuttlefish\|D3D9\|D-Bus\|Darktable\|data.frame\|[Dd]ataEngine\|DavDroid\|dbus\|dcraw\|dcraw_process\|Debconf\|DBRX\|DebugView\|Deep\|DeepCoder\|DeepL\|Dee[kp]Seek\|DeepMind\|Desfer\|[Dd]esigner\|dev2bitmap\|dev.print\|DH1080_INIT\|digiKam\|Digital\|ding\|dirmngr\|Discount\|Discover\|DiSEqC\|displaycal\|div\|Django\|DjVuLibre\|DKIM\|dkim\|DMA\|dmesg\|Docker\|Docbook\|Dolphin\|Doxygen\|DPMS\|Dr Konqi\|Dragon\|DrawPerfect\|Drawy\|DrKonqi\|DrKonqi2\|DropBox\|Drupal\|DuckDuckGo\|dvd+rw-format\|dvips\|DXVK\|en_US\|Era\|Facebook\|Falkon\|Falcon[23456789]\|FastStone\|Fedivers\|ffmpeg\|FFmpeg\|ffprobe\|FFprobe\|Fielding\|Fiery\|Filelight\|FileStash\|Final Fantasy\|Finder\|Firefox\|firewalld\|FireWire\|fish\|[Ff]latpak\|Flickr\|Flick&r\|Flow\|FlowChart\|FluidSynth\|FocusWriter\|Font Management\|Fontmatrix\|Francis\|freedesktop.org\|Freenode\|frei0r\|FreeType\|fsck\|fsync\|FSView\|fwhm\|G'Mic\|G'MIC-Qt\|g10\|Gadu-Gadu\|Galeon\|GALR\|GAPPS\|Garage\|GateKeeper\|GBR\|GCC\|gcc\|gcompris\|GCompris\|GCstar\|gdb\|GDB\|Gemini\|Gemma\|German\|get\|getAuditLog\|GetHotNewStuff\|[Gg]ettext\|Gherkin\|Ghostscript\|GIH\|Giggle\|Gimp\|GIMP\|[Gg]it\|git[gk]\|GitHub\|GitKlient\|GitLab\|Glaxnimate\|\.GlobalEnv\|GlobalEnv\|GMail\|G'MIC\|GNOME\|Gnome\|GNU\|GnuCash\|GnuPG\|[Gg]nuplot\|GOCR\|gocryptfs\|Godot\|Gomoku\|Google\|GoogleEart\|GoogleMaps\|_ghostwriter\|ghostwriter\|gop\|GOP\|goto\|GoToSocial\|GParted\|gpasm\|GPG\|gpg\|Gpg4win\|gpg-agent\|GpgConf\|GpgME\|gpgsm\|GpgSM\|gPhoto\|GPodder\|GPSBabel\|GPT\|GPT[23456789]\|GPT4o\|Grammalecte\|grammalected\|Granatier\|Granite\|Grantlee\|Graphics\|[Gg]raphviz\|Gravatar\|GreaseMonkey\|grep\|Grisbi\|GroupWise\|growisofs\|Grub\|GSSAPI\|GStreamer\|Gtk\|GUIProfile\|Gwenview\|Gzip\|h5dump\|HAL\|Hana\|Hash-o-Matic\|HDR\|headerthemeeditor\|Healpix\|[Hh]eaptrack\|HEIF\|Helgrind\|Hermes\|HFR\|hg\|High\|HiPS\|HomeBank\|HotShots\|HPLIP\|Htop\|[Hh]ugo\|Hunspell\|Hyprland\|Iconexplorer\|IDE-SCSI\|IFrame\|InfinityBook\|Invidious\|inputVectorData\|inputVectorTime\|jAlbum\|Jamendo\|Java\|Java[Ss]cript\|Jitsi\|JetDirect\|jitter\|Jog\|journald\|Jovie\|JPL\|Ju[Kk]\|[Jj]ulia\|Juniper\|Jupyter\|JXL\|K3b\|KAddressBook\|Kadmos\|KADMOS\|Kaffeine\|Kaggle\|KAIChat\|Kaidan\|Kairo\|Kajongg\|KAlarm\|Kalendar\|KAlgebra\|Kalk\|Kalm\|Kalzium\|Kameleon\|Kamera\|Kamoso\|Kanagram\|Kapman\|KAppTemplate\|Kaption\|Karbon\|Karp\|Kartographer\|Kasts\|Kate\|KAtomic\|KBabel\|KBackup\|KBibTeX\|KBlackBox\|KBlocks\|KBounce\|KBreakOut\|KBruch\|kbuildsycoca[56]\|KBuildSycoca\|KCachegrind\|KCalc\|KCalendarCore\|KCharSelect\|KClock\|KCM\|KColorChooser\|KConfig\|KContact\|KCron\|KDE\|kde4-config\|KDebug\|kdebugdialog[56]\|[Kk][Dd]ebug[Ss]ettings\|kde-builder\|kdeconnectd\|KDED\|kded\|kded[56]\|kded[56]rc\|kdegraphics\|kdeinit\|kdeinit[56]\|[Kk]denlive\|KDEPrint\|KDesktop\|kdesrc-build\|kdesu\|kdesudo\|Kdesvn\|KDevelop\|KDialog\|KDiamond\|KDiff3\|KDing\|KDiskFree\|keditbookmarks\|keditfiletype\|KeePassXC\|KeepSecret\|Kerberos\|KEuroCalc\|Kexi\|KEXI\|Keysmith\|kf[56]-config\|KFileDialog\|KFileMetaDataReader\|KFind\|KFloppy\|KFM\|KFourInLine\|KGameRenderer\|KGamma\|kgendesignerplugin\|KGeography\|KGeoTag\|KGet\|KGoldrunner\|KGpg\|KGraphViewer\|KHangMan\|[Kk][Hh]elp[Cc]enter\|Khipu\|khotkeys\|KHotkeys\|KHTML\|khtml\|Kid3\|Kig\|Kigo\|Kile\|Killbots\|Killer\|KImageMapEditor\|KImageShop\|KInfoCenter\|KIO\|Kio-Extras\|kiod\|KIPI\|Kickstarter\|Kirigami\|Kiriki\|Kirogi\|Kiten\|KItinerary\|KJots\|KJournald\|KJumpingCube\|KLauncher\|Kleopatra\|KLettres\|Klever\|KleverNotes\|Klickety\|Klimbgrades\|KLines\|Klipper\|ksld\|KMag\|KMagnifier\|KMahjongg\|KMail\|KMenu\|KMines\|KMix\|kmix\|KMouseTool\|KMouth\|KMPlayer\|KmPlot\|KMuddy\|KMyMoney\|kmymoney\|KNetWalk\|KNewStuff\|KNights\|KNotes\|KNotify\|Kodaskanna\|KOffice\|Koko\|Kolab\|Kolf\|Kollision\|Kolor Lines\|Kolorfill\|KolourPaint\|Kommit\|KomoDo\|[Kk]ompare\|Kongress\|Konqueror\|Konquest\|[Kk]onsole\|Kontact\|Kontainer\|Kontrast\|Konversation\|Konvex\|Kooka\|Kookbook\|Kopete\|KOrganizer\|KNS\|KPackage\|KPackageType\|KPat\|KPatience\|KPhotoAlbum\|KPipewire\|KPL\|KPlato\|KPresenter\|Krayon\|[Kk]razy2\|KRDC\|KRdp\|krdpserver\|KRegexpEditor\|KRename\|KReport\|KRetro\|KReversi\|K[Rr]fb\|Krita\|Kronometer\|Kross\|KRuler\|KRun\|KRunner\|Krusader\|KSame\|KScreen\|KService\|KSeExpr\|KShisen\|KSIRC\|KsirK\|ksld\|KSnakeDuel\|KSokoban\|Sokoban\|KSpaceDuel\|Kspell\|KSpread\|KSquares\|Ksshaskpass\|[Kk]st\|KStars\|KSudoku\|KSyntaxHighlighter\|KSyntaxHighlighting\|KSysGuard\|KSystemLog\|KTeaTime\|KTechlab\|KTelnetService\|KTextEditor\|KTimer\|KTimeTracker\|KTorrent\|KTouch\|KTP\|KTrip\|KTuberling\|KTurtle\|Kube\|Kubric\|Kubrick\|Kuickshow\|KuickShow\|KUIViewer\|Kup\|KUserFeedback\|KWallet\|kwallet-query\|kwalletd\|KWalletManager\|KWatchGnuPG\|Kwave\|KWeather\|KWidgetsAddons\|KwikDisk\|KWin\|KWord\|KWordQuiz\|KWrite\|KXStitch\)\([^[:alnum:]]\)/\1 \2\3\4\5/g
s/\b\([Ee]\)l\(s\|\) \(\|\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(%1\|%2\|0Ad\|AppSocket\|automodule\|BakLLaVA\|Baloo\|Balsa\|Banner\|Bash\|BAR\|Bas[Kk]et\|Batalla naval\|Bazaar\|Bergamot\|Bespin\|BGE\|BibSearch\|BibTeX\|Bigscreen\|Bitbucket\|Bittorrent\|Blackbox\|Blender\|Blinken\|Blowfish\|Blu-ray\|Blue Angel\|Bluetooth\|bodyParam\|Bomber\|Bomberman\|Bonsai\|Booth\|Bottles\|Bovo\|Box\|Braindump\|bravenec2nd\|Breakout\|Breeze\|Brisa\|bookworm\|Bugzilla\|Buho\|bup\|Burnfree\|Burnproof\|C++\|Cachegrind\|Calcudoku\|Calindori\|[Cc]allgrind\|Calligra\|Calltree\|Cantor\|CAS\|Catfish\|CCD\|CDDB\|CDS\|cdrdao\|cdrecord\|cdrskin\|CD[SV]\|CEC\|Centre d'informació\|Cervisia\|ChatGPT\|check-config\|checkXML[56]\|Chessament\|Chessbase\|Choqok\|Chrome\|Chromium\|CinePaint\|Cisco\|cjpeg\|Clanbomber\|[Cc]lang\|clangd\|[Cc]lazy\|CLI\|Clip\|clipboard\|[Cc][Mm]ake\|cmap\|cmark\|cnoremap\|CoCreateInstance\|CodeGemma\|Code Llama\|CodeQwen[123456789]\|Codestral\|Cogito\|Cohere\|Command\|commander\|CompteEnrere\|Communicator\|ConnectServer\|CompilerExplorer\|ConsoleKit\|contactprintthemeeditor\|contactthemeeditor\|contentItem\|convert\|convmv\|copy\|cor.test\|Corel\|Coverity\|[Cc]ppcheck\|CRAN\|Crio\|crontab\|Crow\|cryfs\|Crystal\|CTags\|CSound\|CUDA\|CUPS\|CurConv\|curconvd\|Cuttlefish\|D3D9\|D-Bus\|Darktable\|data.frame\|[Dd]ataEngine\|DavDroid\|dbus\|dcraw\|dcraw_process\|Debconf\|DBRX\|DebugView\|Deep\|DeepCoder\|DeepL\|Dee[kp]Seek\|DeepMind\|Desfer\|[Dd]esigner\|dev2bitmap\|dev.print\|DH1080_INIT\|digiKam\|Digital\|ding\|dirmngr\|Discount\|Discover\|DiSEqC\|displaycal\|div\|Django\|DjVuLibre\|DKIM\|dkim\|DMA\|dmesg\|Docker\|Docbook\|Dolphin\|Doxygen\|DPMS\|Dr Konqi\|Dragon\|DrawPerfect\|Drawy\|DrKonqi\|DrKonqi2\|DropBox\|Drupal\|DuckDuckGo\|dvd+rw-format\|dvips\|DXVK\|en_US\|Era\|Facebook\|Falkon\|Falcon[23456789]\|FastStone\|Fedivers\|ffmpeg\|FFmpeg\|ffprobe\|FFprobe\|Fielding\|Fiery\|Filelight\|FileStash\|Final Fantasy\|Finder\|Firefox\|firewalld\|FireWire\|fish\|[Ff]latpak\|Flickr\|Flick&r\|Flow\|FlowChart\|FluidSynth\|FocusWriter\|Font Management\|Fontmatrix\|Francis\|freedesktop.org\|Freenode\|frei0r\|FreeType\|fsck\|fsync\|FSView\|fwhm\|G'Mic\|G'MIC-Qt\|g10\|Gadu-Gadu\|Galeon\|GALR\|GAPPS\|Garage\|GateKeeper\|GBR\|GCC\|gcc\|gcompris\|GCompris\|GCstar\|gdb\|GDB\|Gemini\|Gemma\|German\|get\|getAuditLog\|GetHotNewStuff\|[Gg]ettext\|Gherkin\|Ghostscript\|GIH\|Giggle\|Gimp\|GIMP\|[Gg]it\|git[gk]\|GitHub\|GitKlient\|GitLab\|Glaxnimate\|\.GlobalEnv\|GlobalEnv\|GMail\|G'MIC\|GNOME\|Gnome\|GNU\|GnuCash\|GnuPG\|[Gg]nuplot\|GOCR\|gocryptfs\|Godot\|Gomoku\|Google\|GoogleEart\|GoogleMaps\|_ghostwriter\|ghostwriter\|gop\|GOP\|goto\|GoToSocial\|GParted\|gpasm\|GPG\|gpg\|Gpg4win\|gpg-agent\|GpgConf\|GpgME\|gpgsm\|GpgSM\|gPhoto\|GPodder\|GPSBabel\|GPT\|GPT[23456789]\|GPT4o\|Grammalecte\|grammalected\|Granatier\|Granite\|Grantlee\|Graphics\|[Gg]raphviz\|Gravatar\|GreaseMonkey\|grep\|Grisbi\|GroupWise\|growisofs\|Grub\|GSSAPI\|GStreamer\|Gtk\|GUIProfile\|Gwenview\|Gzip\|h5dump\|HAL\|Hana\|Hash-o-Matic\|HDR\|headerthemeeditor\|Healpix\|[Hh]eaptrack\|HEIF\|Helgrind\|Hermes\|HFR\|hg\|High\|HiPS\|HomeBank\|HotShots\|HPLIP\|Htop\|[Hh]ugo\|Hunspell\|Hyprland\|Iconexplorer\|IDE-SCSI\|IFrame\|InfinityBook\|Invidious\|inputVectorData\|inputVectorTime\|jAlbum\|Jamendo\|Java\|Java[Ss]cript\|JetDirect\|Jitsi\|jitter\|Jog\|journald\|Jovie\|JPL\|Ju[Kk]\|[Jj]ulia\|Juniper\|Jupyter\|JXL\|K3b\|KAddressBook\|Kadmos\|KADMOS\|Kaffeine\|Kaggle\|KAIChat\|Kaidan\|Kairo\|Kajongg\|KAlarm\|Kalendar\|KAlgebra\|Kalk\|Kalm\|Kalzium\|Kameleon\|Kamera\|Kamoso\|Kanagram\|Kapman\|KAppTemplate\|Kaption\|Karbon\|Karp\|Kartographer\|Kasts\|Kate\|KAtomic\|KBabel\|KBackup\|KBibTeX\|KBlackBox\|KBlocks\|KBounce\|KBreakOut\|KBruch\|kbuildsycoca[56]\|KBuildSycoca\|KCachegrind\|KCalc\|KCalendarCore\|KCharSelect\|KClock\|KCM\|KColorChooser\|KConfig\|KContact\|KCron\|KDE\|kde4-config\|KDebug\|kdebugdialog[56]\|[Kk][Dd]ebug[Ss]ettings\|kde-builder\|kdeconnectd\|KDED\|kded\|kded[56]\|kded[56]rc\|kdegraphics\|kdeinit\|kdeinit[56]\|[Kk]denlive\|KDEPrint\|KDesktop\|kdesrc-build\|kdesu\|kdesudo\|Kdesvn\|KDevelop\|KDialog\|KDiamond\|KDiff3\|KDing\|KDiskFree\|keditbookmarks\|keditfiletype\|KeePassXC\|KeepSecret\|Kerberos\|KEuroCalc\|Kexi\|KEXI\|Keysmith\|kf[56]-config\|KFileDialog\|KFileMetaDataReader\|KFind\|KFloppy\|KFM\|KFourInLine\|KGameRenderer\|KGamma\|kgendesignerplugin\|KGeography\|KGeoTag\|KGet\|KGoldrunner\|KGpg\|KGraphViewer\|KHangMan\|[Kk][Hh]elp[Cc]enter\|Khipu\|khotkeys\|KHotkeys\|KHTML\|khtml\|Kid3\|Kig\|Kigo\|Kile\|Killbots\|Killer\|KImageMapEditor\|KImageShop\|KInfoCenter\|KIO\|Kio-Extras\|kiod\|KIPI\|Kickstarter\|Kirigami\|Kiriki\|Kirogi\|Kiten\|KItinerary\|KJots\|KJournald\|KJumpingCube\|KLauncher\|Kleopatra\|KLettres\|Klever\|KleverNotes\|Klickety\|Klimbgrades\|KLines\|Klipper\|ksld\|KMag\|KMagnifier\|KMahjongg\|KMail\|KMenu\|KMines\|KMix\|kmix\|KMouseTool\|KMouth\|KMPlayer\|KmPlot\|KMuddy\|KMyMoney\|kmymoney\|KNetWalk\|KNewStuff\|KNights\|KNotes\|KNotify\|Kodaskanna\|KOffice\|Koko\|Kolab\|Kolf\|Kollision\|Kolor Lines\|Kolorfill\|KolourPaint\|Kommit\|KomoDo\|[Kk]ompare\|Kongress\|Konqueror\|Konquest\|[Kk]onsole\|Kontact\|Kontainer\|Kontrast\|Konversation\|Konvex\|Kooka\|Kookbook\|Kopete\|KOrganizer\|KNS\|KPackage\|KPackageType\|KPat\|KPatience\|KPhotoAlbum\|KPipewire\|KPL\|KPlato\|KPresenter\|Krayon\|[Kk]razy2\|KRDC\|KRdp\|krdpserver\|KRegexpEditor\|KRename\|KReport\|KRetro\|KReversi\|K[Rr]fb\|Krita\|Kronometer\|Kross\|KRuler\|KRun\|KRunner\|Krusader\|KSame\|KScreen\|KService\|KSeExpr\|KShisen\|KSIRC\|KsirK\|ksld\|KSnakeDuel\|KSokoban\|Sokoban\|KSpaceDuel\|Kspell\|KSpread\|KSquares\|Ksshaskpass\|[Kk]st\|KStars\|KSudoku\|KSyntaxHighlighter\|KSyntaxHighlighting\|KSysGuard\|KSystemLog\|KTeaTime\|KTechlab\|KTelnetService\|KTextEditor\|KTimer\|KTimeTracker\|KTorrent\|KTouch\|KTP\|KTrip\|KTuberling\|KTurtle\|Kube\|Kubric\|Kubrick\|Kuickshow\|KuickShow\|KUIViewer\|Kup\|KUserFeedback\|KWallet\|kwallet-query\|kwalletd\|KWalletManager\|KWatchGnuPG\|Kwave\|KWeather\|KWidgetsAddons\|KwikDisk\|KWin\|KWord\|KWordQuiz\|KWrite\|KXStitch\)\([^[:alnum:]]\)/\3\4\5\6/g
s/\b\([Dd]\)el\(s\|\) \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(%1\|%2\|0Ad\|AppSocket\|automodule\|BakLLaVA\|Baloo\|Balsa\|Banner\|Bash\|BAR\|Bas[Kk]et\|Batalla naval\|Bazaar\|Bergamot\|Bespin\|BGE\|BibSearch\|BibTeX\|Bigscreen\|Bitbucket\|Bittorrent\|Blackbox\|Blender\|Blinken\|Blowfish\|Blu-ray\|Blue Angel\|Bluetooth\|bodyParam\|Bomber\|Bomberman\|Bonsai\|Booth\|Bottles\|Bovo\|Box\|Braindump\|bravenec2nd\|Breakout\|Breeze\|Brisa\|bookworm\|Bugzilla\|Buho\|bup\|Burnfree\|Burnproof\|C++\|Cachegrind\|Calcudoku\|Calindori\|[Cc]allgrind\|Calligra\|Calltree\|Cantor\|CAS\|Catfish\|CCD\|CDDB\|CDS\|cdrdao\|cdrecord\|cdrskin\|CD[SV]\|CEC\|Centre d'informació\|Cervisia\|ChatGPT\|check-config\|checkXML[56]\|Chessament\|Chessbase\|Choqok\|Chrome\|Chromium\|CinePaint\|Cisco\|cjpeg\|Clanbomber\|[Cc]lang\|clangd\|[Cc]lazy\|CLI\|Clip\|clipboard\|[Cc][Mm]ake\|cmap\|cmark\|cnoremap\|CoCreateInstance\|CodeGemma\|Code Llama\|CodeQwen[123456789]\|Codestral\|Cogito\|Cohere\|Command\|commander\|CompteEnrere\|Communicator\|ConnectServer\|CompilerExplorer\|ConsoleKit\|contactprintthemeeditor\|contactthemeeditor\|contentItem\|convert\|convmv\|copy\|cor.test\|Corel\|Coverity\|[Cc]ppcheck\|CRAN\|Crio\|crontab\|Crow\|cryfs\|Crystal\|CTags\|CSound\|CUDA\|CUPS\|CurConv\|curconvd\|Cuttlefish\|D3D9\|D-Bus\|Darktable\|data.frame\|[Dd]ataEngine\|DavDroid\|dbus\|dcraw\|dcraw_process\|Debconf\|DBRX\|DebugView\|Deep\|DeepCoder\|DeepL\|Dee[kp]Seek\|DeepMind\|Desfer\|[Dd]esigner\|dev2bitmap\|dev.print\|DH1080_INIT\|digiKam\|Digital\|ding\|dirmngr\|Discount\|Discover\|DiSEqC\|displaycal\|div\|Django\|DjVuLibre\|DKIM\|dkim\|DMA\|dmesg\|Docker\|Docbook\|Dolphin\|Doxygen\|DPMS\|Dr Konqi\|Dragon\|DrawPerfect\|Drawy\|DrKonqi\|DrKonqi2\|DropBox\|Drupal\|DuckDuckGo\|dvd+rw-format\|dvips\|DXVK\|en_US\|Era\|Facebook\|Falkon\|Falcon[23456789]\|FastStone\|Fedivers\|ffmpeg\|FFmpeg\|ffprobe\|FFprobe\|Fielding\|Fiery\|Filelight\|FileStash\|Final Fantasy\|Finder\|Firefox\|firewalld\|FireWire\|fish\|[Ff]latpak\|Flickr\|Flick&r\|Flow\|FlowChart\|FluidSynth\|FocusWriter\|Font Management\|Fontmatrix\|Francis\|freedesktop.org\|Freenode\|frei0r\|FreeType\|fsck\|fsync\|FSView\|fwhm\|G'Mic\|G'MIC-Qt\|g10\|Gadu-Gadu\|Galeon\|GALR\|GAPPS\|Garage\|GateKeeper\|GBR\|GCC\|gcc\|gcompris\|GCompris\|GCstar\|gdb\|GDB\|Gemini\|Gemma\|German\|get\|getAuditLog\|GetHotNewStuff\|[Gg]ettext\|Gherkin\|Ghostscript\|GIH\|Giggle\|Gimp\|GIMP\|[Gg]it\|git[gk]\|GitHub\|GitKlient\|GitLab\|Glaxnimate\|\.GlobalEnv\|GlobalEnv\|GMail\|G'MIC\|GNOME\|Gnome\|GNU\|GnuCash\|GnuPG\|[Gg]nuplot\|GOCR\|gocryptfs\|Godot\|Gomoku\|Google\|GoogleEart\|GoogleMaps\|_ghostwriter\|ghostwriter\|gop\|GOP\|goto\|GoToSocial\|GParted\|gpasm\|GPG\|gpg\|Gpg4win\|gpg-agent\|GpgConf\|GpgME\|gpgsm\|GpgSM\|gPhoto\|GPodder\|GPSBabel\|GPT\|GPT[23456789]\|GPT4o\|Grammalecte\|grammalected\|Granatier\|Granite\|Grantlee\|Graphics\|[Gg]raphviz\|Gravatar\|GreaseMonkey\|grep\|Grisbi\|GroupWise\|growisofs\|Grub\|GSSAPI\|GStreamer\|Gtk\|GUIProfile\|Gwenview\|Gzip\|h5dump\|HAL\|Hana\|Hash-o-Matic\|HDR\|headerthemeeditor\|Healpix\|[Hh]eaptrack\|HEIF\|Helgrind\|Hermes\|HFR\|hg\|High\|HiPS\|HomeBank\|HotShots\|HPLIP\|Htop\|[Hh]ugo\|Hunspell\|Hyprland\|Iconexplorer\|IDE-SCSI\|IFrame\|InfinityBook\|Invidious\|inputVectorData\|inputVectorTime\|jAlbum\|Jamendo\|Java\|Java[Ss]cript\|JetDirect\|Jitsi\|jitter\|Jog\|journald\|Jovie\|JPL\|Ju[Kk]\|[Jj]ulia\|Juniper\|Jupyter\|JXL\|K3b\|KAddressBook\|Kadmos\|KADMOS\|Kaffeine\|Kaggle\|KAIChat\|Kaidan\|Kairo\|Kajongg\|KAlarm\|Kalendar\|KAlgebra\|Kalk\|Kalm\|Kalzium\|Kameleon\|Kamera\|Kamoso\|Kanagram\|Kapman\|KAppTemplate\|Kaption\|Karbon\|Karp\|Kartographer\|Kasts\|Kate\|KAtomic\|KBabel\|KBackup\|KBibTeX\|KBlackBox\|KBlocks\|KBounce\|KBreakOut\|KBruch\|kbuildsycoca[56]\|KBuildSycoca\|KCachegrind\|KCalc\|KCalendarCore\|KCharSelect\|KClock\|KCM\|KColorChooser\|KConfig\|KContact\|KCron\|KDE\|kde4-config\|KDebug\|kdebugdialog[56]\|[Kk][Dd]ebug[Ss]ettings\|kde-builder\|kdeconnectd\|KDED\|kded\|kded[56]\|kded[56]rc\|kdegraphics\|kdeinit\|kdeinit[56]\|[Kk]denlive\|KDEPrint\|KDesktop\|kdesrc-build\|kdesu\|kdesudo\|Kdesvn\|KDevelop\|KDialog\|KDiamond\|KDiff3\|KDing\|KDiskFree\|keditbookmarks\|keditfiletype\|KeePassXC\|KeepSecret\|Kerberos\|KEuroCalc\|Kexi\|KEXI\|Keysmith\|kf[56]-config\|KFileDialog\|KFileMetaDataReader\|KFind\|KFloppy\|KFM\|KFourInLine\|KGameRenderer\|KGamma\|kgendesignerplugin\|KGeography\|KGeoTag\|KGet\|KGoldrunner\|KGpg\|KGraphViewer\|KHangMan\|[Kk][Hh]elp[Cc]enter\|Khipu\|khotkeys\|KHotkeys\|KHTML\|khtml\|Kid3\|Kig\|Kigo\|Kile\|Killbots\|Killer\|KImageMapEditor\|KImageShop\|KInfoCenter\|KIO\|Kio-Extras\|kiod\|KIPI\|Kickstarter\|Kirigami\|Kiriki\|Kirogi\|Kiten\|KItinerary\|KJots\|KJournald\|KJumpingCube\|KLauncher\|Kleopatra\|KLettres\|Klever\|KleverNotes\|Klickety\|Klimbgrades\|KLines\|Klipper\|ksld\|KMag\|KMagnifier\|KMahjongg\|KMail\|KMenu\|KMines\|KMix\|kmix\|KMouseTool\|KMouth\|KMPlayer\|KmPlot\|KMuddy\|KMyMoney\|kmymoney\|KNetWalk\|KNewStuff\|KNights\|KNotes\|KNotify\|Kodaskanna\|KOffice\|Koko\|Kolab\|Kolf\|Kollision\|Kolor Lines\|Kolorfill\|KolourPaint\|Kommit\|KomoDo\|[Kk]ompare\|Kongress\|Konqueror\|Konquest\|[Kk]onsole\|Kontact\|Kontainer\|Kontrast\|Konversation\|Konvex\|Kooka\|Kookbook\|Kopete\|KOrganizer\|KNS\|KPackage\|KPackageType\|KPat\|KPatience\|KPhotoAlbum\|KPipewire\|KPL\|KPlato\|KPresenter\|Krayon\|[Kk]razy2\|KRDC\|KRdp\|krdpserver\|KRegexpEditor\|KRename\|KReport\|KRetro\|KReversi\|K[Rr]fb\|Krita\|Kronometer\|Kross\|KRuler\|KRun\|KRunner\|Krusader\|KSame\|KScreen\|KService\|KSeExpr\|KShisen\|KSIRC\|KsirK\|ksld\|KSnakeDuel\|KSokoban\|Sokoban\|KSpaceDuel\|Kspell\|KSpread\|KSquares\|Ksshaskpass\|[Kk]st\|KStars\|KSudoku\|KSyntaxHighlighter\|KSyntaxHighlighting\|KSysGuard\|KSystemLog\|KTeaTime\|KTechlab\|KTelnetService\|KTextEditor\|KTimer\|KTimeTracker\|KTorrent\|KTouch\|KTP\|KTrip\|KTuberling\|KTurtle\|Kube\|Kubric\|Kubrick\|Kuickshow\|KuickShow\|KUIViewer\|Kup\|KUserFeedback\|KWallet\|kwallet-query\|kwalletd\|KWalletManager\|KWatchGnuPG\|Kwave\|KWeather\|KWidgetsAddons\|KwikDisk\|KWin\|KWord\|KWordQuiz\|KWrite\|KXStitch\)\([^[:alnum:]]\)/\1e \3\4\5\6/g
s/\b\([Pp]\)el \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(%1\|%2\|0Ad\|AppSocket\|automodule\|BakLLaVA\|Baloo\|Balsa\|Banner\|Bash\|BAR\|Bas[Kk]et\|Batalla naval\|Bazaar\|Bergamot\|Bespin\|BGE\|BibSearch\|BibTeX\|Bigscreen\|Bitbucket\|Bittorrent\|Blackbox\|Blender\|Blinken\|Blowfish\|Blu-ray\|Blue Angel\|Bluetooth\|bodyParam\|Bomber\|Bomberman\|Bonsai\|Booth\|Bottles\|Bovo\|Box\|Braindump\|bravenec2nd\|Breakout\|Breeze\|Brisa\|bookworm\|Bugzilla\|Buho\|bup\|Burnfree\|Burnproof\|C++\|Cachegrind\|Calcudoku\|Calindori\|[Cc]allgrind\|Calligra\|Calltree\|Cantor\|CAS\|Catfish\|CCD\|CDDB\|CDS\|cdrdao\|cdrecord\|cdrskin\|CD[SV]\|CEC\|Centre d'informació\|Cervisia\|ChatGPT\|check-config\|checkXML[56]\|Chessament\|Chessbase\|Choqok\|Chrome\|Chromium\|CinePaint\|Cisco\|cjpeg\|Clanbomber\|[Cc]lang\|clangd\|[Cc]lazy\|CLI\|Clip\|clipboard\|[Cc][Mm]ake\|cmap\|cmark\|cnoremap\|CoCreateInstance\|CodeGemma\|Code Llama\|CodeQwen[123456789]\|Codestral\|Cogito\|Cohere\|Command\|commander\|CompteEnrere\|Communicator\|ConnectServer\|CompilerExplorer\|ConsoleKit\|contactprintthemeeditor\|contactthemeeditor\|contentItem\|convert\|convmv\|copy\|cor.test\|Corel\|Coverity\|[Cc]ppcheck\|CRAN\|Crio\|crontab\|Crow\|cryfs\|Crystal\|CTags\|CSound\|CUDA\|CUPS\|CurConv\|curconvd\|Cuttlefish\|D3D9\|D-Bus\|Darktable\|data.frame\|[Dd]ataEngine\|DavDroid\|dbus\|dcraw\|dcraw_process\|Debconf\|DBRX\|DebugView\|Deep\|DeepCoder\|DeepL\|Dee[kp]Seek\|DeepMind\|Desfer\|[Dd]esigner\|dev2bitmap\|dev.print\|DH1080_INIT\|digiKam\|Digital\|ding\|dirmngr\|Discount\|Discover\|DiSEqC\|displaycal\|div\|Django\|DjVuLibre\|DKIM\|dkim\|DMA\|dmesg\|Docker\|Docbook\|Dolphin\|Doxygen\|DPMS\|Dr Konqi\|Dragon\|DrawPerfect\|Drawy\|DrKonqi\|DrKonqi2\|DropBox\|Drupal\|DuckDuckGo\|dvd+rw-format\|dvips\|DXVK\|en_US\|Era\|Facebook\|Falkon\|Falcon[23456789]\|FastStone\|Fedivers\|ffmpeg\|FFmpeg\|ffprobe\|FFprobe\|Fielding\|Fiery\|Filelight\|FileStash\|Final Fantasy\|Finder\|Firefox\|firewalld\|FireWire\|fish\|[Ff]latpak\|Flickr\|Flick&r\|Flow\|FlowChart\|FluidSynth\|FocusWriter\|Font Management\|Fontmatrix\|Francis\|freedesktop.org\|Freenode\|frei0r\|FreeType\|fsck\|fsync\|FSView\|fwhm\|G'Mic\|G'MIC-Qt\|g10\|Gadu-Gadu\|Galeon\|GALR\|GAPPS\|Garage\|GateKeeper\|GBR\|GCC\|gcc\|gcompris\|GCompris\|GCstar\|gdb\|GDB\|Gemini\|Gemma\|German\|get\|getAuditLog\|GetHotNewStuff\|[Gg]ettext\|Gherkin\|Ghostscript\|GIH\|Giggle\|Gimp\|GIMP\|[Gg]it\|git[gk]\|GitHub\|GitKlient\|GitLab\|Glaxnimate\|\.GlobalEnv\|GlobalEnv\|GMail\|G'MIC\|GNOME\|Gnome\|GNU\|GnuCash\|GnuPG\|[Gg]nuplot\|GOCR\|gocryptfs\|Godot\|Gomoku\|Google\|GoogleEart\|GoogleMaps\|_ghostwriter\|ghostwriter\|gop\|GOP\|goto\|GoToSocial\|GParted\|gpasm\|GPG\|gpg\|Gpg4win\|gpg-agent\|GpgConf\|GpgME\|gpgsm\|GpgSM\|gPhoto\|GPodder\|GPSBabel\|GPT\|GPT[23456789]\|GPT4o\|Grammalecte\|grammalected\|Granatier\|Granite\|Grantlee\|Graphics\|[Gg]raphviz\|Gravatar\|GreaseMonkey\|grep\|Grisbi\|GroupWise\|growisofs\|Grub\|GSSAPI\|GStreamer\|Gtk\|GUIProfile\|Gwenview\|Gzip\|h5dump\|HAL\|Hana\|Hash-o-Matic\|HDR\|headerthemeeditor\|Healpix\|[Hh]eaptrack\|HEIF\|Helgrind\|Hermes\|HFR\|hg\|High\|HiPS\|HomeBank\|HotShots\|HPLIP\|Htop\|[Hh]ugo\|Hunspell\|Hyprland\|Iconexplorer\|IDE-SCSI\|IFrame\|InfinityBook\|Invidious\|inputVectorData\|inputVectorTime\|jAlbum\|Jamendo\|Java\|Java[Ss]cript\|JetDirect\|Jitsi\|jitter\|Jog\|journald\|Jovie\|JPL\|Ju[Kk]\|[Jj]ulia\|Juniper\|Jupyter\|JXL\|K3b\|KAddressBook\|Kadmos\|KADMOS\|Kaffeine\|Kaggle\|KAIChat\|Kaidan\|Kairo\|Kajongg\|KAlarm\|Kalendar\|KAlgebra\|Kalk\|Kalm\|Kalzium\|Kameleon\|Kamera\|Kamoso\|Kanagram\|Kapman\|KAppTemplate\|Kaption\|Karbon\|Karp\|Kartographer\|Kasts\|Kate\|KAtomic\|KBabel\|KBackup\|KBibTeX\|KBlackBox\|KBlocks\|KBounce\|KBreakOut\|KBruch\|kbuildsycoca[56]\|KBuildSycoca\|KCachegrind\|KCalc\|KCalendarCore\|KCharSelect\|KClock\|KCM\|KColorChooser\|KConfig\|KContact\|KCron\|KDE\|kde4-config\|KDebug\|kdebugdialog[56]\|[Kk][Dd]ebug[Ss]ettings\|kde-builder\|kdeconnectd\|KDED\|kded\|kded[56]\|kded[56]rc\|kdegraphics\|kdeinit\|kdeinit[56]\|[Kk]denlive\|KDEPrint\|KDesktop\|kdesrc-build\|kdesu\|kdesudo\|Kdesvn\|KDevelop\|KDialog\|KDiamond\|KDiff3\|KDing\|KDiskFree\|keditbookmarks\|keditfiletype\|KeePassXC\|KeepSecret\|Kerberos\|KEuroCalc\|Kexi\|KEXI\|Keysmith\|kf[56]-config\|KFileDialog\|KFileMetaDataReader\|KFind\|KFloppy\|KFM\|KFourInLine\|KGameRenderer\|KGamma\|kgendesignerplugin\|KGeography\|KGeoTag\|KGet\|KGoldrunner\|KGpg\|KGraphViewer\|KHangMan\|[Kk][Hh]elp[Cc]enter\|Khipu\|khotkeys\|KHotkeys\|KHTML\|khtml\|Kid3\|Kig\|Kigo\|Kile\|Killbots\|Killer\|KImageMapEditor\|KImageShop\|KInfoCenter\|KIO\|Kio-Extras\|kiod\|KIPI\|Kickstarter\|Kirigami\|Kiriki\|Kirogi\|Kiten\|KItinerary\|KJots\|KJournald\|KJumpingCube\|KLauncher\|Kleopatra\|KLettres\|Klever\|KleverNotes\|Klickety\|Klimbgrades\|KLines\|Klipper\|ksld\|KMag\|KMagnifier\|KMahjongg\|KMail\|KMenu\|KMines\|KMix\|kmix\|KMouseTool\|KMouth\|KMPlayer\|KmPlot\|KMuddy\|KMyMoney\|kmymoney\|KNetWalk\|KNewStuff\|KNights\|KNotes\|KNotify\|Kodaskanna\|KOffice\|Koko\|Kolab\|Kolf\|Kollision\|Kolor Lines\|Kolorfill\|KolourPaint\|Kommit\|KomoDo\|[Kk]ompare\|Kongress\|Konqueror\|Konquest\|[Kk]onsole\|Kontact\|Kontainer\|Kontrast\|Konversation\|Konvex\|Kooka\|Kookbook\|Kopete\|KOrganizer\|KNS\|KPackage\|KPackageType\|KPat\|KPatience\|KPhotoAlbum\|KPipewire\|KPL\|KPlato\|KPresenter\|Krayon\|[Kk]razy2\|KRDC\|KRdp\|krdpserver\|KRegexpEditor\|KRename\|KReport\|KRetro\|KReversi\|K[Rr]fb\|Krita\|Kronometer\|Kross\|KRuler\|KRun\|KRunner\|Krusader\|KSame\|KScreen\|KService\|KSeExpr\|KShisen\|KSIRC\|KsirK\|ksld\|KSnakeDuel\|KSokoban\|Sokoban\|KSpaceDuel\|Kspell\|KSpread\|KSquares\|Ksshaskpass\|[Kk]st\|KStars\|KSudoku\|KSyntaxHighlighter\|KSyntaxHighlighting\|KSysGuard\|KSystemLog\|KTeaTime\|KTechlab\|KTelnetService\|KTextEditor\|KTimer\|KTimeTracker\|KTorrent\|KTouch\|KTP\|KTrip\|KTuberling\|KTurtle\|Kube\|Kubric\|Kubrick\|Kuickshow\|KuickShow\|KUIViewer\|Kup\|KUserFeedback\|KWallet\|kwallet-query\|kwalletd\|KWalletManager\|KWatchGnuPG\|Kwave\|KWeather\|KWidgetsAddons\|KwikDisk\|KWin\|KWord\|KWordQuiz\|KWrite\|KXStitch\)\([^[:alnum:]]\)/\1er \2\3\4\5/g
s/\b\([Ll]\)a \(\|\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(Kubuntu Focus\)\([^[:alnum:]]\)/\2\3\4\5/g
s/\b\([Pp]\)el \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(7z\)\([^[:alnum:]]\)/\1er \2\3\4\5/g
#
s/\b\([Aa]\)l \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(LabPlot\|LabPlot2\|LAME\|LanguageTool\|lasso\|Last.fm\|latex\|LaTeX\|Latte\|lattice\|Launchpad\|LDAP\|LDAPS\|Ledger\|Libarchive\|LibreOffice\|Libretro\|Licentia\|LDAP\|LDAPS\|Lightroom\|LIGO\|LightDM\|Lilo\|lin_guider\|Lin-Guider\|Linux\|Little\|Livechat\|LLa[MV]A\|Llama\|Llama[23456789]\|LLDB\|lldb-mi\|LLM\|loca[lt]e\|lock\|lockd\|logcat\|logger\|logind\|Logo\|LoginD\|Lokalize\|Lottie\|LottieFiles\|Lotus\|LSkat\|LSP\|Lua\|Lutris\|LyteBox\|LyX\|LZMA\|Mac\|Magic\|Magicoder\|Magnatune\|Mail\|mailfilteragent\|Mahjongg\|Maildir\|[Mm]ake\|man\|Mangonel\|Maniphest\|MapCrunch\|Marble\|MarkNote\|[Mm]arlin\|[Mm]assif\|Mastodon\|Material\|MathΣtral\|MathJax\|Matlab\|Matrix\|MauiKit\|Maui\|MauiManServer\|Maxima\|MBox\|MBoxImporter\|MediaWiki\|MegaDolphin\|meinproc[56]\|Melon\|MinT\|[Mm]elt\|Memcheck\|memcpy\|mencoder\|Mercurial\|Merkuro\|merge\|Meson\|MesonManager\|Messenger\|Meta Print Spool\|Metalink\|[M̀m]icrobe\|Microsoft\|MiddleClickLoader\|Milou\|MindMap\|Minetest\|MinGW\|minicli\|MINIX\|Minuet\|Mi[sx]tral\|MistralLite\|mkdir\|mkinitcpio\|mkisofs\|MLT\|mmap\|Mobipocket\|ModemManager\|Money\|monopd\|moondream[23456789]\|[Mm]orse\|move\|Moving\|Mozhi\|Mozilla\|mplayer\|MPlayer\|MPRIS2\|mpv\|MS Project\|msgfmt\|msgmerge\|ms_print\|MTP\|MUD\|MultiMarkdown\|MultiStar\|Muon\|MuseScore\|MusicBrainz\|mutex\|muxer\|Mycroft\|MyPaint\|mysql\|MySQL\|ncdump\|NED\|NeoChat\|Nepomuk\|Netscape\|Netscreen\|NetworkManager\|Next[Cc]loud\|Nexus\|nginx\|[Nn]inja\|NKS\|noatun\|normalize\|Nota\|Notae\|note\|Nous Hermes\|p7zip\|Pac-Man\|PackageKit\|Palapeli\|[Pp]andoc\|Panorama\|PaperKey\|par2\|Pareto\|Parley\|parsha\|Partitioner\|Pascale\|Patreon\|pdflatex\|pdfpages\|pdfsync\|pdftk\|Peek\|PeerTube\|[Pp]erforce\|Peruse\|PFS\|Phabricator\|PHD2\|phd2logview\|Phi\|Phonon\|Photobash\|Photos\|Photoshop\|PhotoSwipe\|PHPUnit\|Picmi\|Pidgin\|Pikasso\|pimdataexporter\|Pine64\|Pinebook\|Pine[Pp]hone\|PineTab\|ping\|Pinterest\|pip3\|Pipe[dr]\|PipeWire\|Piwigo\|Pix\|Piwik\|Pixelfed\|Plan\|Planck\|PLANCK\|Planner\|PlantUML\|PlanWork\|Plasma\|plasma-mobile\|PlasmaLogin\|plasmapkg2\|plasmashell\|PlasmaTube\|Plastik\|Playdar\|Plymouth\|pngquant\|PolicyKit\|Pology\|Pomodoro\|pool\|Poppler\|Portable\|Portfolio\|PostgreSQL\|postmarketOS\|[Pp]ost[Ss]cript\|PowerDevil\|Power[Pp]lant\|PowerTop\|preparetips[56]\|prettier\|Progressive\|ProPhotoRGB\|Proton\|ProtonDB\|PS\|psselect\|pstops\|PTY\|PulseAudio\|PuMoKu\|Purpose\|pvfViewer\|PyQt\|[Pp]ython\|[Pp]ython[23]\|pyuic[56]\|QADS\|Qalculate\|QApplication\|QCA\|QCommandLineParser\|QEMU\|QFileDialog\|QGit\|QGraphicsView\|QGuiApplication\|QImageWriter\|QKeychain\|QMake\|qmljs\|QObject\|QPDF\|QPGME\|Qrca\|QSaveFile\|Qt\|QtChart\|QtComponents\|QtCurve\|QtHelp\|QtQuick\|QtWebEngine\|Quicken\|QuickConnect\|Quickstates\|quota\|Quotient\|Qwen\|Qwen[23456789]\|QWidget\|QwQ\|R\|Rajce\|Rattlesnake\|Raven\|RawTherapee\|readcd\|Real Media\|Redshift\|Refer\|[Rr]eplicode\|RepRap\|Rest\|reStructuredText\|ReText\|RetroArch\|RetroPad\|REUSE\|Review Board\|reviewboard\|rio\|\.rkward\|RKward\|RKWard\|RMarkdown\|Rocs\|Rocke[rt]\|RocketChat\|Roliserver\|Rolisteam\|Roy\|RPG\|RSIBreak\|rsync\|RTC\|Ruby\|Rufus\|Ruqola\|Runner\|Rust\|S Pen\|Sage\|Sailor[23456789]\|SAM2\|Samba\|SANE\|Scilab\|scour\|SDDM\|[Ss]dk\|SeamlessM4T\|SecretService\|SecretValue\|sed\|[Ss]elenium\|[Ss]endmail\|sesameResolver\|Sextraction\|Sextractor\|shader\|Sheets\|Shelf\|shell\|ShieldGemma\|Showfoto\|Shutter\|[Ss]ieve\|sieveeditor\|SigG\|Simbad\|SimpleScreenRecorder\|Sink\|systemdGenie\|Sixel\|Skanlite\|Skanpage\|Skrooge\|Skladnik\|smb\|Smb4K\|S\/MIME\|SmolLM[23456789]\|SMTP\|SmugMug\|Snore\|SnoreNotify\|Snowflake\|Solid\|Sonicwall\|Soundcloud\|Source\|Spacebar\|Spectacle\|SQLCoder\|Sqlite\|SQLite\|src\|SSH\|ssh-add\|sshfs\|Stage\|Star\|Steam\|SteamOS\|Stellarium\|StellarMate\|StellarSolver\|Step\|Stopmotion\|StretchPlayer\|Strike\|subreddit\|SubRipper\|Substance\|Subtitle Composer\|[Ss]ubversion\|sudo\|SV[GN]\|SymbolEditor\|Symmy\|Synaptic\|syslog\|syspath\|[Ss]ystemd\|SystemLog\|Sway\|Tagged\|TAlbum\|Tangram\|TaskJuggler\|teamd\|Technology\|Telegram\|[Tt]elepathy\|Tellico\|Telly\|Template\|Tesseract\|Tetris\|TeX\|TextEditor\|The\|Thunderbird\|Thunderbolt\|TinyLlama\|TLS\|TNamed\|Tok\|Tokodon\|ToolboX\|top\|TOTP\|trait\|transcode\|Translate-Toolkit\|trixel\|Trojitá\|Tron\|Tülu\|Tumbleweed\|tun\|TurtleScript\|Tuxpaint\|Twitter\|unarchiver\|unpack_thumb\|unrar\|Vail\|Vakzination\|Valgrind\|VcdImager\|vcdxrip\|Vegastrike\|venv\|[Vv]era++\|[Vv]i\|[Vv]im\|VIPS\|VirtualBox\|virtualenv\|VLC\|VmSize\|VNC\|VokoscreenNG\|Vorbis\|VMap\|VOSK\|vsync\|Vvave\|Wacom\|[Ww]aydroid\|Wake\|WashiPad\|Watney\|Wayland\|Weather\|WebEngine\|webhook\|WebKit\|[Ww]eboob\|WebRTC\|Weston\|Will\|Windows\|WINE\|Wine\|winid\|WinPT\|WireGuard\|wireplumber\|Whisper\|Wizard LM\|Wizard Vicuna\|Wolfram\|[Ww]oob\|Word\|WordNet\|WordPerfect\|Words\|x.org\|XDebug\|XFig\|xfreerdp\|Xine\|xjdic\|xmllint\|Xplanet\|XSudoku\|XVideo\|XWayland\|Yahtzee\|Yakuake\|YaST\|You[Tt]ube\|ytmusicapi\|WeChat\|xdotool\|Xming\|Yi\|Zanshin\|Zephyr\|Zeroconf\|Zotero\|Zstd\)\([^[:alnum:]]\)/\1 \2\3\4\5/g
s/\b\([Ee]\)l\(s\|\) \(\|\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(LabPlot\|LabPlot2\|LAME\|LanguageTool\|lasso\|Last.fm\|latex\|LaTeX\|Latte\|lattice\|Launchpad\|LDAP\|LDAPS\|Ledger\|Libarchive\|LibreOffice\|Libretro\|Licentia\|LDAP\|LDAPS\|Lightroom\|LIGO\|LightDM\|Lilo\|lin_guider\|Lin-Guider\|Linux\|Little\|Livechat\|LLa[MV]A\|Llama\|Llama[23456789]\|LLDB\|lldb-mi\|LLM\|loca[lt]e\|lock\|lockd\|logcat\|logger\|logind\|Logo\|LoginD\|Lokalize\|Lottie\|LottieFiles\|Lotus\|LSkat\|LSP\|Lua\|Lutris\|LyteBox\|LyX\|LZMA\|Mac\|Magic\|Magicoder\|Magnatune\|Mail\|mailfilteragent\|Mahjongg\|Maildir\|[Mm]ake\|man\|Mangonel\|Maniphest\|MapCrunch\|Marble\|MarkNote\|[Mm]arlin\|[Mm]assif\|Mastodon\|Material\|MathΣtral\|MathJax\|Matlab\|Matrix\|Maui\|MauiKit\|MauiManServer\|Maxima\|MBox\|MBoxImporter\|MediaWiki\|MegaDolphin\|meinproc[56]\|Melon\|MinT\|[Mm]elt\|Memcheck\|memcpy\|mencoder\|Mercurial\|Merkuro\|merge\|Meson\|MesonManager\|Messenger\|Meta Print Spool\|Metalink\|[M̀m]icrobe\|Microsoft\|MiddleClickLoader\|Milou\|MindMap\|Minetest\|MinGW\|minicli\|MINIX\|Minuet\|Mi[sx]tral\|MistralLite\|mkdir\|mkinitcpio\|mkisofs\|MLT\|mmap\|Mobipocket\|ModemManager\|Money\|monopd\|moondream[23456789]\|[Mm]orse\|move\|Moving\|Mozhi\|Mozilla\|mplayer\|MPlayer\|MPRIS2\|mpv\|MS Project\|msgfmt\|msgmerge\|ms_print\|MTP\|MUD\|MultiMarkdown\|MultiStar\|Muon\|MuseScore\|MusicBrainz\|mutex\|muxer\|Mycroft\|MyPaint\|mysql\|MySQL\|ncdump\|NED\|NeoChat\|Nepomuk\|Netscape\|Netscreen\|NetworkManager\|Next[Cc]loud\|Nexus\|nginx\|[Nn]inja\|NKS\|noatun\|normalize\|Nota\|Notae\|note\|Nous Hermes\|p7zip\|Pac-Man\|PackageKit\|Palapeli\|[Pp]andoc\|Panorama\|PaperKey\|par2\|Pareto\|Parley\|parsha\|Partitioner\|Pascale\|Patreon\|pdflatex\|pdfpages\|pdfsync\|pdftk\|Peek\|PeerTube\|[Pp]erforce\|Peruse\|PFS\|Phabricator\|PHD2\|phd2logview\|Phi\|Phonon\|Photobash\|Photos\|Photoshop\|PhotoSwipe\|PHPUnit\|Picmi\|Pidgin\|Pikasso\|pimdataexporter\|Pine64\|Pinebook\|Pine[Pp]hone\|PineTab\|ping\|Pinterest\|pip3\|Pipe[dr]\|PipeWire\|Piwigo\|Pix\|Piwik\|Pixelfed\|Plan\|Planck\|PLANCK\|Planner\|PlantUML\|PlanWork\|Plasma\|plasma-mobile\|PlasmaLogin\|plasmapkg2\|plasmashell\|PlasmaTube\|Plastik\|Playdar\|Plymouth\|pngquant\|PolicyKit\|Pology\|Pomodoro\|pool\|Poppler\|Portable\|Portfolio\|PostgreSQL\|postmarketOS\|[Pp]ost[Ss]cript\|PowerDevil\|Power[Pp]lant\|PowerTop\|preparetips[56]\|prettier\|Progressive\|ProPhotoRGB\|Proton\|ProtonDB\|PS\|psselect\|pstops\|PTY\|PulseAudio\|PuMoKu\|Purpose\|pvfViewer\|PyQt\|[Pp]ython\|[Pp]ython[23]\|pyuic[56]\|QADS\|Qalculate\|QApplication\|QCA\|QCommandLineParser\|QEMU\|QFileDialog\|QGit\|QGraphicsView\|QGuiApplication\|QImageWriter\|QKeychain\|QMake\|qmljs\|QObject\|QPDF\|QPGME\|Qrca\|QSaveFile\|Qt\|QtChart\|QtComponents\|QtCurve\|QtHelp\|QtQuick\|QtWebEngine\|Quicken\|QuickConnect\|Quickstates\|quota\|Quotient\|Qwen\|Qwen[23456789]\|QWidget\|QwQ\|R\|Rajce\|Rattlesnake\|Raven\|RawTherapee\|readcd\|Real Media\|Redshift\|Refer\|[Rr]eplicode\|RepRap\|Rest\|reStructuredText\|ReText\|RetroArch\|RetroPad\|REUSE\|Review Board\|reviewboard\|rio\|\.rkward\|RKward\|RKWard\|RMarkdown\|Rocs\|Rocke[rt]\|RocketChat\|Roliserver\|Rolisteam\|Roy\|RPG\|RSIBreak\|rsync\|RTC\|Ruby\|Rufus\|Ruqola\|Runner\|Rust\|S Pen\|Sage\|Sailor[23456789]\|SAM2\|Samba\|SANE\|Scilab\|scour\|SDDM\|[Ss]dk\|SeamlessM4T\|SecretService\|SecretValue\|sed\|[Ss]elenium\|[Ss]endmail\|sesameResolver\|Sextraction\|Sextractor\|shader\|Sheets\|Shelf\|shell\|ShieldGemma\|Showfoto\|Shutter\|[Ss]ieve\|sieveeditor\|SigG\|Simbad\|SimpleScreenRecorder\|Sink\|systemdGenie\|Sixel\|Skanlite\|Skanpage\|Skrooge\|Skladnik\|smb\|Smb4K\|S\/MIME\|SmolLM[23456789]\|SMTP\|SmugMug\|Snore\|SnoreNotify\|Snowflake\|Solid\|Sonicwall\|Soundcloud\|Source\|Spacebar\|Spectacle\|SQLCoder\|Sqlite\|SQLite\|src\|SSH\|ssh-add\|sshfs\|Stage\|Star\|Steam\|SteamOS\|Stellarium\|StellarMate\|StellarSolver\|Step\|Stopmotion\|StretchPlayer\|Strike\|subreddit\|SubRipper\|Substance\|Subtitle Composer\|[Ss]ubversion\|sudo\|SV[GN]\|SymbolEditor\|Symmy\|Synaptic\|syslog\|syspath\|[Ss]ystemd\|SystemLog\|Sway\|Tagged\|TAlbum\|Tangram\|TaskJuggler\|teamd\|Technology\|Telegram\|[Tt]elepathy\|Tellico\|Telly\|Template\|Tesseract\|Tetris\|TeX\|TextEditor\|The\|Thunderbird\|Thunderbolt\|TinyLlama\|TLS\|TNamed\|Tok\|Tokodon\|ToolboX\|top\|TOTP\|trait\|transcode\|Translate-Toolkit\|trixel\|Trojitá\|Tron\|Tülu\|Tumbleweed\|tun\|TurtleScript\|Tuxpaint\|Twitter\|unarchiver\|unpack_thumb\|unrar\|Vail\|Vakzination\|Valgrind\|VcdImager\|vcdxrip\|Vegastrike\|venv\|[Vv]era++\|[Vv]i\|[Vv]im\|VIPS\|VirtualBox\|virtualenv\|VLC\|VmSize\|VNC\|VokoscreenNG\|Vorbis\|VMap\|VOSK\|vsync\|Vvave\|Wacom\|[Ww]aydroid\|Wake\|WashiPad\|Watney\|Wayland\|Weather\|WebEngine\|webhook\|WebKit\|[Ww]eboob\|WebRTC\|Weston\|Will\|Windows\|WINE\|Wine\|winid\|WinPT\|WireGuard\|wireplumber\|Whisper\|Wizard LM\|Wizard Vicuna\|Wolfram\|[Ww]oob\|Word\|WordNet\|WordPerfect\|Words\|x.org\|XDebug\|XFig\|xfreerdp\|Xine\|xjdic\|xmllint\|XSudoku\|XVideo\|XWayland\|Yahtzee\|Yakuake\|YaST\|You[Tt]ube\|ytmusicapi\|WeChat\|xdotool\|Xming\|Yi\|Zanshin\|Zephyr\|Zeroconf\|Zotero\|Zstd\)\([^[:alnum:]]\)/\3\4\5\6/g
s/\b\([Dd]\)el\(s\|\) \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(LabPlot\|LabPlot2\|LAME\|LanguageTool\|lasso\|Last.fm\|latex\|LaTeX\|Latte\|lattice\|Launchpad\|LDAP\|LDAPS\|Ledger\|Libarchive\|LibreOffice\|Libretro\|Licentia\|LDAP\|LDAPS\|Lightroom\|LIGO\|LightDM\|Lilo\|lin_guider\|Lin-Guider\|Linux\|Little\|Livechat\|LLa[MV]A\|Llama\|Llama[23456789]\|LLDB\|lldb-mi\|LLM\|loca[lt]e\|lock\|lockd\|logcat\|logger\|logind\|Logo\|LoginD\|Lokalize\|Lottie\|LottieFiles\|Lotus\|LSkat\|LSP\|Lua\|Lutris\|LyteBox\|LyX\|LZMA\|Mac\|Magic\|Magicoder\|Magnatune\|Mail\|mailfilteragent\|Mahjongg\|Maildir\|[Mm]ake\|man\|Mangonel\|Maniphest\|MapCrunch\|Marble\|MarkNote\|[Mm]arlin\|[Mm]assif\|Mastodon\|Material\|MathΣtral\|MathJax\|Matlab\|Matrix\|Maui\|MauiKit\|MauiManServer\|Maxima\|MBox\|MBoxImporter\|MediaWiki\|MegaDolphin\|meinproc[56]\|Melon\|MinT\|[Mm]elt\|Memcheck\|memcpy\|mencoder\|Mercurial\|Merkuro\|merge\|Meson\|MesonManager\|Messenger\|Meta Print Spool\|Metalink\|[M̀m]icrobe\|Microsoft\|MiddleClickLoader\|Milou\|MindMap\|Minetest\|MinGW\|minicli\|MINIX\|Minuet\|Mi[sx]tral\|MistralLite\|mkdir\|mkinitcpio\|mkisofs\|MLT\|mmap\|Mobipocket\|ModemManager\|Money\|monopd\|moondream[23456789]\|[Mm]orse\|move\|Moving\|Mozhi\|Mozilla\|mplayer\|MPlayer\|MPRIS2\|mpv\|MS Project\|msgfmt\|msgmerge\|ms_print\|MTP\|MUD\|MultiMarkdown\|MultiStar\|Muon\|MuseScore\|MusicBrainz\|mutex\|muxer\|Mycroft\|MyPaint\|mysql\|MySQL\|ncdump\|NED\|NeoChat\|Nepomuk\|Netscape\|Netscreen\|NetworkManager\|Next[Cc]loud\|Nexus\|nginx\|[Nn]inja\|NKS\|noatun\|normalize\|Nota\|Notae\|note\|Nous Hermes\|p7zip\|Pac-Man\|PackageKit\|Palapeli\|[Pp]andoc\|Panorama\|PaperKey\|par2\|Pareto\|Parley\|parsha\|Partitioner\|Pascale\|Patreon\|pdflatex\|pdfpages\|pdfsync\|pdftk\|Peek\|PeerTube\|[Pp]erforce\|Peruse\|PFS\|Phabricator\|PHD2\|phd2logview\|Phi\|Phonon\|Photobash\|Photos\|Photoshop\|PhotoSwipe\|PHPUnit\|Picmi\|Pidgin\|Pikasso\|pimdataexporter\|Pine64\|Pinebook\|Pine[Pp]hone\|PineTab\|ping\|Pinterest\|pip3\|Pipe[dr]\|PipeWire\|Piwigo\|Pix\|Piwik\|Pixelfed\|Plan\|Planck\|PLANCK\|Planner\|PlantUML\|PlanWork\|Plasma\|plasma-mobile\|PlasmaLogin\|plasmapkg2\|plasmashell\|PlasmaTube\|Plastik\|Playdar\|Plymouth\|pngquant\|PolicyKit\|Pology\|Pomodoro\|pool\|Poppler\|Portable\|Portfolio\|PostgreSQL\|postmarketOS\|[Pp]ost[Ss]cript\|PowerDevil\|Power[Pp]lant\|PowerTop\|preparetips[56]\|prettier\|Progressive\|ProPhotoRGB\|Proton\|ProtonDB\|PS\|psselect\|pstops\|PTY\|PulseAudio\|PuMoKu\|Purpose\|pvfViewer\|PyQt\|[Pp]ython\|[Pp]ython[23]\|pyuic[56]\|QADS\|Qalculate\|QApplication\|QCA\|QCommandLineParser\|QEMU\|QFileDialog\|QGit\|QGraphicsView\|QGuiApplication\|QImageWriter\|QKeychain\|QMake\|qmljs\|QObject\|QPDF\|QPGME\|Qrca\|QSaveFile\|Qt\|QtChart\|QtComponents\|QtCurve\|QtHelp\|QtQuick\|QtWebEngine\|Quicken\|QuickConnect\|Quickstates\|quota\|Quotient\|Qwen\|Qwen[23456789]\|QWidget\|QwQ\|R\|Rajce\|Rattlesnake\|Raven\|RawTherapee\|readcd\|Real Media\|Redshift\|Refer\|[Rr]eplicode\|RepRap\|Rest\|reStructuredText\|ReText\|RetroArch\|RetroPad\|REUSE\|Review Board\|reviewboard\|rio\|\.rkward\|RKward\|RKWard\|RMarkdown\|Rocs\|Rocke[rt]\|RocketChat\|Roliserver\|Rolisteam\|Roy\|RPG\|RSIBreak\|rsync\|RTC\|Ruby\|Rufus\|Ruqola\|Runner\|Rust\|S Pen\|Sage\|Sailor[23456789]\|SAM2\|Samba\|SANE\|Scilab\|scour\|SDDM\|[Ss]dk\|SeamlessM4T\|SecretService\|SecretValue\|sed\|[Ss]elenium\|[Ss]endmail\|sesameResolver\|Sextraction\|Sextractor\|shader\|Sheets\|Shelf\|shell\|ShieldGemma\|Showfoto\|Shutter\|[Ss]ieve\|sieveeditor\|SigG\|Simbad\|SimpleScreenRecorder\|Sink\|systemdGenie\|Sixel\|Skanlite\|Skanpage\|Skrooge\|Skladnik\|smb\|Smb4K\|S\/MIME\|SmolLM[23456789]\|SMTP\|SmugMug\|Snore\|SnoreNotify\|Snowflake\|Solid\|Sonicwall\|Soundcloud\|Source\|Spacebar\|Spectacle\|SQLCoder\|Sqlite\|SQLite\|src\|SSH\|ssh-add\|sshfs\|Stage\|Star\|Steam\|SteamOS\|Stellarium\|StellarMate\|StellarSolver\|Step\|Stopmotion\|StretchPlayer\|Strike\|subreddit\|SubRipper\|Substance\|Subtitle Composer\|[Ss]ubversion\|sudo\|SV[GN]\|SymbolEditor\|Symmy\|Synaptic\|syslog\|syspath\|[Ss]ystemd\|SystemLog\|Sway\|Tagged\|TAlbum\|Tangram\|TaskJuggler\|teamd\|Technology\|Telegram\|[Tt]elepathy\|Tellico\|Telly\|Template\|Tesseract\|Tetris\|TeX\|TextEditor\|The\|Thunderbird\|Thunderbolt\|TinyLlama\|TLS\|TNamed\|Tok\|Tokodon\|ToolboX\|top\|TOTP\|trait\|transcode\|Translate-Toolkit\|trixel\|Trojitá\|Tron\|Tülu\|Tumbleweed\|tun\|TurtleScript\|Tuxpaint\|Twitter\|unarchiver\|unpack_thumb\|unrar\|Vail\|Vakzination\|Valgrind\|VcdImager\|vcdxrip\|Vegastrike\|venv\|[Vv]era++\|[Vv]i\|[Vv]im\|VIPS\|VirtualBox\|virtualenv\|VLC\|VmSize\|VNC\|VokoscreenNG\|Vorbis\|VMap\|VOSK\|vsync\|Vvave\|Wacom\|[Ww]aydroid\|Wake\|WashiPad\|Watney\|Wayland\|Weather\|WebEngine\|webhook\|WebKit\|[Ww]eboob\|WebRTC\|Weston\|Will\|Windows\|WINE\|Wine\|winid\|WinPT\|WireGuard\|wireplumber\|Whisper\|Wizard LM\|Wizard Vicuna\|Wolfram\|[Ww]oob\|Word\|WordNet\|WordPerfect\|Words\|x.org\|XDebug\|XFig\|xfreerdp\|Xine\|xjdic\|xmllint\|XSudoku\|XVideo\|XWayland\|Yahtzee\|Yakuake\|YaST\|You[Tt]ube\|ytmusicapi\|WeChat\|xdotool\|Xming\|Yi\|Zanshin\|Zephyr\|Zeroconf\|Zotero\|Zstd\)\([^[:alnum:]]\)/\1e \3\4\5\6/g
s/\b\([Pp]\)el \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(LabPlot\|LabPlot2\|LAME\|LanguageTool\|lasso\|Last.fm\|latex\|LaTeX\|Latte\|lattice\|Launchpad\|LDAP\|LDAPS\|Ledger\|Libarchive\|LibreOffice\|Libretro\|Licentia\|LDAP\|LDAPS\|Lightroom\|LIGO\|LightDM\|Lilo\|lin_guider\|Lin-Guider\|Linux\|Little\|Livechat\|LLa[MV]A\|Llama\|Llama[23456789]\|LLDB\|lldb-mi\|LLM\|loca[lt]e\|lock\|lockd\|logcat\|logger\|logind\|Logo\|LoginD\|Lokalize\|Lottie\|LottieFiles\|Lotus\|LSkat\|LSP\|Lua\|Lutris\|LyteBox\|LyX\|LZMA\|Mac\|Magic\|Magicoder\|Magnatune\|Mail\|mailfilteragent\|Mahjongg\|Maildir\|[Mm]ake\|man\|Mangonel\|Maniphest\|MapCrunch\|Marble\|MarkNote\|[Mm]arlin\|[Mm]assif\|Mastodon\|Material\|MathΣtral\|MathJax\|Matlab\|Matrix\|Maui\|MauiKit\|MauiManServer\|Maxima\|MBox\|MBoxImporter\|MediaWiki\|MegaDolphin\|meinproc[56]\|Melon\|MinT\|[Mm]elt\|memcpy\|Memcheck\|mencoder\|Mercurial\|Merkuro\|merge\|Meson\|MesonManager\|Messenger\|Meta Print Spool\|Metalink\|[M̀m]icrobe\|Microsoft\|MiddleClickLoader\|Milou\|MindMap\|Minetest\|MinGW\|minicli\|MINIX\|Minuet\|Mi[sx]tral\|MistralLite\|mkdir\|mkinitcpio\|mkisofs\|MLT\|mmap\|Mobipocket\|ModemManager\|Money\|monopd\|moondream[23456789]\|[Mm]orse\|move\|Moving\|Mozhi\|Mozilla\|mplayer\|MPlayer\|MPRIS2\|mpv\|MS Project\|msgfmt\|msgmerge\|ms_print\|MTP\|MUD\|MultiMarkdown\|MultiStar\|Muon\|MuseScore\|MusicBrainz\|mutex\|muxer\|Mycroft\|MyPaint\|mysql\|MySQL\|ncdump\|NED\|NeoChat\|Nepomuk\|Netscape\|Netscreen\|NetworkManager\|Next[Cc]loud\|Nexus\|nginx\|[Nn]inja\|NKS\|noatun\|normalize\|Nota\|Notae\|note\|Nous Hermes\|p7zip\|Pac-Man\|PackageKit\|Palapeli\|[Pp]andoc\|Panorama\|PaperKey\|par2\|Pareto\|Parley\|parsha\|Partitioner\|Pascale\|Patreon\|pdflatex\|pdfpages\|pdfsync\|pdftk\|Peek\|PeerTube\|[Pp]erforce\|Peruse\|PFS\|Phabricator\|PHD2\|phd2logview\|Phi\|Phonon\|Photobash\|Photos\|Photoshop\|PhotoSwipe\|PHPUnit\|Picmi\|Pidgin\|Pikasso\|pimdataexporter\|Pine64\|Pinebook\|Pine[Pp]hone\|PineTab\|ping\|Pinterest\|pip3\|Pipe[dr]\|PipeWire\|Piwigo\|Pix\|Piwik\|Pixelfed\|Plan\|Planck\|PLANCK\|Planner\|PlantUML\|PlanWork\|Plasma\|plasma-mobile\|PlasmaLogin\|plasmapkg2\|plasmashell\|PlasmaTube\|Plastik\|Playdar\|Plymouth\|pngquant\|PolicyKit\|Pology\|Pomodoro\|pool\|Poppler\|Portable\|Portfolio\|PostgreSQL\|postmarketOS\|[Pp]ost[Ss]cript\|PowerDevil\|Power[Pp]lant\|PowerTop\|preparetips[56]\|prettier\|Progressive\|ProPhotoRGB\|Proton\|ProtonDB\|PS\|psselect\|pstops\|PTY\|PulseAudio\|PuMoKu\|Purpose\|pvfViewer\|PyQt\|[Pp]ython\|[Pp]ython[23]\|pyuic[56]\|QADS\|Qalculate\|QApplication\|QCA\|QCommandLineParser\|QEMU\|QFileDialog\|QGit\|QGraphicsView\|QGuiApplication\|QImageWriter\|QKeychain\|QMake\|qmljs\|QObject\|QPDF\|QPGME\|Qrca\|QSaveFile\|Qt\|QtChart\|QtComponents\|QtCurve\|QtHelp\|QtQuick\|QtWebEngine\|Quicken\|QuickConnect\|Quickstates\|quota\|Quotient\|Qwen\|Qwen[23456789]\|QWidget\|QwQ\|R\|Rajce\|Rattlesnake\|Raven\|RawTherapee\|readcd\|Real Media\|Redshift\|Refer\|[Rr]eplicode\|RepRap\|Rest\|reStructuredText\|ReText\|RetroArch\|RetroPad\|REUSE\|Review Board\|reviewboard\|rio\|\.rkward\|RKward\|RKWard\|RMarkdown\|Rocs\|Rocke[rt]\|RocketChat\|Roliserver\|Rolisteam\|Roy\|RPG\|RSIBreak\|rsync\|RTC\|Ruby\|Rufus\|Ruqola\|Runner\|Rust\|S Pen\|Sage\|Sailor[23456789]\|SAM2\|Samba\|SANE\|Scilab\|scour\|SDDM\|[Ss]dk\|SeamlessM4T\|SecretService\|SecretValue\|sed\|[Ss]elenium\|[Ss]endmail\|sesameResolver\|Sextraction\|Sextractor\|shader\|Sheets\|Shelf\|shell\|ShieldGemma\|Showfoto\|Shutter\|[Ss]ieve\|sieveeditor\|SigG\|Simbad\|SimpleScreenRecorder\|Sink\|systemdGenie\|Sixel\|Skanlite\|Skanpage\|Skrooge\|Skladnik\|smb\|Smb4K\|S\/MIME\|SmolLM[23456789]\|SMTP\|SmugMug\|Snore\|SnoreNotify\|Snowflake\|Solid\|Sonicwall\|Soundcloud\|Source\|Spacebar\|Spectacle\|SQLCoder\|Sqlite\|SQLite\|src\|SSH\|ssh-add\|sshfs\|Stage\|Star\|Steam\|SteamOS\|Stellarium\|StellarMate\|StellarSolver\|Step\|Stopmotion\|StretchPlayer\|Strike\|subreddit\|SubRipper\|Substance\|Subtitle Composer\|[Ss]ubversion\|sudo\|SV[GN]\|SymbolEditor\|Symmy\|Synaptic\|syslog\|syspath\|[Ss]ystemd\|SystemLog\|Sway\|Tagged\|TAlbum\|Tangram\|TaskJuggler\|teamd\|Technology\|Telegram\|[Tt]elepathy\|Tellico\|Telly\|Template\|Tesseract\|Tetris\|TeX\|TextEditor\|The\|Thunderbird\|Thunderbolt\|TinyLlama\|TLS\|TNamed\|Tok\|Tokodon\|ToolboX\|top\|TOTP\|trait\|transcode\|Translate-Toolkit\|trixel\|Trojitá\|Tron\|Tülu\|Tumbleweed\|tun\|TurtleScript\|Tuxpaint\|Twitter\|unarchiver\|unpack_thumb\|unrar\|Vail\|Vakzination\|Valgrind\|VcdImager\|vcdxrip\|Vegastrike\|venv\|[Vv]era++\|[Vv]i\|[Vv]im\|VIPS\|VirtualBox\|virtualenv\|VLC\|VmSize\|VNC\|VokoscreenNG\|Vorbis\|VMap\|VOSK\|vsync\|Vvave\|Wacom\|[Ww]aydroid\|Wake\|WashiPad\|Watney\|Wayland\|Weather\|WebEngine\|webhook\|WebKit\|[Ww]eboob\|WebRTC\|Weston\|Will\|Windows\|WINE\|Wine\|winid\|WinPT\|WireGuard\|wireplumber\|Whisper\|Wizard LM\|Wizard Vicuna\|Wolfram\|[Ww]oob\|Word\|WordNet\|WordPerfect\|Words\|x.org\|XDebug\|XFig\|xfreerdp\|Xine\|xjdic\|xmllint\|Xplanet\|XSudoku\|XVideo\|XWayland\|Yahtzee\|Yakuake\|YaST\|You[Tt]ube\|ytmusicapi\|WeChat\|xdotool\|Xming\|Yi\|Zanshin\|Zephyr\|Zeroconf\|Zotero\|Zstd\)\([^[:alnum:]]\)/\1er \2\3\4\5/g

 #
s/\b\([Dd]\)e l'\(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(Final Fantasy\|HDR\|mplayer\|Scilab\|Scratchpad\|Scribus\|ScriptEngine\|SDDM\|SDR\|sflphone-client-kde\|Skanlite\|Skanpage\|sketchbook\|[Ss]krooge\|Skype\|SkySafari\|Slack\|SlackBridge\|Slimbook\|SMART\|Smoothie\|[Ss]nap\|Spacebar\|Spectacle\|Spectral\|SPHINX\|Sphinx\|Spirit\|sqcipher\|SQL\|SQLite\|Stable\|Stage\|StarCoder\|StarCoder[23456789]\|Stargate\|Starling\|Station\|Steam\|Stellarium\|StellarMate\|StellarSolver\|Step\|StepCore\|Stockfish\|Stopmotion\|SVN\|X11\|Xming\|XSudoku\)\([^[:alnum:]]\)/\1e \2\3\4\5/g
s/\b\([Dd]\)e l'\(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(Ad[Bb]lock\|Academy\|Accerciser\|AccountWizard\|ACDSee\|akonadiserverrc\|Acrobat\|Actiona\|Active\|Adium\|Affinity\|Agrovoc\|Akkoma\|Akonadi\|akonadictl\|Akregator\|Alkimia\|Alligator\|AllowedIP\|Almanac\|Alpaka\|alphagrad\|Amarok\|amarokcollectionscanner\|Amazon\|Amor\|Ampache\|Analitza\|Analyze\|Anbox\|Android\|Angelfish\|ANSVR\|Apache\|AppData\|Apper\|AppImage\|Apple\|Apport\|[Aa]ppstream\|AqBanking\|Arc[ah]\|Arctic\|Ard&uino\|Arduino\|Arianna\|Ark\|Arkade\|ART\|ADSK\|Associated\|ASTAP\|Astrobin\|Athene\|Audioscrobbler\|AudioTube\|Configuració del sistema\|Artikulate\|ask\|Assimp\|Astra\|[Aa]strometry.net\|AtCore\|Atelier\|Atlantik\|Audex\|AUR\|Aura\|Aurorae\|Autocrypt\|automodule\|AVPlayer\|AWS\|Aya\|EDR\|EEPROM\|EFFECT\|Ekiga\|Ekos\|EkosLive\|Elisa\|Eloquens\|Emacs\|eMovix\|en_US\|Enfuse\|EnigMail\|EnviroInfo\|Epic\|ESLint\|Estació\|Etcher\|etesyncItem\|Evolution\|Evolution[123]\|EWS\|EXAONE\|Excel\|Exchange\|[Ee]xif[Tt]ool\|Exiv2\|Explorador d'icones\|Explorer\|extragear\|FTP\|GPG\|Haruna\|Heroic\|Hessiana\|HFR\|High\|HOTP\|Hugo\|iCalendar\|ICC\|Icedove\|ICQ\|IFrame\|Ikona\|ImageMagick\|Image\|Image[Ss]hack\|IMAP\|Imgur\|ImportWizard\|iNaturalist\|Index\|INDI\|INDIHub\|Info-zip\|initramfs\|Inkscape\|inotify\|input\|InputMethod\|inputVectorData\|inputVectorTime\|InSight\|Internet\|InternLM[23456789]\|Invidious\|iPad\|iPhone\|iPod\|IPP\|iptables\|IRIDIUM\|Itinerary\|iTip\|iTunes\|o1\|O3-mini\|OAG\|OAuth2\|OBS\|OCR\|OCRA\|OCRAD\|[OK]RA\|Octave\|Office\|Okteta\|[Oo]kular\|Ollama\|OLMo\|OMEMO\|Onedrive\|OnMyShelf\|Open\|OpenAI\|OpenAstronomyLog\|OpenBabel\|OpenCL\|OpenCode\|rOpenColorIO\|OpenConnect\|OpenDivX\|OpenDocument\|OpenGL\|OpenGLES\|OpenHermes\|OpenOffice\|OpenPGP\|Opensearch\|OpenStreetMap\|openSUSE\|OpenTimelineIO\|OpenVPN\|Opera\|Operational\|OProfile\|OptiImage\|Orca\|Origin\|OriginLab\|OSCAR\|OscarSocket\|OSD\|OSM\|OSX\|OTR\|Outlook\|output\|outputVectorPeriodogram\|ownCloud\|oxdvi\|Oxygen\|R\|r2\|RTC\|U-Boot\|UberWriter\|Ubuntu\|uiserver\|UFRaw\|ufw\|Umbrello\|UML\|UML2\|unarchiver\|UNIX\|Unicode\|UnifiedPush\|unpack\|[Uu]nrar\|UFRaw\|Umbrello\|Unarchiver\|Unicode\|UnifiedPush\|Unrar\|update-alternatives\|updatedb\|UserFeedback\|USSD\|xBase\|XDebug\|XFig\|XMMS\|[Xx]planet\|XSudoku\|XWayland\)\([^[:alnum:]]\)/\1'\2\3\4\5/g
s/\b\([Ll]\)'\(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(<[^<]\{1,\}>\|\)\(%1\|%2\|Ad[Bb]lock\|Academy\|Accerciser\|AccountWizard\|ACDSee\|akonadiserverrc\|Acrobat\|Actiona\|Active\|Adium\|Affinity\|Agrovoc\|Akkoma\|Akonadi\|akonadictl\|Akregator\|Alkimia\|Alligator\|AllowedIP\|Almanac\|Alpaka\|alphagrad\|Amarok\|amarokcollectionscanner\|Amazon\|Amor\|Ampache\|Analitza\|Analyze\|Anbox\|Android\|Angelfish\|ANSVR\|Apache\|AppData\|Apper\|AppImage\|Apple\|Apport\|[Aa]ppstream\|AqBanking\|Arc[ah]\|Arctic\|Ard&uino\|Arduino\|Arianna\|Ark\|Arkade\|ART\|ADSK\|Associated\|ASTAP\|Astrobin\|Athene\|Audioscrobbler\|AudioTube\|Configuració del sistema\|Artikulate\|ask\|Assimp\|Astra\|[Aa]strometry.net\|AtCore\|Atelier\|Atlantik\|Audex\|AUR\|Aura\|Aurorae\|Autocrypt\|automodule\|AVPlayer\|AWS\|Aya\|EDR\|EEPROM\|EFFECT\|Ekiga\|Ekos\|EkosLive\|Elisa\|Eloquens\|Emacs\|eMovix\|en_US\|Enfuse\|EnigMail\|EnviroInfo\|Epic\|ESLint\|Estació\|Etcher\|etesyncItem\|Evolution\|Evolution[123]\|EWS\|EXAONE\|Excel\|Exchange\|[Ee]xif[Tt]ool\|Exiv2\|Explorador d'icones\|Explorer\|extragear\|FTP\|GPG\|Haruna\|HDR\|Heroic\|Hessiana\|HFR\|High\|HOTP\|HPLIP\|Hugo\|iCalendar\|ICC\|Icedove\|ICQ\|IFrame\|Ikona\|ImageMagick\|Image\|Image[Ss]hack\|IMAP\|Imgur\|ImportWizard\|iNaturalist\|Index\|INDI\|INDIHub\|Info-zip\|initramfs\|Inkscape\|inotify\|input\|InputMethod\|inputVectorData\|inputVectorTime\|InSight\|Internet\|InternLM[23456789]\|Invidious\|iPhone\|iPad\|iPod\|IPP\|iptables\|IRIDIUM\|Itinerary\|iTip\|iTunes\|o1\|O3-mini\|OAG\|OAuth2\|OBS\|OCR\|OCRA\|OCRAD\|[OK]RA\|Octave\|Office\|Okteta\|[Oo]kular\|Ollama\|OLMo\|OMEMO\|Onedrive\|OnMyShelf\|Open\|OpenAI\|OpenAstronomyLog\|OpenBabel\|OpenCL\|OpenCode\|OpenColorIO\|OpenConnect\|OpenDivX\|OpenDocument\|OpenGL\|OpenGLES\|OpenHermes\|OpenOffice\|OpenPGP\|Opensearch\|OpenStreetMap\|openSUSE\|OpenTimelineIO\|OpenVPN\|Opera\|Operational\|OProfile\|OptiImage\|Orca\|Origin\|OriginLab\|OSCAR\|OscarSocket\|OSD\|OSM\|OSX\|OTR\|Outlook\|output\|outputVectorPeriodogram\|ownCloud\|oxdvi\|Oxygen\|R\|r2\|RTC\|SDDM\|Skanlite\|SkySafari\|Scilab\|Scratchpad\|Scribus\|ScriptEngine\|SDDM\|SDR\|Skanpage\|sketchbook\|[Ss]krooge\|Skype\|Slack\|SlackBridge\|Slimbook\|Smoothie\|[Ss]nap\|Spacebar\|Spectacle\|Spectral\|SPHINX\|Sphinx\|Spirit\|SQL\|SQLite\|Stable\|Stage\|StarCoder\|StarCoder[23456789]\|Stargate\|Starling\|Station\|Steam\|Stellarium\|StellarMate\|StellarSolver\|Step\|StepCore\|Stockfish\|Stopmotion\|U-Boot\|UberWriter\|Ubuntu\|UFRaw\|ufw\|uiserver\|Umbrello\|Unarchiver\|UNIX\|Unicode\|UnifiedPush\|unpack\|[Uu]nrar\|UFRaw\|Umbrello\|UML\|UML2\|Unarchiver\|Unicode\|UnifiedPush\|Unrar\|update-alternatives\|updatedb\|UserFeedback\|USSD\|X11\|xBase\|XDebug\|XFig\|Xming\|XMMS\|[Xx]planet\|XSudoku\|XWayland\)\([^[:alnum:]]\)/\2\3\4\5/g
 #
s/\b\([Ee]\)l \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(inputVectorData\|outputVectorPeriodogram\)\([^[:alnum:]]\)/\2\3\4/g
# #
# # # # # # # # # # # # # #
#
# al -> als
s/\b\([Aa]\)l \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(KF5\)\(;\|\)\([^[:alnum:]]\)/\1ls \2\3\4\5/g
# regles especifiques (formats de fitxer i altres)
s/\b\([Aa]\)l \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(\.7z\|7z\|\.bmp\|\.dib\|BMP\|\.bz\|[Bb]zip\|\.bz2\|[Bb]zip2\|\.cb[7rtz]\|CB[RZ]\|CIFS\|CMYK\|\.c\|C\|ClayRGB\|CPP\|\.cc\|\.h\|\.hh\|\.[hc][px+][px+]\|[Cc]pp\|\.csv\|csv\|CSV\|cvs\|CVS\|\.diff\|&diff\|diff\|DIFF\|\.dng\|DN[GS]\|\.dot\|dot\|DOT\|\.dvi\|DVI\|\.exr\|EXR\|\.fits\|FITS\|\.flac\|FLAC\|[Ff]rameworks\|KF5\|GBR\|GeoData\|GeoJSON\|\.gif\|GIF\|\.heif\|\.heifs\|\.heic\|\.heics\|\.avci\|\.avcs\|\.avif\|HE[IV][CF]\|\.jp[eg]\|\.jpeg\|.jif\|\.jfif\|\.jfi\|JPEG\|JPG\|\.json\|JSON\|\.jxl\|JXL\|kde-frameworks\|\.km[lz]\|KML\|KPP\|\.kr[az]\|KR[AZ]\|L\*-RGB\|\.md\|\.markdown\|Markdown\|MCAP\|MIDI\|MIME\|\.mpg\|\.mpeg\|\.m2p\|\.ps\|MPEG\|MPG\|MYB\|\.part\|\.pdf\|PDF\|pdf\|\.p[bgnp]m\|P[BGNP]M\|P[DG]F\|PHP\|PNG\|ProRaw\|ProRes\|PSD\|QML\|\.3fr\|\.ar[iw]\|\.bay\|\.braw\|\.cr[23]\|\.cap\|\.data\|\.dc[sr]\.dng\|\.drf\|\.eip\|\.erf\|\.fff\|\.gpr\|\.iiq\|\.k25\|.kdc\|\.mdc\|\.mef\|\.mos\|\.mrw\|\.nef\|NetCDF\|\.nrw\|\.obm\|\.orf\|\.pef\|\.pkg\|PKG\|\.ptx\|\.pxn\|\.r3d\|\.ra[fw]\|\.rw[l2z]\|\.sr[2fw]\|\.x3f\|RA[RW]\|[Rr]aw\|RGB\|\.Rmd\|\.sql\|SQL\|sRGB\|\.svg\|\.svgz\|SVG\|\.tar\|TAR\|tar\|\.tif\|\.tiff\|TIF\|TIFF\|\.webp\|[W[Ee][Bb]P\|WebP\|\.xcf\|XCF\|\.xml\|XML\|\.xsl\|\.xslt\|XSL\|\.zip\|\.zipx\|ZIP\|zip\)\(;\|\)\([^[:alnum:]]\)/\1 \2\3\4\5/g
s/\b\([Ee]\)l \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(\.7z\|7z\|\.bmp\|\.dib\|BMP\|\.bz\|[Bb]zip\|\.bz2\|[Bb]zip2\|\.cb[7rtz]\|CB[RZ]\|CIFS\|CMYK\|\.c\|C\|ClayRGB\|CPP\|\.cc\|\.h\|\.hh\|\.[hc][px+][px+]\|[Cc]pp\|\.csv\|csv\|CSV\|cvs\|CVS\|\.diff\|&diff\|diff\|DIFF\|\.dng\|DN[GS]\|\.dot\|dot\|DOT\|\.dvi\|DVI\|\.exr\|EXR\|\.fits\|FITS\|\.flac\|FLAC\|[Ff]rameworks\|KF5\|GBR\|GeoData\|GeoJSON\|\.gif\|GIF\|\.heif\|\.heifs\|\.heic\|\.heics\|\.avci\|\.avcs\|\.avif\|HE[IV][CF]\|\.jp[eg]\|\.jpeg\|.jif\|\.jfif\|\.jfi\|JPEG\|JPG\|\.json\|JSON\|\.jxl\|JXL\|kde-frameworks\|\.km[lz]\|KML\|KPP\|\.kr[az]\|KR[AZ]\|L\*-RGB\|\.md\|\.markdown\|Markdown\|MCAP\|MIDI\|MIME\|\.mpg\|\.mpeg\|\.m2p\|\.ps\|MPEG\|MPG\|MYB\|\.part\|\.pdf\|PDF\|pdf\|\.p[bgnp]m\|P[BGNP]M\|P[DG]F\|PHP\|PNG\|ProRaw\|ProRes\|PSD\|QML\|\.3fr\|\.ar[iw]\|\.bay\|\.braw\|\.cr[23]\|\.cap\|\.data\|\.dc[sr]\.dng\|\.drf\|\.eip\|\.erf\|\.fff\|\.gpr\|\.iiq\|\.k25\|.kdc\|\.mdc\|\.mef\|\.mos\|\.mrw\|\.nef\|NetCDF\|\.nrw\|\.obm\|\.orf\|\.pef\|\.pkg\|PKG\|\.ptx\|\.pxn\|\.r3d\|\.ra[fw]\|\.rw[l2z]\|\.sr[2fw]\|\.x3f\|RA[RW]\|[Rr]aw\|RGB\|\.Rmd\|\.sql\|SQL\|sRGB\|\.svg\|\.svgz\|SVG\|\.tar\|TAR\|tar\|\.tif\|\.tiff\|TIF\|TIFF\|\.webp\|W[Ee][Bb]P\|WebP\|\.xcf\|XCF\|\.xml\|XML\|\.xsl\|\.xslt\|XSL\|\.zip\|\.zipx\|ZIP\|zip\)\(;\|\)\([^[:alnum:]]\)/\2\3\4\5/g
s/\b\([Dd]\)el \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(\.7z\|7z\|\.bmp\|\.dib\|BMP\|\.bz\|[Bb]zip\|\.bz2\|[Bb]zip2\|\.cb[7rtz]\|CB[RZ]\|CIFS\|CMYK\|\.c\|C\|ClayRGB\|CPP\|\.cc\|\.h\|\.hh\|\.[hc][px+][px+]\|[Cc]pp\|\.csv\|csv\|CSV\|cvs\|CVS\|\.diff\|&diff\|diff\|DIFF\|\.dng\|DN[GS]\|\.dot\|dot\|DOT\|\.dvi\|DVI\|\.exr\|EXR\|\.fits\|FITS\|\.flac\|FLAC\|[Ff]rameworks\|KF5\|GBR\|GeoData\|GeoJSON\|\.gif\|GIF\|\.heif\|\.heifs\|\.heic\|\.heics\|\.avci\|\.avcs\|\.avif\|HE[IV][CF]\|\.jp[eg]\|\.jpeg\|.jif\|\.jfif\|\.jfi\|JPEG\|JPG\|\.json\|JSON\|\.jxl\|JXL\|kde-frameworks\|\.km[lz]\|KML\|KPP\|\.kr[az]\|KR[AZ]\|L\*-RGB\|\.md\|\.markdown\|Markdown\|MCAP\|MIDI\|MIME\|\.mpg\|\.mpeg\|\.m2p\|\.ps\|MPEG\|MPG\|MYB\|\.part\|\.pdf\|PDF\|pdf\|\.p[bgnp]m\|P[BGNP]M\|P[DG]F\|PHP\|PNG\|ProRaw\|ProRes\|PSD\|QML\|\.3fr\|\.ar[iw]\|\.bay\|\.braw\|\.cr[23]\|\.cap\|\.data\|\.dc[sr]\.dng\|\.drf\|\.eip\|\.erf\|\.fff\|\.gpr\|\.iiq\|\.k25\|.kdc\|\.mdc\|\.mef\|\.mos\|\.mrw\|\.nef\|NetCDF\|\.nrw\|\.obm\|\.orf\|\.pef\|\.pkg\|PKG\|\.ptx\|\.pxn\|\.r3d\|\.ra[fw]\|\.rw[l2z]\|\.sr[2fw]\|\.x3f\|RA[RW]\|[Rr]aw\|RGB\|\.Rmd\|\.sql\|SQL\|sRGB\|\.svg\|\.svgz\|SVG\|\.tar\|TAR\|tar\|\.tif\|\.tiff\|TIF\|TIFF\|\.webp\|W[Ee][Bb]P\|WebP\|\.xcf\|XCF\|\.xml\|XML\|\.xsl\|\.xslt\|XSL\|\.zip\|\.zipx\|ZIP\|zip\)\(;\|\)\([^[:alnum:]]\)/\1e \2\3\4\5/g
 #
s/\b\([Dd]\)e l'\(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(\.aac\|aac\|AAC\|\.aif\|\.aif[cf]\|AIFF\|ARJ\|AV1\|AVIF\|ELF\|EPub\|EXR\|HEIF\|HEVC\|MP3\|MYB\|Ogg\|Opus\|ORA\|XMPP\|XSL\)\(;\|\)\([^[:alnum:]]\)/\1'\2\3\4\5/g
s/\b\([Ll]\)'\(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\(\.aac\|aac\|AAC\|\.aif\|\.aif[cf]\|AIFF\|ARJ\|AV1\|AVIF\|Configuració\|ELF\|EPub\|EXR\|HEIF\|HEVC\|MP3\|MYB\|Ogg\|Opus\|ORA\|XMPP\|XSL\)\(;\|\)\([^[:alnum:]]\)/\2\3\4\5/g
 # el -> la
s/\"\(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\([ACV]BR\|CFITSIO\|Eigen3\|FFTW3\|GSL\|HDF5\|KatePart\|KPart\|KUIViewerPart\|libcerf\|liborigin\|Matio\|ORCUS\|QApplication\|QXlsx\|ReadStat\|VoIP\|WebEnginePart\)\(;\|\) /\"La \1\2\3 /g
s/\"La \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\([ACV]BR\|CFITSIO\|Eigen3\|FFTW3\|GSL\|HDF5\|KatePart\|KPart\|KUIViewerPart\|libcerf\|liborigin\|Matio\|ORCUS\|QApplication\|QXlsx\|ReadStat\|VoIP\|WebEnginePart\)\(;\|\)\"/\"\1\2\3\"/g
s/\b\([Aa]\)l \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\([ACV]BR\|CFITSIO\|Eigen3\|FFTW3\|GSL\|HDF5\|KatePart\|KPart\|KUIViewerPart\|libcerf\|liborigin\|Matio\|ORCUS\|QApplication\|QXlsx\|ReadStat\|VoIP\|WebEnginePart\)\(;\|\)\([^[:alnum:]]\)/\1 la \2\3\4\5/g
s/\bEl \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\([ACV]BR\|CFITSIO\|Eigen3\|FFTW3\|GSL\|HDF5\|KatePart\|KPart\|KUIViewerPart\|libcerf\|liborigin\|Matio\|ORCUS\|QApplication\|QXlsx\|ReadStat\|VoIP\|WebEnginePart\)\(;\|\)\([^[:alnum:]]\)/La \1\2\3\4/g
s/\bel \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\([ACV]BR\|CFITSIO\|Eigen3\|FFTW3\|GSL\|HDF5\|KatePart\|KPart\|KUIViewerPart\|libcerf\|liborigin\|Matio\|ORCUS\|QApplication\|QXlsx\|ReadStat\|VoIP\|WebEnginePart\)\(;\|\)\([^[:alnum:]]\)/la \1\2\3\4/g
s/\b\([Dd]\)el \(\[\|\*\|\*\*\|\*\*\*\|\*\*\[\|\[\*\|:doc:`\|:ref:`\|`\|&\|«\|<[^<]\{1,\}>\|\)\([ACV]BR\|CFITSIO\|Eigen3\|FFTW3\|GSL\|HDF5\|KatePart\|KPart\|KUIViewerPart\|libcerf\|liborigin\|Matio\|ORCUS\|QApplication\|QXlsx\|ReadStat\|VoIP\|WebEnginePart\)\(;\|\)\([^[:alnum:]]\)/\1e la \2\3\4\5/g
# #
# # # # # # # # # # # # # #
#
# entitats
s/\b\([Aa]\)l \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)&\(appname\|blinken\|blogilo\|bomber\|bovo\|brahms\|BSD\|calligra\|calligraflow\|calligraplan\|calligrasheets\|calligrastage\|calligrawords\|cantor\|catalogmanager\|CD\|CDE\|CD-ROM\|cervisia\|choqok\|cmake\|CMake\|CSS\|CUPS\|DBus\|DCOP\|Debian\|digikam\|documentation.index\|dolphin\|dragon\|drkonqi\|DVD\|elisa\|Emacs\|falkon\|FDL\|filelight\|firefox\|Flash\|flashkard\|folder-cache-location\|folder-config-location\|folder-data-location\|gcc\|gcompris\|GIF\|git\|GMT\|GNU\|gpg\|gpgsm\|GPL\|GPLNotice\|granatier\|GUI\|gwenview\|Handspring\|Hewlett-Packard\|HotSync\|HP\|HP-UX\|HTML\|HTTP\|ical\|IMAP\|infocenter\|irc\|IRIX\|Java\|javascript\|Jini\|jovie\|juk\|kab2\|kaboodle\|kaddressbook\|kaffeine\|kajongg\|kalarm\|kalarmd\|kalgebra\|kalzium\|kamera\|kamoso\|kanagram\|kandy\|kaphorism\|kapman\|kapp\|kappfinder\|kapptemplate\|karbon\|karbon14\|kasteroids\|kate\|katepart\|katomic\|kaudiocreator\|kbabel\|kbabeldict\|kbackgammon\|kbackup\|kbattleship\|kbibtex\|kbiff\|kblackbox\|kblocks\|kbounce\|kbreakout\|kbruch\|kbugbuster\|kcachegrind\|kcalc\|kcharselect\|kchart\|kchat\|kcontrol\|kcron\|kdat\|kdcop\|kde\|kdebugdialog\|kdebugdialog[56]?\|kde-ftp\|kde-http\|kdenlive\|kdepasswd\|kdeprint\|kdesktop\|kdessh\|kdesu\|kdesvn\|kdevelop\|kdiamond\|kdict\|kdiff3\|kdiskfree\|kdm\|kdmrc\|kdvi\|kedit\|keditbookmarks\|keduca\|kenolaba\|kexi\|keystone\|kfax\|kfaxview\|kfeeder\|kfind\|kfloppy\|kfontview\|kformula\|kfouleggs\|kfourinline\|kfract\|kgeo\|kgeography\|kget\|kghostview\|kgoldrunner\|kgpg\|kgpgcertmanager\|kgraphviewer\|khangman\|khelpcenter\|khexedit\|kicker\|kickoff\|kiconedit\|kig\|kigo\|kikbd\|kile\|killbots\|kinfocenter\|Kirigami\|kiriki\|kit\|kitchensync\|kiten\|kivio\|kjots\|kjumpingcube\|klaptop\|klatin\|kleopatra\|klettres\|klickety\|klipper\|kljettool\|klpq\|klprfax\|kmagnifier\|kmahjongg\|kmail\|kmathtool\|kmenuedit\|kmessedwords\|kmid\|kmidi\|kmines\|kmix\|kmoon\|kmousetool\|kmouth\|kmplayer\|kmplot\|kmymoney\|knavalbattle\|knetattach\|knetwalk\|knewsticker\|knewstuff\|knights\|knode\|knorskverbs\|knotes\|kodometer\|koffice\|kolab\|kolf\|kollision\|kolorlines\|kolourpaint\|kompare\|koncd\|konqueror\|konquest\|konsole\|konsolekalendar\|kontact\|kontour\|konversation\|kooka\|kopete\|korganizer\|korn\|koshell\|kotalkd\|kpackage\|kpager\|kpaint\|kpanel\|kparts\|kpatience\|kpercentage\|kpf\|kpilot\|kpm\|kpoker\|kpovmodeler\|kppp\|kpresenter\|kprinter\|krdc\|kreatecd\|krec\|krecipes\|kregexpeditor\|krename\|kreversi\|krfb\|krita\|kronometer\|kruler\|[Kk][Rr]unner\|krusader\|ksame\|kscd\|kscore\|kscreensaver\|ksgmltools\|kshisen\|ksim\|ksirc\|ksirk\|ksirtet\|ksmiletris\|ksmserver\|ksnake\|ksnakeduel\|ksnapshot\|ksokoban\|kspaceduel\|ksplash\|kspread\|ksquares\|kst\|kstars\|kstart\|ksysctrl\|ksysguard\|ksystemlog\|ksysv\|ktalk\|ktalkd\|kteatime\|kthesaurus\|ktimemon\|ktimer\|ktimetracker\|ktip\|ktorrent\|ktouch\|ktron\|ktuberling\|kturtle\|kubrick\|kubuntu\|kugar\|kuickshow\|kuser\|kverbos\|kview\|kviewshell\|kvoctrain\|kwallet[56]?\|kwalletmanager[56]?\|kwatchgnupg\|kwave\|kwin\|kword\|kwordquiz\|kworldclock\|kwrite\|kwuftpd\|kxkb\|kxstitch\|LaserJet\|latex\|LGPL\|LGPLNotice\|Linux\|Linux-Mandrake\|LinuxPPC\|lisa\|lokalize\|lskat\|LZW\|Mac\|macOS\|Mandrake\|marble\|MathML\|mdn\|megami\|Microsoft\|minuet\|moonphase\|Motif\|MRU\|MTU\|multisynk\|MusiXTeX\|Netscape\|NeXTSTEP\|NFS\|nntp\|noatun\|okteta\|okular\|openpgp\|OSD\|package\|palapeli\|PalmOS\|PalmPilot\|parley\|PDF\|phonon\|picmi\|PIM\|plasma\|plasmagik\|plasmoid\|plasmoids\|PMX\|POP3\|PostScript\|PPP\|Qt\|quanta\|quantaplus\|RealAudio\|RealVideo\|RedHat\|reslisa\|rocs\|rsibreak\|Samba\|SDDM\|Sendmail\|SGI\|skanlite\|skrooge\|SMB\|smb4k\|smime\|SMTP\|snake\|Solaris\|solid\|sonnet\|spectacle\|step\|superkaramba\|SuSE\|sweeper\|symboleditor\|systemsettings\|tellico\|ThreeCom\|tkmidi\|trojita\|TrueType\|ubuntu\|umbrello\|UNIX\|URI\|URL\|USB\|Visor\|Wayland\|windowmaker\|Windows\|WordNet\|Wordperfect\|X11\|XEmacs\|XHTML\|XML\|X-Server\|X-Window\|zui\);\([^[:alnum:]]\)/\1 \2\&\3;\4/g
s/\b\([Ee]\)l \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)&\(appname\|blinken\|blogilo\|bomber\|bovo\|brahms\|BSD\|calligra\|calligraflow\|calligraplan\|calligrasheets\|calligrastage\|calligrawords\|cantor\|catalogmanager\|CD\|CDE\|CD-ROM\|cervisia\|choqok\|cmake\|CMake\|CSS\|CUPS\|DBus\|DCOP\|Debian\|digikam\|documentation.index\|dolphin\|dragon\|drkonqi\|DVD\|elisa\|Emacs\|falkon\|FDL\|filelight\|firefox\|Flash\|flashkard\|folder-cache-location\|folder-config-location\|folder-data-location\|gcc\|gcompris\|GIF\|git\|GMT\|GNU\|gpg\|gpgsm\|GPL\|GPLNotice\|granatier\|GUI\|gwenview\|Handspring\|Hewlett-Packard\|HotSync\|HP\|HP-UX\|HTML\|HTTP\|ical\|IMAP\|infocenter\|irc\|IRIX\|Java\|javascript\|Jini\|jovie\|juk\|kab2\|kaboodle\|kaddressbook\|kaffeine\|kajongg\|kalarm\|kalarmd\|kalgebra\|kalzium\|kamera\|kamoso\|kanagram\|kandy\|kaphorism\|kapman\|kapp\|kappfinder\|kapptemplate\|karbon\|karbon14\|kasteroids\|kate\|katepart\|katomic\|kaudiocreator\|kbabel\|kbabeldict\|kbackgammon\|kbackup\|kbattleship\|kbibtex\|kbiff\|kblackbox\|kblocks\|kbounce\|kbreakout\|kbruch\|kbugbuster\|kcachegrind\|kcalc\|kcharselect\|kchart\|kchat\|kcontrol\|kcron\|kdat\|kdcop\|kde\|kdebugdialog\|kdebugdialog[56]?\|kde-ftp\|kde-http\|kdenlive\|kdepasswd\|kdeprint\|kdesktop\|kdessh\|kdesu\|kdesvn\|kdevelop\|kdiamond\|kdict\|kdiff3\|kdiskfree\|kdm\|kdmrc\|kdvi\|kedit\|keditbookmarks\|keduca\|kenolaba\|kexi\|keystone\|kfax\|kfaxview\|kfeeder\|kfind\|kfloppy\|kfontview\|kformula\|kfouleggs\|kfourinline\|kfract\|kgeo\|kgeography\|kget\|kghostview\|kgoldrunner\|kgpg\|kgpgcertmanager\|kgraphviewer\|khangman\|khelpcenter\|khexedit\|kicker\|kickoff\|kiconedit\|kig\|kigo\|kikbd\|kile\|killbots\|kinfocenter\|Kirigami\|kiriki\|kit\|kitchensync\|kiten\|kivio\|kjots\|kjumpingcube\|klaptop\|klatin\|kleopatra\|klettres\|klickety\|klipper\|kljettool\|klpq\|klprfax\|kmagnifier\|kmahjongg\|kmail\|kmathtool\|kmenuedit\|kmessedwords\|kmid\|kmidi\|kmines\|kmix\|kmoon\|kmousetool\|kmouth\|kmplayer\|kmplot\|kmymoney\|knavalbattle\|knetattach\|knetwalk\|knewsticker\|knewstuff\|knights\|knode\|knorskverbs\|knotes\|kodometer\|koffice\|kolab\|kolf\|kollision\|kolorlines\|kolourpaint\|kompare\|koncd\|konqueror\|konquest\|konsole\|konsolekalendar\|kontact\|kontour\|konversation\|kooka\|kopete\|korganizer\|korn\|koshell\|kotalkd\|kpackage\|kpager\|kpaint\|kpanel\|kparts\|kpatience\|kpercentage\|kpf\|kpilot\|kpm\|kpoker\|kpovmodeler\|kppp\|kpresenter\|kprinter\|krdc\|kreatecd\|krec\|krecipes\|kregexpeditor\|krename\|kreversi\|krfb\|krita\|kronometer\|kruler\|[Kk][Rr]unner\|krusader\|ksame\|kscd\|kscore\|kscreensaver\|ksgmltools\|kshisen\|ksim\|ksirc\|ksirk\|ksirtet\|ksmiletris\|ksmserver\|ksnake\|ksnakeduel\|ksnapshot\|ksokoban\|kspaceduel\|ksplash\|kspread\|ksquares\|kst\|kstars\|kstart\|ksysctrl\|ksysguard\|ksystemlog\|ksysv\|ktalk\|ktalkd\|kteatime\|kthesaurus\|ktimemon\|ktimer\|ktimetracker\|ktip\|ktorrent\|ktouch\|ktron\|ktuberling\|kturtle\|kubrick\|kubuntu\|kugar\|kuickshow\|kuser\|kverbos\|kview\|kviewshell\|kvoctrain\|kwallet[56]?\|kwalletmanager[56]?\|kwatchgnupg\|kwave\|kwin\|kword\|kwordquiz\|kworldclock\|kwrite\|kwuftpd\|kxkb\|kxstitch\|LaserJet\|latex\|LGPL\|LGPLNotice\|Linux\|Linux-Mandrake\|LinuxPPC\|lisa\|lokalize\|lskat\|LZW\|Mac\|macOS\|Mandrake\|marble\|MathML\|mdn\|megami\|Microsoft\|minuet\|moonphase\|Motif\|MRU\|MTU\|multisynk\|MusiXTeX\|Netscape\|NeXTSTEP\|NFS\|nntp\|noatun\|okteta\|okular\|openpgp\|OSD\|package\|palapeli\|PalmOS\|PalmPilot\|parley\|PDF\|phonon\|picmi\|PIM\|plasma\|plasmagik\|plasmoid\|plasmoids\|PMX\|POP3\|PostScript\|PPP\|Qt\|quanta\|quantaplus\|RealAudio\|RealVideo\|RedHat\|reslisa\|rocs\|rsibreak\|Samba\|SDDM\|Sendmail\|SGI\|skanlite\|skrooge\|SMB\|smb4k\|smime\|SMTP\|snake\|Solaris\|solid\|sonnet\|spectacle\|step\|superkaramba\|SuSE\|sweeper\|symboleditor\|systemsettings\|tellico\|ThreeCom\|tkmidi\|trojita\|TrueType\|ubuntu\|umbrello\|UNIX\|URI\|URL\|USB\|Visor\|Wayland\|windowmaker\|Windows\|WordNet\|Wordperfect\|X11\|XEmacs\|XHTML\|XML\|X-Server\|X-Window\|zui\);\([^[:alnum:]]\)/\2\&\3;\4/g
s/\b\([Dd]\)el \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)&\(appname\|blinken\|blogilo\|bomber\|bovo\|brahms\|BSD\|calligra\|calligraflow\|calligraplan\|calligrasheets\|calligrastage\|calligrawords\|cantor\|catalogmanager\|CD\|CDE\|CD-ROM\|cervisia\|choqok\|cmake\|CMake\|CSS\|CUPS\|DBus\|DCOP\|Debian\|digikam\|documentation.index\|dolphin\|dragon\|drkonqi\|DVD\|elisa\|Emacs\|falkon\|FDL\|filelight\|firefox\|Flash\|flashkard\|folder-cache-location\|folder-config-location\|folder-data-location\|gcc\|gcompris\|GIF\|git\|GMT\|GNU\|gpg\|gpgsm\|GPL\|GPLNotice\|granatier\|GUI\|gwenview\|Handspring\|Hewlett-Packard\|HotSync\|HP\|HP-UX\|HTML\|HTTP\|ical\|IMAP\|infocenter\|irc\|IRIX\|Java\|javascript\|Jini\|jovie\|juk\|kab2\|kaboodle\|kaddressbook\|kaffeine\|kajongg\|kalarm\|kalarmd\|kalgebra\|kalzium\|kamera\|kamoso\|kanagram\|kandy\|kaphorism\|kapman\|kapp\|kappfinder\|kapptemplate\|karbon\|karbon14\|kasteroids\|kate\|katepart\|katomic\|kaudiocreator\|kbabel\|kbabeldict\|kbackgammon\|kbackup\|kbattleship\|kbibtex\|kbiff\|kblackbox\|kblocks\|kbounce\|kbreakout\|kbruch\|kbugbuster\|kcachegrind\|kcalc\|kcharselect\|kchart\|kchat\|kcontrol\|kcron\|kdat\|kdcop\|kde\|kdebugdialog\|kdebugdialog[56]?\|kde-ftp\|kde-http\|kdenlive\|kdepasswd\|kdeprint\|kdesktop\|kdessh\|kdesu\|kdesvn\|kdevelop\|kdiamond\|kdict\|kdiff3\|kdiskfree\|kdm\|kdmrc\|kdvi\|kedit\|keditbookmarks\|keduca\|kenolaba\|kexi\|keystone\|kfax\|kfaxview\|kfeeder\|kfind\|kfloppy\|kfontview\|kformula\|kfouleggs\|kfourinline\|kfract\|kgeo\|kgeography\|kget\|kghostview\|kgoldrunner\|kgpg\|kgpgcertmanager\|kgraphviewer\|khangman\|khelpcenter\|khexedit\|kicker\|kickoff\|kiconedit\|kig\|kigo\|kikbd\|kile\|killbots\|kinfocenter\|Kirigami\|kiriki\|kit\|kitchensync\|kiten\|kivio\|kjots\|kjumpingcube\|klaptop\|klatin\|kleopatra\|klettres\|klickety\|klipper\|kljettool\|klpq\|klprfax\|kmagnifier\|kmahjongg\|kmail\|kmathtool\|kmenuedit\|kmessedwords\|kmid\|kmidi\|kmines\|kmix\|kmoon\|kmousetool\|kmouth\|kmplayer\|kmplot\|kmymoney\|knavalbattle\|knetattach\|knetwalk\|knewsticker\|knewstuff\|knights\|knode\|knorskverbs\|knotes\|kodometer\|koffice\|kolab\|kolf\|kollision\|kolorlines\|kolourpaint\|kompare\|koncd\|konqueror\|konquest\|konsole\|konsolekalendar\|kontact\|kontour\|konversation\|kooka\|kopete\|korganizer\|korn\|koshell\|kotalkd\|kpackage\|kpager\|kpaint\|kpanel\|kparts\|kpatience\|kpercentage\|kpf\|kpilot\|kpm\|kpoker\|kpovmodeler\|kppp\|kpresenter\|kprinter\|krdc\|kreatecd\|krec\|krecipes\|kregexpeditor\|krename\|kreversi\|krfb\|krita\|kronometer\|kruler\|[Kk][Rr]unner\|krusader\|ksame\|kscd\|kscore\|kscreensaver\|ksgmltools\|kshisen\|ksim\|ksirc\|ksirk\|ksirtet\|ksmiletris\|ksmserver\|ksnake\|ksnakeduel\|ksnapshot\|ksokoban\|kspaceduel\|ksplash\|kspread\|ksquares\|kst\|kstars\|kstart\|ksysctrl\|ksysguard\|ksystemlog\|ksysv\|ktalk\|ktalkd\|kteatime\|kthesaurus\|ktimemon\|ktimer\|ktimetracker\|ktip\|ktorrent\|ktouch\|ktron\|ktuberling\|kturtle\|kubrick\|kubuntu\|kugar\|kuickshow\|kuser\|kverbos\|kview\|kviewshell\|kvoctrain\|kwallet[56]?\|kwalletmanager[56]?\|kwatchgnupg\|kwave\|kwin\|kword\|kwordquiz\|kworldclock\|kwrite\|kwuftpd\|kxkb\|kxstitch\|LaserJet\|latex\|LGPL\|LGPLNotice\|Linux\|Linux-Mandrake\|LinuxPPC\|lisa\|lokalize\|lskat\|LZW\|Mac\|macOS\|Mandrake\|marble\|MathML\|mdn\|megami\|Microsoft\|minuet\|moonphase\|Motif\|MRU\|MTU\|multisynk\|MusiXTeX\|Netscape\|NeXTSTEP\|NFS\|nntp\|noatun\|okteta\|okular\|openpgp\|OSD\|package\|palapeli\|PalmOS\|PalmPilot\|parley\|PDF\|phonon\|picmi\|PIM\|plasma\|plasmagik\|plasmoid\|plasmoids\|PMX\|POP3\|PostScript\|PPP\|Qt\|quanta\|quantaplus\|RealAudio\|RealVideo\|RedHat\|reslisa\|rocs\|rsibreak\|Samba\|SDDM\|Sendmail\|SGI\|skanlite\|skrooge\|SMB\|smb4k\|smime\|SMTP\|snake\|Solaris\|solid\|sonnet\|spectacle\|step\|superkaramba\|SuSE\|sweeper\|symboleditor\|systemsettings\|tellico\|ThreeCom\|tkmidi\|trojita\|TrueType\|ubuntu\|umbrello\|UNIX\|URI\|URL\|USB\|Visor\|Wayland\|windowmaker\|Windows\|WordNet\|Wordperfect\|X11\|XEmacs\|XHTML\|XML\|X-Server\|X-Window\|zui\);\([^[:alnum:]]\)/\1e \2\&\3;\4/g
s/\b\([Pp]\)el \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)&\(appname\|blinken\|blogilo\|bomber\|bovo\|brahms\|BSD\|calligra\|calligraflow\|calligraplan\|calligrasheets\|calligrastage\|calligrawords\|cantor\|catalogmanager\|CD\|CDE\|CD-ROM\|cervisia\|choqok\|cmake\|CMake\|CSS\|CUPS\|DBus\|DCOP\|Debian\|digikam\|\|documentation.index\|dolphin\|dragon\|drkonqi\|DVD\|elisa\|Emacs\|falkon\|FDL\|filelight\|firefox\|Flash\|flashkard\|folder-cache-location\|folder-config-location\|folder-data-location\|gcc\|gcompris\|GIF\|git\|GMT\|GNU\|gpg\|gpgsm\|GPL\|GPLNotice\|granatier\|GUI\|gwenview\|Handspring\|Hewlett-Packard\|HotSync\|HP\|HP-UX\|HTML\|HTTP\|ical\|IMAP\|infocenter\|irc\|IRIX\|Java\|javascript\|Jini\|jovie\|juk\|kab2\|kaboodle\|kaddressbook\|kaffeine\|kajongg\|kalarm\|kalarmd\|kalgebra\|kalzium\|kamera\|kamoso\|kanagram\|kandy\|kaphorism\|kapman\|kapp\|kappfinder\|kapptemplate\|karbon\|karbon14\|kasteroids\|kate\|katepart\|katomic\|kaudiocreator\|kbabel\|kbabeldict\|kbackgammon\|kbackup\|kbattleship\|kbibtex\|kbiff\|kblackbox\|kblocks\|kbounce\|kbreakout\|kbruch\|kbugbuster\|kcachegrind\|kcalc\|kcharselect\|kchart\|kchat\|kcontrol\|kcron\|kdat\|kdcop\|kde\|kdebugdialog\|kdebugdialog[56]?\|kde-ftp\|kde-http\|kdenlive\|kdepasswd\|kdeprint\|kdesktop\|kdessh\|kdesu\|kdesvn\|kdevelop\|kdiamond\|kdict\|kdiff3\|kdiskfree\|kdm\|kdmrc\|kdvi\|kedit\|keditbookmarks\|keduca\|kenolaba\|kexi\|keystone\|kfax\|kfaxview\|kfeeder\|kfind\|kfloppy\|kfontview\|kformula\|kfouleggs\|kfourinline\|kfract\|kgeo\|kgeography\|kget\|kghostview\|kgoldrunner\|kgpg\|kgpgcertmanager\|kgraphviewer\|khangman\|khelpcenter\|khexedit\|kicker\|kickoff\|kiconedit\|kig\|kigo\|kikbd\|kile\|killbots\|kinfocenter\|Kirigami\|kiriki\|kit\|kitchensync\|kiten\|kivio\|kjots\|kjumpingcube\|klaptop\|klatin\|kleopatra\|klettres\|klickety\|klipper\|kljettool\|klpq\|klprfax\|kmagnifier\|kmahjongg\|kmail\|kmathtool\|kmenuedit\|kmessedwords\|kmid\|kmidi\|kmines\|kmix\|kmoon\|kmousetool\|kmouth\|kmplayer\|kmplot\|kmymoney\|knavalbattle\|knetattach\|knetwalk\|knewsticker\|knewstuff\|knights\|knode\|knorskverbs\|knotes\|kodometer\|koffice\|kolab\|kolf\|kollision\|kolorlines\|kolourpaint\|kompare\|koncd\|konqueror\|konquest\|konsole\|konsolekalendar\|kontact\|kontour\|konversation\|kooka\|kopete\|korganizer\|korn\|koshell\|kotalkd\|kpackage\|kpager\|kpaint\|kpanel\|kparts\|kpatience\|kpercentage\|kpf\|kpilot\|kpm\|kpoker\|kpovmodeler\|kppp\|kpresenter\|kprinter\|krdc\|kreatecd\|krec\|krecipes\|kregexpeditor\|krename\|kreversi\|krfb\|krita\|kronometer\|kruler\|[Kk][Rr]unner\|krusader\|ksame\|kscd\|kscore\|kscreensaver\|ksgmltools\|kshisen\|ksim\|ksirc\|ksirk\|ksirtet\|ksmiletris\|ksmserver\|ksnake\|ksnakeduel\|ksnapshot\|ksokoban\|kspaceduel\|ksplash\|kspread\|ksquares\|kst\|kstars\|kstart\|ksysctrl\|ksysguard\|ksystemlog\|ksysv\|ktalk\|ktalkd\|kteatime\|kthesaurus\|ktimemon\|ktimer\|ktimetracker\|ktip\|ktorrent\|ktouch\|ktron\|ktuberling\|kturtle\|kubrick\|kubuntu\|kugar\|kuickshow\|kuser\|kverbos\|kview\|kviewshell\|kvoctrain\|kwallet[56]?\|kwalletmanager[56]?\|kwatchgnupg\|kwave\|kwin\|kword\|kwordquiz\|kworldclock\|kwrite\|kwuftpd\|kxkb\|kxstitch\|LaserJet\|latex\|LGPL\|LGPLNotice\|Linux\|Linux-Mandrake\|LinuxPPC\|lisa\|lokalize\|lskat\|LZW\|Mac\|macOS\|Mandrake\|marble\|MathML\|mdn\|megami\|Microsoft\|minuet\|moonphase\|Motif\|MRU\|MTU\|multisynk\|MusiXTeX\|Netscape\|NeXTSTEP\|NFS\|nntp\|noatun\|okteta\|okular\|openpgp\|OSD\|package\|palapeli\|PalmOS\|PalmPilot\|parley\|PDF\|phonon\|picmi\|PIM\|plasma\|plasmagik\|plasmoid\|plasmoids\|PMX\|POP3\|PostScript\|PPP\|Qt\|quanta\|quantaplus\|RealAudio\|RealVideo\|RedHat\|reslisa\|rocs\|rsibreak\|Samba\|SDDM\|Sendmail\|SGI\|skanlite\|skrooge\|SMB\|smb4k\|smime\|SMTP\|snake\|Solaris\|solid\|sonnet\|spectacle\|step\|superkaramba\|SuSE\|sweeper\|symboleditor\|systemsettings\|tellico\|ThreeCom\|tkmidi\|trojita\|TrueType\|ubuntu\|umbrello\|UNIX\|URI\|URL\|USB\|Visor\|Wayland\|windowmaker\|Windows\|WordNet\|Wordperfect\|X11\|XEmacs\|XHTML\|XML\|X-Server\|X-Window\|zui\);\([^[:alnum:]]\)/\1er \2\&\3;\4/g
 #
s/\b\([Dd]\)e l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)&\(acl\|AIX\|akonadi\|akregator\|aktion\|amarok\|amor\|appname\|ark\|artikulate\|arts\|arts-builder\|artscontrol\|artsd\|artsdsp\|artsserver\|artsshell\|artswrapper\|arXiv\|ASCII\|ATAPI\|atlantik\|FTP\|systemsettings\)\([^[:alnum:]]\)/\1'\2\&\3\4/g
s/\b\([Ll]\)'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)&\(acl\|AIX\|akonadi\|akregator\|aktion\|amarok\|amor\|appname\|ark\|artikulate\|arts\|arts-builder\|artscontrol\|artsd\|artsdsp\|artsserver\|artsshell\|artswrapper\|arXiv\|ASCII\|ATAPI\|astrometry.net\|atlantik\|FTP\|systemsettings\)\([^[:alnum:]]\)/\2\&\3\4/g
s/\b\([Ll]\)'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)&IGU;\([^[:alnum:]]\)/\1a \2\&IGU;\3/g
# -> ja es poden desprotegir
s/%1, publicat el -%2\([^[:alnum:]]\)/%1, publicat el %2\1/g
s/\"el -%1\"/\"el %1\"/g
s/%1 comença el -%2\([^[:alnum:]]\)/%1 comença el %2\1/g
s/%1 ha començat el -%2\([^[:alnum:]]\)/%1 ha començat el %2\1/g
s/\bal -%1%\([^[:alnum:]]\)/al %1%\1/g
s/\bAnunci el -%1\([^[:alnum:]]\)/Anunci el %1\1/g
s/\bde %1 al -%2%/de %1 al %2%/g
s/\bEl «-%1» està \(desconnectat\|en línia\|fora de línia\)\([^[:alnum:]]\)/El «%1» està \1\2/g
s/\bendarrerida des del -%1\([^[:alnum:]]\)/endarrerida des del %1\1/g
s/\bEnregistrat el -%1\([^[:alnum:]]\)/Enregistrat el %1\1/g
s/\bFita finalitzada el -%1\([^[:alnum:]]\)/Fita finalitzada el %1\1/g
s/\bhora \(diürna\|nocturna\) a les -%1 i està totalment canviada a les -%2\([^[:alnum:]]\)/hora \1 a les %1 i està totalment canviada a les %2\2/g
s/\bpublicada el -%2\([^[:alnum:]]\)/publicada el %2\1/g
s/\bTasca \(finalitzada\|vençuda\) el -%1\([^[:alnum:]]\)/Tasca \1 el %1\2/g
s/\bVàlid fins al -%1\([^[:alnum:]]\)/Vàlid fins al %1\1/g
 #
s/\bamb els -\(%[12]\|Mac\)\([^[:alnum:]]\)/amb els \1\2/g
s/\b\([Ee]\)ls -%\([12]\) \(articles\|comentaris\|contactes\|documents\|bytes\|elements\|fitxers\|fotogrames\|kB\|marcadors\|missatges\|objectes\|processos\|recursos\|temes\|tipus de lletra\|URL\)\([^[:alnum:]]\)/\1ls %\2 \3\4/g
s/\b\([Ee]\)ls -«\(crontab\|ping\)»\([^[:alnum:]]\)/\1ls «\2»\3/g
s/\b\([Ee]\)ls -\(CSV\|Flatpak\|GIF\|Git\|JPEG\|Metalink\|PDF\|SVG\)\([^[:alnum:]]\)/\1ls \2\3/g
#
# Errors
s/\bbenvinguda al<br\/><b>Plasma\([^[:alnum:]]\)/benvinguda a<br\/><b>Plasma\1/g

# #
# # # # # # # # # # # # # #
#
# elements de menú/opcions
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
s/\bAt&ura\([^[:alnum:]]\)/\&Para\1/g
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
  s/\bBu&sca al missatge…\([^[:alnum:]]\)/Bu\&sca en el missatge…\1/g
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
  s/\bDesament de la imatge com a\([^[:alnum:]]\)/Anomeneu i guardeu la imatge\1/g
s/&Desament\([^[:alnum:]]\)/Guar\&dada\1/g
  s/\bDe&sament\([^[:alnum:]]\)/Guar\&dada\1/g
  s/\bde&sament\([^[:alnum:]]\)/guar\&dada\1/g
s/&Desa com a\([^[:alnum:]]\)/Anomena i guar\&da\1/g
  s/\bDesa com amb la codi&ficació\([^[:alnum:]]\)/Anomena i guarda amb la codi\&ficació\1/g
  s/\(&\|\)Desa l'enllaç com a\([^[:alnum:]]\)/Anomena i gu\1arda l'enllaç\2/g
    s/\bDesa com a contacte\([^[:alnum:]]\)/Anomena i guarda com a contacte\1/g
    s/\bDesa com a ordre\([^[:alnum:]]\)/Anomena i guarda com a ordre\1/g
  s/\bD\(&\|\)esa com a\([^[:alnum:]]\)/Anomena i gu\1arda\2/g
  s/\bDe&sa com a\([^[:alnum:]]\)/Anomena i gu\&arda\1/g
  s/\bDes&a com a\([^[:alnum:]]\)/Anomena i gu\&arda\1/g
  s/\bDesa &com a\([^[:alnum:]]\)/Anomena i gu\&arda\1/g
  s/\bDesa com &a\([^[:alnum:]]\)/Anomena i gu\&arda\1/g
    s/\bAnomena i guar\(&\|\)da \(esborrany\|fitxer\|grup\|imatge\|predeterminat\)\([^[:alnum:]]\)/Anomena i gu\1arda com a \2\3/g
    s/\bAnomena i guarda &fitxer\([^[:alnum:]]\)/Anomena i guarda com a fi\&txer\1/g
    s/\bDesa el\(s\|\) fitxer\(s\|\) com a…/Anomena i guarda el\1 fitxer\2…/g
      s/\bDesa el\(s\|\) fitxer\(s\|\) com a\([^[:alnum:]]\)/Anomeneu i guardeu el\1 fitxer\2\3/g
    s/\bDe\(&\|\)sa el \(tema\|suport\) com a\([^[:alnum:]]\)/Anomena i \1guarda el \2\3/g
    s/\bDesa el \(&\|\)\(camp\|marc\|text\|text del missatge\|vídeo\) com a…/Anomena i guarda el \1\2…/g
      s/\bDesa el marc com a\([^[:alnum:]]\)/Anomeneu i guardeu el marc\1/g
    s/&Desa el trencaclosques com a\([^[:alnum:]]\)/Anomena i guar\&da el trencaclosques\1/g
    s/\bDe\(&\|\)sa l'\(adjunt\|element multimèdia\) com a…/Anomena i \1guarda l'\2…/g
      s/\bDesa l'adjunt com a\([^[:alnum:]]\)/Anomeneu i guardeu l'adjunt\1/g
    s/\bDesa l'à\(&\|\)udio com a…/Anomena i guarda l'à\1udio…/g
    s/\bDe\(&\|\)sa l'enllaç com a…/Anomena i guarda l'\1enllaç…/g
    s/\bDesa l'\(&\|\)\(emmagatzematge\|historial\|historial real\|script\) com a\([^[:alnum:]]\)/Anomena i guarda l'\1\2\3/g
    s/\bDe\(&\|\)sa la \(captura de pantalla\|imatge\|pàgina HTML completa\|partida\|programació\|seqüència de captura\|sessió d'observació\|versió nova\|vídeo\) com a\([^[:alnum:]]\)/Anomena i guar\1da la \2\3/g
    s/\bDesa la imatge de &fons com a\([^[:alnum:]]\)/Anomena i guarda la imatge de \&fons\1/g
    s/\bDesa una &còpia com a\(...\|…\)/Anomena i guar\&da una còpia…/g
    s/\bDesa una còp&ia com a\([^[:alnum:]]\)/Anomena i guar\&da una còpia\1/g
s/\bDesa la \(sessió\|sortida\) com &a\([^[:alnum:]]\)/Anomena i gu\&arda la \1\2/g
s/&Desa\([^[:alnum:]]\)/Guar\&da\1/g
s/&desa\([^[:alnum:]]\)/guar\&da\1/g
    s/\bDe&sa el còmic com a\([^[:alnum:]]\)/Anomena i guar\&da el còmic\1/g
  s/\bDe&sa\([^[:alnum:]]\)/Guar\&da\1/g
  s/\bde&sa\([^[:alnum:]]\)/guar\&da\1/g
  s/\bDes&a\([^[:alnum:]]\)/Guar\&da\1/g
  s/\bdes&a\([^[:alnum:]]\)/guar\&da\1/g
 #
  s/\bDesa amb\([^[:alnum:]]\)/Anomena i guarda amb\1/g
    s/\bDesa com a\([^[:alnum:]]\)/Anomena i guarda\1/g
  s/\"Desa com és\"/\"Anomena i guarda com és\"/g
  s/\bDesa com un arxiu de cistelles\"/Anomena i guarda un arxiu de cistelles\"/g
    s/\bDesa el document com a un fitxer diferent\([…:]\)/Anomena i guarda el document en un fitxer diferent\1/g
  s/\bDesa el document \(actual\|compilat\|existent\) com a\([…:]\)/Anomena i guarda el document \1\2/g
    s/\bDesa el document \(actual\|compilat\|existent\) com a\"/Anomeneu i guardeu el document \1\"/g
  s/\bDesa \(el \|\)\(catàleg\|diff\|document\|GIF\|perfil\|projecte\|recorregut\|títol\) com a\([…:]\)/Anomena i guarda el \2\3/g
    s/\bDesa \(el \|\)\(catàleg\|diff\|document\|GIF\|perfil\|projecte\|recorregut\|títol\) com a\"/Anomeneu i guardeu el \2\"/g
  s/\bDesa la \(campanya\|capa vectorial\|pàgina\|traducció\) com a\([…:]\)/Anomena i guarda la \1\2/g
    s/\bDesa la \(campanya\|capa vectorial\|pàgina\|traducció\) com a\"/Anomeneu i guardeu la \1\"/g
  s/\bDesa la capa vectorial com a SVG\([…:]\)/Anomena i guarda la capa vectorial com a SVG\1/g
    s/\bDesa la capa vectorial com a SVG\"/Anomeneu i guardeu la capa vectorial com a SVG\"/g
  s/\bDesa l'estat de fusió de les carpetes com a\([…:]\)/Anomena i guarda l'estat de fusió de les carpetes\1/g
  s/\bDesa la sortida automàtica com a\([…:]\)/Anomena i guarda l'eixida automàtica\1/g
  s/\bDesa les \(dades\|targetes de negoci\) com a\([…:]\)/Anomena i guarda les \1\2/g
    s/\bDesa les \(dades\|targetes de negoci\) com a\"/Anomeneu i guardeu les \1\"/g
  s/\bDesa-ho tot com a\([^[:alnum:]]\)/Anomena i guarda-ho tot\1/g
  s/\bDesa una còpia com a\([…:]\)/Anomena i guarda una còpia\1/g
    s/\bDesa una còpia com a\"/Anomeneu i guardeu una còpia\"/g
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
# # # # # # # # # # # # # #
#
#
s/\"Arrossega'm\"/\"Arrossegueu-me\"/g
s/\"Defereix\b/\"Ajorna/g
s/\"Impressió\"/\"Imprimix\"/g
s/\bNo hi ha el fitxer\([^[:alnum:]]\)/No existeix el fitxer\1/g
s/\bNo hi ha fitxer de metadades\([^[:alnum:]]\)/No existeix el fitxer de metadades\1/g
s/\"Romà\"/\"Redona\"/g
s/\bSi us plau\([^[:alnum:]]\)/Per favor\1/g
s/\bsi us plau\([^[:alnum:]]\)/per favor\1/g
s/\"Torneu-ho a intentar\"/\"Torna-ho a intentar\"/g
s/\"Traductors\"/\"Equip de traducció\"/g
# #
# # # # # # # # # # # # # #
#
# fallada
s/\"\( \)Fallada (%1)/\"Fallada (%1)/g
s/\bbaixada fallada\([^[:alnum:]]\)/baixada fallida\1/g
s/\bautocomprovacions fallades\([^[:alnum:]]\)/autocomprovacions fallides\1/g
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

# #
# # # # # # # # # # # # # #
#
# Usa
s/\b\(artificial\|Nom\|Pantalla\) a usar\([^[:alnum:]]\)/\1 que s'utilitzarà\2/g
s/\b\(Camí\|color\) a usar\([^[:alnum:]]\)/\1 que cal usar\2/g
s/\bEmpr\(a\|eu\)\([^[:alnum:]]\)/Utilitz\1\2/g
s/\bempr\(a\|eu\)\([^[:alnum:]]\)/utilitz\1\2/g
  s/\bEs fa servir\([^[:alnum:]]\)/S'utilitza\1/g
  s/\bes fa servir\([^[:alnum:]]\)/s'utilitza\1/g
s/\bF\(a\|eu\) servir\([^[:alnum:]]\)/Utilitz\1\2/g
s/\bf\(a\|eu\) servir\([^[:alnum:]]\)/utilitz\1\2/g
s/\bFer servir\([^[:alnum:]]\)/Utilitzar\1/g
s/\bfer servir\([^[:alnum:]]\)/utilitzar\1/g
s/\b\([Uu]\)s\(a\|able\|ada\|ades\|ant\|ar\|arà\|aran\|at\|ats\|ava\|em\|en\|es\|eu\|i\|in\|is\|o\)\([^[:alnum:]]\)/\1tilitz\2\3/g
  s/\bPa&utilitza\([^[:alnum:]]\)/Pa\&usa\1/g

# #
# # # # # # # # # # # # # #
#
# a un(a) -> en un(a)
# s/\ba un fitxer\([^[:alnum:]]\)/en un fitxer\1/g
# s/\ba un terminal\([^[:alnum:]]\)/en un terminal\1/g
s/\b\([Aa]\)mb el botó \(dret\|esquerre\) a un botó\([^[:alnum:]]\)/\1mb el botó \2 en un botó\3/g
s/\bAplana els submenús a un únic nivell\([^[:alnum:]]\)/Aplana els submenús en un únic nivell\1/g
s/\b\([Bb]olca els models\|[Bb]olca els objectes\|[Dd]esa\|[Dd]escompila\|Guar&da\|[Rr]enderitza\) a fitxer\([^[:alnum:]]\)/\1 en un fitxer\2/g
s/\bd'un a un\([^[:alnum:]]\)/d'un en un\1/g
s/\b\([Dd]\)esa a fitxer\([^[:alnum:]]\)/\1esa en un fitxer\2/g
s/\bvisualitzar les icones a un entorn similar\([^[:alnum:]]\)/visualitzar les icones en un entorn similar\1/g

# #
# # # # # # # # # # # # # #
#
# a -> en
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)/\1 en \2/g
s/\bA «Fris\([^[:alnum:]]\)/En «Fris\1/g
s/\bA «Nombres adjacents\([^[:alnum:]]\)/En «Nombres adjacents\1/g
s/\bA «Utilitza una línia graduada\([^[:alnum:]]\)/En «Usa una línia graduada\1/g
s/\baccés al vostre observatori a \(<[^<]\{1,\}>\)\(<[^<]\{1,\}>\)\(<[^<]\{1,\}>\)indihub.space\([^[:alnum:]]\)/accés al vostre observatori en \1\2\3indihub.space\4/g
s/\bapareixeran a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Baixades\([^[:alnum:]]\)/apareixeran en \1Baixades\2/g
s/\bAPI a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)api\([^[:alnum:]]\)/API en \1api\2/g
s/\b\(antic\|comptes\|per a una categoria\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Configuració\([^[:alnum:]]\)/\1 en \2Configuració\3/g
s/\bdedicada a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)aplicacions KDE\([^[:alnum:]]\)/dedicada en \1Aplicacions KDE\2/g
s/\belement a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Orígens\([^[:alnum:]]\)/element en \1Orígens\2/g
s/\bespecificada a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)REGEX_FIXUP\([^[:alnum:]]\)/especificada en \1REGEX_FIXUP\2/g
s/\bestablir a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Preferències\([^[:alnum:]]\)/establir en \1Preferències\2/g
s/\bexcepció inesperada a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(EncryptCommand\|EncryptEMailController\|PrepEncryptCommand\|PrepSignCommand\|SelectCertificateCommand\|SignCommand\|SignEncryptFilesController\)\([^[:alnum:]]\)/excepció inesperada en \1\2\3/g
s/\binhabilitar aquest límit a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Perfil\([^[:alnum:]]\)/inhabilitar aquest límit en \1Perfil\2/g
s/\bindicada a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Encripta\([^[:alnum:]]\)/indicada en \1Encripta\2/g
s/\bla lletra a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Ingressos\([^[:alnum:]]\)/la lletra en \1Ingressos\2/g
s/\blocalitzada a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)katedialogs\([^[:alnum:]]\)/localitzada en \1katedialogs\2/g
s/\bmenú de connectors a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)MainWindow\([^[:alnum:]]\)/menú de connectors en \1MainWindow\2/g
s/\bpersonalitzat a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Configuracions\([^[:alnum:]]\)/personalitzat en \1Configuracions\2/g
s/\bque el valor a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Consell\([^[:alnum:]]\)/que el valor en \1Consell\2/g
s/\breconfigurar a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Imatge\([^[:alnum:]]\)/reconfigurar en \1Imatge\2/g
s/\bseparat a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Configura\([^[:alnum:]]\)/separat en \1Configura\2/g
s/\btransicions a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)energies\([^[:alnum:]]\)/transicions en \1energies\2/g
s/\bvalor a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Posicionament\([^[:alnum:]]\)/valor en \1Posicionament\2/g
 #
s/\"%1 %2 a %3\"/\"%1 %2 en %3\"/g
s/\"%1 a Freenode\"/\"%1 en Freenode\"/g
s/\"Pantalla interna a %1\"/\"Pantalla interna en %1\"/g
s/\ba \(\[\)\(Discuss\|KDE-Apps\)\([^[:alnum:]]\)/en \1\2\3/g
s/\ba les instruccions següents\([^[:alnum:]]\)/en les instruccions següents\1/g
s/\ba «Quant a\(l\|\)»/en «Quant a»/g
s/\ba <varname>XDG_DATA_HOME\([^[:alnum:]]\)/en <varname>XDG_DATA_HOME\1/g
s/\baac» als sistemes macOS\([^[:alnum:]]\)/aac» en els sistemes macOS\1/g
s/\bafegir un fitxer a `$HOME\([^[:alnum:]]\)/afegir un fitxer en `$HOME\1/g
s/\bal navegador de fitxers de Windows\([^[:alnum:]]\)/al navegador de fitxers en Windows\1/g
s/\bal voltant del cursor a Windows\([^[:alnum:]]\)/al voltant del cursor en Windows\1/g
s/\b\([Aa]\)quest joc està basat a comptar\([^[:alnum:]]\)/\1quest joc es basa en comptar\2/g
s/\b\(assessorament\|persones\) a rkward-\(devel\|users\)@kde\.org\([^[:alnum:]]\)/\1 en rkward-\2@kde.org\3/g
s/\bbatallons a cadascun\([^[:alnum:]]\)/batallons en cadascun\1/g
s/\bcanvis al cicle\([^[:alnum:]]\)/canvis en el cicle\1/g
s/\bcaràcters a ambdós\([^[:alnum:]]\)/caràcters en ambdós\1/g
s/\bcelebrà a l'escola\([^[:alnum:]]\)/celebrà en l'escola\1/g
s/\bcelebrades a vuit països\([^[:alnum:]]\)/celebrades en vuit països\1/g
s/\b\([Cc]\)erca %1 a %2\([^[:alnum:]]\)/\1erca %1 en %2\2/g
s/\b\([Cc]\)erca «%1» a %2\([^[:alnum:]]\)/\1erca «%1» en %2\2/g
s/\b\([Cc]erca\|[Ss]ubstitució\) a fitxers\([^[:alnum:]]\)/\1 en fitxers\2/g
s/\bCerca a podcastindex\([^[:alnum:]]\)/Cerca en podcastindex\1/g
s/\bcerca perfils ICC a diverses\([^[:alnum:]]\)/cerca perfils ICC en diverses\1/g
s/\bcompilada de manera predeterminada a diversos sistemes\([^[:alnum:]]\)/compilada de manera predeterminada en diversos sistemes\1/g
s/\bcomunicació lliure a tots els dispositius\([^[:alnum:]]\)/comunicació lliure en tots els dispositius\1/g
s/\bconsisteix a moure\([^[:alnum:]]\)/consisteix en moure\1/g
s/\bcontrasenya per a l'usuari «%1» a «gpodder\([^[:alnum:]]\)/contrasenya per a l'usuari «%1» en «gpodder\1/g
s/\bdels missatges als\([^[:alnum:]]\)/dels missatges en els\1/g
s/\b\([Dd]\)esa a memòria\([^[:alnum:]]\)/\1esa en memòria\2/g
s/\bdesar les adreces d'interès a\([^[:alnum:]]\)/desar les adreces d'interès en\1/g
s/\bdesembarcar a la costa\([^[:alnum:]]\)/desembarcar en la costa\1/g
s/\b\(distància mínima\) a la que es reconeixerà\([^[:alnum:]]\)/\1 en la que es reconeixerà\2/g
s/\belements a dispositius muntats\([^[:alnum:]]\)/elements en els dispositius muntats\1/g
s/\b\([Ee]\)mmagatzemar a «\([^[:alnum:]]\)/\1mmagatzemar en «\2/g
s/\benllaços estan a la\([^[:alnum:]]\)/enllaços estan en la\1/g
s/\bEns veiem al \([Dd]\)ia\([^[:alnum:]]\)/Ens veiem en el dia\2/g
s/\berror a «mkisofs\([^[:alnum:]]\)/error en «mkisofs\1/g
s/\bes troba seleccionada a\([^[:alnum:]]\)/es troba seleccionada en\1/g
s/\b\([Ee]\)scriu els secrets a\([^[:alnum:]]\)/\1scriu els secrets en\2/g
s/\bespecialitzat a mantenir\([^[:alnum:]]\)/especialitzat en mantenir\1/g
s/\b\(especificada\|indicades\) a <b>Amplària\([^[:alnum:]]\)/\1 a <b>Amplària\2/g
s/\bespecificada a \([FX]\)\([^[:alnum:]]\)/especificada en \1\2/g
s/\b\([Ee]\)steu d'acord a executar\([^[:alnum:]]\)/\1steu d'acord en executar\2/g
s/\bfalta d'espai al suport d'instal·lació\([^[:alnum:]]\)/falta d'espai en el suport d'instal·lació\1/g
s/\bForça icones del diàleg\([^[:alnum:]]\)/Força icones en el diàleg\1/g
s/\bguilabel> al menú emergent\([^[:alnum:]]\)/guilabel> en el menú emergent\1/g
s/\bi als televisors\([^[:alnum:]]\)/i en els televisors\1/g
s/\bimplementació de Blu-ray a «cdrecord\([^[:alnum:]]\)/implementació de Blu-ray en «cdrecord\1/g
s/\bindicar un camí complet al lliure\([^[:alnum:]]\)/indicar un camí complet en el lliure\1/g
s/\"Informa a %1\"/\"Informa a %1\"/g
s/\binstal·len a `\/usr\([^[:alnum:]]\)/instal·len en `\/usr\1/g
s/\binterès a provar\([^[:alnum:]]\)/interès en provar\1/g
s/\binteressats a realitzar\([^[:alnum:]]\)/interessats en realitzar\1/g
s/\bla configuració a ~\/\.ssh\([^[:alnum:]]\)/la configuració en ~\/.ssh\1/g
s/\blínia d'execució de l'editor\([^[:alnum:]]\)/línia d'execució en l'editor\1/g
s/\b\([Ll]\)ongitud màxima a la que es truncarà\([^[:alnum:]]\)/\1ongitud màxima en la que es truncarà\2/g
s/\bmarques a ambdós\([^[:alnum:]]\)/marques en ambdós\1/g
s/\bmàxim d'espais a una sentència\([^[:alnum:]]\)/màxim d'espais en una sentència\1/g
s/\b\([Mm]\)enús contextuals al Konqueror\([^[:alnum:]]\)/\1enús contextuals en el Konqueror\2/g
s/\bMínim a condicional\([^[:alnum:]]\)/Mínim en condicional\1/g
s/\bmissatges als \(canals\|grups\|missatges\)\([^[:alnum:]]\)/missatges en els \1\2/g
s/\bMostra a missatge ràpid\([^[:alnum:]]\)/Mostra en Missatge ràpid\1/g
s/\bMostra l'emplaçament a %1\([^[:alnum:]]\)/Mostra l'emplaçament en %1\1/g
s/\bmostrarà al dissenyador\([^[:alnum:]]\)/mostrarà en el dissenyador\1/g
s/\b\(mp3\|ogg\)» als sistemes \(Linux\|Windows\)\([^[:alnum:]]\)/\1» en els sistemes \2\3/g
s/\bnatura seleccionada a la paraula actual\([^[:alnum:]]\)/natura seleccionada en la paraula actual\1/g
s/\b\([Nn]\)oms \(de canal\|d'usuari\) UTF8\([^[:alnum:]]\)/\1oms \2 en UTF8\3/g
s/\b\([Nn]otificacions\) a tota\([^[:alnum:]]\)/\1 en tota\2/g
s/\bnotificar els canvis dels fitxers\([^[:alnum:]]\)/notificar els canvis en els fitxers\1/g
s/\bObre l'URL a:/Obre l'URL en\:/g
s/\b\([Oo]\)cult a cada carpeta en que\([^[:alnum:]]\)/\1cult en cada carpeta en què\2/g
s/\bopcions de veu del menú d'eines en gris[?]/opcions de veu en gris en el menú d'eines\?/g
s/\bper a tancar a cada pestanya\([^[:alnum:]]\)/per a tancar en cada pestanya\1/g
s/\bprocessador a dispositius\([^[:alnum:]]\)/processador en dispositius\1/g
s/\bque el text resultant\([^[:alnum:]]\)/que el text que en resulti\1/g
s/\bSuprimirà totes les entrades de subtítols a <b>%1\([^[:alnum:]]\)/Suprimirà totes les entrades de subtítols en <b>%1\1/g
s/\btemps a preparar-ho tot\([^[:alnum:]]\)/temps en preparar-ho tot\1/g
s/\btroben a la &lt;\([^[:alnum:]]\)/troben en la \&lt;\1/g
s/\buna entrada de l'historial del porta-retalls\([^[:alnum:]]\)/una entrada en l'historial del porta-retalls\1/g
# mesos
s/\bA l'\(abril\|agost\|octubre\)\([^[:alnum:]]\)/En \1\2/g
s/\bAl \(gener\|febrer\|març\|maig\|juny\|juliol\|setembre\|novembre\|desembre\)\([^[:alnum:]]\)/En \1\2/g
s/\ba l'\(abril\|agost\|octubre\)\([^[:alnum:]]\)/en \1\2/g
s/\bal \(gener\|febrer\|març\|maig\|juny\|juliol\|setembre\|novembre\|desembre\)\([^[:alnum:]]\)/en \1\2/g
# a 192.168.1.50
s/\ba 192\.168\.1\.50\([^[:alnum:]]\)/en 192.168.1.50\1/g
# a abordar
s/\b\(centrar-se\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)abordar\([^[:alnum:]]\)/\1 en \2abordar\3/g
# a Amarok
s/\bA Amarok\([^[:alnum:]]\)/En Amarok\1/g
s/\b\(MP3tunes\|vista contextual\) a Amarok\([^[:alnum:]]\)/\1 en Amarok\2/g
# a Amazon
s/\bA Amazon\([^[:alnum:]]\)/En Amazon\1/g
s/\b\(disponible\) a Amazon\([^[:alnum:]]\)/\1 en Amazon\2/g
# a Android
s/\bA Android\([^[:alnum:]]\)/En Android\1/g
s/\b\(amb S Pen\|beta\|carregar un àudio\|creació d'imatges\|disponible\|esmenat el desament de fotogrames d'enregistrament com a JPEG\|evitar problemes\|[Ee]xecutant-se\|fallada freqüent\|feina\|funciona\|KDE Connect\|Krita\|mostrar-les\|per a la tauleta\|QAccesibility»\) a Android\([^[:alnum:]]\)/\1 en Android\2/g
# a Angle
s/\b\(16 bits\) a Angle\([^[:alnum:]]\)/\1 en Angle\2/g
# a aquest(a)
s/\btrob\(a\|eu\) a aquesta\([^[:alnum:]]\)/trob\1 en aquesta\2/g
# a Arch
s/\bA Arch\([^[:alnum:]]\)/En Arch\1/g
s/\b\([Cc]erca paquets\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Arch\([^[:alnum:]]\)/\1 en \2Arch\3/g
# a Artikulate
s/\bA Artikulate\([^[:alnum:]]\)/En Artikulate\1/g
s/\b\(Entrenament\) a Artikulate\([^[:alnum:]]\)/\1 en Artikulate\2/g
# a Astrobin
s/\b\([Cc]erca\|[Cc]ercar un objecte\|[Cc]erquen imatges\) a Astrobin\([^[:alnum:]]\)/\1 en Astrobin\2/g
# a Audex
s/\bA Audex\([^[:alnum:]]\)/En Audex\1/g
s/\b\(Les variables\) a Audex\([^[:alnum:]]\)/\1 en Audex\2/g
# a AUR
s/\bA AUR\([^[:alnum:]]\)/En AUR\1/g
s/\b\(disponible\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)AUR\([^[:alnum:]]\)/\1 en \2AUR\3/g
# a baixar
s/\b\(interessat\) a baixar\([^[:alnum:]]\)/\1 en baixar\2/g
# a Baloo
s/\b\(fetes\) a Baloo\([^[:alnum:]]\)/\1 en Baloo\2/g
# a Blender
s/\b\(nostre esprint\) a Blender\([^[:alnum:]]\)/\1 en Blender\2/g
# a Bugzilla
s/\bA Bugzilla\([^[:alnum:]]\)/En Bugzilla\1/g
s/\b\([Ee]l nom del producte\|informeu-ne\|tancats\|Trobareu la llista no completa dels errors i característiques\|vàlids\) a\(l\|\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Bb]\)ugzilla\([^[:alnum:]]\)/\1 en \3\4ugzilla\5/g
# a cada
s/\bA cada torn\([^[:alnum:]]\)/En cada torn\1/g
s/\b\(amb un objecte\|buida\|buida la memòria cau\|crearà un fitxer «.directory» ocult\|prendre de mitjana\|recordarà la posició d'enfocament del procés d'enfocament automàtic dels fotogrames de llum\) a cada\([^[:alnum:]]\)/\1 en cada\2/g
# a calligrasheets
s/\b\(userinput>\) a &calligrasheets\([^[:alnum:]]\)/\1 en \&calligrasheets\2/g
# a Cantor
s/\bA Cantor\([^[:alnum:]]\)/En Cantor\1/g
s/\b\(executeu Pkg\.install(\\"GR\\")\) a Cantor\([^[:alnum:]]\)/\1 en Cantor\2/g
# a CDS
s/\b\(resoldre el nom\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)CDS\([^[:alnum:]]\)/\1 en \2CDS\3/g
# a ChromeOS
s/\bA ChromeOS\([^[:alnum:]]\)/En ChromeOS\1/g
s/\b\(Krita\) a ChromeOS\([^[:alnum:]]\)/\1 en ChromeOS\2/g
# a conf
s/\b\(especificat\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)conf\([^[:alnum:]]\)/\1 en \2conf\3/g
# a Configuració
s/\b\(afegir ordres noves\|canviar,\|Definiu quatre jugadors\|ex\.,\|macOS\|Magnatune\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Configuració\([^[:alnum:]]\)/\1 en \2Configuració\3/g
# a Configureu
s/\b\([Oo]pcions d'alineació\|[Cc]onfigurar-lo\|macOS\|Magnatune\)\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Configureu\([^[:alnum:]]\)/\1\2\3 en \4Configureu\5/g
# a coverage
s/\b\(especificat\|no vàlides\|s'especifiquen\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)coverage\([^[:alnum:]]\)/\1 en \2coverage\3/g
# a data
s/\b\(dades sense processar\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)data\([^[:alnum:]]\)/\1 en \2data\3/g
# a Debian
s/\b\(disponibles\) a Debian\([^[:alnum:]]\)/\1 en Debian\2/g
# a Desa
s/\b\(esmenat una miniatura incorrecta\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Desa\([^[:alnum:]]\)/\1 en \2Desa\3/g
# a digiKam
s/\bA digiKam\([^[:alnum:]]\)/En digiKam\1/g
s/\b\(disponible\|disponibles\|Drets»\|Gestió d'actius digitals (DAM)\|sobre tots els menús\|utilitzat\|usen\|utilitzar el gestor de la cua per lots\|utilitzar el menú\|utilitzar l'editor de geolocalització\|utilitzar la barra lateral\|utilitzar la finestra principal\|utilitzar la taula de llum\|utilitzar les eines d'exportació\|utilitzar les eines de manteniment\|utilitzar les eines de postprocessament\|utilitzar les eines de presentació de diapositives\|utilitzar-la\|utilitzen\) a digiKam\([^[:alnum:]]\)/\1 en digiKam\2/g
# a Discover
s/\bA Discover\([^[:alnum:]]\)/En Discover\1/g
s/\b\([Cc]erqueu-ne més\|[Tt]robeu-ne més\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Discover\([^[:alnum:]]\)/\1 en \2Discover\3/g
# a diversos
s/\b\(RMarkdown\|traduirà\) a diversos\([^[:alnum:]]\)/\1 en diversos\2/g
# a dividir
s/\b\(centraria\) a dividir\([^[:alnum:]]\)/\1 en dividir\2/g
# a Dolphin
s/\b\([Dd]emana confirmació\|[Ee]rror\|[Gg]estió de fitxers\|Samba\) a Dolphin\([^[:alnum:]]\)/\1 en Dolphin\2/g
# a dot
s/\b\([Ll]legeix l'article complet\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)dot\([^[:alnum:]]\)/\1 en \2dot\3/g
# a eBay
s/\b\(p\. ex\.,\) a eBay\([^[:alnum:]]\)/\1 en eBay\2/g
# a Ekos
s/\bA Ekos\([^[:alnum:]]\)/En Ekos\1/g
s/\b\(adquisició d'imatges i vídeo\|Aquesta és una característica experimental\|inici\|reprendrà el procés de captura\|troba\) a Ekos\([^[:alnum:]]\)/\1 en Ekos\2/g
# a Enfocament
s/\b\(damunt d'un segment\|[Dd]esprés,\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Enfocament\([^[:alnum:]]\)/\1 en \2Enfocament\3/g
# a Epic Store
s/\b\(publicar-lo\) a Epic\([^[:alnum:]]\)/\1 en Epic\2/g
# a Exchange
s/\b\(que existeixin\) a Exchange\([^[:alnum:]]\)/\1 en Exchange\2/g
# a Explorer
s/\b\(que l'obriu\) a Explorer\([^[:alnum:]]\)/\1 en Explorer\2/g
# a Fedivers
s/\b\(any\) a Fedivers\([^[:alnum:]]\)/\1 en Fedivers\2/g
# a finals
s/\b\(iniciar una versió 5.2.5\) a finals\([^[:alnum:]]\)/\1 en finals\2/g
# a FITS
s/\bA FITS\([^[:alnum:]]\)/En FITS\1/g
s/\b\([Mm]illores\) a FITS\([^[:alnum:]]\)/\1 en FITS\2/g
# a Flathub
s/\bA Flathub\([^[:alnum:]]\)/En Flathub\1/g
s/\b\([Aa]llotjat\) a Flathub\([^[:alnum:]]\)/\1 en Flathub\2/g
# a Flatpak
s/\bA Flatpak\([^[:alnum:]]\)/En Flatpak\1/g
s/\b\(gengetopt»\) a Flatpak\([^[:alnum:]]\)/\1 en Flatpak\2/g
# a fòrums
s/\bA fòrums\([^[:alnum:]]\)/En fòrums\1/g
s/\b\([Tt]robaràs suport\) a fòrums\([^[:alnum:]]\)/\1 en fòrums\2/g
# a Freenode
s/\bA Freenode\([^[:alnum:]]\)/En Freenode\1/g
s/\b\([Aa]llotjat\|plasma\) a Freenode\([^[:alnum:]]\)/\1 en Freenode\2/g
# a FSView
s/\bA FSView\([^[:alnum:]]\)/En FSView\1/g
s/\b\(visibles\) a FSView\([^[:alnum:]]\)/\1 en FSView\2/g
# a GCompris
s/\bA GCompris\([^[:alnum:]]\)/En GCompris\1/g
s/\b\(que tenim\) a GCompris\([^[:alnum:]]\)/\1 en GCompris\2/g
# a «General
s/\b\(que tenim\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)General\([^[:alnum:]]\)/\1 en \2General\3/g
# a Gentoo
s/\bA Gentoo\([^[:alnum:]]\)/En Gentoo\1/g
s/\b\(indicadors «USE»\) a Gentoo\([^[:alnum:]]\)/\1 en Gentoo\2/g
# a GitHub
s/\bA GitHub\([^[:alnum:]]\)/En GitHub\1/g
# A GitLab
s/\bA GitLab\([^[:alnum:]]\)/En GitLab\1/g
s/\b\([Nn]avegueu per la nostra base de codi\) a GitLab\([^[:alnum:]]\)/\1 en GitLab\2/g
# a Google
s/\bA Google\([^[:alnum:]]\)/En Google\1/g
s/\bA \(la \|\)Google Summer of Code\([^[:alnum:]]\)/En la Google Summer of Code\2/g
s/\b\([Cc]erca\|[Cc]erca<\/replaceable>\|[Cc]erca d'imatges\|Grups\|[Oo]bt[éí]n-lo\) a Google\([^[:alnum:]]\)/\1 en Google\2/g
# a Gwenview
s/\bA Gwenview\([^[:alnum:]]\)/En Gwenview\1/g
s/\b\(com s'utilitzen\) a Gwenview\([^[:alnum:]]\)/\1 en Gwenview\2/g
# a haver
s/\b\(obtenir ajuda i no\) a haver\([^[:alnum:]]\)/\1 en haver\2/g
# a HFR
s/\b\(El canvi\) a HFR\([^[:alnum:]]\)/\1 en HFR\2/g
# a Hollywood
s/\b\([Uu]tilitzada\) a Hollywood\([^[:alnum:]]\)/\1 en Hollywood\2/g
# a html
s/\b\(coincideix amb dos patrons\|copiar un fitxer\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)html\([^[:alnum:]]\)/\1 en \2html\3/g
# a HTML
# s/\b\(\) a \(&\|\)HTML\([^[:alnum:]]\)/\1 en \2HTML\3/g
# a Identi.ca
s/\bA Identi\.ca\([^[:alnum:]]\)/En Identi.ca\1/g
s/\b\(Avisos\|Gent\|Grups\) a Identi\.ca\([^[:alnum:]]\)/\1 en Identi.ca\2/g
# a include
s/\b\([Aa]ssegureu-vos que un patró\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)include\([^[:alnum:]]\)/\1 en \2include\3/g
# a INDI
s/\bA INDI\([^[:alnum:]]\)/En INDI\1/g
# a intersphinx
s/\b\(no és vàlid\|una altra instància\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)intersphinx\([^[:alnum:]]\)/\1 en \2intersphinx\3/g
# a Internet
s/\bA Internet\([^[:alnum:]]\)/En Internet\1/g
s/\b\([Cc]erca\|[Cc]erca (res)\|[Cc]erca %1\|[Cc]erca «%1»\|localitzar\|triar paràmetres\|veu més habitualment\) a \([Ii]\)nternet\([^[:alnum:]]\)/\1 en Internet\3/g
# a invent
s/\b\(crear una petició de fusió\|GitLab\|llista de correu\|sol·licitud de fusió\|trobar\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)invent\([^[:alnum:]]\)/\1 en \2invent\3/g
# a irc
s/\b\(kde; i\|unir-vos a #kate\) a irc\([^[:alnum:]]\)/\1 en irc\2/g
# a JSON
s/\b\([Ee]rror\) a JSON\([^[:alnum:]]\)/\1 en JSON\2/g
# a KAddressBook
s/\bA KAddressBook\([^[:alnum:]]\)/En KAddressBook\1/g
s/\b\(vCard\) a KAddressBook\([^[:alnum:]]\)/\1 en KAddressBook\2/g
# a KAlgebra
s/\bA KAlgebra\([^[:alnum:]]\)/En KAlgebra\1/g
s/\b\(Gràfic en 2D\) a KAlgebra\([^[:alnum:]]\)/\1 en KAlgebra\2/g
# a Kalzium
s/\bA Kalzium\([^[:alnum:]]\)/En Kalzium\1/g
s/\b\([Vv]ista de la taula periòdica dels elements\) a Kalzium\([^[:alnum:]]\)/\1 en Kalzium\2/g
# a Kate
s/\bA Kate\([^[:alnum:]]\)/En Kate\1/g
s/\b\(cerques\) a &kate\([^[:alnum:]]\)/\1 en \&kate\2/g
# a KBibTeX
s/\b\(fets\|modificat\) a KBibTeX\([^[:alnum:]]\)/\1 en KBibTeX\2/g
# a KCachegrind
s/\bA KCachegrind\([^[:alnum:]]\)/En KCachegrind\1/g
s/\b\(canvia el tipus de cost de tot el mostrat\) a KCachegrind\([^[:alnum:]]\)/\1 en KCachegrind\2/g
# a KDE
s/\bA KDE\([^[:alnum:]]\)/En KDE\1/g
  s/\b\(error\|història\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(bugs\|dot\).kde.org\([^[:alnum:]]\)/\1 en \2\3.kde.org\4/g
s/\b\(lliure, i\|mostr[ei]n\|Skrooge\|tenim\) a KDE\([^[:alnum:]]\)/\1 en KDE\2/g
s/\b\(option>\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)kded6rc\([^[:alnum:]]\)/\1 en \2kded6rc\3/g
# a kdegraphics
s/\b\(Okular\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)kdegraphics\([^[:alnum:]]\)/\1 en \2kdegraphics\3/g
# a kdelibs
s/\b\(implementada\) a kdelibs\([^[:alnum:]]\)/\1 en la kdelibs\2/g
# a KDevelop
s/\bA KDevelop\([^[:alnum:]]\)/En KDevelop\1/g
s/\b\([Oo]brir-lo\) a KDevelop\([^[:alnum:]]\)/\1 en KDevelop\2/g
# a Kdenlive
s/\bA Kdenlive\([^[:alnum:]]\)/En Kdenlive\1/g
s/\b\([Ee]rror\) a Kdenlive\([^[:alnum:]]\)/\1 en Kdenlive\2/g
# a KHelpCenter
s/\bA KHelpCenter\([^[:alnum:]]\)/En KHelpCenter\1/g
s/\b\(Kioslaves\) a KHelpCenter\([^[:alnum:]]\)/\1 en KHelpCenter\2/g
s/\b\(cerca\) a &khelpcenter;\([^[:alnum:]]\)/\1 en \&khelpcenter;\2/g
# a Kickstarter
s/\b\(La primera pàgina\) a Kickstarter\([^[:alnum:]]\)/\1 en Kickstarter\2/g
# a Kile
s/\bA Kile\([^[:alnum:]]\)/En Kile\1/g
s/\b\(es fan servir\|utilitzar-lo\) a Kile\([^[:alnum:]]\)/\1 en Kile\2/g
# a KImageMapEditor
s/\bA KImageMapEditor\([^[:alnum:]]\)/En KImageMapEditor\1/g
s/\b\(HTML\) a KImageMapEditor\([^[:alnum:]]\)/\1 en KImageMapEditor\2/g
# a «KisTimeBasedItemModel | «KisMergeLabeledLayersCommand | KisPerspectiveTransformWorker
s/\b\(esmenat el problema\|esmenat la fallada\|esmenat un avis de model\|esmenat una fallada\|generar una imatge de referència\|rectangles\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(KisTimeBasedItemModel\|KisMergeLabeledLayersCommand\|KisPerspectiveTransformWorker\)\([^[:alnum:]]\)/\1 en \2\3\4/g
# a KMail
s/\bA KMail\([^[:alnum:]]\)/En KMail\1/g
s/\b\([Oo]bre\|[Rr]edact[ei]n correus electrònics\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)KMail\([^[:alnum:]]\)/\1 en \2KMail\3/g
# a Kleopatra
s/\bA Kleopatra\([^[:alnum:]]\)/En Kleopatra\1/g
s/\b\([Cc]ertificat\|[Oo]bre\) a Kleopatra\([^[:alnum:]]\)/\1 en Kleopatra\2/g
# a Konqueror
s/%1 s'ha desat a %2\([^[:alnum:]]\)/%1 s'ha desat en %2\1/g
s/\bObre a %1\([^[:alnum:]]\)/Obre en %1\1/g
s/\bA Konqueror\([^[:alnum:]]\)/En Konqueror\1/g
s/\b\(Enganxa<\/b>\|[Ee]rror\|execució\|incrustar\|Kioslaves\|menús contextuals\|ordre <b>Apega<\/b>\|seleccionat\) a Konqueror\([^[:alnum:]]\)/\1 en Konqueror\2/g
s/\b\(systemsettings; o\|URL;\) a &konqueror;\([^[:alnum:]]\)/\1 en \&konqueror;\2/g
# a Konsole
s/\bA Konsole\([^[:alnum:]]\)/En Konsole\1/g
s/\b\([Ee]xecuta\) a Konsole\([^[:alnum:]]\)/\1 en Konsole\2/g
# a Kontact
s/\bA Kontact\([^[:alnum:]]\)/En Kontact\1/g
s/\b\([Ll]legint fonts\) a Kontact\([^[:alnum:]]\)/\1 en Kontact\2/g
# a Kopete
s/\bA Kopete\([^[:alnum:]]\)/En Kopete\1/g
s/\b\(emoticones\|utilitzar-la\) a Kopete\([^[:alnum:]]\)/\1 en Kopete\2/g
# a KOrganizer
s/\bA KOrganizer\([^[:alnum:]]\)/En KOrganizer\1/g
s/\b\(actualitzar\|mostrar\) \(l'alarma\|les alarmes\) a KOrganizer\([^[:alnum:]]\)/\1 \2 en KOrganizer\3/g
# a KRegExpEditor
s/\bA KRegExpEditor\([^[:alnum:]]\)/En KRegExpEditor\1/g
s/\b\(treball\) a KRegExpEditor\([^[:alnum:]]\)/\1 en KRegExpEditor\2/g
# a Krita
s/\bA Krita\([^[:alnum:]]\)/En Krita\1/g
  s/\b\(2024-roadmap\\" >}})\|aspecte\|comentaris\|feina\|fil\|imatges destacades\|mensual\) a \(fund\.krita\.org\|KA\|Krita\.org\|krita-artists\.org\)\([^[:alnum:]]\)/\1 en \2\3/g
s/\b\(2024-roadmap)\|arribaran\|des de zero\|eren lentes\|fil d'eines de text\|krita-5-2-3-released\/)\|polzada\|utilitzar-l[ao]\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Krita\([^[:alnum:]]\)/\1 en \2Krita\3/g
# a KService
s/\bA KService\([^[:alnum:]]\)/En KService\1/g
s/\b\(per als fitxers d'escriptori\) a KService\([^[:alnum:]]\)/\1 en KService\2/g
# a KSquares
s/\bA KSquares\([^[:alnum:]]\)/En KSquares\1/g
s/\b\(Un tauler inicial\) a KSquares\([^[:alnum:]]\)/\1 en KSquares\2/g
# a KStars
s/\bA KStars\([^[:alnum:]]\)/En KStars\1/g
s/\b\(application>\|[Cc]aracterístiques úniques\|carregat\|disponibles\|DS[OS]\|Eina «Ekos»\|emprats\|es troben\|FITS\|implementat\|interessant»\|magnitud -1[02]\|mapa celeste\|mostraran\|mostren\|passes\|posicions dels objectes\|relativitat general\|resum dels catàlegs\|simulació\|telescopis?\|utilitza una biblioteca interna\|utilitzar\|veure exemples de galàxies el·líptiques\|Xplanet\) a KStars\([^[:alnum:]]\)/\1 en KStars\2/g
# a KWallet
s/\bA KWallet\([^[:alnum:]]\)/En KWallet\1/g
s/\b\(dades del formulari\|desar-la\|emmagatzemar les contrasenyes\|[Ee]rror\) a KWallet\([^[:alnum:]]\)/\1 en KWallet\2/g
# a KWordQuiz
s/\bA KWordQuiz\([^[:alnum:]]\)/En KWordQuiz\1/g
s/\b\(targetes ràpides\) a KWordQuiz\([^[:alnum:]]\)/\1 en KWordQuiz\2/g
# a KWrite
s/\bA KWrite\([^[:alnum:]]\)/En KWrite\1/g
s/\b\(Implementació del ressaltat de la sintaxi XML\) a KWrite\([^[:alnum:]]\)/\1 en KWrite\2/g
# a Libera
  s/\" a Libera.chat\"/\" en Libera.chat\"/g
s/\b\(IRC\) a Libera\([^[:alnum:]]\)/\1 en Libera\2/g
# a linkcheck
s/\b\(compilar expressions regulars\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)linkcheck\([^[:alnum:]]\)/\1 en \2linkcheck\3/g
# a Linux
s/\bA Linux\([^[:alnum:]]\)/En Linux\1/g
s/\() i\|amb les Qt6\|astrometry.net»\|basada\|basat\|digiKam\|disponible\|esteu\|executen sense problemes\|funcionava\|ignora\|[Ii]nstal·lar\|jugar els meus jocs\|KStars\|Per a accedir-hi\|per primera vegada\|s'ignora\|Wayland\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Linux\([^[:alnum:]]\)/\1 en \2Linux\3/g
s/\(Ekos\) a &\([Ll]\)inux\([^[:alnum:]]\)/\1 en \&\2inux\3/g
  s/\b\([Aa]\) \(\[\|\)Linux Kongress\([^[:alnum:]]\)/\1l \2Linux Kongress\3/g
# a LottieFiles
s/\b\([Vv]isualitza\) a LottieFiles\([^[:alnum:]]\)/\1 en LottieFiles\2/g
# a Mac
 #
s/\bAls Mac\([^[:alnum:]]\)/En els Mac\1/g
s/\b\(digiKam\|funciona\|i també\) als Mac\([^[:alnum:]]\)/\1 en els Mac\2/g
# a macOS
s/\bA macOS\([^[:alnum:]]\)/En macOS\1/g
s/\b\(digiKam\|esmenat una fallada\|G'Mic\|importar àudio\|importava àudio\|nova\|ora»\|però també\|provada\) a macOS\([^[:alnum:]]\)/\1 en macOS\2/g
# a Marble
s/\bA Marble\([^[:alnum:]]\)/En Marble\1/g
  s/\bEn Marble li cal\([^[:alnum:]]\)/A Marble li cal\1/g
s/\b\(es fan servir\|mapes nous\|utilitzar-lo\|Viquipèdia\) a Marble\([^[:alnum:]]\)/\1 en Marble\2/g
# a Mart
s/\b\(i els robots\|insight\/)\|Missions\) a Mart\([^[:alnum:]]\)/\1 en Mart\2/g
# a Mastodon
s/\b\(any\|publicació\) a Mastodon\([^[:alnum:]]\)/\1 en Mastodon\2/g
# a millorar
s/\b\(treball\|treballat contínuament\) a millorar\([^[:alnum:]]\)/\1 en millorar\2/g
# a moltes
s/\b\(desplegat\|predeterminada\|trobareu\) a moltes\([^[:alnum:]]\)/\1 en moltes\2/g
# a neon
s/\b\(configurarem\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)neon\([^[:alnum:]]\)/\1 en \2neon\3/g
# a oferir
s/\b\(centrat\) a oferir\([^[:alnum:]]\)/\1 en oferir\2/g
# a Okular
s/\bA Okular\([^[:alnum:]]\)/En Okular\1/g
s/\b\(errada\|manuals\) a Okular\([^[:alnum:]]\)/\1 en Okular\2/g
# a OpenOffice
s/\bA OpenOffice\([^[:alnum:]]\)/En OpenOffice\1/g
s/\b\(com a mínim\) a OpenOffice\([^[:alnum:]]\)/\1 en OpenOffice\2/g
# a OpenPGP
s/\b\(configurades\) a OpenPGP\([^[:alnum:]]\)/\1 en OpenPGP\2/g
# a OpenStreetMap
s/\bA OpenStreetMap\([^[:alnum:]]\)/En OpenStreetMap\1/g
s/\b\(llocs\) a OpenStreetMap\([^[:alnum:]]\)/\1 en OpenStreetMap\2/g
# a pantalla
s/\b\(dibuixant\) a pantalla\([^[:alnum:]]\)/\1 en pantalla\2/g
# a Patreon
s/\bA Patreon\([^[:alnum:]]\)/En Patreon\1/g
s/\b\(GCompris\) a Patreon\([^[:alnum:]]\)/\1 en Patreon\2/g
# a PHD2
s/\b\(Establiu els paràmetres de CCD i del telescopi\) a PHD2\([^[:alnum:]]\)/\1 en PHD2\2/g
# a Plasma
s/\bA Plasma\([^[:alnum:]]\)/En Plasma\1/g
s/\bA \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(&\|\)\([Pp]\)lasma\([^[:alnum:]]\)/En \1\2\3lasma\4/g
s/, a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(&\|\)\([Pp]\)lasma\([^[:alnum:]]\)/, en \1\2\3lasma\4/g
s/\b\(Configuració\|[Dd]esa la configuració\|Elisa\|Finestra principal\|Finestra principal vertical\|ocultar automàticament els plafons\|sobre l'operació actual\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(&\|\)\([Pp]\)lasma\([^[:alnum:]]\)/\1 en \2\3\4lasma\5/g
# a POST
s/\b\(accés a un port restringit\) a POST\([^[:alnum:]]\)/\1 en POST\2/g
# a qt6
s/\b\(construcció\) a qt6\([^[:alnum:]]\)/\1 en qt6\2/g
# a les qt6
s/\b\(rendiment\) a les qt6\([^[:alnum:]]\)/\1 en les qt6\2/g
# a qualsevol
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]oincidència d'etiquetes\|doble toc\|executar-se\|emmagatzemarà les vostres dades confidencials\|és el mateix\|fixar-les\|forma segura\|ignori aquests dos noms de carpeta\|[Pp]remeu\) a qualsevol\([^[:alnum:]]\)/\1 en qualsevol\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a qualsevol\([^[:alnum:]]\)/\1 en qualsevol\2/g
# a Qwant
s/\bA Qwant\([^[:alnum:]]\)/En Qwant\1/g
s/\b\(Imatges\|Notícies\|Tertúlia\) a Qwant\([^[:alnum:]]\)/\1 en Qwant\2/g
# s RMarkdown
s/\b\(vegeu la documentació\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)rmarkdown\([^[:alnum:]]\)/\1 en \2rmarkdown\3/g
# a Ruqola
s/\bA Ruqola\([^[:alnum:]]\)/En Ruqola\1/g
s/\b\(nou\) a Ruqola\([^[:alnum:]]\)/\1 en Ruqola\2/g
# a RKWard
s/\bA RKWard\([^[:alnum:]]\)/En RKWard\1/g
s/\b\(opció predeterminada\|s'utilitzaran\) a RKWard\([^[:alnum:]]\)/\1 en RKWard\2/g
# a S24
 #
s/\b\(esmenat un problema\) als S24\([^[:alnum:]]\)/\1 en els S24\2/g
# a setImage
s/\b\(pintar «KisShapeLayerCanvas»\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)setImage\([^[:alnum:]]\)/\1 en \2setImage\3/g
# a Showfoto
s/\bA Showfoto\([^[:alnum:]]\)/En Showfoto\1/g
s/\b\(Edita la geolocalització…`\|Editeu fotografies\) a Showfoto\([^[:alnum:]]\)/\1 en Showfoto\1/g
# a Simbad
s/\b\([Cc]erca\) a Simbad\([^[:alnum:]]\)/\1 en Simbad\2/g
# a &systemsettings; (Configuració del sistema)
s/\bA \(&systemsettings\|Configuració del sistema\)\([^[:alnum:]]\)/En \1\2/g
s/\ba &systemsettings\([^[:alnum:]]\)/en \&systemsettings\1/g
# a Skrooge
s/\bA Skrooge\([^[:alnum:]]\)/En Skrooge\1/g
s/\b\([Aa]ctiveu les icones\|Afegeix una operació nova\|visualitzar-los\) a Skrooge\([^[:alnum:]]\)/\1 en Skrooge\2/g
# a Snapcraft
s/\bA Snapcraft\([^[:alnum:]]\)/En Snapcraft\1/g
s/\b\([Aa]llotjat\|Kate\) a Snapcraft\([^[:alnum:]]\)/\1 en Snapcraft\2/g
# a Steam
s/\bA Steam\([^[:alnum:]]\)/En Steam\1/g
s/\b\(Kate\|Krita\|Plasma de KDE\|Store i\) a Steam\([^[:alnum:]]\)/\1 en Steam\2/g
# a StellarMate
s/\bA StellarMate\([^[:alnum:]]\)/En StellarMate\1/g
s/\b\([Ee]rror\|dispositiu\|posició\|selecció oficial\) a StellarMate\([^[:alnum:]]\)/\1 en StellarMate\2/g
# a StellarSolver
s/\bA StellarSolver\([^[:alnum:]]\)/En StellarSolver\1/g
s/\b\([Ee]rror\|dispositiu\|posició\|selecció oficial\) a StellarSolver\([^[:alnum:]]\)/\1 en StellarSolver\2/g
# a SVG
s/\bA SVG\([^[:alnum:]]\)/En SVG\1/g
s/\b\(rebutja una alçada de línia negativa\) a SVG\([^[:alnum:]]\)/\1 en SVG\2/g
# a systemsettings
s/\bA &systemsettings\([^[:alnum:]]\)/En \&systemsettings\1/g
s/\b\(establir el nom d'usuari i contrasenya predeterminats\) a &systemsettings\([^[:alnum:]]\)/\1 en \&systemsettings\2/g
# a Teletekst
s/\bA Teletekst\([^[:alnum:]]\)/En Teletekst\1/g
s/\b\(Proveïdor de cerca\) a Teletekst\([^[:alnum:]]\)/\1 en Teletekst\2/g
# a terra
s/\bpeus a terra\([^[:alnum:]]\)/peus en terra\1/g
# a TextEditor
s/\b\(família de lletres\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)TextEditor\([^[:alnum:]]\)/\1 en \2TextEditor\3/g
# a TIFF
s/\b\(ignora la resolució\) a TIFF\([^[:alnum:]]\)/\1 en TIFF\2/g
# a tota
s/\b\(Les opcions de configuració persistents\) a tota\([^[:alnum:]]\)/\1 en tota\2/g
# a totes
s/\b\([Aa]costa\|[Aa]llunya\|[Aa]propa\|capçalera\|construcció de les biblioteques de suport\|disponible\|estarà ocult\|estarà oculta\|peu de pàgina\|utilitzat\|visualització de metadades ampliades\) a totes\([^[:alnum:]]\)/\1 en totes\2/g
# a tots
s/\b\([Aa]costa\|[Aa]llunya\|[Aa]propa\|disponible\|estarà ocult\|estarà oculta\|utilitzat\) a tots\([^[:alnum:]]\)/\1 en tots\2/g
# a Treballar
s/\b\(descrites\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Treballar\([^[:alnum:]]\)/\1 en \2Treballar\3/g
# a trixel
s/\b\(carregar els objectes del catàleg\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)trixel\([^[:alnum:]]\)/\1 en \2trixel\3/g
# a Troba
s/\b\([Ee]xecució %[12345]\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Troba\([^[:alnum:]]\)/\1 en \2Troba\3/g
# a una
s/\b\(administració d'empreses\) a una\([^[:alnum:]]\)/\1 en una\2/g
# a UNIX
s/\bA \(&\|\)UNIX\([^[:alnum:]]\)/En \1UNIX\2/g
s/, a \(&\|\)UNIX\([^[:alnum:]]\)/, en \1UNIX\2/g
s/\b\(líders\) a \(&\|\)UNIX\([^[:alnum:]]\)/\1 en \2UNIX\3/g
# a Versions
s/\b\(agrupen\) a \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Versions\([^[:alnum:]]\)/\1 en \2Versions\3/g
# a VobSub
s/\b\([Ee]rror\) a VobSub\([^[:alnum:]]\)/\1 en VobSub\2/g
# a Wayland
s/\b\([Ee]rror\|estaran disponibles\) a Wayland\([^[:alnum:]]\)/\1 en Wayland\2/g
# a Weston
s/\b\(estem\) a Weston\([^[:alnum:]]\)/\1 en Weston\2/g
# a Windows
s/\bA Windows\([^[:alnum:]]\)/En Windows\1/g
s/\b\(amb la compressió «Deflate»\|ANGLE\|ANSVR\|AppData\|[Cc]orregeix una icona\|digiKam\|disponible\|esmenes d'errors\|establert el renderitzador gràfic a «direct3d11»\|estarà disponible en alguns ordinadors,\|esteu\|i -\?\|implementació per a la cadena d'eines llvm-mingw\|[Ii]nstal·lació\|instal·lar\|JPEG-XL\|macOS, i possiblement\|millor que\|neochat) i\|només\|presència de «bt2020PQColorSpace»\|requereix\|requerixutilitzar-l[ao]\|utilitzen «Deflate»\) a \(&\|\[\|\)Windows\([^[:alnum:]]\)/\1 en \2Windows\3/g
  # a la Windows Store
  s/\b\(Krita\) a la Windows Store\([^[:alnum:]]\)/\1 en la Windows Store\2/g
# a www
# a X11 / x86_64
s/\bA \(&\|\)\(X11\|x86_64\)\([^[:alnum:]]\)/En \1\2\3/g
s/, a \(&\|\)\(X11\|x86_64\)\([^[:alnum:]]\)/, en \1\2\3/g
s/\b\(disponible\|inici\|lletres\) a \(&\|\)\(X11\|x86_64\)\([^[:alnum:]]\)/\1 en \2\3\4/g
# a Xplanet
s/\bA Xplanet\([^[:alnum:]]\)/En Xplanet\1/g
s/\b\(CDV\|Visualitza\) a Xplanet\([^[:alnum:]]\)/\1 en Xplanet\2/g
# a Yahoo
s/\bA Yahoo\([^[:alnum:]]\)/En Yahoo\1/g
s/\b\(Imatges\) a Yahoo\([^[:alnum:]]\)/\1 en Yahoo\2/g
# a YouTube
s/\bA YouTube\([^[:alnum:]]\)/En YouTube\1/g
s/\b\(Creixement\|guies d'aprenentatge\|vídeo\) a YouTube\([^[:alnum:]]\)/\1 en YouTube\2/g

# #
# # # # # # # # # # # # # #
#
# a l', a la, a les, al(s), a un(a)
# a l'acció
s/\bA l'acció\([^[:alnum:]]\)/En l'acció\1/g
  s/\ba l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Acció\([^[:alnum:]]\)/en l'\1Acció\2/g
s/\b\([Cc]om\) a l'acció\([^[:alnum:]]\)/\1 en l'acció\2/g
 #
  s/\bel llenç, i a les accions\([^[:alnum:]]\)/el llenç i en les accions\1/g
s/\b\(de prova\) a les accions\([^[:alnum:]]\)/\1 en les accions\2/g
# a l'acoblable
  s/\ba l'acoblable de \(l'esquerra\|la dreta\)\([^[:alnum:]]\)/en l'acoblable de \1\2/g
s/\b\(seleccionant aquestes parts\) a l'acoblable\([^[:alnum:]]\)/\1 en l'acoblable\2/g
# a l'acoblador
s/\bA l'aco&blador\([^[:alnum:]]\)/En l'aco\&blador\1/g
s/\b\(a sota i\|esmenat «TypeError»\|esmenes\|millorat els perfils de FFmpeg\|Tria una màscara\|seleccionats\) a l'acoblador\([^[:alnum:]]\)/\1 en l'acoblador\2/g
 #
s/\b\(barres de títol\) als acobladors\([^[:alnum:]]\)/\1 en els acobladors\2/g
# a l'activitat
s/\bA l'activitat\([^[:alnum:]]\)/En l'activitat\1/g
s/\b\(Corregir un problema\|disponible\) a l'activitat\([^[:alnum:]]\)/\1 en l'activitat\2/g
 #
s/\bA les activitats\([^[:alnum:]]\)/En les activitats\1/g
  s/\b\([Mm]ostra\) a les &activitats\([^[:alnum:]]\)/\1 en les \&activitats\2/g
s/\b\(errors\|senars i els nombres\) a les activitats\([^[:alnum:]]\)/\1 en les activitats\2/g
# a l'adreça
s/\b\(Escolta les connexions de xarxa\|Nota: <\/b>%s\) a l'adreça\([^[:alnum:]]\)/\1 en l'adreça\2/g
 #
s/\b\(que heu indicat\|Sala inclosa\|Sala no inclosa\) a les adreces\([^[:alnum:]]\)/\1 en les adreces\2/g
# a l'agenda
s/\b\(seleccionada\) a l'agenda\([^[:alnum:]]\)/\1 en l'agenda\2/g
# a l'aixeta
s/\b\(Òliba comuna\) a l'aixeta\([^[:alnum:]]\)/\1 en l'aixeta\2/g
# a l'ajuda
s/\b\(Consulteu els detalls\|per a cercar\) a l'ajuda\([^[:alnum:]]\)/\1 en l'ajuda\2/g
# a l'àlbum
s/\b\(l'anterior\|ordenació\|p\. ex\., les imatges\|troba físicament\) a l'àlbum\([^[:alnum:]]\)/\1 en l'àlbum\2/g
 #
s/\b\([Cc]erca\|estan\|estan tant\|estaran\|inclosos\|però no\) als àlbums\([^[:alnum:]]\)/\1 en els àlbums\2/g
# a l'algorisme
s/\bA l'algorisme\([^[:alnum:]]\)/En l'algorisme\1/g
s/\b\(utilitzarà\|utilitzarà\) a l'algorisme\([^[:alnum:]]\)/\1 en l'algorisme\2/g
# a l'alta
s/\b\(Transport públic regional\) a l'alta\([^[:alnum:]]\)/\1 en l'alta\2/g
# a l'altitud
s/\b\(grau d'augment\) a l'altitud\([^[:alnum:]]\)/\1 en l'altitud\2/g
# a l'altra / a l'altre
s/, a l'altra part\([^[:alnum:]]\)/, en l'altra part\1/g
s/, a l'altre costat\([^[:alnum:]]\)/, en l'altre costat\1/g
s/\bA l'altra banda\([^[:alnum:]]\)/En l'altra banda\1/g
s/\bA l'altre extrem\([^[:alnum:]]\)/En l'altre extrem\1/g
s/\b\(agrupi\|canviat a «Alguna CoSA»\|correspon a un fitxer amb el mateix nom\|estàs\|expandit per espais\|Fusió a tres bandes amb base»\|i la imatge final\|suprimit\|té una imatge\) a l'altr\([ae]\)\([^[:alnum:]]\)/\1 en l'altr\2\3/g
 #
s/\b\(establirà l'estat d'aquest diagrama\) als altres\([^[:alnum:]]\)/\1 en els altres\2/g
s/\b\(trucada de prova\|xat activa i\) a les altres\([^[:alnum:]]\)/\1 en les altres\2/g
# a l'amfitrió
s/\b\([Ee]xecuta\|[Ee]xecutant-se\) a l'amfitrió\([^[:alnum:]]\)/\1 en l'amfitrió\2/g
# a l'amplada
s/\b\(és el límit\) a l'amplada\([^[:alnum:]]\)/\1 en l'amplada\2/g
# a l'amplada
s/\b\([Nn]ombre de tessel·les\) a l'\(alçada\|amplada\)\([^[:alnum:]]\)/\1 en l'\2\3/g
# a l'analitzador
s/\b\(són BMP\) a l'analitzador\([^[:alnum:]]\)/\1 en l'analitzador\2/g
# a l'anàlisi
s/\b\(seleccioneu-la\) a l'anàlisi\([^[:alnum:]]\)/\1 en l'anàlisi\2/g
# a l'anell
s/\b\(disponible\|estan\|gestió dels certificats X.509 i OpenPGP\|present\|trobat\|troben\) a l'anell\([^[:alnum:]]\)/\1 en l'anell\2/g
# a l'angle
s/\b\(multiplicador\*\) a l'angle\([^[:alnum:]]\)/\1 en l'angle\2/g
# a l'animació
s/\b\(Àudio\|[Cc]anvia la velocitat dels fotogrames\|canviar les unitats per al pas temporal\|esmenat el llenç negre que apareix\|[Ll]imita la mida dels fotogrames\|pausa entre fotogrames\|posar-lo\) a l'animació\([^[:alnum:]]\)/\1 en l'animació\2/g
 #
s/\b\(maneig del text i l'àudio\) a les animacions\([^[:alnum:]]\)/\1 en les animacions\2/g
# a l'anterior
s/\b\(Especifica a sota»\) a l'anterior\([^[:alnum:]]\)/\1 en l'anterior\2/g
# a l'antiga
s/\b\(va originar\) a l'antiga\([^[:alnum:]]\)/\1 en l'antiga\2/g
# a l'anunci
s/\b\(reconéixer i afirmar\) a l'anunci\([^[:alnum:]]\)/\1 en l'anunci\2/g
# a l'any
 #
s/\b\(aparegué\|febrer\) als anys\([^[:alnum:]]\)/\1 en els anys\2/g
# a l'aparell
s/\b\(activats\) a l'aparell\([^[:alnum:]]\)/\1 en l'aparell\2/g
# a l'aparença
s/\b\(soldat\|tant\) a l'aparença\([^[:alnum:]]\)/\1 en l'aparença\2/g
# a l'API
s/\b\(canviar l'estat de «Quadrícula i guies»\|[Cc]erca\|desament automàtic\|obtenir alguna cosa una mica més consistent\) a l'API\([^[:alnum:]]\)/\1 en l'API\2/g
# a l'apilament
s/\b\([Mm]onitor\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Aa]\)pilament\([^[:alnum:]]\)/\1 en l'\2\3pilament\4/g
# a l'aplicació
s/\bA l'aplicació\([^[:alnum:]]\)/En l'aplicació\1/g
s/\b\(actualització del microprogramari\|ajuda\|apuntat per l'«url»,\|característica\|configuració no predeterminada\|dibuixaran\|disponibles\|es mostra\|feu servir\|oberts\|[Oo]bre\|Obre la carpeta actual\|obriria el fitxer nou\|integrat\|oberts\|quant als enllaços externs\|char \*__lsan_default_suppressions()»\|tal com els veieu\|trobarà\|trobareu el que calgui\|troben\|trobeu\|trobeu a faltar\|utilitzeu\) a l'aplicació\([^[:alnum:]]\)/\1 en l'aplicació\2/g
 #
s/\bA les aplicacions\([^[:alnum:]]\)/En les aplicacions\1/g
s/\b\(accedir al seu contingut\|aplicació\]»\|comentar els fitxers\|emprar\|errors visuals\|gestor de fitxers predeterminat\|oberts\|permetre carpetes virtuals\|posar les icones KDE\|Protocol -PTP-)\|superposar-les directament\|utilitzar\|veure'ls\) a les \([Aa]\)plicacions\([^[:alnum:]]\)/\1 en les \2plicacions\3/g
# a l'AppImage
 #
s/\b\(esmenat la detecció de FFmpeg\) a les \(«\|\)AppImage\([^[:alnum:]]\)/\1 en les AppImage\3/g
# a l'aproximació
s/\b\(utilitzat\) a l'aproximació\([^[:alnum:]]\)/\1 en l'aproximació\2/g
# a l'AR
s/\b\(Gireu la muntura\|guiatge\|Moviment\) a l'AR\([^[:alnum:]]\)/\1 en l'AR\2/g
# a l'arbre
s/\bA l'arbre\([^[:alnum:]]\)/En l'arbre\1/g
  s/\ba l'arbre de treball i a l'índex\([^[:alnum:]]\)/en l'arbre de treball i en l'índex\1/g
s/\b\(conflicte\|filtrar\|marcant les caselles respectives\|marqueu una etiqueta\|mostrarà\|optimitzador «peephole»\|pujar\|seleccionant les caselles respectives\|seleccioneu de nou Actualitza\|trobat l'element eliminat\|trobat l'element modificat\|trobat la col·lecció eliminada\|trobat la col·lecció modificada\|trobat la col·lecció pare\|trobat la col·lecció pare «%1»\) a l'arbre\([^[:alnum:]]\)/\1 en l'arbre\2/g
# a l'àrea
s/\bA l'àrea\([^[:alnum:]]\)/En l'àrea\1/g
s/\b\(afegir una instrucció\|Ajust de les corbes\*\*\|amb el botó dret\|amb el botó esquerre\|amb el botó del mig\|cerqueu\|cliqueu en una miniatura\|Construeix\|construir\|corresponent\|Deixa una peça d'or\|deixeu-los anar\|disponibles\|editeu l'expressió regular\|El color de la quadrícula\|en blau\|en els punts\|en una miniatura\|escriviu «\/media»\|especifica cap extensió\|especificada\|estendre les partícules\|fes clic sobre\|fins al seu nom corresponent\|Imprimeix els missatges de progrés\|inserit el text <b>%1<\/b>\|intercanviar dos elements\|limita el contingut\|marca les baixades\|mode \*\*Mapa\*\*\|modificar una instrucció\|Mostra el &progrés\|Mostra les baixades\|mostra una imatge\|[Mm]ostrarà\|mostrarà el progrés\|mostrarà missatges detallats\|mostraran\|mostren\|No hi ha prou punts\|Només creus menudes\|quedarà més espai disponible\|[Rr]eproduir la torre de la dreta\|romangui viu\|selecció de 5 miniatures\|seleccionada\|teclejar\|toqueu sobre seu\|Transport local\|Transport públic\|Transport públic local\|trobis\|un quadrat\|vista amb pestanyes dels diagrames\) a l'àrea\([^[:alnum:]]\)/\1 en l'àrea\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a l'àrea\([^[:alnum:]]\)/\1 en l'àrea\2/g
 #
s/\bA les àrees\([^[:alnum:]]\)/En les àrees\1/g
s/\b\(assolir aquesta quantitat\|evitar defectes\|redueix l'error relatiu\|trobar la subcarpeta de les partides del sistema «\/system\/»\) a les àrees\([^[:alnum:]]\)/\1 en les àrees\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a les àrees\([^[:alnum:]]\)/\1 en les àrees\2/g
# a l'argument
s/\b\(llistades\) a l'argument\([^[:alnum:]]\)/\1 en l'argument\2/g
 #
s/\b\([Ee]rror de citació\|inclòs un metacaràcter\) als arguments\([^[:alnum:]]\)/\1 en els arguments\2/g
# a l'arquitectura
s/\b\(snap\) a l'arquitectura\([^[:alnum:]]\)/\1 en l'arquitectura\2/g
# a l'arrel
  s/\bsituar al directori LICENSES\/ a l'arrel\([^[:alnum:]]\)/situar en el directori LICENSES\/ en l'arrel\1/g
s/\b\(.txt)\|de GNU[,)]\) a l'arrel\([^[:alnum:]]\)/\1 en l'arrel\2/g
# a l'article
s/\b\(explica\|Per exemple,\|representen la descripció original del model\|tracta\|tractarà\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)article\([^[:alnum:]]\)/\1 en l'\2article\3/g
# a l'arxiu
s/\bA l'arxiu\([^[:alnum:]]\)/En l'arxiu\1/g
s/\b\(accedir directament als fitxers\|localitzar els fitxers requerits\|Obre el missatge\|obrir les entrades\|seran incloses\|trobar el fitxer «filters»\|trobar el fitxer «emailidentities»\|trobar el fitxer «mailtransports»\|trobat cap connector\|trobat cap script\) a l'arxiu\([^[:alnum:]]\)/\1 en l'arxiu\2/g
# a l'ascensió
s/\b\(dibuixarà una quadrícula de línies cada 2 hores\) a l'ascensió\([^[:alnum:]]\)/\1 en l'ascensió\2/g
# a l'Assessor
s/\b\(Ajust aproximat»\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Assessor\([^[:alnum:]]\)/\1 en \2Assessor\3/g
# a l'assistent
s/\b\(activar la vista prèvia\|esmenat la lògica\|utilitzar\) a l'assistent\([^[:alnum:]]\)/\1 en l'assistent\2/g
# a l'assumpte
s/\b\(vostra-adreça-correu<\/i>\) a l'assumpte\([^[:alnum:]]\)/\1 en l'assumpte\2/g
# a l'astronomia
s/\b\(habituals\) a l'astronomia\([^[:alnum:]]\)/\1 en astronomia\2/g
# a l'atmosfera
s/\b\(presència de diversos elements\) a l'atmosfera\([^[:alnum:]]\)/\1 en l'atmosfera\2/g
# a l'aula
s/\b\(ús\) a l'aula\([^[:alnum:]]\)/\1 en l'aula\2/g
# a l'eclíptica
s/\b\(estan\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)eclíptica\([^[:alnum:]]\)/\1 en l'\2eclíptica\3/g
# a l'editor
s/\bA l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Ee]\)ditor\([^[:alnum:]]\)/En l'\1\2ditor\3/g
  s/\bés controlat a l'editor\([^[:alnum:]]\)/és controlat per l'editor\1/g
s/\b\(Ajust de les corbes\*\*\|característica «Adjunta el meu certificat»\|característica «Adjunta la meva clau pública»\|carregades\|carregar aquesta imatge\|col·loqueu el cursor\|com a separador\|comportar la tecla de retorn\|configuració actual\|configurats\|corregir automàticament tot el text\|Ctrl+D<\/command>\|De tornada\|definit\|Desa``\|Desa temporalment les deformacions al predefinit»\|desactiva els números de línia\|desar\|desfet\|digiKam o\|disponible\|disponibles\|disposició\|dividir la lògica\|emplaçament\|emprada\|emprat\|errors\|es poden establir\|escrites\|escriviu-lo\|està\|establir\|Executa el fitxer obert\|guibutton>\|guiicon>\|guilabel>\|guimenuitem>\|guisubmenu>\|link>\|i línies noves\|inserció\|inserir caràcters especials\|inserir-lo\|mostra\|mostrar la línia respectiva\|mostrarà automàticament\|mostrats\|mou\|Obre\|Obre aquesta col·lecció de vocabulari\|Obre el fitxer\|Obre els documents de vocabulari\|Obre els fitxers RAW\|Obre l'object\|Obre la carpeta\|obrir\|obrir les imatges RAW\|obrir un fitxer\|ortogràfica\|predeterminats\|renderització d'imatges fosques\|seleccionar (una vegada) un sistema de guiatge\|seleccionat\|taula de llum i\|text de la finestra\|troba\|troba el camp\|ubicació de les tecles addicionals de compleció automàtica\|Utilitza la vista de color gestionat\|utilitzada\|utilitzat\|Veure\|[Zz]oom\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Ee]\)ditor\([^[:alnum:]]\)/\1 en l'\2\3ditor\4/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Ee]\)ditor\([^[:alnum:]]\)/\1 en l'\2\3ditor\4/g
 #
s/\b\(mostren\) als editors\([^[:alnum:]]\)/\1 en els editors\2/g
# a l'educació
s/\b\(donar suport al programari lliure\) a l'educació\([^[:alnum:]]\)/\1 en l'educació\2/g
# a l'eina
s/\bA l'eina\([^[:alnum:]]\)/En l'eina\1/g
  s/\"a l'eina\([^[:alnum:]]\)/\"en l'eina\1/g
s/\b\(apareixerà al menú «CDV» i\|creen fotogrames foscos o mapes de defectes\|esmena la forma següent existent\|esmenat la forma existent\|esmenat la drecera ambigua de «trenca el camí»\|establir la muntura\|estat «habilitada» de les accions\|estigui\|implementa\|implementa l'opció «Separació de tancament»\|[Mm]illores\|mostra\|mostraran\|mostren\|Obre una imatge\|Separació de tancament\|treballant\|Utilitza la vista prèvia de la pila\|[Uu]tilitzat\|[Uu]tilitzen\) a l'eina\([^[:alnum:]]\)/\1 en l'eina\2/g
s/\b\(en l'eina d'emplenat i\) a l'eina\([^[:alnum:]]\)/\1 en l'eina\2/g
 #
s/\bA les eines\([^[:alnum:]]\)/En les eines\1/g
s/\b\(generació d'esquemes\|tria un pinzell predefinit»\) a les eines\([^[:alnum:]]\)/\1 en les eines\2/g
# a l'eix
s/\b\([Aa]mpliació\|cau\|clicat al gràfic on (\|de l'est\|de l'oest\|del nord\|del sud\|guiatge automàtic\|i l'hora\|mostra\|moure's\|[Rr]educció\|representació gràfica de l'angle de l'altitud\|Utilitza una escala\|[Uu]sat\|[Uu]tilitzat\|Valor\) a l'eix\([^[:alnum:]]\)/\1 en l'eix\2/g
 #
s/\b\([Uu]sat\|[Uu]tilitzat\) als eixos\([^[:alnum:]]\)/\1 en els eixos\2/g
# a l'elecció
s/\b\(difereixen únicament\) a l'elecció\([^[:alnum:]]\)/\1 en l'elecció\2/g
# a l'electrònica
s/\b\(utilitzada\|utilitzades\) a l'electrònica\([^[:alnum:]]\)/\1 en l'electrònica\2/g
# a l'element
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|disponible\|disponibles\|llistades\|mitjançant la configuració\|o directament\) a l'element\([^[:alnum:]]\)/\1 en l'element\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a l'element\([^[:alnum:]]\)/\1 en l'element\2/g
 #
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\) als elements\([^[:alnum:]]\)/\1 en els elements\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) als elements\([^[:alnum:]]\)/\1 en els elements\2/g
# a l'el·lipse
s/\b\(Es reviu el camí del codi\) a l'el·lipse\([^[:alnum:]]\)/\1 en l'el·lipse\2/g



  s/\bals elements seleccionats de la barra\([^[:alnum:]]\)/als elements seleccionats en la barra\1/g
# a l'emmagatzematge
s/\b\(desar\|Dimensions\|present\) a l'emmagatzematge\([^[:alnum:]]\)/\1 en l'emmagatzematge\2/g
# a l'emparellament
s/\b\([Rr]esultat desconegut\) a l'emparellament\([^[:alnum:]]\)/\1 en l'emparellament\2/g
# a l'emplaçament
s/\"a l'EMPLAÇAMENT\"/\" en l'EMPLAÇAMENT\"/g
# s/\b\(\) a l'emplaçament\([^[:alnum:]]\)/\1 en l'emplaçament\2/g
# a l'emulador
s/\b\(AqBanking\|Executa\) a l'emulador\([^[:alnum:]]\)/\1 en l'emulador\2/g
# a l'Enquadrat
s/\b\(veure les estrelles\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Enquadrat\([^[:alnum:]]\)/\1 en \2Enquadrat\3/g
# a l'enfocament
s/\bA l'enfocament\([^[:alnum:]]\)/En l'enfocament\1/g
s/\b\(detectades\|Per tant,\|Polar),\|utilitzant\) a l'enfocament\([^[:alnum:]]\)/\1 en l'enfocament\2/g
# a l'enllaç
s/\b\(llegir la nostra política\|veure també els altres dos treballs artístics\) a l'enllaç\([^[:alnum:]]\)/\1 en l'enllaç\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a l'enllaç\([^[:alnum:]]\)/\1 en l'enllaç\2/g
 #
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\) als enllaços\([^[:alnum:]]\)/\1 en els enllaços\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) als enllaços\([^[:alnum:]]\)/\1 en els enllaços\2/g
# a l'entorn
s/\bA l'entorn\([^[:alnum:]]\)/En l'entorn\1/g
s/\b\(\\"\|com\|executi\|millores\|partida\|[Pp]artida nova\|utilitza\|útils\) a l'entorn\([^[:alnum:]]\)/\1 en l'entorn\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a l'entorn\([^[:alnum:]]\)/\1 en l'entorn\2/g
 #
s/\bAls entorns\([^[:alnum:]]\)/En els entorns\1/g
s/\b\(executar\|Les accions més importants\|[Ss]agnat\) als entorns\([^[:alnum:]]\)/\1 en els entorns\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) als entorns\([^[:alnum:]]\)/\1 en els entorns\2/g
# a l'entrada
  s/\bllegirà a l'entrada estàndard\([^[:alnum:]]\)/llegirà des de l'entrada estàndard\1/g
s/\b\(Afegiu aquestes aplicacions a continuació\|apareixerà\|assenyala les línies comentades\|canvis\|cap paraula\|[Ee]rror de citació\|la qual pot ser una imatge\|número d'1\|passat\|prenen\|si el nombre d'1\|Skype\|vistos\) a l'entrada\([^[:alnum:]]\)/\1 en l'entrada\2/g
 #
s/\b\(Mostra el progrés\|Mostra tots els detalls\|per a les expressions matemàtiques\|Utilitza el format de text enriquit\) a les entrades\([^[:alnum:]]\)/\1 en les entrades\2/g
# a l'entrenament
s/\b\(fer una pausa\) a l'entrenament\([^[:alnum:]]\)/\1 en l'entrenament\2/g
# a l'equació
s/\b\(utilitzat\) a l'equació\([^[:alnum:]]\)/\1 en l'equació\2/g
# a l'error
s/\b\(calcula la deriva a llarg termini\|un canvi més gran\) a l'error\([^[:alnum:]]\)/\1 en l'error\2/g
# a l'esborrany
s/\b\(descriu\) a l'esborrany\([^[:alnum:]]\)/\1 en l'esborrany\2/g
# a l'escala
s/\bA l'escala\([^[:alnum:]]\)/En l'escala\1/g
s/, a l'escala\([^[:alnum:]]\)/, en l'escala\1/g
s/\b\([Cc]ada pas sencer\|mostren les imatges\) a l'escala\([^[:alnum:]]\)/\1 en l'escala\2/g
# a l'escapçat
s/\b\(amb «TypeError»\|esmenat «TypeError»\) a l'escapçat\([^[:alnum:]]\)/\1 en l'escapçat\2/g
# a l'escenari
s/\bA l'escenari\([^[:alnum:]]\)/En l'escenari\1/g
s/, a l'escenari\([^[:alnum:]]\)/, en l'escenari\1/g
s/\b\(Alexander\|donar la sorpresa\) a l'escenari\([^[:alnum:]]\)/\1 en l'escenari\2/g
# a l'escola
s/\bA l'escola\([^[:alnum:]]\)/En l'escola\1/g
# a l'escriptori
s/\bA l'escriptori /En l'escriptori /g
  s/\bquan el giny és a l'escriptori\([^[:alnum:]]\)/quan el giny es troba en l'escriptori\1/g
  s/\"Vista a l'escriptori\"/\"Vista de l'escriptori\"/g
s/\(#   \|Alligator\|apareixerà una finestra nova\|Barra de menús global\|Calindori\|classe de finestres\|col·locarà\|composició 3D\|desenvolupar Plasma Mobile\|dibuixar línies\|Fes aparèixer la finestra\|funciona\|funciona bé\|funciona en els mòbils i\|gestionar de forma genèrica tota classe de metadades\|Kasts\|Kongress\|L'Station\|manera\|mostra la posició de les finestres\|ex\.,\|prémer qualsevol tecla\|Presenta les finestres\|Station\|tant\|treballa bé\|troba\|utilitza\|utilitzable\|veieu\|visualitzador de plasmoides\|viuen\) a l'escriptori\([^[:alnum:]]\)/\1 en l'escriptori\2/g
 #
s/\bAls escriptoris\([^[:alnum:]]\)/En els escriptoris\1/g
s/\b\(utilitza\) als escriptoris\([^[:alnum:]]\)/\1 en els escriptoris\2/g
# a l'esdeveniment
 #
  s/\bno reaccionen als esdeveniments\([^[:alnum:]]\)/no reaccionaran als esdeveniments\1/g
s/\b\(mostrarà\) als esdeveniments\([^[:alnum:]]\)/\1 en els esdeveniments\2/g
# a l'esfera
s/\b\(ai-greatcircle>`\|cercles majors\|Terra\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)esfera\([^[:alnum:]]\)/\1 en l'\2esfera\3/g
# a l'esglèsia
 #
s/\b\(roques\) a les esglésies\([^[:alnum:]]\)/\1 en les esglésies\2/g
# a l'espai
s/\b\([Cc]om\|Construeix una corba\|crear\|definida\|Deixa la llavor\|Desa els resultats\|emmagatzemar com un objecte nou\|emmagatzemen en una variable diferent\|estalvia uns quants bytes\|Format de fitxer\|instal·lació\|la potència\|laplacià\|Mantén el resultat\|mostren objectes R\|moviment\|moviment constant\|obre a una finestra nova\|posicionat\|presents\|realitzades\) a l'espai\([^[:alnum:]]\)/\1 en l'espai\2/g
 #
  s/\butilitzar als &plasma-workspaces\([^[:alnum:]]\)/utilitzar en els \&plasma-workspaces\1/g
  s/\bi també als espais de nom dels paquets\([^[:alnum:]]\)/així com també en els espais de nom dels paquets\1/g
s/\b\(canvis\) als espais\([^[:alnum:]]\)/\1 en els espais\2/g
# a l'espatlla
s/\b\([Pp]ujar\) a l'espatlla\([^[:alnum:]]\)/\1 en l'espatlla\2/g
# a l'especificació
s/\b\(definit\) a l'especificació\([^[:alnum:]]\)/\1 en l'especificació\2/g
# a l'espectre
s/\b\(dibuixar\) a l'espectre\([^[:alnum:]]\)/\1 en l'espectre\2/g
# a l'esquema
s/\b\(es poden canviar\|incloure\|personalitzar\|s'haurien d'incloure\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)esquema\([^[:alnum:]]\)/\1 en l'\2esquema\3/g
# a l'esquerra
s/\b\(mostra una imatge i els controls\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)esquerra\([^[:alnum:]]\)/\1 en l'\2esquerra\3/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)esquerra\([^[:alnum:]]\)/\1 en l'\2esquerra\3/g
# a l'estació
s/\b\(llavors al núvol,\) a l'estació\([^[:alnum:]]\)/\1 en l'estació\2/g
# a l'estàndard
s/\b\(figuren\) a l'estàndard\([^[:alnum:]]\)/\1 en l'estàndard\2/g
# a l'estimador
s/\b\(Tolerància\) a l'estimador\([^[:alnum:]]\)/\1 en l'estimador\2/g
# a l'estiu
s/\bA l'estiu\([^[:alnum:]]\)/En l'estiu\1/g
s/, a l'estiu\([^[:alnum:]]\)/, en l'estiu\1/g
s/\b\(més directe\|rebent més energia per segon\) a l'estiu\([^[:alnum:]]\)/\1 en l'estiu\2/g
# a l'estratègia
 #
s/\b\(esmenat la violació de l'ODR\) a les estratègies\([^[:alnum:]]\)/\1 en les estratègies\2/g
# a l'estrella
s/\bA l'estrella\([^[:alnum:]]\)/En l'estrella\1/g
s/\b\(està fix\) a l'estrella\([^[:alnum:]]\)/\1 en l'estrella\2/g
 #
s/\bA les estrelles\([^[:alnum:]]\)/En les estrelles\1/g
# a l'estri
s/\b\(establert «updateRect»\) a l'estri\([^[:alnum:]]\)/\1 en l'estri\2/g
# a l'estructura
s/\b\(Bolca els missatges de correu electrònic\|[Ee]rror\) a l'estructura\([^[:alnum:]]\)/\1 en l'estructura\2/g
# a l'estilbly fix ODR violation i
s/\b\(El fons esdevé opac\|es despatxaran\|es retorna l'adreça\|establiu les opcions adequades\|no es comporten com s'espera quan formen part dels menús de la barra de menús de nivell superior\|utilitza diàlegs\) a l'estil\([^[:alnum:]]\)/\1 en l'estil\2/g
 #
s/\b\(mode de barreja «mescla forta més suau»\) als estils\([^[:alnum:]]\)/\1 en els estils\2/g
# a l'etapa
s/\b\(encara es troba\) a l'etapa\([^[:alnum:]]\)/\1 en l'etapa\2/g
# a l'etiqueta
s/\b\(anterior, a\|i també\|especificar el text\|mostrar el temps restant de la peça\|mostraran\|Valor no vàlid\) a l'etiqueta\([^[:alnum:]]\)/\1 en l'etiqueta\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a l'etiqueta\([^[:alnum:]]\)/\1 en l'etiqueta\2/g
 #
  s/\bDistància a les etiquetes\([^[:alnum:]]\)/Distància fins a les etiquetes\1/g
s/\b\(com\|desaran\|detecció del joc de caràcters\|Elimina els e&spais finals\|emmagatzema\|emmagatzemar el rètol de color de l'element\|emmagatzemar el rètol de selecció de l'element\|emmagatzemar la data i hora de l'element\|emmagatzemar la informació de geolocalització\|emmagatzemar la plantilla de les metadades\|emmagatzemar la valoració de l'element\|emmagatzemar les etiquetes de l'element\|emmagatzemen\|estaran\|Mostra el contingut de la barra de títol\|mostrin noms llargs\|mostraran noms llargs (noms comuns)\|seleccionats però no\) a les etiquetes\([^[:alnum:]]\)/\1 en les etiquetes\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a les etiquetes\([^[:alnum:]]\)/\1 en les etiquetes\2/g
# a l'execució
s/\b\(estrelles detectades\|generar múltiples parts\|pausa\) a l'execució\([^[:alnum:]]\)/\1 en l'execució\2/g
# a l'executable
s/\b\([Ee]rror de citació\|inclòs un metacaràcter\) a l'executable\([^[:alnum:]]\)/\1 en l'executable\2/g
# a l'exemple
s/\bA l'exemple\([^[:alnum:]]\)/En l'exemple\1/g
s/\b\(com\|haureu notat\|Lum \*»\) a l'exemple\([^[:alnum:]]\)/\1 en l'exemple\2/g
# a l'exercici
s/\bA l'exercici\([^[:alnum:]]\)/En l'exercici\1/g
s/\b\(inclosa\|inclouran\) a l'exercici\([^[:alnum:]]\)/\1 en l'exercici\2/g
 #
s/\bAls exercicis\([^[:alnum:]]\)/En els exercicis\1/g
# a l'explorador
s/\b\(el fitxer actual\) a l'explorador\([^[:alnum:]]\)/\1 en l'explorador\2/g
# a l'exportació
s/\b\(esmenat línies\|mantenir l'últim fotograma\) a l'exportació\([^[:alnum:]]\)/\1 en l'exportació\2/g
# a l'exportador
s/\b\(esmenat l'error\|esmenat un error\) a l'exportador\([^[:alnum:]]\)/\1 en l'exportador\2/g
# a l'exposició
# a l'extensió
s/\b\([Ee]rror\) a l'extensió\([^[:alnum:]]\)/\1 en l'extensió\2/g
# a l'extracte
s/\b\(contingut\) a l'extracte\([^[:alnum:]]\)/\1 en l'extracte\2/g
# a l'extrem
s/\bA l'extrem\([^[:alnum:]]\)/En l'extrem\1/g
  s/\bHabilitar l'estirament: a l'extrem\([^[:alnum:]]\)/Habilitar l'estirament: en l'extrem\1/g
s/\b\(Apunta la vista d'ocell\|arribant a terra de nou\|capturats\|troba\|utilitzar el terra fals\) a l'extrem\([^[:alnum:]]\)/\1 en l'extrem\2/g
 #
s/\b\(situades\) als extrems\([^[:alnum:]]\)/\1 en els extrems\2/g
# a l'F-Droid
s/\b\(publiquem a la Play Store i\) a l'F-Droid\([^[:alnum:]]\)/\1 en l'F-Droid\2/g
# a l'habitació
s/\b\(en un amfitrió\) a l'habitació\([^[:alnum:]]\)/\1 en l'habitació\2/g
# a l'hemisferi
s/\b\(Aquí\|emplaçaments\|final de l'hivern\|tardor\|viviu\) a l'hemisferi\([^[:alnum:]]\)/\1 en l'hemisferi\2/g
# a l'hiperespai
s/\b\([Uu]na carrera\) a l'hiperespai\([^[:alnum:]]\)/\1 en l'hiperespai\2/g
# a l'histograma
s/\b\([Uu]n cursor\) a l'histograma\([^[:alnum:]]\)/\1 en l'histograma\2/g
# a l'historial
s/\b\([Aa]nterior\|cap entrada\|[Cc]erca\|Cerca llocs web visitats\|[Cc]ercar\|com a sobrenom\|desant l'últim diagrama\|desat\|desats\|emmagatzema automàticament\|emmagatzemar\|emmagatzemarà\|emmagatzemarà automàticament «en el lloc»\|emmagatzemarà cap diagrama més\|emmagatzemat\|emmagatzemats\|endavant\|endavant un pas\|enrere\|mancar\|Manté la notificació\|mantenir\|mantindran\|totes<\/span> les accions\|màxim d'elements\|Mostra\|posició corresponent\|posició del diagrama actual\|retrocedir\|[Ss]egüent\|seleccionades\|tindreu una entrada\|un pas enrere\) a l'historial\([^[:alnum:]]\)/\1 en l'historial\2/g
# a l'hivern
s/\bA l'hivern\([^[:alnum:]]\)/En l'hivern\1/g
s/\(,\|que\) a l'hivern\([^[:alnum:]]\)/\1 en l'hivern\2/g
# a l'HMS
s/\(ascensió recta (AR)\|Gireu la muntura\) a l'HMS\([^[:alnum:]]\)/\1 en l'HMS\2/g
# a l'hora
s/\b\(Executa el rellotge\) a l'hora\([^[:alnum:]]\)/\1 en l'hora\2/g
# a l'horitzó
s/\b\(estar\|incloent els punts cardinals de la rosa dels vents\) a l'horitzó\([^[:alnum:]]\)/\1 en l'horitzó\2/g
# a l'ID
# a l'IDE
s/\b\([Cc]onfigurar el tipus de compleció automàtica\) als IDE\([^[:alnum:]]\)/\1 en els IDE\2/g
# a l'idioma
 #
s/\b\(traduït completament\|traduït parcialment\) als idiomes\([^[:alnum:]]\)/\1 en els idiomes\2/g
# a l'IGU
  s/\bd'IGU\([^[:alnum:]]\)/de la IGU\1/g
s/\bA l'IGU\([^[:alnum:]]\)/En la IGU\1/g
s/\b\([Mm]illores\|està\|troba\) a l'IGU\([^[:alnum:]]\)/\1 en la IGU\2/g
# a l'incubador
s/\b\(gcompris-joins-kde-incubator-and-launches-fundraiser)\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)incubador\([^[:alnum:]]\)/\1 en l'\2incubador\3/g
# a l'índex
s/\b\(llisten\) a l'índex\([^[:alnum:]]\)/\1 en l'índex\2/g
 #
s/\b\([Cc]erca\) als índexs\([^[:alnum:]]\)/\1 en els índexs\2/g
# a l'indicador
s/\bA l'indicador\([^[:alnum:]]\)/En l'indicador\1/g
s/\b\([Mm]ostra el rellotge només\|Mostra el rellotge només\|permesos els contenidors següents\|teclegeu <pre>kgpg -k<\/pre>\) a l'indicador\([^[:alnum:]]\)/\1 en l'indicador\2/g
# a l'indicatiu
s/\bA l'indicatiu\([^[:alnum:]]\)/En l'indicatiu\1/g
# a l'informe
s/\b\(cap operació\|disponible\|estaven\|Inclou o no els ingressos\|Inclou o no les despeses\|Inclou o no les operacions agrupades\|Inclou o no les operacions seguides\|Inclou o no les transferències\|Mostra la versió\|tenen en compte\) a l'informe\([^[:alnum:]]\)/\1 en l'informe\2/g
 #
s/\b\(cap operació\|en un valor\|damunt d'un valor\|impacte\|inclòs\|mostrat\) als \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)informes\([^[:alnum:]]\)/\1 en els \2informes\3/g
# a l'infraroig
s/\b\(emeti principalment\) a l'infraroig\([^[:alnum:]]\)/\1 en l'infraroig\2/g
# a l'inici
s/\bA l'inici\([^[:alnum:]]\)/En l'inici\1/g
  s/\bEn l'inici de bloc\([^[:alnum:]]\)/A l'inici de bloc\1/g
s/\b\(ajustar-se\|fallada\|[Ff]inestra INDI\|[Ii]nicia automàticament el temporitzador d'aparcament\|[Ii]nicialitzat\|Krita\|[Mm]antén\) a l'inici\([^[:alnum:]]\)/\1 en l'inici\2/g
# a l'insegur
  s/\bcartera; <br \/>voleu\([^[:alnum:]]\)/cartera\. <br \/>Voleu\1/g
s/\b\(desar-la\) a l'\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)insegur\([^[:alnum:]]\)/\1 en l'\2insegur\3/g
# a l'inspector
s/\b\(Corba V»\|Gràfic en 3D»\|Posició del divisor horitzontal\|Posició del divisor vertical\|[Tt]aula\|utilitzarà\) a l'\([Ii]\)nspector\([^[:alnum:]]\)/\1 en l'\2nspector\3/g
# a l'intèrpret
s/\bA l'intèrpret\([^[:alnum:]]\)/En l'intèrpret\1/g
s/\b\([Ee]rror de citació\|Executa la línia actual\|executarà\|inclòs un metacaràcter\) a l'intèrpret\([^[:alnum:]]\)/\1 en l'intèrpret\2/g
 #
s/\bAls intèrprets\([^[:alnum:]]\)/En els intèrprets\1/g
# a l'interval
s/\b\(contingut\|Converteix els bytes\|descarregar\|disponible\|estar\|hi ha\|hi ha plafons\|pèrdua significativa\|produir\|suma tots els valors\|tots els bytes\|utilitza\) a l'interval\([^[:alnum:]]\)/\1 en l'interval\2/g
# a l'IU
s/\bA l'IU\([^[:alnum:]]\)/En la IU\1/g
s/\b\([Mm]illores\|visualitza\) a l'IU\([^[:alnum:]]\)/\1 en la IU\2/g
# a l'obertura
s/\b\(mal format\) a l'obertura\([^[:alnum:]]\)/\1 en l'obertura\2/g
# a l'objecte
s/\b\(manca l'atribut %s\|fets\|trobat l'atribut «%1»\) a l'objecte\([^[:alnum:]]\)/\1 en l'objecte\2/g
 #
s/\b\(Desa els canvis\) als objectes\([^[:alnum:]]\)/\1 en els objectes\2/g
# a l'objectiu
  s/\b\(camí i que\|la temperatura del llit\|Tux\) arribi a l'objectiu\([^[:alnum:]]\)/\1 arribi fins a l'objectiu\2/g
s/\b\(centrat\|instal·lat\) a l'objectiu\([^[:alnum:]]\)/\1 en l'objectiu\2/g
# a l'obra
# s/\b\(\) a l'obra\([^[:alnum:]]\)/\1 en l'obra\2/g
# a l'observatori
s/\b\(Programa d'observació avançat\) a l'\([Oo]\)bservatori\([^[:alnum:]]\)/\1 en l'\2bservatori\3/g
# a l'obtenció
s/\b\(emprada\) a l'obtenció\([^[:alnum:]]\)/\1 en l'obtenció\2/g
# a l'ocular
s/\b\(veu l'objecte\) a l'ocular\([^[:alnum:]]\)/\1 en l'ocular\2/g
# a l'ocurrència
s/\bA l'ocurrència\([^[:alnum:]]\)/En l'ocurrència\1/g
# a l'opció
s/\b\(disponible\|especificar\|especificat\|manca «+» o «-»\|manca l'atribut esmentat\|inclou\|Trieu «Altres»\) a l'opció\([^[:alnum:]]\)/\1 en l'opció\2/g
 #
  s/\bVerifiqueu a les opcions\([^[:alnum:]]\)/Verifiqueu les opcions\1/g
s/\(»\|activació\|activar-ho\|activar-la\|Ajusteu el termini de lliurament\|Calcula automàticament HFR``\|canviar qualsevol preferència\|canvieu\|configuren\|desactiveu l'opció del rotor\|es pot ajustar\|especificat\|establert\|habilitada\|HFR<\/guilabel>\|L'accés\|màx. de fotogrames d'enfocament<\/span>\|modificar\|mostrades\|nom i el port de l'amfitrió\|port\|presenten\|rotor»,\|tasca<\/guilabel>\|Utilitza els desplaçaments de l'alba i la posta\) a les \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Oo]\)pcions\([^[:alnum:]]\)/\1 en les \2\3pcions\4/g
# a l'operant
s/\b\(Falta un operador o espai\) a l'operant\([^[:alnum:]]\)/\1 en l'operant\2/g
# a l'òptica
s/\b\(obstruccions\) a l'òptica\([^[:alnum:]]\)/\1 en l'òptica\2/g
# a l'ordenació
s/\b\(Pes\) a l'ordenació\([^[:alnum:]]\)/\1 en l'ordenació\2/g
# a l'ordinador
s/\b\(cap a aquests programes\|Compartiu fitxers i URL\|comprimida\|Desa aquest perfil individual a un fitxer separat\|desades\|desar la imatge\|desaran localment\|desen\|detectar aquestes eines\|eliminant\|emmagatzemades\|executant\|executant-se\|executar\|fitxers d'índex de l'astrometria\|gestiona la impressió\|instal·lada\|hi ha\|instal·lades\|[Ii]nstal·lar\|instal·lar digiKam\|instal·lar l'aplicació\|instal·lar KDE Connect\|instal·lat\|instal·lat correctament\|instal·lats\|invoca un programa &FTP;\|localitzar el programa <em>dvips<\/em>\|Mostra les notificacions del dispositiu\|obtenir una vista prèvia del flux\|que ho feu\|qu[eè] s'està reproduint\|que s'està reproduint actualment\|suprimir totes les contrasenyes\|trobar el programa <em>dvipdfm<\/em>\|troben\|VirtualBox<\/a>\|visualitzar l'ús del disc\) a l'ordinador\([^[:alnum:]]\)/\1 en l'ordinador\2/g
 #
s/\b\(en l'escriptori Linux i\) als ordinadors\([^[:alnum:]]\)/\1 en els ordinadors\2/g
# a l'ordre
s/\b\(emprat\|error\|errònia\|[Ee]rror de sintaxi\|indicat\|Paràmetre incorrecte\|proporcionada\|subministrat\|Un <placeholder>&#37;s<\/placeholder>\|utilitzar les variables <b>%1, %2… %9<\/b>\|utilitza[rt]\) a l'ordre\([^[:alnum:]]\)/\1 en l'ordre\2/g
 #
s/\b\(supressió dels espais\|retard\) a les ordres\([^[:alnum:]]\)/\1 en les ordres\2/g
# a l'orientació
s/\b\(Precisió\) a l'orientació\([^[:alnum:]]\)/\1 en l'orientació\2/g
# a l'origen
s/\b\(afegir el projecte %1\|incloses les traduccions buides\) a l'origen\([^[:alnum:]]\)/\1 en l'origen\2/g
  s/\bdisponible als orígens següents\([^[:alnum:]]\)/disponible per als orígens següents\1/g
# a l'script
  s/\"a l'script\([^[:alnum:]]\)/\"en l'script\1/g
s/\b\([Dd]esar\|[Ee]rror de citació\|errors\|estigui desat\|inclòs un metacaràcter\|pausa\|posició\|presents\|pujarà una posició\) a l'script\([^[:alnum:]]\)/\1 en l'script\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a l'script\([^[:alnum:]]\)/\1 en l'script\2/g
 #
  s/\"als scripts\([^[:alnum:]]\)/\"en els scripts\1/g
s/\b\(cercar en l'ajuda d'R per al símbol sota el cursor\) als scripts\([^[:alnum:]]\)/\1 en els scripts\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) als scripts\([^[:alnum:]]\)/\1 en els scripts\2/g
# als ulls
s/\b\(danys permanents\) als ulls\([^[:alnum:]]\)/\1 en els ulls\2/g
# a l'última
s/\bA l'últim\(a\|\)\([^[:alnum:]]\)/En l'últim\1\2/g
  s/\"Apunta a l'última carpeta\"/\"Focus en l'última carpeta\"/g
  s/\bMou el cursor a l'últim\([^[:alnum:]]\)/Mou el cursor fins a l'últim\1/g
s/\b\(ancoratge\|arribaria\|peu de pàgina\) a l'última\([^[:alnum:]]\)/\1 en l'última\2/g
 #
s/\b\(primers períodes que\) als últims\([^[:alnum:]]\)/\1 en els últims\2/g
s/\b\(disponibles per a la prova\) a les últimes\([^[:alnum:]]\)/\1 en les últimes\2/g
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
# a la 5...
s/\b\(es pot provar\|regressió\|regressió present\) a la \([123456789]\)\([^[:alnum:]]\)/\1 en la \2\3/g
# a la Baixa
s/\bpúblic a la Baixa\([^[:alnum:]]\)/públic en la Baixa\1/g
# a la banda
s/\bA la banda\([^[:alnum:]]\)/En la banda\1/g
  s/\bCorre a la banda \(dreta\|esquerra\|més llarga\)\([^[:alnum:]]\)/Corre damunt la banda \1\2/g
  s/\bel nom indicat a la banda esquerra\([^[:alnum:]]\)/el nom establert en la banda esquerra\1/g
s/\b\(addicional\|cap a directoris\|creació de fitxers nous\|desmastegui els enllaços simbòlics\|duplicat correctament\|enroca\|error\|existeixen\|generats automàticament\|Implementa el filtratge Sieve\|invocant\|mesura\|missatges d'avís\|modifiqui tots els enllaços simbòlics\|Mostra els números de les línies\|presents\|seleccioneu valors no-SD\|Suprimeix els fitxers\|suprimeixi qualsevol fitxer\|suprimir els fitxers\|Toc\|treball»\|troba\|troben\|utilitza\|utilitzarà\) a la banda\([^[:alnum:]]\)/\1 en la banda\2/g
 #
  s/\bCorre a les bandes \(més amples\)\([^[:alnum:]]\)/Corre damunt les bandes \1\2/g
s/\b\(perforat\) a les bandes\([^[:alnum:]]\)/\1 en les bandes\2/g
# a la bandera
s/\b\(Apareixerà una lletra\|Mostra l'etiqueta\|que hi ha\) a la bandera\([^[:alnum:]]\)/\1 en la bandera\2/g
# a la barra
s/\bA la barra\([^[:alnum:]]\)/En la barra\1/g
  s/\b\(apareixen\|descrita\|o\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Barra\([^[:alnum:]]\)/\1 en la \2Barra\3/g
  s/\barribar a la barra\([^[:alnum:]]\)/arribar fins a la barra\1/g
  s/\barrossegant-la a la barra\([^[:alnum:]]\)/arrossegant-la des de dins de la barra\1/g
  s/\b\(Ekos\|gt;\|kate\|programari\|Redueix\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)a la barra\([^[:alnum:]]\)/\1\2 en la barra\3/g
  s/\bINDI a la &barra\([^[:alnum:]]\)/INDI en la \&barra\1/g
  s/\b\(botó d'augment\|botó enrere\|creu blanca\|L'historial\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) a la barra\([^[:alnum:]]\)/\1 \2\3 en la barra\4/g
  s/\bla seva entrada a la barra de tasques es ressaltarà\([^[:alnum:]]\)/es ressaltarà la seva entrada en la barra de tasques\1/g
  s/\bs'hauria de visualitzar a la barra\([^[:alnum:]]\)/s'hauria de mostrar en la barra\1/g
s/\b\([Aa]maga\|amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|generar les icones dels caràcters\|Adreces d'interès\|alineació del text\|amb l'època actual\|amb l'època estàndard\|ambdós també\|apareixeran\|Botó\|guibutton>\|guiicon>\|guilabel>\|guimenuitem>\|guisubmenu>\|link>\|botó \*\*Editor d'imatges\*\*\|cada element individual\|canviar el text\|Centra les pestanyes\|clic amb el botó dret del ratolí\|clic amb el botó esquerre del ratolí\|clic del ratolí sobre les 5 estrelles\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\|Cliqueu amb el botó dret del ratolí\|cliqueu sobre l'etiqueta de \*color\*\|Color només\|com un cursor ocupat o\|Commuta la visualització dels missatges INDI\|dels elements individuals\|disponible\|disponibles\|donarà color\|editeu-los\|Eines\*\*\|Ekos\|Ekos o\|Elements\|en aquesta icona\|Endavant<\/guiicon> (fletxa a la dreta)\|escriviu-la\|Espera\|espera a dalt esquerra (o millor a la dreta)\|Esperat\|Estableix el focus\|executi una expressió de substitució de «sed»\|Focus\|Funció mos&trada\|guibutton>\|guiicon>\|guilabel>\|guimenuitem>\|guisubmenu>\|link>\|hi ha\|i de vegades\|icones de precisió d'increment o decrement\|Icones incoherents\|identificat\|kate<\/userinput>\|Incrusta una categoria\|La finestra no surt\|La pestanya :ref:`Mapes <mapsearch_view>`\|La pestanya \*\*Mapes\*\*\|llista de la cua per lots i\|Mapa en miniatura\|[Mm]arca l'entrada\|marcades\|marcar aquesta etiqueta\|Mida de les columnes de l'histograma\|Missatges INDI\|Modifiqueu el text\|[Mm]ostra\|Mo&stra el camí\|[Mm]ostra el camí sencer\|Mostra el control lliscant del zoom\|Mostra el menú d'&usuari\|Mostra el percentatge de bateria\|Mostra el progrés de càrrega\|Mostra el títol de la finestra\|Mostra els articles sense llegir\|Mostra els consells dels botons\|Mostra els correus sense llegir\|Mostra els missatges d'estat d'INDI\|Mostra els missatges entrants d'estat d'INDI\|Mostra els no llegits\|Mostra icones grans\|Mostra icones normals\|Mostra icones petites\|Mostra l'indicador\|Mostra la informació sobre l'espai\|Mostra la nota\|Mostra les identitats\|Mostra només les adreces marcades\|Mostra només les etiquetes de cara per a assignar noms\|mostra sempre el camí sencer\|Mostra un mapa en miniatura\|Mostra una icona\|Mostra una icona addicional\|mostra una imatge, i\|Mostra una vista prèvia\|Mostra vistes prèvies dels entorns\|mostrades\|mostrar\|mostrat\|mostrin els missatges d'INDI\|mostrin les coordenades «Alt» i «Az»\|mostrin les coordenades «AR» i «Dec»\|mostrin les coordenades «AR» i «Dec» del J2000\.0\|mostrar o no els missatges de l'estat INDI\|mostrarà\|mostrarà al costat del botó de recàrrega\|mostrarà &kstars;\|mostrarà marques\|mostrarà un camí editable\|mostrarà un mapa en miniatura\|mostrarà un mapa en miniatura de tot el document\|mostraran\|mostraran aquelles fotografies de la selecció\|mostraran els articles sense llegir\|Nova\*\*\|nova»\|[Oo]culta\|oculta el comptador de línies\|oculta el comptador de paraules\|oculta el mapa en miniatura\|del cursor del ratolí\|oculta les marques\|ocultar els camps de coordenades tant AR\/Dec com Alt\/Az\|ordenació dels elements\|ocupar espai\|Pas temporal``\|pestanya Filtre\|pestanyes»\|Planificador de l'Ekos o\|Redueix<\/guibutton>\|prement el botó \*\*Taula\*\*\|prement la icona ``Temps``\|programari<\/userinput>\|Redueix``\|representa una unitat i cada quadre\|ressaltar un URL\|s'actualitzen\|s'identificarà\|seguiment``\|seguiu les instruccions\|selecció\|seleccionar un àlbum\|seleccionar una etiqueta\|Trieu els botons habilitats\|seleccioni l'element corresponent\|situar\|sobre aquesta ubicació\|teclegeu fonts:\/\|teclejant fonts:\/\|teclejar <i>«audiocd:\/»<\/i>\|tenir un botó <interface>Menú d'hamburguesa<\/interface>\|Terra``\|tipus diferents de filtres\|Trieu els botons habilitats\|ubicada\|ubicat\|utilitzar aquesta ajuda\|utilitzar la icona Moneda\|utilitzar la icona de tant per cent\|veure el full de trucs\|veure el progrés\|visitar\|[Vv]ista d'eines\|[Vv]ista de colors\|[Vv]ista de filtres\|[Vv]ista de llegendes\|[Vv]ista de mapa\|[Vv]ista de metadades\|[Vv]ista de propietats\|[Vv]ista de versions\|vista en arbre\|[Vv]ista general\) a la \([Bb]\)arra\([^[:alnum:]]\)/\1 en la \2arra\3/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la \([Bb]\)arra\([^[:alnum:]]\)/\1 en la \2arra\3/g
 #
s/\bA les barres\([^[:alnum:]]\)/En les barres\1/g
s/\b\(amb el text\|aparèixer\|aplicar als botons\|canviar l'aparença del text\|dibuixa una vora\|ombra clara de les ratlles\|vista en arbre\) a les barres\([^[:alnum:]]\)/\1 en les barres\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a les barres\([^[:alnum:]]\)/\1 en les barres\2/g
# a la base
  s/\bAquest fitxer se sol trobar a\"/Aquest fitxer se sol trobar en\"/g
  s/\bError a la base de dades\([^[:alnum:]]\)/S'ha produït un error en la base de dades\1/g
s/\b\(actualitzant l'orientació\|aplicada a l'URL dels elements\|[Cc]erca\|Cerca marques de llocs\|cercant els duplicats\|Clau\|corrupció\|crear la taula\|data d'aleshores\|desades\|desar\|desar-les\|desat\|[Ee]mmagatzema\|Emmagatzema el missatge\|[Ee]mmagatzema el missatge\|[Ee]mmagatzema els missatges\|emmagatzema els resultats\|emmagatzema les seves adreces d'interès\|emmagatzemada\|emmagatzemades\|emmagatzemar\|emmagatzemarà\|emmagatzemarà més dades\|emmagatzemaran els resultats\|emmagatzemen\|escriptura\|estigui\|existeix\|existia\|existís anteriorment\|exploració d'elements nous\|inserir\|Llegeix les metadades des del fitxer\|Manca la taula de ciutats\|ocupa espai\|ordenar-les\|registrada\|registrades\|registrats\|registrar els elements nous\|registrar tots els elements\|reparat incoherències\|seleccionat\|seleccionats\|tenen magnituds conegudes\|totes les imatges\|tots<\/em> els fitxers\|troba\|trobar %1 objecte\|trobar %1 objectes\|trobar elements nous\|trobar la informació del dispositiu de la càmera pertinent\|trobar la informació pertinent a la lent\|trobat\|trobat cap actualització\|trobat dades\|trobat la càmera\|trobat la informació de la pista\|trobat lents\|trobat taules\) a la base\([^[:alnum:]]\)/\1 en la base\2/g
  s/\baccés d'escriptura en la base\([^[:alnum:]]\)/accés d'escriptura a la base\1/g
 #
s/\b\(Cerca dades d'entrades bibliogràfiques\|tenen magnituds conegudes\|trobat l'objecte\) a les bases\([^[:alnum:]]\)/\1 en les bases\2/g
# a la beta
s/\b\(millores\) a la beta \([12]\)\([^[:alnum:]]\)/\1 en la beta \2\3/g
# a la bibliografia
s/\b\(duplicades\|Vista prèvia de les entrades\) a la bibliografia\([^[:alnum:]]\)/\1 en la bibliografia\2/g
# a la biblioteca
s/\b\(anàlisi\|desar crearà símbols addicionals\|desar-lo actualitzarà aquest símbol\|desaran automàticament\|Deseu el símbol actual com a nou\|disponibles\|existeix\|existeixen\|Introduïu un nom per al clip\) a la biblioteca\([^[:alnum:]]\)/\1 en la biblioteca\2/g
 #
s/\b\(disponible\|explorar amb facilitat les dades i funcions\|resultant\) a les biblioteques\([^[:alnum:]]\)/\1 en les biblioteques\2/g
# a la bombolla
s/\b\(botó «Veure»\|visualitzada\) a la bombolla\([^[:alnum:]]\)/\1 en la bombolla\2/g
 #
s/\b\(botó «I&gnora»\) a les bombolles\([^[:alnum:]]\)/\1 en les bombolles\2/g
# a la botiga
s/\b\(comprar alguns articles\|disponible\|disponible aviat\|estan\|He dit que\|ingressés\|Krita\|repositori de F-Droid i\|tenir en compte que \*\*no\*\*\) a la botiga\([^[:alnum:]]\)/\1 en la botiga\2/g
 #
s/\b\(Krita\) a les botigues\([^[:alnum:]]\)/\1 en les botigues\2/g
# a la branca
s/\b\(al cau com\|Comet els canvis a <b>%1<\/b>\|comissió\|[Ee]steu\|trobeu\) a la branca\([^[:alnum:]]\)/\1 en la branca\2/g
# a la butxaca
s/\b\(Plasma,\) a la butxaca\([^[:alnum:]]\)/\1 en la butxaca\2/g
# a la cadena
s/\b\(Caràcter no vàlid\|Comproveu la línia %1 columna %2\|eliminat\|és l'únic certificat\|Inclou enllaços\|Pols\|Retorna el nombre d'àrees\|Testimonis del &procés\|troba un element amb el títol igual (sense distingir entre minúscules i majúscules)\) a la cadena\([^[:alnum:]]\)/\1 en la cadena\2/g
 #
s/\b\(Cometes\) a les cadenes\([^[:alnum:]]\)/\1 en les cadenes\2/g
# a la caixa
s/\b\(seleccionada\) a la caixa\([^[:alnum:]]\)/\1 en la caixa\2/g
# a la calculadora
s/\b\(determinades entrades\|especificat prèviament\) a la calculadora\([^[:alnum:]]\)/\1 en la calculadora\2/g
# a la càmera
s/\b\(Agrupament\|disponibles\) a la càmera\([^[:alnum:]]\)/\1 en la càmera\2/g
 #
s/\b\(selecciona el mode lectura\|disponibles\) a les càmeres\([^[:alnum:]]\)/\1 en les càmeres\2/g
# a la cantonada
s/\bA la cantonada\([^[:alnum:]]\)/En la cantonada\1/g
  s/, que està a la cantonada\([^[:alnum:]]\)/, el qual es troba en la cantonada\1/g
  s/\bSi vas a la cantonada inferior dreta\([^[:alnum:]]\)/Si vas fins a la cantonada inferior dreta\1/g
s/\b\(Amb els botons\|Amb els tres botons\|botó «Focus»\|botó «Hemingway»\|botons de configuració\|col·locarà la finestra\|dibuixat\|Els botons\|en el quadre verd\|giny d'informació\|hi ha\|icona d'ajuda principal\|icona «descalç \/ sabata esportiva»\|marcaran amb un petit triangle vermell\|Mostra el rendiment de KWin\|mostra una etiqueta\|mostrarà un petit triangle blau\|mostrarà una etiqueta\|posa el ratolí\|Punt\|quart botó\|situa\|situat\|Tetris\|troba\|trobar un camí\|trobareu un resum del tauler de joc\|veureu una barra de progrés\) a la cantonada\([^[:alnum:]]\)/\1 en la cantonada\2/g
 #
s/\bA les cantonades\([^[:alnum:]]\)/En les cantonades\1/g
s/\b\(ajusta la brillantor\|amb un camp no pla\|especialment\|[Ss]i les aberracions\) a les cantonades\([^[:alnum:]]\)/\1 en les cantonades\2/g
# a la capa
s/\b\(exploració en blocs de dades d'usuari\) a la capa\([^[:alnum:]]\)/\1 en la capa\2/g
 #
s/\b\(escala + inclinació\|problema amb les màscares de transformació\|que increment[ei]\|renderització de les pells de ceba\) a les capes\([^[:alnum:]]\)/\1 en les capes\2/g
# a la capçalera
s/\b\(aparegui\|amb el botó dret\|amb el botó esquerre\|amb el botó dret del ratolí\|amb el botó esquerre del ratolí\|desada\|[Dd]ocumenta la icona de configuració\|emmagatzemar\|figuri\|mida de la imatge perquè s'adapti\|pestanya d'informació o\|s'especifica\|trobat cap informació\|visualitzarà\) a la capçalera\([^[:alnum:]]\)/\1 en la capçalera\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la capçalera\([^[:alnum:]]\)/\1 en la capçalera\2/g
 #
s/\bdefinit cap codificació explícita a la pàgina a les capçaleres\([^[:alnum:]]\)/establert cap codificació explícita a la pàgina en les capçaleres\1/g
# a la captura
s/\bA la captura\([^[:alnum:]]\)/En la captura\1/g
s/, a la captura\([^[:alnum:]]\)/, en la captura\1/g
s/\b\(4656x3520\|Error\|exclou les decoracions\|exclou les ombres\|feu\|inclou el punter\|més recentment emprat\|[Mm]ostra\|mostra't\|Per exemple,\|s'inclou\|s'inclouen\|tal com s'il·lustra\) a la captura\([^[:alnum:]]\)/\1 en la captura\2/g
 #
s/\bA les captures\([^[:alnum:]]\)/En les captures\1/g
# a la cara
s/\bA la cara\([^[:alnum:]]\)/En la cara\1/g
 #
s/\ba les cares marcades però encara no confirmades\([^[:alnum:]]\)/en les cares marcades però encara no confirmades\1/g
# a la característica
 #
s/\bmillores a les característiques\([^[:alnum:]]\)/millores en les característiques\1/g
# a la carpeta
s/\bA la carpeta\([^[:alnum:]]\)/En la carpeta\1/g
  s/\b\(anar ràpidament\|continuarà\) a la carpeta\([^[:alnum:]]\)/\1 fins la carpeta\2/g
  s/\bObre un terminal, a la carpeta actual\([^[:alnum:]]\)/Obre un terminal en la carpeta actual\1/g
  s/\bTria-ho tot a la &carpeta\([^[:alnum:]]\)/Tria-ho tot en la \&carpeta\1/g
  s/\bNo s'ha pogut subscriure's\([^[:alnum:]]\)/No s'ha pogut subscriure\1/g
  s/\bsense llegir a la paperera i a la carpeta\([^[:alnum:]]\)/sense llegir en la paperera i en la carpeta\1/g
s/\b\(amb el mateix nom\|amb permisos d'escriptura\|anar fins al següent missatge sense llegir\|anomenada «backgroundMusic»\|anomenada «voices-codecName»\|anomenada «words»\|arxivat del correu\|baixar un missatge\|Callgrind\|[Cc]erca\|Còmics\|Controla els canvis\|Crea en&llaços simbòlics\|Crea fitxers desencriptats temporals\|creació d'elements\|creació de carpetes\|crear carpetes\|crear una col·lecció arrel nova\|Desa aquest missatge\|Desa el correu\|desa una còpia\|desant els escanejats\|desar aquest missatge\|desar una còpia\|desarà els fitxers\|desarà un fitxer de registre\|desat una captura de pantalla com a «%1»\|desen\|desen localment al disc\|determinar l'espai lliure\|emmagatzema les seves adreces d'interès\|enllaçar el fitxer temporal\|[Ee]rror de permisos\|estan\|estant\|executa un informe\|executar ordres\|existeix\|existeixen\|Expandeix totes les converses\|Fa una còpia de seguretat de totes les vostres etiquetes\|Fa una còpia de seguretat del fitxer actual\|Falta el Makefile\|Fes parpelleig\|hi ha\|hi ha prou espai lliure\|hi ha un fitxer amb el mateix nom («%1»)\|instal·leu\|L'espai lliure\|modificació d'elements\|modificació de carpetes\|modificar el correu\|modificar els correus\|Mostra\|No es permet un nom buit\|Nombre total d'imatges\|obrir un fitxer temporal\|obriu una terminal\|OE-Import»\|permisos de fitxer\|permisos del fitxer\|Posa el clip\|Poseu els fitxers de model «.xml» i «.bin»\|Redueix totes les converses\|requereix permisos d'escriptura\|s'emplaçarà\|Tria tots els fitxers\|situar la carpeta «gsc»\|supressió d'elements\|supressió de carpetes\|Sylpheed-Import»\|troba\|trobar cap fitxer de codi font\|trobat %1 coincidències (%3)\|trobat cap fitxer de codi font\|trobat un missatge no vàlid\|trobat una coincidència (%3)\|trobat una entrada no vàlida\|troben\|utilitzarà un fitxer FIFO\|voleu <b>totes les fonts\) a la carpeta\([^[:alnum:]]\)/\1 en la carpeta\2/g
 #
s/\bA les carpetes\([^[:alnum:]]\)/En les carpetes\1/g
  s/\bque heu fet als fitxers o a les carpetes\([^[:alnum:]]\)/que heu fet en els fitxers o en les carpetes\1/g
s/\b\(aplicar efectes\|canvis\|[Cc]erca\|cerca perfils ICC\|Cerca recursiva\|deixa anar\|hi ha missatges sense llegir\|Permet les etiquetes locals\|trobat cap fitxer d'índex\) a les carpetes\([^[:alnum:]]\)/\1 en les carpetes\2/g
# a la càrrega
s/\b\(regressió\) a la càrrega\([^[:alnum:]]\)/\1 en la càrrega\2/g
# a la cartera
s/\b\(Desa la contrasenya de text\|Desa les contrasenyes\|desarà les contrasenyes\|el valor de l'entrada\|emmagatzemades\|emmagatzemar\|Indiqueu la carpeta\|obtenir tota la informació continguda\|programar els projectes\|sobreescriurà el valor previ de l'entrada\) a la \([Cc]\)artera\([^[:alnum:]]\)/\1 en la \2artera\3/g
# a la casa
s/\b\(capturarà les llavors\|col·locaran\) a la casa\([^[:alnum:]]\)/\1 en la casa\2/g
 #
s/\b\(esglésies\) a les cases\([^[:alnum:]]\)/\1 en les cases\2/g
# a la casella
 #
s/\b\(col·locarà una `x`\|utilitzarà\|utilitzarà\) a les caselles\([^[:alnum:]]\)/\1 en les caselles\2/g
# a la categoria
  s/\(%1, \|\"\)a la categoria\([^[:alnum:]]\)/\1en la categoria\2/g
s/\b\(202[0123456789]\|Activa la condició\|despeses\|ingressos\|menuchoice>\|troba\|trobat\|Store<\/link>,\|systemsettings;,\) a la categoria\([^[:alnum:]]\)/\1 en la categoria\2/g
#
s/\b\(Totes\) a les categories\([^[:alnum:]]\)/\1 en les categories\2/g
# a la CDDB
  s/\bID del disc a CDDB\([^[:alnum:]]\)/ID del disc a la CDDB\1/g
s/\b\([Cc]erca\|ID del disc\) a la CDDB\([^[:alnum:]]\)/\1 en la CDDB\2/g
# a la cel·la
  s/\bper a configurar-la a la cel·la actual\([^[:alnum:]]\)/per a establir-la en la cel·la actual\1/g
s/\b\(alternen el seu objectiu respectiu\|Començant\|configurar-la\|hi haurà\|mostrarà\|posició del contingut\|Reproduïu el caràcter sol·licitat\|teniu un nombre\) a la cel·la\([^[:alnum:]]\)/\1 en la cel·la\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la cel·la\([^[:alnum:]]\)/\1 en la cel·la\2/g
 #
s/\b\(editar una AR o una Dec d'un punt concret directament\|Esquitxades en mescla\|Esquitxades humides\|mostrarà la fórmula real\) a les cel·les\([^[:alnum:]]\)/\1 en les cel·les\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a les cel·les\([^[:alnum:]]\)/\1 en les cel·les\2/g
# a la cerca
s/\bA la cerca\([^[:alnum:]]\)/En la cerca\1/g
  s/\bMou el focus a la cerca\([^[:alnum:]]\)/Mou el focus fins a la cerca\1/g
s/\b\(coincideixen\|consideraran els participants amb els rols seleccionats\|consideraran totes les incidències\|empraran\|error\|Focus\|Inclou el nom de les peces\|Inclou el nom dels àlbums\|Inclou el nom dels gèneres\|Inclou els noms dels artistes\|Inclou els noms dels compositors\|Inclou els anys\|Inclou les etiquetes\|incloure\|incloure les alarmes actives\|incloure les alarmes arxivades\|incloure les alarmes d'àudio\|incloure les alarmes d'ordre\|incloure les alarmes de correu\|incloure les alarmes de fitxer\|alarmes de missatge de text\|la interfície d'usuari i\|s'inclouran\|salti»\|trobat cap resultat\|utilitzaran\|verificar\) a la cerca\([^[:alnum:]]\)/\1 en la cerca\2/g
 #
s/\bA les cerques\([^[:alnum:]]\)/En les cerques\1/g
s/\b\(Coincidències de majúscules\|Concorda les caixes\|Oculta la imatge\) a les cerques\([^[:alnum:]]\)/\1 en les cerques\2/g
# a la cistella
s/\b\(Enganxa el contingut del porta-retalls\|Enganxa la selecció\|enganxar el contingut del porta-retalls\|enganxar el porta-retalls o la selecció\|enganxar la selecció del porta-retalls\|Enregistra una àrea de la pantalla com a una imatge\) a la cistella\([^[:alnum:]]\)/\1 en la cistella\2/g
 #
s/\b\(Mo&stra consells\) a les cistelles\([^[:alnum:]]\)/\1 en les cistelles\2/g
# a la citació
s/\b\([Nn]o es fa referència\) a la citació\([^[:alnum:]]\)/\1 en la citació\2/g
# a la clau
s/\b\(trobat l'adreça de correu\) a la clau\([^[:alnum:]]\)/\1 en la clau\2/g
# a la coincidència
s/\b\(ometen els caràcters de format Unicode (Cf)\) a la coincidència\([^[:alnum:]]\)/\1 en la coincidència\2/g
# a la combinació
 #
s/\b\(esmenat més actualitzacions cícliques\) a les combinacions\([^[:alnum:]]\)/\1 en les combinacions\2/g
# a la comissió
s/\b\(està\) a la comissió\([^[:alnum:]]\)/\1 en la comissió\2/g
# a la compleció
s/\b\([Nn]ombre de suggeriments\) a la compleció\([^[:alnum:]]\)/\1 en la compleció\2/g
# a la comunitat
s/\b\(com\|Contingut recent\|tant\) a la comunitat\([^[:alnum:]]\)/\1 en la comunitat\2/g
 #
s/\b\(augmentar el nombre de dones\|Fes de voluntari\) a les comunitats\([^[:alnum:]]\)/\1 en les comunitats\2/g
# a la col·lecció
  s/\"a la col·lecció actual\([^[:alnum:]]\)/\"en la col·lecció actual\1/g
  s/\bFusiona el contingut del fitxer importat a la col·lecció actual\([^[:alnum:]]\)/Fusiona el contingut del fitxer importat amb la col·lecció actual\1/g
s/\b\(canvien els camps\|cerqueu el seu nom\|[Cc]erca\|Crea un àlbum buit nou\|creant l'element\|Executa filtres de vista definits per l'usuari\|hi ha\|ID de les llistes de tasques\|ID dels calendaris\|la carpeta de paperera «.dtrash»\|la carpeta de paperera «%2»\|massa imatges grans\|reproduir-les\|teniu imatges amb aquests formats\|trobat cap forma\) a la col·lecció\([^[:alnum:]]\)/\1 en la col·lecció\2/g
 #
s/\b\(cerques\) a les col·leccions\([^[:alnum:]]\)/\1 en les col·leccions\2/g
# a la col·limació
s/\b\(ajudar\) a la col·limació\([^[:alnum:]]\)/\1 en la col·limació\2/g
# a la columna
s/\bA la columna\([^[:alnum:]]\)/En la columna\1/g
s/\b\(alinea les línies del bloc seleccionat o de tot el document\|aplicar l'element de filtre només\|[Cc]erca\|coincideix, el valor\|desviat per una bola\|detectar el símbol decimal\|elimina el PID\|es pot veure\|especificat\|mostrades\|mostrar\|mostrar els permisos en format estàndard (rwxr-xr-x)\|Mou qualsevol cosa que hàgiu escrit\|veureu\) a la columna\([^[:alnum:]]\)/\1 en la columna\2/g
  s/\bel valor a la «columna»\([^[:alnum:]]\)/el valor en la «columna»\1/g
 #
s/\bA les columnes\([^[:alnum:]]\)/En les columnes\1/g
s/\b\(aproximada al cel\|[Cc]erca\|com a SD\|Orientació»\) a les columnes\([^[:alnum:]]\)/\1 en les columnes\2/g
# a la compilació
 #
s/\bA les compilacions\([^[:alnum:]]\)/En les compilacions\1/g
s/\b\(múltiples nuclis\|realitzar proves\) a les compilacions\([^[:alnum:]]\)/\1 en les compilacions\2/g
# a la configuració
s/\bA la configuració\([^[:alnum:]]\)/En la configuració\1/g
  s/\b\(activat\|ajustar\|definit\|inhabilitar aquesta característica\|modificar la mida màxima de la pila de desfer\/refer\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)configuració\([^[:alnum:]]\)/\1 en la \2configuració\3/g
  s/\bAugmenta les imatges petites\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) a la configuració\([^[:alnum:]]\)/Augmenta les imatges petites\1 \2en la configuració\3/g
  s/\bDisposició a la configuració actual del Plasma\([^[:alnum:]]\)/Disposició des de la configuració actual del Plasma\1/g
  s/\b\(seleccionar un CCD del sistema de guiatge\|valor d'ampliació anterior\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)a la configuració\([^[:alnum:]]\)/\1 \2en la configuració\3/g
s/\b\(activat\|activat el resolutor d'Internet\|Ajusteu-lo\|amb l'angle de posició\|amb un commutador\|canvia[rt]\|canviar el tema\|configuració de la gestió del color\|configurar\|configurar a través de la interfície de <i>Dreceres de teclat<\/i>\|configurar accions similars\|configurar un APN\|configurat\|configurats\|configureu aquestes opcions\|definir un altre port\|definir un servidor de claus\|desactivada\|desactivades\|desactiva[rt]\|desactivar completament la característica\|directori de treball\|desactiveu l'agent GnuPG\|disponibles\|disponibles en la càmera\|ajustant dos paràmetres\|durada del bloqueig automàtic\|emmagatzema\|Equip d'idioma de l'usuari\|especificar un altre fitxer\|especificat\|esquema de color\|establerta\|establir el camí correcte\|establir-la\|Establiu el fitxer del terreny\|Establiu els detalls del propietari del calendari\|Establiu els paràmetres d'importació\|fitxers<\/span>\|gestionar els proveïdors de l'escriptori social\|habilitat\|Habiliteu «Mostra els errors»\|habiliteu-lo\|hi hagi\|indicat\|indicat cap servidor\|indicats\|inhabilitat l'opció «Notifica sempre»\|inhabilitats\|introduir la vostra clau d'encriptatge\|introduïu la vostra clau d'encriptatge\|CLI de Kaggle\|Krita»\|Krita, i no\|marcada\|metadades\|obriu la pàgina «Programes»\|partició o\|perdeu\|persistir\|Proporcioneu el camí correcte\|[Qq]ualsevol canvi\|reduint la mida de l'historial\|reduint la mida de la memòria intermèdia per programari\|secció\|seleccionar\|seleccionar un CCD del sistema de guiatge\|Trieu un perfil QIF\|Servidor buit\|sol·licitar un reinici\|suprimir\|Tipus no vàlid de còpia de seguretat\|trieu un altre port\|una opció\|Us perdeu\|utilitzar\|utilitzarà\|utilitzaran\|Utilitzeu l'editor de perfil QIF\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Cc]\)onfiguració\([^[:alnum:]]\)/\1 en la \2\3onfiguració\4/g
# a la connexió
s/\b\([Ee]rror\) a la connexió\([^[:alnum:]]\)/\1 en la connexió\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la connexió\([^[:alnum:]]\)/\1 en la connexió\2/g
# a la consola
  s/(a la consola)\([^[:alnum:]]\)/(en la consola)\1/g
  s/\bMostra l'indicador a la &consola\([^[:alnum:]]\)/Mostra l'indicador en la \&consola\1/g
s/\b\(help.start ()»\|calcular expressions matemàtiques\|des d'aquest directori\|Des d'un indicador\|Descriu les característiques i els paràmetres referits\|després\|en els scripts i\|escrivint les ordres següents\|[Ee]xecuteu\|[Ee]xecuteu les línies següents\|funciona\|hi ha una altra ordre activa\|imprimeix missatges\|introduïu «base::pa»\|introduïu -per exemple- «print»\|mostra\|mostrar\|mostraran\|mostraran més que aquest nombre total de línies (ordres i sortida)\|Ordres entrades\|però no\|teclejar-los directament\|visualització d'ordres\|visualització dels missatges del sistema\) a la consola\([^[:alnum:]]\)/\1 en la consola\2/g
# a la constel·lació
s/\bA la constel·lació\([^[:alnum:]]\)/En la constel·lació\1/g
# a la construcció
s/\bA la construcció\([^[:alnum:]]\)/En la construcció\1/g
s/\b\(coincideix amb un patró d'exclusió %r\|Esmena dels errors de regressió\|[Pp]roblema inesperat\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Cc]\)onstrucció\([^[:alnum:]]\)/\1 en la \2\3onstrucció\4/g
 #
s/\bA les construccions\([^[:alnum:]]\)/En les construccions\1/g
s/\b\([Cc]anvis notables\|disponibles per a la prova\) a les \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Cc]\)onstruccions\([^[:alnum:]]\)/\1 en les \2\3onstruccions\4/g
# a la consulta
s/\b\(existeix\|valor»\) a la consulta\([^[:alnum:]]\)/\1 en la consulta\2/g
# a la conversa
s/\b\([Ee]rror d'invitació\) a la conversa\([^[:alnum:]]\)/\1 en la conversa\2/g
# a la conversió
s/\b\(esmenen els errors d'arr[eo]doniment\) a la conversió\([^[:alnum:]]\)/\1 en la conversió\2/g
# a les coordenades
s/\b\(centra la muntura\|Les coordenades celestes dels mapes WCS\) a les coordenades\([^[:alnum:]]\)/\1 en les coordenades\2/g
# a la còpia
s/\b\(enregistrada\|hi ha actualitzacions\|inclosa\|incloure\|se suprimirà de la carpeta\|Tria els canvis\|substituït amb zeros\|substituït per zeros\) a la còpia\([^[:alnum:]]\)/\1 en la còpia\2/g
 #
s/\b\(llista\) a les còpies\([^[:alnum:]]\)/\1 en les còpies\2/g
# a la corba
s/\b\(ajustar l'enfocament i l'efecte\|amb la solució\|canvia les etiquetes del punt d'enfocament\|dibuixa\|dibuixarà la ZCE\|marcat\|marcats\|[Mm]ostra\|[Mm]ostrar\|mostrar la ZCE\|mostrar la ZCE calculada\|mostrarà\|seleccionat\|situar el punt nou o\|troben\|visualitzar la ZCE\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Cc]\)orba\([^[:alnum:]]\)/\1 en la \2\3orba\4/g
 #
s/\b\(Su&bstituïx\|Substitueix\) a les corbes\([^[:alnum:]]\)/\1 en les corbes\2/g
# a la CPU
s/\b\(executar el connector\|més ràpid que\) a la CPU\([^[:alnum:]]\)/\1 en la CPU\2/g
# a la crida
s/\b\(com a arg(1)\) a la crida\([^[:alnum:]]\)/\1 en la crida\2/g
# a la cua
s/\b\(2\|dels blocs\|enviant el missatge (1 element\|enviant els missatges (%1 elements\|enviar el missatge\|esperant\|hi ha elements\|Hi ha %1 treballs d'impressió\|Hi ha un treball d'impressió\|Mou cap avall un torrent\|Mou cap amunt un torrent\|Nombre de treballs\|Ordre d'un torrent\|processar\|queden %1 tasques\|queden tasques\|queden tasques interrompudes\|s'especifica\|troben\) a la cua\([^[:alnum:]]\)/\1 en la cua\2/g
 #
s/\b\(hi ha cap element per a processar\) a les cues\([^[:alnum:]]\)/\1 en les cues\2/g
# a les dades
s/\b\(causa del soroll\|farciran amb valors buits\|haurà algun soroll\|Té una validesa desconeguda\) a les dades\([^[:alnum:]]\)/\1 en les dades\2/g
# a les darreres
s/\b\(disponibles per a la prova\) a les darreres\([^[:alnum:]]\)/\1 en les darreres\2/g
# a la data
  s/\"a la data de venciment\([^[:alnum:]]\)/\"en la data de venciment\1/g
  s/\bdes de la data1 a la data2\([^[:alnum:]]\)/des de la data1 fins a la data2\1/g
s/\b\(Caràcter inesperat %1\|Centra el diagrama de Gantt\|Finalitza la tasca\|[Ii]nicia la tasca\|posició dels planetes principals\) a la data\([^[:alnum:]]\)/\1 en la data\2/g
# a la Dec
s/\b\(Blau``\|guiatge\|Moviment\) a la Dec\([^[:alnum:]]\)/\1 en la Dec\2/g
# a la dècada
s/\b\(Apple Computer\) a la dècada\([^[:alnum:]]\)/\1 en la dècada\2/g
# a la declaració
s/\b\(present\) a la declaració\([^[:alnum:]]\)/\1 en la declaració\2/g
# a la declinació
s/\b\(cada 20 graus\) a la declinació\([^[:alnum:]]\)/\1 en la declinació\2/g
# a la decoració
s/\b\(present\|representació del gruix\) a la decoració\([^[:alnum:]]\)/\1 en la decoració\2/g
# a les dependències
s/\b\(revisant les implementacions d'ANGLE i HDR\) a les dependències\([^[:alnum:]]\)/\1 en les dependències\2/g
# a la depuració
s/\b\(ajuda\) a la depuració\([^[:alnum:]]\)/\1 en la depuració\2/g
# a la depuradora
s/\ba la depuradora d'aigües residuals\([^[:alnum:]]\)/en la depuradora d'aigües residuals\1/g
# a la desconvolució
s/\b\(utilitzarà\) a la desconvolució\([^[:alnum:]]\)/\1 en la desconvolució\2/g
# a la descripció
s/\b\([Tt]ambé\) a la descripció\([^[:alnum:]]\)/\1 en la descripció\2/g
# a la destinació
s/\b\(escriure\|Executeu «aplicació»\|Executeu «gdbserver … aplicació»\|existeixin\|ocupin menys espai\|Sobreescriu els elements existents\|Utilitza el camí d'àlbum dels elements\) a la destinació\([^[:alnum:]]\)/\1 en la destinació\2/g
 #
s/\b\(escriure\) a les destinacions\([^[:alnum:]]\)/\1 en les destinacions\2/g
# a les diferències
 #
s/\b\([Hh]i ha massa línies\) a les diferències\([^[:alnum:]]\)/\1 en les diferències\2/g
# a la direcció
s/\b\(canvi gradual\) a la direcció\([^[:alnum:]]\)/\1 en la direcció\2/g
# a la disposició
s/\b\(canvis\|fet els canvis\|Mostra les &línies de la nota\|parpelleig\|presents\) a la disposició\([^[:alnum:]]\)/\1 en la disposició\2/g
 #
s/\b\(Mostra\|utilitzades\) a les disposicions\([^[:alnum:]]\)/\1 en les disposicions\2/g
# a la dissolució
s/\b\(especificar la quantitat de solut\|especificar les unitats de la quantitat de dissolvent\|especificar les unitats de la quantitat de solut\) a la dissolució\([^[:alnum:]]\)/\1 en la dissolució\2/g
# a la distància
s/\b\(poseu el mateix valor\) a la distància\([^[:alnum:]]\)/\1 en la distància\2/g
# a la distribució
s/\b\(disponibles\) a la distribució\([^[:alnum:]]\)/\1 en la distribució\2/g
# a la documentació
s/\b\(es descriu com «més lògic»\|falten\|obtenir la mida del pas\|troben\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)a la documentació\([^[:alnum:]]\)/\1 \2en la documentació\3/g
# a la drecera
 #
s/\b\(detectar conflictes\) a les dreceres\([^[:alnum:]]\)/\1 en les dreceres\2/g
# a la dreta
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)dreta\([^[:alnum:]]\)/\1 en la \2dreta\3/g
# a la dutxa
s/\b\(estigui\) a la dutxa\([^[:alnum:]]\)/\1 en la dutxa\2/g
# a les escates
s/\b\(a continuació,\) a les escates\([^[:alnum:]]\)/\1 en les escates\2/g
# a les escoles
s/\b\(desplegant\) a les escoles\([^[:alnum:]]\)/\1 en les escoles\2/g
# a la famosa
s/\b\(posats per escrit\) a la famosa\([^[:alnum:]]\)/\1 en la famosa\2/g
# a la Figura
s/\b\(s'il·lustra\|il·lustrat\) a la \([Ff]\)igura\([^[:alnum:]]\)/\1 en la \2igura\3/g
# a la fila
  s/\bel valor a la «fila»\([^[:alnum:]]\)/el valor en la «fila»\1/g
s/\b\(alinea\|columnes apropiades\) a la fila\([^[:alnum:]]\)/\1 en la fila\2/g
 #
s/\b\(des de l'u fins al nou\) a les files\([^[:alnum:]]\)/\1 en les files\2/g
# a la finestra
s/\bA la finestra\([^[:alnum:]]\)/En la finestra\1/g
  s/\ba la finestra del Kig\([^[:alnum:]]\)/en la finestra del Kig\1/g
  s/\b\(arrossegar una imatge\) a la finestra\([^[:alnum:]]\)/\1 fins a la finestra\2/g
  s/\bcoincideix a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)finestra\([^[:alnum:]]\)/coincideix en la \1finestra\2/g
  s/\bes mostrarà a la «finestra\([^[:alnum:]]\)/es mostrarà en la «finestra\1/g
  s/\bconfigurar el que s'ocultarà mentre vos desplaceu cap a la finestra\([^[:alnum:]]\)/configurar el que s'ocultarà mentre vos desplaceu en la finestra\1/g
  s/\bsi s'engega a\([^[:alnum:]]\)/si s'engega en\1/g
s/\b\(a dins de la taula\|a l'esquerra del control lliscant de progrés\|A més,\|[Aa]fegint objectes\|agafades de les opcions\|ajustar l'alçada de la pàgina\|ajustar l'amplada de la pàgina\|ajustar la pàgina\|anar fins al seu codi font\|animació\|aplicació KDE<\/replaceable>\|barra de zoom\|barres d'eines i botons\|canviant els valors\|canvieu primer a coordenades equatorials\|capturada per la rèflex digital\|Cerca les pestanyes del navegador\|cliqueu «Envia»\|Columnes visibles\|Commuta l'efecte d'inversió\|configuració\|configurar-la\|crear un parell de claus\|definir el vostre propi\|des del menú <i>Carpeta<\/i>\|desactivar aquesta característica\|desactivar la bombolla d'ajuda\|disposició de la interfície\|el tanca\|emplaçament\|Emplaçament:<\/guilabel>\|Enganxament especial…<\/i>\|es tracta\|especificar un valor constant per a algun dels paràmetres\|Executa l'script\|executar l'script actual\|executar una ordre\|executarà l'script\|Explica les regles DST»\|Focus\|generar la sortida\|hi ha\|hi ha text seleccionat\|i apliqueu l'operació resultant\|I&gnora la sortida\|independent del rellotge\|introduïu les coordenades desitjades\|La barra d'eines\|La barra d'estat\|La vista de persones\|llistats\|Lluentor\|millores\|mode «Taula»\|mode «Vista prèvia»\|Mo&stra\|Mostra cada imatge capturada en seqüència\|Mostra cada imatge capturada per la rèflex digital\|Mostra la imatge\|Mostra la informació emergent\|Mostra la música que esteu escoltant\|Mostra la pestanya de vista dels fragments baixats\|Mostra la pestanya de vista dels parells\|Mostra la pestanya de vista dels seguidors\|Mostra les imatges FITS rebudes\|mostrar el contingut de la carpeta\|mostrar el temps restant de les peces en comptes del temps transcorregut\|mostrar-les totes\|mostraran\|mostri\|Obre el document\|[Oo]bre un fitxer addicional de traça\|Obre una carpeta CVS de treball\|obrir aquest fitxer\|per als esdeveniments\|rebut un missatge entrant\|replegats\|Representa fórmules LaTeX\|representar fórmules LaTeX\|s'afegiran automàticament\|trieu la pestanya «Permisos»\|seleccioneu part de l'expressió regular\|seleccioneu un objecte i una propietat\|sense animació\|sota el diagrama\|Tipus de lletra base\|Transicions del canvi d'estat\|visualitzar les imatges\|vora el camp d'edició\|veure el diagrama exportat\|vista d'imatges\) a la finestra\([^[:alnum:]]\)/\1 en la finestra\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la finestra\([^[:alnum:]]\)/\1 en la finestra\2/g
  s/\ba la finestra de Kig\([^[:alnum:]]\)/en la finestra de Kig\1/g
 #
s/\bA les finestres\([^[:alnum:]]\)/En les finestres\1/g
s/\b\(esquinçament de la pantalla\|Mostra una pàgina de benvinguda\|mostrarà un document sense títol\|utilitza\) a les finestres\([^[:alnum:]]\)/\1 en les finestres\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a les finestres\([^[:alnum:]]\)/\1 en les finestres\2/g
# a la fitxa
s/\b\(Escriviu el número\) a la fitxa\([^[:alnum:]]\)/\1 en la fitxa\2/g
 #
s/\b\(Un gran ocell carnívor\|utilitzar imatges en lloc de paraules\) a les fitxes\([^[:alnum:]]\)/\1 en les fitxes\2/g
# a la fletxa
# s/\b\(\) a la fletxa\([^[:alnum:]]\)/\1 en la fletxa\2/g
# a la floració
s/\b\(doneu una mica de color\) a la floració\([^[:alnum:]]\)/\1 en la floració\2/g
# a la font
s/\b\(màscara de transformació»\) a la font\([^[:alnum:]]\)/\1 en la font\2/g
# a la fórmula
s/\b\(emprats\) a la fórmula\([^[:alnum:]]\)/\1 en la fórmula\2/g
# a la fotografia
s/\b\(causar una certa pèrdua de qualitat\|icones de gir\) a la fotografia\([^[:alnum:]]\)/\1 en la fotografia\2/g
 #
s/\b\(incrustades\) a les fotografies\([^[:alnum:]]\)/\1 en les fotografies\2/g
# a la frase
s/\b\(Majúscules\/minúscules\) a la frase\([^[:alnum:]]\)/\1 en la frase\2/g
# a la funció
s/\b\(cercar coincidències a la memòria de traducció i\|el lloc\|entrar\|és el paràmetre <i>width<\/i> (amplada)\|evita la fuita de memòria\|gastat\|Inhabilita les variables &automàtiques\|són arguments\|Tipus no compatibles\) a la funció\([^[:alnum:]]\)/\1 en la funció\2/g
 #
s/\b\(conserva durant tot el procés i\) a les funcions\([^[:alnum:]]\)/\1 en les funcions\2/g
# a la galàxia
s/\b\(haver-hi una massa\) a la galàxia\([^[:alnum:]]\)/\1 en la galàxia\2/g
# a la galeria
s/\b\(estan\|troben\|visualitzarà\) a la galeria\([^[:alnum:]]\)/\1 en la galeria\2/g
# a la gestió
  s/\bDes de les opcions del tema a la gestió de dispositiu\([^[:alnum:]]\)/Des de les opcions del tema fins a la gestió de dispositius\1/g
s/\b\([Mm]illores\) a la gestió\([^[:alnum:]]\)/\1 en la gestió\2/g
# a les golfes
s/\b\(digiKam\) a les \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)golfes\([^[:alnum:]]\)/\1 en les \2golfes\3/g
# a la Google
s/\b\(aterr[ei]\|ChromeOS\|compte de la comunitat KDE\|Ken Lo\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Google\([^[:alnum:]]\)/\1 en la \2Google\3/g
# a la guia
s/\b\(Proveïdor de cerques\) a la guia\([^[:alnum:]]\)/\1 en la guia\2/g
# a la GPU
s/\b\(transformació\) a la GPU\([^[:alnum:]]\)/\1 en la GPU\2/g
# a la gràfica
s/\b\(amb l'excepció de l'eix del temps\|enfocament\|[Mm]ode de selecció\|mostrar la zona crítica de l'enfocament\|mostrar les etiquetes\|tant\|Visualitza el traçat AR\|Visualitza el traçat de correccions AR\|Visualitza el traçat d'error RMS\|Visualitza el traçat de correccions Dec\|Visualitza el traçat Dec\|Visualitza el traçat SNR\) a la gràfica\([^[:alnum:]]\)/\1 en la gràfica\2/g
# a la gropa
# a la història
s/\b\(Aquest mes\) a la història\([^[:alnum:]]\)/\1 en la història\2/g
# a la icona
s/\b\(animacions\|carpeta anomenada KDE.trash,\|Mostra el nombre de notes\|Mostra el percentatge de la bateria\) a la icona\([^[:alnum:]]\)/\1 en la icona\2/g
# a la identitat
  s/\bd'afegir un sobrenom com a mínim\([^[:alnum:]]\)/d'afegir com a mínim un sobrenom\1/g
s/\b\(configurar la carpeta de correu brossa\|definit\|donat\) a la identitat\([^[:alnum:]]\)/\1 en la identitat\2/g
# a la IGU
s/\b\(crear-ne un de nou\|[Mm]illores\|[Tt]roba\) a la \(GUI\|IGU\)\([^[:alnum:]]\)/\1 en la IGU\3/g
# a la il·lustració
s/\b\([Mm]ostrada\) a la il·lustració\([^[:alnum:]]\)/\1 en la il·lustració\2/g
# a la imatge
s/\bA la imatge\([^[:alnum:]]\)/En la imatge\1/g
s/\b\(aconseguir la mateixa relació temps a soroll\|aconseguir un interval dinàmic més gran\|ajust\|alineat amb el nord\|aquests paràmetres\|augmentar el contrast\|cautilitzarà cap canvi\|centrat\|conserva la saturació dels colors\|Detecta les estrelles\|detectades\|determina la mida de les parts copiades\|dibuixa un espectre de l'àudio\|dibuixa un nivell d'àudio\|El nombre de píxels\|Emmagatzema la configuració de la provatura suau\|emmagatzemar aquesta paleta\|emplenar al punt vermell de l'exemple\|establir l'escala de magnituds de les estrelles\|Etiquetes\|Fes parpelleig\|[Hh]i ha un canal alfa\|hi hagi estrelles suficients\|[Ii]matge\|inserit\|marca les estrelles\|més soroll quedarà\|Mostra els objectes\|mostrar el blanc sobreacolorit\|mostrar el negre sobreacolorit\|nombre d'estrelles\|[Oo]bjectes\|pel soroll calculat\|posició del píxel\|proporciona un interval dinàmic major\|reconstrucció des de Bayer\|se superposin\|seleccionada (o amb la selecció automàtica)\|seleccioneu el punt d'origen\|sobreposa un triangle\|superposats\|troba el nord\|troba les vores de color\|trobada\|trobar estrelles\|trobi\|valors de color\) a la imatge\([^[:alnum:]]\)/\1 en la imatge\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la imatge\([^[:alnum:]]\)/\1 en la imatge\2/g
 #
s/\bA les imatges\([^[:alnum:]]\)/En les imatges\1/g
s/\b\(ajustar l'hora\|calcular els nivells de la ADU\|amb un intercanvi sense costures\|codificar les coordenades AR\/Dec\|corregir els píxels cremats\|[Dd]etecció de text\|Detecta la quantitat de compressió\|Detecta la quantitat de difuminat\|Detecta la quantitat de soroll\|[Dd]etect[ai] les cares\|detecti cares\|detectades\|Realitza l'estirament automàtic\|manté l'èmfasi\|reconeixerà automàticament les persones\|reduir el soroll\|reduir l'efecte de l'ull vermell\|Traça el valor de la mediana de la mostra\|Traça l'excentricitat mediana de les estrelles\|trobar estrelles i coordenades\) a les imatges\([^[:alnum:]]\)/\1 en les imatges\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a les imatges\([^[:alnum:]]\)/\1 en les imatges\2/g
# a la implementació
# a la implementació
# a la importació
s/\b\(Separador decimal incorrecte\) a la importació\([^[:alnum:]]\)/\1 en la importació\2/g
# a la impressió
s/\b\(Fa una pausa\|mostraran\) a la impressió\([^[:alnum:]]\)/\1 en la impressió\2/g
# a la impressora
s/\b\(publicar dades\) a les impressores\([^[:alnum:]]\)/\1 en les impressores\2/g
# a la incidència
s/\b\(trobat cap adjunt anomenat «%1»\) a la incidència\([^[:alnum:]]\)/\1 en la incidència\2/g
# a la indexació
s/\b\(fallat\) a la indexació\([^[:alnum:]]\)/\1 en la indexació\2/g
# a la indústria
s/\b\(professió\) a la indústria\([^[:alnum:]]\)/\1 en la indústria\2/g
# a la informació
s/\b\(es proporcionen\|hi ha un error\|propietari\|troben\) a la informació\([^[:alnum:]]\)/\1 en la informació\2/g
# a la interfície
s/\b\(admissió de pestanyes\|Configureu els connectors\|desactivar l'autenticació\|esmenes\|esmenes d'errors\|esmenes secundàries\|Implementació de dreta a esquerra\|integrades\|ja heu seleccionat\|[Mm]illores\|seleccionat\|té la seva pròpia pestanya i icona\|Utilitza un tipus de lletra personalitzat\|utilitzat\|utilitzeu un dispositiu\|visualitzar-la\) a la interfície\([^[:alnum:]]\)/\1 en la interfície\2/g
 #
s/\b\(serveis que proporcionen notificacions d'estat\) a les interfícies\([^[:alnum:]]\)/\1 en les interfícies\2/g
# a la instal·lació
s/\b\(Hi ha algun error\) a la instal·lació\([^[:alnum:]]\)/\1 en la instal·lació\2/g
 #
s/\b\(plasma-mobile<\/a>\) a les instal·lacions\([^[:alnum:]]\)/\1 en les instal·lacions\2/g
# a la instància
s/\b\(disponible\|troba\) a la instància\([^[:alnum:]]\)/\1 en la instància\2/g
# a la instrucció
 #
s/\b\(com es descriu\|utilitzar l'script d'augment de dades\) a les instruccions\([^[:alnum:]]\)/\1 en les instruccions\2/g
# a la invent
s/\b\(documentat\) a la invent\([^[:alnum:]]\)/\1 en la invent\2/g
  s/\b\(actualitzada\|defineixen\|descriuen\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)documentació\([^[:alnum:]]\)/\1 en la \2\3documentació\4/g
s/\b\([Cc]erca\|busqueu els termes de llicència\|documentat\|Més informació\|Vegeu l'article «Static Image Export»\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)documentació\([^[:alnum:]]\)/\1 en la \2documentació\3/g
# a la invitació
s/\b\(Hi ha adjunta una resposta\) a la invitació\([^[:alnum:]]\)/\1 en la invitació\2/g
# a la IU
s/\b\([Mm]illores\|visualitza\) a la IU\([^[:alnum:]]\)/\1 en la IU\2/g
# a la jerarquia
s/\b\(existeix\|mouen cap amunt\) a la jerarquia\([^[:alnum:]]\)/\1 en la jerarquia\2/g
# a la jungla
s/\b\(divertir-se\) a la jungla\([^[:alnum:]]\)/\1 en la jungla\2/g
# a la KDE
s/\b\(existent\|explorar les seves creacions\|publicar la pestanya personalitzada\|Substituït amb &DBus;\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(&kde\|KDE\)\([^[:alnum:]]\)/\1 en la \2\3\4/g
# a la «KoPathTool
s/\b\(ignorar els esdeveniments del ratolí\) a la «KoPathTool\([^[:alnum:]]\)/\1 en la «KoPathTool\2/g
# a la LaKademy
s/\b\(Fotografia de grup\) a la LaKademy\([^[:alnum:]]\)/\1 en la LaKademy\2/g
# a la línia
  s/\bsaltar a la línia\([^[:alnum:]]\)/saltar fins a la línia\1/g
s/\bA la línia\([^[:alnum:]]\)/En la línia\1/g
  s/\" a la línia %1: \"/\" en la línia %1: \"/g
  s/\" a la línia:\([^[:alnum:]]\)/\" en la línia:\1/g
  s/\"a la línia d'ordres\([^[:alnum:]]\)/\"en la línia d'ordres\1/g
  s/\ba la línia de temps\([^[:alnum:]]\)/en la línia de temps\1/g
    s/\bper en la línia de temps\([^[:alnum:]]\)/per a la línia de temps\1/g
  s/\bDesancora el temps de presentació a la línia\([^[:alnum:]]\)/Desancora el temps de presentació de la línia\1/g
  s/\bdesprés d'aquest caràcter a la línia\([^[:alnum:]]\)/després d'aquest caràcter en una línia\1/g
  s/\bemplaçarà a la <b>Línia\([^[:alnum:]]\)/emplaçarà en la <b>Línia\1/g
  s/\btrobat un error a la línia %1 del fitxer %2\([^[:alnum:]]\)/trobat un error a la línia %1 en el fitxer %2\1/g
  s/\bvisualització dels fotogrames clau en el clip a la línia de temps\([^[:alnum:]]\)/visualització dels fotogrames clau en el clip sobre la línia de temps\1/g
s/\b\(Afegeix un cursor (accent circumflex)\|anàlisi sintàctica de l'XML\|anàlisi sintàctica de l'XML des de «CDS Sesame»: %1\|Atribut %1 buit\|cap altre\|caràcter no en blanc\|Característica de subtítols (GSoC), colors\|carregar els punts\|Clip\|Codi\|col·locarà\|declarat a %2\|Enganxa clips\|enganxar els elements\|error d'anàlisi fatal: %1\|Error en analitzar l'XML\|error en l'anàlisi sintàctica XML\|error ha estat: «%1»\|es netejarà la selecció actual de la data\|escrivint «fuser -v %1»\|escriviu\|especificar-se\|especificat\|Estableix el focus\|establert\|executar «gpgconf %3»\|farà la seva acció\|Fitxer LDIF no vàlid\|Focus\|hi ha text\|Hi ha un nombre incorrecte de camps\|hi ha una crida\|indicat\|Insereix els blocs seleccionats\|Insereix una zona del clip\|inserirà una altra línia\|introduint «tipus:nom»\|introduir una opció\|ja s'ha declarat a %2\|La icona copia |copy|,\|llegir el fitxer de plantilla <b>%1<\/b>\|llegir el fitxer en XML\|Manca l'atribut %1\|Mantén el focus\|minúscules)\|Mostra %1\|Mostra els fotogrames clau\|Mostra les etiquetes de color\|Mostra els segons\|mostrar els segons\|mostrarà\|no permet cap URL\|Nombre no vàlid de columnes\|Oculta els fotogrames clau\|orbitarà al voltant d'un punt de gravitació estable\|Part real de la funció digamma\|Permet 1.000 fotogrames\|[Pp]odeu ometre l'adreça\|proporcionats\|punt gravitacional estable\|reduir l'error\|romandran\|s'indica\|seleccionades\|selecciona[rt]\|seleccioneu un fitxer de dades\|Sobreescriu la zona del clip\|substituir només el component d'àudio d'aquest clip\|substituir només el component de v[ií]deo d'aquest clip\|Substitueix\|Substitueix un clip\|suprimir l'última pista\|també és possible\|teclegi el contingut d'aquest quadre\|troba\|trobar l'ID del compte amb l'expressió regular «%1»\|trobat el preu per a «%1» amb l'expressió regular «%2»\|trobat un error\|utilitzats\|valor del text «%1»\|visualització dels subtítols\) a la línia\([^[:alnum:]]\)/\1 en la línia\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la línia\([^[:alnum:]]\)/\1 en la línia\2/g
 #
s/\bA les línies\([^[:alnum:]]\)/En les línies\1/g
  s/\ba les línies de temps\([^[:alnum:]]\)/en les línies de temps\1/g
  s/\bDesplaça a les línies\([^[:alnum:]]\)/Desplaça fins a les línies\1/g
  s/\bDesplaça o no a les línies\([^[:alnum:]]\)/Desplaça o no fins a les línies\1/g
s/\b\(apareixerà una icona de creu\|Commuta l'atribut de cursiva\|Commuta l'atribut de negreta\|Commuta l'atribut de subratllat\|Commuta l'atribut de ratllat\|Commuta la marca\|Comprova els errors\|[Hh]i ha errors\|La clau de text «%1»\|mostrar\|Neteja els errors\|provocaran bucles\|Verifica l'ortografia\) a les línies\([^[:alnum:]]\)/\1 en les línies\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a les línies\([^[:alnum:]]\)/\1 en les línies\2/g
# a la literatura
s/\b\(aparegut diverses teories\) a la literatura\([^[:alnum:]]\)/\1 en la literatura\2/g
# a la llar
s/\b\(Xats\|xerrades\) a la llar\([^[:alnum:]]\)/\1 en la llar\2/g
# a la llegenda
s/\b\(Mostra el camí complet cap al document\) a la llegenda\([^[:alnum:]]\)/\1 en la llegenda\2/g
# a la llibreta
  s/\"a la llibreta\([^[:alnum:]]\)/\"en la llibreta\1/g
  s/\b\(contacte nou\) a la Llibreta\([^[:alnum:]]\)/\1 en la Llibreta\2/g
s/\b\(Actualitza aquest contacte\|actualitzat la vCard\|Cap adreça de correu-e\|Contacte nou\|Crea un contacte nou\|definit\|desat\|emmagatzemats\|existeix\|existeix un contacte amb l'adreça de correu <email>%1<\/email>\|O&bri\|[Oo]bre\|Quin nom tindrà el contacte «%1»\|troba\|trobat\|trobat cap entrada\) a la llibreta\([^[:alnum:]]\)/\1 en la llibreta\2/g
# a la llista
s/\bA la llista\([^[:alnum:]]\)/En la llista\1/g
  s/\"a la llista de les/\"en la llista de les/g
  s/\"a la llista de comissions/\"en la llista de comissions/g
  s/\ba la llista en totes les sessions futures\([^[:alnum:]]\)/en la llista en totes les sessions futures\1/g
  s/\barrossegueu-los a la llista\([^[:alnum:]]\)/arrossegueu-los fins a la llista\1/g
  s/\bcercar progressivament a la llista\([^[:alnum:]]\)/cercar progressivament a través de la llista\1/g
  s/\bestà a la «llista\([^[:alnum:]]\)/està en la «llista\1/g
  s/lement \(anterior\|següent\) a la llista\([^[:alnum:]]\)/lement \1 en la llista\2/g
  s/\b\(podeu demanar ajuda\|Un element\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)llista\([^[:alnum:]]\)/\1 en la \2llista\3/g
  s/\bseleccioneu \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Cap\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) a la llista\([^[:alnum:]]\)/seleccioneu \1Cap\2 en la llista\3/g
  s/\btenen lloc a la \[llista\([^[:alnum:]]\)/tenen lloc en la \[llista\1/g
s/\b\(Activa el desplaçament suau\|apareguin\|apareix\|apareix o no\|apareixen\|apareixen els esquemes\|aparèixer\|apareixerà\|apareixerà aquí\|apareixerà el contacte\|apareixeran\|Aplica les operacions pendents\|Aquesta opció oculta\|Aquesta opció ocultarà\|artistes\|baixant-l[ao]\|calcular la data mitjana de totes les imatges\|canviant la tasca\|cap amunt\|cap avall\|[Cc]erca\|cerca l'estrella més propera\|[Cc]erca\|cercar\|cercar consell\|Codifica a UTF-8\|Codificació del text\|Comes al final, al principi o duplicades\|conserven\|Contactes\|creades per una altra aplicació\|crear una tasca nova\|d'un interval d'opcions\|definit un conjunt d'expressions URL\|dependents de l'estat de les claus\|desactiva la selecció\|desaran els canvis\|desfer\|després seleccioneu un element\|donada\|El nom d'aquesta entrada\|El nombre màxim d'elements\|Element anterior\|Element següent\|Elimina l'adjunt seleccionat\|està present\|està\|establerta per a aquest contacte\|estat de les clau\|esteu\|estiguin\|existeix\|Falta una «,» entre cadenes\|Falta una «,» entre tests\|fer clic doble sobre una entrada d'un assistent\|feu clic sobre el dia corresponent de la setmana\|feu clic sobre un element\|fica\|hi ha cap certificat adequat\|hi ha cap destinatari\|hi ha cap sala %1\|hi ha una coincidència\|incloure\|incloure'l\|Inicia el disseny de l'objecte\|Inicia el disseny de l'objecte seleccionat\|inserir els fulls seleccionats\|Introduïu el camí\|L'últim element\|La col·lecció\|Llista de correus\|mantenir\|mantenir inicialment\|mantindran\|mantindran inicialment\|menú Scripts o\|Mida dels elements\|moguin les fonts\|mostra\|Mostra algunes planificacions\|Mostra els correus electrònics\|Mostra els grups buits\|Mostra els usuaris fora de línia\|Mostra la columna Remitent\/Destinatari\|Mida de les miniatures\|Mostra la màscara de &xarxa\|Mostra més planificacions\|[Mm]ostrades\|[Mm]ostra[rt]\|[Mm]ostrar informació sobre un element\|[Mm]ostrats\|[Mm]ostren\|[Mm]ou cap amunt la imatge actual\|[Mm]ou cap amunt la peça seleccionada\|[Mm]ou cap avall la imatge actual\|[Mm]ou cap avall la peça seleccionada\|[Mm]ou cap endavant i cap avall\|[Mm]ou cap enrere i cap amunt\|[Mm]ou la dependència seleccionada cap amunt\|[Mm]ou la dependència seleccionada cap avall\|moure-la cap amunt o avall\|Nombre màxim d'entrades\|[Oo]cultar-l[ao]\|Ofusca parcialment el nom de domini\|ordeni pel percentatge d'altitud\|ordenen els fitxers\|passar per sobre d'un element\|passi per sobre del giny\|posar-l[ao]\|prefereixen les imatges de l'Sloan Digital Sky Survey\|preguntar\|pujant-l[ao]\|Qualsevol canvi\|Repeteix totes les pistes\|ressalteu una ciutat\|ressalteu-lo\|restituir\|s'inclourà\|s'inclouran\|s'inserirà\|s'ocultaran\|seguir els debats\|Tria un nombre\|selecciona un objecte\|seleccionada actualment\|seleccionant-l[ao]\|seleccionat\|seleccionats\|seleccioneu\|seleccioneu <guilabel>Cap<\/guilabel>\|seleccioneu senzillament el tipus de paraula\|seleccioneu un certificat sota una organització\|seleccioneu un element\|seleccioneu-l[ao]\|Situeu\|sobre la desitjada\|són tots els sobrenoms\|Substitueix l'element actual ressaltat\|Suprimeix tots els tipus seleccionats\|Tanca la vista seleccionada\|Tots els objectius concrets\|Tria el color del text\|trieu \*\*Personalitzat\*\*\|troba\|trobar %1 (%2)\|trobar la substitució correcta\|trobat massa errors\|trobat una ordre de byte incorrecta\|troben\|Un element\|Una entrada\|Utilitza la navegació amb el ratolí només\|Utilitza camins de fitxer absoluts\|Utilitza un c&amí absolut per als fitxers\|Utilitza un camí &relatiu per als fitxers\|utilitzant un dels elements\|versió %2<br\/>1 model\|versió %2<br\/>%1 models\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)llista\([^[:alnum:]]\)/\1 en la \2llista\3/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)llista\([^[:alnum:]]\)/\1 en la \2llista\3/g
 #
s/\bA les llistes\([^[:alnum:]]\)/En les llistes\1/g
s/\b\(expressats\|fòrum de &kdevelop;,\|indicats\|millores\|Nombre màxim d'entrades\|Ombreja la columna orde&nada\|permeten cadenes\|permeten tests\|seu nom no es permeten\|trobi\) a les llistes\([^[:alnum:]]\)/\1 en les llistes\2/g
# a la llum
s/\b\(ex\.,\) a la llum\([^[:alnum:]]\)/\1 en la llum\2/g
# a la Lluna
s/\b\(perfectament notables\) a la Lluna\([^[:alnum:]]\)/\1 en la Lluna\2/g
# a la maduresa
  s/\bMobile a la maduresa\([^[:alnum:]]\)/Mobile fins a la maduresa\1/g
# a la major
s/\b\(com a calendari estàndard\) a la major\([^[:alnum:]]\)/\1 en la major\2/g
# a la majoria
s/\bA la majoria\([^[:alnum:]]\)/En la majoria\1/g
s/\b\(acceptat com el punt de longitud zero\|disponible\|estimació HFR\|falta\|funciona\|funcionarà\|inclòs\|manca\|present\|són molt habituals\|troba\) a la majoria\([^[:alnum:]]\)/\1 en la majoria\2/g
# a la Mandrake
s/\b\(executant-se aquí\) a la Mandrake\([^[:alnum:]]\)/\1 en la Mandrake\2/g
# a la manera
s/\b\(repetits\) a la manera\([^[:alnum:]]\)/\1 en la manera\2/g
# a la màquina
s/\b\(disponible <application>Perl<\/application>\|iniciar un servidor INDI\|instal·lar-lo\) a la màquina\([^[:alnum:]]\)/\1 en la màquina\2/g
# a la marca
s/\b\(exemple,\|teniu\) a la marca\([^[:alnum:]]\)/\1 en la marca\2/g
 #
s/\b\(Mida del pas inicial<\/span>\) a les marques\([^[:alnum:]]\)/\1 en les marques\2/g
# a la màscara
s/\b\(sobre el canvi de propietats\) a la màscara\([^[:alnum:]]\)/\1 en la màscara\2/g
 #
s/\b\(esmenat l'arrodoniment\|permès el filtre d'ona\|pintar\) a les màscares\([^[:alnum:]]\)/\1 en les màscares\2/g
# a la mateixa
s/\b\(carpetes\|compte\|Connect\|connectat i\|està endollat i\|grups de missatges\|mantindrà el llenç\|mateix grup\|metacontacte\|poseu les imatges\|treballant\|trobaran\|troben\|vistes prèvies\) a la mateixa\([^[:alnum:]]\)/\1 en la mateixa\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)llista\([^[:alnum:]]\)/\1 en la \2llista\3/g
# a la memòria
s/\b\(cercar coincidències\|claus secretes\|[Cc]omprova només les parts de contingut\|dades\|desades\|desaran\|desen\|desis els inodes\|[Ee]mmagatzema\|emmagatzemar\|emmagatzemar les imatges de HiPS\|emmagatzemaran\|emmagatzematge\|emmagatzemen\|espai\|manté\|mantenen\|mantindran\|mentre està\|mida dels fotogrames\|mostra la sortida\|Nombre de línies que s'han de mantenir\|posar els objectes en ordre d'observació i emmagatzemar les imatges DSS\|seleccionades\|sortida\|Subsolucions\|tenir-les\|tinguin còpies\) a la memòria\([^[:alnum:]]\)/\1 en la memòria\2/g
# a la ment
s/\b\(romangui\) a la ment\([^[:alnum:]]\)/\1 en la ment\2/g
# a la mescla
# a les metadades
s/\b\(alternatiu\|emmagatzematge\|escriure la informació de geolocalització\) a les metadades\([^[:alnum:]]\)/\1 en les metadades\2/
# a la meva
s/\b\(invitació\|Jesper<\/b>\|resposta\) a la meva\([^[:alnum:]]\)/\1 en la meva\2/g
# a la Microsoft Store
s/\b\(preu\|ven\) a la Microsoft Store\([^[:alnum:]]\)/\1 en la Microsoft Store\2/g
# a la mida
s/\b\(Visualitza\) a la mida\([^[:alnum:]]\)/\1 en la mida\2/g
# a la migració
s/\b\(pausa\) a la migració\([^[:alnum:]]\)/\1 en la migració\2/g
# a la miniatura
s/\b\(icones de gir\) a la miniatura\([^[:alnum:]]\)/\1 en la miniatura\2/g
# a la molècula
s/\b\(exemple,\) a la molècula\([^[:alnum:]]\)/\1 en la molècula\2/g
# a la mostra
s/\b\(amb èxit\) a la mostra\([^[:alnum:]]\)/\1 en la mostra\2/g
# a la motobomba
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\) a la motobomba\([^[:alnum:]]\)/\1 en la motobomba\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la motobomba\([^[:alnum:]]\)/\1 en la motobomba\2/g
# a la muntanya
s/\b\(amb el telescopi Oschin Schmidt\) a la muntanya\([^[:alnum:]]\)/\1 en la muntanya\2/g
# a la muntura
s/\b\(ajustant els poms de correcció d'altitud i azimut\) a la muntura\([^[:alnum:]]\)/\1 en la muntura\2/g
# a la música
s/\b\([Cc]erca\|pausa\) a la \([Mm]\)úsica\([^[:alnum:]]\)/\1 en la \2úsica\3/g
# a la nit
s/\b\(feta\) a la nit\([^[:alnum:]]\)/\1 en la nit\2/g
# a la nostra
s/\b\(col·laboració\|conversa\|dir hola\|emprar\|esforç\|fer-les\|llistats\|produeixen\|vosaltres mateixos\) a la nostra\([^[:alnum:]]\)/\1 en la nostra\2/g
# a la nota
s/\b\([Nn]o es fa referència\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)nota\([^[:alnum:]]\)/\1 en la \2nota\3/g
 #
s/\b\(apareixen al costat de la seva contribució\|referència\|treballem\) a les \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)notes\([^[:alnum:]]\)/\1 en les \2notes\3/g
# a les notícies
s/\b\(KDE Eco\|Sprint\) a les notícies\([^[:alnum:]]\)/\1 en les notícies\2/g
# a la notificació
s/\b\([Cc]lic esquerre\) a la notificació\([^[:alnum:]]\)/\1 en la notificació\2/g
# a la pàgina
s/\bA la pàgina\([^[:alnum:]]\)/En la pàgina\1/g
  s/\ba la pàgina d'inici per a crear\([^[:alnum:]]\)/en la pàgina d'inici per a crear\1/g
s/\b\(25è aniversari\|Actualitzeu-l[eo]s\|Alineació de taula\|aquí<\/link>)\|canviar el seu comportament\|capçalera\|CSS)\|[Cc]erca\|cerques «i\/o»\|Configura digiKam…\|Configura digiKam…`\|configuració de les actualitzacions :ref:\`\|contingudes\|continua\|correcta\|definit cap operació planificada\|definit cap operació ressaltada\|dibuixar aquestes corbes\|disponible\|disponibles\|[Ee]rror\|[Ee]xecuta una acció\|explicació detallada de les opcions\|fer el terra invisible\|fitxers de so»\|guibutton>\|guiicon>\|guilabel>\|guimenuitem>\|guisubmenu>\|link>\|Habilita les baixades o actualitzacions automàtiques de recursos externs»\|Hi ha alguns controls més\|horària\|instal·lar\|interessants\|Les opcions importants\|límit del compte\|línies\|llista de fitxers recents\|macOS\|més ràpid)\*\*\|[Mm]ida de les icones\|[Mm]ostra\|[Mm]ostra el fons\|[Mm]ostra les imatges\|netegeu el calibratge\|opció\|pantalla\*\*\|proporcionen\|Raspberry Pi\|saldo zero\|serveis de xarxa local\|Text\|tornar el terra invisible\|Traçat del calibratge``\|trieu\|trobar el text\|troben inclosos\|última conciliació\|Vegeu també la configuració de les actualitzacions\|visualitzaran\)\(`\|\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)pàgina\([^[:alnum:]]\)/\1\2 \3en la \4pàgina\5/g
  s/, a la pàgina\([^[:alnum:]]\)/, en la pàgina\1/g
 #
s/\bA les pàgines\([^[:alnum:]]\)/En les pàgines\1/g
s/\b\(capçalera\|peu de pàgina\|publicar el document\|utilitzarà\|utilitzarà\) a les pàgines\([^[:alnum:]]\)/\1 en les pàgines\2/g
# a la paleta
s/\b\(canviat l'historial de colors\|seleccionava un color\|suport per a l'acoblador\) a la paleta\([^[:alnum:]]\)/\1 en la paleta\2/g
# a la pantalla
s/\bA la pantalla\([^[:alnum:]]\)/En la pantalla\1/g
  s/\bt- a la pantalla.<br\/>/t- en la pantalla.<br\/>/g
  s/\bTria un color a la pantalla\([^[:alnum:]]\)/Tria un color de la pantalla\1/g
s/\b\(activeu la característica nova «Notícies recents»\|apareixen\|API d'escriure scripts\|assenyalar coses\|botons\|cada animal\|canvis pendents\|centra\|centrat\|col·loca un triangle groc, verd i violeta\|[Cc]olor del fons\|[Cc]olor dels dígits\|com vulgueu\|contingut no HDR\|corresponent\|creixent\|Criatura\|dibuixarà un cercle\|disponible\|entre píxels\|és un regle\|Fons\|ignoreu la posició del cursor\|[Ii]mprimix\|informació\|kstars;, i també\|mateixa mida que\|mateixa mida que es veu\|[Mm]ostra\|mostrades\|mostrar la forma\|mostrar-la\|mostrarà\|nombre de contactes\|oberta\|píxel\|premeu el botó <guibutton>Inspector<\/guibutton>\|qualitat\|que es mostra\|rect»\|seleccionant \*\*Allotja una partida de xarxa\*\*\|seleccionar un color\|Tons\|veu\|visibles\|vista de pista\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Pp]\)antalla\([^[:alnum:]]\)/\1 en la \2\3antalla\4/g
 #
s/\b\(windows-10-users\/)\) a les pantalles\([^[:alnum:]]\)/\1 en les pantalles\2/g
# a la paperera
s/\b\(llista\|Restaura només la darrera entrada\|restaurar només la darrera entrada\|romandre\) a la paperera\([^[:alnum:]]\)/\1 en la paperera\2/g
# a la paret
s/\b\(La font de llum és un panell\) a la paret\([^[:alnum:]]\)/\1 en la paret\2/g
# a la part
s/\bA la part \(inferior\|superior\)\([^[:alnum:]]\)/En la part \1\2/g
s/(a la part \(inferior\|superior\)\([^[:alnum:]]\)/(en la part \1\2/g
s/, a la part \(inferior\|superior\)\([^[:alnum:]]\)/, en la part \1\2/g
s/\b\(acoblable mostra\|Aplica un segell de primer pla\|botons\|cada pestanya\|camp de text\|col·locació d'una peça addicional\|conté una clau\|cridant\|disponible\|Drive\|[Ee]nganxa\|Estora\|fosca\|ha d'estar activat\|hi ha\|imprimirà\|la pregunta\|la seva informació\|línia d'ordres\|llegits\|lleugera\|mostrar entrades\|mostrarà com a superposició\|números de línia\|pestanya dels fragments\|pestanya dels parells\|pestanya dels seguidors\|pestanya dels sembradors web\|pestanyes\|plafó d'escriptori\|posarà\|[Rr]essalta\|seleccionada\|situarà\|situen\|tenir murs\|troba\|troba[rt]\|trobareu\|troben\|ubicada\) a la part\([^[:alnum:]]\)/\1 en la part\2/g
  s/\balinea a la fila\([^[:alnum:]]\)/alinea en la fila\1/g
 #
s/\b\(aspra\) a les parts\([^[:alnum:]]\)/\1 en les parts\2/g
# a la partició
s/\b\(Estableix els atributs «%2»\|Estableix l'UUID «%2»\|Estableix l'etiqueta «%2»\|[Ii]nstal·la\|sistema de fitxers\|sistema de fitxers %1\|sistema de fitxers <filename>%1<\/filename>\|sistema de fitxers encriptat\) a la partició\([^[:alnum:]]\)/\1 en la partició\2/g
# a la patent
s/\b\(dret\) a la patent\([^[:alnum:]]\)/\1 en la patent\2/g
# a la $PATH
s/\b\(accessible\|baixades (%1)\|eines\|troba\) a la \(<[^<]\{1,\}>\|\)$PATH\([^[:alnum:]]\)/\1 en la \2$PATH\3/g
# a la PATH
s/\b\(accessible\|troba\) a la PATH\([^[:alnum:]]\)/\1 en la PATH\2/g
# a la peça
  s/\bsalteu a la peça\([^[:alnum:]]\)/salteu fins a la peça\1/g
# a la peixera
s/\b\([Mm]onstre marí\) a la peixera\([^[:alnum:]]\)/\1 en la peixera\2/g
# a les pells
s/\b\(Restableix per a l'opacitat\) a les pells\([^[:alnum:]]\)/\1 en les pells\2/g
# a la pestanya
s/\bA la pestanya\([^[:alnum:]]\)/En la pestanya\1/g
s/(a la pestanya\([^[:alnum:]]\)/(en la pestanya\1/g
s/\()\|a causa d'un valor de precisió incorrecte\|Activa GPG\|activeu l'enfocament adaptatiu\|Activeu l'enregistrament de l'alineació\|Afegiu un camí cap a FFmpeg\|cada imatge\|canviar aquests paràmetres\|carregada\|carregar l'adreça\|carregat\|[Cc]erca el text\|Coincideix automàticament els caràcters mentre escriviu»\|colors\|configura\|configurar\|detalls\|edita\|editar\|editar aquest fitxer directament\|Ekos<\/guilabel> i\|específic\|especifica\|especificar el nom del lloc\|[Ee]stableix els paràmetres\|establir un «Límit R²»\|Finalment,\|Focus\|guibutton>\|guiicon>\|guilabel>\|guimenuitem>\|guisubmenu>\|link>\|llistats\|més paràmetres\|Mida del pas inicial``\|mostra\|mostraran\|[Oo]bre\|Perfil d'opcions``\|similar a la corba V\|un port\|ús\|utilitzat\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)pestanya\([^[:alnum:]]\)/\1 en la \2pestanya\3/g
 #
s/\bA les pestanyes\([^[:alnum:]]\)/En les pestanyes\1/g
s/\b\(estadístiques en directe\) a les pestanyes\([^[:alnum:]]\)/\1 en les pestanyes\2/g
# a la petició
s/\b\(prova\) a la petició\([^[:alnum:]]\)/\1 en la petició\2/g
# a la pila
s/\b\(dades temporals\|ordre\|ordres\) a la pila\([^[:alnum:]]\)/\1 en la pila\2/g
# a la pista
s/\b\(clip %1\|escrites\|incorrecta %1\|línia de temps\|mescla %1\|no s'ha aplicat\|Tria-ho tot\|trobat la composició desconeguda %1\|vàlid %1\) a la pista\([^[:alnum:]]\)/\1 en la pista\2/g
 #
s/\b\(eliminar blancs\) a les pistes\([^[:alnum:]]\)/\1 en les pistes\2/g
# a la planificació
s/\b\(introducció\|troba\) a la planificació\([^[:alnum:]]\)/\1 en la planificació\2/g
# a la plantilla
s/\b\(proporciona la informació requerida\) a la plantilla\([^[:alnum:]]\)/\1 en la plantilla\2/g
# a la plataforma
s/\bA la plataforma\([^[:alnum:]]\)/En la plataforma\1/g
s/\b\(Arribada a %1\|Arribada a les %1\|de %1\|itinerari\|JavaScript\|mateix sentit que\|notificacions\|utilitzat en el mateix sentit que\) a la plataforma\([^[:alnum:]]\)/\1 en la plataforma\2/g
 #
s/\bA les plataformes\([^[:alnum:]]\)/En les plataformes\1/g
# a la Play
s/\b\(aterri\|distribueix\|implementant la 5.2.8\|llançament\|publiquem\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Play\([^[:alnum:]]\)/\1 en la \2Play\3/g
# a la Política
s/\b\(descriu\|[Vv]egeu tots els detalls\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Pp]\)olítica\([^[:alnum:]]\)/\1 en la \2\3olítica\4/g
# a la portada
s/\b\(aparèixer per primera vegada en el 2013\|trobava\) a la portada\([^[:alnum:]]\)/\1 en la portada\2/g
# a la porteria
s/\b\(toc\) a la porteria\([^[:alnum:]]\)/\1 en la porteria\2/g
# a la posició
s/\b\(abordava un salt\|Bloqueja les fonts\|centrar la pantalla\|dibuixi un punt de mira\|El radi\|fonts\|prendran\|salt\|sigui (a)\) a la posició\([^[:alnum:]]\)/\1 en la posició\2/g
# a la pràctica
s/\bA la pràctica\([^[:alnum:]]\)/En la pràctica\1/g
s/\b\(però\) a la pràctica\([^[:alnum:]]\)/\1 en la pràctica\2/g
# a la presentació
s/\b\([Dd]ibuix\|negra\) a la presentació\([^[:alnum:]]\)/\1 en la presentació\2/g
# a la primera
s/\bA la primera\([^[:alnum:]]\)/En la primera\1/g
s/\bAl primer\([^[:alnum:]]\)/En el primer\1/g
  s/\b\(prement un botó del ratolí\) a la primera\([^[:alnum:]]\)/\1 sobre la primera\2/g
s/\b\([Aa]quí\|Cada fruita\|capçalera\|cerca»\|coincident\|columnes\|detectar el delimitador de camp\|energia\|files\|Nombre màxim de càpsules d'energia\|normals\|obri «Executa la sessió»\|peu de pàgina\|ràpids\) a la primera\([^[:alnum:]]\)/\1 en la primera\2/g
# a la prioritat
s/\b\(canvis\) a la prioritat\([^[:alnum:]]\)/\1 en la prioritat\2/g
# a la profunditat
s/\b\(té lloc\) a les profunditats\([^[:alnum:]]\)/\1 en les profunditats\2/g
# a les propietats
s/\b\(comentaris\) a les propietats\([^[:alnum:]]\)/\1 en les propietats\2/g
# a la prova
s/\b\(fallat\) a la prova\([^[:alnum:]]\)/\1 en la prova\2/g
 #
s/\b\(participeu](https:\/\/krita\.org\/ca-va\/get-involved\/)\|s'utilitza\) a les proves\([^[:alnum:]]\)/\1 en les proves\2/g
# a la província
s/\b\(Ejiri\) a la província\([^[:alnum:]]\)/\1 en la província\2/g
# a la pròxima
s/\b\(activarà\|aplicaran\|utilitzarà\) a la pròxima\([^[:alnum:]]\)/\1 en la pròxima\2/g
# a la publicació
s/\b\(seves capacitats\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)publicació\([^[:alnum:]]\)/\1 en la \2publicació\3/g
# a la punta
 #
s/\b\(introdueix un petit canvi\|introduir els modes per a l'opció de textura\) a les puntes\([^[:alnum:]]\)/\1 en les puntes\2/g
# a la quadrícula
s/\b\([Dd]ibuixeu la imatge\|emplaçats\|[Mm]ida dels elements\|mostrada\|mostren\) a la quadrícula\([^[:alnum:]]\)/\1 en la quadrícula\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la quadrícula\([^[:alnum:]]\)/\1 en la quadrícula\2/g
# a la qual
s/\b\([Aa]justa la velocitat\|mostra la velocitat\|o en la corba\|[Pp]osició relativa\|ubicació\) a la qual\([^[:alnum:]]\)/\1 en la qual\2/g
# a la Raspberry
s/\b\(provat\) a la Raspberry\([^[:alnum:]]\)/\1 en la Raspberry\2/g
# a la reacció
 #
s/\b\(Corregeix els GIF animats\) a les reaccions\([^[:alnum:]]\)/\1 en les reaccions\2/g
# A la realitat
s/\bA la realitat/En realitat/g
# a la recepció
  s/\"a la recepció\([^[:alnum:]]\)/\"en la recepció\1/g
# a la recta
s/\b\([Rr]eflecteix\) a la recta\([^[:alnum:]]\)/\1 en la recta\2/g
# a la regió
s/\b\([Mm]ostra\|públic local\|troba\) a la regió\([^[:alnum:]]\)/\1 en la regió\2/g
# a la regla
s/\b\(impossibles %2\/%3\) a la regla\([^[:alnum:]]\)/\1 en la regla\2/g
# a la regressió
s/\b\(cada x\) a la regressió\([^[:alnum:]]\)/\1 en la regressió\2/g
# a la renderització
s/\b\([Hh]i ha errors coneguts\|hi haurà errors coneguts\) a la renderització\([^[:alnum:]]\)/\1 en la renderització\2/g
# a la repetició
s/\b\(guany\) a la repetició\([^[:alnum:]]\)/\1 en la repetició\2/g
# a la representació
s/\b\(afegir corbes\|afegir la corba per al vostre objecte personalitzat\|mostra la data, hora i fus horari\) a la representació\([^[:alnum:]]\)/\1 en la representació\2/g
# a la reproducció
s/\b\([Pp]ausa\) a la reproducció\([^[:alnum:]]\)/\1 en la reproducció\2/g
# a la resolució
s/\b\(utilitzar-lo\|utilitzarà\|utilitzar\) a la resolució\([^[:alnum:]]\)/\1 en la resolució\2/g
# a la resta
s/\b\(utilitzats\) a la resta\([^[:alnum:]]\)/\1 en la resta\2/g
# a la reunió
s/\b\([Ee]ls artistes\) a la reunió\([^[:alnum:]]\)/\1 en la reunió\2/g
# a la roda
s/\b\(El 8è sòcol\|trobat el filtre %1\) a la roda\([^[:alnum:]]\)/\1 en la roda\2/g
# a la rodalia
s/\b\(observat\|observat algunes\) a la rodalia\([^[:alnum:]]\)/\1 en la rodalia\2/g
# a la rutina
s/\b\(fa pausa\) a la rutina\([^[:alnum:]]\)/\1 en la rutina\2/g
# a la safata
s/\bA la safata\([^[:alnum:]]\)/En la safata\1/g
s/\b\([Aa]cobla\|[Aa]coblat\|activat\|àudio\|automàtica\|automàticament\|Clip\|contextual\|continuarà\|Desa la part del clip\|emergents\|execució\|executant-se\|funcionant\|icona\|KAlarm\|KAlarm<\/application>\|Kopete\|KOrganizer\|[Mm]antén\|mantindrà\|[Mm]ostra\|[Mm]ostra el progré\|s[Mm]ostra la icona\|[Mm]ostrar sempre la icona\|[Nn]otificació\|ocultes\|principal\|recordatoris\|RSIBreak\|s'ha seleccionat cap clip\|S'ha trobat un clip de seqüència no vàlid\|[Tt]riat cap clip\|[Tt]rieu un clip\|tasca %1\|trobat\|velocitat\) a la safata\([^[:alnum:]]\)/\1 en la safata\2/g
  s/\bMostra a la &safata\([^[:alnum:]]\)/Mostra en la \&safata\1/g
  s/\bmoure la tasca %1 en la safata\([^[:alnum:]]\)/moure la tasca %1 a la safata\1/g
s/\b\([Gg]\)estor a la safata del sistema\([^[:alnum:]]\)/\1estor en la safata del sistema\2/g
# a la sala
s/\b\(acceptats\|escriure missatges\|KDE\|llegir missatges\|o\|[Oo]rdinadors\|tenir\|trobeu\|utilitza\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)sala\([^[:alnum:]]\)/\1 en la \2sala\3/g
 #
s/\b\(disponible\) a les \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)sales\([^[:alnum:]]\)/\1 en les \2sales\3/g
# a la secció
s/\bA la secció\([^[:alnum:]]\)/En la secció\1/g
s/\b\(activat\|artístiques destacades\|clau i el nom\|com botons\|continuació,\|del sistema\|descrit\|descrits\|descriu\|desitjat\|detall\|disponible\|disponibles\|[Ee]mpleneu els valors de les coordenades\|[Ee]mpleneu les dades necessàries\|[Ee]stableix els paràmetres\|establir\|explicades\|fopen<\/command>\|guibutton>\|guiicon>\|guilabel>\|guimenuitem>\|guisubmenu>\|link>\|ID de la clau\|imatge de dalt\|introduïu les coordenades del catàleg\|literal>\|[Mm]ostra\|mostrades\|ocultar\|Orienta cap a l'objectiu``\|prendre com a valors d'entrada\|presentades\|s'esmenta\|selecció i valoració\|seleccioneu la configuració preferida\|Taula<\/link> i\|títol de l'element\|treballs artístics destacats\|troba a continuació\|troben\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)secció\([^[:alnum:]]\)/\1 en la \2secció\3/g
# a la segona
s/\b\(marcades com a preferides\|mostren\) a la segona\([^[:alnum:]]\)/\1 en la segona\2/g
# a la següent
s/\bA la següent\([^[:alnum:]]\)/En la següent\1/g
# a la selecció
s/\bA la selecció\([^[:alnum:]]\)/En la selecció\1/g
s/\b\(Afegeix un marcador\|codi de temps\|resultat un submostratge\) a la selecció\([^[:alnum:]]\)/\1 en la selecció\2/g
 #
s/\b\(fer seleccions\) a les seleccions\([^[:alnum:]]\)/\1 en les seleccions\2/g
# a la seqüència
s/\b\([Aa]lgorisme per a la comprovació d'HFR\|[Ee]xecuta la comprovació d'HFR\|Imatges capturades\|inicia el reenfocament basat en HFR\|valor present\) a la seqüència\([^[:alnum:]]\)/\1 en la seqüència\2/g
# a la sèrie
s/\b\(temps i diners,\) a la sèrie\([^[:alnum:]]\)/\1 en la sèrie\2/g
# a la sessió
s/\b\(execució\|executant\|[Mm]ostra\|[Oo]bre'l\|registrat\) a la sessió\([^[:alnum:]]\)/\1 en la sessió\2/g
# a la setmana
s/\b\(dia\) a la setmana\([^[:alnum:]]\)/\1 en la setmana\2/g
# a la seva
s/\b\(Aprofundiu en la història de KDE\|disponibles\|necessita\|[Pp]atrocina crèdits gratuïts\|posa la documentació per a cada mòdul\|trobaràs\) a la seva\([^[:alnum:]]\)/\1 en la seva\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la seva\([^[:alnum:]]\)/\1 en la seva\2/g
 #
s/\b\(afectats per components de programari no desitjats\|configura\|en base\|especificat\|prenia mesures\|tenen la paraula clau\|tinguin la paraula clau\|tinguin la paraula clau (distingeix entre majúscules i minúscules)\|varien en brillantor\) a les seves\([^[:alnum:]]\)/\1 en les seves\2/g
# a la signatura
s/\b\(incrusten el contingut\) a la signatura\([^[:alnum:]]\)/\1 en la signatura\2/g
# a la sintaxi
s/\b\(definit\|establert\) a la sintaxi de ressaltat\([^[:alnum:]]\)/\1 en la sintaxi de ressaltat\2/g
# a la solució
s/\b\(forma mixta\) a la solució\([^[:alnum:]]\)/\1 en la solució\2/g
# a la sortida
s/\bA la sortida\([^[:alnum:]]\)/En la sortida\1/g
s/\b\(acolorits\|automàticament\|[Cc]erqueu qualsevol error\|codi font\|com a atribut XML\|detalls\|d'un altre\|depuració\|disponibles\|emprada\|etiquetes\|fitxer actual\|impedància\|interbloqueig\|mallat\|mida\|nou\|SD\|tabulacions a espais\|tecleig\|valor\) a la sortida\([^[:alnum:]]\)/\1 en la sortida\2/g
 #
s/\b\(escriure els seus resultats\) a la stdout\([^[:alnum:]]\)/\1 en la stdout\2/g
s/\b\(emprada\|utilitzada\|utilitzar-se\|utilitzat\) a les sortides\([^[:alnum:]]\)/\1 en les sortides\2/g
# a la subcarpeta
s/\bA la subcarpeta\([^[:alnum:]]\)/En la subcarpeta\1/g
 #
s/\bA les subcarpetes\([^[:alnum:]]\)/En les subcarpetes\1/g
s/\b\(tenir en compte que les imatges aparellades\) a les subcarpetes\([^[:alnum:]]\)/\1 en les subcarpetes\2/g
# a la subexposició
s/\b\(equilibri relatiu entre les dues fonts de soroll\) a la subexposició\([^[:alnum:]]\)/\1 en la subexposició\2/g
 #
s/\b\(prioritzarà un soroll baix de lectura\) a les subexposicions\([^[:alnum:]]\)/\1 en les subexposicions\2/g
# a la subfinestra
s/\bA la subfinestra\([^[:alnum:]]\)/En la subfinestra\1/g
s/\b\(Augmenta la mida del text\|carregar perfils de configuració\|imatges de fons\|mathgroups»\|Minva la mida del text\|[Mm]oure cap amunt\|png»\|seleccionada\) a la subfinestra\([^[:alnum:]]\)/\1 en la subfinestra\2/g
# a la superfície
s/\b\(aparèixer una \*curvatura del camp\*\|emplaçament\|emprat\|estimar la temperatura\|rep\|resultarà en un cercle\|Tracen cercles\|utilitzat\) a la superfície\([^[:alnum:]]\)/\1 en la superfície\2/g
# a la superposició
s/\b\(per a les imatges\|per a una imatge\|referència és sòlida i més brillant\) a la superposició\([^[:alnum:]]\)/\1 en la superposició\2/g
# a la tapa
s/\b\([Ee]rror\) a la tapa\([^[:alnum:]]\)/\1 en la tapa\2/g
# a la targeta
s/\b\(activat\|desactivat\|emmagatzemada\|emmagatzemades\|emmagatzemat\|Fitxers\|genera les subclaus\|generar directament claus noves\|hi ha\|[Ss]uprimix un fitxer\|utilitzar les claus\) a la targeta\([^[:alnum:]]\)/\1 en la targeta\2/g
# a la taula
s/\bA la taula\([^[:alnum:]]\)/En la taula\1/g
s/\b\(1 element\|1 elements\|canviar l'ordre de les files\|[Cc]erca un objecte\|cerqueu una imatge\|col·lisions de peces\|com un camp\|configureu els paràmetres de cada filtre\|Configureu les opcions de cada filtre\|creat\|creat 8 columnes addicionals\|editor d'imatges i\|emprada\|falten\|filtre en passos directament\|Genera automàticament el nombre especificat de punts d'alineació\|gràfica com\|hagi\|[Hh]i ha un espai\|[Ii]nclou\|línia\|llista la tasca\|llistats\|[Mm]ostra\|mostrades\|mostrar la barra d'estat\|mostraran\|mostraran igualment\|[Oo]bre\|[Pp]rem\|previsualització i\|previstes per a totes les tasques\|propietat donada d'un element\|punts\|ressalten\|selecciona-les\|seleccionada\|seleccioneu una fila\|veure la durada de cada esdeveniment\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Tt]\)aula\([^[:alnum:]]\)/\1 en la \2\3aula\4/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Tt]\)aula\([^[:alnum:]]\)/\1 en la \2\3aula\4/g
 #
s/\bA les taules\([^[:alnum:]]\)/En les taules\1/g
s/\b\([Dd]esats\) a les taules\([^[:alnum:]]\)/\1 en les taules\2/g
# a la tauleta
s/\b\(error\|[Pp]remeu ara el botó «%1»\) a la tauleta\([^[:alnum:]]\)/\1 en la tauleta\2/g
 #
s/\b\(Krita\) a les tauletes\([^[:alnum:]]\)/\1 en les tauletes\2/g
# a la temperatura
s/\b\(augment\|quan el canvi\) a la temperatura\([^[:alnum:]]\)/\1 en la temperatura\2/g
# a la temporada
s/\b\(fosca, _Dexter_\|va entrar al quarter general\) a la temporada\([^[:alnum:]]\)/\1 en la temporada\2/g
# A la tercera
s/\bA la tercera\([^[:alnum:]]\)/En la tercera\1/g
# a la Terra
s/\b\(des d'un punt arbitrari\|emplaçament\|emplaçaments\|està fix\|punt de vista\|sembla\) a la Terra\([^[:alnum:]]\)/\1 en la Terra\2/g
# a les tessel·les
 #
s/\b\(mostrar les etiquetes del sensor\) a les tessel·les\([^[:alnum:]]\)/\1 en les tessel·les\2/g
# a la teva
s/\b\(compartir aquest vídeo\|escoles, etc\.\|hi haurà gent\) a les teves\([^[:alnum:]]\)/\1 en les teves\2/g
# a la TOC
s/\b\(mostraran\) a la TOC\([^[:alnum:]]\)/\1 en la TOC\2/g
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
s/\b\([Cc]erca\|escriure\|fitxers i carpetes\|porta-retalls\|toqueu\|trobat cap fitxer de configuració\|trobat tots els fitxers\|troben\) a la ubicació\([^[:alnum:]]\)/\1 en la ubicació\2/g
 #
s/\b\([Cc]erca\|emmagatzemades\) a les ubicacions\([^[:alnum:]]\)/\1 en les ubicacions\2/g
# a la Ubuntu
s/\bA la Ubuntu\([^[:alnum:]]\)/En la Ubuntu\1/g
s/\b\(emmagatzemades\|executant l'ordre següent\) a la \(&\|\)\([Uu]\)buntu\([^[:alnum:]]\)/\1 en la \2\3buntu\4/g
# a la unitat
s/\b\(CD\|CD-ROM\|correcció d'errors\|ECC\/EDC\|sobreescriurà tot\|teniu un CD\) a la unitat\([^[:alnum:]]\)/\1 en la unitat\2/g
# a la utilitat
s/\b\(mostrades\|mostrats\|utilitzar l'enfocament adaptatiu\) a la utilitat\([^[:alnum:]]\)/\1 en la utilitat\2/g
# a la variable
s/\b\(estar\|llistat\|ordre és o no\|regla\|s'ha de trobar\|troba o no\|utilitzar el jre\) a la variable\([^[:alnum:]]\)/\1 en la variable\2/g
# a la venda
 #
s/\b\(descens gran\) a les vendes\([^[:alnum:]]\)/\1 en les vendes\2/g
# a la versió
s/\bA la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)versió\([^[:alnum:]]\)/En la \1versió\2/g
s/\b\(anunciat\|eliminat\|esmenat diversos errors en l'edició de les paletes de colors\|necessita l'extensió %s almenys\|utilitzades\) a la versió\([^[:alnum:]]\)/\1 en la versió\2/g
# a la Via
s/\b\(cúmuls globulars\) a la Via\([^[:alnum:]]\)/\1 en la Via\2/g
# a la vida
s/\b\(descobrir la bellesa\) a la vida\([^[:alnum:]]\)/\1 en la vida\2/g
# a la Viquipèdia / Wikipedia
  s/\btroben a la &lt;https:\/\/www\.wikipedia\.org\([^[:alnum:]]\)/troben en la \&lt;https:\/\/www\.wikipedia\.org\1/g
s/\b\(Contaminació lumínica\|descripció completa d'aquests formats\|descriu\|finestra\|perfil del col·laborador\|sobre això\|Trobareu una descripció completa d'estos formats\|[Vv]isiteu les útils guies\) \(`\|\)a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(Viquipèdia\|Wikipedia\)\([^[:alnum:]]\)/\1 \2en la \3\4\5/g
# a la vista
s/\bA la vista\([^[:alnum:]]\)/En la vista\1/g
s/\(,\|»\|<\/b>\|)TeX\|abc\|actualitza automàticament\|alhora\|apareixerà\|artefacte\|bibitems\|canviar-ho\|canviar-la\|categories\|cel·la\|[Cc]entra aquest objecte\|columnes\|conciliades\|contextual\|cppcheck»\|definides\|desar-la\|diaris\|dibuixar contorns de depuració de les formes de text\|disponibles\|El mode agrupat\|elements\|els fitxers\|entrades\|[Ee]rror\|erronis\|esdeveniments\|espai\|esquerre\|esteu\|etiqueta\|etiquetes\|expansió\|festiu\|finalitzades\|fitxer\|fitxers\|flotants\|fracció\|gràfic\|hi ha sobre la miniatura o\|hora actual\|horari\|hores\|i\|icones\|imatges\|línia\|llista\|llistaran\|llistats\|mantindran\|manual\|manualment)\|marcar\|miniatures\|[Mm]ostra\|[Mm]ostra el títols dels àlbums i els artistes\|[Mm]ostra la barra d'accions\|[Mm]ostra la llista de tasques pendents\|mostrar\|mostrar una setmana individual\|mostrarà\|mostraran\|mostrats\|mostren\|mourà un cursor\|moveu el cursor\|navegar\|nombres\|només\|normals\|nou\|objecte\|[Oo]bre\|obrir-l[ao]\|oculta\|operació\|ordenen\|part inferior\|part superior\|peces\|pendents\|pòdcast\|preferit\|projecte\|registre\|resource>\|resultat\|que\|[Ss]eleccions\|s'utilitzarà\|s'utilitzarà per als esdeveniments\|seleccionada\|seleccionat\|seleccionats\|Trieu aquí el color de fons de les hores laborables\|Trieu aquí el color de les hores laborables\|Trieu aquí el color de fons per a les hores laborables\|Trieu aquí el color per a les hores laborables\|[Tt]ris\|sencera com\|sostracció fosca\|subtasques\|tapades<\/span>\|temps\|temps actual\|[Uu]tilitzarà\|valor\|vista prèvia\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Vv]\)ista\([^[:alnum:]]\)/\1 en la \2\3ista\4/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Vv]\)ista\([^[:alnum:]]\)/\1 en la \2\3ista\4/g
  s/\bicones en els elements en la vista mensual\([^[:alnum:]]\)/icones d'element en la vista mensual\1/g
 #
s/\bA les vistes\([^[:alnum:]]\)/En les vistes\1/g
s/\b\(Activa la navegació de llocs\|elements\|miniatures\|[Mm]ostra\|[Mm]ostra els festius\|[Mm]ostra les tasques\|[Mm]ostra les subtasques\|[Mm]ostren\|ocultar les invitacions rebutjades\|pestanyes\|repetitius\|s'ignora\|s'ignorarà\|seleccionats\|subtasques\|text\) a les vistes\([^[:alnum:]]\)/\1 en les vistes\2/g
# a la visualització
s/\b\(6\|ocultarà\|visible\) a la visualització\([^[:alnum:]]\)/\1 en la visualització\2/g
# a la vora
s/\b\(acceleròmetre\|ancorat\|consistirà en una sola barra\|desviació\|estar\|horitzontal\|mostra una etiqueta\|tenia un àlies\|tenir el plafó\|text plegat\|vertical\) a la vora\([^[:alnum:]]\)/\1 en la vora\2/
 #
s/\b\(ancorat\|excloent els quadrats\|representar fora del vídeo,\|teniu cap camp pla\) a les vores\([^[:alnum:]]\)/\1 en la vores\2/g
# a la vostra
s/\b\(ajudar en la traducció de la documentació de &kde;\|aniversaris dels contactes\|[Cc]erca\|com a «%1»\|configurat\|[Cc]onstruïu la petició de fusió\|desi\|disponible\|eines d'empaquetat noves\|entrada nova\|esdevingut un canvi\|establert\|establerta\|forma segura\|grup de treball\|identificar una plantilla\|incloure\|llista\|[Oo]bteniu el programari KDE\|paquet\|problema\|processarà localment\|ràpides\|s'instal·la\|trobareu el nom de l'amfitrió\|trobat\) a la vostra\([^[:alnum:]]\)/\1 en la vostra\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la vostra\([^[:alnum:]]\)/\1 en la vostra\2/g
  s/\b\([Nn]\)o \(és\|està\) a la vostra\([^[:alnum:]]\)/\1o es troba en la vostra\3/g
    s/\bcontacte\( ja\|\) \(és\|està\) a la vostra\([^[:alnum:]]\)/contacte\1 es troba en la vostra\3/g
  s/\b\([Nn]\)o \(estan\|són\) a la vostra\([^[:alnum:]]\)/\1o es troben en la vostra\3/g
 #
s/\b\(reconéixer persones\) a les vostres\([^[:alnum:]]\)/\1 en les vostres\2/g
# a la web
s/\b\(calendari, per exemple calendaris\|[Cc]erca\|publicar-les\|ubiqueu les imatges\|una adreça\) a la \([Ww]\)eb\([^[:alnum:]]\)/\1 en la \2eb\3/g
# a la wiki
s/\b\(sistemes Debian\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)wiki\([^[:alnum:]]\)/\1 en la \2wiki\3/g
# a la Wikipedia
s/\b\([Cc]erca l'objecte seleccionat\) a la Wikipedia\([^[:alnum:]]\)/\1 en la Wikipedia\2/g
# a la xarxa
s/\b\(Aranya\|baixi qualsevol fitxer\|[Aa]nuncia el servei\|[Cc]erca\|[Cc]erca dispositius\|compartir elements\|comparteixin\|kde-<projectname\\\\>\|kde-devel)\|disponibles\|Monopoly®\|[Pp]arla amb amics\|problema\|reconeixement de les cares\|repositoris\|són nodes propis\|transparents\|transport\|únics\|utilitzar\|Usuaris actuals\) a la \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)xarxa\([^[:alnum:]]\)/\1 en la \2xarxa\3/g
 #
s/\b\(activa\|difusió\|Llista de 10»\|presència de Krita\|publicacions\) a les xarxes\([^[:alnum:]]\)/\1 en les xarxes\2/g
# a la zona
s/\b\(anteriors\|troben\) a la zona\([^[:alnum:]]\)/\1 en la zona\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) a la zona\([^[:alnum:]]\)/\1 en la zona\2/g
# #
# # # # # # # # # # # # # #
#
# al bàner
s/\b\(lloc d'honor\|un lloc\) al bàner\([^[:alnum:]]\)/\1 en el bàner\2/g
# al blog
s/\b\(teniu una entrada\) al blog\([^[:alnum:]]\)/\1 en el blog\2/g
# al BTS
s/\b\([Cc]erca d'errors\) al BTS\([^[:alnum:]]\)/\1 en el BTS\2/g
# al càlcul
s/\b\(combinaran\|[Cc]ombineu aquest nombre de files\|[Uu]sat\|[Uu]tilitzat\) al càlcul\([^[:alnum:]]\)/\1 en el càlcul\2/g
 #
s/\b\([Uu]sat\|[Uu]tilitzat\) als càlculs\([^[:alnum:]]\)/\1 en els càlculs\2/g
# al calibratge
s/\b\(accions prèvies\) al calibratge\([^[:alnum:]]\)/\1 en el calibratge\2/g
# al cantó
s/\b\(Transport públic local\) al cantó\([^[:alnum:]]\)/\1 en el cantó\2/g
# al caràcter
s/\bAl caràcter\([^[:alnum:]]\)/En el caràcter\1/g
# al catàleg
s/\b\(existeix\) al catàleg\([^[:alnum:]]\)/\1 en el catàleg\2/g
 #
s/\b\(equatorials <ai-skycoords-equatorial>`\) als catàlegs\([^[:alnum:]]\)/\1 en els catàlegs\2/g
# al cau
s/\b\(simulació\) al cau\([^[:alnum:]]\)/\1 en el cau\2/g
# al CMS
s/\bAl CMS\([^[:alnum:]]\)/En el CMS\1/g
s/\bal CMS\([^[:alnum:]]\)/en el CMS\1/g
  s/\bper en el CMS\([^[:alnum:]]\)/per al CMS\1/g
# al comentari
s/\b\(saber\) als comentaris\([^[:alnum:]]\)/\1 en els comentaris\2/g
# al compartiment
s/\b\(La bateria no està\) al compartiment\([^[:alnum:]]\)/\1 en el compartiment\2/g
# al comptador
s/\b\(relació temps a soroll\) al comptador\([^[:alnum:]]\)/\1 en el comptador\2/g
# al compte
 #
s/\b\([Oo]culta els comptes amb saldo zero\|Routing Number)\) als comptes\([^[:alnum:]]\)/\1 en els comptes\2/g
# al costat
s/\bAl costat \(del servidor\|dret\|esquerre\)\([^[:alnum:]]\)/En el costat \1\2/g
  s/\b\(arrossegueu qualsevol peça\|Moveu-vos\) al costat\([^[:alnum:]]\)/\1 fins al costat\2/g
  s/\bvista costat al costat\([^[:alnum:]]\)/vista costat a costat\1/g
s/\b\(construir un patró idèntic\|De manera predeterminada és\|desades\|doble toc\|hi ha\|Hi ha literals\|implementat caselles de selecció addicionals\|mètode estadístic,\|[Mm]ostra l'escala i el desplaçament\|Mostra la barra de desplaçament\|mostrarà els números de les línies\|mostrarà una vora per a les icones\|número d'equació\|penja\|propostes\|reproduir simètricament el patró\|Sense vores\|sis botons\|veus\) al costat\([^[:alnum:]]\)/\1 en el costat\2/g
 #
s/\b\(funciona\) als costats\([^[:alnum:]]\)/\1 en els costats\2/g
# al fòrum
s/\b\([Cc]erqueu l'aplicació %1\|[Dd]ebateu\|debat\|debatre-ho\|feu preguntes\|informa en kaichi1342\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Ff]\)òrum\([^[:alnum:]]\)/\1 en el \2\3òrum\4/g
 #
s/\b\([Ee]rrors\|suport\) als \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Ff]\)òrums\([^[:alnum:]]\)/\1 en els \2\3òrums\4/g
# al fstab
s/\b\(definida\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)fstab\([^[:alnum:]]\)/\1 en el \2fstab\3/g
# al giny
s/\b\(indiquen\|llistar els idiomes alternatius\/traduïts preferits\|traducció\|traduccions en línia\|verificació ortogràfica\) al giny\([^[:alnum:]]\)/\1 en el giny\2/g
 #
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\) als ginys\([^[:alnum:]]\)/\1 en els ginys\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) als ginys\([^[:alnum:]]\)/\1 en els ginys\2/g
# al grup
s/\b\(animació»\|estan\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)grup\([^[:alnum:]]\)/\1 en el \2grup\3/g
 #
s/\b\(qüestions\) als \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)grups\([^[:alnum:]]\)/\1 en els \2grups\3/g
# al J2000
s/\b\(declinació (Dec)\) al J2000\([^[:alnum:]]\)/\1 en el J2000\2/g
# al manual
s/\b\(AstroInfo\|disponible\|[Ll]legiu-ne els detalls\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Mm]\)anual\([^[:alnum:]]\)/\1 en el \2\3anual\4/g
# al mapa
s/\bAl mapa\([^[:alnum:]]\)/En el mapa\1/g
s/\b\(apareixerà\|aquestes sis ciutats\|arrossegant el centre del mosaic\|asteroides\|CDV)\|cel profund\|cel profund»\|[Cc]entra\|[Cc]entra %1\|centrar amb facilitat un objecte\|centrat\|[Cc]ol·loca temporalment\|com a imatges\|cometes\|constel·lacions\|dibuixar\|dibuixarà el terreny\|dibuixarà un contorn\|dibuix[ei]n\|disponible\|Júpiter\|Lluna\|Mart\|Mercuri\|Neptú\|Plutó\|Saturn\|Sol\|Urà\|Venus\|eclíptica\|enfocament\|equador\|equador celeste\|equatorials\|estrelles\|etiqueta\|etiquetes\|etiqueta acolorida de nom\|etiquetar\|girar la vista de manera que el nord\|HiPS\|horitzó\|horitzó local\|horitzontals\|i les corbes eclíptiques\|incloure\|indicadors\|localitzar-los\|marcats automàticament\|meridià local\|Mostra els punts d'alineació\|mosaic\|Mostra una marca de telescopi\|mostrarà\|mostraran\|mostraran imatges incloses\|mostren els seus punts\|mostri la mida angular del sensor CCD\|objecte\|objectes\|objectes addicionals\|objectes resolts\|planetes\|posició actual de la imatge\|posició apuntada pel telescopi\|posició correcta\|qualsevol objectere\|flectirà\|representen\|representi el terreny\|ressaltaran amb un símbol\|ressalti\|satèl·lit\|satèl·lits\|seleccionant-los\|seleccionat\|simulada\|situades\|situats\|Sol i la Lluna)\|solucionador\|supernova\|supernoves\|superposarà les imatges\|[Ss]uperposicions d'imatges\|terra opac\|Via Làctia\|visibles\|[Vv]isualitza\|visualitzar-les directament\) al mapa\([^[:alnum:]]\)/\1 en el mapa\2/g
# al marge
  s/\bquote>al marge<\/quote>/quote>en el marge<\/quote>/g
s/\b\(està\|nanes\) \((«\|\)al marge\([^[:alnum:]]\)/\1 \2en el marge\3/g
# al mateix
s/\b\(cau sempre\|incidir sempre\|s'executen\|sortida\) al mateix\([^[:alnum:]]\)/\1 en el mateix\2/g
# al melic
s/\b\([Pp]oseu una mà\) al melic\([^[:alnum:]]\)/\1 en el melic\2/g
# al mercat
  s/\bTORRE AL MERCAT\([^[:alnum:]]\)/TORRE EN EL MERCAT\1/g
s/\b\(ser la millor marca\) al mercat\([^[:alnum:]]\)/\1 en el mercat\2/g
# al meridià
s/\b\(troba en aquest moment\|trobava\) al meridià\([^[:alnum:]]\)/\1 en el meridià\2/g
# al moll
s/\b\([Pp]osta de sol\) al moll\([^[:alnum:]]\)/\1 en el moll\2/g
# al món
s/\b\(contactes\) al món\([^[:alnum:]]\)/\1 en el món\2/g
# al monitor
s/\b\(és una polzada real\|[Nn]o s'ha seleccionat cap clip\|Treballs de clip de superposició\) al monitor\([^[:alnum:]]\)/\1 en el monitor\2/g
# al mosaic
s/\b\(amb l'orientació desitjada\) al mosaic\([^[:alnum:]]\)/\1 en el mosaic\2/g
# al nariu
s/\b\(dit anular\) al nariu\([^[:alnum:]]\)/\1 en el nariu\2/g
# al navegador
s/\b\(apareguin\|Bu&sca\|inici de sessió\|Jitsi\|l'agenda i\|[Oo]bre el Gestor web\|ressalta una funció\|veure els fitxers de Krita\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Nn]\)avegador\([^[:alnum:]]\)/\1 en el \2\3avegador\4/g
# al núvol
s/\b\(conflicte amb una adreça d'interès\|emmagatzemar les vostres dades\|executat\|llavors\|Shells\) al núvol\([^[:alnum:]]\)/\1 en el núvol\2/g
# al calaix
s/\b\(mostrar els elements multimèdia remots\) al calaix\([^[:alnum:]]\)/\1 en el calaix\2/
# al calendari
s/\b\([Ee]mmagatzema una còpia de l'adjunt\) al calendari\([^[:alnum:]]\)/\1 en el calendari\2/
# al canal
s/\b\(Corregeix el missatge de traducció\|publica[rt] un vídeo nou\|tenen lloc\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)canal\([^[:alnum:]]\)/\1 en el \2canal\3/g
 #
s/\b\(aconseguir actualitzacions\) als canals\([^[:alnum:]]\)/\1 en els canals\2/g
# al cau
s/\b\(simulació\) al cau\([^[:alnum:]]\)/\1 en el cau\2/g
# al Chromebook
 #
s/\b\(trobava\) als Chromebook\([^[:alnum:]]\)/\1 en els Chromebook\2/g
# al codi
  s/\b\"o al codi\([^[:alnum:]]\)/\"o en el codi\1/g
s/\b\(avís\|default_arch»\) al codi\([^[:alnum:]]\)/\1 en el codi\2/g
# al bosc
s/\b\(Cabana\) al bosc\([^[:alnum:]]\)/\1 en el bosc\2/g
# al botó
s/\bAl botó\([^[:alnum:]]\)/En el botó\1/g
s/\b\(<\/em>\|dies\|estableix\|lambda\|[Pp]ulsació llarga\|repetidament\|text\) al botó\([^[:alnum:]]\)/\1 en el botó\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) al botó\([^[:alnum:]]\)/\1 en el botó\2/g
 #
s/\bAls botons\([^[:alnum:]]\)/En els botons\1/g
s/\(<\/em>\|estableix\|repetidament\|text\) als botons\([^[:alnum:]]\)/\1 en els botons\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) als botons\([^[:alnum:]]\)/\1 en els botons\2/g
# al camí
s/\b\(àlbum\|[Cc]erca\|[Cc]erca[rt]\|dades existents\|disc\|el nom de cada carpeta\|[Ii]nstal·la el paquet\|percnt;1\|situar\|troba\|una fita important\) al \(llarg \|\)\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)camí\([^[:alnum:]]\)/\1 en el \2\3camí\4/g
 #
s/\b\([Cc]erca\|[Cc]erca[rt]\) als camins\([^[:alnum:]]\)/\1 en els camins\2/g
# al camp
s/\b\(addicionals\|[Aa]dreça\|[Cc]ognom\|compressió\|contacte\|correu\|[Dd]ensitat d'estrelles\|entrada\|és superior\|escollint\|fosc\|[Nn]om\|número»\|objectiu\|pregunta\|res\|salts de línia\|teclejar\) al camp\([^[:alnum:]]\)/\1 en el camp\2/g
s/\bal camp de sota\([^[:alnum:]]\)/en el camp de sota\1/g
 #
s/\b\(angle CDV de l'ocular\|copiaran\|paraules\) als camps\([^[:alnum:]]\)/\1 en els camps\2/g
# al capítol
s/\b\(digiKam\) al capítol\([^[:alnum:]]\)/\1 en el capítol\2/g
# al CAS
s/\bA CAS\([^[:alnum:]]\)/En CAS\1/g
# al cel
s/\b\(actual\|cada estrella\|dibuix[ei]n\|és el punt\|és un cercle més gran\|establerts a un angle de 23,5 graus\|estan aquests objectes\|estaria alt\|estigués\|gira\|girar\|[Ii]magineu dues estrelles\|incloses\|indica l'ascensió recta\|La línia\|localitzar-lo\|moviment\|[Oo]bjecte\|objecte feble\|[Oo]bjectes\|posició\|posició del Sol\|posició nova\|posicions\|posta d'un objecte\|ser molt més gran\|simular la vista\|veiem\|veure's\|visible\|visibles\) al cel\([^[:alnum:]]\)/\1 en el cel\2/g
# al centre
s/\bAl centre\([^[:alnum:]]\)/En el centre\1/g
s/\b\(alterna els punts de mira\|casella de selecció\|centrat\|col·loca\|comparació d'estrelles\|descartin les estrelles\|dibuixa\|dibuixa com a un punt groc\|dibuixarà un símbol de camp de visió\|i l'objecte\|i l'objecte actual\|L'àrea d'imatges\|mostrarà la quadrícula 3x3 de mosaic\|mostrat\|produeixen\|relativament alta\|té dues àrees\) al centre\([^[:alnum:]]\)/\1 en el centre\2/g
# al CERN
s/\b\(s'utilitza àmpliament\) al CERN\([^[:alnum:]]\)/\1 en el CERN\2/g
# al certificat
s/\b\(especificat\) al certificat\([^[:alnum:]]\)/\1 en el certificat\2/g
# al color
  s/\bNo s'ha trobat cap entrada anomenada %1 al «colors\([^[:alnum:]]\)/No s'ha trobat cap entrada anomenada %1 en el «colors\1/g
# al còmic
s/\b\([Cc]lic del mig\) al còmic\([^[:alnum:]]\)/\1 en el còmic\2/g
# al concurs
s/\b\([Pp]articiparan\) al concurs\([^[:alnum:]]\)/\1 en el concurs\2/g
# al connector
s/\b\(IP-Country utilitzada\|utilitzar-l[eo]s\) al connector\([^[:alnum:]]\)/\1 en el connector\2/g
# al consell
s/\b\(alarmes\|[Mm]ostra els controls multimèdia i del volum\|mostrar el camí complet només\) al consell\([^[:alnum:]]\)/\1 en el consell\2/g
 #
s/\b\(fitxer\|mostrar el camí complet només\|mostraran\) als consells\([^[:alnum:]]\)/\1 en els consells\2/g
# al control
s/\b\(botons amunt i avall\|botons dret i esquerre\) al control\([^[:alnum:]]\)/\1 en el control\2/g
# al costat
s/\b\(apareix\) al costat\([^[:alnum:]]\)/\1 en el costat\2/g
# al «Creador
s/\b\(esmenat les regressions\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Creador\([^[:alnum:]]\)/\1 en el \2Creador\3/g
# al cursor
s/\b\([Cc]entra la vista\) al cursor\([^[:alnum:]]\)/\1 en el cursor\2/g
# al darrer
s/\b\(interès que s'ha de pagar\) al darrer\([^[:alnum:]]\)/\1 en el darrer\2/g
# al davant
s/\b\(posant un punt\) al davant\([^[:alnum:]]\)/\1 en el davant\2/g
# al diagrama
s/\b\([Uu]sat\|[Uu]tilitzat\) al diagrama\([^[:alnum:]]\)/\1 en el diagrama\2/g
 #
s/\b\([Uu]sat\|[Uu]tilitzat\) als diagrames\([^[:alnum:]]\)/\1 en els diagrames\2/g
# al diàleg
s/\bAl diàleg\([^[:alnum:]]\)/En el diàleg\1/g
s/\b\(interface>\|actualització\|aplica\|assumpte\|barreja\|canvis fets\|canvis realitzats\|carpeta\|clar\|col·lecció\|colors>`\|completar\|comprovar la compatibilitat\|[Cc]onfiguració\|configuració d'Ekos<\/link>,\|[Cc]onfiguració predeterminada\|[Cc]onfigureu-[hl][ao]\|context\|data\|definir-ne de pròpies\|definiu\|destinatari\|disponible\|disponibles\|Empleneu els camps adequats\|emprant els botons\|es pot trobar\|Especifica l'amplària del camp del receptor\|especificada\|especificat\|establert\|establerta\|establida\|[Ee]stabliu-la\|executar\|fer\|fitxers\|fitxers, si no s'ha canviat\|[Gg]estor de connectors»\|icones\|identitats\|intermediari\|introduïu la drecera web\|introduïts\|KStars\|La llista dels carregadors d'imatges\|maneres\*\*\|mostra les distàncies a moltes estrelles\|o\|OCR\|Obre el disseny d'informe\|opció\|opcions\|obrir fitxers d'àudio\|obrir fitxers d'imatge\|ordre\|perfil\|pestanya\|present\|que trieu\|realitza en l'ordre dels ginys\|recordatori\|recordatoris\|recurrència\|remitent\|seleccionada més recentment\|seleccionat\|Si és cert,\|so\|so predeterminat\|suprimir\|TLS\|utilitzarà\|utilitzar-lo\|[Vv]alor predeterminat\) al diàleg\([^[:alnum:]]\)/\1 en el diàleg\2/g
    s/\bdiàleg\(s\|\) d'edició d'alarma\([^[:alnum:]]\)/diàleg\1 d'edició d'una alarma\2/g
    s/\bdiàleg\(s\|\) de selecció de \(la \|\)carpeta\([^[:alnum:]]\)/diàleg\1 de selecció d'una carpeta\3/g
 #
s/\bAls diàlegs\([^[:alnum:]]\)/En els diàlegs\1/g
s/\b\([Cc]onfiguració predeterminada\|horària\|mostri\|reproducció de sons\|[Vv]alor predeterminat\|visualització de la imatge\) als diàlegs\([^[:alnum:]]\)/\1 en els diàlegs\2/g
# al diccionari
s/\b\([Nn]o\) al diccionari\([^[:alnum:]]\)/\1 en el diccionari\2/g
# al directori
s/\b\(addicionals\|adreces\|augmentarà les dades\|cap %1\|carpeta «gsc»\|cerca\|cercar\|cerquis\|configuració\|desarà\|desarà un fitxer de registre\|desaran\|disc\|emmagatzemats\|existents\|FIFO\|fitxer\|fitxer nou\|fitxers\|gsc»\|instal·leu\|mantenir\|nom\|ordres\|personalitzats\|registre\|romanen\|situa\|situa[rt]\|tingueu les imatges\|troba[rt]\|ubicat normalment\|uninstall`\) al directori\([^[:alnum:]]\)/\1 en el directori\2/g
 #
s/\b\([Cc]anvis\|cercaran\|fitxer d'índex\|trobat cap fitxer d'índex\) als directoris\([^[:alnum:]]\)/\1 en els directoris\2/g
# al disc
s/\b\(apuntar cap a un estil\|canviï\|capturades\|dades\|desa[rt]\|desaran\|desin\|desin les imatges de l'enfocament automàtic\|dispositiu\|editar els fitxers «.esl»\|emmagatzemant-les\|emmagatzemar les contrasenyes i altra informació personal\|emmagatzemats\|emmagatzemen\|Error durant l'escriptura\|escenes\|escriptura\|espai\|es[lq]<\/literal>\|imatges\|les imatges de les carpetes\|[Mm]antén la còpia\|mantenir\|memòria cau\|ni un fitxer «.esq»\|[Ss]uprimeix la còpia\) al disc\([^[:alnum:]]\)/\1 en el disc\2/g
 #
s/\b\(és molt activa\) als discs\([^[:alnum:]]\)/\1 en els discs\2/g
# al dispositiu
s/\b\(activat\|desactivat\|desaran\|emmagatzemar les imatges\|habilitar el mode de desenvolupador\|INDI\|instal·lar-la de forma manual\|[Nn]o hi ha cap suport\|[Rr]egistra els missatges de depuració\|sector %1\) al dispositiu\([^[:alnum:]]\)/\1 en el dispositiu\2/g
 #
s/\b\(augment de velocitat\|com\|emmagatzemar imatges\|i\|ja no s'ignora\|oferir una experiència &kde; nova\) als dispositius\([^[:alnum:]]\)/\1 en els dispositius\2/g
# al document
s/\bAl document\([^[:alnum:]]\)/En el document\1/g
s/\b\(anàlisi\|canvia\|canvis\|canvis posteriors\|centrar la pantalla\|cercarà\|conjunts de marc\|definit\|definits\|error\|establertes\|Desa\|paleta\|present\|seleccionat\|text\) al document\([^[:alnum:]]\)/\1 en el document\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) al document\([^[:alnum:]]\)/\1 en el document\2/g
  s/\bL'adreça al document\([^[:alnum:]]\)/L'adreça del document\1/g
s/\bAls documents\([^[:alnum:]]\)/En els documents\1/g
s/\b\(esmenes\|inserir\|inserits\|JavaScript\|nivell més gran\|pàgines\|text\) als documents\([^[:alnum:]]\)/\1 en els documents\2/g
# al dorsal
s/\b\(completar\|entrada %1\|gestionat\|sintaxi\|un error\|xarxa\) al dorsal\([^[:alnum:]]\)/\1 en el dorsal\2/g
s/\b\(fallades\|secundàries\|xarxa\) als dorsals\([^[:alnum:]]\)/\1 en els dorsals\2/g
# als DVI
s/\b\(cerca inversa «latex-synctex»\) als DVI\([^[:alnum:]]\)/\1 en els DVI\2/g
# al fil
s/\b\(132)\|[Ii]nformeu de les vostres troballes i comentaris\) al fil\([^[:alnum:]]\)/\1 en el fil\2/g
# al filtratge
s/\b\(tingui en compte\) al filtratge\([^[:alnum:]]\)/\1 en el filtratge\2/g
# al filtre
s/\b\(Activa les expressions regulars\|camps de número i de duració\|esmenat el mal comportament\|incloure en la busca i el grup de valoració\|roig\*\*\|seleccioneu JPG\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Ff]\)iltre\([^[:alnum:]]\)/\1 en el \2\3iltre\4/g
 #
s/\b\([Cc]ontrols lliscants HSV\) als filtres\([^[:alnum:]]\)/\1 en els filtres\2/g
# al final
s/\b\(l'any 2015 i,\) al final\([^[:alnum:]]\)/\1 en el final\2/g
# al fitxer
s/\bAl fi&txer\([^[:alnum:]]\)/En el fi\&txer\1/g
s/\bAl fitxer\([^[:alnum:]]\)/En el fitxer\1/g
  s/\berror de lectura al fitxer\([^[:alnum:]]\)/error de lectura des del fitxer\1/g
  s/\bal fitxer XML\([^[:alnum:]]\)/en el fitxer XML\1/g
s/\(,\|1»\|1<\/b>\|a X11)\|afegir un fitxer de vista prèvia\|afegiran com a referències\|anàlisi\|amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|Camps\|aparèixer\|aquesta funció\|àudio\/vídeo\|bandera\|bloqueig\|canviades\|canvis\|canvis des de l'exterior\|cap canvi\|cap figura\|caràtula\|caràtules\|[Cc]erca\|[Cc]lau\|codi\|configuració\|continuar\|contrasenyes\|control de canvis\|corresponents\|crear el registre del catàleg\|crides\|dades\|dades de connexió\|definides\|[Dd]esa\|[Dd]esa els resultats\|[Dd]esa la imatge\|desades\|desant-la\|desar\|desar el calendari\|desar la bibliografia\|desar la contrasenya\|desar la imatge\|desat\|desa[rt] la melodia\|desarà\|desaran\|desen\|dibuix:oficina\|diferents\|dins del registre\|disponible\|Element arrel no vàlid\|emmagatzemada\|emmagatzemades\|emmagatzema[rt]\|emmagatzemar la frase de pas\|emmagatzemaran\|enllaç\|enllestides\|entrades\|[Ee]rror\|error d'anàlisi\|es definia\|es definien\|es mostren\|escriptura\|escriptura de dades del porta-retalls\|Escriu les estadístiques\|escrit\|escriu\|escriurà\|escriure\|1\|escriure els certificats\|escriure els grups\|escriure la clau\|escriure la plantilla de llicència personalitzada\|escriure les subclaus\|[Ee]specifica el temps local\|especificat\|esperat\|establert\|establert la drecera correcta per a ampliar\|establerta\|estrelles)\|estigui\|etiqueta\|1<\/b>\|etiquetes\|falten (SD)\|1<\/filename>\|fitxers\|forma diferent\|format de fitxer\|funcions\|Guar&da\|implementació d'àudio\/vídeo\|incrusta\|incrustat\|informació del canal\|instruccions\|interpretaven algunes línies\|llicència\|MANSECT<\/envar>\|metadades\|[Mm]ostra\|mostren\|muntatge\|nivell\|o\|opcions diferents\|pàgines\|paraules\|particions\|pistes que\|preferències\|present\|problemes\|rectificació múltiple\|SD)\|[Tt]ria els camps\|[Tt]ria els paràmetres\|subclau\|traducció\|troba\|trobat formes\|tros\|ubicacions corresponents\|URL de baixada\|utilitzat\|vectors\) al fitxer\([^[:alnum:]]\)/\1 en el fitxer\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) al fitxer\([^[:alnum:]]\)/\1 en el fitxer\2/g
  s/\b\(Executa l'script\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)fitxer\([^[:alnum:]]\)/\1 en el \2fitxer\3\1/g
  s/\berror de lectura al fitxer\([^[:alnum:]]\)/error de lectura des del fitxer\1/g
  s/\bmida del caràcter al fitxer\([^[:alnum:]]\)/mida del caràcter per al fitxer\1/g
  s/\bno al fitxer o al lateral\([^[:alnum:]]\)/no en el fitxer o en el lateral\1/g
s/\bAls [Ff]itxers\([^[:alnum:]]\)/En els fitxers\1/g
  s/(als fitxers\([^[:alnum:]]\)/(en els fitxers\1/g
  s/\b\([Nn]omés\|restricció<\/a>\) als fitxers locals\([^[:alnum:]]\)/\1 en els fitxers locals\2/g
s/\b\(canvi del propietari\|canvi dels atributs\|canvis\|canvis des de l'exterior\|canvis fets\|[Cc]erca\|corresponents\|emmagatzemades\|escriuen\|etiquetes\|implementació d'àudio\/vídeo\|línies\|metadades\|o\|que heu fet\|utilitzar-lo\) als fitxers\([^[:alnum:]]\)/\1 en els fitxers\2/g
  s/\bi als fitxers RAW\([^[:alnum:]]\)/i en els fitxers RAW\1/g
  s/\bmonitorar els canvis dels fitxers\([^[:alnum:]]\)/monitorar els canvis en els fitxers\1/g
  s/\bals fitxers de capçalera\([^[:alnum:]]\)/en els fitxers de capçalera\1/g
# al fotograma
s/\b\([Aa]ctiva la detecció de píxels cremats\|[Aa]ctiva la detecció de píxels freds\|centre de les estrelles\|detectades\|detectar\|Mostra HFR de les estrelles\) al fotograma\([^[:alnum:]]\)/\1 en el fotograma\2/g
# al fons
s/\b\(dibuixarà superposat\|dibuixaran com a àrees ombrejades\|dispersa\|ocult[ei] el color de les traces\) al fons\([^[:alnum:]]\)/\1 en el fons\2/g
# al forat
s/\bAl forat\([^[:alnum:]]\)/En el forat\1/g
s/\b\(atrapa'ls\|bala\|caigui\|caure\|desar\|estigui\|presents\) al forat\([^[:alnum:]]\)/\1 en el forat\2/g
 #
s/\bAls forats\([^[:alnum:]]\)/En els forats\1/g
s/\b\(posar\|situar-les\) als forats\([^[:alnum:]]\)/\1 en els forats\2/g
# al formulari
s/\b\(emplenada\) al formulari\([^[:alnum:]]\)/\1 en el formulari\2/g
# als Frameworks
s/\b\(utilitzar\) als \(&plasma-workspaces;\|Frameworks\)\([^[:alnum:]]\)/\1 en els \2\3/g
# al full
s/\b\([Vv]egeu la sortida del vostre treball directament\) al full\([^[:alnum:]]\)/\1 en el full\2/g
# al gestor
s/\b\(blocat\|calendaris\|Desa o\|destinació\|directori actual\|disponible\|Emmagatzema el perfil\|en &konqueror;,\|esmenat la relació d'aspecte dels consells d'eina\|[Ii]matges\|iniciant el perfil\|iniciar el perfil\|[Mm]ostra\|[Oo]bre\|obrir un àlbum\|ombres\|recuperat el botó «Neteja»\|visibles\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Gg]\)estor\([^[:alnum:]]\)/\1 en el \2\3estor\4/g
# al giny
s/\b\(Enfocament»\|s'indiquen\) al giny\([^[:alnum:]]\)/\1 en el giny\2/g
# al gràfic
s/\b\(apareixerà\|dibuixa\|Estableix el valor màxim\|Estableix el valor mínim\|[Mm]ode de selecció\|[Mm]ostra\|Mostra els sensors\|Mostra la zona crítica d'enfocament\|Mostra les etiquetes\|Mostra les etiquetes «Màx.» i «Mín.»\|Mostra la «Zona crítica de l'enfocament»\|mostrar la «Zona crítica de l'enfocament»\|mostrar les etiquetes\|mostren\|netejar el desordre, tant\|ocultar les etiquetes\|Petzval\|selecciona un guany a prop d'un «pas»\|Valor màxim\|Valor mínim\|visualitzada\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Gg]\)ràfic\([^[:alnum:]]\)/\1 en el \2\3ràfic\4/g
 #
s/\b\([Vv]isualitza el traçat AR\|[Vv]isualitza el traçat d'error RMS\|[Vv]isualitza el traçat de correccions AR\|[Vv]isualitza el traçat de correccions Dec\|[Vv]isualitza el traçat Dec\|[Vv]isualitza el traçat de correccions Dec\|[Vv]isualitza el traçat SNR\) als \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Gg]\)ràfics\([^[:alnum:]]\)/\1 en els \2\3ràfics\4/g
# als jardins
s/\b\(Okular\) als jardins\([^[:alnum:]]\)/\1 en els jardins\2/g
# al laboratori
s/\b\(mesura\|mesurar-les\) al laboratori\([^[:alnum:]]\)/\1 en el laboratori\2/g
# al lateral
s/\b\(escriptura\|situats\) als laterals\([^[:alnum:]]\)/\1 en els laterals\2/g
# al lector
s/\b\(escanegeu l'empremta digital\) al lector\([^[:alnum:]]\)/\1 en el lector\2/g
 #
s/\b\(visibles\) als lectors\([^[:alnum:]]\)/\1 en els lectors\2/g
# al límit
s/\b\(enfocament automàtic\) al límit\([^[:alnum:]]\)/\1 en el límit\2/g
# al llapis
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\) al llapis\([^[:alnum:]]\)/\1 en el llapis\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) al llapis\([^[:alnum:]]\)/\1 en el llapis\2/g
# al llenç
s/\b\(amb text enriquit\|dibuixar objectes i altres coses\|dibuixen assistents directament\|[Dd]receres d'entrada\|edició de text\|funciona\) al llenç\([^[:alnum:]]\)/\1 en el llenç\2/g
# al llibre
s/\b\(amb la data i el saldo\|recollida\) al llibre\([^[:alnum:]]\)/\1 en el llibre\2/g
# al lloc
s/\bAl lloc\([^[:alnum:]]\)/En el lloc\1/g
s/\b\(apareixerà\|canvieu al mode de Coordenades equatorials\|cercant\|cercar-la\|de manera que l'opció\|[Ii]nformeu de tots els errors\|[Ll]legiu l'entrevista completa\|nacional\|PREFERIDA\\\\>\|[Ss]e cerca\|traducció,\|trobeu cap documentació\|unió\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)lloc\([^[:alnum:]]\)/\1 en el \2lloc\3/g
 #
s/\b\(apareixerà\|descripcions\|emmagatzemat en fitxers\|plantilles\) als llocs\([^[:alnum:]]\)/\1 en els llocs\2/g
# al menú
s/\bAl menú\([^[:alnum:]]\)/En el menú\1/g
  s/\bals elements especials del menú d'adreces\([^[:alnum:]]\)/als elements especials en el menú d'adreces\1/g
  s/\bl'etiqueta al menú emergent\([^[:alnum:]]\)/l'etiqueta en el menú emergent\1/g
s/\(»\|accions»\|Anotacions<\/i>\|aparegués\|aparegui\|apareixen\|apareixerà\|apareixeran\|canviar la unitat dels botons de selecció de valors decimals\|Canvieu-ho a això\|capturadora\|cel·les\|Centra i segueix``\|cerqueu aquesta acció\|columnes\|compartir\|completa»\|d'usuari\|Detalls``\|disponible\|disponibles\|eines\|Els darrers elements\|entrades\|especifiqueu el dispositiu de la roda de filtres\|falten\|finestra\|fitxer»\|guibutton>\|guiicon>\|guilabel>\|guimenuitem>\|guisubmenu>\|link>\|habilitar el bloqueig\|hi ha\|Hi ha una opció de casella de selecció\|i aquestes opcions\|Importa<\/b>\|interface>\|Kdesvn\|KGoldrunner\|laterals<\/b>\|menú contextual i\|[Mm]ostra\|mostrarà\|mostrarà l'entrada corresponent\|nom\|ocultar tots simultàniament\|opacitat\|possibles\|pot fer\|Potencia la funcionalitat de cerca\|preseleccionats\|Quan canviem d'idioma\|ratlles\|retalls»\|segur)\|seleccionada\|seleccionat\|subcircuit»\|trobar\|trobareu\|[Tt]robareu aquestes dues característiques\|trobareu la característica de zoom\|troben\|usuari\|Vegeu l'element de l'horitzó artificial\|veieu\|veure amb \*\*Agrupa les imatges\*\*\|vista»\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Mm]\)enú\([^[:alnum:]]\)/\1 en el \2\3enú\4/g
s/\b\(en el menú contextual i\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Mm]\)enú\([^[:alnum:]]\)/\1 en el \2\3enú\4/g
  s/\bfuncions estan al menú\([^[:alnum:]]\)/funcions es troben en el menú\1/g
  s/\bsímbols als suggeriments i als menús\([^[:alnum:]]\)/símbols en els suggeriments i en els menús\1/g
s/\bAls menús\([^[:alnum:]]\)/En els menús\1/g
s/\b\(cerqueu aquesta acció\|icones\|interface>\|seva acció\|trobar\|troben\|veieu\) als menús\([^[:alnum:]]\)/\1 en els menús\2/g
s/\bAfegeix eina al menú\([^[:alnum:]]\)/Afegeix l'eina al menú\1/g
  s/\bmostrar al menú tradueix\([^[:alnum:]]\)/mostrar en el menú Tradueix\1/g
# al meu
s/\b\(Bigscreen\|dibuixar un mapa per a una novel·la fantàstica\|està\) al meu\([^[:alnum:]]\)/\1 en el meu\2/g
# al mig
s/\bAl mig\([^[:alnum:]]\)/En el mig\1/g
s/\b\(els tons mitjans\|mostra\|mostr[ei]n\|tenen una roda\|[Uu]n quadre de cerca en temps real\|utilitzar accents greus\) al mig\([^[:alnum:]]\)/\1 en el mig\2/g
  s/\bclicant en el mig\([^[:alnum:]]\)/clicant al mig\1/g
# al mirall
s/\b\(fet\) al mirall\([^[:alnum:]]\)/\1 en el mirall\2/g
# al missatge
s/\b\(canvis\|[Cc]erca\|Enllaç\|mencionat\|mostrar\|temps\) al missatge\([^[:alnum:]]\)/\1 en el missatge\2/g
  s/\bfitxer %1 al missatge %2\([^[:alnum:]]\)/fitxer %1 per al missatge %2\1/g
 #
s/\b\(acolorit\|activades\|Bu&sca\|[Cc]erca\|compartició de fitxers\|Enllaços\|inserir\|signatures\|temps\|total\) als missatges\([^[:alnum:]]\)/\1 en els missatges\2/g
# al mòbil
s/\b\(Calindori\|en l'escriptori,\|en l'escriptori i\|estigui habilitat\|Kongress\|Kontrast\|[Vv]ista\|[Vv]ista dinàmica\|[Vv]ista plana\) al mòbil\([^[:alnum:]]\)/\1 en el mòbil\2/g
# al mode
s/\b\(només\) al mode\([^[:alnum:]]\)/\1 en el mode\2/g
# al mòdul
  s/\(ja existeix\|%s\)\(()\|\) (al mòdul\([^[:alnum:]]\)/\1\2 (en el mòdul\3/g
s/\bAl mòdul\([^[:alnum:]]\)/En el mòdul\1/g
s/\b\(Acció del solucionador``\|AR\|Biblioteca fosca»\|Captura i resol``\|[Cc]arregarà el fitxer de seqüències\|CDV\|Dec\|eina Biblioteca fosca\|emmagatzema\|fotogrames capturats\|guibutton>\|guiicon>\|guilabel>\|guimenuitem>\|guisubmenu>\|link>\|habilitat\|link>\|localitzadors de mailto\|Opcions``\|orienta…<\/span>\|Remot``\|resoldre imatges\|resolent la placa\|resoleu una imatge\|suport de baixada\|també\|tasca del planificador\|utilitzant la configuració\|utilitzats\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)mòdul\([^[:alnum:]]\)/\1 en el \2mòdul\3/g
 #
s/\bAls mòduls\([^[:alnum:]]\)/En els mòduls\1/g
# al navegador
s/\b\(1<\/b>\|agenda i\|àlbums\|autenticació\|[Cc]erca\|diària\|diaris\|directament\|etiquetes\|festiu\|frame»\|geoposició\|grup\|incrustat\|mensual i\|[Mm]ostra\|laborables\|mostren\|pendents\|perfil\|predeterminats<\/i>\|seleccionades\|seleccionats\|setmanal\|valor de la força\|visualitzarà\|web\) al navegador\([^[:alnum:]]\)/\1 en el navegador\2/g
# al nivell
s/\b\(Inserix\) al nivell\([^[:alnum:]]\)/\1 en el nivell\2/g
# al nom
s/\b\([*]»\|d'R\|[Ee]rror\|espais\|tabuladors\) al nom\([^[:alnum:]]\)/\1 en el nom\2/g
  s/\bCerca al Nominatim d'OpenStreetMap\([^[:alnum:]]\)/Cerca en el Nominatim d'OpenStreetMap\1/g
  s/\bnomés al Nom\([^[:alnum:]]\)/només en el Nom\1/g
 #
s/\([_.]»\|barres\|[Cc]ometes\|espais\|icones\|són vàlids\|títols i\|utilitzen\) als noms\([^[:alnum:]]\)/\1 en els noms\2/g
  s/\bals noms d'R\([^[:alnum:]]\)/en els noms d'R\1/g
  s/\bals títols i en els noms\([^[:alnum:]]\)/als títols i als noms\1/g
# al nombre
s/\b\([Pp]osa límits\) al nombre\([^[:alnum:]]\)/\1 en el nombre\2/g
# al nostre
s/\b\(centrats en Krita\|connector MLT de Krita\|[Ee]ntreu\|escriviu un suggeriment\|informeu-ne\|ofereixen GNU\/Linux\|publicar l'última versió de Krita\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)nostre\([^[:alnum:]]\)/\1 en el \2nostre\3/g
# al número
 #
s/\b\(cliqu[ei]\) als números\([^[:alnum:]]\)/\1 en els números\2/g
# al paquet
s/\b\(s'exclou meson\|[Tt]roba\|trobat\|trobat cap carpeta de dades predeterminada\) al paquet\([^[:alnum:]]\)/\1 en el paquet\2/g
# al patró
s/\b\(configurar els modificadors\|[Ee]rror\) al patró\([^[:alnum:]]\)/\1 en el patró\2/g
# al perfil
s/\b\(ajustar els paràmetres\|seleccionat\) al perfil\([^[:alnum:]]\)/\1 en el perfil\2/g
# al pinzell
s/\b\(activava el filtre «Índex del color»\|activava el filtre «Semi to»\|esmenat una fallada\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Pp]\)inzell\([^[:alnum:]]\)/\1 en el \2\3inzell\4/g
# al plafó
s/\bAl plafó\([^[:alnum:]]\)/En el plafó\1/g
s/\b\(acoblador Capes\|alterna la vista de l'histograma\|alterna la visualització de les estadístiques FITS\|[Aa]mplada\|apareixerà\|aplicacions i\|baixats\|barra d'eines\|buit\|cares<\/u>\|carpeta\|carregar perfils de configuració\|d'ajuda\|duplicades\|elements\|emergents\|especificar un valor simple per a qualsevol d'aquestes quatre coordenades\|[Ee]specifiqueu un camí absolut\|està buit\|establir aquí o\|executant\|executant-se\|existents\|gestor de fitxers\|icona\|mostra\|mostren\|Oculta els elements nous\|posició<\/b>\|ressalteu\|transparència\|veurà\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Pp]\)lafó\([^[:alnum:]]\)/\1 en el \2\3lafó\4/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Pp]\)lafó\([^[:alnum:]]\)/\1 en el \2\3lafó\4/g
  s/\b\(modificar\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)plafó\([^[:alnum:]]\)/\1 en el \2plafó\3/g
  s/\btroba al Plafó d'eines\([^[:alnum:]]\)/troba en el Plafó d'eines\1/g
 #
s/\bAls plafons\([^[:alnum:]]\)/En els plafons\1/g
s/\(\\\n-\|[Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) als plafons\([^[:alnum:]]\)/\1 en els plafons\2/g
# al planificador
s/\bAl planificador\([^[:alnum:]]\)/En el planificador\1/g
s/\b\(Afegeix per lots»\|[Cc]erca en Astrobin\|[Oo]culta el gràfic d'altitud\|[Oo]culta la secció «Filtres»\|[Oo]culta la secció imatges\|[Pp]er a fer canvis\|prémer el quart botó en la cantonada superior esquerra de la finestra\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Pp]\)lanificador\([^[:alnum:]]\)/\1 en el \2\3lanificador\4/g
# al pòdcast
s/\b\([Mm]illores\) als pòdcast\([^[:alnum:]]\)/\1 en els pòdcast\2/g
# al pol
s/\b\(i tampoc\|no té sentit\) al pol\([^[:alnum:]]\)/\1 en el pol\2/g
# al port
s/\b\(amfitrió INDI a %1\|amfitrió PHD2: %1,\|els vaixells\|iniciat els serveis INDI\|Mòdem\|servidor INDI %1\) al port\([^[:alnum:]]\)/\1 en el port\2/g
# al porta-retalls
s/\b\(certificat\|dades útils\|dades vàlides\|de la imatge\|ha actualment\|ha dades\|ha informació\|hi ha\|hi ha cap dada vàlida de fotograma clau\|hi ha cap element\|pantalla\|posa'l\|si n'hi ha,\|[Ss]ubstitueix\|text\) al porta-retalls\([^[:alnum:]]\)/\1 en el porta-retalls\2/g
# al primer
s/\b\(és que\) al primer\([^[:alnum:]]\)/\1 en el primer\2/g
 #
s/\b\(dona més\) als primers\([^[:alnum:]]\)/\1 en els primers\2/g
# al prismàtic
s/\b\(especificar CDV lineal tal com es menciona\) al prismàtic\([^[:alnum:]]\)/\1 en el prismàtic\2/g
# al procés
s/\b\([Cc]ercar fitxers d'imatge\|escriptura\|escriure\|utilitzen ponderacions\) al procés\([^[:alnum:]]\)/\1 en el procés\2/g
# al programa
s/\b\(errada\) al programa\([^[:alnum:]]\)/\1 en el programa\2/g
s/\b\(parpelleig de text\|Rust\) als programes\([^[:alnum:]]\)/\1 en els programes\2/g
# al programador
s/\(»\|[Mm]illores\) al programador\([^[:alnum:]]\)/\1 en el programador\2/g
# al programari
s/\b\(descobert un error\|descobert un problema de seguretat\) al programari\([^[:alnum:]]\)/\1 en el programari\2/g
# al projecte
s/\bAl projecte\([^[:alnum:]]\)/En el projecte\1/g
s/\b\(object_name»\|[Aa]justa el zoom\|[Cc]anvis\|canvis fets\|canvis realitzats\|[Cc]lips utilitzats\|configuració\|[Dd]esa la imatge\|enllaç simbòlic\|enllaços simbòlics\|explicada\|horària\|1\|trobat cap intermediari\|URL\|utilitzats\) al projecte\([^[:alnum:]]\)/\1 en el projecte\2/g
 #
s/\bAls projectes\([^[:alnum:]]\)/En els projectes\1/g
# al punt
s/\b\([Cc]entra la vista\|emplenar\|mostrarà\) al punt\([^[:alnum:]]\)/\1 en el punt\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) al punt\([^[:alnum:]]\)/\1 en el punt\2/g
 #
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\) als punts\([^[:alnum:]]\)/\1 en els punts\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) als punts\([^[:alnum:]]\)/\1 en els punts\2/g
# al quadrat
s/\b\(naus en un \*\*planeta\*\*\) al quadrat\([^[:alnum:]]\)/\1 en el quadrat\2/g
# al quadre
  s/\bal quadre del terminal\([^[:alnum:]]\)/en el quadre del terminal\1/g
s/\(<\/b>\) al quadre\([^[:alnum:]]\)/\1 en el quadre\2/g
s/\b\(200202\|aleatòria\|[Aa]mplada\|apareixerà\|aplicacions i\|buit\|calcular\|camí absolut\|cares<\/u>\|carpeta\|cercar\|correcta\|Creu vermella petita»\|d'ajuda\|Després,\|escriure\|escriviu «art»\|especificat\|[Ee]specifiqueu un camí absolut\|està buit\|estableix\|establir aquí o\|executant\|executant-se\|existents\|giny Posició actual i\|icona\|incloure en la vostra llista d'observacions\|introduir el nom del satèl·lit\|introduir un patró d'intèrpret d'ordres\|introduïu-l[ao]\|mida\|[Mm]illores\|[Mm]ostra[rt]\|[Mm]ostrarà\|nom\|nous\|observació\|[Oo]culta els elements nous\|ordres\|paraules\|proporciona l'usuari\|proveïda\|Resol``\|ressaltada\|s'introdueix\|se substituïxen els valors\|seleccionada\|selecciona[rt]\|seleccionar el model\|text\|transparència\|vegades\|vista de l'histograma\|visualització de les estadístiques FITS\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Qq]\)uadre\([^[:alnum:]]\)/\1 en el \2\3uadre\4/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Qq]\)uadre\([^[:alnum:]]\)/\1 en el \2\3uadre\4/g
  s/\bes classifiquen en \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)Certificats\([^[:alnum:]]\)/es classifiquen en \1Certificats\2/g
 #
s/\b\(introduïu\|[Mm]illores\|[Mm]ostren\|realitzarà\|substituiran els valors\|utilitzar\) als quadres\([^[:alnum:]]\)/\1 en els quadres\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) als quadres\([^[:alnum:]]\)/\1 en els quadres\2/g
# al qual
# s/\b\(\) al qual\([^[:alnum:]]\)/\1 en el qual\2/g
# al «Què
s/\b\([Vv]isualitza\) al «Què\([^[:alnum:]]\)/\1 en el «Què\2/g
# al que
s/\b\(moure's cap a un nivell inferior\) al que\([^[:alnum:]]\)/\1 en el que\2/g
# al README
s/\b\(events)\) al README\([^[:alnum:]]\)/\1 en el README\2/g
# al registre
s/\b\(Nivell de detall\|Vegeu els detalls\) al registre\([^[:alnum:]]\)/\1 en el registre\2/g
# al repositori
s/\b\([Cc]rea un fragment nou\|data)\|mantenen\) al repositori\([^[:alnum:]]\)/\1 en el repositori\2/g
# al reproductor
s/\b\(proveu-los\) al reproductor\([^[:alnum:]]\)/\1 en el reproductor\2/g
# al respectiu
s/\b\(amb el botó dret\|amb el botó esquerre\|amb el botó del mig\|proveu-los\) al respectiu\([^[:alnum:]]\)/\1 en el respectiu\2/g
s/\b\([Aa]mb el botó del mig\|[Aa]mb el botó dret\|[Aa]mb el botó esquerre\|[Aa]mb el &B[DEM]R;\|[Aa]mb un clic del mig\|[Aa]mb un clic dret\|[Aa]mb un clic esquerre\|[Aa]mb el botó dret del ratolí\|[Aa]mb el botó esquerre del ratolí\|[Aa]mb el botó del mig del ratolí\|[Cc]lic del mig\|[Cc]lic del ratolí\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|clic simultani\|[Cc]lica\|[Cc]lica successivament\|[Cc]licar successivament\|[Cc]liqueu successivament\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) al respectiu\([^[:alnum:]]\)/\1 en el respectiu\2/g
# al resultat
s/\b\(visibles\) al resultat\([^[:alnum:]]\)/\1 en el resultat\2/g
s/\bals resultats\([^[:alnum:]]\)/en els resultats\1/g
  s/\b\(per\|quant\) en els resultats\([^[:alnum:]]\)/\1 als resultats\2/g
# al resum
 #
s/\b\([Cc]erca\) als resums\([^[:alnum:]]\)/\1 en els resums\2/g
# al sector
s/\b\(cercant\|Troba les estrelles»\) al sector\([^[:alnum:]]\)/\1 en el sector\2/g
# al segon
s/\b\(van empatar\) al segon\([^[:alnum:]]\)/\1 en el segon\2/g
# al Seguidor
s/\b\(error\|error oberts\|informeu-ne\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Ss]\)eguidor\([^[:alnum:]]\)/\1 en el \2\3eguidor\4/g
# al Selector
s/\bAl selector\([^[:alnum:]]\)/En el selector\1/g
s/\b\(desat\|esmenat la renderització de la icona d'avís\|mostrarà una vista prèvia\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Ss]\)elector\([^[:alnum:]]\)/\1 en el \2\3elector\4/g
 #
s/\bAls selectors\([^[:alnum:]]\)/En els selectors\1/g
# al sensor
  s/\bLlisqueu\([^[:alnum:]]\)/Feu lliscar\1/g
s/\b\(esmenat el desplaçament de l'angle\|\(Feu lliscar\|Poseu\) repetidament el vostre \(dit anular\|dit auricular (petit)\|dit índex\|dit mitger\|polze\) \(dret\|esquerre\)\) al sensor\([^[:alnum:]]\)/\1 sobre el sensor\5/g
# al servidor
s/\b\(acronym>\|deixar els missatges\|[Ee]rror intern\|és suficient el nom d'usuari\|[Hh]a caducat\|iniciar la sessió\|iniciar-se\|obrir\|pertanyents a les claus de targeta intel·ligent\|utilitzada\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)servidor\([^[:alnum:]]\)/\1 en el \2servidor\3/g
# al seu
  s/\banar al seu codi font\([^[:alnum:]]\)/anar fins al seu codi font\1/g
s/\b\(bulb esfèric i brillant d'estrelles\|cerca\|disponibles\|diverses il·lustracions\|estiguessin\|forat negre supermassiu\|forats negres supermassius\|incloguin el nom de l'objecte\|n'abriga un\|necessita\|ofereixen belles imatges\|tenir una «barra» d'estrelles\) al seu\([^[:alnum:]]\)/\1 en el seu\2/g
  s/\b\(cerca en el seu nom de fitxer o\) al seu\([^[:alnum:]]\)/\1 en el seu\2/g
 #
s/\b\(com\|contenen moltes de joves\|forats negres supermassius\|plasma-mobile)\|reaccions de fusió termonuclear\) als seus\([^[:alnum:]]\)/\1 en els seus\2/g
# al sistema
s/\bAl sistema\([^[:alnum:]]\)/En el sistema\1/g
s/\b\(%1 no s'ha trobat\|accepten executables\|altre compte d'administrador\|en l'enfocament automàtic o\|està implementada\|existeix\|i petites esmenes\|instal·lar l'aplicació\|instal·lat\|Llocs\|suport d'àudio\|s'utilitza extensament\|teniu coses prou recents\|trobat\) al sistema\([^[:alnum:]]\)/\1 en el sistema\2/g
 #
s/\bAls sistemes\([^[:alnum:]]\)/En els sistemes\1/g
s/\b\(està implementada\|Plasma Mobile\) als sistemes\([^[:alnum:]]\)/\1 en els sistemes\2/g
# Al SoK
s/\bAl SoK\([^[:alnum:]]\)/En el SoK\1/g
# al submenú
s/\b\([Tt]rieu un esquema de color diferent\|trieu Coordenades horitzontals i,\|Zenit cap avall``\) al submenú\([^[:alnum:]]\)/\1 en el submenú\2/g
# al subsistema
s/\bAl subsistema\([^[:alnum:]]\)/En el subsistema\1/g
s/\b\(instal·lar-se directament\) al subsistema\([^[:alnum:]]\)/\1 en el subsistema\2/g
 #
s/\bAls subsistemes\([^[:alnum:]]\)/En els subsistemes\1/g
# al sufix
s/\b\(troba\) al sufix\([^[:alnum:]]\)/\1 en el sufix\2/g
# al suggeriment
s/\b\(símbols\) als suggeriments\([^[:alnum:]]\)/\1 en els suggeriments\2/g
# al tauler
s/\b\(esmenat un retard extrem\|establert el valor de la propietat\|[Ee]stabliu els valors\|hipotecades\|més\|propietari\) al tauler\([^[:alnum:]]\)/\1 en el tauler\2/g
# al teclat
s/\b\(mirar\|no trobats\|tecles :kbd:`+` i :kbd:`-`\) al teclat\([^[:alnum:]]\)/\1 en el teclat\2/g
# al telèfon
s/\b\(escanejar-lo ràpidament\|mirar\|no trobats\) al telèfon\([^[:alnum:]]\)/\1 en el telèfon\2/g
# al telescopi
s/\b\([Cc]entra\|centrar amb facilitat un objecte en el mapa o\|emprant una càmera\|múltiples missions\|muntada la pantalla del mapa celeste\|Pantalla muntada\) al telescopi\([^[:alnum:]]\)/\1 en el telescopi\2/g
# al televisor
s/\b\(Plasma,\) al televisor\([^[:alnum:]]\)/\1 en el televisor\2/g
# al temps
s/\b\(rellotge\) al temps\([^[:alnum:]]\)/\1 en el temps\2/g
# al terminal
  s/\bnavegar allà al terminal\([^[:alnum:]]\)/navegar fins allà en el terminal\1/g
s/\b\(canviarà la carpeta actual\) al terminal\([^[:alnum:]]\)/\1 en el terminal\2/g
# al terrat
s/\b\([Uu]n estiu\) al terrat\([^[:alnum:]]\)/\1 en el terrat\2/g
# al teu
s/\b\(funcionar sense problemes\|impulsa fins al nivell següent\|instal·lar Linux\) al teu\([^[:alnum:]]\)/\1 en el teu\2/g
# al text
s/\b\([Cc]anvia\|[Cc]erca\|[Cc]erca una cadena\|conté un enllaç que diu «%1»\|[Hh]i ha «%n» parts\|[Hh]i ha massa caràcters\|[Hh]i ha massa caràcters per línia\|[Hh]i ha massa línies\|La relació de forma\|Mida del punt\|Paraules\|utilitzada\) al text\([^[:alnum:]]\)/\1 en el text\2/g
# als TIFF
 #
s/\b\(utilitzar dades PSD\) als TIFF\([^[:alnum:]]\)/\1 en els TIFF\2/g
# al títol
s/\b\(camí complet\|cerca de la paraula\|fitxers\|minúscules\|s'inclourà\|velocitat total\|velocitats\) al títol\([^[:alnum:]]\)/\1 en el títol\2/g
  s/\bprimera lletra als &títols\([^[:alnum:]]\)/primera lletra en els \&títols\1/g
# al traçat
s/\b\(Estableix la precisió desitjada del guiatge\|Mostra el costat del moll («PierSide»)\|Mostra el gràfic AR\|Mostra el gràfic de correccions AR\|Mostra el gràfic de correccions Dec\|Mostra el gràfic Dec\|Mostra el gràfic RMS\|Mostra el gràfic SNR\|Mostra el fons del cel («SkyBackground»)\|Mostra el nombre d'estrelles («NumStars»)\|Mostra el nombre d'estrelles de la captura\|Mostra el valor de la mediana simple de la captura\|Mostra els polsos AR\|Mostra els polsos Dec\|Mostra l'altitud\|Mostra l'angle horari de la muntura\|Mostra l'AR\|Mostra l'AR de la muntura\|Mostra l'azimut\|Mostra l'error RMS\|Mostra l'error RMS (durant la captura)\|Mostra l'excentricitat mediana de les estrelles de la captura\|Mostra HFR\|Mostra l'SNR\|Mostra la Dec\|Mostra la Dec de la muntura\|Mostra la deriva\|Mostra la temperatura de l'ambient\|resolta\) al traçat\([^[:alnum:]]\)/\1 en el traçat\2/g
# al tren
s/\b\(Barlow\|caps de setmana, i\|límit de resolució)\|s'inclou un filtre\) al tren\([^[:alnum:]]\)/\1 en el tren\2/g
# als vaixells
s/\b\(utilitzar\) als vaixells\([^[:alnum:]]\)/\1 en els vaixells\2/g
# al valor
s/\b\(canvi notable\) al valor\([^[:alnum:]]\)/\1 en el valor\2/g
 #
s/\b\(veure aquest eix\) als valors\([^[:alnum:]]\)/\1 en els valors\2/g
# al vídeo
s/\b\(s'inclou\) al vídeo\([^[:alnum:]]\)/\1 en el vídeo\2/g
# al visualitzador / visor
s/\b\(com a retallats\|controls d'estirament\|cursor\|Ekos o\|estirament automàtic a les imatges\|fitxer\|imatge\|imatges\|imatges capturades\|imatges carregades\|La lupa\|Marca les estrelles»\|[Mm]ostra\|Mostra automàticament les imatges rebudes\|[Mm]ostra el fitxer\|Mostra les imatges DSLR rebudes\|[Mm]ostrar els noms dels objectes\|[Mm]ostrar els vídeos\|mostrarà\|mostraran les imatges\|mostren\|[Oo]bre\|pantalla d'estat\|paràmetre d'estirament\|pestanya amb l'UID %1\|ratolí\|rebudes\|recursos\|rèflex digital\|s'obriran\|seleccion[ei] manualment\|utilitzar\|utilitzarà\|veu\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([Vv]\)is\(or\|ualitzador\)\([^[:alnum:]]\)/\1 en el \2\3isor\5/g
# al vostre
  s/\bhi estiguessin\([^[:alnum:]]\)/estiguessin\1/g
s/\b\(aplicable\|astrometry\.net»\|[Cc]erca\|configurada\|configurades\|configurat\|configurats\|des d'una llista de fonts\|desats\|disponible\|disponibles\|emmagatzemant una galeta\|especificar una carpeta local\|estarà\|estiguessin\|executant\|hi ha\|instal·lada\|instal·lades\|instal·lar cap còdec de vídeo addicional\|instal·lar el mòdul d'impressora\|instal·lat\|instal·lat el &frameworks;\|instal·lats\|KDE\|mostrar els noms dels objectes\|Photos\|recursos\|referir-se a un recurs tal com un fitxer\|Responeu a missatges de text del telèfon\|[Tt]rieu la versió disponible\|ser un nom\|tal com un fitxer\|teniu un port sèrie\|teniu una\|traduir l'aplicació %1\|troba\|troben els controladors INDI\|Vegeu les notificacions del telèfon\) al vostre\([^[:alnum:]]\)/\1 en el vostre\2/g
# al wiki
  s/\bComunitat KDE Wiki\([^[:alnum:]]\)/wiki de la comunitat KDE\1/g
s/\b\(disponibles\|el vostre compte\|Hi ha disponible una llista d'aquests\|informació genèrica\|present\|quant a aquest projecte\) al \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)wiki\([^[:alnum:]]\)/\1 en el \2wiki\3/g
# al xat
s/\bAl xat\([^[:alnum:]]\)/En el xat\1/g
s/\b\(Color dels enllaços\|Mostra efectes sofisticats\) al xat\([^[:alnum:]]\)/\1 en el xat\2/g
# #
# # # # # # # # # # # # # #
#
# a un
s/\bamb la imatge original a una meitat\([^[:alnum:]]\)/amb la imatge original en una meitat\1/g
# a un botó
s/\b\([Cc]liquem\) a un botó\([^[:alnum:]]\)/\1 en un botó\2/g
# a un directori
s/\b\(estigui\) a un directori\([^[:alnum:]]\)/\1 en un directori\2/g
# a una aplicació
s/\b\(estan oberts\) a una aplicació\([^[:alnum:]]\)/\1 en una aplicació\2/g
# a una cel·la
s/\b\(clic del mig\|clic dret\|clic esquerre\) a una cel·la\([^[:alnum:]]\)/\1 en una cel·la\2/g
# a una finestra
s/\b\(obrirà explícitament\|seleccionats\) a una finestra\([^[:alnum:]]\)/\1 en una finestra\2/g
# a una latitud
s/\b\([Ss]itua l'observador\) a una latitud\([^[:alnum:]]\)/\1 en una latitud\2/g
# a una paraula
s/\b\(Converteix el missatge\) a una paraula\([^[:alnum:]]\)/\1 en una paraula\2/g
# a una pila
s/\b\(troben\) a una pila\([^[:alnum:]]\)/\1 en una pila\2/g
# a una ubicació
s/\b\(oberta una finestra del navegador\) a una ubicació\([^[:alnum:]]\)/\1 en una ubicació\2/g
# a una vista
s/\b\(sortida\) a una vista\([^[:alnum:]]\)/\1 en una vista\2/g
# #
# # # # # # # # # # # # # #
#
# de -> en
s/\bcaràcter \(anterior\|següent\) de l'historial\([^[:alnum:]]\)/caràcter \1 en l'historial\2/g
# #
# # # # # # # # # # # # # #
#
#
s/\bdel·líptiques\([^[:alnum:]]\)/d'el·líptiques\1/g
# #
# # # # # # # # # # # # # #
#
# damunt
s/\bClicant en l'àrea central\([^[:alnum:]]\)/Clicant a l'àrea central\1/g
s/\b\([Cc]\)liqueu\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) \(a sobre\|damunt\|en\|sobre\) un\(a\|\)\([^[:alnum:]]\)/\1liqueu\2 damunt d'un\4\5/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(a sobre\|damunt\|en\|sobre\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([mst]eu\)/\1 damunt \3\4/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(a sobre\|damunt\|en\|sobre\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(això\|algun\|algun[as]\|algunes\|aquest\|aquest[as]\|aquestes\|ell\|ell[as]\|elles\)/\1 damunt d'\3\4/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(a sobre\|damunt\|en\|sobre\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(cada\|fitxers\|qualsevol\|totes\)/\1 damunt de \3\4/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(a sobre\|damunt\|en\|sobre\) de\(l\|\)\(s\|\)\([^[:alnum:]]\)/\1 damunt de\3\4\5/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(a sobre\|damunt\|en\|sobre\) el\(s\|\)\([^[:alnum:]]\)/\1 damunt del\3\4/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(a sobre\|damunt\|en\|sobre\) l'/\1 damunt de l'/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(a sobre\|damunt\|en\|sobre\) l\(a\|es\)\([^[:alnum:]]\)/\1 damunt de l\3\4/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(a sobre\|damunt\|en\|sobre\) un\(a\|\)\([^[:alnum:]]\)/\1 damunt d'un\3\4/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(al\|damunt el\|en el\|sobre el\)\([^[:alnum:]]\)/\1 damunt del\3/g
s/\bclicar o no a \([<«]\)/clicar o no en \1/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(a sobre\|damunt\|en\|sobre\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(Actualitza\|Importa\|Introducció\|Següent\)\([^[:alnum:]]\)/\1 damunt \3\4\5/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) \(a sobre\|damunt\|en\|sobre\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(AbstractCard\)\([^[:alnum:]]\)/\1 damunt d'una \3\4\5/g
  s/\b\([Aa]\)mb el botó \(central\|del mig\|dret\|esquerre\) \(a sobre\|damunt\|en\|sobre\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([mst]eu\)/\1mb el botó \2 damunt \4\5/g
  s/\b\([Aa]\)mb el botó \(central\|del mig\|dret\|esquerre\) \(a sobre\|damunt\|en\|sobre\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(això\|aquest\|aquest[as]\|aquestes\)/\1mb el botó \2 damunt d'\4\5/g
  s/\b\([Aa]\)mb el botó \(central\|del mig\|dret\|esquerre\) \(a sobre\|damunt\|en\|sobre\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(cada\|fitxers\|qualsevol\|totes\)\([^[:alnum:]]\)/\1mb el botó \2 damunt de \4\5\6/g
  s/\b\([Aa]\)mb el botó \(central\|del mig\|dret\|esquerre\) \(a sobre\|damunt\|en\|sobre\) del\([^[:alnum:]]\)/\1mb el botó \2 damunt del\4/g
  s/\b\([Aa]\)mb el botó \(central\|del mig\|dret\|esquerre\) \(a sobre\|damunt\|en\|sobre\) el\(s\|\)\([^[:alnum:]]\)/\1mb el botó \2 damunt del\4\5/g
  s/\b\([Aa]\)mb el botó \(central\|del mig\|dret\|esquerre\) \(a sobre\|damunt\|en\|sobre\) l\(a\|es\)\([^[:alnum:]]\)/\1mb el botó \2 damunt de l\4\5/g
  s/\b\([Aa]\)mb el botó \(central\|del mig\|dret\|esquerre\) \(a sobre\|damunt\|en\|sobre\) un\(a\|\)\([^[:alnum:]]\)/\1mb el botó \2 damunt d'un\4\5/g
  s/\b\([Cc]\)lic \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(central\|del mig\|dret\|esquerre\)\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) \(en\|sobre\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\([mst]eu\)\([^[:alnum:]]\)/\1lic \2\3\4 damunt \6\7\8/g
  s/\b\([Cc]\)lic \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(central\|del mig\|dret\|esquerre\)\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) \(en\|sobre\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(això\|aquest\|aquest[as]\|aquestes\)\([^[:alnum:]]\)/\1lic \2\3\4 damunt d'\6\7\8/g
  s/\b\([Cc]\)lic \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(central\|del mig\|dret\|esquerre\)\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) \(a\|en\|sobre\) \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(cada\|fitxers\|qualsevol\|totes\)\([^[:alnum:]]\)/\1lic \2\3\4 damunt de \6\7\8/g
  s/\b\([Cc]\)lic \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(central\|del mig\|dret\|esquerre\)\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) \(en\|sobre\) del\([^[:alnum:]]\)/\1lic \2\3\4 damunt del\6/g
  s/\b\([Cc]\)lic \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(central\|del mig\|dret\|esquerre\)\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) \(en\|sobre\) el\(s\|\)\([^[:alnum:]]\)/\1lic \2\3\4 damunt del\6\7/g
  s/\b\([Cc]\)lic \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(central\|del mig\|dret\|esquerre\)\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) \(en\|sobre\) l\(a\|es\)\([^[:alnum:]]\)/\1lic \2\3\4 damunt de l\6\7/g
  s/\b\([Cc]\)lic \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)\(central\|del mig\|dret\|esquerre\)\(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\) \(a\|en\|sobre\) un\(a\|\)\([^[:alnum:]]\)/\1lic \2\3\4 damunt d'un\6\7/g
#
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) en on\([^[:alnum:]]\)/\1 a on\2/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) damunt de l'\(<[^<]\{1,\}>\|\)esquerra\([^[:alnum:]]\)/\1 a l'\2esquerra\3/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) damunt de la \(<[^<]\{1,\}>\|\)dreta\([^[:alnum:]]\)/\1 a la \2dreta\3/g
#
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) en \(<[^<]\{1,\}>\|«\|\*\*\|\*\|\[\|:doc:`\|:ref:`\|``\|`\|\)/\1 damunt \2/g
s/\b\(amb el botó del mig\|amb el botó dret\|amb el botó esquerre\|amb el &B[DEM]R;\|[Cc]lic del mig\|[Cc]lic dret\|[Cc]lic esquerre\|[Cc]lic\|[Cc]lica\|[Cc]licada\|[Cc]licant\|[Cc]lica[rt]\|[Cc]liqu[ei]\|[Cc]liqueu\) en \([^[:alnum:]]\)/\1 damunt\2/g
 #
s/\b\([Cc]\)lic damunt \(<[^<]\{1,\}>\|«\|\*\*\|\[\|:doc:`\|:ref:`\|`\)\(central\|del mig\|dret\|esquerre\)\([^[:alnum:]]\)/\1lic \2\3\4/g
s/\bclicar accidentalment en elements\([^[:alnum:]]\)/clicar accidentalment damunt d'elements\1/g
s/\bd'un fitxer d'un arxiu\([^[:alnum:]]\)/d'un fitxer en un arxiu\1/g
s/\bdamunt dins\([^[:alnum:]]\)/dins\1/g
# #
# # # # # # # # # # # # # #
#
# llocs
  s/\ba Berlín, Màlaga\([^[:alnum:]]\)/en Berlín, Màlaga\1/g
  s/\ba Bilbao, Espanya\([^[:alnum:]]\)/en Bilbao, Espanya\1/g
s/\ba \(Adlershof\|Arnsberg\|Berlín\|Berna\|Erlangen\|Nuremberg\|Tübingen\), Alemanya\([^[:alnum:]]\)/en \1, Alemanya\2/g
s/\ba l'\(Índia\)\([^[:alnum:]]\)/en l'\1\2/g
  s/\b\([Aa]\)rrib\(a\|en\) en l'Índia\([^[:alnum:]]\)/\1rrib\2 a l'Índia\3/g
s/\ba la \(Corunya\|República Txeca\|UE\)\([^[:alnum:]]\)/en la \1\2/g
s/\ba Trysil, Noruega\([^[:alnum:]]\)/en Trysil, Noruega\1/g
  s/\ba Trysill\([^[:alnum:]]\)/en Trysil\1/g
s/\ba \(Alemanya\|Amèrica\|Anglaterra\|Barcelona\|Bengaluru\|Berlin\|Brasil\|Deventer\|Dublín\|Gran Canària\|Holanda\|Kerala\|Letònia\|Lituània\|Ludwigsburg\|Montenegro\|Munic\|Negril\|Porto Alegre\|Randa\|San Diego\|San Francisco\|São Paulo\|Salvador\|Sèrbia\|València\|Vancouver\|West Potomac Park\|Williams Bay\)\([^[:alnum:]]\)/en \1\2/g
  s/\bllei de marques a Alemanya\([^[:alnum:]]\)/llei de marques en Alemanya\1/g
s/\bal \(Brasil\|RU\)\b/en \1/g
s/\bals \(Alps\|Estats Units\|EUA\|Països Baixos\)\([^[:alnum:]]\)/en els \1\2/g
  s/\bEnviament gratuït en els EUA\([^[:alnum:]]\)/Enviament gratuït als EUA\1/g
  s/\bPer en els \(Estats Units\|EUA\)\([^[:alnum:]]\)/Pels \1\2/g
s/\bdia a la zona oest\([^[:alnum:]]\)/dia en la zona oest\1/g
s/\bzones horàries a l'Oceà\([^[:alnum:]]\)/zones horàries en l'Oceà\1/g

