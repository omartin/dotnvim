vim.cmd 'packadd paq-nvim' -- load the package manager

local paq = require('paq-nvim').paq  -- a convenient alias
paq {'savq/paq-nvim', opt = true}    -- paq-nvim manages itself

-- UI
paq {'chriskempson/base16-vim'} -- Fancy themes
paq {'christoomey/vim-tmux-navigator'} -- Navigate between tmux panes
paq {'folke/which-key.nvim', run = require('which-key').setup() }
paq {'norcalli/nvim-colorizer.lua', run = require('colorizer').setup() }
paq {'kyazdani42/nvim-web-devicons'}

-- Treesitter
paq {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}


-- Search
paq {'junegunn/fzf'}
paq {'jremmen/vim-ripgrep'}

-- Explorer
paq {
  'scrooloose/nerdtree',
  run = function()
    vim.g['NERDTreeIgnore'] = {'^node_modules$'}
    vim.g['NERDTreeMinimalUI'] = 1
    vim.g['NERDTreeDirArrows'] = 1
    vim.g['NERDTreeQuitOnOpen'] = 1
  end
}

-- Editor
paq {'tpope/vim-fugitive'}
paq {'tpope/vim-repeat'}
paq {'tpope/vim-surround'}
paq {'nvim-lua/plenary.nvim'}
paq { 'lewis6991/gitsigns.nvim', run = require('gitsigns').setup() }

-- Completion
paq {
  'neoclide/coc.nvim',
  run = function()
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
paq {'daviesjamie/vim-base16-lightline'}
paq {
  'itchyny/lightline.vim',
  run = vim.cmd 'let g:lightline = { "colorscheme": "base16" }'
}
