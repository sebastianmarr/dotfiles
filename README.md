# Sebastian Marr dotfiles

These are config files to set up a command line environment the way I like it.

## Prerequisites

The dotfiles are installed via [GNU stow](http://www.gnu.org/software/stow). Install it with the package manager of your choice.
Use of zsh heavily recommended.

## Installation

	git clone git://github.com/sebastianmarr/dotfiles ~/.dotfiles
	cd ~/.dotfiles

The simple way:

    ./install.sh

The manual way:

    git submodule init
    git submodule update
    stow zsh
    stow tmux
    # etc...

Just stow every configuration you need.
