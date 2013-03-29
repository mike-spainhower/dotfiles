"ui
set ruler
set nu
syntax enable

"colors
colorscheme koehler

"text/tab
set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

set ai
set si
set wrap

"pathogen
call pathogen#infect()
syntax on
filetype plugin indent on

"filetype specific
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent
