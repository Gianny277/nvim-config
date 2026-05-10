-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<M-BS>", "<C-w>")

vim.keymap.set("n", "<leader>r", function()
  vim.cmd("w") -- save
  vim.cmd("!go run .")
end, { desc = "Run Go project" })

vim.api.nvim_create_user_command("GoRun", function()
  vim.cmd("w") -- save file
  vim.cmd("!go run .")
end, { desc = "Run current Go module" })
