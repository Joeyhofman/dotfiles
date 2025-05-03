vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)



--- defualt setup
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "l", "lzz")
vim.keymap.set("n", "j", "jzz")

vim.keymap.set("n", "%", "%zz")
vim.keymap.set("n", "gg", "ggzz")
vim.keymap.set("n", "GG", "GGzz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "%", "%zz")


vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Increase font size
vim.api.nvim_set_keymap("n", "<C-+>", ":lua vim.o.guifont = vim.o.guifont:gsub('%d+', function(n) return tostring(tonumber(n) + 1) end)<CR>", { noremap = true, silent = true })

-- Decrease font size
vim.api.nvim_set_keymap("n", "<C-->", ":lua vim.o.guifont = vim.o.guifont:gsub('%d+', function(n) return tostring(tonumber(n) - 1) end)<CR>", { noremap = true, silent = true })
