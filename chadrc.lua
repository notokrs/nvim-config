local M = {}
local highlights = require("highlights")

M.ui = {
	theme = "ayu_dark",
	theme_toggle = { "ayu_dark", "one_light" },
	hl_override = highlights.override,
	hl_add = highlights.add,
	statusline = {
		theme = "vscode_colored",
		-- separator_style = "round",
	},

	nvdash = {
		load_on_startup = true,
	},
}

return M
