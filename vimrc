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
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
set autoindent
set sw=4 "intendation size
set showcmd
set guifont=Monoid:h16 
let g:vimwiki_list = [
                        \{'path': '~/Dropbox/AllKnowledgeAndWisdom', 'syntax': 'markdown'},
                        \{'path': '~/Dropbox/SelfEmployment', 'syntax': 'markdown', 'ext': '.markdown'},
                        \{'path': '~/Documents/dev/repos/einmaleins/docs/wiki', 'syntax': 'markdown', 'ext': '.markdown'}, 
                        \{'path': '~/Documents/dev/repos/quadlasers/docs/wiki', 'syntax': 'markdown', 'ext': '.markdown'}, 
                        \{'path': '~/Dropbox/WorldOfKeft', 'syntax': 'markdown'}
                \]
set foldenable
let g:vimwiki_folding = 'expr'
let g:vimwik_hl_headers=1
set incsearch
set hlsearch
set autowrite
hi VimwikiHeader1 gui=underline,bold guifg=#04b0f9 
hi VimwikiHeader2 gui=bold guifg=#3220d8
hi VimwikiHeader3 gui=bold guifg=#3e2d59
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>
