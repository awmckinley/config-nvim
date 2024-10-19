--[[
Language Server Protocol frontend for Harper.
--]]

if vim.fn.executable("harper-ls") == 1 then
	require("lspconfig").harper_ls.setup({
		capabilities = require("custom.util").capabilities(),
		settings = {
			["harper-ls"] = {
				linters = {
					spell_check = false,
					sentence_capitalization = false,
				},
			},
		},
	})
end
