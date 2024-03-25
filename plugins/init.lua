local overrides = require("configs.overrides")

local plugins = {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		config = function()
			require("configs.conform")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		opts = function()
			return require("nvchad.configs.cmp")
		end,
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline", event = { "BufEnter" } },
		},
		config = function(_, opts)
			require("cmp").setup(opts)
			require("configs.cmp")
		end,
	},

	-- override plugin configs
	{ "nvim-treesitter/nvim-treesitter", opts = overrides.treesitter },
	{ "williamboman/mason.nvim", opts = overrides.mason },
	{ "nvim-tree/nvim-tree.lua", opts = overrides.nvimtree },

	-- Install a plugin
	-- Indent Blankline
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		dependencies = {
			{ "HiPhish/rainbow-delimiters.nvim" },
		},
		config = function()
			require("configs.ibl")
		end,
	},

	-- autotag
	{ "windwp/nvim-ts-autotag", event = { "BufReadPost" } },

	-- yuck
	{ "elkowar/yuck.vim" },

	-- silicon
	{
		"michaelrommel/nvim-silicon",
		cmd = "Silicon",
		event = { "BufReadPost" },
		config = function()
			require("configs.silicon")
		end,
	},

	-- noice
	{
		"folke/noice.nvim",
		lazy = false,
		config = function()
			require("configs.noice")
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			{
				"rcarriga/nvim-notify",
				config = function()
					require("configs.notify")
				end,
			},
		},
	},

	-- nvim-statuscol
	{
		"luukvbaal/statuscol.nvim",
		event = { "BufReadPost" },
		config = function()
			require("configs.statuscol")
		end,
	},

	-- nvim-ufo (folding)
	{
		"kevinhwang91/nvim-ufo",
		event = { "BufReadPost" },
		wants = { "promise-async" },
		dependencies = {
			"kevinhwang91/promise-async",
		},
		config = function()
			require("configs.ufo")
		end,
	},

	-- suda.nvim
	{ "lambdalisue/suda.vim", event = { "BufReadPost" } },

	-- barbecue
	{
		"utilyre/barbecue.nvim",
		event = { "BufReadPost" },
		dependencies = {
			"SmiteshP/nvim-navic",
		},
		config = function()
			require("configs.barbecue")
		end,
	},

	-- codi
	{ "metakirby5/codi.vim", event = { "BufReadPost" } },

	-- mason lspconfig
	{ "williamboman/mason-lspconfig.nvim", event = { "BufReadPost" } },

	-- live server
	{
		"barrett-ruth/live-server.nvim",
		build = "npm i -g live-server",
		cmd = { "LiveServerStart", "LiveServerStop" },
		config = true,
	},

	-- gemini ai
	{
		"notokrs/gemini.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		build = "go install github.com/charmbracelet/glow@latest",
		opts = require("configs.gemini"),
		event = "VeryLazy",
	},
}

return plugins
