call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dag/vim-fish'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

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
set smartindent
set autoindent

set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

nnoremap <silent> <C-l> :nohl<CR><C-l>

nnoremap <silent> <C-m> :bnext<CR>
nnoremap <silent> <C-n> :bprevious<CR>
nnoremap <silent> <S-w> :bd<CR>
nnoremap <silent> <S-q> :q<CR>

nnoremap <C-s> :set spell!<CR>
nnoremap <C-x> :RG<space>

nnoremap <C-f> :Files<CR>

nnoremap <F1> :LspNextDiagnostic<CR>
nnoremap <F2> :LspRename<CR>
nnoremap <F3> :LspDefinition<CR>

set splitbelow
set splitright

let mapleader = ','
set mouse=n

set encoding=utf-8

set timeoutlen=1000 ttimeoutlen=0

let g:lsp_settings_servers_dir = '/Users/adam/.config/vim-lsp-servers/'
let g:lsp_document_code_action_signs_hint = {'text': ' '}


" let g:lsp_settings = {
" \   'pylsp-all': {
" \     'workspace_config': {
" \       'pylsp': {
" \         'configurationSources': ['flake8']
" \       }
" \     }
" \   },
" \}
" let g:lsp_settings_filetype_python = ["pylsp-all", "ruff", "ty"]
let g:lsp_settings_filetype_python = ["ruff", "ty"]

set scl=no

" Avoid e173
if argc() > 1
   silent blast
   silent bfirst
endif

