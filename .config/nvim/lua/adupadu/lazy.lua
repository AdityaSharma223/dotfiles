require("lazy").setup({
    -- 'Xuyuanp/scrollbar.nvim',
    'yamatsum/nvim-cursorline',
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        }
    },
    'ellisonleao/gruvbox.nvim',
    'loctvl842/monokai-pro.nvim',
    'AlexvZyl/nordic.nvim',
    -- init.lua:
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    'nvim-treesitter/nvim-treesitter',
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    "nvim-lualine/lualine.nvim",
    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

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
        },
    },
    'Raimondi/delimitMate',
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
})

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- local plugins = {
--    'wbthomason/packer.nvim',
--    {
-- 	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- 	  -- or                            , branch = '0.1.x',
-- 	  dependencies = { {'nvim-lua/plenary.nvim'} }
--    },
--    'ellisonleao/gruvbox.nvim',
--    'AlexvZyl/nordic.nvim',
--    'tanvirtin/monokai.nvim',
--
--   -- treesitter
--   ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}),
--
--   -- fugitive
--   ('tpope/vim-fugitive'),
--
--   -- lsp
--    {
-- 	  'VonHeikemen/lsp-zero.nvim',
-- 	  dependencies = {
-- 		  -- LSP Support
-- 		  {'neovim/nvim-lspconfig'},
-- 		  {'williamboman/mason.nvim'},
-- 		  {'williamboman/mason-lspconfig.nvim'},
--
-- 		  -- Autocompletion
-- 		  {'hrsh7th/nvim-cmp'},
-- 		  {'hrsh7th/cmp-buffer'},
-- 		  {'hrsh7th/cmp-path'},
-- 		  {'saadparwaiz1/cmp_luasnip'},
-- 		  {'hrsh7th/cmp-nvim-lsp'},
-- 		  {'hrsh7th/cmp-nvim-lua'},
--
-- 		  -- Snippets
-- 		  {'L3MON4D3/LuaSnip'},
-- 		  {'rafamadriz/friendly-snippets'},
-- 	  }
--   },
--
--   -- nvim tree
--    {
--       'nvim-tree/nvim-tree.lua',
--       dependencies = {
--           'nvim-tree/nvim-web-devicons', -- optional, for file icons
--       }
--   },
--
--   -- lualine
--    {
--       'nvim-lualine/lualine.nvim',
--       dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
--   },
--
--   -- auto closing for brackets and stuff
--    {'Raimondi/delimitMate'},
--
--   -- comment nvim
--    {
--       'numToStr/Comment.nvim',
--       config = function()
--           require('Comment').setup()
--       end
--   },
--
--   -- markdown preview
--   -- install without yarn or npm
--     {
--         "iamcco/markdown-preview.nvim",
--         run = function() vim.fn["mkdp#util#install"]() end,
--     },
--
--     -- alpha-nvim dashboard~ish
--      {
--         'goolord/alpha-nvim',
--         dependencies = { 'nvim-tree/nvim-web-devicons' },
--         config = function ()
--             require'alpha'.setup(require'alpha.themes.theta'.config)
--         end
--     },
--
--     -- random ascii art for alpha
--     --  ({
--     --     "MaximilianLloyd/ascii.nvim",
--     --     dependencies = { "MunifTanjim/nui.nvim" }
--     -- })
--
--     -- nvim-cursorline
--     'yamatsum/nvim-cursorline',
--
--     -- scrollbar.nvim
--     'Xuyuanp/scrollbar.nvim',
--
--     -- smooth scroll
--     --  {'karb94/neoscroll.nvim'}
--
--     -- -- for indent lines
--     -- indent-blankline.nvim
--     --  "lukas-reineke/indent-blankline.nvim"
-- }
