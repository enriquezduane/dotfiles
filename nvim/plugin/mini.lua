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

-- Smart buffer removal (preserves window layout)
require("mini.bufremove").setup()
