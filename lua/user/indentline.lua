local status_ok, indent_blankline = pcall(require, "indent_blankline")
 if not status_ok then
  print('indentline unavailable')
 	return
 end

indent_blankline.setup {
    char = "|",
    buftype_exclude = {"terminal"}
}
