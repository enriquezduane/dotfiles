return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },

	keys = {
    {
      "<leader>f",
      "<cmd>Telescope find_files<CR>",
      desc = "Find Files",
    },
	},

	opts = {
		-- disables icons
		pickers = {
			find_files = {
				disable_devicons = true,
			},
		},

	},
}
