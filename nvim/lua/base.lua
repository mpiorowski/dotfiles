vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true

vim.opt.list = true

vim.opt.swapfile = false
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'fish'
vim.opt.backupskip = '~/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.relativenumber = true
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = false -- no wrap lines
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- Finding files - search into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

-- Copy from clipboard
-- vim.opt.clipboard:append { 'unnamedplus' }

-- highlights.lua
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 3
vim.opt.background = 'dark'

vim.cmd[[colorscheme tokyonight]]

-- copilot
vim.g.copilot_assume_mapped = true
vim.g.copilot_node_command = "~/.nvm/versions/node/v17.9.1/bin/node"
