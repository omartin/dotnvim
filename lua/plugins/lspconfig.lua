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
