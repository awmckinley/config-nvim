--[[
Language server that offers Lua language support.
--]]

if vim.fn.executable("lua-language-server") == 1 then
	require("lspconfig").lua_ls.setup({
		capabilities = require("custom.util").capabilities(),
	})
end
