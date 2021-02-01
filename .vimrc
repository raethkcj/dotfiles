let s:uname = system("uname -s")

if s:uname == "Darwin\n"
	set clipboard=unnamed
endif

if s:uname == "Linux\n"
	set clipboard=unnamedplus
endif

" Load pathogen plugins in ~/.vim/bundle
execute pathogen#infect()

" Turn on syntax highlighting
syntax on
" Enable syntax highlighting in oh-my-zsh themes
au BufNewFile,BufRead *.zsh-theme set filetype=zsh
" Enable autocompletion with ^X^O (^N, ^P to navigate)
set omnifunc=syntaxcomplete#Complete

set shiftwidth=2
set tabstop=2
set softtabstop=2
set smartindent
filetype indent on
set backspace=indent,eol,start
set nofixendofline

" Turn on line numbers
set number
" Highlight search results
set hlsearch
" Set colorscheme
colors raethkcj

" Disable whitespace changes in vimdiff
" set diffopt+=iwhite
if &diff
	set foldcolumn=1
endif

" Set F10 hotkey for displaying current token's syntax highlight ID
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
			\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
			\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Enable mouse scrolling and selecting in visual mode
set mouse=a
" Fix mouse support within tmux
set ttymouse=xterm2
" Enable mouse mode in nerdtree
let g:NERDTreeMouseMode=3

" Open nerdtree at the currently opened file
function! ToggleNERDTreeFind()
	if g:NERDTree.IsOpen()
		execute ':NERDTreeClose'
	else
		execute ':NERDTreeFind'
	endif
endfunction

map <C-n> :call ToggleNERDTreeFind()<CR>
