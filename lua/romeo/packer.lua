-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'shaunsingh/nord.nvim'
    use 'morhetz/gruvbox'
    use 'itsjunetime/rose-pine-vim'
    use { "catppuccin/nvim", as = "catppuccin" }

    --  use 'Yggdroot/indentLine'

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('BurntSushi/ripgrep')
    --use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    --use('nvim-treesitter/playground') -- This kinda breaks *everything*

    use('theprimeagen/harpoon')

    use('mbbill/undotree') -- the <leader>u undotree, I should use more
    use('tpope/vim-fugitive')
    use('mhinz/vim-signify')

    use('nvim-lualine/lualine.nvim') --bar at bottom

    --use('preservim/nerdtree') -- filetree on left

    use {"shortcuts/no-neck-pain.nvim", tag = "*" } -- no neck pain

    use("lervag/vimtex") -- LaTeX integration

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

end)
