" Visual style
"
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

" Keybinds
"
let mapleader="\<Space>"
map <Leader>y "*y
map <Leader>p "*p
map <Leader>P "*P
map <Leader>n :e ~/notes/<CR>
map <Leader><Leader> <c-^>
map <Leader>m :%s//\r/g

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>

nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR><Paste>
nnoremap <C-s> :w<CR>

inoremap {<CR> {<CR>};<Esc>O<Tab>
inoremap (<CR> (<CR>);<Esc>O<Tab>
inoremap [<CR> [<CR>];<Esc>O<Tab>
inoremap {<Space> {}<Left>
inoremap (<Space> ()<Left>
inoremap [<Space> []<Left>
inoremap '<Space> ''<Left>
inoremap "<Space> ""<Left>
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


" Special
"
let g:netrw_banner = 0
let g:netrw_list_hide= '^\.git$,^\.DS_Store$'

let g:jsx_ext_required = 0

let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
