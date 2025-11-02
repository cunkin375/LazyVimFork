-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.snacks_animate = false
vim.g.autoformat = false
vim.o.relativenumber = true
vim.o.expandtab = true
vim.o.guicursor = 'n-v-c-i:block'

-- Tab settings
vim.opt.expandtab = true
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.softtabstop=4

-- Side number settings
vim.api.nvim_set_hl(0, "LineNr", { fg = "#AAACf6" })
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#8A85AD" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#8A85AD" })

-- If has powershell use powershell
if vim.fn.executable('pws') then
    vim.o.shell = 'pwsh'
else
    vim.o.shell = 'powershell'
end
