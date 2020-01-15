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
" 判断操作系统是否是 Windows 还是 Linux
" -----------------------------------------------------------------------------
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
    source $VIM/_gvimrc                             " 加载gvim特殊的配置
else
    let g:islinux = 1
endif

" -----------------------------------------------------------------------------
" vim配置
" -----------------------------------------------------------------------------
set nocompatible                                  " 禁用 Vi 兼容模式
set encoding=utf-8                                " 设置 vim 内部编码，默认不更改
"set fileencoding=cp936
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1 " 设置支持打开的文件的编码
                                                  " 文件格式，默认 ffs=dos,unix
"set fileformat=unix                               " 设置新（当前）文件的<EOL>格式，可以更改，如：dos（windows系统常用）
set fileformats=unix,dos,mac                      " 给出文件的<EOL>格式类型
if version >= 603
	set helplang=cn                               " 使用中文帮助
endif

filetype on                            " 启用文件类型侦测
filetype plugin on                     " 针对不同的文件类型加载对应的插件
filetype plugin indent on              " 启用缩进

if has("syntax")
	syntax on                          " enables syntax highlighting by default
endif
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
"set shortmess=atI                     " 去掉欢迎界面
set tabstop=4                          " 设置Tab键的宽度，可以更改，如：宽度为2
"set mouse-=a                          " a 在任何模式下启用鼠标 -a:不启用鼠标
set backspace=2                        " backspace 可用
set smarttab                           " 指定按一次backspace就删除shiftwidth宽度
set shiftwidth=4                       " 换行时自动缩进宽度，可更改（宽度同tabstop）
set expandtab                          " 将Tab键转换为空格
set smartindent                        " 启用智能对齐方式
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
