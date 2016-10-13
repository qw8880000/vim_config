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
    source $VIM/_gvimrc                             " 加载gvim特殊的配置
else
    let g:islinux = 1
endif


set nocompatible                                      "禁用 Vi 兼容模式


" -----------------------------------------------------------------------------
"  < Vundle 插件管理工具配置 >
" -----------------------------------------------------------------------------
filetype on " without this vim emits a zero exit status, later, because of :ft off
filetype off

if g:islinux
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
else
    set rtp+=$VIM/vimfiles/bundle/vundle/
    call vundle#rc('$VIM/vimfiles/bundle/')
endif


Bundle 'gmarik/vundle'

" ========================
" 对齐插件
" ========================
Bundle 'junegunn/vim-easy-align'
" Bundle 'Align'
Bundle 'godlygeek/tabular'

" ========================
" 补全插件
" ========================
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'vim-javacompleteex'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'OmniCppComplete'


" ========================
" IDE
" ========================
Bundle 'bufexplorer.zip'
Bundle 'scrooloose/nerdtree'
Bundle 'wesleyche/SrcExpl'
Bundle 'taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'ZoomWin'
Bundle 'qw8880000/ccvext'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'Yggdroot/indentLine'
Bundle 'scrooloose/syntastic'

if g:islinux
    " Bundle 'EasyGrep'
    Bundle 'mhinz/vim-grepper'
    Bundle 'mileszs/ack.vim'
    Bundle 'rking/ag.vim'
    Bundle 'dyng/ctrlsf.vim'
endif
"Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-surround'
Bundle 'Mark--Karkat'
Bundle 'kshenoy/vim-signature'
Bundle 'repeat.vim'
" Bundle 'jlanzarotta/colorSchemeExplorer'

Bundle 'easymotion/vim-easymotion'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-fugitive'
Bundle 'tomasr/molokai' 
Bundle 'romainl/vim-qf'

" ========================
" html / css /javascript
" ========================
Bundle 'mattn/emmet-vim'
" Bundle 'hallettj/jslint.vim'
" Bundle 'joestelmach/lint.vim'
Bundle 'maksimr/vim-jsbeautify'

" ========================
" c / c++
" ========================
Bundle 'qw8880000/DoxygenToolkit'
" Bundle 'cSyntaxAfter'
Bundle 'justinmk/vim-syntax-extra'
" Bundle 'octol/vim-cpp-enhanced-highlight'
" Bundle 'std_c.zip'
Bundle 'qw8880000/cvim'
Bundle 'cpp.vim'
Bundle 'scrooloose/nerdcommenter'

" ========================
" txt / markdown / wiki
" ========================
Bundle 'TxtBrowser'
Bundle 'plasticboy/vim-markdown'
" Bundle 'xolox/vim-notes'
" Bundle 'xolox/vim-misc'
" Bundle 'vimwiki/vimwiki'
"
" ========================
" draw ascii map
" ========================
Bundle 'sketch.vim'
Bundle 'DrawIt'
Bundle 'qw8880000/vim_ascii_art'


" ensure ftdetect et al work by including this after the Vundle stuff
filetype plugin indent on

" 注：上面配置中的"<Leader>"在本软件中设置为"\"键（引号里的反斜杠），如<Leader>t
" 指在常规模式下按"\"键加"t"键，这里不是同时按，而是先按"\"键后按"t"键，间隔在一
" 秒内，而<Leader>cs是先按"\"键再按"c"又再按"s"键；如要修改"<leader>"键，可以把
let mapleader = ","

