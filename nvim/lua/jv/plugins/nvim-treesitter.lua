return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		-- autocomplete of html tags
		"windwp/nvim-ts-autotag",
	},
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
				"html",
				"scss",

			},

			auto_install = false,

			highlight = {
				enable = true,
			},

			indent = {
				enable = true,
			},
			--autocomplet of tags
			autotag = {
				enable = true,
			}

		})
	end
}
