return {
    name = "astro",
    cmd = { "astro-ls", "--stdio" },
    filetypes = { "astro" },
    root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
    init_options = {
        typescript = {},
    },

    -- need this because https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#astro
    before_init = function(_, config)
        -- locate mise npm:typescript install path strictly.
        local matches = vim.fn.glob(
            vim.fn.expand("~/.local/share/mise/installs/npm-typescript/~6/lib/node_modules/typescript/lib"),
            false,
            true
        )


        local tsdk = matches[1]

        -- verify path exists and contains tsserverlibrary.js (required by Astro-ls and removed in TS 7+)
        if not tsdk or vim.fn.filereadable(tsdk .. "/tsserverlibrary.js") == 0 then
            local err_msg = "[astro-ls] Missing required TypeScript <= 6.x SDK.\n"
            .. "As per documentation, TypeScript 7+ dropped tsserverlibrary.js.\n"
            .. "Run: mise use -g 'npm:typescript@~6'"

            vim.notify(err_msg, vim.log.levels.ERROR)
            error(err_msg)
        end

        config.init_options = config.init_options or {}
        config.init_options.typescript = config.init_options.typescript or {}
        config.init_options.typescript.tsdk = tsdk
    end,
}
