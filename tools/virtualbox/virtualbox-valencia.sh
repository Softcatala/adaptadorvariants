#/bin/bash

wget https://www.virtualbox.org/export/HEAD/vbox/trunk/src/VBox/Frontends/VirtualBox/nls/VirtualBox_ca.ts
wget https://www.virtualbox.org/export/HEAD/vbox/trunk/src/VBox/Frontends/VirtualBox/nls/qt_ca.ts

docker build -t qt --build-arg SED="$(cat ../src2valencia.sed)"  .

docker create --name virtualbox_valencia -ti qt

docker cp virtualbox_valencia:/data/*valencia.ts .

docker prune virtualbox_valencia
