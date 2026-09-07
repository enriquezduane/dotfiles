-- Visual mode
vim.keymap.set("v", "p", '"_dP', { noremap = true, silent = true })

-- Movement
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Buffer navigation (Tabbing)
vim.keymap.set("n", "<Tab>", "<Cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", "<Cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Clean close (using mini.bufremove so your window splits don't collapse)
vim.keymap.set("n", "<leader>x", function()
    require("mini.bufremove").delete(0, false)
end, { desc = "Close buffer" })

-- Force close without saving
vim.keymap.set("n", "<leader>X", function()
    require("mini.bufremove").delete(0, true)
end, { desc = "Force close buffer" })

-- Close all other buffers (keep only current one)
vim.keymap.set("n", "<leader>bo", function()
    local current = vim.api.nvim_get_current_buf()
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if buf ~= current and vim.api.nvim_buf_is_loaded(buf) then
            require("mini.bufremove").delete(buf, false)
        end
    end
end, { desc = "Close other buffers" })

-- Mini Files
vim.keymap.set("n", "<leader>fd", function()
    require("mini.files").open()
end, { desc = "Open Mini Files" })

-- Jumplist navigation
vim.keymap.set("n", "<leader>j", "<C-o>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", "<C-i>", { noremap = true, silent = true })

-- Quickfix navigation
vim.keymap.set('n', '<leader>qn', ':cnext<CR>', { desc = 'Next quickfix item' })
vim.keymap.set('n', '<leader>qb', ':cprev<CR>', { desc = 'Previous quickfix item' })

-- Show diagnostic float window
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

-- Mini.pick / Mini.extra keys
vim.keymap.set("n", "<leader>ff", function() require("mini.pick").builtin.files() end,
    { silent = true, desc = "Pick Find Files" })
vim.keymap.set("n", "<leader>fg", function() require("mini.pick").builtin.grep_live() end,
    { silent = true, desc = "Pick Live Grep" })
vim.keymap.set("n", "<leader>fb", function() require("mini.pick").builtin.buffers() end,
    { silent = true, desc = "Pick Buffers" })
vim.keymap.set("n", "<leader>fo", function() require("mini.extra").pickers.oldfiles() end,
    { silent = true, desc = "Pick Old Files (History)" })
vim.keymap.set("n", "<leader>fr", function() require("mini.pick").builtin.resume() end,
    { silent = true, desc = "Pick Resume Last Picker" })

-- LSP navigation (mini.extra)
vim.keymap.set("n", "gd", function() require("mini.extra").pickers.lsp({ scope = "definition" }) end,
    { desc = "LSP Goto Definition" })
vim.keymap.set("n", "gr", function() require("mini.extra").pickers.lsp({ scope = "references" }) end,
    { desc = "LSP Goto References" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Actions" })
