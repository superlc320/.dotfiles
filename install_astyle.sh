#!/bin/sh

mkdir -p ~/download
cd ~/download
wget -c https://downloads.sourceforge.net/project/astyle/astyle/astyle%203.0.1/astyle_3.0.1_linux.tar.gz
tar -zxvf astyle_3.0.1_linux.tar.gz
cd astyle/build/gcc
make
echo '123456' | sudo -S make install
