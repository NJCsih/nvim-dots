--vim.opt.filetype = true

-- Filetype specific options, on entering buffers
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
	pattern = {"*.md", "*.norg", "*.txt"},
	callback = function()
		-- print("Entering a md or norg file")
		vim.opt_local.spell = true -- enable spellcheck
		vim.opt_local.expandtab = true -- use spaces not tabs
		vim.opt_local.signcolumn = "no" -- disable colorcol for these
	end,
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
	pattern = {"*.norg"},
	callback = function()
		vim.opt_local.listchars = {
--			eol = '⤶',
			space = ' ',
			trail = '•',
			tab = '| ',
			extends = '◀',
			precedes = '▶',
		}
	end,
})

-- Opening netrw options, seems to be handled by oil
vim.api.nvim_create_autocmd({"FileType"}, {
	pattern = {"netrw"},
	callback = function()
--		print("Opening netrw")
		vim.opt.number = true
		vim.opt.relativenumber = true
--		print("test")
	end,
})

-- Make the background of the winseparators transparent
vim.api.nvim_create_autocmd({"WinNew"}, {
	callback = function()
		vim.cmd([[highlight WinSeparator guibg=NONE]])
	end,
})


-- transparent buffer autocommand
--au ColorScheme * hi Normal ctermbg=none guibg=none
--au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

vim.api.nvim_create_autocmd({"ColorScheme"}, {
	--pattern = {*},
	callback = function()
--		if vim.g.started_by_firenvim == false then
		vim.cmd([[highlight Normal guibg=none]])
		vim.cmd([[highlight NonText guibg=none]])
			--TODO also transparent winseparator
--			vim.o.laststatus = 0
--		end
	end,
})
