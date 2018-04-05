let mapleader=","

filetype on
syntax on

call plug#begin('.dotfiles/vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rking/ag.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'vim-scripts/indentpython.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

set background=dark
colorscheme gruvbox
set laststatus=2
let g:palenight_terminal_italics=1

if (has("termguicolors"))
    set termguicolors
endif

set guifont="Meslo LG"\ Regular:h18
set colorcolumn=80
set number
set relativenumber
set hidden
set history=100

filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
autocmd BufWritePre * :%s/\s\+$//e
set incsearch
set showmatch

set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

map <leader>s :source $MYVIMRC<CR>

