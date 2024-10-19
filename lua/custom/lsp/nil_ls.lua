--[[
Incremental analysis assistant for writing in Nix.
--]]

if vim.fn.executable("nil") == 1 then
	require("lspconfig").nil_ls.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
