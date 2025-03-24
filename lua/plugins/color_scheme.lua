-- return {
--   "projekt0n/github-nvim-theme",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("github-theme").setup({
--       options = {
--         transparent = true,
--
--         darken = {
--           floats = false,
--         },
--
--         styles = {
--           comments = "italic",
--           keywords = "italic,bold",
--         },
--       },
--
--       palletes = {
--         all = {},
--       },
--
--       groups = {
--         all = {
--           -- TreesitterContext = { bg = "sel0" },
--           -- NoicePopupmenuSelected = { bg = "sel0" },
--           -- TelescopeSelection = { bg = "sel0" },
--           -- NormalFloat = { bg = "NONE", fg = "bg3" },
--           -- MatchParen = { bg = "sel2" },
--           -- IncSearch = { bg = "sel2" },
--           -- MiniTrailspace = { bg = "bg2" },
--           -- Pmenu = { bg = "bg2" },
--           -- FloatBorder = { fg = "bg3", bg = "NONE" },
--           -- TelescopeBorder = { fg = "bg3" },
--           -- NoiceCmdlinePopupBorder = { fg = "bg3" },
--           -- NoiceCmdlinePopupBorderSearch = { fg = "bg3" },
--           -- StatusLine = { bg = "NONE", fg = "bg2" },
--           -- StatusLineNC = { bg = "NONE", fg = "bg1" },
--           -- Visual = { bg = "sel2" },
--         },
--       },
--     })
--
--     vim.cmd.colorscheme("github_dark")
--   end,
-- }
-----@diagnostic disable: no-unknown

return {
  "projekt0n/github-nvim-theme",
  lazy = false,
  priority = 1000,
  config = function()
    require("github-theme").setup({
      options = {
        hide_end_of_buffer = true,
        hide_nc_statusline = true,
        transparent = true,
        terminal_colors = true,
        dim_inactive = false,
        module_default = true,
        styles = { -- Style to be applied to different syntax groups
          comments = "italic", -- Value is any valid attr-list value `:help attr-list`
          functions = "NONE",
          keywords = "NONE",
          variables = "NONE",
          conditionals = "NONE",
          constants = "bold",
          numbers = "NONE",
          operators = "NONE",
          strings = "NONE",
          types = "NONE",
        },
        inverse = { -- Inverse highlight for different types
          match_paren = true,
          visual = false,
          search = false,
        },
        darken = { -- Darken floating windows and sidebar-like windows
          floats = true,
          sidebars = {
            enable = true,
            list = {}, -- Apply dark background to specific windows
          },
        },
      },
    })

    vim.cmd.colorscheme("github_dark_default")
  end,
}
