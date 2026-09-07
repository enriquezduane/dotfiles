vim.pack.add({
    "https://github.com/rafamadriz/friendly-snippets",
    { src = "https://github.com/Saghen/blink.cmp", version = vim.version.range("1.x") },
})

require("blink.cmp").setup({
    enabled = function()
        return vim.bo.filetype ~= "markdown"
    end,
    completion = {
        list = {
            selection = {
                preselect = false,
                auto_insert = true,
            },
        },
    },
    keymap = {
        preset = "none",
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
        ["<C-space>"] = { "show" },
        ["<C-e>"] = { "hide", "fallback" },
    },
})
