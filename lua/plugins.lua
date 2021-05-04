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

-- Status line
paq {'daviesjamie/vim-base16-lightline'}
paq { 'itchyny/lightline.vim' }
vim.cmd 'let g:lightline = { "colorscheme": "base16" }'

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

-- LSP and completion

paq {'nvim-lua/completion-nvim',
  run = function()
    -- Completion
    vim.cmd 'let g:completion_matching_strategy_list = ["exact", "substring", "fuzzy"]'
    --inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    --inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  end
}

paq {'neovim/nvim-lspconfig',
  run = function()

    local on_attach = function(client, bufnr)
      require('completion').on_attach()

      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

      buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- Mappings
      local opts = { noremap=true, silent=true }
      buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
      buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
      buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
      buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
      buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
      buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
      buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
      buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
      buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
      buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
      buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
      buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
      buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
      buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
      buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

      -- Set some keybinds conditional on server capabilities
      if client.resolved_capabilities.document_formatting then
        buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
      elseif client.resolved_capabilities.document_range_formatting then
        buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
      end

      -- Set autocommands conditional on server_capabilities
      if client.resolved_capabilities.document_highlight then
        require('lspconfig').util.nvim_multiline_command [[
        :hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
        :hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
        :hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
        augroup lsp_document_highlight
        autocmd!
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
        ]]
      end
    end

    local lsp = require('lspconfig')
    lsp.tsserver.setup{on_attach = on_attach}
    lsp.sumneko_lua.setup.setup{on_attach = on_attach}
  end
}