" ----------------------------------------------
" tpope/vim-fugitive
" ----------------------------------------------
" git 插件 
" :h fugitive.txt 查看帮助
set laststatus=2 " Always display the status line
set statusline+=%{fugitive#statusline()} "  Git Hotness

nnoremap <Leader>gt :Gstatus<CR>

" ----------------------------------------------
" vim-easy-align
" ----------------------------------------------
" 快速对齐插件
""" command mode
" :EasyAlign[!] [N-th] DELIMITER_KEY [OPTIONS]
" :EasyAlign[!] [N-th] /REGEXP/ [OPTIONS]
""" interactive mode
" vipga
" gaip
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" <enter> 用来循环切换左、右、中对齐方式
" 使用* 号的话，左对齐一次右对齐一次，依次类推

" ----------------------------------------------
" Align
" ----------------------------------------------
" 对齐插件

" ----------------------------------------------
" godlygeek/tabular
" ----------------------------------------------
" 文本对齐插件,功能不是很强大，但是vim-markdown插件会用到

" ----------------------------------------------
" Valloric/YouCompleteMe
" ----------------------------------------------
"set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
""上下左右键的行为 会显示其他信息
""inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
""inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
""inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
"" inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"
"" 跳转到定义处
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"
""force recomile with syntastic
"nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>  
"nnoremap <leader>lo :lopen<CR>  "open locationlist
"nnoremap <leader>lc :lclose<CR> "close locationlist
"" inoremap <leader><leader> <C-x><C-o>
"
"let g:ycm_global_ycm_extra_conf = '~/gVimPortable/vimfiles/bundle/YouCompleteMe/third_party/ycmd/cpp/me/.ycm_extra_conf.py'
"
"" 不显示开启vim时检查ycm_extra_conf文件的信息  
"" let g:ycm_confirm_extra_conf=0
"" 开启基于tag的补全，可以在这之后添加需要的标签路径  
"" let g:ycm_collect_identifiers_from_tags_files=1
""注释和字符串中的文字也会被收入补全
"" let g:ycm_collect_identifiers_from_comments_and_strings = 0
"" 输入第2个字符开始补全
"let g:ycm_min_num_of_chars_for_completion=2
"" 禁止缓存匹配项,每次都重新生成匹配项
"" let g:ycm_cache_omnifunc=0
"" 开启语义补全
"let g:ycm_seed_identifiers_with_syntax=1  
""在注释输入中也能补全
"let g:ycm_complete_in_comments = 1
""在字符串输入中也能补全
"let g:ycm_complete_in_strings = 1
"" 设置在下面几种格式的文件上屏蔽ycm
"let g:ycm_filetype_blacklist = {
"            \ 'tagbar' : 1,
"            \ 'nerdtree' : 1,
"            \}
""youcompleteme  默认tab  s-tab 和 ultisnips 冲突
"" let g:ycm_key_list_select_completion = ['<Down>']
"" let g:ycm_key_list_previous_completion = ['<Up>']
"" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
"" let g:ycm_key_invoke_completion = '<M-;>'
""
"let g:ycm_error_symbol = '!!'
"let g:ycm_warning_symbol = '>>'
"
" ----------------------------------------------
" vim-javacompleteex
" ----------------------------------------------
" java 补全插件

" ----------------------------------------------
" Shougo/neocomplcache.vim
" ----------------------------------------------
" 关键字补全、文件路径补全、tag补全等等，各种，非常好用，速度超快。
let g:neocomplcache_enable_at_startup = 1     "vim 启动时启用插件
" let g:neocomplcache_disable_auto_complete = 1 "不自动弹出补全列表
" 在弹出补全列表后用 <c-p> 或 <c-n> 进行上下选择效果比较好

" ----------------------------------------------
" msanders/snipmate.vim
" ----------------------------------------------
" 代码补全

" ----------------------------------------------
" OmniCppComplete
" ----------------------------------------------
" 用于C/C++代码补全，这种补全主要针对命名空间、类、结构、共同体等进行补全，详细
" 说明可以参考帮助或网络教程等
" 使用前先执行如下 ctags 命令（本配置中可以直接使用 ccvext 插件来执行以下命令）
" ctags -R --c++-kinds=+p --fields=+iaS --extra=+q
" 我使用上面的参数生成标签后，对函数使用跳转时会出现多个选择
" 所以我就将--c++-kinds=+p参数给去掉了，如果大侠有什么其它解决方法希望不要保留呀
" 主要用在c++
" let OmniCpp_GlobalScopeSearch = 1


" ----------------------------------------------
" bufexplorer.zip
" ----------------------------------------------
" 快速轻松的在缓存中切换（相当于另一种多个文件间的切换方式）
" <Leader>be 在当前窗口显示缓存列表并打开选定文件
" <Leader>bs 水平分割窗口显示缓存列表，并在缓存列表窗口中打开选定文件
" <Leader>bv 垂直分割窗口显示缓存列表，并在缓存列表窗口中打开选定文件


" ----------------------------------------------
" scrooloose/nerdtree
" ----------------------------------------------
" 有目录村结构的文件浏览插件
" :h NERD_tree.txt
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let NERDTreeHighlightCursorline=1
" 常规模式下输入 F2 调用插件
nmap <F2> :NERDTreeToggle<CR> 		
nmap <F3> :NERDTreeCWD<CR>


" ----------------------------------------------
" wesleyche/SrcExpl
" ----------------------------------------------
" 增强源代码浏览，其功能就像Windows中的"Source Insight"
" :h srcexpl.txt
" nmap <F7> :SrcExplToggle<CR>                "打开/闭浏览窗口

" ----------------------------------------------
" taglist.vim
" ----------------------------------------------
" 列出当前文件中的所有宏,全局变量, 函数名等
" :h taglist.txt
" 常规模式下输入 tl 调用插件，如果有打开 Tagbar 窗口则先将其关闭
nmap tl :TagbarClose<CR>:Tlist<CR>
let Tlist_Show_One_File=1                   "只显示当前文件的tags
" let Tlist_Enable_Fold_Column=0              "使taglist插件不显示左边的折叠行
let Tlist_Exit_OnlyWindow=1                 "如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_File_Fold_Auto_Close=1            "自动折叠
let Tlist_WinWidth=50                       "设置窗口宽度
let Tlist_Use_Right_Window=1                "在右侧窗口中显示


" ----------------------------------------------
" majutsushi/tagbar
" ----------------------------------------------
" 列出当前文件中的所有宏,全局变量, 函数名等
" :h tagbar.txt
" 常规模式下输入 tb 调用插件，如果有打开 TagList 窗口则先将其关闭
nmap <F4> :TlistClose<CR>:TagbarToggle<CR>
let g:tagbar_width=45                       "设置窗口宽度
" let g:tagbar_left=1                         "在左侧窗口中显示

" ----------------------------------------------
" ZoomWin
" ----------------------------------------------
" 用于分割窗口的最大化与还原
" 常规模式下按快捷键 <c-w>o 在最大化与还原间切换

" ----------------------------------------------
" qw8880000/ccvext
" ----------------------------------------------
" 用于对指定文件自动生成tags与cscope文件并连接
" 如果是Windows系统, 则生成的文件在源文件所在盘符根目录的.symbs目录下(如: X:\.symbs\)
" 如果是Linux系统, 则生成的文件在~/.symbs/目录下
" 具体用法可参考www.vim.org中此插件的说明
" <Leader>sy 自动生成tags与cscope文件并连接
" <Leader>sc 连接已存在的tags与cscope文件


" ----------------------------------------------
" ctrlpvim/ctrlp.vim
" ----------------------------------------------
" 一个全路径模糊文件，缓冲区，最近最多使用，... 检索插件；详细帮助见 :h ctrlp
" 常规模式下输入：Ctrl + p 调用插件
nmap cpd :CtrlPDir<CR>  
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_working_path_mode = 'ra'
"你可以使用'@cd path/'来改变CtrlP的工作目录为path/。使用'@cd %:h'来改变为当前文件的目录。
" 如果你想CtrlP扫描隐藏文件和目录，设置该选项为1: 
let g:ctrlp_show_hidden = 0

" ----------------------------------------------
" Lokaltog/vim-powerline
" ----------------------------------------------
" 状态栏插件，更好的状态栏效果

" ----------------------------------------------
" Yggdroot/indentLine
" ----------------------------------------------
" 用于显示对齐线
" 在终端上会有屏幕刷新的问题，这个问题能解决有更好了
" 开启/关闭对齐线
"nmap <leader>il :IndentLinesToggle<CR>
"
"" 设置Gvim的对齐线样式
" let g:indentLine_char = "┊"
" let g:indentLine_first_char = "┊"
"
"" 设置终端对齐线颜色，如果不喜欢可以将其注释掉采用默认颜色
"let g:indentLine_color_term = 239

" 设置 GUI 对齐线颜色，如果不喜欢可以将其注释掉采用默认颜色
" let g:indentLine_color_gui = '#A4E57E'

" ----------------------------------------------
" scrooloose/syntastic
" ----------------------------------------------
" 用于保存文件时查检语法

" ----------------------------------------------
" hallettj/jslint.vim
" ----------------------------------------------
" javascript 语法检查

" ----------------------------------------------
" joestelmach/lint.vim
" ----------------------------------------------
"javascript 语法检查

" ----------------------------------------------
" mattn/emmet-vim
" ----------------------------------------------
" HTML/CSS代码快速编写神器，详细帮助见 :h emmet.txt
" Enable just for html/css
" let g:user_emmet_install_global = 0
" autocmd FileType html set foldenable                                        "启用折叠

" ----------------------------------------------
" romainl/vim-qf
" ----------------------------------------------
"  short for vim-quickfix—is a small collection of settings, commands and
"  mappings put together to make working with the location/quickfix
"  list/window smoother
"  :h qf.txt

" ----------------------------------------------
" cSyntaxAfter
" ----------------------------------------------
" 高亮括号与运算符等
" au! BufRead,BufNewFile,BufEnter *.{c,cpp,h,java,javascript} call CSyntaxAfter()

" ----------------------------------------------
" justinmk/vim-syntax-extra
" ----------------------------------------------
" C 语言颜色与高亮

" ----------------------------------------------
" octol/vim-cpp-enhanced-highlight
" ----------------------------------------------
" C++ 语言颜色与高亮

" ----------------------------------------------
" std_c.zip
" ----------------------------------------------
" 用于增强C语法高亮,但是不支持#if 0识别

" 启用 // 注视风格
" let c_cpp_comments = 0

" ----------------------------------------------
" qw8880000/cvim
" ----------------------------------------------
"快速插入C代码
let g:C_MapLeader  = ';'

" let g:C_FormatDate            = '%D'
let g:C_FormatDate            = '%4Y/%m/%d'
let g:C_FormatTime            = '%H:%M'
let g:C_FormatYear            = 'year %Y'

" ----------------------------------------------
" cpp.vim
" ----------------------------------------------


" ----------------------------------------------
" TxtBrowser
" ----------------------------------------------
" 纯文本浏览器
"1) 为文本文件生成标题标签: 用Vim打开纯文本文件, 执行":Tlist"命令即可生成纯文本文件的目录树
"2) 语法高亮:   ":colorscheme  colorname"
"3) 浏览功能
"<Leader>s: 用搜索引擎(可定制, 默认为google)搜索光标下的单词或选中的文本.
"<Leader>f: 用网络字典(可定制, 默认为google.cn)对光标下的单词或选中的文本查字典.
"<Leader>g: 打开光标下或选中的URL.
"<Leader>h: 高亮单词
au BufRead,BufNewFile *.txt setlocal ft=txt
"设置单词查找使用的词典
let TxtBrowser_Dict_Url='http://fanyi.baidu.com/translate?aldtype=16047&query=text&keyfrom=baidu&smartresult=dict&lang=auto2zh#en/zh/text'
"设置搜索引擎
let Txtbrowser_Search_Engine='https://www.baidu.com/s?wd=text&rsv_spt=1&rsv_iqid=0xd7804a3f00048e72&issp=1&f=8&rsv_bp=0&rsv_idx=2&ie=utf-8&tn=baiduhome_pg&rsv_enter=1&rsv_sug3=5&rsv_sug1=1&rsv_sug2=0&inputT=1102&rsv_sug4=1465'


" ----------------------------------------------
" plasticboy/vim-markdown
" ----------------------------------------------
" gx: open the link under the cursor 
autocmd BufNewFile,BufRead *.md set filetype=markdown
let g:vim_markdown_folding_disabled=1       "折叠
let g:vim_markdown_frontmatter=1
" 打开文本目录
nmap <Leader>to :Toc <CR>
" 格式化表格
nmap <Leader>tf :TableFormat <CR>

" ----------------------------------------------
" qw8880000/DoxygenToolkit
" ----------------------------------------------
" 快速注释插件
" 插入许可

nnoremap <Leader>dl :DoxLic<CR>

" 插入作者

nnoremap <Leader>da :DoxAuthor<CR>

" 插入函数/类注释

nnoremap <Leader>dx :Dox<CR>

let g:DoxygenToolkit_briefTag_pre="@Brief  " 
let g:DoxygenToolkit_paramTag_pre="@Param " 
let g:DoxygenToolkit_returnTag="@Returns   " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="wangjl" 
let g:DoxygenToolkit_versionString="v1.0"


" ----------------------------------------------
" xolox/vim-notes
" ----------------------------------------------
"写日志用

" ----------------------------------------------
" xolox/vim-misc
" ----------------------------------------------

" ----------------------------------------------
" vimwiki/vimwiki
" ----------------------------------------------
"方便的写文档，类似markdown的语法，后面可以转成wiki文档

" ----------------------------------------------
" sketch.vim
" ----------------------------------------------
" 鼠标画草图插件
nmap <Leader>st :call ToggleSketch()<CR>

" ----------------------------------------------
" DrawIt
" ----------------------------------------------
"方向键画图
" <Leader>di    " start
" <Leader>ds    " stop

" ----------------------------------------------
" EasyGrep
" ----------------------------------------------
"<Leader>vv  - Grep for the word under the cursor, match all occurences,like 'g*'.  See ":help gstar".
"<Leader>vV  - Grep for the word under the cursor, match whole word, like'*'.  See ":help star".
"<Leader>va  - Like vv, but add to existing list.
"<Leader>vA  - Like vV, but add to existing list.
"<Leader>vr  - Perform a global search on the word under the cursor and prompt for a pattern with which to replace it.
"<Leader>vR  - Like vr, but match whole word.
"<Leader>vo  - Open an options explorer to select the files to search in and set grep options.
"
" ----------------------------------------------
" mhinz/vim-grepper
" ----------------------------------------------
"  :h grepper
"  :h grepper-mappings
"  :h grepper-options
nmap gs  <plug>(GrepperOperator)
xmap gs  <plug>(GrepperOperator)
" gs, gsW, gsiw, gsi

let g:grepper           = {}
let g:grepper.tools     = ['grep', 'ag', 'git']

" 使用ag在当前文件搜索
nnoremap agc :Grepper -tool ag -grepprg ag --vimgrep $* $.<cr>
" 使用ag在当前文件搜索光标下的单词
nnoremap agw :Grepper -tool ag -cword -grepprg ag --vimgrep $* $.<cr>

" 使用grep在当前文件搜索光标下的单词
nnoremap gw :Grepper -tool grep -cword -grepprg grep -Rn $* $.<cr>

" ----------------------------------------------
" mileszs/ack.vim
" ----------------------------------------------
" 代码搜索插件，号称比grep还快
" usage:
"   :Ack [options] {pattern} [{directories}]
" nmap <Leader>a :Ack <C-R><C-W>
" nmap <Leader>aa :AckAdd <C-R><C-W>
" nmap <Leader>afs :AckFromSearch <CR>
" nmap <Leader>la :LAck <C-R><C-W>
" nmap <Leader>laa :LAckAdd <C-R><C-W>

" ----------------------------------------------
" rking/ag.vim
" ----------------------------------------------
"  sudo apt-get install silversearcher-ag
" 代码搜索

" ----------------------------------------------
" dyng/ctrlsf.vim
" ----------------------------------------------
" 基于ack.vim/ag.vim,和ack或者ag不同的是，不再是显示一行，而是显示整个上下文
"
" let g:ctrlsf_populate_qflist = 1
" let g:ctrlsf_position = 'left'
" let g:ctrlsf_winsize = '40%'

" nmap     <C-F>f <Plug>CtrlSFPrompt
" vmap     <C-F>f <Plug>CtrlSFVwordPath
" vmap     <C-F>F <Plug>CtrlSFVwordExec
" nmap     <C-F>w <Plug>CtrlSFCwordPath
" nmap     <C-F>p <Plug>CtrlSFPwordPath
" nnoremap <C-F>o :CtrlSFOpen<CR>
" nnoremap <C-F>t :CtrlSFToggle<CR>
" inoremap <C-F>t <Esc>:CtrlSFToggle<CR>


" ----------------------------------------------
" jiangmiao/auto-pairs
" ----------------------------------------------
"  括号与引号自动补全

" ----------------------------------------------
" tpope/vim-surround
" ----------------------------------------------
" 快速给单词/句子两边增加符号（包括html标签），缺点是不能用"."来重复命令
" 不过 repeat 插件可以解决这个问题，详细帮助见 :h surround.txt
" cs    " change surrondings
" ds    " delete surrondings
" ysiw  " add surrondings between the word

"  Old text                  Command     New text ~
"  "Hello *world!"           ds"         Hello world!
"  [123+4*56]/2              cs])        (123+456)/2
"  "Look ma, I'm *HTML!"     cs"<q>      <q>Look ma, I'm HTML!</q>
"  if *x>3 {                 ysW(        if ( x>3 ) {
"  my $str = *whee!;         vllllS'     my $str = 'whee!';



" ----------------------------------------------
" Mark--Karkat
" ----------------------------------------------
" 给不同的单词高亮，表明不同的变量时很有用，详细帮助见 :h mark.txt
"<Leader>m  Mark the word under the curso
"<Leader>n  Clear the mark under the curso
"<Leader>r  Manually input a regular expression to mar
":MarkClear		Clear all marks

" ----------------------------------------------
" repeat.vim
" ----------------------------------------------
" 主要用"."命令来重复上次插件使用的命令

" ----------------------------------------------
" jlanzarotta/colorSchemeExplorer
" ----------------------------------------------
" 用来预览配色主题

" ----------------------------------------------
" maksimr/vim-jsbeautify
" ----------------------------------------------
"javascript 代码格式化

" ----------------------------------------------
" easymotion/vim-easymotion
" ----------------------------------------------
" 快速移动插件
" <Leader><Leader>w     " move to word forward
" <Leader><Leader>b     " move to word backward

" ----------------------------------------------
" terryma/vim-multiple-cursors
" ----------------------------------------------
" 多个地方同时进行编辑的插件

" ----------------------------------------------
" qw8880000/vim_ascii_art
" ----------------------------------------------
" 插入 ascii 图案的一个插件

" ----------------------------------------------
" kshenoy/vim-signature
" ----------------------------------------------
" vim-signature is a plugin to place, toggle and display marks.

" ----------------------------------------------
" scrooloose/nerdcommenter
" ----------------------------------------------
" 我主要用于C/C++代码注释(其它的也行)
" 以下为插件默认快捷键，其中的说明是以C/C++为例的，其它语言类似
" <Leader>ci 以每行一个 /* */ 注释选中行(选中区域所在行)，再输入则取消注释
" <Leader>cm 以一个 /* */ 注释选中行(选中区域所在行)，再输入则称重复注释
" <Leader>cc 注释选中行或区域，再输入则称重复注释
" <Leader>cu 取消选中区域(行)的注释，选中区域(行)内至少有一个 /* */
" <Leader>ca 在/*...*/与//这两种注释方式中切换（其它语言可能不一样了）
" <Leader>cA 行尾注释
let NERDSpaceDelims = 1                     "在左注释符之后，右注释符之前留有空格


" -----------------------------------------------------------------------------
"  < 编码配置 >
" -----------------------------------------------------------------------------
set encoding=utf-8                                " 设置gvim内部编码，默认不更改
" set fileencoding=utf-8                          " 设置当前文件编码，可以更改，如：gbk（同cp936）
set fileencoding=cp936
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1 " 设置支持打开的文件的编码
                                                  " 文件格式，默认 ffs=dos,unix
set fileformat=unix                               " 设置新（当前）文件的<EOL>格式，可以更改，如：dos（windows系统常用）
set fileformats=unix,dos,mac                      " 给出文件的<EOL>格式类型
if version >= 603
	set helplang=cn                               " 使用中文帮助
endif

" -----------------------------------------------------------------------------
"  < 其他配置 >
" -----------------------------------------------------------------------------
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
autocm BufEnter * if expand('%:p') !~ '://' | cd %:p:h | endif

" -----------------------------------------------------------------------------
"  < 快捷键映射 >
" -----------------------------------------------------------------------------
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l


" -----------------------------------------------------------------------------
"  < cscope 工具配置 >
" -----------------------------------------------------------------------------
" 用Cscope自己的话说 - "你可以把它当做是超过频的ctags"
if has("cscope")
    "设定可以使用 quickfix 窗口来查看 cscope 结果
    set cscopequickfix=s-,c-,d-,i-,t-,e-
    "使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳转
    set cscopetag
    "如果你想反向搜索顺序设置为1
    set csto=0
    "在当前目录中添加任何数据库
    if filereadable("cscope.out")
        cs add cscope.out
    "否则添加数据库环境中所指出的
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set cscopeverbose
    "快捷键设置
    " 查找符号
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    " 查找定义
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    " 查找调用这个函数的函数（们）
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    " 查找这个字符串
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    " 查找这个egrep 匹配模式
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    " 查找这个文件 
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    " 查找#include 这个文件的文件 （们）
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    " 查找被这个函数调用的函数（们）
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

    " 查看帮助 :cs help
endif

" -----------------------------------------------------------------------------
"  < quickfix使用 >
" -----------------------------------------------------------------------------
" :ccl      " close quickfix window
" :cw       " open quickfix window

