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

  {
    "tris203/precognition.nvim",
    event = "VeryLazy",
    opts = {
      startVisible = true,
      showBlankVirtLine = true,
      highlightColor = { link = "Comment" },
      hints = {
        Caret = { text = "^", prio = 2 },
        Dollar = { text = "$", prio = 1 },
        MatchingPair = { text = "%", prio = 5 },
        Zero = { text = "0", prio = 1 },
        w = { text = "w", prio = 10 },
        b = { text = "b", prio = 9 },
        e = { text = "e", prio = 8 },
        W = { text = "W", prio = 7 },
        B = { text = "B", prio = 6 },
        E = { text = "E", prio = 5 },
      },
      gutterHints = {
        G = { text = "G", prio = 10 },
        gg = { text = "gg", prio = 9 },
        PrevParagraph = { text = "{", prio = 8 },
        NextParagraph = { text = "}", prio = 8 },
      },
      disabled_fts = {
        "startify",
      },
    },
  },

  {
    "Dan7h3x/neaterm.nvim",
    branch = "stable",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "ibhagwan/fzf-lua",
    },
  },

  {
    "michaelb/sniprun",
    branch = "master",

    build = "sh install.sh",
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

    config = function()
      require("sniprun").setup({
        display = { "TempFloatingWindow" },
      })
    end,
  },

  {
    "tanvirtin/monokai.nvim",
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai",
    },
  },
}
