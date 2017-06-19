nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬,space:·
filetype on
syntax on
colorscheme molokai
set lines=35 columns=150
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
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
nnoremap <Leader><Leader> :e#<CR>
set showmatch
