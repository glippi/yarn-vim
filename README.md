# Yarn in Vim
A simple utility, that wraps the main functionality of Yarn package manager.

## Features
* Type less and get things done via _yarn_ core functions:
  * every command start with a capital ```Y``` and it is followed only by the first letter of the function you want to execute: less typing, more productivity.
* Mnemonic command's combo:
  * if you want to add a package simply run <pre>:Ya <i>package</i></pre>, if you want to remove something simply call ```Yr``` *package*, wanna upgrade some dependencies? Well, go for ```Yu```*package* etc. it's simple: just ```Y``` followed by the first letter of the command you want to execute

## Installation
* [**Vundle**](https://github.com/gmarik/vundle), add the following line to your `~/.vimrc`:

    Bundle 'GabrieleLippi/yarn-vim'
    $ vim +'PluginInstall! yarn-vim' +qall

* [**vim-plug**](https://github.com/junegunn/vim-plug), add the following to your plugin section:

    Plug 'GabrieleLippi/yarn-vim'
    $ vim +PlugInstall

* [**NeoBundle**](https://github.com/Shougo/neobundle.vim), add the following line to your `~/.vimrc`:

    NeoBundle 'GabrieleLippi/yarn-vim'
    $ vim +NeoBundleInstall +qall

* [**Pathogen**](https://github.com/tpope/vim-pathogen), execute the following in your shell:

    $ cd ~/.vim/bundle
    $ git clone https://github.com/GabrieleLippi/yarn-vim.git

If you are not using a package manager, download the [tarball](https://github.com/GabrieleLippi/yarn-vim/archive/master.tar.gz) and execute the following steps:

    $ cp yarn-vim-master.tar.gz ~/.vim
    $ cd ~/.vim
    $ tar --strip-components=1 --overwrite -zxf yarn-vim-master.tar.gz
    $ rm yarn-vim-master.tar.gz
