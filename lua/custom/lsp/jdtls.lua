--[[
Java language server.
--]]

if vim.fn.executable("jdtls") == 1 then
	require("lspconfig").jdtls.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
