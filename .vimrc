execute pathogen#infect()

syntax on
au BufNewFile,BufRead *.zsh-theme set filetype=zsh
set omnifunc=syntaxcomplete#Complete

set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set backspace=indent,eol,start

set number
set hlsearch
colors delek

set clipboard=unnamed
set mouse=a

map <C-n> :NERDTreeToggle<CR>
