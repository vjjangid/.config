return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",

	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({

			ensure_installed = {
				"c",
				"lua",
				"vim",
				"c_sharp",
				"angular",
				"bash",
				"typescript",
				"vimdoc",

			},

			auto_install = false,

			highlight = {
				enable = true,
			},

			indent = {
				enable = true,
			}

		})
	end
}
