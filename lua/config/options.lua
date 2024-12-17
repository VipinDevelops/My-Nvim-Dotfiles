-- remap leader key
vim.g.mapleader = " "

-- file encoding
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- update title and line  number
vim.opt.number = true
vim.opt.title = true

-- smart indent
vim.opt.autoindent = true
vim.opt.smartindent = true

-- smart hihgliht search
vim.opt.hlsearch = true

-- disable backup
vim.opt.backup = false

--  show last command in status
vim.opt.showcmd = true

--  disbale command and status line
vim.opt.cmdheight = 0
-- status line
vim.opt.laststatus = 0

-- tab as space
vim.opt.expandtab = true
vim.opt.smarttab = true

-- at leaset 10 line above and below
vim.opt.scrolloff = 15

-- command preview before execute
vim.opt.inccommand = "split"
-- make search case insensitive
vim.opt.ignorecase = true

-- add 2 space indentation
vim.opt.breakindent = true
vim.opt.shiftwidth = 2

-- 2 space tab
vim.opt.tabstop = 2
-- diable wrap
vim.opt.wrap = false

-- allow backspace in insert mode
vim.opt.backspace = { "start", "eol", "indent" }

-- search sub directory
vim.opt.path:append({ "**" })
-- ignore node_modules
vim.opt.wildignore:append({ "*/node_modules/*" })

-- split in bottom and right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- keep cursor position  when split
vim.opt.splitkeep = "cursor"
-- vim.opt.mouse = ""
--
-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })

-- after verison 14
vim.g.lazyvim_picker = "telescope"
vim.g.snacks_animate = false
