--[[
Git configuration.
--]]

local custom = require("custom.util")

custom.autocmd({ "FileType" }, {
	pattern = {
		"NeogitCommitMessage",
	},
	callback = function()
		custom.source("gitcommit")
	end,
})

return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			custom.list_extend_unique(opts.ensure_installed, {
				"git_config",
				"git_rebase",
				"gitattributes",
				"gitcommit",
				"gitignore",
			})
		end,
	},
}
