require("nvchad.mappings")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<ESC> <cmd> w <cr>")

map({ "n" }, "<C-]>", ">>", { desc = "Indent" })
map({ "n" }, "<C-[>", "<<", { desc = "Outdent" })

map({ "v" }, "<C-]>", "> gv", { desc = "Indent Selection" })
map({ "v" }, "<C-[>", "< gv", { desc = "Outdent Selection" })

map({ "n" }, "<leader>tt", function()
	require("base46").toggle_theme()
end, { desc = "Toggle theme" })
