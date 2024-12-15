-- return {
--   {
--     "neovim/nvim-lspconfig",
--     opts = {
--       servers = {
--         lua_ls = {
--           settings = {
--             Lua = {
--               format = {
--                 enable = true,
--                 defaultConfig = {
--                   indent_style = "space",
--                   indent_size = "4",
--                 },
--               },
--             },
--           },
--         },
--       },
--     },
--   },
-- }
return{
  "neovim/nvim-lspconfig",
  opts = function()
    if LazyVim.pick.want() ~= "telescope" then
      return
    end
    local Keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- stylua: ignore
    vim.list_extend(Keys, {
      { "gd", function() require("telescope.builtin").lsp_definitions({ reuse_win = true }) end, desc = "Goto Definition", has = "definition" },
      { "gr", "<cmd>Telescope lsp_references<cr>", desc = "References", nowait = true },
      { "gI", function() require("telescope.builtin").lsp_implementations({ reuse_win = true }) end, desc = "Goto Implementation" },
      { "gy", function() require("telescope.builtin").lsp_type_definitions({ reuse_win = true }) end, desc = "Goto T[y]pe Definition" },
    })
  end,
}
