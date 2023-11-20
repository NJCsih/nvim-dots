-- set leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- bootstrap packer as nessecary
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.lsp.set_log_level("debug") -- for testing lsp

-- load plugins ----------------------------------
require("plugins") -- load plugin manager
-- this will also source each plugin's config file
--require("plugins.nvim-cmp") -- override and source this, this should not be nessecary.

-- load settings ---------------------------------
require("core.remap")
require("core.set")
require("core.autocommands")

-- set colorscheme -------------------------------
vim.cmd.colorscheme('catppuccin')

