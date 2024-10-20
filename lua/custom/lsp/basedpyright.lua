--[[
Static type checker for Python.
--]]

if vim.fn.executable("basedpyright") == 1 then
	require("lspconfig").basedpyright.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
