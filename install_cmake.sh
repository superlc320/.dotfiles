#!/bin/sh

mkdir -p ~/download
cd ~/download
wget https://cmake.org/files/v3.9/cmake-3.9.2.tar.gz
tar -zxvf cmake-3.9.2.tar.gz
cd cmake-3.9.2

make
echo '123456' | sudo -S make install
