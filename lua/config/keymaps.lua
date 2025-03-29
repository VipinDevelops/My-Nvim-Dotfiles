--
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local nvim_tmux_nav = require("nvim-tmux-navigation")
local fzf = require("fzf-lua")
local Util = require("lazyvim.util")

--- Increment/decrement
---
-- keymap.set("n", "+", "<C-a>")
-- keymap.set("n", "-", "<C-x>")

--- Delete a word backwards
--- keymap.set("n", "dw", "vb_d")

--- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
-- keymap.set("n", "<leader>a", "gg<S-v>G")

--- Jumplist
-- -- keymap.set("n", "<C-m>", "<C-i>", opts)
-- -- keymap.set("n", "te", ":tabedit<Return>", opts)
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
--
-- Split window
-- keymap.set("n", "ss", ":split<Return>", opts)
-- keymap.set("n", "sv", ":vsplit<Return>", opts)
-- keymap.set("n", "<Space>ss", ":split<Return>", { desc = "split vertical" })
-- keymap.set("n", "<Space>sv", ":vsplit<Return>", { desc = "split horizontal" })
--
--- Resize window
-- keymap.set("n", "<C-w><left>", "<C-w><")
-- keymap.set("n", "<C-w><right>", "<C-w>>")
-- keymap.set("n", "<C-w><up>", "<C-w>+")
-- keymap.set("n", "<C-w><down>", "<C-w>-")
--
-- Shift arrow to resize
keymap.set("n", "<S-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap.set("n", "<S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap.set("n", "<S-Right>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap.set("n", "<S-Left>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
--- Diagonstics
--[[ keymap.set("n", "<C-j>", function() ]]
--[[ vim.diagnostic.goto_next() ]]
-- [[ end, opts) ]]

-- Comments
--[[ vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false }) ]]
-- vim.api.nvim_set_keymap("n", "<C-_>", "gc", { noremap = false })
vim.api.nvim_set_keymap("n", "<C-.>", "gc", { noremap = false })

-- Center the View
-- keymap.set("n", "<C-d>", "<C-d>zz")
-- keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- move between paragraph
-- keymap.set("n", "{", "{zz")
-- keymap.set("n", "}", "}zz")
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
--
-- Save file
-- vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { noremap = true, desc = "Save window" })
-- close file
-- vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { noremap = true, desc = "Quit window" })

-- re-do
-- vim.keymap.set("n", "<leader>r", "<C-r>", { noremap = true, desc = "re-do" })

-- Borderless terminal
vim.keymap.set("n", "<C-/>", function()
  Util.terminal(nil, { border = "none" })
end, { desc = "Term with border" })

-- Borderless lazygit
vim.keymap.set("n", "<leader>gg", function()
  Util.terminal({ "lazygit" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false, border = "none" })
end, { desc = "Lazygit (root dir)" })

local live_grep_cwd = function()
  fzf.fzf_exec("fd --type d -H --exclude=.git", {
    actions = {
      ["default"] = function(sel, opts)
        fzf.live_grep({ cwd = sel[1], fzf_opts = { ["--layout"] = "reverse-list" } })
      end,
    },
  })
end

vim.keymap.set("n", "<leader>sf", live_grep_cwd, { desc = "Search in a Folder" })
vim.keymap.set("n", "gD", "<cmd>vsplit | TSToolsGoToSourceDefinition<CR>")
vim.keymap.set("n", "gd", "<cmd>TSToolsGoToSourceDefinition<CR>")
