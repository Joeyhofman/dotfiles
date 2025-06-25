require('mason').setup()
require("mason-lspconfig").setup({
  ensure_installed = {
	  "lua_ls",
	  "quick_lint_js",
	  "intelephense",
	  "phpactor",
	  "basedpyright",
	  "sqlls",
	  "vtsls",
	  "bashls",
	  "clangd",
	  "clangd",
	  "cssls",
	  "dockerls",
	  "docker_compose_language_service",
	  "eslint",
	  "html",
	  "jsonls",
      "csharp_ls",
      "ansiblels"
  }
})



local lsp = require("lsp-zero")

lsp.preset("recommended")

require("lspconfig").lua_ls.setup {}
require("lspconfig").intelephense.setup {}
require("lspconfig").phpactor.setup {}
require("lspconfig").basedpyright.setup {}
require("lspconfig").sqlls.setup {}
require("lspconfig").vtsls.setup {}
require("lspconfig").vtsls.setup {}
require("lspconfig").bashls.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").cssls.setup {}
require("lspconfig").dockerls.setup {}
require("lspconfig").docker_compose_language_service.setup {}
require("lspconfig").eslint.setup {}
require("lspconfig").html.setup {}
require("lspconfig").jsonls.setup {}
require("lspconfig").csharp_ls.setup {}




require("lspconfig").ansiblels.setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }

-- Add Twig language server
require("lspconfig").twigls.setup {
  cmd = { "twig-language-server", "--stdio" },
  filetypes = { "twig", "html.twig", "jinja", "html.jinja" },
  root_dir = require("lspconfig").util.root_pattern("composer.json", ".git", "templates", "src"),
}

