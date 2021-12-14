require "paq" {
  "savq/paq-nvim";

  -- UI
  'christoomey/vim-tmux-navigator'; -- Navigate between tmux panes
  'folke/which-key.nvim';
  'norcalli/nvim-colorizer.lua';
  'kyazdani42/nvim-web-devicons';

  -- Colorschemes
  'chriskempson/base16-vim';
  'tjdevries/colorbuddy.vim';

  -- Treesitter
  {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'};
  'nvim-treesitter/nvim-treesitter-textobjects';

  -- Editor
  'tpope/vim-fugitive';
  'tpope/vim-repeat';
  'tpope/vim-surround';
  'lewis6991/gitSigns.nvim';
  'lukas-reineke/indent-blankline.nvim';
  'mhartington/formatter.nvim';
  'nvim-lua/plenary.nvim';
  'alvarosevilla95/luatab.nvim';

  -- Status line
  'hoob3rt/lualine.nvim';

  -- Telescope
  'nvim-lua/popup.nvim';
  'nvim-telescope/telescope.nvim';
  'folke/trouble.nvim';

  -- Explorer
  'kyazdani42/nvim-tree.lua';

  -- LSP, completion and diagnostics
  'neovim/nvim-lspconfig';
  'williamboman/nvim-lsp-installer';
  'glepnir/lspsaga.nvim';
  'folke/lsp-colors.nvim';
  'hrsh7th/nvim-compe';
  'onsails/lspkind-nvim';
  'creativenull/diagnosticls-configs-nvim';

  -- Language
  'peitalin/vim-jsx-typescript';
  'leafgarland/typescript-vim';
}

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
