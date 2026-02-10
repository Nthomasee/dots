vim.o.number = true
vim.o.relativenumber = true

vim.o.swapfile = false

vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.colorcolumn = "80"
vim.o.scrolloff = 4
vim.o.signcolumn = "yes"
vim.o.list = true
vim.o.listchars = "tab:>-,trail:·,extends:>,precedes:<,nbsp:␣"
vim.o.cindent = true
vim.o.cinoptions = ':0,l1'

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt.formatoptions = "jcql"
  end,
})
