"
"           __   _,--="=--,_   __
"          /  \."    .-.    "./  \
"         /  ,/  _   : :   _  \/` \
"         \  `| /o\  :_:  /o\ |\__/
"          `-'| :="~` _ `~"=: |
"             \`     (_)     `/
"      .-"-.   \      |      /   .-"-.
" .---{     }--|  /,.-'-.,\  |--{     }---.
"  )  (_)_)_)  \_/`~-===-~`\_/  (_(_(_)  (
" (        0 Error(s) 0 Warning(s)        )
"  )       Jinle Wang@Starnet            (
" '---------------------------------------'            

" 判断操作系统是否是 Windows 还是 Linux
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif

" 判断是终端还是 Gvim
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif

if (g:iswindows && g:isGUI)
    source $VIM/_gvimrc                             " 加载gvim特殊的配置
endif

" =============================================================================
" vim-plug 插件管理 ( https://github.com/junegunn/vim-plug )
" =============================================================================
call plug#begin()                     " Specify a directory for plugins

Plug 'godlygeek/tabular'             " 文本对齐插件(vim-markdown插件会用到)
" Plug 'junegunn/vim-easy-align'
"
Plug 'tomasr/molokai'                " molokai主题
Plug 'vim-airline/vim-airline'       " 状态栏/tab栏(statusline/tabline)插件
Plug 'vim-airline/vim-airline-themes'

Plug 'Yilin-Yang/vim-markbar'

Plug 'mhinz/vim-startify'           " vim start screen
Plug 'preservim/nerdtree'            " 文件目录导航
Plug 'majutsushi/tagbar'            " tag列表

Plug 'liuchengxu/vim-which-key'      " 快捷键导航

" Plug 'vim-scripts/TxtBrowser'        " 文本高亮
Plug 'plasticboy/vim-markdown'       " markdown语法高亮

Plug 'lfv89/vim-interestingwords'   " 对感兴趣的单词进行高亮
Plug 'easymotion/vim-easymotion'    " 快速移动
Plug 'terryma/vim-multiple-cursors' " 多重选择
" Plug 'vim-scripts/YankRing.vim'     " 复制、修改和删除的历史记录
" Plug 'romainl/vim-qf' " 

Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }


call plug#end()                       " Initialize plugin system

" =============================================================================
" vim配置
" =============================================================================
set nocompatible                                  " 禁用 Vi 兼容模式

" fileencodings,fileencoding,encoding三者的关系：
" * 文件读入时：
" 1. 尝试使用'fileencodings'列表中的编码进行检测。如果找到一个能用的编码，设置 'fileencoding' 为该值。如果全都失败，'fileencoding' 设为空字符串。
" 2. 以'encoding'编码格式进行文件转码并读入缓冲区。如果fileencoding与encoding一致可不必转码
" * 文件写入时：
" 当'fileencoding'与'encoding'不同时，写文件时需要进行转换。从encoding格式转成fileencoding格式然后写入文件
" * 新建文件时：
" 使用默认的'fileencoding'值
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
set fileencoding=utf-8
set encoding=utf-8                                " 设置 Vim 内部使用的字符编码。它应用于缓冲区、寄存器等。

set fileformats=unix,dos,mac                      " 给出换行符 (<EOL>) 的格式列表，开始编辑新缓冲区或者读入文件到已有的缓冲区时，尝试这些格式
set fileformat=unix                               " 给出当前缓冲区的 <EOL> 格式（换行格式），用于从文件读入缓冲区和把缓冲区写回文件。

set helplang=cn                                   " 使用中文帮助

filetype on                                       " 启用文件类型侦测
filetype plugin on                                " 针对不同的文件类型加载对应的插件
filetype plugin indent on                         " 启用缩进

syntax on                                         " 启用语法高亮
set t_Co=256                                      " 在终端启用256色
colorscheme molokai                               " 设置配色方案
set guifont=Courier_new:h12:b:cDEFAULT            " 设置字体

set hlsearch                                      " 高亮搜索
set incsearch                                     " 在输入要搜索的文字时，实时匹配
set ignorecase                                    " 搜索模式里忽略大小写
set smartcase                                     " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项
set number                                        " 显示行号
set laststatus=2                                  " 启用状态栏信息
set cursorline                                    " 突出显示当前行
set cmdheight=2                                   " 设置命令行的高度为2，默认为1
set nowrap                                        " 设置不自动换行
set shortmess=atI                                 " 把较长的提示信息进行压缩展示
set mouse=a                                       " a 在任何模式下启用鼠标
set backspace=2                                   " backspace 可用
set expandtab                                     " 将Tab键转换为空格
set tabstop=4                                     " 设置Tab键的宽度，如果置位了 'expandtab'，Vim 把所有的 Tab 换成相当的空格
set smartindent                                   " 启用智能对齐方式
set autoindent                                    " 开启新行时，从当前行复制缩进距离
set shiftwidth=4                                  " (自动) 缩进每一步使用的空白数目
set smarttab                           " 指定按一次backspace就删除shiftwidth宽度

