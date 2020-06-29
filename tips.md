## 快捷键映射时使用:<C-U><C-R>的目的
例如有以下快捷键映射：`noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>`，表示：
    - `<C-U>` 表示删除光标所在位置与行首之间的所有字符
    - `<C-R>=` 插入表达式寄存器: 会提示你输入一个表达式

## LeaderF插件相关

* 打开上一次LeaderF的搜索结果

    使用 `--recall` 参数

* LeaderF 页面保持常开

    使用`--stayOpen`参数

* LeaderF 中如何关闭buffer

    `:LeaderfBuffer->Tab->d`
    唤出Leaderf后，按下`<Tab>`切换模式，可以操作buffer关闭

## nerdtree插件相关

* 在选中的条目上进行grep 
https://github.com/MarSoft/nerdtree-grep-plugin
https://github.com/vim-scripts/nerdtree-ack
https://github.com/mortonfox/nerdtree-ag

* 在选中的条目上获取完整路径
nerdtree插件本身提供这样的功能，也有其他插件实现，如 https://github.com/mortonfox/nerdtree-clip


* 调用系统命令来执行当前文件
https://github.com/ivalkeen/nerdtree-execute

# 一些插件

* 'svermeulen/vim-easyclip'  改变vim剪切板默认工作模式
* [vim-interestingwords](https://github.com/lfv89/vim-interestingwords)   对感兴趣的单词进行高亮
* [Mark--Karkat](https://github.com/vim-scripts/Mark--Karkat) 可高亮单词、高亮选择区域、高亮正则表达式
* [mhinz/vim-grepper](https://github.com/mhinz/vim-grepper) 使用你喜欢的搜索工具，搜索结果放入quickfix  
* [dyng/ctrlsf.vim](https://github.com/dyng/ctrlsf.vim) 使用你喜欢的搜索工具，不同于其他工具，它会显示上下文
* 【GitHub - hardcoreplayers/dashboard-nvim: vim dashboard】https://github.com/hardcoreplayers/dashboard-nvim  dashboard-nvim是比较新的插件，值得关注
* 【GitHub - mhinz/vim-startify: The fancy start screen for Vim.】https://github.com/mhinz/vim-startify
* [vim-clap](https://github.com/liuchengxu/vim-clap) 查找器vim-clap是与ctrlp、leaderf类型的插件
* Yggdroot/indentLine 显示缩进线
* 'junegunn/vim-easy-align' 排序插件
* 'tpope/vim-fugitive' git命令插件
*  kshenoy/vim-signature marks的显示，定位与浏览
* 'jiangmiao/auto-pairs' 自动插入或删除成对的 "" ' (
* 'tpope/vim-surround'
* https://github.com/svermeulen/vim-easyclip Simplified clipboard functionality for Vim.
 

# 还未迁移过来的

" ========================
" web develop
" ========================
Bundle 'mattn/emmet-vim'
Bundle 'douglascrockford/JSLint'
Bundle 'pangloss/vim-javascript'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'leshill/vim-json'
Bundle 'briancollins/vim-jst'
Bundle 'heavenshell/vim-jsdoc'
Bundle 'gko/vim-coloresque'
Bundle 'hail2u/vim-css3-syntax'

" ========================
" c / c++
" ========================
Bundle 'qw8880000/ccvext.vim'
Bundle 'qw8880000/DoxygenToolkit.vim'
" Bundle 'cSyntaxAfter'
Bundle 'justinmk/vim-syntax-extra'
" Bundle 'octol/vim-cpp-enhanced-highlight'
" Bundle 'std_c.zip'
Bundle 'qw8880000/c.vim'
Bundle 'cpp.vim'
Bundle 'scrooloose/nerdcommenter'

" ========================
" 补全插件
" ========================
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'vim-javacompleteex'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'OmniCppComplete'


" ========================
" 代码片段
" ========================
Bundle 'msanders/snipmate.vim'
Bundle 'Shougo/neosnippet.vim'
Bundle 'Shougo/context_filetype.vim'
Bundle 'qw8880000/neosnippet-snippets'
" Bundle 'SirVer/ultisnips'
" Bundle 'honza/vim-snippets'

