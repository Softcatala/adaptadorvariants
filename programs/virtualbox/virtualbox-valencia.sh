#/bin/bash

wd="programs/virtualbox"

rm "$wd/*ts"

wget https://www.virtualbox.org/export/HEAD/vbox/trunk/src/VBox/Frontends/VirtualBox/nls/VirtualBox_ca.ts -O "$wd/virtualbox_ca.ts"
wget https://www.virtualbox.org/export/HEAD/vbox/trunk/src/VBox/Frontends/VirtualBox/nls/qt_ca.ts -O "$wd/qt_ca.ts"

docker build -t qt  -f "$wd/Dockerfile" .

docker create --name virtualbox_valencia -ti qt

docker cp virtualbox_valencia:/data/virtualbox_valencia.ts "$wd/"
docker cp virtualbox_valencia:/data/qt_valencia.ts "$wd/"

docker container rm virtualbox_valencia
