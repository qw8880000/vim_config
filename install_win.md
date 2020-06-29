windows系统下按照以下方式进行安装：

## 安装gvim

从[vim.org](https://www.vim.org/) 下载安装gvim

## python安装

__注意：gvim和python需要相互匹配，比如gvim是32位，那么python也应该安装32位的__

## clone本项目

1. 先clone到本地
`git clone https://github.com/qw8880000/NiceVim.git $HOME/NiceVim`

2. 创建符号链接
```
mklink $HOME/vimfiles/_vimrc $HOME/NiceVim/_vimrc
mklink $HOME/vimfiles/_gvimrc $HOME/NiceVim/_gvimrc
```

## 安装vim-plug插件

下载[vim-plug](https://github.com/junegunn/vim-plug)，把plug.vim 放到 vimfiles 的"autoload"目录。可使用命令：
`git clone https://github.com/junegunn/vim-plug.git $HOME/vimfiles/autoload/`

## 安装rg(ripgrep)插件

LeaderF 插件可搭配[ripgrep](https://github.com/BurntSushi/ripgrep)插件进行快速搜索。
1. 下载安装rg
  - 下载ripgrep-12.1.1-x86_64-pc-windows-msvc.zip
  - 解压，设置环境变量

[rg中文文档](https://github.com/chinanf-boy/ripgrep-zh#%E6%9B%B4%E6%96%B0-)

5. 安装ctags

LeaderF function与tagbar使用到ctags
下载：http://ctags.sourceforge.net/
解压，然后设置为环境变量

