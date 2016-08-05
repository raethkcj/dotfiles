execute pathogen#infect()

syntax on
au BufNewFile,BufRead *.zsh-theme set filetype=zsh
set omnifunc=syntaxcomplete#Complete

set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
filetype indent on
set backspace=indent,eol,start

set number
set hlsearch
colors delek

set clipboard=unnamed
set mouse=a
set ttymouse=xterm2
let g:NERDTreeMouseMode=3

function! ToggleNERDTreeFind()
    if g:NERDTree.IsOpen()
        execute ':NERDTreeClose'
    else
        execute ':NERDTreeFind'
    endif
endfunction

map <C-n> :call ToggleNERDTreeFind()<CR>
