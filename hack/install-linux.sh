#!/bin/bash
#
# Setup linux deps.
# Release: Kyle Bai

sudo add-apt-repository -y ppa:gnome-terminator
sudo apt-get update && sudo apt-get install -y terminator zsh

cd
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
