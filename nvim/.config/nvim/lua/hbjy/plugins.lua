local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function ()
  -- Let packer manage itself
  use 'wbthomason/packer.nvim'

  -- Misc.
  use 'windwp/nvim-autopairs'
  use 'editorconfig/editorconfig-vim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'tpope/vim-fugitive'
  use 'junegunn/goyo.vim'
  use 'airblade/vim-gitgutter'

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-github.nvim'

  -- LSP
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/lsp-status.nvim'
  use 'nvim-lua/lsp_extensions.nvim'
  use 'neovim/nvim-lspconfig'
  
  -- NERDTree & Co.
  use 'preservim/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'ryanoasis/vim-devicons'

  -- Themes
  use 'gruvbox-community/gruvbox'
end)
