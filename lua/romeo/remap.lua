vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) --open netrw

--vim.ekymap.set("n", "<leader>spell", vim.set.spell spelllang=en_us) -- enable spellcheck

--vim.keymap.set("i", "<C-BS>", "<C-o>dB") -- this doesnt really work in term vim :(

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ'z") --keep cursor at front when using J
vim.keymap.set("n", "<C-d>", "<C-d>zz") --keep cursor in the middle
vim.keymap.set("n", "<C-u>", "<C-u>zz") --keep cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dp") --paste, but preserve register
--vim.keymap.set("v", "<leader>p", "\"_dp") --paste, but preserve register

vim.keymap.set("n", "<leader>y", "\"+y") --yank into sys clip
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p") --paste from sys clip

vim.keymap.set("n", "<C-g>", "ggVG") --select all, done quite basically

--replace hovered word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--makes current file executable, via chmod
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--make a keymap for ctrl backspace to delete the last word inc punctuation wheile in edit mode

--change nvim directory
-- vim.keymap.set("n", "<leader>cd", function()
    --change nvim directory
    -- vim.cmd.
    --change session.nvim's directory
    --change undodir?
    --mabey make this start a new nvim in a new window, and close this one
-- end())


