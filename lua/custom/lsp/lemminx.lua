--[[
XML language server.
--]]

if vim.fn.executable("lemminx") == 1 then
	require("lspconfig").lemminx.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
