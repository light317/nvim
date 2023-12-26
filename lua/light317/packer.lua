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
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Plugins --
    --Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} ### NOTE ### this is how you translate to packer

    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use 'mbbill/undotree'

    use 'tpope/vim-fugitive'

    use 'prichrd/netrw.nvim'

    use 'nvim-tree/nvim-web-devicons'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'Omnisharp/omnisharp-vim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        "folke/trouble.nvim",
        requires = { 'nvim-tree/nvim-web-devicons', opts ={
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        } }
    }

    -- Themes --
    use {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    }

    --use { 'ellisonleao/gruvbox.nvim', as = 'gruvbox'}
    use { 'rebelot/kanagawa.nvim', as = 'kanagawa'}
    --use { "catppuccin/nvim", as = "catppuccin" }

end)
