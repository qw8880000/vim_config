
中文[readme](./README_zh.md)

# screenshot

![screenshot for molokai](http://oxnimkw03.bkt.clouddn.com/20171030101917.png)

# The vim configuration

This vimrc is suitable for:

-   c/c++ 
-   html/css

# Installation

## For Linux


1. `git clone https://github.com/qw8880000/vim_config.git ~/vim_config`
1. make symbolic link `ln -s ~/vim_config/_vimrc ~/.vimrc`
1. make directory `mkdir ~/.vim`
1. Install Vundle with `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
1. open vim, enter `:BundleInstall` to install plugins.

then install ctags and cscope

1. `sudo apt-get install ctags`
1. `sudo apt-get install cscope`

## For windows (gvim)

// todo

# ShortCut

* explore your filesystem with `F2`
![image](http://oxnimkw03.bkt.clouddn.com/f2.gif)

* browse the tags of source code with `F4`
![image](http://oxnimkw03.bkt.clouddn.com/f4.gif)

* switch between buffers with `,be`
![image](http://oxnimkw03.bkt.clouddn.com/bufexplore.gif)

* switch to right window with `ctrl + l`, switch to left window with `ctrl + h`
![image](http://oxnimkw03.bkt.clouddn.com/winChange.gif)

* find the current file in tree `,nf`
![image](http://oxnimkw03.bkt.clouddn.com/findCurrentFile.gif)

* Generates a doxygen author skeleton with `,da`
![image](http://oxnimkw03.bkt.clouddn.com/DoxAuthor.gif)

* Generates a doxygen comment skeleton for a C, C++ or Python function or class with `,dx`
![image](http://oxnimkw03.bkt.clouddn.com/DoxFunction.gif)

* Toggles the comment state of the selected line(s) individually with `,ci`. Uncomments the selected line(s) with `,cu`.
![image](http://oxnimkw03.bkt.clouddn.com/comment1.gif)

* Comments the given lines using only one set of multipart delimiters with `,cm`. Uncomments the selected line(s) with `,cu`.
![image](http://oxnimkw03.bkt.clouddn.com/comment2.gif)

* Adds comment delimiters to the end of line with `,cA`
![image](http://oxnimkw03.bkt.clouddn.com/comment3.gif)

* Switch comment between `/**/` and `//` with `,ca`
![image](http://oxnimkw03.bkt.clouddn.com/comment4.gif)
