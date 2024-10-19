--[[
Roslyn-based LSP language server for C#.
--]]

if vim.fn.executable("csharp-ls") == 1 then
	require("lspconfig").csharp_ls.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
