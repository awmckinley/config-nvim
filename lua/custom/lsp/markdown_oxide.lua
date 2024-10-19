--[[
PKM for the LSP.
--]]

if vim.fn.executable("markdown-oxide") == 1 then
	require("lspconfig").markdown_oxide.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
