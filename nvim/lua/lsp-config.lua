local opts = { noremap=true, silent=true }

-- add to your shared on_attach callback
local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- Mappings.
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, bufopts)
  -- vim.keymap.set('n', '<C-j>', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<A-f>',function() vim.lsp.buf.format { async = true } end, bufopts)
  vim.keymap.set('n', '<S-CR>', vim.lsp.buf.code_action, bufopts)
end


-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- require'lspconfig'.eslint.setup{
--   on_attach = function(client, bufnr)
--     client.server_capabilities.documentFormattingProvider = true
--     if client.server_capabilities.documentFormattingProvider then
--         -- vim.api.nvim_create_autocmd("BufWritePost", { callback = function() vim.lsp.buf.format({ async = true }) end })
--       vim.api.nvim_create_autocmd("BufWritePre", {
--         command =  "EslintFixAll"
--       })
--     end
--   end,
--   capabilities = capabilities,
--   filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue", "svelte" },
-- }
require'lspconfig'.tsserver.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
require'lspconfig'.svelte.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
require'lspconfig'.tailwindcss.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
-- Autocompletion setup
-- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
local luasnip = require 'luasnip'
local lspkind = require 'lspkind'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      wirth_text = false,
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
    })
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
  },
}
