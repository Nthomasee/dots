local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('git@github.com:tpope/vim-sensible.git')
Plug('git@github.com:stevearc/oil.nvim.git')
Plug('git@github.com:mbbill/undotree.git')

-- Colors --
Plug('git@github.com:projekt0n/caret.nvim.git')
Plug('git@github.com:yonatan-perel/lake-dweller.nvim.git',
    { ['commit'] = '6e88e0ae133e184c2109680a12eb63b312f1321e' })
Plug('git@github.com:cocopon/iceberg.vim.git')
Plug('https://github.com/junegunn/seoul256.vim')
------------

-- LSP --
Plug('git@github.com:neovim/nvim-lspconfig.git')
Plug('https://github.com/hrsh7th/cmp-nvim-lsp')
Plug('https://github.com/hrsh7th/nvim-cmp')
---------

-- Telescope and deps --
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })

Plug('nvim-telescope/telescope.nvim')
------------------------

vim.call('plug#end')

require("set")
require("remap")
require("lsp")
require("oil").setup({
    show_hidden = true,
})

-- vim.o.background = "light"
-- vim.cmd('colorscheme caret')

-- vim.g.seoul256_background = 252
-- vim.cmd('colorscheme seoul256-light')


vim.o.background = "dark"
vim.cmd('colorscheme sitruuna')
-- vim.cmd('colorscheme iceberg')
-- vim.cmd('colorscheme lake-dweller')
