local lp = require "luasnip"
-- local fl = require "flash"
local td = require "todo-comments"

local keymaps = {
  n = {
    ["<leader>le"] = {
      "<cmd>w<CR><cmd>10split <bar> terminal python %<CR>",
      noremap = true,
      buffer = true,
      desc = "Execute Python code in a new pane",
    },
    -- ["<cr>"] = {
    --   function() fl.jump() end, desc = "Flash", remap = true
    -- },
    ["<leader>lc"] = {
      function() require("neogen").generate() end,
      noremap = true,
      silent = true,
      desc = "Generate annotation using Neogen",
    },
    ["[c"] = {
      function() td.jump_prev() end,
      desc = "Previous todo comment",
      silent = true,
    },
    ["]c"] = {
      function() td.jump_next() end,
      desc = "Next todo comment",
      silent = true,
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
    -- ["<cr>"] = { function() fl.jump() end, desc = "Flash", remap = true },
  },
  o = {
    -- ["<cr>"] = { function() fl.jump() end, desc = "Flash", remap = true },
  },
}

return keymaps
