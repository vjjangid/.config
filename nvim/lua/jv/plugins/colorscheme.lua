return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, --priortize this as first

		config = function()
			--command mode function to load colorscheme
			vim.cmd([[colorscheme catppuccin]])
		end,
	}
}
