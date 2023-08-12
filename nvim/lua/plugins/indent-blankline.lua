return {
  'lukas-reineke/indent-blankline.nvim',

	opts = {
		use_treesitter = true,
		show_trailing_blankline_indent = false,
	},

	config = function(_,opts)
		require("indent_blankline").setup(opts)
	end,
}
