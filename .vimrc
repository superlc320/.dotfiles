""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filename     : .vimrc
" Creator      : superlc320
" Created Time : 2016.04.22
" E-mail       : luocan14@gmail.com
" URL          : https://github.com/superlc320/.dotfiles
" Signiture    : make progress along with Vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 00. Vundle Start
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
Plugin 'altercation/vim-colors-solarized'
" auto complete
Plugin 'Valloric/YouCompleteMe'
" show directory tree
Plugin 'scrooloose/nerdtree'
" intensely orgasmic commenting
Plugin 'scrooloose/nerdcommenter'
" auto-complete quotes, parens, brackets, etc.
Plugin 'Raimondi/delimitMate'
" easily delete, change adn add surroundings in pairs
Plugin 'tpope/vim-surround'
" display tags in a window
Plugin 'majutsushi/tagbar'
" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'
" easy code formatting
Plugin 'Chiel92/vim-autoformat'

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
filetype on
" Set the width
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Theme settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use dark solarized theme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree settings "
" open and close NERDTree
noremap <F3> :NERDTreeToggle<CR>
" open a NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" TagBar settings "
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_width=30
let g:tagbar_autofocus=1
noremap <F4> :TagbarToggle<CR>

" delimitMate "
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 1

" Syntastic settings "
" recommended settings for newer
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cuda_check_header = 1
let g:syntastic_cuda_arch = "sm_52"

" autoformat settings "
noremap <F5> :Autoformat<CR>
au BufWrite * :Autoformat

" YouCompleteMe settings "
let g:ycm_global_ycm_extra_conf = '/home/superlc320/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '/home/superlc320/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. C++ compile and run settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gcc compile and run C file
autocmd filetype c nnoremap <F9> :w <CR>:!gcc % -o %:r && ./%:r<CR>
autocmd filetype c nnoremap <F10> :w <CR>:!gcc -g % -o %:r && gdb %:r<CR>

" g++ compile and run C++ file
autocmd filetype cpp nnoremap <F9> :w <CR>:!g++ -std=c++11  % -o %:r && ./%:r<CR>
autocmd filetype cpp nnoremap <F10> :w <CR>:!g++ -std=c++11 -g  % -o %:r && gdb %:r<CR>


augroup filetypedetect
    au BufNewFile,BufRead *.cu setl ft=cuda
    au BufNewFile,BufRead *.cuh setl ft=cuda
augroup END
