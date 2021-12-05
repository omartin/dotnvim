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
paq {'lewis6991/gitSigns.nvim'}
paq {'lukas-reineke/indent-blankline.nvim'}
paq {'mhartington/formatter.nvim'}
paq {'nvim-lua/plenary.nvim'}
paq {'alvarosevilla95/luatab.nvim'}

-- Status line
paq {'hoob3rt/lualine.nvim'}

-- Telescope
paq {'nvim-lua/popup.nvim'}
paq {'nvim-telescope/telescope.nvim'}
paq {'folke/trouble.nvim'}

-- Explorer
paq {'kyazdani42/nvim-tree.lua'}

-- LSP, completion and diagnostics
paq {'neovim/nvim-lspconfig'}
paq {'williamboman/nvim-lsp-installer'}
paq {'glepnir/lspsaga.nvim'}
paq {'folke/lsp-colors.nvim'}
paq {'hrsh7th/nvim-compe'}
paq {'onsails/lspkind-nvim'}
paq {'creativenull/diagnosticls-configs-nvim'}

-- Language
paq {'peitalin/vim-jsx-typescript'}
paq {'leafgarland/typescript-vim'}

-- Plugins configuration
require('plugins/which-key')
require('plugins/colorizer')
require('plugins/treesitter')
require('plugins/treesitter-textobjects')
require('plugins/gitsigns')
require('plugins/blankline')
require('plugins/formatter')
require('plugins/lualine')
require('plugins/nvim-tree')
require('plugins/telescope')
require('plugins/trouble')
require('plugins/lspconfig')
require('plugins/lsp-installer')
require('plugins/lsp-colors')
require('plugins/compe')
require('plugins/lspkind')
require('plugins/diagnostics')
require('plugins/luatab')
