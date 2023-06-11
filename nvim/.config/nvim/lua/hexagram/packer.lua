-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
    vim.cmd [[packadd packer.nvim]]
end

-- Reload nvim when plugins.lua is saved
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("packer_user_config", { clear = true }),
	pattern = "packer.lua",
	command = "source <afile> | PackerSync",
})

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
    use("numToStr/Comment.nvim") -- Easily comment stuff
    use("lewis6991/impatient.nvim") -- Speed up loading Lua modules in Neovim to improve startup time.

    use('sadotsoy/vim-xit')

    use('christoomey/vim-tmux-navigator')

    use({
      "kylechui/nvim-surround",
      config = function()
        require("nvim-surround").setup()
      end,
    })

    -- *** LSP *** 
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'JoosepAlviste/nvim-ts-context-commentstring'},

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
            {"goolord/alpha-nvim"}
        }
    }

    -- The current best Golang setup
    use 'ray-x/go.nvim'

    -- recommanded if need floating window support
    use 'ray-x/guihua.lua'

    -- *** APPEARANCE *** 

    -- Colourscheme
    use { "olivercederborg/poimandres.nvim" }

    -- It's LuaLine!
    use "nvim-lualine/lualine.nvim"

    -- Provides those horizontal indent margin lines
    use "lukas-reineke/indent-blankline.nvim"

    -- Show the color that a color string is.
    use({
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup()
      end,
    })

    -- DevIcons
    use("kyazdani42/nvim-web-devicons")

    -- Dress up the normal ui
	  use({ "stevearc/dressing.nvim" })

    -- Show LSP activities
    use({
      "j-hui/fidget.nvim",
      config = function()
        require("fidget").setup()
      end,
    })

    -- Gitsigns
    use("lewis6991/gitsigns.nvim")

    -- A pretty list for showing diagnostics, references, telescope results etc
    use({
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup({})
      end,
    })

    -- ZenMode
    use("folke/zen-mode.nvim")

    -- WhichKey
    use("folke/which-key.nvim")
end)

