require'nvim-web-devicons'.setup {
 default = true;
}

vim.opt.termguicolors = true
require('bufferline').setup {
  options = {
    mode = "tabs", -- set to "tabs" to only show tabpages instead
    color_icons = true,

  }
}

local opts = { noremap = true, silent = true}
vim.keymap.set('n', '<C-t>', ':tabedit<CR><C-o>', { silent = true })
vim.keymap.set('n', '<C-w>', ':tabclose<CR>', { silent = true })
vim.keymap.set('n', '<TAB>', ':BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', opts)
-- vim.keymap.set('n', '<C-1>', ':BufferLineGoToBuffer 1<CR>', opts)
