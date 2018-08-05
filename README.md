# Yarn in Vim
A simple utility that wraps the main functionality of [Yarn](https://yarnpkg.com/en/).

## Features
* **Mnemonic** combination:
  * every command start with a capital **Y** and it is followed only by the **first letter** of the function you want to execute
* **Type less** and get things done via yarn core functions:
  * wanna add a package? Simply call: <pre>:Ya <i>package/packages</i></pre>
  * wanna remove a package? Simply call: <pre>:Yr <i>package/packages</i></pre>
  * wanna upgrade a package? Well, call: <pre>:Yu <i>package/packages</i></pre>

it's simple: **less typing + less memory work + less errors = more joy** ;).

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

## Self-Promotion
If you like this plugin, you are welcome to:
* Star the repository on [GitHub](https://github.com/GabrieleLippi/yarn-vim)
* Follow me on [Twitter](http://twitter.com/gabriele_lippi) and [GitHub](https://github.com/GabrieleLippi)

## License
Distributed under the same terms as Vim itself. See `:help license`.
