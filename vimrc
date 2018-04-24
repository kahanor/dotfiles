let mapleader=","

filetype on
syntax on

call plug#begin('~/.dotfiles/vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rking/ag.vim'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'vim-scripts/indentpython.vim'
Plug 'tpope/vim-fugitive'
Plug 'Townk/vim-autoclose'
Plug 'tmhedberg/SimpylFold'
Plug 'Valloric/YouCompleteMe'

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
let python_highlighting_all=1

" enable folding
set foldmethod=indent
set foldlevel=99

" enable folding with space
nnoremap <space> za

" enable autocompletion
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

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
set clipboard=unnamedplus

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

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

