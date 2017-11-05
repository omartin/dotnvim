" Visual style
colorscheme iceberg
syntax on

" Editor set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set showmatch
set incsearch
set hlsearch
set ignorecase smartcase
set cursorline
set number
set relativenumber 
set scrolloff=3
" backspace over everything in insert mode
set backspace=indent,eol,start 
set showcmd
set noshowmode
filetype plugin indent on

" Keybinds
let mapleader="\<Space>"
map <leader>y "*y
map <leader>p "*p
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
