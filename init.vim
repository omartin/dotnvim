" Plugins
"
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'junegunn/fzf'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot', {'on': 'Git'}
Plug 'jremmen/vim-ripgrep'
Plug 'moll/vim-node'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Visual style
"
set termguicolors
colorscheme gruvbox
set background=dark
syntax on

" Editor
"
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set list
set showmatch
set incsearch
set hlsearch
set smartcase
set cursorline
set number
set relativenumber
set scrolloff=3
set backspace=indent,eol,start " backspace over everything in insert mode
set showcmd
set noshowmode
set hidden
filetype plugin indent on
autocmd FileType * setlocal formatoptions-=ro
set shellcmdflag=-ic

" Keybinds
"
let mapleader="\<Space>"
map <Leader>y "*y
map <Leader>p "*p
map <Leader>P "*P
map <Leader><Leader> <c-^>
map <Leader>K <C-w>K
map <Leader>H <C-w>H
map <Leader>m :NERDTreeToggle<CR>
map <Leader>n :NERDTreeFind<CR>

tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" Clear the search buffer when hitting return
"
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()

if has('nvim') && executable('nvr')
  let $VISUAL="nvr -cc split --remote-wait + 'set bufhidden=wipe'"
endif

" NERDTree
"
let NERDTreeIgnore = ['^node_modules$']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1

" Misc
"
let g:jsx_ext_required = 0
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

" CoC config
"
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-json', 
  \ ]

source ~/.nvim/coc.vim
