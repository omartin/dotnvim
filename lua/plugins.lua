vim.cmd 'packadd paq-nvim' -- load the package manager

local paq = require('paq-nvim').paq  -- a convenient alias
paq {'savq/paq-nvim', opt = true}    -- paq-nvim manages itself

-- UI
paq {'chriskempson/base16-vim'} -- Fancy themes
vim.cmd 'colorscheme base16-default-dark'
paq {'christoomey/vim-tmux-navigator'} -- Navigate between tmux panes
paq {'folke/which-key.nvim'}
require('which-key').setup()

paq {'norcalli/nvim-colorizer.lua'}
require('colorizer').setup()
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
paq { 'lewis6991/gitsigns.nvim'}
require('gitsigns').setup()

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
paq {'neovim/nvim-lspconfig'}
paq {'glepnir/lspsaga.nvim'}

vim.cmd("nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>")
vim.cmd("nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>")
vim.cmd("nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>")
vim.cmd("nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>")
vim.cmd("nnoremap <silent> ca :Lspsaga code_action<CR>")
vim.cmd("nnoremap <silent> K :Lspsaga hover_doc<CR>")
-- vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.cmd("nnoremap <silent> <C-p> :Lspsaga diagnostic_jump_prev<CR>")
vim.cmd("nnoremap <silent> <C-n> :Lspsaga diagnostic_jump_next<CR>")
-- scroll down hover doc or scroll in definition preview
vim.cmd("nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
-- scroll up hover doc
vim.cmd("nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")
vim.cmd('command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle()')

local lsp = require('lspconfig')
vim.fn.sign_define('LspDiagnosticsSignError', {
  texthl = 'LspDiagnosticsSignError',
  numhl = 'LspDiagnosticsSignError',
  text = '',
})

vim.fn.sign_define('LspDiagnosticsSignWarning', {
  texthl = 'LspDiagnosticsSignWarning',
  numhl = 'LspDiagnosticsSignWarning',
  text = '',
})

vim.fn.sign_define('LspDiagnosticsSignInformation', {
  texthl = 'LspDiagnosticsSignInformation',
  numhl = 'LspDiagnosticsSignInformation',
  text = '',
})

vim.fn.sign_define('LspDiagnosticsSignHint', {
  texthl = 'LspDiagnosticsSignHint',
  numhl = 'LspDiagnosticsSignHint',
  text = '',
})


require('lspconfig').tsserver.setup{}

--[[
local system_name
if vim.fn.has("mac") == 1 then
  system_name = "OSX"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
local sumneko_root_path = vim.fn.stdpath('cache')..'/nlua/sumneko_lua/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
]]

-- Completion
paq {'hrsh7th/nvim-compe'}

vim.o.completeopt = "menuone,noselect"

require('compe').setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
  };
}
