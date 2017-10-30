# 截图

![screenshot for molokai](http://oxnimkw03.bkt.clouddn.com/20171030101917.png)

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

# 快捷键

* 显示目录树 `F2`
![image](http://oxnimkw03.bkt.clouddn.com/f2.gif)

* 显示本文件的代码结构 `F4`
![image](http://oxnimkw03.bkt.clouddn.com/f4.gif)

* 在打开过的文件之间切换 `,be`
![image](http://oxnimkw03.bkt.clouddn.com/bufexplore.gif)

* 切换到右边的窗口 `ctrl + l`, 切换到左边的窗口 `ctrl + h`
![image](http://oxnimkw03.bkt.clouddn.com/winChange.gif)

* 在目录树中定位当前文件 `,nf`
![image](http://oxnimkw03.bkt.clouddn.com/findCurrentFile.gif)

* 生成 doxygen author 注释 `,da`
![image](http://oxnimkw03.bkt.clouddn.com/DoxAuthor.gif)

* 生成doxygen函数注释 `,dx`
![image](http://oxnimkw03.bkt.clouddn.com/DoxFunction.gif)

* 生成注释(每行都生成注释) `,ci`. 取消注释 `,cu`.
![image](http://oxnimkw03.bkt.clouddn.com/comment1.gif)

* 生成注释(整块注释) `,cm`. 取消注释 `,cu`.
![image](http://oxnimkw03.bkt.clouddn.com/comment2.gif)

* 在行尾生成注释 `,cA`
![image](http://oxnimkw03.bkt.clouddn.com/comment3.gif)

* 在 `/**/` 与 `//` 之间切换 `,ca`
![image](http://oxnimkw03.bkt.clouddn.com/comment4.gif)

