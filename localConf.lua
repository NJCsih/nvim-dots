-- Device specific config, not tracked by git

-- Coloring
vim.cmd.colorscheme("nord") -- set colorscheme
vim.api.nvim_set_hl(0, "Normal", {bg = "none"}) -- add trasnparent background
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

-- if undoddir needs to be set globally, per-device, do that here
