return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "bash-language-server",
        "clangd",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "pyright",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "lua",
        "make",
        "markdown",
        "gitignore",
        "git_config",
        "bash",
        "css",
        "python",
        "vim",
        "vimdoc",
        "html",
      },
    },
  },
}
