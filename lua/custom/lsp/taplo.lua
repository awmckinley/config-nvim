--[[
Versatile, feature-rich TOML toolkit.
--]]

if vim.fn.executable("taplo") == 1 then
	require("lspconfig").taplo.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
