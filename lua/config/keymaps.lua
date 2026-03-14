-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del({ "i", "x", "n", "s"}, "<C-s>")

local map = vim.keymap.set

-- Overwrite terminal toggle so it properly closes the active terminal
map({ "n", "t" }, "<c-/>", function()
  if vim.bo.filetype == "snacks_terminal" then
    vim.cmd("close")
  else
    Snacks.terminal(nil, { cwd = LazyVim.root() })
  end
end, { desc = "Terminal (Root Dir)" })

map({ "n", "t" }, "<c-_>", function()
  if vim.bo.filetype == "snacks_terminal" then
    vim.cmd("close")
  else
    Snacks.terminal(nil, { cwd = LazyVim.root() })
  end
end, { desc = "Terminal (Root Dir)" })
