local actions = require('telescope.actions')
local trouble = require("trouble.providers.telescope")

require('telescope').setup{
  defaults = {
    prompt_prefix = " ❯ ",
    sorting_strategy = "ascending",

    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-t>"] = trouble.open_with_trouble,
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-t>"] = trouble.open_with_trouble,
      }
    }
  }
}
