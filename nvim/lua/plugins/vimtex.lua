return {
  'lervag/vimtex',

  config = function()
		vim.g['vimtex_view_method'] = 'zathura'
		vim.g['vimtex_indent_enabled'] = 0
		vim.g['vimtex_syntax_enabled'] = 1
  end,
}
