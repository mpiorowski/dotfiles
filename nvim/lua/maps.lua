local keymap = vim.keymap

vim.g.mapleader = " "

-- format
keymap.set('n', '<A-f>', function() vim.lsp.buf.format() end)

-- delete all buffers
keymap.set('n', 'gY', ':%bd|e#<cr>')

-- update
keymap.set('n', '<C-s>', ':update<cr>')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')
keymap.set('v', '+', '<C-a>')
keymap.set('v', '-', '<C-x>')

-- jump to words
keymap.set('n', 'w', 'b')

keymap.set('n', '<C-i>', '<C-I>')
keymap.set('i', 'jk', '<Esc>')
keymap.set('i', 'kj', '<Esc>')
keymap.set('n', ',', '@@')

-- Do not yank
keymap.set('n', 'x', '"_x')

-- yank to clipboard
keymap.set('n', '<leader>y', '"+y')
keymap.set('v', '<leader>y', '"+y')
keymap.set('n', '<leader>Y', 'gg"+yG')

-- paste from 0 register
keymap.set('n', '<leader>p', '"0p')
keymap.set('v', '<leader>p', '"0p')

-- move line up/down
keymap.set('v', '<A-j>', ':m\'>+1<cr>gv=gv')
keymap.set('v', '<A-k>', ':m\'<-2<cr>gv=gv')

-- quickfix next/prev
keymap.set('n', '<C-j>', ':cnext<cr>')
keymap.set('n', '<C-k>', ':cprev<cr>')

-- previous window
keymap.set('n', '<C-p>', '<C-^>')
-- current window
-- keymap.set('n', '<S-p>', ':on<cr>')
