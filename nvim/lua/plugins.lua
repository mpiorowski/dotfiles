vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- tokoyo night
    use 'folke/tokyonight.nvim'
    -- leap
    use 'ggandor/leap.nvim'
    -- copilot
    use 'github/copilot.vim'
    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    }
    -- bufferline
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    -- indent for treesiter
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require('indent_blankline').setup {
                space_char_blankline = " ",
                show_current_context = true,
                show_current_context_start = true,
                use_treesitter = true,
            }
        end
    }
    -- telescope
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- file browser for telescope
    use "nvim-telescope/telescope-file-browser.nvim"

    -- lsp
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
            -- Snippet Collection (Optional)
            -- {'rafamadriz/friendly-snippets'},
        }
    }
end)
