return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	opts = {
		ensure_installed = {
			"java",
			"c",
			"lua",
			"vim",
			"html",
			"css",
			"markdown",
			"markdown_inline",
			"latex",
		},

		sync_install = true,

		autotag = {
			enable = true,
		},

		auto_install = true,

		autopairs = {
			enable = true,
		},

		highlight = {
			enable = true, -- false will disable the whole extension
			additional_vim_regex_highlighting = true,
		},

		indent = {
			enable = true,
			--[[ disable = { "yaml" } ]]
		},

		context_commentstring = {
			enable = true,
			enable_autocmd = false,
		},

		incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<Enter>",
        node_incremental = "<Enter>",
        node_decremental = "<BS>",
      },
    },
	},

	config = function(_, opts)
		if type(opts.ensure_installed) == "table" then
			local added = {}
			opts.ensure_installed = vim.tbl_filter(function(lang)
				if added[lang] then
					return false
				end
				added[lang] = true
				return true
			end, opts.ensure_installed)
		end
		require("nvim-treesitter.configs").setup(opts)
	end,
}

