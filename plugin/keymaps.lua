--[[
Create mappings.
--]]

-- delete mappings
-- TODO: change these?
vim.keymap.del("n", "<C-W>d")
vim.keymap.del("n", "<C-W><C-D>")

-- disable hlsearch, otherwise "enter"
vim.keymap.set("n", "<CR>", function()
	if vim.v.hlsearch == 1 then
		vim.cmd.nohl()
		return ""
	else
		return vim.keycode("<CR>")
	end
end, {
	expr = true,
})

-- exec current line
vim.keymap.set("n", "<Leader>ce", "<Cmd>.lua<CR>", {
	desc = "Execute the current line",
})

-- source current file
vim.keymap.set("n", "<Leader>cE", "<Cmd>source %<CR>", {
	desc = "Execute the current file",
})

-- run Lazygit in directory of current file
vim.keymap.set("n", "<Leader>gl", function()
	local cwd = vim.fn.getcwd()
	local file = vim.fn.resolve(vim.fn.expand("%"))
	if file ~= "" then
		cwd = vim.fn.fnamemodify(file, ":p:h")
	end
	-- fix cwd in oil buffers
	cwd = string.gsub(cwd, "oil:", "")
	require("lazy.util").float_term({
		"lazygit",
	}, {
		cwd = cwd,
		margin = {
			top = 1,
			right = 2,
			bottom = 3,
			left = 2,
		},
		size = {
			width = vim.o.columns,
			height = vim.o.lines,
		},
	})
end, {
	desc = "Lazygit",
})
