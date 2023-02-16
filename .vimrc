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

" coc.nvim是一个基于NodeJS的拥有完整的LSP支持的智能补全插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
" filetype settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" new file type
""au BufNewFile,BufRead   *.suffix    set filetype=new_file_type
au BufNewFile,BufRead   *.cc    set filetype=cpp
au BufNewFile,BufRead   *.hpp   set filetype=h

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
" general settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 显示行号
set number

" 在所有模式中启用鼠标
set mouse=a

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

" 第120列显示标尺
set cc=120

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
" set cindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tab settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" autoindent时缩进shiftwidth个空白字符区域
set shiftwidth=4
autocmd filetype c,cpp,h set shiftwidth=2

" 当按下tab键输入一个制表符\t时，显示的空白字符区域等于softtabstop个空格
" vim将连续tabstop个空白字符区域转换为1个\t
" 但它还是制表符\t，不是空格
" 当tabstop > softtabstop，并且n*softtabstop不是tabstop的倍数时，
" 前面的转为\t，最后剩余的几个是空格
set tabstop=4
set softtabstop=4
autocmd filetype c,cpp,h set tabstop=2
autocmd filetype c,cpp,h set softtabstop=2

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
set clipboard^=unnamed,unnamedplus

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

" clang compile and run C file
autocmd filetype c nnoremap <F7>  :w<CR>:!clang % -o %:r<CR>
autocmd filetype c nnoremap <F8>  :w<CR>:!clang % -o %:r && ./%:r<CR>
autocmd filetype c nnoremap <F9>  :w<CR>:!clang % -g -o %:r<CR>
autocmd filetype c nnoremap <F10> :w<CR>:!clang % -g -o %:r && lldb %:r<CR>

" clang++ compile and run c++ file
autocmd filetype cpp nnoremap <F7>  :w<CR>:!clang++ % -std=c++11 -o %:r<CR>
autocmd filetype cpp nnoremap <F8>  :w<CR>:!clang++ % -std=c++11 -o %:r && ./%:r<CR>
autocmd filetype cpp nnoremap <F9>  :w<CR>:!clang++ % -std=c++11 -g -o %:r<CR>
autocmd filetype cpp nnoremap <F10> :w<CR>:!clang++ % -std=c++11 -g -o %:r && lldb %:r<CR>

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
" coc.nvim settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u<TAB>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim integrate clang-format settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('python')
  autocmd filetype c, cpp, objc map <C-I> :pyf /usr/local/share/clang/clang-format.py<cr>
  autocmd filetype c, cpp, objc imap <C-I> <c-o>:pyf /usr/local/share/clang/clang-format.py<cr>
elseif has('python3')
  autocmd filetype c,cpp,objc map <C-I> :py3f /usr/local/share/clang/clang-format.py<cr>
  autocmd filetype c,cpp,objc imap <C-I> <c-o>:py3f /usr/local/share/clang/clang-format.py<cr>
endif


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

