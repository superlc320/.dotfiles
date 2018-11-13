#!/bin/sh

mkdir -p ~/download
cd ~/download
wget -c https://downloads.sourceforge.net/project/astyle/astyle/astyle%203.1/astyle_3.1_linux.tar.gz
tar xzvf astyle_3.1_linux.tar.gz
cd astyle/build/gcc
make prefix=/export/luocan/path/to
make install prefix=/export/luocan/path/to
