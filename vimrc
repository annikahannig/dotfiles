
" Fresh VIM using vundle
"    - created on 30.03.2017

set nocompatible
filetype off

syntax on

set background=dark
set encoding=utf-8

set ts=4
set expandtab
set shiftwidth=4
set ai

" Use system clipboard
set clipboard=unnamed


"
" Begin: Vundle
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'

call vundle#end()
"
" End: Vundle
"


let python_highlight_all = 1

highlight BadWhitespace ctermbg=red guibg=darkred

"
" Begin: Autocommands
"
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.js,*.jsx match BadWhitespace /\s\+$/

" Python:
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |


au BufRead,BufNewFile Makefile
    \ set noexpandtab
"
" End Autocommands
"

" Configure ALE
let g:ale_python_pylint_options='--disable=E0401'

" Configure Airline
let g:airline_theme='jellybeans'
set laststatus=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Enable 256 colors mode
set t_Co=256
