
" Fresh VIM using vundle
"    - created on 30.03.2017

set nocompatible
filetype off

syntax on

set background=dark
set encoding=utf-8

colorscheme desert



set ts=4
set expandtab
set shiftwidth=4
set ai

" Add additional copy to .vimbuffer (to avoid touching the clipboard)
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
map <C-p> :r ~/.vimbuffer<CR>


"
" Begin: Vundle
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Go
Plugin 'fatih/vim-go'

" Airline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" React / JSX / JS
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'

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
" let g:ale_python_pylint_options='--disable=E0401'

" Configure Airline
let g:airline_theme='jellybeans'
set laststatus=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Enable 256 colors mode
set t_Co=256

" Javascript
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx


" Erlang templates
function! Ehrl()
    r~/.vim/erl-tmpl/hrl.erl
endfunction

function! Ebrl()
    r~/.vim/erl-tmpl/brl.erl
endfunction

inoremap <C-h> <ESC>:call Ehrl()<CR>
inoremap <C-b> <ESC>:call Ebrl()<CR>


