require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use "EdenEast/nightfox.nvim" -- theme

  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- LSP
  use {
    "williamboman/nvim-lsp-installer",
    {
      "neovim/nvim-lspconfig",
      config = function()
	require("nvim-lsp-installer").setup({
          automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
          opts = {
            settings = {
              Lua = {
                diagnostics = {
                  globals = { 'vim', 'use' }
                }
              }
            }
          },
          ui = {
            icons = {
              server_installed = "✓",
              server_pending = "➜",
              server_uninstalled = "✗"
            }
          }
        })
	local lspconfig = require("lspconfig")
	lspconfig.sumneko_lua.setup {}
      end
    }
  }

  -- cmp plugins
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  -- use { 'github/copilot.vim'}
  -- use {
  --   "zbirenbaum/copilot.lua",
  --   event = { "VimEnter" },
  --   config = function()
  --     vim.defer_fn(function()
  --       require "user.copilot"
  --     end, 100)
  --   end,
  -- }
  -- use {
  --   "zbirenbaum/copilot-cmp",
  --   module = "copilot_cmp",
  -- }

  -- Navigation
  -- use {
  --   'romgrk/barbar.nvim',
  --   requires = {'kyazdani42/nvim-web-devicons'}
  -- }
  use { 'moll/vim-bbye'}
  use {
    'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "numToStr/Comment.nvim"
  use "windwp/nvim-autopairs"

  use 'wakatime/vim-wakatime'

  -- Ruby/Rails/Rspec
  use 'tpope/vim-rails'
  use 'thoughtbot/vim-rspec'

  -- Golang
  use 'fatih/vim-go'

  -- Terraform
  use 'hashivim/vim-terraform'

  -- Git
  use 'lewis6991/gitsigns.nvim'
  
  -- Appearance
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'ryanoasis/vim-devicons'
  use "lukas-reineke/indent-blankline.nvim"
end)
