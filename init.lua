-- bootstrap lazy.nvim, LazyVim and your prequire("config.options")
-- ~/.config/nvim/init.lua
require("config.lazy")

vim.diagnostic.config({
  virtual_text = true, -- zeigt Fehler direkt im Code
  signs = true,
  underline = true,
  update_in_insert = false,
})
