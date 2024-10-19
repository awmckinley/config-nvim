--[[
Next-generation Elixir language server.
--]]

if vim.fn.executable("lexical") == 1 then
	require("lspconfig").lexical.setup({
		capabilities = require("custom.util").capabilities(),
		cmd = {
			"lexical",
		},
	})
end
