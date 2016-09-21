" 
"            __   _,--="=--,_   __
"           /  \."    .-.    "./  \
"          /  ,/  _   : :   _  \/` \
"          \  `| /o\  :_:  /o\ |\__/
"           `-'| :="~` _ `~"=: |
"              \`     (_)     `/
"       .-"-.   \      |      /   .-"-.
"  .---{     }--|  /,.-'-.,\  |--{     }---.
"   )  (_)_)_)  \_/`~-===-~`\_/  (_(_(_)  (
"  (        0 Error(s) 0 Warning(s)        )
"   )       Jinle Wang@Starnet            (
"  '---------------------------------------'            





" -----------------------------------------------------------------------------
"  < Vundle 插件管理工具配置 >
"  -----------------------------------------------------------------------------
" 设置包括vundle和初始化相关的runtime path 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" 使用Vundle来管理插件，这个必须要有。
Bundle 'gmarik/vundle'
Bundle 'qw8880000/vim_ascii_art'
Bundle 'Lokaltog/vim-powerline'



"set nocompatible              	" 去除VI一致性,必须
"filetype off                  	" 必须
"filetype plugin indent on    	" 必须 加载vim自带和插件相应的语法和文件类型相关脚本

" 用<C-k,j,h,l>切换到上下左右的窗口中去
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

syntax on
syntax enable
set t_Co=256
colorscheme molokai

