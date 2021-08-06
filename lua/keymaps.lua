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
vim.cmd('map <Leader>y "*y')
vim.cmd('map <Leader>p "*p')
--[[ TODO fix this
map('n', '<Leader>y', '\"*y') -- Yank into system's clipboard
map('n', '<Leader>p', '\"*p') -- Paste from system's clipboard
]]

-- Splits
map('n', '<Leader>-', '<C-W>s') -- Split horizontal
map('n', '<Leader>|', '<C-W>v') -- Split vertical

--Tabs
map('n', '<Leader>t', ':tabnew<CR>') -- New tab
map('n', '<Tab>', ':tabnext<CR>:file<CR>') -- Next tab
map('n', '<S-Tab>', ':tabprevious<CR>:file<CR>') -- Previous tab

-- Lspsaga
map('n', '<Leader>rn', ':Lspsaga rename<CR>')
map('n', '<Leader>ca', ':Lspsaga code_action<CR>')
map('n', 'K', ':Lspsaga hover_doc<CR>')
map('n', '<C-p>', ':Lspsaga diagnostic_jump_prev<CR>')
map('n', '<C-n>', ':Lspsaga diagnostic_jump_next<CR>')
map('n', '<Leader>ft', ':Lspsaga open_floaterm<CR>')


-- Telescope
map('n', '<Leader>ff', ':Telescope find_files<CR>')
map('n', '<Leader>fg', ':Telescope live_grep<CR>')
map('n', '<Leader>fh', ':Telescope help_tags<CR>')
map('n', '<Leader>fe', ':Telescope file_browser<CR>')
map('n', '<Leader>fd', ':Telescope fd<CR>')
map('n', '<Leader>fb', ':Telescope buffers<CR>')
map('n', '<Leader>fq', ':Telescope quickfix<CR>')
map('n', '<Leader>fs', ':Telescope git_status<CR>')
map('n', '<Leader>fc', ':Telescope git_commits<CR>')
map('n', '<Leader>fr', ':Telescope git_branches<CR>')

map('n', 'gr', ':Telescope lsp_references<CR>')
map('n', 'gd', ':Telescope lsp_definitions<CR>')
map('n', 'gi', ':Telescope lsp_implementations<CR>')
map('n', 'gs', ':Telescope lsp_document_symbols<CR>')
map('n', 'gS', ':Telescope lsp_workspace_symbols<CR>')

-- Explorer
map('n', '<Leader>m', ':NvimTreeToggle<CR>')
map('n', '<Leader>r', ':NvimTreeRefresh<CR>')
map('n', '<Leader>n', ':NvimTreeFindFile<CR>')

-- Trouble
map('n', '<Leader>xx', ':Trouble<CR>')
map('n', '<Leader>xw', ':Trouble lsp_workspace_diagnostics<CR>')
map('n', '<Leader>xd', ':Trouble lsp_document_diagnostics<CR>')
map('n', '<Leader>xl', ':Trouble loclist<CR>')
map('n', '<Leader>xq', ':Trouble quickfix<CR>')
map('n', '<Leader>gR', ':Trouble lsp_references<CR>')
