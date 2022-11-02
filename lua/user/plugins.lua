vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Catppuccin theme 
  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup {
        flavour = "mocha" -- mocha, macchiato, frappe, latte
      }
      vim.api.nvim_command "colorscheme catppuccin"
    end
  }

  -- Treesitter 
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  -- lsp stuff
  use 'neovim/nvim-lspconfig'
  use 'mfussenegger/nvim-jdtls'

  -- CMP
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
  use "saadparwaiz1/cmp_luasnip"

  -- LuaLine
  use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}

  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}

  use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' }}

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'}, {'burntsushi/ripgrep'}, {'sharkdp/fd'} }}

end)
