local colorscheme = "tomorrow" -- iceberg, hybrid, sierra
-- aurora.vim codemonkey.vim darkplus.vim onedarker.vim spacedark.vim system76.vim tomorrow.vim

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
