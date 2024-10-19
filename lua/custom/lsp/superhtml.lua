--[[
HTML language server and templating language library.
--]]

if vim.fn.executable("superhtml") == 1 then
	require("lspconfig").superhtml.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
