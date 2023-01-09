require('nvim-web-devicons').setup {
    color_icons = true;
    default = true;
}

require('bufferline').setup {
    options = {
        mode = "tabs", -- set to "tabs" to only show tabpages instead
        diagnostics = "nvim_lsp",
        sort_by = "directory"
    }
}

local opts = { noremap = true, silent = true}
vim.keymap.set('n', '<C-t>', ':tabedit<CR><C-o>', { silent = true })
vim.keymap.set('n', '<C-w>', ':tabclose<CR>', { silent = true })
vim.keymap.set('n', '<TAB>', ':BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', opts)
-- vim.keymap.set('n', '<C-1>', ':BufferLineGoToBuffer 1<CR>', opts)
