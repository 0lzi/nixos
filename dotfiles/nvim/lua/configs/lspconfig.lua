require("nvchad.configs.lspconfig").defaults()
-- local nvlsp = require("nvchad.configs.lspconfig")
--
-- local capabilities = nvlsp.capabilities
-- local on_attach = nvlsp.on_attach
--
local servers = {
  "bashls",
  "dockerls",
  "ansiblels",
  "helm_ls",
  "terraformls",
  "pyright",
  "gitlab_ci_ls",
}

vim.lsp.enable(servers)

-- Jinja filetype detection
vim.filetype.add({
  extension = {
    jinja = "jinja",
    jinja2 = "jinja",
    j2 = "jinja",
  },
})
vim.lsp.config("jinja_lsp", {
  filetypes = { "jinja", "j2", "jinja2" },
  name = 'jinja_lsp',
  cmd = { 'jinja-lsp' },
  root_dir = function(fname)
      return vim.fs.dirname(vim.fs.find('.git', { path = fname, upward = true })[1])
    end,
  single_file_support = true,
})
-- --
-- Custom ansible config
vim.lsp.config("ansiblels", {
  filetypes = { "yaml", "yml" },
})
--   capabilities = capabilities,
--   on_attach = on_attach,
-- })
-- read :h vim.lsp.config for changing options of lsp servers
