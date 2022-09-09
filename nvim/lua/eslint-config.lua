local null_ls = require("null-ls")

null_ls.setup({
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      -- format on save
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format { async = true }")
    end
  end,
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" }
    }),
    null_ls.builtins.formatting.prettierd.with({
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html", "json", "jsonc", "yaml", "markdown", "graphql", "handlebars" }
    }),
    null_ls.builtins.diagnostics.fish
  }
})

-- local eslint = require("eslint")
-- eslint.setup({
--   bin = 'eslint', -- or `eslint_d`
--   code_actions = {
--     enable = true,
--     apply_on_save = {
--       enable = true,
--       types = { "problem" }, -- "directive", "problem", "suggestion", "layout"
--     },
--     disable_rule_comment = {
--       enable = true,
--       location = "separate_line", -- or `same_line`
--     },
--   },
--   diagnostics = {
--     enable = true,
--     report_unused_disable_directives = false,
--     run_on = "type", -- or `save`
--   },
-- })
-- local prettier = require("prettier")
-- prettier.setup({
--   bin = 'prettierd', -- or `prettierd`
--   filetypes = {
--     "css",
--     "graphql",
--     "html",
--     "javascript",
--     "javascriptreact",
--     "json",
--     "less",
--     "markdown",
--     "scss",
--     "typescript",
--     "typescriptreact",
--     "yaml",
--     "svelte"
--   },
-- })
