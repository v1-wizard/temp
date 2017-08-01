set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'           " let Vundle manage Vundle, required
Plugin 'majutsushi/tagbar'              " Cool tagbar

" Code/project navigation
Plugin 'scrooloose/nerdtree' 	    	" Project and file navigation
Plugin 'python-mode/python-mode'	" Support for python features

" Other
Plugin 'vim-airline/vim-airline'        " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes' " Themes for airline

call vundle#end()
filetype on
filetype plugin on
filetype plugin indent on

" Open nerdtree on startup vim without file
autocmd StdinReadPre * let s:std_in=1 " Open nerdtree on startup vim without file
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Line numbers on
set number

" Set color theme
set t_Co=256
syntax enable
set background=dark
colorscheme distinguished

" Set config for nerdtree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden = 1

" Set config for python-mode
" TODO
