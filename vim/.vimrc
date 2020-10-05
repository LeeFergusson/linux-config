" ==============================================================================
"  Filename: .vimrc
"  Author:   Lee Fergusson
" ------------------------------------------------------------------------------ 

" ====================================================================
" Basic congfiguration
" --------------------------------------------------------------------
let mapleader = " "
filetype plugin indent on
syntax on
set shortmess=I
set number
set encoding=utf-8
set clipboard=unnamedplus
set spelllang=en_gb
set splitbelow
set splitright
set laststatus=2
set noshowmode
colorscheme nord

"=====================================================================
" Custom Key Bindings 
"---------------------------------------------------------------------
inoremap jk <ESC>
nnoremap <leader>f 1z=
nnoremap <leader>s :set spell!<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ====================================================================
" Plugin Congiguration
" --------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

" Editor modifications -------------------------------------
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'arcticicestudio/nord-vim'
" Git integration ------------------------------------------
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Autocompletion / Linting ---------------------------------
Plug 'valloric/youcompleteme'
Plug 'w0rp/ale'
" Language specific plugins --------------------------------
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'

call plug#end()

" Lightline configuration ----------------------------------
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
" Plugin Key Bindings --------------------------------------
map <C-p> :NERDTreeToggle<CR>
