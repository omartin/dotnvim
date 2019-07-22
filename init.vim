" Visual style
"
set termguicolors
"colorscheme jellybeans
"colorscheme nord
"colorscheme hybrid
colorscheme gruvbox
set background=dark
syntax on
highlight! link TermCursor Cursor
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

" Editor set tabstop=4
"
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
set list
set showmatch
set incsearch
set hlsearch
set ignorecase smartcase
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
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <Leader>m :NERDTreeToggle<CR>
map <Leader>n :NERDTreeFind<CR>

tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>

nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR><Paste>
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

" YCM
"
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_min_num_identifier_candidate_chars = 3
let g:ycm_enable_diagnostic_highlighting = 0
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" Misc
"
let g:jsx_ext_required = 0
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
let g:vimwiki_list = [{'path':'~/Dropbox/NOTES/wiki', 'syntax': 'markdown', 'path_html':'~/Dropbox/NOTES/wiki/html/'}]

let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

