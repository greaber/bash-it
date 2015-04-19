inoremap jk <ESC>
let mapleader = ","

execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
syntax on

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

set encoding=utf-8

let g:solarized_termtrans = 1
set background=light
colorscheme solarized

set linebreak
"set list

noremap j gj
noremap k gk

set ignorecase

set expandtab
set shiftwidth=4
set softtabstop=4
