local lspconfig = require('lspconfig')

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


lspconfig.sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
}

-- https://jose-elias-alvarez.medium.com/configuring-neovims-lsp-client-for-typescript-development-5789d58ea9c
lspconfig.tsserver.setup {
}

local filetypes = {
  typescript = "eslint",
  typescriptreact = "eslint",
}

local linters = {
  eslint = {
    sourceName = "eslint",
    command = "eslint_d",
    rootPatterns = {".eslintrc.js", "package.json"},
    debounce = 100,
    args = {"--stdin", "--stdin-filename", "%filepath", "--format", "json"},
    parseJson = {
      errorsRoot = "[0].messages",
      line = "line",
      column = "column",
      endLine = "endLine",
      endColumn = "endColumn",
      message = "${message} [${ruleId}]",
      security = "severity"
    },
    securities = {[2] = "warning", [1] = "warning"}
  }
}

local formatters = {
  prettier = {command = "prettier", args = {"--stdin-filepath", "%filepath"}}
}

local formatFiletypes = {
  typescript = "prettier",
  typescriptreact = "prettier"
}

lspconfig.diagnosticls.setup {
  filetypes = vim.tbl_keys(filetypes),
  init_options = {
    filetypes = filetypes,
    linters = linters,
    formatters = formatters,
    formatFiletypes = formatFiletypes
  }
}
