vim.cmd([[tnoremap <Esc> <C-\><C-n>]])
vim.api.nvim_set_keymap("n", "<S-w>", ":below terminal<CR>", {noremap = true, silent = true})
