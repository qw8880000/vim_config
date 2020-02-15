
# 适用范围

linux 下的vim 与 windows 下的gvim 通用。适合如下开发：

- c/c++ 
- html/css/js
- markdown

# 截图

![screenshot for molokai](http://qiniu.wangjinle.com/20171030101917.png)

主题：molokai

# 安装 

注意，所有的操作之前需要先安装`git`

## 对于linux

1. `git clone https://github.com/qw8880000/vim_config.git ~/vim_config`
1. 创建符号链接 `ln -s ~/vim_config/_vimrc ~/.vimrc`
1. 创建目录 `mkdir ~/.vim`
1. 安装Vundle `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
1. 打开vim，输入 `:BundleInstall` 来安装其他插件 

然后安装 ctags 和 cscope

1. `sudo apt-get install ctags`
1. `sudo apt-get install cscope`

## 对于windows (gvim)

1. 下载gvim并安装
1. 复制我的配置文件`_vimrc`与`_gvimrc` 到正确的位置，如下图
![image](http://qiniu.wangjinle.com/20171030221516.png)
1. 在vimfiles 文件夹下新建文件夹 bundle
1. 切换目录到`vimfiles/bundle`，执行安装Vundle的命令 `git clone https://github.com/gmarik/vundle.git`
1. 打开vim，输入 `:BundleInstall` 来安装其他插件 

# 插件列表

// todo

# 快捷键

* 显示目录树 `F2`
![image](http://qiniu.wangjinle.com/f2.gif)

* 显示本文件的代码结构 `F4`
![image](http://qiniu.wangjinle.com/f4.gif)

* 在打开过的文件之间切换 `,be`
![image](http://qiniu.wangjinle.com/bufexplore.gif)

* 切换到右边的窗口 `ctrl + l`, 切换到左边的窗口 `ctrl + h`
![image](http://qiniu.wangjinle.com/winChange.gif)

* 在目录树中定位当前文件 `,nf`
![image](http://qiniu.wangjinle.com/findCurrentFile.gif)

* 生成 doxygen author 注释 `,da`
![image](http://qiniu.wangjinle.com/DoxAuthor.gif)

* 生成doxygen函数注释 `,dx`
![image](http://qiniu.wangjinle.com/DoxFunction.gif)

* 生成注释(每行都生成注释) `,ci`. 取消注释 `,cu`.
![image](http://qiniu.wangjinle.com/comment1.gif)

* 生成注释(整块注释) `,cm`. 取消注释 `,cu`.
![image](http://qiniu.wangjinle.com/comment2.gif)

* 在行尾生成注释 `,cA`
![image](http://qiniu.wangjinle.com/comment3.gif)

* 在 `/**/` 与 `//` 之间切换 `,ca`
![image](http://qiniu.wangjinle.com/comment4.gif)

* 其他快捷键可查看`_vimrc`

# todo

- undofile（以un结尾的文件是否需要）
