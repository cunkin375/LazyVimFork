return {
  {
    "mason.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        opts.ensure_installed = vim.tbl_filter(function(name)
          return not vim.tbl_contains({ "ruff", "ruff-lsp" }, name)
        end, opts.ensure_installed)
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local configs = require("lspconfig.configs")

      -- Define the custom shader_language_server if it's not already defined
      if not configs.shader_language_server then
        configs.shader_language_server = {
          default_config = {
            cmd = { "shader_language_server" },
            filetypes = { "hlsl", "glsl", "wgsl" },
            root_dir = require("lspconfig.util").find_git_ancestor,
            single_file_support = true,
          },
        }
      end

      -- Ensure opts.servers exists
      opts.servers = opts.servers or {}
      opts.servers.shader_language_server = {}
      opts.servers.ruff = { enabled = false }
      opts.servers.ruff_lsp = { enabled = false }
    end,
  },
}
