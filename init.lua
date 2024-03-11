return {
  -- colorscheme = "astrodark",
  -- colorscheme = "catppuccin-mocha",
  -- colorscheme = "tokyonight-night",
  colorscheme = "kanagawa",
  polish = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "python",
      desc = "Set up python specific settings",
      group = vim.api.nvim_create_augroup("python_settings", {}),
      callback = function(args)
        vim.keymap.set(
          "n",
          "<leader>le",
          "<cmd>w<CR><cmd>10split <bar> terminal python %<CR>",
          { desc = "Execute Python code in a new pane", remap = false, buffer = args.buf }
        )
      end,
    })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "lua",
      desc = "Set up lua specific settings",
      group = vim.api.nvim_create_augroup("lua_settings", {}),
      callback = function(args)
        vim.keymap.set(
          "n",
          "<leader>le",
          function() vim.cmd(":term /Applications/love.app/Contents/MacOS/love " .. vim.fn.expand "%:p:h") end,
          { desc = "Execute Love game in a new pane", remap = false, buffer = args.buf }
        )
      end,
    })
  end,
}
