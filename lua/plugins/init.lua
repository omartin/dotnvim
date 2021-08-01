vim.cmd 'packadd paq-nvim' -- load the package manager

local paq = require('paq-nvim').paq  -- a convenient alias
paq {'savq/paq-nvim', opt = true}    -- paq-nvim manages itself

-- UI
paq {'christoomey/vim-tmux-navigator'} -- Navigate between tmux panes
paq {'folke/which-key.nvim'}
paq {'norcalli/nvim-colorizer.lua'}
paq {'kyazdani42/nvim-web-devicons'}

-- Colorschemes
paq {'tjdevries/colorbuddy.vim'}
paq {'folke/tokyonight.nvim'}
paq {'christianchiarulli/nvcode-color-schemes.vim'}
paq {'kyazdani42/blue-moon'}
paq {'savq/melange'}
paq {'maaslalani/nordbuddy'}

-- Treesitter
paq {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
paq {'nvim-treesitter/nvim-treesitter-textobjects'}

-- Editor
paq {'tpope/vim-fugitive'}
paq {'tpope/vim-repeat'}
paq {'tpope/vim-surround'}
paq {'nvim-lua/plenary.nvim'}
paq { 'lewis6991/gitSigns.nvim'}

-- Status line
paq {'daviesjamie/vim-base16-lightline'}
paq { 'itchyny/lightline.vim' }

-- Telescope
paq {'nvim-lua/popup.nvim'}
paq {'nvim-telescope/telescope.nvim'}
paq {'folke/trouble.nvim'}

-- Explorer
paq {'kyazdani42/nvim-tree.lua'}

-- LSP and completion
paq {'neovim/nvim-lspconfig'}
paq {'kabouzeid/nvim-lspinstall'}
paq {'glepnir/lspsaga.nvim'}
paq {'folke/lsp-colors.nvim'}
paq {'hrsh7th/nvim-compe'}

-- CoC
--paq {'neoclide/coc.nvim'}
--vim.cmd('source ~/.nvim/coc.vim')
--vim.g['g:coc_global_extensions'] = {
--  'coc-snippets',
--  'coc-tsserver',
--  'coc-eslint',
--  'coc-json',
--  'coc-go',
--  'coc-rls',
--  'coc-lua'
--}

-- Language
paq ('peitalin/vim-jsx-typescript')
paq ('leafgarland/typescript-vim')

-- Plugins configuration
require('plugins/which-key')
require('plugins/colorizer')
require('plugins/treesitter')
require('plugins/treesitter-textobjects')
require('plugins/gitsigns')
require('plugins/lightline')
require('plugins/nvim-tree')
require('plugins/telescope')
require('plugins/trouble')

-- LSP (activate one day)
require('plugins/lspconfig')
require('plugins/lspinstall')
require('plugins/lspsaga')
require('plugins/lsp-colors')
require('plugins/compe')
