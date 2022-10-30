require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "tsserver", "svelte", "eslint", "gopls", "golangci_lint_ls", "tailwindcss", "bashls" }
})
