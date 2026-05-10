return {
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    keys = {
      {
        "<leader>gg",
        function()
          vim.cmd("LazyGit")
        end,
        desc = "LazyGit (Git UI)",
      },
    },
    config = function()
      vim.g.lazygit_floating_window_winblend = 0 -- kein transparency blur
      vim.g.lazygit_floating_window_scaling_factor = 0.95
    end,
  },

  {
    "folke/snacks.nvim",
    opts = {
      lazygit = {
        -- echtes UI upgrade
        border = "rounded",
        width = 0.92,
        height = 0.92,
        backdrop = 60,
        winblend = 0,

        -- optional: centered layout tuning
        relative = "editor",
        style = "minimal",
      },
    },
  },
}
