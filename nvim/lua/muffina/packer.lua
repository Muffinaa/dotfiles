vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Better info line 
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- Helps with visibility
    use 'lukas-reineke/indent-blankline.nvim'
    -- Better comments
    use 'numToStr/Comment.nvim'
    -- Do I even have to explain treesitter
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    -- Epic colorscheme
    use 'sainnhe/everforest'
    -- Nice tabs 
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    -- LSP kit
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
    use 'elkowar/yuck.vim'
    -- Auto pairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    -- cool dashboard
    use 'glepnir/dashboard-nvim'
    -- very nice File explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        tag = 'nightly'
    }
    -- Discord rich presence
    use 'andweeb/presence.nvim'
    -- Markdown preview
    use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })
end)
