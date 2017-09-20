#!/bin/sh

echo '123456' | sudo -S yum -y install ncurses-devel

mkdir -p ~/download
cd ~/download

wget -c https://github.com/vim/vim/archive/v8.0.1095.tar.gz
tar -zxvf v8.0.1095.tar.gz

cd vim-8.0.1095
./configure --with-features=huge --enable-pythoninterp --enable-luainterp
make 
echo '123456' | sudo -S make install
