--set cursor to block
vim.opt.guicursor = "n-v-c-sm-i:block,ci-ve:ver25,r-cr-o:hor20"

-- always use relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.swapfile = false
vim.opt.backup = false
--vim.opt.undodir = "C:/Users/NJCis/Appdata/local/nvim-data/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 250

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.opt.fillchars='eob: '

vim.opt.encoding = 'utf-8'

--window cleanup
vim.opt.laststatus = 3 -- single, global statusline
vim.cmd('highlight WinSeparator guibg=None')

-- indenting and wrapping
vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.linebreak = true

-- show invisibles
vim.opt.list = true
--vim.opt.lcs.append = { 'space:•' }
--vim.opt.lcs.append = { 'trail:•' }
--vim.opt.lcs.append = { 'tab:|  ' }
vim.opt.showbreak = "|   "
vim.opt.listchars = {
  eol = '⤶',
  space = '•',
  trail = '•',
  extends = '◀',
  precedes = '▶',
}

-- tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true --use real tabs -- this has issues if off
