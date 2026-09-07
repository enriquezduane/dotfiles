vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim", version = "stable" },
})

require("mini.ai").setup()
require("mini.statusline").setup()
require("mini.files").setup()
require("mini.pairs").setup()
require("mini.pick").setup()
require("mini.extra").setup()

require("mini.tabline").setup()

local function update_tabline()
    local n = #vim.fn.getbufinfo({ buflisted = 1 })
    vim.o.showtabline = n > 1 and 2 or 0
end

vim.api.nvim_create_autocmd({ "VimEnter", "BufAdd", "BufDelete" }, {
    callback = function()
        vim.schedule(update_tabline)
    end,
})

-- In colors/custom-default.lua (or plugin/mini.lua after setup):
vim.api.nvim_set_hl(0, "MiniTablineCurrent", { fg = "#ffffff", bg = "#505257", bold = true })
vim.api.nvim_set_hl(0, "MiniTablineHidden", { fg = "#7c818c", bg = "#1e222a" })
vim.api.nvim_set_hl(0, "MiniTablineFill", { bg = "#181a1f" })

-- Smart buffer removal (preserves window layout)
require("mini.bufremove").setup()
