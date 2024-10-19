--[[
Official Go language server.
--]]

if vim.fn.executable("gopls") == 1 then
	require("lspconfig").gopls.setup({
		capabilities = require("custom.util").capabilities(),
		settings = {
			gopls = {
				hints = {
					assignVariableTypes = true,
					compositeLiteralFields = true,
					compositeLiteralTypes = true,
					constantValues = true,
					functionTypeParameters = true,
					parameterNames = true,
					rangeVariableTypes = true,
				},
			},
		},
	})
end
