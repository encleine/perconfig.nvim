--  I promise not to create any merge conflicts in this directory :)
--
return {
	'christoomey/vim-tmux-navigator',
	-- Git related plugins
	'tpope/vim-fugitive',
	'tpope/vim-rhubarb',

	-- Detect tabstop and shiftwidth automatically
	'tpope/vim-sleuth',


	'ellisonleao/dotenv.nvim',

	{ "lukas-reineke/cmp-under-comparator" },
	{ "nvim-neotest/nvim-nio" },
	-- show pending keybinds.
	{ 'folke/which-key.nvim',              opts = {} },




	-- "gc" to comment visual regions/lines
	{ 'numToStr/Comment.nvim',             opts = {} },



	{ 'kevinhwang91/nvim-ufo',             dependencies = { 'kevinhwang91/promise-async' } },
	{
		"hexdigest/go-enhanced-treesitter.nvim",
		build = ":TSInstall go sql",
		ft = "go",
	}
}
