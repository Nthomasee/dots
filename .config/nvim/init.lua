local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('git@github.com:tpope/vim-sensible.git')
Plug('git@github.com:projekt0n/caret.nvim.git')
Plug('git@github.com:stevearc/oil.nvim.git')

-- LSP --
Plug('git@github.com:neovim/nvim-lspconfig.git')
Plug('https://github.com/hrsh7th/cmp-nvim-lsp')
Plug('https://github.com/hrsh7th/nvim-cmp')
---------

-- Telescope and deps --
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make'})

Plug('nvim-telescope/telescope.nvim')
------------------------

vim.call('plug#end')

require("set")
require("remap")
require("lsp")
require("oil").setup()


vim.o.background = "dark"
vim.cmd('colorscheme caret')
