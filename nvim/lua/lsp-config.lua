local lsp = require('lsp-zero')
lsp.preset('recommended')

-- Install these servers
lsp.ensure_installed({
    'tsserver',
    'svelte',
    'eslint',
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
    ['<Tab>'] = cmp.config.disable
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set('n', "<C-h>", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', "<S-j>", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set('n', "<S-k>", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set('n', "<S-h>", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', "<S-cr>", function() vim.lsp.buf.code_action() end, opts)

end)

-- Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
