-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Provider deaktivieren (spart Startup-Zeit)
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.lazyvim_cmp = "blink.cmp"

local opt = vim.opt
opt.title = true
opt.number = true
opt.relativenumber = true

opt.mouse = "a"

opt.ignorecase = true
opt.smartcase = true

opt.updatetime = 200
opt.timeoutlen = 300

opt.termguicolors = true

opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 8

opt.signcolumn = "yes"

opt.clipboard = "unnamedplus"

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.completeopt = { "menu", "menuone", "noselect" }

opt.cursorline = true
