#! /bin/sh

if ! type "git" > /dev/null; then
  echo "Please install git first."
  exit 1
fi

if ! type "stow" > /dev/null; then
  echo "Please install stow first."
  exit 1
fi

git submodule init
git submodule update
stow --target ~ bash hg tmux zsh git irb vim
