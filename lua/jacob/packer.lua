-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Themes
    use("folke/tokyonight.nvim")

    -- Telescope
    use("nvim-lua/plenary.nvim")
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use({
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- Fonts and Icons
    use("nvim-tree/nvim-web-devicons")

    -- LSP FROM ZERO! Thanks for doing the confis for me broooo
    use({
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        },
    })

    -- Utilities
    use("akinsho/toggleterm.nvim") -- Pop-up terminal, top-tier plugin
    use("ThePrimeagen/harpoon") -- Harpoon; Blazingly Fast!!
    use("mbbill/undotree")
    use("eandrju/cellular-automaton.nvim") -- Fire automaton
    use({ -- Nice status line at the bottom of the buffer
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    use({
        "iamcco/markdown-preview.nvim",
        run = function()
            vim.fn["mkdp#util#install"]()
        end,
    })
end)
