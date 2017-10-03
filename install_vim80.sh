#!/bin/sh

echo '123456' | sudo -S yum -y install ncurses-devel python-devel ruby-devel lua-devel  perl-devel

mkdir -p ~/download
cd ~/download

wget -c https://github.com/vim/vim/archive/v8.0.1095.tar.gz
tar -zxvf v8.0.1095.tar.gz

cd vim-8.0.1095
make distclean
CFLAGS="-I/usr/lib64/perl5/CORE/" ./configure --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-luainterp --enable-perlinterp
make 
echo '123456' | sudo -S make install
