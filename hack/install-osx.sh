#!/bin/bash
#
# Install deps.
# Release: Kyle Bai

set -eu

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install zshrc and common tools
brew install zsh-syntax-highlighting hub antigen tmux
curl https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts && ./install.sh
cd .. && rm -rf fonts

# Install and setup Vim
brew install vim --with-override-system-vim
brew install macvim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable

# Install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
