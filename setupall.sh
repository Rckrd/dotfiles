#!/bin/bash
# for headless setup. Vim, Git, TMUX, ZSH, OhMyZsh 

# Install nvm: node-version manager
# https://github.com/creationix/nvm
sudo apt-get install -y git-core
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# Load nvm and install latest production node
# source $HOME/.nvm/nvm.sh
# nvm install v0.10.12
# nvm use v0.10.12

# installing Node JS according to node js site
sudo apt-get update
sudo apt-get install python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Install emacs24
# https://launchpad.net/~cassou/+archive/emacs
# sudo apt-add-repository -y ppa:cassou/emacs
# sudo apt-get update
# sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg
sudo apt-get install -y vim tmux zsh

# git pull and install dotfiles as well
# cd $HOME
# if [ -d ./dotfiles/ ]; then
#     mv dotfiles dotfiles.old
# fi
# if [ -d .emacs.d/ ]; then
#     mv .emacs.d .emacs.d~
# fi

# oh my ZSH!
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | s

# vim config
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh

# create symlinks
ln -sb dotfiles/.vimrcc.local .
ln -sb dotfiles/.vimrc.bundles.local
ln -sb dotfiles/.tmux.conf
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sf dotfiles/.zshrc .


