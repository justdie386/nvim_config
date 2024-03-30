--this file isn't for anything precisely, its just for quality of life stuff that don't belong in a specific file
vim.cmd("set number")
vim.api.nvim_set_keymap("n", "<S-f>", ":wincmd w<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-Space>", ":q", {noremap = true, silent = true})
