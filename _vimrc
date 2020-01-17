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

" =============================================================================
" 判断操作系统是否是 Windows 还是 Linux
" =============================================================================
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
    source $VIM/_gvimrc                             " 加载gvim特殊的配置
else
    let g:islinux = 1
endif

" =============================================================================
" vim-plug 插件管理 ( https://github.com/junegunn/vim-plug )
" =============================================================================
" Specify a directory for plugins
call plug#begin()

" molokai主题
Plug 'tomasr/molokai'
" 文件目录导航
Plug 'scrooloose/nerdtree'
" 快捷键导航
Plug 'liuchengxu/vim-which-key'

" Initialize plugin system
call plug#end()

" =============================================================================
" vim配置
" =============================================================================
set nocompatible                                  " 禁用 Vi 兼容模式

" fileencodings,fileencoding,encoding三者的关系：
" * 文件读入时：
"   1. 尝试使用'fileencodings'列表中的编码进行检测。如果找到一个能用的编码，设置 'fileencoding' 为该值。如果全都失败，'fileencoding' 设为空字符串。
"   2. 以'encoding'编码格式进行文件转码并读入缓冲区。如果fileencoding与encoding一致可不必转码
" * 文件写入时：
"   当'fileencoding'与'encoding'不同时，写文件时需要进行转换。从encoding格式转成fileencoding格式然后写入文件
" * 新建文件时：
"   使用默认的'fileencoding'值
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1 
set fileencoding=utf-8
set encoding=utf-8                                " 设置 Vim 内部使用的字符编码。它应用于缓冲区、寄存器等。

set fileformats=unix,dos,mac                      " 给出换行符 (<EOL>) 的格式列表，开始编辑新缓冲区或者读入文件到已有的缓冲区时，尝试这些格式
set fileformat=unix                               " 给出当前缓冲区的 <EOL> 格式（换行格式），用于从文件读入缓冲区和把缓冲区写回文件。

set helplang=cn                               " 使用中文帮助

filetype on                            " 启用文件类型侦测
filetype plugin on                     " 针对不同的文件类型加载对应的插件
filetype plugin indent on              " 启用缩进

syntax on                          " 启用语法高亮
set t_Co=256                           " 在终端启用256色
colorscheme molokai                    " 设置配色方案
set guifont=Courier_new:h12:b:cDEFAULT " 设置字体

set hlsearch                           " 高亮搜索
set incsearch                          " 在输入要搜索的文字时，实时匹配
set ignorecase                         " 搜索模式里忽略大小写
set smartcase                          " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项
set number                             " 显示行号
set laststatus=2                       " 启用状态栏信息
set cursorline                         " 突出显示当前行
set cmdheight=2                        " 设置命令行的高度为2，默认为1
set nowrap                             " 设置不自动换行
set shortmess=atI                     " 把较长的提示信息进行压缩展示
set mouse=a                          " a 在任何模式下启用鼠标
set backspace=2                        " backspace 可用
set expandtab                          " 将Tab键转换为空格
set tabstop=4                          " 设置Tab键的宽度，如果置位了 'expandtab'，Vim 把所有的 Tab 换成相当的空格
set smartindent                        " 启用智能对齐方式
set autoindent                         " 开启新行时，从当前行复制缩进距离
set shiftwidth=4                       " (自动) 缩进每一步使用的空白数目
set writebackup                        " 保存文件前建立备份，保存成功后删除该备份

"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)" 启用每行超过80列的字符提示（字体变蓝并加下划线）
if has("autocmd")
	" 重新打开文件时回到上次位置 
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 自动切换目录为当前编辑文件所在目录(与vim-fugitive Gdiff命令有冲突)
" au BufRead,BufNewFile,BufEnter * cd %:p:h
" 自动切换目录为当前编辑文件所在目录(与vim-fugitive Gdiff命令不冲突)
autocmd BufEnter * if expand('%:p') !~ '://' | cd %:p:h | endif

" =============================================================================
" 插件配置
" =============================================================================

" scrooloose/nerdtree
" ----------------------------------------------
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 常规模式下输入 F2 调用插件
nnoremap <F2> :NERDTreeToggle<CR> 		
nnoremap <F3> :NERDTreeCWD<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>

