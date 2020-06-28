# 截图

![screenshot for molokai](http://qiniu.wangjinle.com/20171030101917.png)

主题：molokai

# 安装

## windows下：
1. 下载vim-plug(https://github.com/junegunn/vim-plug)，把plug.vim 放到 vimfiles 的"autoload"目录.

git clone https://github.com/junegunn/vim-plug.git $HOME/vimfiles/autoload/

2. 创建符号链接 
mklink C:\Users\Administrator\vimfiles\vimrc D:\code\NiceVim\_vimrc
mklink C:\Users\Administrator\vimfiles\_gvimrc D:\code\NiceVim\_gvimrc

建议你把自己的 GUI 初始化部分放在:
	Unix		    $HOME/.gvimrc 或 $HOME/.vim/gvimrc
	OS/2		    $HOME/.gvimrc、$HOME/vimfiles/gvimrc 或
			    $VIM/.gvimrc
	MS-DOS 和 Win32     $HOME/_gvimrc、$HOME/vimfiles/gvimrc 或
			    $VIM/_gvimrc
	Amiga		    s:.gvimrc、home:.gvimrc、home:vimfiles:gvimrc 或
			    $VIM/.gvimrc

3. python安装
gvim和python需要相互匹配，比如gvim是32位，那么python也应该安装32位的

4. 安装rg

LeaderF rg命令使用了ripgrep插件

https://github.com/BurntSushi/ripgrep
LeaderF 插件可搭配 rg 进行快速搜索
1. 下载安装rg
  - 下载ripgrep-12.1.1-x86_64-pc-windows-msvc.zip
  - 解压，设置环境变量

rg中文文档 https://github.com/chinanf-boy/ripgrep-zh#%E6%9B%B4%E6%96%B0-

5. 安装ctags

LeaderF function与tagbar使用到ctags插件
下载：http://ctags.sourceforge.net/
解压，然后设置为环境变量

# 备忘

## 快捷键映射时使用:<C-U><C-R>的目的
`noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>`
    - : 表示进行命令行模式
    - <C-U> 表示删除光标所在位置与行首之间的所有字符
    - <C-R>= 插入表达式寄存器: 会提示你输入一个表达式



## LeaderF 搜索结果重复打开

使用 --recall 参数

## nerdtree

* 在选中的条目上进行grep 
https://github.com/MarSoft/nerdtree-grep-plugin
https://github.com/vim-scripts/nerdtree-ack
https://github.com/mortonfox/nerdtree-ag

* 在选中的条目上获取完整路径
https://github.com/mortonfox/nerdtree-clip

* 调用系统命令来执行当前文件
https://github.com/ivalkeen/nerdtree-execute

# 一些插件

* 'svermeulen/vim-easyclip'    " 改变vim剪切板默认工作模式

* https://github.com/lfv89/vim-interestingwords  vim-interestingwords 对感兴趣的单词进行高亮
* https://github.com/vim-scripts/Mark--Karkat 可高亮单词、选择区域、正则表达式

*  https://github.com/mhinz/vim-grepper mhinz/vim-grepper 使用你喜欢的搜索工具，搜索结果放入quickfix  

* https://github.com/dyng/ctrlsf.vim ctrlsf 使用你喜欢的搜索工具，不同于其他工具，它会显示上下文

* vim 开屏显示内容
【GitHub - hardcoreplayers/dashboard-nvim: vim dashboard】https://github.com/hardcoreplayers/dashboard-nvim
【GitHub - mhinz/vim-startify: The fancy start screen for Vim.】https://github.com/mhinz/vim-startify

dashboard-nvim是比较新的插件，值得关注

* 查找器
vim-clap是与ctrlp、leaderf类型的插件
https://github.com/liuchengxu/vim-clap
