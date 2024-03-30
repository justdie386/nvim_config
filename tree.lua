print(vim.cmd("packadd neo-tree.nvim"))
print(vim.cmd("packadd nui.nvim"))
print(vim.cmd("packadd plenary.nvim"))
require("neo-tree")

vim.cmd("Neotree")
vim.cmd("wincmd w")
