local function mood()
  return [[<3]]
end

return {
  'nvim-lualine/lualine.nvim',
	lazy = false,
	priority = 900,

	opts = {
	  options = {
      icons_enabled = false,
      section_separators = { left = '', right = ''},
	  },
		sections = {
			lualine_a = {'mode'},
			lualine_b = {'branch', 'diagnostics'},
			lualine_c = {'filename'},
			lualine_x = {'filetype'},
			lualine_y = {'progress'},
			lualine_z = {{mood}},
    },
	},

	config = function(_,opts)
		require("lualine").setup(opts)
	end,
}
