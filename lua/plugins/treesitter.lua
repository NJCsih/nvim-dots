return {
	'nvim-treesitter/nvim-treesitter',
	opt = true,
	run = ':TSUpdate',
	event="BufRead",
	config = function() require('plugins.treesitter') end,
	ensure_installed = { "lua", "java", "python", "neorg", },
	highlight = {
			enable = true,
			use_languagetree = true,
	},
	indent = { enable = true, },
}
