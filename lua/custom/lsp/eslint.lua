--[[
Find and fix problems in your JavaScript code.
--]]

if vim.fn.executable("vscode-eslint-language-server") == 1 then
	require("lspconfig").eslint.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
