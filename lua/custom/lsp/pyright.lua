--[[
Static type checker for Python.
--]]

if vim.fn.executable("pyright") == 1 then
	require("lspconfig").pyright.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
