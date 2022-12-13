call plug#begin()

Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dag/vim-fish'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'

call plug#end()

set nocp

syntax on
set background=dark
colorscheme gruvbox
" colorscheme radicalgoodspeed
set number
highlight Comment cterm=italic

set hlsearch
set incsearch
set ignorecase
set smartcase
set lazyredraw

set autoindent

set backspace=indent,eol,start
set ruler

set shiftwidth=4
set softtabstop=4
set expandtab

set laststatus=2


let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

nnoremap <silent> <C-l> :nohl<CR><C-l>

nnoremap <silent> <C-m> :bnext<CR>
nnoremap <silent> <C-n> :bprevious<CR>
nnoremap <silent> <S-w> :bd<CR>
nnoremap <silent> <S-q> :q<CR>

map <S-n> :NERDTreeToggle<CR>
map <S-f> :NERDTreeFind<CR>
map <C-s> :set spell!<CR>

map <C-f> :GFiles<CR>

set splitbelow
set splitright

let mapleader = ','
set mouse=n

set encoding=utf-8

set timeoutlen=1000 ttimeoutlen=0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/__pycache__/*,*/.*/*,*.pyc

" Avoid e173
if argc() > 1
   silent blast
   silent bfirst
endif
