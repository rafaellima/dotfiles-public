require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'nvim-treesitter/nvim-treesitter'
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
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use "lukas-reineke/indent-blankline.nvim"
  use "numToStr/Comment.nvim"
  use "windwp/nvim-autopairs"

  use 'wakatime/vim-wakatime'

  use 'tpope/vim-rails'
  use 'thoughtbot/vim-rspec'
  use 'fatih/vim-go'
  use 'hashivim/vim-terraform'

  use 'preservim/nerdtree'
  use 'ryanoasis/vim-devicons'
end)
