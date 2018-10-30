#!/bin/sh

echo '112358' | sudo -S yum -y install ncurses-devel python-devel ruby-devel lua-devel  perl-devel

mkdir -p ~/path/to
mkdir -p ~/download
cd ~/download

wget -c https://github.com/vim/vim/archive/v8.1.0500.tar.gz
tar xzvf v8.1.0500.tar.gz

cd vim-8.1.0500
make distclean
# CFLAGS="-I/usr/lib64/perl5/CORE/" 
# ./configure --prefix=/export/luocan/path/to --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-luainterp --enable-perlinterp
# ./configure --prefix=/export/luocan/path/to --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-luainterp
./configure --prefix=/export/luocan/path/to --with-features=huge --enable-pythoninterp --enable-luainterp
make 
make install
