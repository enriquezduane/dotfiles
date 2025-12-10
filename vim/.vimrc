set nocompatible
filetype plugin indent on
syntax on

" Quality of Life
set backspace=indent,eol,start
set wildmenu
set wildmode=list:longest
set scrolloff=8
set rnu
set mouse=a

" Search & Indent
set incsearch hlsearch
set ignorecase smartcase
set tabstop=4 shiftwidth=4
set expandtab

" Mappings
let mapleader = " "

" Clear search highlight (Space + /)
nnoremap <leader>/ :nohlsearch<CR>

" Window Navigation (Ctrl + h/j/k/l)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
