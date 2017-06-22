set nocompatible
let mapleader=","
" toggle show invisibles
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬,space:·
filetype on
syntax on
colorscheme molokai
set colorcolumn=90
set number
" Re-source vimrc
map <leader>s :source ~/.vimrc<CR>
set hidden
set history=100
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
" Remove white space on save
autocmd BufWritePre * :%s/\s\+$//e
set incsearch     " do incremental searching
set hlsearch
" Switch between the last two files
nnoremap <leader><leader> <c-^>
set showmatch
" Clears the search register
nnoremap <silent> <leader>// :nohlsearch<CR>
" Copy current file path to system pasteboard
nmap cp :let @* = expand("%")<CR>
" Navigate tabs with alt keys
map ¡ 1gt
map ™ 2gt
map £ 3gt
map ¢ 4gt
map ∞ 5gt
map § 6gt
map ¶ 7gt
map • 8gt
map ª 9gt
map º :tablast<CR>
" Scroll through tabs with Alt + [ and Alt + ]
map “ gT
map ‘ gt
" Move between splits with Alt + hjkl
nmap ˙ <C-w><Left>
nmap ¬ <C-w><Right>
nmap ˚ <C-w><Up>
nmap ∆ <C-w><Down>
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
set backspace=2   " Backspace deletes like most programs in insert mode
