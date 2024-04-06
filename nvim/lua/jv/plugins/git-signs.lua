return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  -- opts = {
  --   on_attach = function(bufnr)
  --     local gitsigns = require("gitsigns")
  --
  --     local function map(mode, l, r, desc)
  --       vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
  --     end
  --
  --     --Actions
  --     -- map("n", "<leader>hs")
  --   end
  -- }
}
