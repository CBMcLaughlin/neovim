require('nvim-treesitter.configs').setup {
	ensure_installed = { 'vim', 'vimdoc', 'lua', 'cpp' },

	auto_install = truet,

	highlight = { enable = true },

	indent = { enable = true }
}
