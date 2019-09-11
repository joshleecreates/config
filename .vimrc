" makes _ a word boundary
set iskeyword-=_

" use syntax highlighting
syntax on

" change tabs 
nnoremap H gT
nnoremap L gt

" show line numbers
set number

" spaces for tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" autoindent settings
set smartindent

" remove banner on file browser
let g:netrw_banner = 0

" file browser set to 20% width of window
let g:netrw_winsize = 25
