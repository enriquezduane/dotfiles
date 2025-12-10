-- Global variables
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Display
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 6
vim.opt.guicursor = ""
vim.opt.shortmess:append("aSIF")
vim.opt.showmode = false
vim.o.pumheight = 10

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "%f:%l:%c:%m"

-- General behavior
vim.opt.mouse = "a"
vim.opt.shada = "!,'20,<50,s10,h"
vim.opt.undofile = true
vim.opt.clipboard:append("unnamedplus")
vim.opt.backspace = "indent,eol,start"
vim.opt.jumpoptions = "stack,view"
vim.opt.completeopt = "menuone,noinsert,noselect"

-- File handling
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- UI improvements
vim.opt.signcolumn = "yes"
vim.opt.wrap = true
vim.opt.listchars = { tab = "→ ", trail = "·", nbsp = "␣" }

-- Split behavior
vim.opt.splitbelow = true
vim.opt.splitright = true
