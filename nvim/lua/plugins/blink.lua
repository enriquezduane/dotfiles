return {
    "Saghen/blink.cmp",
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    opts = {
        enabled = function()
            return vim.bo.filetype ~= "markdown"
        end,

        -- Configure completion selection behavior
        completion = {
            list = {
                selection = {
                    -- Set to false so the menu opens with no item selected.
                    -- This allows your first Tab press to select the first item.
                    preselect = false,
                    auto_insert = true,
                }
            }
        },

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
