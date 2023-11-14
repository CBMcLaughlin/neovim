return {
	-- Theme settings
	{
		'folke/tokyonight.nvim',
		priority = 1000,
		config = function()
			require('tokyonight').setup({
				transparent = true
			})
			vim.cmd('colorscheme tokyonight')
		end
	},
	-- LSP Stuff (nvim/after/plugin/lsp.lua)
	{
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
		'folke/neodev.nvim',
		'hrsh7th/cmp-path',
	},
	-- TreeSitter
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate'
	},
	-- Autocomplete (nvim/after/plugin/cmp.lua)
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets',

			'hrsh7th/cmp-nvim-lsp',
		},
	},
	-- Utilies
	{
		'numToStr/Comment.nvim',
		config = function()
			require("Comment").setup()
		end
	},
	{
		'nvim-lualine/lualine.nvim',
		config = function()
			require('lualine').setup({
				options = {
					icons_enabled = true,
					component_separators = { left = '', right = '' },
					section_separators = { left = '', right = '' },
				},
				sections = {
					lualine_a = { 'mode' },
					lualine_b = { 'branch', 'diff', 'diagnostics' },
					lualine_c = { 'filename' },
					lualine_x = { 'encoding', 'fileformat', 'filetype' },
					lualine_y = { 'progress' },
					lualine_z = { 'location' }
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { 'filename' },
					lualine_x = { 'location' },
					lualine_y = {},
					lualine_z = {}
				},
			})
		end
	},
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.4',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
