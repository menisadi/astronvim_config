return {
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "plugins.configs.luasnip"(plugin, opts)
      -- load snippets paths
      require("luasnip.loaders.from_vscode").lazy_load {
        paths = { "~/.config/astro-nvim/lua/user/snippets" },
      }
    end,
  },
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        "                ✨✨  („• ֊ •„)੭  ✨✨",
        "",
        "    ___         __             _   __      _         ",
        "   /   |  _____/ /__________  / | / /   __(_)___ ___ ",
        "  / /| | / ___/ __/ ___/ __ \\/  |/ / | / / / __ `__ \\",
        " / ___ |(__  ) /_/ /  / /_/ / /|  /| |/ / / / / / / /",
        "/_/  |_/____/\\__/_/   \\____/_/ |_/ |___/_/_/ /_/ /_/ ",
      }
    end,
  },
  {
    "stevearc/aerial.nvim",
    opts = {
      filter_kind = { "Class", "Function", "Constructor", "Struct", "Module", "Method" },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    {
      "dressing.nvim",
      opts = {
        input = {
          insert_only = false,
        },
      },
    },
  },
}
