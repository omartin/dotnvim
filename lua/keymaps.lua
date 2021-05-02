local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Misc
map('n', '<Leader><Leader>', '<c-^>') -- Quickly go back to previous buffer
map('n', '<Leader>q', ':q<CR>') -- Close buffer
map('n', '<Esc><Esc>', '<Esc>:nohlsearch<CR><Esc>') -- Hide search highlight

-- System clipboard
map('n', '<Leader>y', '"*y') -- Yank into system's clipboard
map('n', '<Leader>p', '"*p') -- Paste from system's clipboard

-- Splits
map('n', '<Leader>-', '<C-W>s') -- Split horizontal
map('n', '<Leader>|', '<C-W>v') -- Split vertical

--Tabs
map('n', '<Leader>t', ':tabnew<CR>') -- New tab
map('n', '<Tab>', ':tabnext<CR>:file<CR>') -- Next tab
map('n', '<S-Tab>', ':tabprevious<CR>:file<CR>') -- Previous tab

-- To be replaced
map('n', '<C-p>', ':FZF<CR>')
map('n', '<Leader>m', ':NERDTreeToggle<CR>')
map('n', '<Leader>n', ':NERDTreeFind<CR>')

-- QQQ
-- map <Leader>] :cnext<CR>
-- map <Leader>[ :cprevious<CR>
