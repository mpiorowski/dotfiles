local keymap = vim.keymap

vim.g.mapleader = " "

-- update
keymap.set('n', '<C-s>', ':update<cr>')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete word backwards and forward without yank
keymap.set('n', 'dw', 'vb"_d')
keymap.set('n', 'cd', '"_c$')

-- go word backwards
keymap.set('n', '<S-e>', 'b')

keymap.set('n', '<C-i>', '<C-I>')
keymap.set('i', 'jk', '<Esc>')
keymap.set('i', 'kj', '<Esc>')
keymap.set('n', ',', '@@')

-- Do not yank
keymap.set('n', 'x', '"_x')
keymap.set('n', '<leader>p', '"_p')

-- yank to clipboard
keymap.set('n', '<leader>y', '"+y')
keymap.set('n', '<leader>Y', 'gg"+yG')

-- move line up/down
keymap.set('v', '<A-j>', ':m\'>+1<cr>gv=gv')
keymap.set('v', '<A-k>', ':m\'<-2<cr>gv=gv')
