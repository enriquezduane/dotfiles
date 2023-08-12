return {
  'akinsho/bufferline.nvim',

  dependencies = { 'nvim-tree/nvim-web-devicons'},

	opts = {
		options = {
			show_buffer_icons = false,
			always_show_bufferline = false,
		}
	},

	config = function(_,opts)
		require("bufferline").setup(opts)
	end,
}
