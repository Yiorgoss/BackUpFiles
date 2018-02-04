set nocompatible
filetype off
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let vundle handle vundle
Plugin 'gmarik/Vundle.vim'

call vundle#end()
filetype plugin indent on

" tabcompletion
set wildmode=longest,list,full
set wildmenu

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Foldign
set foldmethod=indent
set foldlevel=99

" Fold with space bar
nnoremap <space> za

syntax on
set nu
set clipboard=unnamed
set backspace=indent,eol,start

set hidden
set nowrap
set showmatch
set hlsearch
set incsearch
set nobackup
set noswapfile

set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fold handle, python autoindent. python autocompete
" check syntax, PEP8 check, colorscheme-zenburn
" NERDtree, tab-NERDtree, ctrlp
" powerline
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"call plug#begin('~/.vim/plugged')
"Plug 'powerline/powerline'
"call plug#end()
let g:powerline_pycmd="py3"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PYTHON
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"you-complete-me custom settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_path_to_python_interpreter = '/usr/bin/python2'
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"""""""""""""""""""""""""""""""""""
"python with virtualenv support

py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
	project_vase_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF

" hide .pyc files from nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] 

let python_highlight_all=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END PYTHON
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.js, *.html, *.css
	\ set tabstop=2
	\ set softtabstop=2
	\ set shiftwidth=2
