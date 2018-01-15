set encoding=utf-8
set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'c9s/helper.vim'
  Plugin 'c9s/treemenu.vim'
  Plugin 'c9s/vikube.vim'
  Plugin 'c9s/hypergit.vim'
  Bundle 'https://github.com/scrooloose/nerdtree'
  Plugin 'dracula/dracula-theme', {'rtp': 'vim/'}
  Bundle 'https://github.com/fatih/vim-go'
  Bundle 'chase/vim-ansible-yaml'
  Bundle 'tpope/vim-fugitive'
  Plugin 'dgryski/vim-godef'
  Plugin 'nsf/gocode', {'rtp': 'vim/'}
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'dracula/vim'
call vundle#end()
filetype plugin indent on

set completeopt=longest,menu

