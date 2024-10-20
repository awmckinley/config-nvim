--[[
Easily manage multiple terminal windows.
--]]

local custom = require("custom.util")

return {
	{
		"akinsho/toggleterm.nvim",
		opts = {},
		config = function(opts)
			require("toggleterm").setup(opts)

			local Terminal = require("toggleterm.terminal").Terminal

			local lazygit = Terminal:new({
				close_on_exit = true,
				cmd = "lazygit",
				direction = "float",
				hidden = true,
				on_open = function(term)
					term:set_mode("i")
				end,
				on_close = function(term)
					-- WARN: kills Lazygit without confirmation
					vim.api.nvim_buf_delete(term.bufnr, {
						force = true,
					})
				end,
			})

			custom.user_command({
				name = "ToggleTermLazygit",
				desc = "Lazygit",
				command = function()
					lazygit.dir = custom.git_dir()
					lazygit:toggle()
				end,
			})
		end,
		cmd = {
			"ToggleTerm",
			"ToggleTermLazygit",
			"ToggleTermSendCurrentLine",
			"ToggleTermSendVisualLines",
			"ToggleTermSendVisualSelection",
			"ToggleTermSetName",
			"ToggleTermToggleAll",
		},
		keys = {
			{
				"<Leader>gl",
				"<Cmd>ToggleTermLazygit<CR>",
				desc = "Lazygit",
			},
		},
		pin = true,
	},
}
