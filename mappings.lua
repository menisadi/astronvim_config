-- [[ Python ]]
vim.keymap.set("n", "<F4>", [[:w<CR>:10split | terminal python %<CR>]], { noremap = true, buffer = true })

-- [[ LuaSnip ]]
local ls = require "luasnip"

vim.keymap.set({ "i" }, "<C-K>", function() ls.expand() end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-L>", function() ls.jump(1) end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-J>", function() ls.jump(-1) end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-E>", function()
  if ls.choice_active() then ls.change_choice(1) end
end, { silent = true })

vim.api.nvim_set_keymap(
  "n",
  "<Leader>lc",
  ":lua require('neogen').generate()<CR>",
  { noremap = true, silent = true, desc = "Generate annotation using Neogen" }
)

-- [[ Flash ]]
vim.keymap.set({ "n", "x", "o" }, "<cr>", function() require("flash").jump() end, { desc = "Flash" })
