--set leader key to space
vim.g.mapleader = " "

--keymaps
local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>", {desc = "Exit from insert mode"})
keymap.set("n", "<leader>sv", "<C-w>v", {desc = "split vertically"})

keymap.set("n", "<leader>to", "<cmd>:tabnew<Enter>", {desc = "open new tab"})
keymap.set("n", "<leader>tx", "<cmd>:tabclose<Enter>", {desc = "close current tab"})
keymap.set("n", "<leader>tn", "<cmd>:tabn<Enter>", {desc = "move to next tab"})
keymap.set("n", "<leader>tp", "<cmd>:tabp<Enter>", {desc = "move to prev tab"})
keymap.set("n", "<leader>tf", "<cmd>:tabnew %<Enter>", {desc = "Open current buffer/file into new tab"})

