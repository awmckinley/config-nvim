--[[
LSP client.
--]]

return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "b0o/SchemaStore.nvim", pin = true },
			{ "hrsh7th/cmp-nvim-lsp", pin = true },
			{ "smjonas/inc-rename.nvim", pin = true },
		},
		config = function()
			-- triggered on lsp attach
			local custom = require("custom.util")
			custom.autocmd("LspAttach", {
				callback = function()
					local telescope = require("telescope.builtin")

					-- enable completion triggered by <C-X><C-O>
					vim.opt_local.omnifunc = "v:lua.vim.lsp.omnifunc"

					vim.keymap.set("n", "gd", telescope.lsp_definitions, {
						buffer = 0,
						desc = "Goto definition",
					})

					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {
						buffer = 0,
						desc = "Goto declaration",
					})

					vim.keymap.set("n", "gI", telescope.lsp_implementations, {
						buffer = 0,
						desc = "Goto implementation",
					})

					vim.keymap.set("n", "gr", telescope.lsp_references, {
						buffer = 0,
						desc = "Goto references",
					})

					vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {
						buffer = 0,
						desc = "Goto type definition",
					})

					vim.keymap.set("n", "gy", telescope.lsp_type_definitions, {
						buffer = 0,
						desc = "Goto type definition",
					})

					vim.keymap.set("n", "K", vim.lsp.buf.hover, {
						buffer = 0,
						desc = "Hover definition",
					})

					vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, {
						buffer = 0,
						desc = "Code actions",
					})

					vim.keymap.set("n", "<Leader>cr", function()
						return ":IncRename " .. vim.fn.expand("<cword>")
					end, {
						buffer = 0,
						desc = "Rename symbol",
						expr = true,
					})
				end,
			})
		end,
		event = {
			"BufNewFile",
			"BufReadPost",
			"BufWritePre",
		},
		cmd = {
			"LspInfo",
			"LspLog",
			"LspRestart",
			"LspStart",
			"LspStop",
		},
		pin = true,
	},
}
