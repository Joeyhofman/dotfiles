local nvim_lsp_config = require("lspconfig")
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
	  "cssls",
	  "dockerls",
	  "docker_compose_language_service",
	  "eslint",
	  "html",
	  "jsonls",
      "ansiblels",
      "vue_ls"
  }
})



local lsp = require("lsp-zero")

lsp.preset("recommended")


nvim_lsp_config.lua_ls.setup {}
require("lspconfig").intelephense.setup {}
require("lspconfig").phpactor.setup {}
require("lspconfig").basedpyright.setup {}
require("lspconfig").sqlls.setup {}
require("lspconfig").vtsls.setup {}
require("lspconfig").bashls.setup {}
require("lspconfig").cssls.setup {}
require("lspconfig").dockerls.setup {}
require("lspconfig").docker_compose_language_service.setup {}
require("lspconfig").eslint.setup {}
require("lspconfig").html.setup {}
require("lspconfig").jsonls.setup {}
require("lspconfig").vue_ls.setup {}



require("lspconfig").ansiblels.setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }


