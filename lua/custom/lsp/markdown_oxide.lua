--[[
PKM for the LSP.
--]]

if vim.fn.executable("markdown-oxide") == 1 then
	require("lspconfig").markdown_oxide.setup({
		capabilities = vim.tbl_deep_extend("force", require("custom.util").capabilities(), {
			workspace = {
				didChangeWatchedFiles = {
					dynamicRegistration = true,
				},
			},
		}),
	})
end
