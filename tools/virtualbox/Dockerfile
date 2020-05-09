FROM debian:testing-slim as qt

RUN apt-get update && apt-get install -y \
    qttools5-dev-tools

RUN mkdir -p /data

COPY virtualbox_ca.ts /data
COPY qt_ca.ts  /data

RUN lconvert -source-language en -target-language ca /data/virtualbox_ca.ts -o /data/virtualbox.po
RUN lconvert -source-language en -target-language ca /data/qt_ca.ts -o /data/qt_ca.po

RUN ../src2valencia.sed < data/virtualbox.po > data/virtualbox_valencia.po
RUN ../src2valencia.sed < data/qt_ca.po > data/qt_valencia.po

RUN lconvert -locations none /data/virtualbox_valencia.po -o /data/virtualbox_valencia.ts
RUN lconvert -locations none /data/qt_valencia.po -o /data/qt_valencia.ts

RUN /bin/bash

VOLUME [ "/data" ]