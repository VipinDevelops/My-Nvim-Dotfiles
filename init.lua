-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- require("telescope").setup({
--   defaults = {
--     file_ignore_patterns = {
--       "node_modules",
--     },
--   },
-- })
vim.diagnostic.config({
  virtual_text = false, -- Disable standard virtual text diagnostics
})
