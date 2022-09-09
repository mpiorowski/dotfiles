local keymap = vim.keymap.set
local saga = require('lspsaga')

saga.init_lsp_saga({
    symbol_in_winbar = {
        in_custom = true
    }
})

local opts = { noremap = true, silent = true}
keymap('n', '<S-j>', '<Cmd>Lspsaga diagnostic_jump_next<cr>', otps)
keymap('n', '<S-k>', '<Cmd>Lspsaga diagnostic_jump_prev<cr>', otps)
keymap("n", "<C-k>", "<cmd>Lspsaga hover_doc<CR>", opts)
keymap("n", "<C-j>", "<cmd>Lspsaga lsp_finder<CR>", opts)
keymap("n", "gf", "<cmd>Lspsaga code_action<CR>", opts)
keymap("n", "gs", "<Cmd>Lspsaga signature_help<CR>", opts)
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", opts)
