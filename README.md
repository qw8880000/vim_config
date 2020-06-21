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


# 备忘
`noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>`
    - : 表示进行命令行模式
    - <C-U> 表示删除光标所在位置与行首之间的所有字符
    - <C-R>= 插入表达式寄存器: 会提示你输入一个表达式


## 安装rg

https://github.com/BurntSushi/ripgrep
LeaderF 插件可搭配 rg 进行快速搜索
1. 下载安装rg
  - 下载ripgrep-12.1.1-x86_64-pc-windows-msvc.zip
  - 解压，设置环境变量

rg中文文档 https://github.com/chinanf-boy/ripgrep-zh#%E6%9B%B4%E6%96%B0-
