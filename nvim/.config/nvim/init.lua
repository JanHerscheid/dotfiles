vim.o.clipboard = "unnamedplus"

vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false
vim.o.smarttab = false -- if true use x blank spaces instead of real tab
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.cindent = true
vim.o.wrap = false

vim.g.mapleader = " "


-- plugin section
vim.pack.add({
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
	{ src = 'https://github.com/zenbones-theme/zenbones.nvim' },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/seblyng/roslyn.nvim" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/iamcco/markdown-preview.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-mini/mini.icons" },
	{ src = "https://github.com/folke/zen-mode.nvim" },
	{ src = "https://github.com/preservim/vim-pencil" },
})

require "mini.pick".setup()
require "mason".setup()
require "oil".setup()
require "mini.icons".setup()

require("plugins.zen-mode")

vim.lsp.enable({ "lua_ls", "ts_ls", "omnisharp", "svelte" })

-- keymap section
vim.keymap.set('n', '<leader>ff', ":Pick files<CR>")
vim.keymap.set('n', '<leader>fs', ":Pick grep live<CR>")
vim.keymap.set('n', '<leader>fs', ":Pick grep live<CR>")

vim.keymap.set('n', '-', ":Oil<CR>", {silent = true})

vim.keymap.set('n', '<leader>p', ":ZenMode | Pencil<CR>", {silent = true})

vim.keymap.set('n', '<leader>=', vim.lsp.buf.format)

-- colourscheme section
vim.g.zenbones_compat = 1
vim.cmd("colorscheme zenbones")
vim.cmd("set background=dark")
