" Encoding Setting 
set encoding=utf-8

" Enable all Python syntax highlighting features
syntax on
colorscheme desert
let python_highlight_all = 1

" Preference Configuration 
set nocompatible                    " not compatible to VI

" Default indent setting
set shiftwidth=4                    " the width of indent is set to 4 
set tabstop=4                       " the width of a TAB
set softtabstop=4                   " set the number of columns for a TAB
set expandtab                       " expand tab with spaces
set autoindent                      " auto indent
set smartindent

" for makefile noexpandtab
filetype indent on
autocmd Filetype make setlocal sts=0 noexpandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2

set ruler                           " display settings at the right-bottom of screen
set backspace=2                     " backspace can be used under insert mode
set ic                              " case insensitive mode for search
set nu                              " display line numbers
set hlsearch                        " highlisht search results 
set incsearch                       " display search result incrementally
set confirm                         " ask if there is any conflict
set history=100                     " retain 100 used instructions
set cursorline                      " display cursor position

set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]

filetype plugin on
let Tlist_Use_Right_Window=1        " position the taglist to the right of screen
let g:pydiction_location = '/Users/larry/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 3

nnoremap <F2>   :set nu!<CR>
nnoremap <F3>   :set hlsearch!<CR>
nnoremap <C-S>  :w<CR>
inoremap <C-S>  <Esc>:update<CR>
nnoremap <F1>   :TlistToggle<CR>
