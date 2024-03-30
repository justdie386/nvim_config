print(vim.cmd("packadd nvim-cmp"))
print(vim.cmd("packadd lspsaga.nvim"))
local cmp = require("cmp")
	cmp.setup{
		snippet = {
			expand = function(args)
			vim.snippet.expand(args.body)
			end,
		},
		window = {
			completion = cmp.config.window.bordered(),
    			documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
		["<S-Tab>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.abort(),
		}),
		sources = cmp.config.sources({
			{name = "nvim_lsp"},
			{name = "vsnip"},
		},
		{
			{ name = "buffer" }
	})
    }
require("lspsaga").setup({
	finder = {
	max_height = 0.6,
	keys = {
	 vsplit = 'v'
		}
	},
	lightbulb = {
		enable = false,
		virtual_text = false,
	}
})
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'rounded' })
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'rounded' })
vim.api.nvim_set_keymap("n", "<S-q>", ":Lspsaga finder<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<C-f>", ":Lspsaga rename<CR>", {silent = true, noremap = true})
