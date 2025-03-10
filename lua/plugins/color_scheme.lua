return {
  "projekt0n/github-nvim-theme",
  name = "github-theme",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins

  config = function()
    require("github-theme").setup({
      -- options = { transparent = true },
      options = {
        transparent = true,
        -- dim_inactive = true,
        -- terminal_colors = true,

        modules = {
          neotree = { enable = true },
        },

        --  disable default theme of modules
        module_default = true,

        styles = {
          comments = "italic",
          -- keywords = "bold",
          -- types = "italic,bold",
        },
      },
      -- options = {},
    })

    vim.cmd("colorscheme github_dark_default	")
  end,
}
