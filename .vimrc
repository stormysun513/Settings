" Encoding Setting 
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp950

" Preference Configuration 
syntax on
set nocompatible                    " not compatible to VI

" Default indent setting
set shiftwidth=4                    " width of indent: 4 
set tabstop=4                       " number of characters for tab
set softtabstop=4
set expandtab                       " expand tab with spaces
set autoindent                      " auto indent
filetype indent on

" for makefile noexpandtab
autocmd Filetype make setlocal sts=0 noexpandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2

set ruler                           " display settings at the right-bottom of screen
set backspace=2                     " backspace can be used under insert mode
set ic                              " case insensitive mode for search
set nu                              " display line numbers
set hlsearch                        " highlisht search results 
set incsearch                       " display search result incrementally
set smartindent
set confirm                         " ask if there is any conflict
set history=100                     " retain 100 used instructions
set cursorline                      " display cursor position

set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]

colorscheme desert
nnoremap <F2>  :set nu!<CR>
nnoremap <C-S> :w<CR>
inoremap <C-S> <Esc>:update<CR>
