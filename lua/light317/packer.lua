-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself

    use 'wbthomason/packer.nvim'

    use "nvim-lua/plenary.nvim"

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Plugins --
    --Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} ### NOTE ### this is how you translate to packer

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    use 'mbbill/undotree'

    use 'tpope/vim-fugitive'
    use "tpope/vim-commentary"

    use 'prichrd/netrw.nvim'

    use 'nvim-tree/nvim-web-devicons'

    use 'RRethy/vim-illuminate'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'Omnisharp/omnisharp-vim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use { 'kosayoda/nvim-lightbulb' }
    use 'f-person/git-blame.nvim'

    use {
        "nvim-neotest/neotest",
        requires = {
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "nvim-neotest/neotest-plenary",
            "Issafalcon/neotest-dotnet",
            "rouge8/neotest-rust",
        }
    }

    use 'mfussenegger/nvim-dap'

    -- Utilities
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        "folke/trouble.nvim",
        requires = { 'nvim-tree/nvim-web-devicons', opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        } }
    }

    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

    --use "SirVer/ultisnips"
    --    use { 'neoclide/coc.nvim', branch = 'release' }

    -- File Manager
    use "stevearc/oil.nvim"    --this is great, it needs a little configuration before use.

    -- Extra
    --use "github/copilot.vim" -- can't use, it needs a subscription.

    -- Themes --
    use {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    }

    use { 'rebelot/kanagawa.nvim', as = 'kanagawa' }
    use { 'craftzdog/solarized-osaka.nvim', as = 'osaka' }
    use { "catppuccin/nvim", as = "catppuccin" }
    use { 'kepano/flexoki-neovim', as = 'flexoki' }
    use { 'jacoborus/tender.vim', as = 'tender' }
end)
