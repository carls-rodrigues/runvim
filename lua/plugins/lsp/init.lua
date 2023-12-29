return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = true },
  },
  dependencies = {
    "p00f/clangd_extensions.nvim", -- clangd extension, some good stuff
    "simrat39/rust-tools.nvim", -- rust, rust, it's rust!
  },
  config = function()
    require "plugins.lsp.configs"
    require("plugins.lsp.handlers").setup()
  end
}
