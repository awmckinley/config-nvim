--[[
Autotools language server.
--]]

if vim.fn.executable("autotools-language-server") == 1 then
	require("lspconfig").autotools_ls.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
