""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" author        : superlc320
" created date  : 2016.04.22
" E-mail        : luocan14@gmail.com
" repository    : https://github.com/superlc320/.dotfiles
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/bundle')

" solarized颜色主题
Plug 'altercation/vim-colors-solarized'

" 多标签
Plug 'vim-scripts/minibufexplorerpp'

" 状态栏
Plug 'vim-airline/vim-airline'

" 状态栏主题
Plug 'vim-airline/vim-airline-themes'

" 目录树
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" 头文件源文件切换
Plug 'derekwyatt/vim-fswitch' 

" 快速打开文件
Plug 'ctrlpvim/ctrlp.vim'

" 自动补全神器
Plug 'Valloric/YouCompleteMe'

" 根据工程Makefile生成YCM的配置文件
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" 一键格式化代码
Plug 'Chiel92/vim-autoformat'

" 自动补全引号，括号
Plug 'jiangmiao/auto-pairs'

" 改变一对标记，（括号，引号，XML标记，等等）
Plug 'tpope/vim-surround'

" 扩大缩小选定区域
Plug 'terryma/vim-expand-region'

" 为代码添加注释
Plug 'scrooloose/nerdcommenter'

" 快速对齐
Plug 'junegunn/vim-easy-align'

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" general settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 显示行号
set number

" 在可视模式中启用鼠标
set mouse=v

" Backspace
set backspace=indent,eol,start

" 使用Vim默认的语法高亮
syntax on

" show mode
set showmode

" show cmd
set showcmd

" set vim color = 256
set t_Co=256

" 文件不自动换行
set nowrap

" vim命令行模式自动补全
set wildmenu

" 显示空白字符
set lcs=tab:>-,trail:-
noremap <F2> :set list!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" search settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 搜索结果高亮
set hlsearch

" 实时搜索
set incsearch

" 搜索时大小写不敏感
""set ignorecase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fold settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" za打开或关闭当前代码折叠
set foldmethod=indent

" 最大的折叠层级
set foldlevel=99

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indent settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 与上一行的缩进方式相同
set autoindent

" 用于类C编程语言的缩进，也可以用于其他语言。优先级高于autoindent
set smartindent

" C语言的缩进方式，可配置，更为严格。优先级高于smartindent
set cindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tab settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" autoindent时缩进shiftwidth个空白字符区域
set shiftwidth=4

" 当按下tab键输入一个制表符\t时，显示的空白字符区域等于softtabstop个空格
" vim将连续tabstop个空白字符区域转换为1个\t
" 但它还是制表符\t，不是空格
" 当tabstop > softtabstop，并且n*softtabstop不是tabstop的倍数时，
" 前面的转为\t，最后剩余的几个是空格
set tabstop=4
set softtabstop=4

" 将制表符\t扩展为空格
" 在Makefile中制表符\t有特殊意义，不应该被转换
" 按Ctrl+v,再按Tab，就不会被转换了
set expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" paste settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置切换粘贴状态快捷键
noremap <F12> :set paste!<CR>

" 设置复制粘贴系统剪切板
" set clipboard=unnamedplus
" 粘贴系统剪切版用"+p

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" encoding settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置Vim内部使用的字符编码，包括Vim的buffer、菜单文本、消息文本
set encoding=utf-8

" Vim中当前编辑的文件的字符编码方式，Vim保存文件是也会将文件保存为这种字符编码方式（不管是否新文件）
set fileencoding=utf-8

" Vim自动探测fileencoding的顺序列表
set fileencodings=utf-8,gbk,gb2312,gb18030,ucs-bom,cp936,latin1

" Vim所工作的终端的字符编码方式，通常不需要设置
set termencoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" general shortcut settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 将<Leader>定义为空格键
let mapleader = "\<Space>"

" 映射模式前缀
" nore: 非递归
" n:    在普通模式下生效
" v:    在可视模式下生效
" i:    在插入模式下生效
" c:    在EX命令模式下生效

" 键表
" <S-x>         Shift+x
" <C-x>         Ctrl+x
" <A-x>         Alt+x
" <F1>-<F12>    F1到F12功能键

" 保存当前文件
nnoremap <Leader>w :w<CR>

" 关闭当前文件
nnoremap <Leader>q :q<CR>

" 将选中文本块复制到系统剪切板
vnoremap <Leader>y "+y

" 将系统剪切板的内容粘贴到vim
nnoremap <Leader>p "+p

" 设置切换窗口快捷键
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-W> <C-W><C-W>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" compile and run settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" gcc compile and run C file
autocmd filetype c nnoremap <F9> :w<CR>:!gcc-11 % -o %:r && ./%:r<CR>
autocmd filetype c nnoremap <F10> :w<CR>:!gcc-11 % -g -o %:r && gdb %:r<CR>

