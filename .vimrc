""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filename     : .vimrc
" Creator      : superlc320
" Created Time : 2016.04.22
" E-mail       : luocan14@gmail.com
" URL          : https://github.com/superlc320/.dotfiles
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 00. Vundle Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use the Vim's keyboard setting, not vi
set nocompatible              " be iMproved, required
" Close filetype detection
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" solarized theme
""Plugin 'altercation/vim-colors-solarized'
" auto complete
""Plugin 'Valloric/YouCompleteMe'
" show directory tree
""Plugin 'scrooloose/nerdtree'
" intensely orgasmic commenting
""Plugin 'scrooloose/nerdcommenter'
" auto-complete quotes, parens, brackets, etc.
""Plugin 'Raimondi/delimitMate'
" easily delete, change adn add surroundings in pairs
""Plugin 'tpope/vim-surround'
" display tags in a window
""Plugin 'majutsushi/tagbar'
" Syntax checking hacks for vim
""Plugin 'scrooloose/syntastic'
" easy code formatting
""Plugin 'Chiel92/vim-autoformat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" open filetype detection
" 打开文件类型检测
filetype on

" Set the width
" 设置列宽为160
set columns=160

" Set the height
set lines=50

" Set the line number
set number

" Enable mouse in all models
set mouse=a

" Highlight current line
set cursorline

" Syntax highlighting
syntax on

" Highlight the search result
set hlsearch

" Real-time search
set incsearch

" Set the fold method as indent
set foldmethod=indent

" Set the fold level
set foldlevel=99

" C style indent
set cindent

" Copy indent from current line when starting a new lin
set autoindent

" >> = 4 chars
set shiftwidth=4

" Tab = 4
set tabstop=4

" mix tab with space
set softtabstop=4

" Use the space instead of Tab
set expandtab

" smart indent
set smartindent

" show mode
set showmode
" show cmd
set showcmd
" set vim color = 256
set t_Co=256
" switch paste or not by f12
set pastetoggle=<f12>
" map <Leader> to ,
let mapleader = ","

" 设置复制粘贴系统剪切板
set clipboard=unnamedplus
