vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        "folke/tokyonight.nvim",
        as = 'tokyonight',
        config = function()
            vim.cmd('colorscheme tokyonight')
        end,
        ColorMyPencils(),
        lazy = false,
        priority = 1000,
        opts = {}
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({with_sync = true})
            ts_update()
        end,
    }
    use {
        'theprimeagen/harpoon'
    }
    use {
        'mbbill/undotree'
    }
    use {
        'tpope/vim-fugitive'
    }
    use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
    use({'neovim/nvim-lspconfig'})
    use({'hrsh7th/nvim-cmp'})
    use({'hrsh7th/cmp-nvim-lsp'})
    use {
        'ThePrimeagen/vim-be-good'
    }
    use {
        'mfussenegger/nvim-dap'
    }
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
end)
