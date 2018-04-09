"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM configuration File
" Description: VIM setting for software development on Linux platform
" Author: Larry Tsai <stormysun513@gmail.com>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" Default setting
""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set nocompatible
set ruler                           	" display settings at the right bottom
set cursorline                      	" display cursor position
set number                              " display line numbers
set history=100                     	" retain 100 used instructions
set hlsearch                        	" highlisht search results
set incsearch                       	" display search result incrementally
syntax on


""""""""""""""""""""""""""""""
" Vundle configuration
""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim       " set the runtime path to include Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
Plugin 'taglist.vim'
call vundle#end()                       " required


""""""""""""""""""""""""""""""
" NERDTree setting
""""""""""""""""""""""""""""""
let NERDTreeIgnore=['\.DS_Store', '\.swp']


""""""""""""""""""""""""""""""
" lightline setting
""""""""""""""""""""""""""""""
set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'active': {
	\ 	'left': [ [ 'mode', 'paste' ],
	\ 		[ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\ 	'gitbranch': 'fugitive#head'
	\ },
	\ }


""""""""""""""""""""""""""""""
" taglist configuration
"""""""""""""""""""""""""""""
let Tlist_Use_Right_Window = 1          " move taglist window to the right
let Tlist_WinWidth = 45
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Show_One_File = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1

""""""""""""""""""""""""""""""
" Indentation setting
""""""""""""""""""""""""""""""
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

""""""""""""""""""""""""""""""
" Keyboard shortcuts setting
""""""""""""""""""""""""""""""

nnoremap <F2>   :w<CR>                  " ctrl + S save changes (normal mode)
inoremap <F2>   <Esc>:w<CR>       	" ctrl + S save changes (edit mode)
nnoremap <F3>   :NERDTreeToggle<CR>     " F2 toggle directory tree
nnoremap <F8> 	:TlistToggle<CR>	" F8 toggle taglist
nnoremap <S-F>  :q<CR>                  " shift + F close the current panel
nnoremap <S-A>  :qa<CR>                 " ctrl + shift + F close the current panel


""""""""""""""""""""""""""""""""""
" Add Cscope Database if exists
""""""""""""""""""""""""""""""""""
if has("cscope") && filereadable("/usr/bin/cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
        " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif
