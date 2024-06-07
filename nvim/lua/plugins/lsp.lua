return {
  {
    "neovim/nvim-lspconfig",
    "kabouzeid/nvim-lspinstall",
    dependencies = {
      "williamboman/mason.nvim",
      "folke/neodev.nvim",
    },
    config = function()
      require("neodev").setup()
      require("lspconfig").clangd.setup({
        on_attach = on_attach,
        capabilities = cmp_nvim_lsp.default_capabilities(),
        cmd = {
          "clangd",
          "--offset-encoding=utf-16",
        },
      })
      require("lspconfig").lua_ls.setup({
        settings = {
          Lua = {
            telemetry = { enable = false },
            workspace = { checkThirdParty = false },
          },
        },
      })
      require("lspinstall").installed_servers()
      require("tsserver").setup({})
      require("image_preview").setup({})
    end,
  },
}
