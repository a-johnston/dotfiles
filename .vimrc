" Plugins
"
" ctrlp.vim/
" nerdtree/
" python-syntax/
" supertab/
" syntastic/
" vim-airline/
" vim-airline-themes/
" vim-fugitive/

set nocp
execute pathogen#infect()

syntax on
set background=dark
colorscheme radicalgoodspeed
"colorscheme gruvbox
set number
highlight Comment cterm=italic
set mouse=a

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
let g:syntastic_python_checkers=['python']


let g:airline#extensions#tabline#enabled = 1

nnoremap <silent> <C-l> :nohl<CR><C-l>

nnoremap <silent> <C-m> :bnext<CR>
nnoremap <silent> <C-n> :bprevious<CR>
nnoremap <silent> <S-w> :bd<CR>
nnoremap <silent> <S-q> :q<CR>

nnoremap <silent> <S-c> :SyntasticCheck<CR>
map <S-n> :NERDTreeToggle<CR>
map <S-f> :NERDTreeFind<CR>
map <C-s> :set spell!<CR>

set splitbelow
set splitright

let mapleader = ','

set encoding=utf-8

" air-line
let g:airline_powerline_fonts = 1
"let g:airline_theme="raven"
"let g:airline_theme="badwolf"
"let g:airline_theme="luna"

set timeoutlen=1000 ttimeoutlen=0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/__pycache__/*,*/.*/*,*.pyc

" Avoid e173
if argc() > 1
   silent blast
   silent bfirst
endif
