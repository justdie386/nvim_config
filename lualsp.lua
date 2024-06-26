local cmp = require("luacmp")
print(vim.cmd("packadd nvim-lspconfig"))
print(vim.cmd("packadd cmp-nvim-lsp"))
local lspconfig = require("lspconfig").lua_ls.setup{
on_init = function(client)
    local path = vim.fn.getcwd()
    if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
      return
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        version = 'LuaJIT'
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
        }
      }
    })
  end,
  settings = {
    Lua = {}
  },
  capabilities = require("cmp_nvim_lsp").default_capabilities()
}
