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
" 设置窗口列宽
set columns=120

" Set the height
" 设置窗口行高
set lines=50

" Set the line number
" 显示行号
set number

" Enable mouse in all models
" 在所有模式中启用鼠标
set mouse=a

" Highlight current line
" 为光标所在行加下划线，感觉不是很实用，取消了
" set cursorline

" Syntax highlighting
" 使用Vim默认的语法高亮
syntax on

" Highlight the search result
" 搜索结果高亮
set hlsearch

" Real-time search
" 实时搜索
set incsearch

" Set the fold method as indent
" 启用缩进折叠，使用命令，可以手动折叠缩进，使用命令，可以打开折叠的缩进
set foldmethod=indent

" Set the fold level
" 最大的折叠层级
set foldlevel=99

" Copy indent from current line when starting a new line
" 将当前行的对齐格式应用到新的下一行
set autoindent

" >> = 4 chars
" 自动缩进4个字符
set shiftwidth=4

" Tab = 4
" 指定tab缩进4个字符
set tabstop=4

" mix tab with space
" 具体含义请google
set softtabstop=4

" Use the space instead of Tab
" 将tab转换为空格
set expandtab

" C style indent
" 缩进C语言内嵌代码块
set cindent

" smart indent
" 为C程序提供自动缩进
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
