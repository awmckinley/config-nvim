--[[
LSP server for OCaml.
--]]

if vim.fn.executable("ocamllsp") == 1 then
	require("lspconfig").ocamllsp.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
