local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

map('n', '<Leader><Leader>', '<c-^>')   -- Quickly go back to previous buffer

-- map <Leader>y "*y
-- map <Leader>p "*p
-- map <Leader>P "*P
-- map <Leader>K <C-w>K
-- map <Leader>H <C-w>H
-- map <Leader>m :NERDTreeToggle<CR>
-- map <Leader>n :NERDTreeFind<CR>
-- map <Leader>rg :Rg<CR>
-- map <Leader>] :cnext<CR>
-- map <Leader>[ :cprevious<CR>
-- 
-- nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
-- 
-- noremap <Tab> :tabnext<CR>:file<CR>
-- noremap <S-Tab> :tabprevious<CR>:file<CR>
-- noremap <Leader>1 1gt
-- noremap <Leader>2 2gt
-- noremap <Leader>3 3gt
-- noremap <Leader>4 4gt
-- noremap <Leader>5 5gt
-- noremap <Leader>6 6gt
-- noremap <Leader>7 7gt
-- noremap <Leader>8 8gt
-- noremap <Leader>9 9gt
-- noremap <Leader>0 :tablast<CR>
-- noremap <Leader>- <C-W>s
-- noremap <Leader>\| <C-W>v
-- noremap <Leader>t :tabnew<CR>
-- noremap <Leader>T :call Term()<CR>
-- 
-- tnoremap <Esc> <C-\><C-n>
-- tnoremap <C-v><Esc> <Esc>
-- 
-- nnoremap <C-s> :w<CR>
-- inoremap <C-s> <Esc>:w<CR>
-- nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
