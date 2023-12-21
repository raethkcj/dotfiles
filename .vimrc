let s:uname = system("uname -s")

if s:uname == "Darwin\n"
	set clipboard=unnamed
endif

if s:uname == "Linux\n"
	set clipboard=unnamedplus
endif

" Turn on syntax highlighting
syntax on
" Enable syntax highlighting in oh-my-zsh themes
au BufNewFile,BufRead *.zsh-theme set filetype=zsh
au BufNewFile,BufRead .pkgmeta set filetype=yaml
" Enable autocompletion with ^X^O (^N, ^P to navigate)
set omnifunc=syntaxcomplete#Complete

" vim-lsp configuration & keybinds
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_signs_error = {'text': '✗'}
let g:lsp_diagnostics_signs_warning = {'text': '✗'}
let g:lsp_diagnostics_signs_hint = {'text': '!'}
let g:lsp_diagnostics_signs_information = {'text': 'ℹ'}

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif

    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    " nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    " nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

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
