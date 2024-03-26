local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		css = { "prettier" },
		html = { "prettier" },
		javascript = { "prettier" },
		markdown = { "prettier" },
		scss = { "prettier" },
		svelte = { "prettier" },
		typescript = { "prettier" },
		json = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		vue = { "prettier" },

		php = { "phpcs" },

		go = { "gofumpt" },

		python = { "pyink" },

		xml = { "xmlformat" },

		bash = { "beautysh" },
	},

	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

require("conform").setup(options)
