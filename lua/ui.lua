--vim.cmd 'colorscheme base16-default-dark'
vim.cmd 'colorscheme base16-nord'
vim.cmd [[
autocmd BufEnter * hi Search guifg=#e3e3e3 guibg=#585858
autocmd BufEnter * hi IncSearch guifg=#e3e3e3 guibg=#585858
autocmd BufEnter * hi IndentBlanklineChar guifg=#2a2a2a
autocmd BufEnter * hi Normal guibg=#181818
autocmd BufEnter * hi LineNr guibg=#181818
autocmd BufEnter * hi SignColumn guibg=#181818
]]

vim.o.tabline = '%!v:lua.require\'luatab\'.tabline()'
