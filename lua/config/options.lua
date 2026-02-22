-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.snacks_animate = false
vim.g.autoformat = false
vim.o.relativenumber = true
vim.o.expandtab = true
vim.o.guicursor = "n-v-c-i:block"

-- Tab settings
vim.opt.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4

-- Side number settings
vim.api.nvim_set_hl(0, "LineNr", { fg = "#AAACf6" })
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#8A85AD" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#8A85AD" })

-- Set vim terminal to appropriate shell
local mysysname = vim.loop.os_uname().sysname
local is_windows = mysysname:find("Windows")
if is_windows then
    if vim.fn.executable("pws") then
        vim.o.shell = "pwsh"
    else
        vim.o.shell = "powershell"
    end -- if
    vim.opt.shellcmdflag = [[
                -NoLogo -NoProfile -ExecutionPolicy RemoteSigned 
                -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;
                         ]]
    vim.opt.shellredir = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
    vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
    vim.opt.shellquote = ""
    vim.opt.shellxquote = ""
else
    vim.opt.shell = "bash"
end -- if
