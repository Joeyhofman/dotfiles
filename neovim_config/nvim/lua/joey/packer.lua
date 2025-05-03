-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {}
} 

use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
}

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}

use {'nvim-treesitter/playground' }

use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
}


use "ThePrimeagen/harpoon"


use {
  'L3MON4D3/LuaSnip',
  requires = { 'rafamadriz/friendly-snippets' }-- Optional: Predefined snippets,
}

use {
  'hrsh7th/nvim-cmp',
  requires = {
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'saadparwaiz1/cmp_luasnip' },
  },
}

use "olimorris/onedarkpro.nvim"

-- somewhere in your config:
vim.cmd("colorscheme onedark")
vim.cmd("colorscheme onedark")


end)
