-- Colorscheme
vim.cmd.colorscheme("catppuccin-nvim")

-- Tabs
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

-- Line-numbers
vim.o.number = true
vim.o.relativenumber = true

-- LSP
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = true,
  float = {
    border = 'rounded',
    source = 'always',
  },
})

