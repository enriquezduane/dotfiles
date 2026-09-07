vim.pack.add({ "https://github.com/neanias/everforest-nvim" })

require("everforest").setup({})

local is_mac = vim.uv.os_uname().sysname == "Darwin"

if is_mac then
    vim.cmd.colorscheme("custom-default")
else
    require("everforest").setup({})
    vim.cmd.colorscheme("everforest")
end