" g++ compile and run c++ file
autocmd filetype cpp nnoremap <F9> :w<CR>:!g++-11 -std=c++17 % -o %:r && ./%:r<CR>
autocmd filetype cpp nnoremap <F10> :w<CR>:!g++-11 -std=c++17 % -g -o %:r && gdb %:r<CR>

" python3 run python file
""autocmd filetype python nnoremap <F9> :w<CR>:!python3 %<CR> 

" python  run python file
""autocmd filetype python nnoremap <F10> :w<CR>:!python %<CR> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" new file type
""au BufNewFile,BufRead   *.suffix    set filetype=new_file_type
au BufNewFile,BufRead   *.cc    set filetype=cpp
au BufNewFile,BufRead   *.hrp   set filetype=cpp
au BufNewFile,BufRead   *.hpp   set filetype=cpp

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" file open settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" When open a file, always jump to the last cursor positon
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" | 
    \ endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" solarized theme settings
" https://github.com/altercation/vim-colors-solarized
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" minibufexplorerpp settings 
" https://github.com/vim-scripts/minibufexplorerpp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置minibufexplorerpp窗口最大高度为2行
" let g:miniBufExplMaxSize = 2

" 下一个标签
nnoremap <silent> ) :bn<CR>
" 上一个标签
nnoremap <silent> ( :bp<CR>
" 关闭当前标签
nnoremap <silent> <Leader>d :bd<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline settings 
" https://github.com/vim-airline/vim-airline
" vim-airline-themes settings 
" https://github.com/vim-airline/vim-airline-themes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline_theme='solarized'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD tree settings
" https://github.com/scrooloose/nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" open a NERDTree automatically when vim starts up
" vim启动时自动打开NERDTree, 并不需要
" autocmd vimenter * NERDTree

" open and close NERDTree
" 打开和关闭NERDTree快捷键
noremap <F3> :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeIgnore=['\.o', '\.swp']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-fswitch settings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>a :FSHere<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp settings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置搜索时过滤文件和文件夹类型
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file':'\v\.(exe|so|o|dll|zip|tar|tar.gz|pyc)',
    \ }

" 默认使用全路径搜索，置1后按文件名搜索，准确率会有所提高
let g:ctrlp_by_filename = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置ycm global配置文件路径
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" let g:ycm_global_ycm_extra_conf = '~/.dotfiles/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

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

" 补全之后关闭preview窗口
let g:ycm_autoclose_preview_window_after_completion = 1

" 关闭YCM语法检查
let g:ycm_show_diagnostics_ui = 0

" 选择下一个补全项
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

" 选择上一个补全项
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']

" 停止补全
let g:ycm_key_list_stop_completion = ['<C-y>']

" 输入1个字母即可触发语义补全
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{1}'],
            \ 'cs,lua,javascript': ['re!\w{1}'],
            \ }

" 不弹出预览窗口
set completeopt=menu,menuone
let g:ycm_add_preview_to_comleteopt = 0

" 转到声明
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
" 转到定义
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
" 转到定义或声明
nnoremap <leader>tt :YcmCompleter GoToDefinitionElseDeclaration<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-autoformat settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 自动格式化
noremap <F5> :Autoformat<CR>

" 写文件时自动格式化
" au BufWrite *.cpp :Autoformat
" au BufWrite *.cc  :Autoformat
" au BufWrite *.c   :Autoformat
" au BufWrite *.hpp :Autoformat
" au BufWrite *.h   :Autoformat

" 使用clang-format格式化代码
let g:formatterpath = ['/usr/local/bin/clang-format']

" clang-format示例
" clang-format demo.cpp
" clang-format demo.cpp > demo2.cpp
" clang-format -i demo.cpp
" clang-format -style=llvm -i demo.cpp

let g:formatdef_myclangformat = '"clang-format"'

let g:formatters_cpp = ['myclangformat']
let g:formatters_cc  = ['myclangformat']
let g:formatters_c   = ['myclangformat']
let g:formatters_hpp = ['myclangformat']
let g:formatters_h   = ['myclangformat']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto-pairs settings 
" https://github.com/jiangmiao/auto-pairs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" auto-pairs并不需要设置

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-surround settings
" https://github.com/tpope/vim-surround
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
" vim-expand-region settings 
" https://github.com/jiangmiao/auto-pairs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 默认+扩大选定区域
" 默认-缩小选定区域
" 自定义
" map K <Plug>(expand_region_expand)
" map J <Plug>(expand_region_shrink)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD commenter settings
" https://github.com/scrooloose/nerdcommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

