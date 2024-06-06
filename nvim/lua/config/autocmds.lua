-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

capabilities.offsetEncoding = "utf-8"
capabilities.offset_encoding = "utf-8"
capabilities.clang = {}
capabilities.clang.offsetEncoding = "utf-8"
capabilities.clang.offset_encoding = "utf-8"
lspconfig.ccls.setup({ capabilities = capabilities })

local cmp_nvim_lsp = require("cmp_nvim_lsp")

require("lspconfig").clangd.setup({
  on_attach = on_attach,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
})
