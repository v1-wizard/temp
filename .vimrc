set nocompatible
filetype off

"=====================================================
" Vundle settings
"=====================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'		        " let Vundle manage Vundle, required

"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree' 	    	" Project and file navigation
Plugin 'majutsushi/tagbar'          	" Class/module browser

"------------------=== Other ===----------------------
Plugin 'vim-airline/vim-airline'   	    	" Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes' " Themes for airline
Plugin 'fisadev/FixedTaskList.vim'  	" Pending tasks list
Plugin 'rosenfeld/conque-term'      	" Consoles as buffers
Plugin 'tpope/vim-surround'	   	        " Parentheses, brackets, quotes, XML tags, and more

"--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'		    " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'	" dependencies #1
Plugin 'tomtom/tlib_vim'		        " dependencies #2
Plugin 'honza/vim-snippets'		        " snippets repo

"---------------=== Languages support ===-------------
" --- Python ---
Plugin 'klen/python-mode'	            " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim' 		    " Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'		    " Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

call vundle#end()            		    " required
filetype on
filetype plugin on
filetype plugin indent on


"=====================================================
" General settings
"=====================================================
set backspace=indent,eol,start
aunmenu Help.
aunmenu Window.
let no_buffers_menu=1
set mousemodel=popup

set ruler
set completeopt-=preview
set gcr=a:blinkon0
if has("gui_running")
  set cursorline
endif
set ttyfast

colo desert
set guifont=Consolas:h13

syntax on
autocmd vimenter * TagbarToggle
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif

tab sball
set switchbuf=useopen

set visualbell t_vb=
set novisualbell

set enc=utf-8
set fileencodings=utf-8
set ls=2
set incsearch
set hlsearch
set nu
set scrolloff=5

set nobackup 	     " no backup files
set nowritebackup    " only in case you don't want a backup file while editing
set noswapfile 	     " no swap files


set guioptions-=T


set smarttab
set tabstop=8

augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END

let g:snippets_dir = "~/.vim/vim-snippets/snippets"

set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:tagbar_autofocus = 0

let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']

map <F2> :TaskList<CR>
map <C-q> :bd<CR>

"=====================================================
" Python-mode settings
"=====================================================
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

let g:pymode_doc = 0
let g:pymode_doc_key = 'K'

let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"

let g:pymode_lint_write = 1

let g:pymode_virtualenv = 1

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

let g:pymode_folding = 0

let g:pymode_run = 0

"=====================================================
" Jedi-vim settings
"=====================================================
let g:jedi#popup_select_first = 0

"=====================================================
" Nerdthree settings
"=====================================================
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

