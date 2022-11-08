-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Themes --
  use 'folke/tokyonight.nvim'
  -- Themes --

  -- Linter --
  use 'dense-analysis/ale'

  -- File Explorer --

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- intellisense CoC--
  use {'neoclide/coc.nvim', branch = 'release'}
end)