set noundofile
set writebackup                                   " 保存文件前建立备份
set nobackup                                      " 保存成功后删除该备份

set nofoldenable " 关闭折叠

"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)" 启用每行超过80列的字符提示（字体变蓝并加下划线）
if has("autocmd")
	" 重新打开文件时回到上次位置 
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 自动切换目录为当前编辑文件所在目录(与vim-fugitive Gdiff命令有冲突)
" au BufRead,BufNewFile,BufEnter * cd %:p:h
" 自动切换目录为当前编辑文件所在目录(与vim-fugitive Gdiff命令不冲突)
autocmd BufEnter * if expand('%:p') !~ '://' | cd %:p:h | endif


" 快捷键映射
" -----------------------------------------------------------------------------
" 这里把<Leader>设置为','。默认的<Leader>为'\'(反斜杠)
let g:mapleader = "," 
set timeoutlen=1000

" 窗口切换
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

" 复制与粘贴
noremap <Leader>y "*y
noremap <Leader>p "*p


" =============================================================================
" 插件配置
" =============================================================================

" 'godlygeek/tabular'
"   文本对齐插件，vim-markdown插件会用到
" ----------------------------------------------
" abcdef , abcdef , abcdef
"   |    |    |   |    |  
" field1 | field3 |  field5
"      field2   field4
"
" :Tabularize /,/r1c2l0c3
" -- filed1 右对齐后跟1个空格
" -- filed2 居中对齐后跟2个空格
" -- filed3 左对齐后跟0个空格
" -- filed4 居中对齐后跟3个空格
" -- filed5 没有对应的格式化表达式，那么循环使用表达式，右对齐后跟一个空格。但是因为field5后没有其他field，所以空格不加



" vim-airline/vim-airline
" ----------------------------------------------
" airline启动时会自动加载所有扩展，使用以下配置进行启用/禁用
let g:airline#extensions#disable_rtp_load = 1
let g:airline_extensions = ['tabline']
" 状态栏主题
let g:airline_theme='molokai'
" 使用ascii字符。默认设置会出现显示不出来的字符，需要安装补丁字体(https://github.com/vim-airline/vim-airline#integrating-with-powerline-fonts)
let g:airline_symbols_ascii = 1

"
" tabline 配置
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
" 文件路径显示方式
let g:airline#extensions#tabline#formatter = 'unique_tail'
" buffer名称前的数字标识
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}
" buffer切换
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>bp <Plug>AirlineSelectPrevTab
nmap <leader>bn <Plug>AirlineSelectNextTab


" Plug 'mhinz/vim-startify'
" ----------------------------------------------
" Read NERDTreeBookmarks
function! s:my_nerdtreeBookmarks()
    let bookmarks = []

    for i in g:NERDTreeBookmark.Bookmarks()
        let bookmark = {'line': '', 'cmd': '', 'path': ''}
        let bookmark.line = i.path.str()
        " let bookmark.path = i.path.str()
        let bookmark.cmd = 'NERDTreeFromBookmark ' . i.name
        call add(bookmarks, bookmark)
    endfor

    return bookmarks
endfunction

