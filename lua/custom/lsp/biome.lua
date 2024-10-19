--[[
Toolchain of the web.
--]]

if vim.fn.executable("biome") == 1 then
	require("lspconfig").biome.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
