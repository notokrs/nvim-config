local M = {}
local highlights = require("highlights")

M.base46 = {
	theme = "yoru",
	theme_toggle = { "one_light", "yoru" },
	hl_override = highlights.override,
	hl_add = highlights.add,
}

M.ui = {
	statusline = {
		theme = "vscode_colored",
		-- separator_style = "round",
	},
}

M.nvdash = {
	load_on_startup = true,
}

return M
