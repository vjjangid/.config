return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",

    dependencies = {
	 "hrsh7th/cmp-buffer", -- source for text in buffer
	 "hrsh7th/cmp-path", -- source for file system paths
    "L3MON4D3/LuaSnip", -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    "rafamadriz/friendly-snippets", -- useful snippets
    "onsails/lspkind.nvim", -- vs-code like pictograms
    },

    config = function()
	local cmp = require("cmp")
	
	local luasnip = require("luasnip")

	local lspki
	cmp.setup({

		snippet = {
		    require('luasnip').lsp_expand(args.body)
		},

		mapping = cmp.mapping.preset.insert({
		    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
		    ['<C-f>'] = cmp.mapping.scroll_docs(4),
		    ['<C-Space>'] = cmp.mapping.complete(),
		    ['<C-e>'] = cmp.mapping.abort(),
		    ['<CR>'] = cmp.mapping.confirm({ select = true }),
		}),
	})
    end,
}
