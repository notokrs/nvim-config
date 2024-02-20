local M = {}

M.treesitter = {
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    disable = { "html", "markdown" },
    query = "rainbow-parens",
  },
  ensure_installed = {
    -- lua & vim
    "vim",
    "lua",

    -- web dev
    "html",
    "css",
    "javascript",
    "typescript",
    "php",
    "regex",

    -- markdown
    "markdown",
    "markdown_inline",

    -- bash
    "bash",

    -- python
    "python",

    -- golang
    "go",
  },
}

M.mason = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "tailwind-language-server",
    "prettier",
    "svelte-language-server",

    -- shell
    "bash-language-server",
    "beautysh",

    -- php
    "intelephense",
    "phpcbf",
    "phpcs",

    -- xml
    "xmlformatter",

    -- python
    "python-lsp-server",
    "pyink",

    -- golang
    "gopls",
    "gofumpt",
  },
}

-- git support in nvimtree
M.nvimtree = {
  filters = {
    dotfiles = true,
  },
  git = {
    enable = true,
    ignore = false,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- blankline
M.blankline = {
  use_treesitter = true,
  show_first_indent_level = true,
  show_trailing_blankline_indent = true,
  context_highlight_list = {
    "TSRainbowRed",
    "TSRainbowYellow",
    "TSRainbowBlue",
    "TSRainbowOrange",
    "TSRainbowGreen",
    "TSRainbowViolet",
    "TSRainbowCyan",
  },
}

return M
