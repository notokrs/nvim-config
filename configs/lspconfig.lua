local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

-- LSP module configs file
local lua_ls_config = require("custom.configs.lsp.lua_ls")
local tailwindcss_config = require("custom.configs.lsp.tailwindcss")

local servers = {
	html = {},
	cssls = {},
	tsserver = {},
	intelephense = {},
	bashls = {},
	svelte = {},
	tailwindcss = tailwindcss_config,
	lua_ls = lua_ls_config,
}

capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

mason_lspconfig.setup({
	ensure_installed = vim.tbl_keys(servers),
})

mason_lspconfig.setup_handlers({
	function(server_name)
		lspconfig[server_name].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = (servers[server_name] or {}).settings,
			filetypes = (servers[server_name] or {}).filetypes,
		})
	end,
})
