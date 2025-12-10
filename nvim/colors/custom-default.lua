-- Reset existing highlights and set colorscheme name.
vim.cmd('hi clear')
vim.g.colors_name = 'custom-default'

-- palette for color constants.
local colors = {
    dark_blue = 'NvimDarkBlue',
    dark_cyan = 'NvimDarkCyan',
    dark_green = 'NvimDarkGreen',
    dark_magenta = 'NvimDarkMagenta',
    dark_red = 'NvimDarkRed',
    dark_yellow = 'NvimDarkYellow',
    light_blue = 'NvimLightBlue',
    light_cyan = 'NvimLightCyan',
    light_green = 'NvimLightGreen',
    light_magenta = 'NvimLightMagenta',
    light_red = 'NvimLightRed',
    light_yellow = 'NvimLightYellow',
    light_grey1 = 'NvimLightGrey1',
    light_grey2 = 'NvimLightGrey2',
    light_grey3 = 'NvimLightGrey3',
    light_grey4 = 'NvimLightGrey4',
    dark_grey4 = 'NvimDarkGrey4',
    dark_grey3 = 'NvimDarkGrey3',
    dark_grey2 = 'NvimDarkGrey2',
    dark_grey1 = 'NvimDarkGrey1'
}

local groups = {
    Constant = { fg = colors.light_red, bold = true },
    Type = { fg = colors.light_yellow, bold = true },
}

-- Apply all highlight groups from the table.
for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
end
