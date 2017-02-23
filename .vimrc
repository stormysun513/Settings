" Encoding Setting 
set encoding=utf-8


" Vundle configuration
set nocompatible                    " be iMproved, required
filetype off                        " required
set rtp+=~/.vim/bundle/Vundle.vim   " set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'taglist.vim'
Plugin 'dracula/vim'
call vundle#end()                   " required
filetype plugin indent on           " required

let Tlist_Use_Right_Window = 1      " move taglist window to the right
let Tlist_File_Fold_Auto_Close = 1 

" Enable syntax highlighting features
syntax on
if &diff
    highlight DiffChange cterm=none ctermfg=black ctermbg=LightGreen gui=none guifg=bg guibg=LightGreen
    highlight DiffText cterm=none ctermfg=black ctermbg=Red gui=none guifg=bg guibg=Red
else
    " colorscheme desert
    color dracula
endif


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
set nowrap 
set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]


" short-cut settings
nnoremap <F2>   :set nu!<CR>
nnoremap <F3>   :NERDTreeToggle<CR>
nnoremap <F4>   :qa<CR>
nnoremap <F5>   :GitGutterSignsToggle<CR>
nnoremap <F6>   :set hlsearch!<CR>
nnoremap <S-T>  :TlistToggle<CR>
nnoremap <C-S>  :w<CR>
inoremap <C-S>  <Esc>:update<CR>
