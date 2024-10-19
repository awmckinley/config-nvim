--[[
Language server for YAML files.
--]]

if vim.fn.executable("yaml-language-server") == 1 then
	require("lspconfig").yamlls.setup({
		capabilities = require("custom.util").capabilities(),
		settings = {
			yaml = {
				schemaStore = {
					enable = false,
					url = "",
				},
			},
		},
	})
end
