set number

call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'machakann/vim-highlightedyank'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'rust-lang/rust.vim'
Plug 'vifm/vifm.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

let g:deoplete#enable_at_startup = 1

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0
"
" " open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

let g:neomake_python_enabled_makers = ['flake8']
call neomake#configure#automake('nrwi', 500)

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" Set the filetype based on the file's extension, overriding any
" 'filetype' that has already been set
au BufRead,BufNewFile calcurse-note* set filetype=markdown

" Move between tabs
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t>h :tabp<cr>
map <C-t>l :tabn<cr>

" Move between windows
nnoremap <M-J> <C-W>j
nnoremap <M-K> <C-W>k
nnoremap <M-L> <C-W>l
nnoremap <M-H> <C-W>h

set clipboard+=unnamedplus

:set colorcolumn=79

let g:rustfmt_autosave = 1

