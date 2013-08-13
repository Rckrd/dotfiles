#!/bin/bash
# for headless setup. Vim, Git, TMUX, ZSH, OhMyZsh 

sudo apt-get install -y git-core

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

sudo apt-get install -y vim tmux zsh

# XClip to enable better integration with tMUX and system clipboard
sudo apt-get install -y xclip

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


sudo apt-get install libx11-dev
