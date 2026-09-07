-- lsp/basedpyright.lua
return {
    name = "basedpyright",
    cmd = { "basedpyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "setup.py", "requirements.txt", ".git" },
    settings = {
        basedpyright = {
            disableOrganizeImports = true,
            analysis = {
                -- Options: "off", "basic", "standard", "strict", "recommended", "all"
                typeCheckingMode = "basic",
                reportUnusedVariable = "none",
                reportUnusedImport = "none",
            },
        },
    },
}
