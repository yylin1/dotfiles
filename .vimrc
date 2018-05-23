set encoding=UTF-8
set nocompatible
set number
set cursorline
set shiftwidth=4
set backspace=indent,eol,start
set completeopt=longest,menu
set tabstop=4
set softtabstop=4
set updatetime=100
set autowrite
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'c9s/vikube.vim'
  Plugin 'c9s/helper.vim'
  Plugin 'c9s/treemenu.vim'
  Plugin 'chase/vim-ansible-yaml'
  Plugin 'dgryski/vim-godef'
  Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } 
  Plugin 'itchyny/lightline.vim'
  Plugin 'kien/ctrlp.vim'
  Plugin 'kairen/onedark.vim'
  Plugin 'majutsushi/tagbar'
  Plugin 'nsf/gocode', {'rtp': 'vim/'}
  Plugin 'scrooloose/nerdtree'
  Plugin 'tpope/vim-fugitive'
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'Xuyuanp/nerdtree-git-plugin'
call vundle#end()
filetype plugin indent on

" Colors settings
colorscheme onedark
let g:onedark_termcolors=256
set term=xterm-256color

if (empty($TMUX))
  if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

if !has('gui_running')
  set t_Co=256
endif

" Key maps
" autocmd VimEnter * NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nmap <C-t> :TagbarToggle<CR>
nnoremap <silent> gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

nmap bf  :bfirst<CR>
nmap bl  :blast<CR>
nmap <   :bprev<CR>
nmap >   :bnext<CR>
nmap bd  :bdelete<CR>

nmap _  <C-w>>
nmap +  <C-w><

map <Tab> <C-w>w
map sj <C-w>j
map sk <C-w>k
map sl <C-w>l
map sh <C-w>h

" NERD Tree settings
let g:NERDTreeWinSize=25
let NERDTreeShowBookmarks=1
let NERDTreeMouseMode=2
let NERDTreeQuitOnOpen=0
let NERDTreeChDirMode=0
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeHightCursorline=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeWinPos = 'left'
let g:nerdtree_tabs_open_on_gui_startup=0
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Golang settings
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" YouCompleteMe settings
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 3
set completeopt-=preview

let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'

" TagBar settings
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" AirLine
let g:airline_theme='onedark'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

