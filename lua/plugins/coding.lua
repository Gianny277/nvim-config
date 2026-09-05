return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "BufReadPost",

    opts = function(_, opts)
      local LazyVim = require("lazyvim.util")

      opts.suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = false,

        keymap = {
          accept = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      }

      LazyVim.cmp.actions.ai_accept = function()
        local suggestion = require("copilot.suggestion")

        if suggestion.is_visible() then
          LazyVim.create_undo()
          suggestion.accept()
          return true
        end

        return false
      end

      return opts
    end,
  },
  -- Auto close brackets/quotes
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },

  -- Auto close HTML/React tags
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    opts = {},
  },

  -- Surround text objects
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = true,
  },

  -- Better comments
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    config = true,
  },

  -- Harpoon
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",

    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
