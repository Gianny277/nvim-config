return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true, -- shows .files and .folders
          ignored = true, -- shows files from .gitignore
        },
      },
    },
  },
}
