return require('packer').startup(function()

  -- Color scheme
  use {'chriskempson/base16-vim'}

  -- UI
  use {'christoomey/vim-tmux-navigator'}    -- Navigate between tmux panes
  use {
    'folke/which-key.nvim',                  -- Keymaps cheat-sheet on <Leader>-- Keymaps cheat-sheet on <Leader>-- Keymaps cheat-sheet on <Leader>-- Keymaps cheat-sheet on <Leader>
    config = function()
      require('which-key').setup {}
    end
  }
end)
