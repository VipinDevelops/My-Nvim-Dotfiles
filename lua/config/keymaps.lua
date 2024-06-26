-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local nvim_tmux_nav = require("nvim-tmux-navigation")

--- Increment/decrement
---
-- keymap.set("n", "+", "<C-a>")
-- keymap.set("n", "-", "<C-x>")

--- Delete a word backwards
--- keymap.set("n", "dw", "vb_d")

--- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--- Jumplist
-- -- keymap.set("n", "<C-m>", "<C-i>", opts)
--
-- -- keymap.set("n", "te", ":tabedit<Return>", opts)
-- -- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- -- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
--
-- Split window
-- keymap.set("n", "ss", ":split<Return>", opts)
-- keymap.set("n", "sv", ":vsplit<Return>", opts)

--- Move window
-- keymap.set("n", "sh", "<C-w>h")
-- keymap.set("n", "sk", "<C-w>k")
-- keymap.set("n", "sj", "<C-w>j")
-- keymap.set("n", "sl", "<C-w>l")
--
--- Resize window
-- keymap.set("n", "<C-w><left>", "<C-w><")
-- keymap.set("n", "<C-w><right>", "<C-w>>")
-- keymap.set("n", "<C-w><up>", "<C-w>+")
-- keymap.set("n", "<C-w><down>", "<C-w>-")
--
--- Diagonstics
--[[ keymap.set("n", "<C-j>", function() ]]
--[[ vim.diagnostic.goto_next() ]]
-- [[ end, opts) ]]

-- Comments
--[[ vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false }) ]]
-- vim.api.nvim_set_keymap("n", "<C-_>", "gc", { noremap = false })
vim.api.nvim_set_keymap("n", "<C-.>", "gc", { noremap = false })

-- Center the View
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Experiment
-- keymap.set("n", "j", "jzzzv")
-- keymap.set("n", "h", "hzzzv")
-- keymap.set("n", "l", "lzzzv")
-- keymap.set("n", "k", "kzzzv")
-- tmux keymap
vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

--
-- Grep and replace
-- vim.api.nvim_set_keymap("v", "<C-f>", "y<ESC>:Telescope live_grep default_text=<c-r>0<CR>", default_opts)
