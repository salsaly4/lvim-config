-- Fix for treesitter 'download failed'
require("nvim-treesitter.install").prefer_git = true

lvim.plugins = {
  -- TODO: comments
  {
    'folke/todo-comments.nvim',
    event = 'BufRead',
    config = function()
      require('todo-comments').setup()
    end
  },

  -- Color scheme
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },

  -- Code::stats
  { "YannickFricke/codestats.nvim",
    config = function()
      require('codestats-nvim').setup()
    end,
    dependencies = {{'nvim-lua/plenary.nvim'}}
  },

  -- Hop (movement plugin)
  {
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function ()
      require('hop').setup()
    end
  }
}
