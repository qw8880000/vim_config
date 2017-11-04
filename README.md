
中文[readme](http://www.wangjinle.com/posts/00e87c3d0f40340b.html)

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

1. download gvim and install
1. copy the `_vimrc` and `_gvimrc` to the following directory:
![image](http://oxnimkw03.bkt.clouddn.com/20171030221516.png)
1. make directory `bundle` in `vimfiles/`
1. cd to `vimfiles/bundle`,excute `git clone https://github.com/gmarik/vundle.git`
1. open vim, excute `:BundleInstall` to install plugins.

# Plugins

| plugin                        |
|-------------------------------|
| gmarik/vundle                 |
| junegunn/vim-easy-align       |
| Shougo/neocomplcache.vim      |
| OmniCppComplete               |
| Shougo/neosnippet.vim         |
| Shougo/context_filetype.vim   |
| qw8880000/neosnippet-snippets |
| bufexplorer.zip               |
| scrooloose/nerdtree           |
| majutsushi/tagbar             |
| taglist.vim                   |
| qw8880000/ccvext.vim          |
| ctrlpvim/ctrlp.vim            |
| Lokaltog/vim-powerline        |
| scrooloose/syntastic          |
| easymotion/vim-easymotion     |
| terryma/vim-multiple-cursors  |
| tomasr/molokai                |
| tpope/vim-fugitive            |
| mattn/emmet-vim               |
| pangloss/vim-javascript       |
| maksimr/vim-jsbeautify        |
| leshill/vim-json              |
| heavenshell/vim-jsdoc         |
| gko/vim-coloresque            |
| qw8880000/DoxygenToolkit.vim  |
| justinmk/vim-syntax-extra     |
| qw8880000/c.vim               |
| cpp.vim                       |
| scrooloose/nerdcommenter      |
| TxtBrowser                    |
| plasticboy/vim-markdown       |
| qw8880000/vim-tab             |

# ShortCut

* explore your filesystem with `F2` | plugin: nerdtree
![image](http://oxnimkw03.bkt.clouddn.com/f2.gif)

* browse the tags of source code with `F4` | plugin: tagbar or taglist
![image](http://oxnimkw03.bkt.clouddn.com/f4.gif)

* switch between buffers with `,be` | plugin: bufexplore
![image](http://oxnimkw03.bkt.clouddn.com/bufexplore.gif)

* switch to right window with `ctrl + l`, switch to left window with `ctrl + h`
![image](http://oxnimkw03.bkt.clouddn.com/winChange.gif)

* find the current file in tree `,nf` | plugin: nerdtree
![image](http://oxnimkw03.bkt.clouddn.com/findCurrentFile.gif)

* Generates a doxygen author skeleton with `,da` | plugin: DoxygenToolkit
![image](http://oxnimkw03.bkt.clouddn.com/DoxAuthor.gif)

* Generates a doxygen comment skeleton for a C, C++ or Python function or class with `,dx` | plugin: nerdcommenter
![image](http://oxnimkw03.bkt.clouddn.com/DoxFunction.gif)

* Toggles the comment state of the selected line(s) individually with `,ci`. Uncomments the selected line(s) with `,cu`. | plugin: nerdcommenter
![image](http://oxnimkw03.bkt.clouddn.com/comment1.gif)

* Comments the given lines using only one set of multipart delimiters with `,cm`. Uncomments the selected line(s) with `,cu`. | plugin: nerdcommenter
![image](http://oxnimkw03.bkt.clouddn.com/comment2.gif)

* Adds comment delimiters to the end of line with `,cA` | plugin: nerdcommenter
![image](http://oxnimkw03.bkt.clouddn.com/comment3.gif)

* Switch comment between `/**/` and `//` with `,ca` | plugin: nerdcommenter
![image](http://oxnimkw03.bkt.clouddn.com/comment4.gif)

