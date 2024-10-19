--[[
Language Server for Clojure(script).
--]]

if vim.fn.executable("clojure-lsp") == 1 then
	require("lspconfig").clojure_lsp.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
