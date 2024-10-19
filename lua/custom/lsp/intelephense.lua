--[[
Professional PHP tooling.
--]]

if vim.fn.executable("intelephense") == 1 then
	require("lspconfig").intelephense.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
