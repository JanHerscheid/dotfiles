--after directory for plugin configurations
require("config.lazy")
-- line numbers 
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true

vim.opt.clipboard = "unnamedplus"

-- mason
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "gopls", "lua_ls", }, -- Install these LSPs
    automatic_installation = true,
})

require("mason-lspconfig").setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup({})
    end,

    ["lua_ls"] = function()
        require("lspconfig").lua_ls.setup({
            settings = { Lua = { diagnostics = { globals = { "vim" } } } }
        })
    end
})

-- create pipe file
local pipepath = vim.fn.stdpath("cache") .. "/server.pipe"
if not vim.loop.fs_stat(pipepath) then
  vim.fn.serverstart(pipepath)
end

