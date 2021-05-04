local scopes = {o = vim.o, b = vim.bo, w = vim.wo} -- Global / buffer / window options

local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end


local indent = 2
opt('b', 'expandtab', true)           -- Use spaces instead of tabs
opt('b', 'shiftwidth', indent)        -- Size of an indent
opt('b', 'smartindent', true)         -- Insert indents automatically
opt('b', 'tabstop', indent)           -- Number of spaces tabs count for
opt('o', 'hidden', true)              -- Enable modified buffers in background
opt('o', 'ignorecase', true)          -- Ignore case
opt('o', 'joinspaces', false)         -- No double spaces with join after a dot
opt('o', 'scrolloff', 4 )             -- Lines of context
opt('o', 'shiftround', true)          -- Round indent
opt('o', 'sidescrolloff', 8 )         -- Columns of context
opt('o', 'smartcase', true)           -- Don't ignore case with capitals
opt('o', 'splitbelow', true)          -- Put new windows below current
opt('o', 'splitright', true)          -- Put new windows right of current
opt('o', 'termguicolors', true)       -- True color support
opt('o', 'wildmode', 'list:longest')  -- Command-line completion mode
opt('w', 'list', true)                -- Show some invisible characters (tabs...)
opt('w', 'number', true)              -- Print line number
opt('w', 'wrap', false)               -- Disable line wrap
opt('o', 'showmatch', true)           -- Briefly show matching bracket
opt('o', 'incsearch', true)           -- Show search results as typing goes
opt('w', 'cursorline', true)          -- Highlight the line beneath the cursor
opt('o', 'undofile', true)            -- Enable undo
opt('w', 'signcolumn', 'yes:1')       -- Always show the signcolumn
opt('o', 'showmode', false)           -- Hide the mode (already shown in status line)
