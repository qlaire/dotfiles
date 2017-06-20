set nocompatible
let mapleader=","
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬,space:·
filetype on
syntax on
colorscheme molokai
set columns=150
set colorcolumn=90
set number
map <leader>s :source ~/.vimrc<CR>
set hidden
set history=100
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
autocmd BufWritePre * :%s/\s\+$//e
set hlsearch
nnoremap <Leader><Leader> :e#<CR>
set showmatch
" Clears the search register
nnoremap <silent> <leader>/ :nohlsearch<CR>
" Copy current file path to system pasteboard
nmap cp :let @" = expand("%")
