return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master", -- Pin to stable branch (fixes the error)
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = { "c", "cpp", "go", "lua", "python", "vim", "vimdoc", "markdown" },
        highlight = { enable = true },
        indent = { enable = true },
    },
}
