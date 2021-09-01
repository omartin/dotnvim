vim.cmd 'packadd paq-nvim' -- load the package manager

local paq = require('paq-nvim').paq  -- a convenient alias
paq {'savq/paq-nvim', opt = true}    -- paq-nvim manages itself

-- UI
paq {'christoomey/vim-tmux-navigator'} -- Navigate between tmux panes
paq {'folke/which-key.nvim'}
paq {'norcalli/nvim-colorizer.lua'}
paq {'kyazdani42/nvim-web-devicons'}

-- Colorschemes
paq {'chriskempson/base16-vim'}
paq {'tjdevries/colorbuddy.vim'}

-- Treesitter
paq {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
paq {'nvim-treesitter/nvim-treesitter-textobjects'}

-- Editor
paq {'tpope/vim-fugitive'}
paq {'tpope/vim-repeat'}
paq {'tpope/vim-surround'}
paq {'nvim-lua/plenary.nvim'}
paq {'lewis6991/gitSigns.nvim'}

-- Status line
paq {'hoob3rt/lualine.nvim'}

-- Telescope
paq {'nvim-lua/popup.nvim'}
paq {'nvim-telescope/telescope.nvim'}

-- Explorer
paq {'kyazdani42/nvim-tree.lua'}

-- LSP and completion
paq {'neoclide/coc.nvim'}
vim.cmd('source ~/.nvim/coc.vim')
vim.cmd('let g:coc_node_path = "~/.nvm/versions/node/v14.17.4/bin/node"')
vim.g['g:coc_global_extensions'] = {
  'coc-snippets',
  'coc-tsserver',
  'coc-eslint',
  'coc-json',
  'coc-go',
  'coc-rls',
  'coc-lua'
}
--paq {'neovim/nvim-lspconfig'}
--paq {'kabouzeid/nvim-lspinstall'}
--paq {'glepnir/lspsaga.nvim'}
--paq {'folke/lsp-colors.nvim'}
--paq {'hrsh7th/nvim-compe'}
--paq {'folke/trouble.nvim'}

-- Language
paq ('peitalin/vim-jsx-typescript')
paq ('leafgarland/typescript-vim')

-- Plugins configuration
require('plugins/which-key')
require('plugins/colorizer')
require('plugins/treesitter')
require('plugins/treesitter-textobjects')
require('plugins/gitsigns')
require('plugins/lualine')
require('plugins/nvim-tree')
require('plugins/telescope')

--require('plugins/lspconfig')
--require('plugins/lspinstall')
--require('plugins/lsp-colors')
--require('plugins/compe')
--require('plugins/trouble')
