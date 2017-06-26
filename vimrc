set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'rakr/vim-one'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader=","
" toggle show invisibles
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬,space:·
set colorcolumn=90
set number
" Re-source vimrc
map <leader>s :source ~/.vimrc<CR>
set hidden
set history=100
set background=dark
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set autoindent
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
" Search related stuff
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap ; :
" Save file after losing focus
au FocusLost * :wa
" Remove white space on save
autocmd BufWritePre * :%s/\s\+$//e
" Switch between the last two files
nnoremap <leader><leader> <c-^>
" Copy current file path to system pasteboard
nmap cp :let @* = expand("%")<CR>
" File tree browser
map \           :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>
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
" Move between splits with CTRL + hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
" Open .vimrc in vertically split pane
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
" Get out of normal mode with jj
inoremap jj <ESC>
" CtrlP
let g:ctrlp_map = '<leader>f'

" https://github.com/kien/ctrlp.vim/issues/174
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
let g:one_allow_italics = 1
colorscheme one
set background=dark
let g:jsx_ext_required = 0
let g:airline_theme='one'
" Pad comment delimeters with spaces
let NERDSpaceDelims = 1
" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle
map <D-/>       <plug>NERDCommenterToggle
imap <D-/>      <Esc><plug>NERDCommenterToggle i
