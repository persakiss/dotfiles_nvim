-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use({ 'rose-pine/neovim', as = 'rose-pine', config = function() vim.cmd('colorscheme rose-pine') end })

use({
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  requires = {
    'JoosepAlviste/nvim-ts-context-commentstring',
    'nvim-treesitter/nvim-treesitter-textobjects' -- This is an existing dependency you had, so I'm including it for completeness
  }
})

  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('theprimeagen/harpoon')
  use('tpope/vim-fugitive')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  }

  use('neovim/nvim-lspconfig')
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
  -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'lewis6991/gitsigns.nvim'     -- OPTIONAL: for git status
  use 'romgrk/barbar.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'terrortylor/nvim-comment'
  use 'wakatime/vim-wakatime'
end)
