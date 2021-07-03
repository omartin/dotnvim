local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    prompt_prefix = " ❯ ",
    sorting_strategy = "ascending",

    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    }
  }
}
