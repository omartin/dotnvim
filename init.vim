" Plugins
"
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'daviesjamie/vim-base16-lightline'
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'sheerun/vim-polyglot', {'on': 'Git'}
Plug 'jremmen/vim-ripgrep'
Plug 'moll/vim-node'
Plug 'christoomey/vim-tmux-navigator'
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()

" Visual style
"
set termguicolors
colorscheme base16-default-dark
set background=dark
syntax on
hi Pmenu guibg=#333333
lua require'colorizer'.setup()

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
" set relativenumber " never really used it
set scrolloff=3
set backspace=indent,eol,start " backspace over everything in insert mode
set showcmd
set noshowmode
set hidden
filetype plugin indent on
autocmd FileType * setlocal formatoptions-=ro
set shellcmdflag=-ic
set splitbelow
set splitright
set undofile

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

noremap <Tab> :tabnext<CR>:file<CR>
noremap <S-Tab> :tabprevious<CR>:file<CR>
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 9gt
noremap <Leader>0 :tablast<CR>
noremap <Leader>- <C-W>s
noremap <Leader>\| <C-W>v
noremap <Leader>t :tabnew<CR>
noremap <Leader>T :call Term()<CR>

tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

if has('nvim') && executable('nvr')
  let $VISUAL="nvr -cc split --remote-wait + 'set bufhidden=wipe'"
endif

" Terminal
highlight! link TermCursor Cursor
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

function! Term()
  terminal
  setlocal nonumber
  setlocal norelativenumber
  startinsert
endfunction()

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
let g:lightline.colorscheme = 'base16'

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
