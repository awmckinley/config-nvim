--[[
Create autocommands.
--]]

local custom = require("custom.util")

-- triggered before write
custom.autocmd("BufWritePre", {
	desc = "Remove eol whitespace",
	callback = function()
		if vim.bo.ft ~= "markdown" then
			vim.cmd([[%s/\s\+$//e]])
		end
	end,
})

-- triggered when yanked
-- custom.autocmd("TextYankPost", {
-- 	desc = "Briefly highlight yanked text",
-- 	callback = function()
-- 		vim.highlight.on_yank({
-- 			higroup = "Search",
-- 			timeout = 250,
-- 		})
-- 	end,
-- })
