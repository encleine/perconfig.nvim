--  I promise not to create any merge conflicts in this directory :)
--
return {
	'christoomey/vim-tmux-navigator',
	-- Git related plugins
	'tpope/vim-fugitive',
	'tpope/vim-rhubarb',

	-- Detect tabstop and shiftwidth automatically
	'tpope/vim-sleuth',

	-- lsp
	{ import = "custom.Plugins.lsp" },

	{ import = "custom.Plugins.nvim-cmp" },

	{ "lukas-reineke/cmp-under-comparator" },
	{ "nvim-neotest/nvim-nio" },
	-- show pending keybinds.
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
	{ import = "custom.Plugins.peepsight" },

	{ 'kevinhwang91/nvim-ufo',             dependencies = { 'kevinhwang91/promise-async' } },
	{ import = "custom.Plugins.statuscol" },
	{
		"hexdigest/go-enhanced-treesitter.nvim",
		build = ":TSInstall go sql",
		ft = "go",
	}
}
