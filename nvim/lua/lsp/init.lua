-- lua/lsp/init.lua

-- Enable LSPs
vim.lsp.enable({
    "clangd",
    "lua_ls",
    "gopls",
    "ruff",
    "basedpyright",
    "ts_ls",
    "astro",
})

-- Diagnostic signs and configuration
vim.diagnostic.config({
    virtual_text = false,
    underline = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
    update_in_insert = false,
    severity_sort = true,
})
