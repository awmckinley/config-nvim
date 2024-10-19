--[[
JSON language server.
--]]

if vim.fn.executable("vscode-json-language-server") == 1 then
	require("lspconfig").jsonls.setup({
		capabilities = require("custom.util").capabilities(),
		settings = {
			json = {
				schemas = require("schemastore").json.schemas(),
				validate = {
					enable = true,
				},
			},
		},
	})
end
