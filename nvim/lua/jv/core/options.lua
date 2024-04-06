--options
local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.wrap = false
opt.cursorline = true

-- tabs and indentations
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.tabstop = 2    -- 2 spaces on tab press
opt.expandtab = true
opt.autoindent = true

-- search settings
opt.ignorecase = true -- ignore case when searching the word
opt.smartcase = true  -- when use specific search with diff cases then turn off ignore case

-- colors related
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
opt.clipboard:append("unnamedplus")

opt.swapfile = false
