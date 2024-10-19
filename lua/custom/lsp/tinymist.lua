--[[
Integrated language service for Typst.
--]]

if vim.fn.executable("tinymist") == 1 then
	require("lspconfig").tinymist.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
