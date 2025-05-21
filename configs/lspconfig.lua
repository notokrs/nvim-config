local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

local mason_lspconfig = require("mason-lspconfig")

-- LSP module settings file
local lua_ls_settings = require("configs.lsp.lua_ls")
local tailwindcss_settings = require("configs.lsp.tailwindcss")

capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

vim.lsp.config("*", {
	on_attach = on_attach,
	capabilities = capabilities,
})

vim.lsp.config("lua_ls", {
	settings = lua_ls_settings,
})

vim.lsp.config("tailwindcss", {
	settings = tailwindcss_settings,
})

mason_lspconfig.setup()
