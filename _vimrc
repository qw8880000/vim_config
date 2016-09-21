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

" -----------------------------------------------------------------------------
"  < 判断操作系统是否是 Windows 还是 Linux >
" -----------------------------------------------------------------------------
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nocompatible                                      "禁用 Vi 兼容模式

" -----------------------------------------------------------------------------
"  < 编码配置 >
" -----------------------------------------------------------------------------
set encoding=utf-8                                    "设置gvim内部编码，默认不更改
" set fileencoding=utf-8                                "设置当前文件编码，可以更改，如：gbk（同cp936）
set fileencoding=cp936
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1     "设置支持打开的文件的编码
" 文件格式，默认 ffs=dos,unix
set fileformat=unix                                   "设置新（当前）文件的<EOL>格式，可以更改，如：dos（windows系统常用）
set fileformats=unix,dos,mac                          "给出文件的<EOL>格式类型
if version >= 603
	set helplang=cn             " 使用中文帮助
endif

" -----------------------------------------------------------------------------
"  < 其他配置 >
" -----------------------------------------------------------------------------
if has("syntax")
	syntax on		" enables syntax highlighting by default
endif
set t_Co=256                   " 在终端启用256色
colorscheme molokai				" 设置配色方案
set guifont=Courier_new:h12:b:cDEFAULT	" 设置字体


set hlsearch        		"高亮搜索
set incsearch       		"在输入要搜索的文字时，实时匹配
set ignorecase                                        "搜索模式里忽略大小写
set smartcase                                         "如果搜索模式包含大写字符，不使用 'ignorecase' 选项

set number                                            "显示行号
set laststatus=2                                      "启用状态栏信息
set cursorline                                        "突出显示当前行
set cmdheight=2                                       "设置命令行的高度为2，默认为1
set nowrap                                            "设置不自动换行
"set shortmess=atI                                     "去掉欢迎界面
set tabstop=4                                         "设置Tab键的宽度，可以更改，如：宽度为2
"set mouse-=a                    "a 在任何模式下启用鼠标 -a:不启用鼠标
"set backspace=2                 " backspace 可用

"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)" 启用每行超过80列的字符提示（字体变蓝并加下划线）

" -----------------------------------------------------------------------------
"  < Vundle 插件管理工具配置 >
" -----------------------------------------------------------------------------
if g:islinux
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
else
    set rtp+=$VIM/vimfiles/bundle/vundle/
    call vundle#rc('$VIM/vimfiles/bundle/')
endif


Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'bufexplorer.zip'
Bundle 'scrooloose/nerdtree'
