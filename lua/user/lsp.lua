local cmp_nvim_lsp_status_ok, cmp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status_ok then
  return
end

local lsp_status_ok, lsp = pcall(require, "lsp_config")
if not lsp_status_ok then
  return
end

-- Setup lspconfig.
local capabilities = cmp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
lsp['sumneko_lua'].setup {
  capabilities = capabilities
}

lsp['solargraph'].setup {
  capabilities = capabilities
}

lsp('lspconfig')['gopls'].setup {
  capabilities = capabilities
}

lsp('lspconfig')['terraformls'].setup {
  capabilities = capabilities
}

