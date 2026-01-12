require("zen-mode").setup({
	window = {
		options = {
			signcolumn = "no",
			number = false, 
			relativenumber = false,
		}
	},
	plugins = {
		tmux = { enabled = true },
	}
})

