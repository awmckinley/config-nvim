--[[
Kotlin code completion, diagnostics and more.
--]]

if vim.fn.executable("kotlin-language-server") == 1 then
	require("lspconfig").kotlin_language_server.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
