filetype off 
set nocompatible

"set runtime path to include vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"plugins go here
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'   
Plugin 'mattn/emmet-vim'
Plugin 'lervag/vimtex'
"Plugin 'vim-zenmode'

"everything before here
call vundle#end()
filetype plugin indent on

"enable folding

set foldmethod=indent
set foldlevel=99

"sintax higlight
syntax enable

"colorschemes, uncomment to activate material color

"colorscheme material

set ruler

"enable folding with spacebar
nnoremap <space> za

"add pythonesque indentation
au BufNewFile,BufRead *.py
    \ setlocal tabstop=4
    \| setlocal softtabstop=4
    \| setlocal shiftwidth=4
    \| setlocal textwidth=79
    \| setlocal expandtab
    \| setlocal autoindent
    \| setlocal fileformat=unix

"add html, javascript and css indentation
au BufNewFile,BufRead *.js, *.html, *.css
    \ setlocal tabstop=2
    \| setlocal softtabstop=2
    \| setlocal shiftwidth=2

"set encoding
set encoding=utf-8

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF
":endif
"
"let python_highlight_all=1
"syntax on

"ignore .pyc files in nerdthree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"enable line numbering
set nu

"remap esc
inoremap jk <esc> 
inoremap kj <esc>

"map "as nerdthree opener

map " :NERDTreeToggle<CR>

"powerline sets
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Always show statusline
 set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256
"colours)
 set t_Co=256

 "show line under cursor
 
 set cursorline
 
 "show matching brakets
 
 set showmatch
 
 "zenmode
let g:zenmode_background = "dark"
let g:zenmode_colorscheme = "material"
let g:zenmode_font ="Cousine 12"
