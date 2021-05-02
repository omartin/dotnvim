return require('packer').startup(function()

  -- UI
  use {'chriskempson/base16-vim'} -- Fancy themes
  use {'christoomey/vim-tmux-navigator'}    -- Navigate between tmux panes
  use {
    'folke/which-key.nvim',                  -- Keymaps cheat-sheet on <Leader>-- Keymaps cheat-sheet on <Leader>-- Keymaps cheat-sheet on <Leader>-- Keymaps cheat-sheet on <Leader>
    config = function() require('which-key').setup {} end
  }
  use {
    'norcalli/nvim-colorizer.lua',
    config = function() require('colorizer').setup() end
  }

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}


  -- Search
  use {'junegunn/fzf'}
  use {'jremmen/vim-ripgrep'}

  -- Explorer
  use {
    'scrooloose/nerdtree',
    config = function()
      vim.g['NERDTreeIgnore'] = {'^node_modules$'}
      vim.g['NERDTreeMinimalUI'] = 1
      vim.g['NERDTreeDirArrows'] = 1
      vim.g['NERDTreeQuitOnOpen'] = 1
    end
  }
  use {'kyazdani42/nvim-web-devicons'}

  -- Editor
  use {'tpope/vim-fugitive'}
  use {'tpope/vim-repeat'}
  use {'tpope/vim-surround'}
  use {'nvim-lua/plenary.nvim'}
  use {
    'lewis6991/gitsigns.nvim',
    config = function() require('gitsigns').setup() end
  }

  -- Completion
  use {
    'neoclide/coc.nvim',
    config = function()
      vim.cmd('source ~/.nvim/coc.vim')
      vim.g['g:coc_global_extensions'] = {
        'coc-snippets',
        'coc-pairs',
        'coc-tsserver',
        'coc-eslint',
        'coc-json',
        'coc-go',
        'coc-rls',
        'coc-lua'
      }
    end
  }

  -- Status line
  use {'daviesjamie/vim-base16-lightline'}
  use {
    'itchyny/lightline.vim',
    config = function()
      vim.g['g:lightline'] = {}
      vim.g['g:lightline.colorscheme'] = 'base16'
    end
  }

end)
