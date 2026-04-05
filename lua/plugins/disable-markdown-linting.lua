return {
  {
    "mason.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        opts.ensure_installed = vim.tbl_filter(function(name)
          return not vim.tbl_contains({ "markdown-toc", "markdownlint-cli2", "marksman" }, name)
        end, opts.ensure_installed)
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = false,
      },
    },
  },
}

