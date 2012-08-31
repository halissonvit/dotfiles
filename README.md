Installation
=============================

Vim
------------

### [Janus](https://github.com/carlhuda/janus)

To install Janus, please use our [automatic installer](https://github.com/carlhuda/janus/blob/master/bootstrap.sh), which backs up any Vim files found in your home folder and installs Janus.

```bash
$ curl -Lo- https://bit.ly/janus-bootstrap | bash
```

To install Janus, please use our automatic installer , which backs up any Vim files found in your home folder and installs Janus.

### [Pathogen](https://github.com/tpope/vim-pathogen)

Install to `~/.vim/autoload/pathogen.vim`.  Or copy and paste:

    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -so ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

### [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized/) 

Next, move or clone the `vim-colors-solarized` directory so that it is 
    a subdirectory of the `.vim/bundle` directory.

    a. **Clone:** 

            $ cd ~/.vim/bundle
            $ git clone git://github.com/altercation/vim-colors-solarized.git
