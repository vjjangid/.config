return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.5',
	dependencies = {
		'nvim-lua/plenary.nvim',
		"nvim-telescope/telescope-live-grep-args.nvim",
		version = "^1.0.0",
	},

	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.load_extension("live_grep_args")

		-- extensions = {
		--
		-- 	live_grep_args = {
		-- 		layout_config = { width = 1 }
		-- 	}
		-- }


		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
				layout_config = {
					preview_width = 0.5
				}

			},
		})

		local keymap = vim.keymap
		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "git status" })
		keymap.set("n", "<leader>gh", "<cmd>Telescope git_stash<cr>", { desc = "git stash" })
		keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "git files" })
		keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "git commits" })
		keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "git branches" })
	end,
}
