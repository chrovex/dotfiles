" color scheme
set termguicolors
colorscheme dracula

" relative line number 
set relativenumber

" set clipboard to primary(*) and system(+)
set clipboard=unnamed,unnamedplus

" enable syntax highlighting
filetype indent on
filetype plugin indent on
syntax on

" key bindings
nnoremap i <up>
nnoremap j <left>
nnoremap k <down>
nnoremap l <right>
nnoremap h <insert>

cnoremap w!! w !sudo tee %

let mapleader = ";"
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>