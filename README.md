# Sebastian Marr dotfiles

These are config files to set up a command line environment the way I like it. Included are config files for zsh, bash, vim, tmux, git, hg, gem and mintty.

## Prerequisites

You probably need to install Ruby on your machine, as well as rake. Use the package manager of your choice. Tested on Ruby 1.8.7 to 1.9.3.

Use of zsh heavily recommended.

## Installation

	git clone git://github.com/sebastianmarr/dotfiles ~/.dotfiles
	cd ~/.dotfiles
	rake install

You will be prompted for your name and email to use within your git and hg config. The files will be symlinked into your home folder, so they can stay contained within the git repo for easy changes.

## Environment

Tested on OS X 10.7 and Ubuntu 12.04.

Focus is on zsh configuration, so bash config is pretty minimal (but works with some completion and aliases).

## Acknowledgements

Forked from Ryan Bates. Thanks for the idea!