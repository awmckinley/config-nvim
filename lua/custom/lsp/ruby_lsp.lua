--[[
Opinionated language server for Ruby.
--]]

if vim.fn.executable("ruby-lsp") == 1 then
	require("lspconfig").ruby_lsp.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
