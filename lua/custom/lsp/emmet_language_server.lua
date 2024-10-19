--[[
Language server for emmet.io.
--]]

if vim.fn.executable("emmet-language-server") == 1 then
	require("lspconfig").emmet_language_server.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
