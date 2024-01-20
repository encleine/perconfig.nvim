--  I promise not to create any merge conflicts in this directory :)
--
return {
	'christoomey/vim-tmux-navigator',
	'Exafunction/codeium.vim',
	-- Git related plugins
	'tpope/vim-fugitive',
	'tpope/vim-rhubarb',

	-- Detect tabstop and shiftwidth automatically
	'tpope/vim-sleuth',

	-- lsp
	{ import = "custom.Plugins.lsp" },

	{ import = "custom.Plugins.nvim-cmp" },

	-- Useful plugin to show you pending keybinds.
	{ 'folke/which-key.nvim',              opts = {} },

	{ import = "custom.Plugins.gitsigns" },

	{ import = "custom.Plugins.theme" },

	{ import = "custom.Plugins.lualine" },
	{ import = "custom.Plugins.blankline" },

	-- "gc" to comment visual regions/lines
	{ 'numToStr/Comment.nvim',             opts = {} },

	-- Fuzzy Finder (files, lsp, etc)
	{ import = "custom.Plugins.telescope" },

	{ import = "custom.Plugins.treesitter" },
	{ 'kevinhwang91/nvim-ufo',             dependencies = { 'kevinhwang91/promise-async' } },
	{ import = "custom.Plugins.harpoon" },
	{ import = "custom.Plugins.statuscol" },
	{
		"hexdigest/go-enhanced-treesitter.nvim",
		build = ":TSInstall go sql",
		ft = "go",
	},
}
