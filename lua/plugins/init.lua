vim.cmd 'packadd paq-nvim' -- load the package manager

local paq = require('paq-nvim').paq  -- a convenient alias
paq {'savq/paq-nvim', opt = true}    -- paq-nvim manages itself

-- UI
paq {'chriskempson/base16-vim'} -- Fancy themes
paq {'christoomey/vim-tmux-navigator'} -- Navigate between tmux panes
paq {'folke/which-key.nvim'}
paq {'norcalli/nvim-colorizer.lua'}
paq {'kyazdani42/nvim-web-devicons'}

-- Treesitter
paq {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

-- Editor
paq {'tpope/vim-fugitive'}
paq {'tpope/vim-repeat'}
paq {'tpope/vim-surround'}
paq {'nvim-lua/plenary.nvim'}
paq { 'lewis6991/gitsigns.nvim'}

-- Status line
paq {'daviesjamie/vim-base16-lightline'}
paq { 'itchyny/lightline.vim' }

-- Telescope
paq {'nvim-lua/popup.nvim'}
paq {'nvim-telescope/telescope.nvim'}

-- Explorer
paq {'kyazdani42/nvim-tree.lua'}
-- LSP and completion
--paq {'neovim/nvim-lspconfig'}
--paq {'glepnir/lspsaga.nvim'}
--paq {'hrsh7th/nvim-compe'}

-- CoC
paq {'neoclide/coc.nvim'}
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

-- Language
paq ('peitalin/vim-jsx-typescript')
paq ('leafgarland/typescript-vim')

-- Plugins configuration
require('plugins/base16')
require('plugins/which-key')
require('plugins/colorizer')
require('plugins/treesitter')
require('plugins/gitsigns')
require('plugins/lightline')
require('plugins/nvim-tree')
require('plugins/telescope')
--require('plugins/lspconfig')
--require('plugins/lspsaga')
--require('plugins/compe')
