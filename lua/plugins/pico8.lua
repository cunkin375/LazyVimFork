return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pico8_ls = {
          cmd = { "pico8-ls", "--stdio" },
          filetypes = { "p8" },
        },
      },
    },
  },
}
