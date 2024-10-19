local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
	s(
		{
			trig = "help",
			desc = "add help recipe",
		},
		t({
			"[doc('list recipes')]",
			"help:",
			"    @just --list",
		})
	),
}
