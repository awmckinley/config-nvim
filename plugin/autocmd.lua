--[[
Create autocommands.
--]]

local custom = require("custom.util")

custom.autocmd("BufWritePre", {
	desc = "Remove eol whitespace",
	callback = function()
		if vim.bo.ft ~= "markdown" then
			vim.cmd([[%s/\s\+$//e]])
		end
	end,
})

