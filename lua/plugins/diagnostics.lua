local dlsconfig = require 'diagnosticls-configs'

local function on_attach(client)
  print('Attached to ' .. client.name)
end

dlsconfig.init {
  -- Your custom attach function
  on_attach = on_attach,
}

local eslint = require 'diagnosticls-configs.linters.eslint'
local prettier = require 'diagnosticls-configs.formatters.prettier'

dlsconfig.setup {
  ['javascript'] = {
    linter = eslint,
    formatter = prettier
  },
  ['typescript'] = {
    linter = eslint,
    formatter = prettier
  },
  ['javascriptreact'] = {
    linter = eslint,
    formatter = prettier
  }
}
