" Plugins
"
call plug#begin()
" Search
Plug 'junegunn/fzf'
Plug 'jremmen/vim-ripgrep'
" Editor
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" UI
Plug 'norcalli/nvim-colorizer.lua'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'
Plug 'daviesjamie/vim-base16-lightline'
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
Plug 'liuchengxu/vim-which-key'
" Languages
Plug 'sheerun/vim-polyglot', {'on': 'Git'}
Plug 'moll/vim-node'
Plug 'rust-lang/rust.vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
" Debug
Plug 'itmammoth/maximize.vim'
Plug 'puremourning/vimspector'

" NEW CONF
" Utils
Plug 'nvim-lua/plenary.nvim'
" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
" Git
Plug 'lewis6991/gitsigns.nvim'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
" UI -> not sure
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/lsp-trouble.nvim'

call plug#end()

luafile ~/.config/nvim/lua/compe-config.lua
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Visual style
"
set termguicolors
colorscheme base16-default-dark
set background=dark
syntax on
hi Pmenu guibg=#333333
lua require('colorizer').setup()
lua require('gitsigns').setup()
lua require('nvim-web-devicons').setup()
lua require('trouble').setup()

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
set signcolumn=yes:1

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
map <Leader>rg :Rg<CR>
map <Leader>] :cnext<CR>
map <Leader>[ :cprevious<CR>

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

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

" LSP
lua require'lspconfig'.tsserver.setup{}
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

lua << EOF
local lsp = require('lspconfig')
vim.fn.sign_define('LspDiagnosticsSignError', {
  texthl = 'LspDiagnosticsSignError',
  numhl = 'LspDiagnosticsSignError',
  text = '',
})

vim.fn.sign_define('LspDiagnosticsSignWarning', {
  texthl = 'LspDiagnosticsSignWarning',
  numhl = 'LspDiagnosticsSignWarning',
  text = '',
})

vim.fn.sign_define('LspDiagnosticsSignInformation', {
  texthl = 'LspDiagnosticsSignInformation',
  numhl = 'LspDiagnosticsSignInformation',
  text = '',
})

vim.fn.sign_define('LspDiagnosticsSignHint', {
  texthl = 'LspDiagnosticsSignHint',
  numhl = 'LspDiagnosticsSignHint',
  text = '',
})
EOF
