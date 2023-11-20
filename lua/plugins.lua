-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- open packer in floating window
--packer.init {
--	display = {
--		open_fn = function()
--			return require("packer.util").float { border = "rounded" }
--		end,
--	},
--}

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- theme
	use 'ellisonleao/gruvbox.nvim'
	use 'catppuccin/nvim'
	use 'joshdick/onedark.vim'
	use 'rose-pine/neovim'
	use 'shaunsingh/nord.nvim'

	-- meta -------------------------------------
	use 'dstein64/vim-startuptime'

	-- appearance -------------------------------
	use { -- alpha-nvim, starting splashscreen
		'goolord/alpha-nvim',
		requires = {
			{ 'nvim-tree/nvim-web-devicons' },
		},
		config = function() require('plugins.alpha') end,
	}
	use { -- lualine, bar across bottom
		'nvim-lualine/lualine.nvim',
		requires = {
		},
		config = function() require('plugins.lualine') end,
	}
	--	use {
	--		'gaoDean/fstatus.nvim'
	--	}
	use { -- noneckpain, centers a file on screen
		'shortcuts/no-neck-pain.nvim',
		config = function() require('plugins.noneckpain') end,
	}

	-- ux ----------------------------------------
	use { -- harpoon, quick file navigation
		'ThePrimeagen/harpoon',
		requires = {
			{ 'nvim-lua/plenary.nvim' },
		},
		config = function() require('plugins.harpoon') end,
	}
	--	use { -- neotree, tree file view, I use while notating
	--		'nvim-neo-tree/neo-tree.nvim',
	--		branch = 'v3.x',
	--		requires = {
	--			{ 'MunifTanjim/nui.nvim' },
	--			{ 'nvim-lua/plenary.nvim' },
	--			{ 'nvim-tree/nvim-web-devicons' },
	--		},
	--		config = function() require('plugins.neotree') end,
	--	}
	use { -- undo tree, shows history of undoos, pcool
		'mbbill/undotree',
		config = function() require('plugins.undotree') end,
	}
	use { -- telescope project fuzzy finder
		'nvim-telescope/telescope.nvim',
		requires = {
			{ 'nvim-lua/plenary.nvim' },
			-- requires ripgrep installed on syspath? maybe see if it can be done as an nvim plug
		},
		config = function() require('plugins.telescope') end,
	}
	--	use {
	--		'kevinhwang91/nvim-ufo',
	--		requires = 'kevinhwang91/promise-async'
	--	}
	--	use {
	--		'kelly-lin/ranger.nvim',
	--		config = function() require('plugins.ranger') end,
	--	}
--	use {
--		'stevearc/oil.nvim',
--		config = function() require('plugins.oil') end,
--	}
	use {
		'glacambre/firenvim',
		run = function() vim.fn['firenvim#install'](0) end
	}

	-- editing -----------------------------------
	use 'rstacruz/vim-closer' -- closes braces
	use {                     -- completion and snippet stuff
		'hrsh7th/nvim-cmp',   -- completion plugin
		{ 'hrsh7th/cmp-nvim-lsp' }, -- lsp completions
		{ 'hrsh7th/cmp-buffer' }, -- buffer completions
		{ 'hrsh7th/cmp-path' }, -- path completions
		{ 'hrsh7th/cmp-cmdline' }, -- cmdline completions
		--		{ 'saadparwaiz1/cmp_luasnip' }, -- snippet completions
		--		{ 'L3MON4D3/LuaSnip', -- snippet engine
		--			--config = function() require('plugins.luasnip') end,
		--			config = function()
		--				require("luasnip.loaders.from_vscode").lazy_load()
		--			end,
		--			run = "make install_jsregexp",
		--		},
		--		{ 'rafamadriz/friendly-snippets' }, -- a bunch of snippets to use
		config = function() require('plugins.nvim-cmp') end, -- this doesnt work for some reason
	}
	use {
		'jose-elias-alvarez/null-ls.nvim',
		config = function() require('plugins.null-ls') end,
		-- I got to 9:14 in the dreams of code part, need to fix formatter
	}

	-- treesitter/lsp/similar ----------------------------------------------------------------------
	use { -- lspconfig
		'neovim/nvim-lspconfig',
		config = function() require('plugins.lspconfig') end,
	}
	use { -- mason lsp installer
		'williamboman/mason.nvim',
		config = function() require('plugins.mason') end,
	}
	use {
		'mfussenegger/nvim-jdtls',
		config = function() require('plugins.nvim-jdtls') end,
	}
	use { -- ts itself
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	--	use { -- nvim-dap
	--		'mfussenegger/nvim-dap',
	--	}
	--	use { -- nvim-dap-ui
	--		'rcarriga/nvim-dap-ui',
	--	}
	--	use { -- cmp-nvim-lsp
	--		'hrsh7th/cmp-nvim-lsp',
	--	}

	use { -- testing
		'nvim-neotest/neotest'
	}

	--	use { -- coc
	--		'neoclide/coc.nvim',
	--		branch = 'release',
	--	}
	use {
		'tpope/vim-fugitive',
		config = function() require('plugins.fugitive') end,
	}

	-- notating/markdown/the sort ----------------
	use { -- Neorg, primary notating thing. Has own extension
		'nvim-neorg/neorg',
		requires = {
			"nvim-lua/plenary.nvim"
		},
		config = function()
			require('plugins.neorg')
		end,
	}
	--	use { -- for auto lists, should help with neorg
	--		'gaoDean/autolist.nvim',
	--		config = function() require('plugins.autolist') end,
	--		-- Needs to have norg style checkboxes added, " - ( ) "
	--	}
end)
