FROM ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive


RUN apt-get update
RUN apt-get -y install wget git ninja-build cmake clang libssl-dev libsqlite3-dev luajit python3 zlib1g-dev virtualenv libjpeg-dev fontconfig-config fonts-dejavu-core libfontconfig1 libfreetype6 libpng16-16 libtcl8.6 libtk8.6 libxft2 libxrender1 libxss1 tk8.6-blt2.5 ucf x11-common
WORKDIR /tmp
RUN wget https://github.com/pyston/pyston/releases/download/v2.3/pyston_2.3_20.04.deb
RUN dpkg -i pyston_2.3_20.04.deb