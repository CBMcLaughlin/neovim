-- keybinds
vim.g.mapleader = " "
vim.g.maplocaleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- clipboard
vim.o.clipboard = "unnamedplus"

-- number display
vim.o.number = true
vim.o.relativenumber = true

-- End Of Buffer (~)
vim.opt.fillchars = { eob = "-" }

-- Others
vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.termguicolors = true

vim.o.mouse = "a"
