#!/bin/bash

VERSION=3.0.0-m7

FILE=nexus-$VERSION-unix.tar.gz

URL=http://download.sonatype.com/nexus/3/$FILE

mkdir -p cache
if [ ! -f cache/$FILE ]; then
    cd cache
    wget $URL
    tar -xf $FILE && rm $FILE
    mv nexus* nexus
    tar -cf $FILE nexus && rm -rf nexus
    cd ../ 
fi

cp cache/$FILE fs/nexus.tar.gz

docker build --rm -t nexus:$VERSION fs
