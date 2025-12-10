return {
    "Saghen/blink.cmp",
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    opts = {
        enabled = function()
            return vim.bo.filetype ~= "markdown"
        end,

        keymap = {
            -- Set preset to 'none' to disable default keymaps and create your own.
            preset = 'none',

            -- Use Tab and S-Tab to navigate up and down the completion list.
            ['<Tab>'] = { 'select_next', 'fallback' },
            ['<S-Tab>'] = { 'select_prev', 'fallback' },

            -- This keeps the behavior from your original 'enter' preset.
            ['<CR>'] = { 'accept', 'fallback' },

            -- It's also helpful to have mappings for showing and hiding the menu.
            ['<C-space>'] = { 'show' },
            ['<C-e>'] = { 'hide', 'fallback' },
        }
    }
}
