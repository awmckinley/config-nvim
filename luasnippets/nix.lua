--[[
Nix snippets.
--]]

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local fmta = require("luasnip.extras.fmt").fmta

return {
	s(
		{
			trig = "imports",
			desc = "import modules",
		},
		fmta(
			[[
_: {
	imports = [
		./<a>.nix
	];
}
			]],
			{
				a = i(1, "foo"),
			}
		)
	),

	s(
		{
			trig = "pkgs",
			desc = "define systemPackages",
		},
		fmta(
			[[
{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # description
    # replaces:
    <a>
  ];
}
			]],
			{
				a = i(1, "hello"),
			}
		)
	),

	s(
		{
			trig = "optionals",
			desc = "concat optional list",
		},
		fmta(
			[[
 ++ lib.optionals <a> [ <b> ]
			]],
			{
				a = c(1, {
					t("isDarwin"),
					t("isLinux"),
				}),
				b = i(2, "hello"),
			}
		)
	),
}
