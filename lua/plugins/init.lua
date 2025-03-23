return {
  {
    "nvim-treesitter/nvim-treesitter",
    init = function()
      ---@class parsers
      local parsers = require("nvim-treesitter.parsers").get_parser_configs()
      parsers.c3 = {
        install_info = {
          url = "https://github.com/c3lang/tree-sitter-c3",
          files = { "src/parser.c", "src/scanner.c" },
          branch = "main",
        },
      }
    end,
    opts = {
      ensure_installed = {
        "c3",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        c3_lsp = {},
      },
    },
  },
}