let g:startify_lists = [
      \ { 'type': function('s:my_nerdtreeBookmarks'), 'header': ['   NERDTree Bookmarks']},
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

let g:startify_commands = [
        \ ':help reference',
        \ ['Leaderf MRU', 'h ref'],
        \ {'h': 'h ref'},
        \ {'m': ['My magical function', 'call Magic()']},
        \ ]


" preservim/nerdtree
" ----------------------------------------------
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 默认显示Bookmarks
let NERDTreeShowBookmarks = 1
" 打开/关闭目录树
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nc :NERDTreeCWD<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>


" Plug 'majutsushi/tagbar'
" ----------------------------------------------
nnoremap <F3> :TagbarToggle<CR>
" 打开tagbar时自动聚焦到tagbar窗口
let g:tagbar_autofocus = 1

" Plug 'vim-scripts/TxtBrowser'
" ----------------------------------------------
" au BufRead,BufNewFile *.txt setlocal ft=txt


" Plug 'lfv89/vim-interestingwords'
" ----------------------------------------------
" 随机颜色
let g:interestingWordsRandomiseColors = 1

" mark word
nnoremap <leader>mw :call InterestingWords('n')<cr>
" mark visual
vnoremap <leader>mv :call InterestingWords('v')<cr>
" marks clear
nnoremap <leader>mc :call UncolorAllWords()<cr>

" Plug 'plasticboy/vim-markdown'
" ----------------------------------------------
autocmd BufNewFile,BufRead *.md set filetype=markdown
" 折叠
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_frontmatter=1
let g:vim_markdown_conceal=0
" Adjust new list item indent
let g:vim_markdown_new_list_item_indent=0
let g:vim_markdown_toc_autofit = 1
" 打开markdown目录
nnoremap <Leader>mt :Toc<CR>
" 格式化表格
nnoremap <Leader>mf :TableFormat<CR>

" Plug 'easymotion/vim-easymotion'
" ----------------------------------------------
" 把默认快捷键映射成3个Leader，防止和其他快捷键冲突
map <Leader><Leader><Leader> <Plug>(easymotion-prefix)
" 搜索时忽略大小写
let g:EasyMotion_smartcase = 0

" move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)

" search(use <Tab> and <S-Tab> to scroll down/up a page)
map  <Leader><Leader>s <Plug>(easymotion-sn)
omap <Leader><Leader>s <Plug>(easymotion-sn)


" Plug 'terryma/vim-multiple-cursors' " 多重选择
" ----------------------------------------------
" start: <C-n> start multicursor and add a virtual cursor + selection on the match
"     next: <C-n> add a new virtual cursor + selection on the next match
"     skip: <C-x> skip the next match
"     prev: <C-p> remove current virtual cursor + selection and go back on previous match
" select all: <A-n> start multicursor and directly select all matches


" Plug 'vim-scripts/YankRing.vim'
" ----------------------------------------------
nnoremap <F11> :YRShow<CR>

" Plug 'Yilin-Yang/vim-markbar'
" ----------------------------------------------
" 按下 ' 会显示 The "peekaboo" markbar
let g:markbar_enable_peekaboo = v:true
" only display alphabetic marks a-i and A-I
let g:markbar_marks_to_display = 'abcdefghiABCDEFGHI'
let g:markbar_peekaboo_marks_to_display = 'abcdefghiABCDEFGHI'

" Marks show
nmap <Leader><Leader>m  <Plug>ToggleMarkbar

" Plug 'Yggdroot/LeaderF'
" ----------------------------------------------
" 当打开Leaderf时，有以下快捷键：
"     <C-C>, <ESC> : quit from LeaderF.
"     <C-R> : switch between fuzzy search mode and regex mode.
"     <C-F> : switch between full path search mode and name only search mode.
"     <Tab> : switch to normal mode.
"     <C-V>, <S-Insert> : paste from clipboard.
"     <C-U> : clear the prompt.
"     <C-W> : delete the word before the cursor in the prompt.
"     <C-J>, <C-K> : navigate the result list.
"     <Up>, <Down> : recall last/next input pattern from history.
"     <2-LeftMouse> or <CR> : open the file under cursor or selected(when
"                             multiple files are selected).
"     <C-X> : open in horizontal split window.
"     <C-]> : open in vertical split window.
"     <C-T> : open in new tabpage.
"     <F5>  : refresh the cache.
"     <C-LeftMouse> or <C-S> : select multiple files.
"     <S-LeftMouse> : select consecutive multiple files.
"     <C-A> : select all files.
"     <C-L> : clear all selections.
"     <BS>  : delete the preceding character in the prompt.
"     <Del> : delete the current character in the prompt.
"     <Home>: move the cursor to the begin of the prompt.
"     <End> : move the cursor to the end of the prompt.
"     <Left>: move the cursor one character to the left.
"     <Right> : move the cursor one character to the right.
"     <C-P> : preview the result.
"     <C-Up> : scroll up in the popup preview window.
"     <C-Down> : scroll down in the popup preview window.

" 使用正则表达式搜索
let g:Lf_DefaultMode = 'Regex'


" Launch LeaderF to search files.
noremap <leader><leader>f :LeaderfFile<CR>

" Buffers Explorer
noremap <leader>be :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
" Files Most recently used
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>

" Line List
noremap <leader>ll :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>lr :<C-U><C-R>=printf("Leaderf line --recall %s", "")<CR><CR>

" Help Explorer
noremap <leader>he :<C-U><C-R>=printf("Leaderf help %s", "")<CR><CR>
" Help explorer Recall
noremap <leader>hr :<C-U><C-R>=printf("Leaderf help --recall %s", "")<CR><CR>

" Functions Explorer
noremap <leader>fe :<C-U><C-R>=printf("Leaderf function %s", "")<CR><CR>

" grep
noremap <leader><leader>g :<C-U><C-R>=printf("Leaderf! rg -e %s", "")<CR>
" grep recall
noremap <leader>gr :<C-U><C-R>=printf("Leaderf! rg --recall %s", "")<CR><CR>

" liuchengxu/vim-which-key
" ----------------------------------------------

nnoremap <leader> :<c-u>WhichKey ','<CR>
" 注册键位与对应的 dict
call which_key#register(',', "g:which_key_map")

let g:which_key_map = {}
" File Tree - 文件树
let g:which_key_map['n'] = {
      \ 'name' : '+文件树',
      \ 't' : '打开/关闭文件树',
      \ 'c' : '打开文件树并进入当前目录',
      \ 'f' : '打开文件树并定位到当前文件',
      \ }
" Buffer list - Buffer列表
let g:which_key_map['b'] = {
      \ 'name' : '+Buffer列表',
      \ 'e' : '显示Buffer列表',
      \ }
" markdown
let g:which_key_map['m'] = {
      \ 'name' : '+markdown',
      \ 't' : '显示Toc目录',
      \ 'f' : '表格格式化',
      \ }


