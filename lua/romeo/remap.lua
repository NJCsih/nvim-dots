vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) --open netrw

--vim.ekymap.set("n", "<leader>spell", vim.set.spell spelllang=en_us) -- enable spellcheck

--vim.keymap.set("i", "<C-BS>", "<C-o>dB") -- this doesnt really work in term vim :(

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- drag lines with vis+ctrl+move
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ'z") --keep cursor at front when using J
vim.keymap.set("n", "<C-d>", "<C-d>zz") --keep cursor in the middle
vim.keymap.set("n", "<C-u>", "<C-u>zz") --keep cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("v", "<Leader>c", ":w !wc -w<CR>") -- count words
--vim.keymap.set("v", "<Tab>", ":s/^/    /<CR>") -- indent and de-indent -- removes selection though :(
--vim.keymap.set("v", "<S-<Tab>>", ":s/^    /<CR>")

vim.keymap.set("x", "<leader>p", "\"_dp") --paste, but preserve register
vim.keymap.set("x", "<leader>P", "\"_dP") --paste, but preserve register
--vim.keymap.set("v", "<leader>p", "\"_dp") --paste, but preserve register

vim.keymap.set("v", "<leader>y", "\"+y") --yank into sys clip
vim.keymap.set("n", "<leader>y", "V\"+y") -- yank line into sys clip
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

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>") -- make escape work in terminal like normal

-- Remaps to do XKCD/1806 -- only works on some devices! idk why
vim.keymap.set("n", "<ScrollWheelUp>", "<C-r>")
vim.keymap.set("n", "<ScrollWheelDown>", "u")
vim.keymap.set("n", "<Up>", "<C-r>")
--That's amazing!

-- Pandoc <format> to compile documents quickly and easily:
-- https://www.reddit.com/r/neovim/comments/z0knu0/converting_md_to_pdf_via_pandoc_from_nvim_how_go/
--     credit to u/oncomouse
vim.api.nvim_create_user_command("Pandoc", function(args)
    vim.cmd(
        "!pandoc -i "
            .. vim.fn.fnameescape(vim.fn.expand("%"))
            .. " -o "
            .. vim.fn.fnameescape(vim.fn.expand("%:r"))
            .. "."
            .. args.args
    )
end, {
    nargs = 1,
})
-- convert to pdf with custom setting, and open in pdfreader
vim.api.nvim_create_user_command("PandocPDF", function(args)
    vim.cmd(
        "!pandoc"
            .. " -i "..vim.fn.fnameescape(vim.fn.expand("%"))
            .. " -V geometry:margin=1in"
            .. " -o "..vim.fn.fnameescape(vim.fn.expand("%:r"))..".pdf"
            .. " && "
            .. vim.fn.fnameescape(vim.fn.expand("%:r"))..".pdf"
    )
end, {
    nargs = 0,
})
