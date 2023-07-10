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
  { 'bluz71/vim-nightfly-colors', name = 'nightfly', lazy = false, priority = 1000 },

  -- Code::stats
  { 'YannickFricke/codestats.nvim',
    config = function()
      require('codestats-nvim').setup()
    end,
    dependencies = {{'nvim-lua/plenary.nvim'}}
  },

  -- Flash (motion on steroids)
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump({
            search = {
              mode = function(str)
                return "\\<" .. str
              end,
            },
          })
        end,
        desc = "Flash",
      },
      {
        "S",
       mode = { "n", "o", "x" },
       function()
         require("flash").treesitter()
        end,
       desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Flash Treesitter Search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search",
      },
    },
  },
  {
    'shortcuts/no-neck-pain.nvim',
    version = '*'
  }
}
