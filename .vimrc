set encoding=utf-8
set nocompatible
colorscheme onedark
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
  Bundle 'https://github.com/fatih/vim-go'
  Bundle 'chase/vim-ansible-yaml'
  Bundle 'tpope/vim-fugitive'
  Plugin 'dgryski/vim-godef'
  Plugin 'nsf/gocode', {'rtp': 'vim/'}
  Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

set completeopt=longest,menu

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
