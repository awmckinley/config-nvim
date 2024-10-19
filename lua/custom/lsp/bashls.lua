--[[
Language server for Bash.
--]]

if vim.fn.executable("bash-language-server") == 1 then
	require("lspconfig").bashls.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
