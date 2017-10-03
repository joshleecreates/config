" makes _ a word boundary
set iskeyword-=_

" setup js and jsx syntax highlighting
execute pathogen#infect()

" use syntax highlighting
syntax on

" jsx for .js files
let g:jsx_ext_required = 0

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

" open new files in a new horizontal split
let g:netrw_browse_split = 2

" file browser set to 20% width of window
let g:netrw_winsize = 25
