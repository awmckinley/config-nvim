--[[
Ruby configuration.
--]]

require("custom.lsp.ruby_lsp")
local custom = require("custom.util")

return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters = {
				rubocop = {
					args = {
						"--fix-layout",
						"--format",
						"quiet",
						"--stderr",
						"--stdin",
						"$FILENAME",
					},
				},
			},
			formatters_by_ft = {
				eruby = {
					"erb-format",
				},
				ruby = {
					"rubocop",
				},
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			custom.list_extend_unique(opts.ensure_installed, {
				"ruby",
			})
		end,
	},
}
