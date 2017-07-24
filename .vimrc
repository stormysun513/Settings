" Encoding Setting 
set encoding=utf-8


""""""""""""""""""""""""""""""
" Vundle configuration
"""""""""""""""""""""""""""""
set nocompatible                        " be iMproved, required
filetype off                            " required
set rtp+=~/.vim/bundle/Vundle.vim       " set the runtime path to include Vundle
                                        " and initialize
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
let Tlist_Use_Right_Window = 1          " move taglist window to the right
let Tlist_File_Fold_Auto_Close = 1 


""""""""""""""""""""""""""""""
" lightline setting
""""""""""""""""""""""""""""""
let g:neodark#terminal_transparent = 1  " default: 0


""""""""""""""""""""""""""""""
" NERDTree setting
""""""""""""""""""""""""""""""
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']


""""""""""""""""""""""""""""""
" Enable syntax highlight
""""""""""""""""""""""""""""""
syntax on
colorscheme neodark


""""""""""""""""""""""""""""""
" Preference Configuration 
""""""""""""""""""""""""""""""
set nocompatible                    " not compatible to VI

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


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
autocmd BufNewFile,BufRead *.cuh   set syntax=cuda


set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2


set ruler                           " display settings at the right bottom
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
nnoremap <F2>   :set nu!<CR>                " F2 toggle line number
nnoremap <F3>   :NERDTreeToggle<CR>         " F3 toggle directory tree
nnoremap <F4>   :qa<CR>                     " F4 terminate all splitted panels
nnoremap <F5>   :set hlsearch!<CR>          " F5 cancel highlight search results
nnoremap <F6>   :GitGutterSignsToggle<CR>   " F6 toggle git gutter signs


nnoremap <S-T>  :TlistToggle<CR>         " shift + T toggle taglist
nnoremap <S-Y>  :vs<CR>                  " shift + Y open a vertical panel
nnoremap <S-F>  :q<CR>                   " shift + F close the current panel
nnoremap <S-X>  :Gblame<CR>              " shift + X show changes in the file
nnoremap <S-H>  :Gdiff<CR>               " shift + H show git diff results

nnoremap <C-S>  :w<CR>                   " ctrl + S save changes (normal mode)
inoremap <C-S>  <Esc>:update<CR>         " ctrl + S save changes (edit mode)
