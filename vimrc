set nocompatible
execute pathogen#infect()
filetype plugin indent on
syntax on
augroup XML
    autocmd!
    autocmd FileType *     set      formatoptions=tcql 
    autocmd FileType xml   setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
    autocmd FileType c,cpp set      formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://
augroup END
set autoindent
set sw=4 "intendation size
set showcmd
set guifont=Hack:h16 
let g:vimwiki_list = [
                        \{'path': '~/Dropbox/AllKnowledgeAndWisdom', 'syntax': 'markdown'},
                        \{'path': '~/Documents/dev/repos/einmaleins/docs/wiki', 'syntax': 'markdown', 'ext': '.markdown'}, 
                        \{'path': '~/Dropbox/WorldOfKeft', 'syntax': 'markdown'}
                \]
set foldenable
let g:vimwiki_folding = 'expr'
set incsearch
set hlsearch
set autowrite
