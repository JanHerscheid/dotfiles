
return {
  -- Solarized
  {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.termguicolors = true
      vim.o.background = "light"
      require('solarized').setup({})
      vim.cmd.colorscheme('solarized')
    end,
    enabled = vim.g.colors_name == "solarized" or vim.g.preferred_colorscheme == "solarized",
  },

  -- Zenbones
  {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.termguicolors = true
      vim.o.background = "dark"
      vim.cmd.colorscheme('zenbones')
    end,
    enabled = vim.g.colors_name == "zenbones" or vim.g.preferred_colorscheme == "zenbones",
  },
}
