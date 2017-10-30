# vim 配置文件 

此vimrc适合如下开发：

-   c/c++ 
-   html/css

# 安装 

## 对于linux

1. `git clone https://github.com/qw8880000/vim_config.git ~/vim_config`
1. 创建符号链接 `ln -s ~/vim_config/_vimrc ~/.vimrc`
1. 创建目录 `mkdir ~/.vim`
1. 安装Vundle `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
1. 打开vim，输入 `:BundleInstall` 来安装其他插件 

然后安装 ctags and cscope

1. `sudo apt-get install ctags`
1. `sudo apt-get install cscope`

## 对于windows (gvim)

待补充

