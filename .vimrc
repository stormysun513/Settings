" Encoding Setting 
set encoding=utf-8


""""""""""""""""""""""""""""""
" Vundle configuration
"""""""""""""""""""""""""""""
set nocompatible                        " be iMproved, required
filetype off                            " required
set rtp+=~/.vim/bundle/Vundle.vim       " set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'taglist.vim'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
call vundle#end()                       " required
filetype plugin indent on               " required


""""""""""""""""""""""""""""""
" taglist configuration
"""""""""""""""""""""""""""""
let Tlist_Use_Right_Window = 1      " move taglist window to the right
let Tlist_File_Fold_Auto_Close = 1 


""""""""""""""""""""""""""""""
" lightline setting
""""""""""""""""""""""""""""""
let g:neodark#terminal_transparent = 1  " default: 0


""""""""""""""""""""""""""""""
" NERDTree setting
""""""""""""""""""""""""""""""
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

" Enable syntax highlighting features
syntax on
if &diff
    highlight DiffChange cterm=none ctermfg=black ctermbg=LightGreen gui=none guifg=bg guibg=LightGreen
    highlight DiffText cterm=none ctermfg=black ctermbg=Red gui=none guifg=bg guibg=Red
else
    colorscheme neodark
endif


""""""""""""""""""""""""""""""
" Preference Configuration 
""""""""""""""""""""""""""""""
set nocompatible                    " not compatible to VI


""""""""""""""""""""""""""""""
" Default indent setting
""""""""""""""""""""""""""""""
set shiftwidth=4                    " the width of indent is set to 4 
set tabstop=4                       " the width of a TAB
set softtabstop=4                   " set the number of columns for a TAB
set expandtab                       " expand tab with spaces
set autoindent                      " auto indent
set smartindent


""""""""""""""""""""""""""""""
" FileType tab configuration
""""""""""""""""""""""""""""""
autocmd Filetype make setlocal sts=0 noexpandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2


set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2


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


""""""""""""""""""""""""""""""
" Short-cut settings
""""""""""""""""""""""""""""""
nnoremap <F2>   :set nu!<CR>
nnoremap <F3>   :NERDTreeToggle<CR>
nnoremap <F4>   :qa<CR>
nnoremap <F6>   :set hlsearch!<CR>
nnoremap <F7>   :GitGutterSignsToggle<CR>
nnoremap <S-T>  :TlistToggle<CR>
nnoremap <S-Y>  :vs<CR>
nnoremap <S-F>  :q<CR>
nnoremap <S-G>  :Gblame<CR>
nnoremap <S-H>  :Gdiff<CR>
nnoremap <C-S>  :w<CR>
inoremap <C-S>  <Esc>:update<CR>
