require("config.lazy")

vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true

local map = vim.keymap.set

map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<A-k>", ":m .-2<CR>==")
map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")
