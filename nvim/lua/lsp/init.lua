-- lua/lsp/init.lua

-- Enable LSPs
vim.lsp.enable({
    "clangd",
    "lua_ls",
    "gopls",
    "ruff",
    "basedpyright",
})

-- Diagnostic signs and configuration
vim.diagnostic.config({
    virtual_text = true,
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

-- Format on save (ignoring type-checkers like basedpyright)
vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("UserLspFormat", { clear = true }),
    callback = function(args)
        vim.lsp.buf.format({
            bufnr = args.buf,
            filter = function(client)
                return client.name ~= "basedpyright" and client.name ~= "pyright"
            end,
        })
    end,
})
