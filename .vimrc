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
" 安装完成后按照官网说明复制颜色主题文件
" 在section 2启用solarized主题
Plugin 'altercation/vim-colors-solarized'

" show directory tree
" 用于显示目录树
" 在section 3设置nerdtree快捷键
Plugin 'scrooloose/nerdtree'

" 为代码添加注释
" 在section 4有命令说明
Plugin 'scrooloose/nerdcommenter'

" auto complete
" 超强的自动补全插件。
" Vundle安装后需要按照官网说明进行编译。
" 在section 5配置YCM
" 还需要配置.ycm_extra_conf.py,这很重要
Plugin 'Valloric/YouCompleteMe'

" auto-complete quotes, parens, brackets, etc.
" 自动补全引号，括号
" 在section 6配置
" 安装了YCM就默认启动了语法检查，不需要了。
Plugin 'Raimondi/delimitMate'

" easily delete, change and add surroundings in pairs
" 改变一对标记，（括号，引号，XML标记，等等）
" 在section 7有命令说明
Plugin 'tpope/vim-surround'

" easy code formatting
" 在section 9配置
" 注意需要自己安装format软件，指定路径
Plugin 'Chiel92/vim-autoformat'

" display tags in a window
""Plugin 'majutsushi/tagbar'

" vim-powerline
Plugin 'Lokaltog/vim-powerline'

" indentLine
Plugin 'Yggdroot/indentLine'

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

" 关闭设置窗口大小，不然ssh连接服务器，打开vim编辑文件各行会显示错位
""""""""""""""""""""""""""""""""""""""""
" Set the width
" 设置窗口列宽
" set columns=160

" Set the height
" 设置窗口行高
" set lines=50
""""""""""""""""""""""""""""""""""""""""

" Set the line number
" 显示行号
set number

" Enable mouse in all models
" 在所有模式中启用鼠标
set mouse=a

" 关闭此选项，感觉不是很实用
""""""""""""""""""""""""""""""""""""""""
" Highlight current line
" 为光标所在行加下划线
" set cursorline
"""""""""""""""""""""""""""""""""""""""" 

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

" switch paste or not by F12
" 设置切换粘贴状态快捷键
set pastetoggle=<F12>

" 设置复制粘贴系统剪切板
set clipboard=unnamedplus

" 设置字体为utf-8
set encoding=utf-8

" split navigations
" 设置切换窗口快捷键
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Solarized Theme settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use dark solarized theme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. NERD tree settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" open a NERDTree automatically when vim starts up
" vim启动时自动打开NERDTree, 并不需要
" autocmd vimenter * NERDTree

" open and close NERDTree
" 打开和关闭NERDTree快捷键
noremap <F3> :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. NERD commenter settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" map <Leader> from '\' to ','
let mapleader = ","

" [count]<Leader>cc 注释当前行和选中行
" [count]<Leader>cn 注释当前行和选中行, forces nesting
" [count]<Leader>c<space> 反转当前行和选中行的注释状态，所有状态只和最上面一行状态有关
" [count]<Leader>cm 对被选区域用一对注释符进行注释，前面的注释对每一行都会添加注释
" [count]<Leader>ci 独立反转选中区域的注释状态，每行只和自己之前的状态有关
" [count]<Leader>cs 添加性感的注释，通常用于代码开头介绍部分
" [count]<Leader>cy 先复制选中部分，再cc
" <Leader>c$        注释当前光标到行尾的内容
" <Leader>cA        跳转到当前行尾添加注释，并进入插入模式
" <Leader>ca        切换注释的方式，比如: /**/和//
" <Leader>cl        左对齐
" <Leader>cb        左右对齐
" <Leader>cu        取消注释

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. YCM settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置ycm global配置文件路径
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.dotfiles/.ycm_extra_conf.py'

" 关闭加载.ycm_extra_conf.py的提示
let g:ycm_confirm_extra_conf = 0

" 从第1个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion = 1

" 打开基于tags的引擎
let g:ycm_collect_identifiers_from_tags_files = 1

" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1

" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1

" 注释和字符串中的文字不会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1

" 转到声明
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
" 转到定义
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
" 声明和定义切换
nnoremap <leader>gg :YcmCompleter GoToDeclarationElseDeclaration<CR>

let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'

" 打开YCM语法检查
let g:ycm_show_diagnostics_ui = 1

" 强制YCM语法检查
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>

" 提供Python3补全
let g:ycm_python_binary_path = '/usr/bin/python3'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 06. delimitMate settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 以前配的，忘记有什么用了
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 07. vim-surround settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" "Hello world!"
" Press cs"'
" => 'Hello world!'
" Press cs'<q>
" => <q>Hello world!</q>
" Press cst"
" => "Hello world!"
" Press ds"
" => Hello world!
" 其余妙用，参见github

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 09. vim-autoformat settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 自动格式化
noremap <F5> :Autoformat<CR>

" 关闭写文件时自动格式化
" au BufWrite * :Autoformat

" 使用astyple格式化代码
let g:formatterpath = ['/usr/bin/astyle']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 10. C++ compile and run settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" gcc compile and run C file
autocmd filetype c nnoremap <F9> :w <CR>:!gcc % -o %:r && ./%:r<CR>
autocmd filetype c nnoremap <F10> :w <CR>:!gcc % -o %:r && gdb %:r<CR>

" g++ compile and run c++ file
autocmd filetype cpp nnoremap <F9> :w <CR>:!g++ -std=c++11 % -o %:r && ./%:r<CR>
autocmd filetype cpp nnoremap <F10> :w <CR>:!g++ -std=c++11 % -o %:r && gdb %:r<CR>

au BufNewFile,BufRead   *.cu    set filetype=cuda
au BufNewFile,BufRead   *.cuh   set filetype=cuda

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 11. indentLine settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 默认关闭缩进线
let g:indentLine_enabled = 0

" 设置indentLine样式
let g:indentLine_char = '¦'

" 切换显示indentLine
nnoremap <F4> :IndentLinesToggle<CR>
