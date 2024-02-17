local lp = require "luasnip"
local fl = require "flash"

local keymaps = {
  n = {
    ["<F4>"] = {
      ":w<CR>:10split | terminal python %<CR>",
      desc = "Execute Python code in a new pane",
      noremap = true,
      buffer = true,
    },
    ["<cr>"] = { function() fl.jump() end, desc = "Flash", remap = true },
    ["<Leader>lc"] = {
      ":lua require('neogen').generate()<CR>",
      noremap = true,
      silent = true,
      desc = "Generate annotation using Neogen",
    },
  },
  i = {
    ["<C-K>"] = { function() lp.expand() end, silent = true },
    ["<C-L>"] = { function() lp.jump(1) end, silent = true },
    ["<C-J>"] = { function() lp.jump(-1) end, silent = true },
    ["<C-E>"] = {
      function()
        if lp.choice_active() then require("luasnip").change_choice(1) end
      end,
      silent = true,
    },
  },
  x = {
    ["<cr>"] = { function() fl.jump() end, desc = "Flash", remap = true },
  },
  o = {
    ["<cr>"] = { function() fl.jump() end, desc = "Flash", remap = true },
  },
}

return keymaps
