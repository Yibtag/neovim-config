vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"

  -- Theme
  use "ellisonleao/gruvbox.nvim"

  -- File explorer
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"

  use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} },
  }

  -- Nvim line
  use "nvim-lualine/lualine.nvim"

  -- Syntax hylighting
  use "nvim-treesitter/nvim-treesitter"

  -- Lsp
  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
  }

  -- Autocomplete
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
end)
