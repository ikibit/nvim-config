local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "emmet_ls", "tailwindcss", "eslint" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.elixirls.setup {
  on_attach = on_attach,
  capabilities = capabilities,

  cmd = { "/home/kurt/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" };
}
