" Visual style
colorscheme iceberg
syntax on
highlight! link TermCursor Cursor
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

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
set hidden
filetype plugin indent on

" Keybinds
let mapleader="\<Space>"
map <Leader>y "*y
map <Leader>p "*p
map <Leader><Leader> <c-^>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>

nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>

nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR><Paste>

" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
