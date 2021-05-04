vim.cmd 'packadd paq-nvim' -- load the package manager

local paq = require('paq-nvim').paq  -- a convenient alias
paq {'savq/paq-nvim', opt = true}    -- paq-nvim manages itself

-- UI
paq {'chriskempson/base16-vim'} -- Fancy themes
vim.cmd 'colorscheme base16-default-dark'
paq {'christoomey/vim-tmux-navigator'} -- Navigate between tmux panes
paq {'folke/which-key.nvim',
  run = function() require('which-key').setup() end
}

paq {'norcalli/nvim-colorizer.lua',
  run = function() require('colorizer').setup() end
}
paq {'kyazdani42/nvim-web-devicons'}

-- Treesitter
paq {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}

-- Editor
paq {'tpope/vim-fugitive'}
paq {'tpope/vim-repeat'}
paq {'tpope/vim-surround'}
paq {'nvim-lua/plenary.nvim'}
paq { 'lewis6991/gitsigns.nvim',
  run = function() require('gitsigns').setup() end
}

-- Completion
paq { 'neoclide/coc.nvim'}
vim.cmd('source ~/.nvim/coc.vim')
vim.g['g:coc_global_extensions'] = {
  'coc-snippets',
  'coc-tsserver',
  'coc-eslint',
  'coc-json',
  'coc-go',
  'coc-rls',
  'coc-lua'
}

-- Status line
paq {'daviesjamie/vim-base16-lightline'}
paq { 'itchyny/lightline.vim' }
vim.cmd 'let g:lightline = { "colorscheme": "base16" }'

-- Lua
--paq {'tjdevries/nlua.nvim'}
--paq {'nvim-lua/completion-nvim'} -- (OPTIONAL): better auto-completion UX experience
--paq {'euclidianAce/BetterLua.vim'} -- (OPTIONAL): better Lua syntax highlighting

-- Telescope
paq {'nvim-lua/popup.nvim'}
paq {'nvim-telescope/telescope.nvim'}

-- Explorer
paq {'kyazdani42/nvim-tree.lua'}
vim.cmd 'let g:nvim_tree_width = 40'
vim.cmd 'let g:nvim_tree_ignore = [ ".git", "node_modules", ".cache" ]'
vim.cmd 'let g:nvim_tree_auto_open = 1'
vim.cmd 'let g:nvim_tree_auto_close = 1'
vim.cmd 'let g:nvim_tree_quit_on_open = 1'
