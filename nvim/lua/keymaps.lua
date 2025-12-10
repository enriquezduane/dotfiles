-- Visual mode
vim.keymap.set("v", "p", '"_dP', { noremap = true, silent = true })

-- Movement vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Buffer navigation
vim.keymap.set("n", "<Tab>", "<C-^>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>x", "<Cmd>bdelete<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bw", "<Cmd>bufdo bdelete<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>an", "<Cmd>next<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ap", "<Cmd>prev<CR>", { noremap = true, silent = true })

-- Mini Files
vim.keymap.set("n", "\\", "<Cmd>:lua MiniFiles.open()<CR>", { noremap = true, silent = true })

-- Jumplist navigation
vim.keymap.set("n", "<leader>j", "<C-o>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", "<C-i>", { noremap = true, silent = true })

-- Quickfix navigation
vim.keymap.set('n', '<leader>qn', ':cnext<CR>', { desc = 'Next quickfix item' })
vim.keymap.set('n', '<leader>qb', ':cprev<CR>', { desc = 'Previous quickfix item' })

-- Fzf-lua keys

local fzf = require('fzf-lua')

-- Fzf-lua keys
vim.keymap.set("n", "<leader>ff", function() fzf.files() end, { silent = true, desc = "FzfLua Find Files" })
vim.keymap.set("n", "<leader>fg", function() fzf.live_grep() end, { silent = true, desc = "FzfLua Live Grep" })
vim.keymap.set("n", "<leader>fb", function() fzf.buffers() end, { silent = true, desc = "FzfLua Buffers" })
vim.keymap.set("n", "<leader>fo", function() fzf.oldfiles() end, { silent = true, desc = "FzfLua Old Files (History)" })
vim.keymap.set("n", "<leader>fr", function() fzf.resume() end, { silent = true, desc = "FzfLua Resume Last Search" })
