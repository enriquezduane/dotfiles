return {
    "nvim-mini/mini.nvim",
    version = '*',
    config = function()
        require('mini.ai').setup()
        require('mini.statusline').setup()
        require('mini.files').setup()
        require('mini.pairs').setup()
    end
}
