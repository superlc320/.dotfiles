#!/bin/sh

echo '123456' | sudo -S yum -y install ncurses-devel python-devel ruby-devel lua-devel  perl-devel

mkdir -p ~/download
cd ~/download

wget -c https://github.com/vim/vim/archive/v8.0.1428.tar.gz
tar xzvf v8.0.1428.tar.gz

cd vim-8.0.1428
make distclean
# CFLAGS="-I/usr/lib64/perl5/CORE/" 
# ./configure --prefix=/export/luocan/path/to --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-luainterp --enable-perlinterp
./configure --prefix=/export/luocan/path/to --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-luainterp
make 
make install
