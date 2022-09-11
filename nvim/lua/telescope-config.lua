-- telescope
local telescope = require 'telescope'
local actions = require 'telescope.actions'
local fb_actions = telescope.extensions.file_browser.actions  
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end
telescope.setup{
  defaults = {
    file_ignore_patterns = {
      ".git/"
    },
    hijack_netrw = true,
    mappings = {
      n = {
        ['q'] = actions.close,
        ["<S-Tab>"] = actions.send_selected_to_qflist + actions.open_qflist,
      }
    },
  },
  extensions = {
    file_browser = {
      -- theme = 'dropdown',
      mappings = {
         ['i'] = {
           ['<C-w>'] = function() vim.cmd('normal vbd') end,
         },
         ['n'] = {
           ['N'] = fb_actions.create,
           ['R'] = fb_actions.rename,
           ['D'] = fb_actions.remove,
           ['h'] = fb_actions.goto_parent_dir,
           ['/'] = function()
             vim.cmd('startinsert')
           end
         }
      }
    }
  }
}
telescope.load_extension("file_browser")
local opts = { noremap = true, silent = true }
vim.keymap.set('n', ';f', '<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = true})<cr>', opts)
vim.keymap.set('n', ';r', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
vim.keymap.set('n', ';d', '<cmd>lua require("telescope.builtin").diagnostics({initial_mode = "normal"})<cr>', opts)
vim.keymap.set('n', ';;', '<cmd>lua require("telescope.builtin").buffers({initial_mode = "normal"})<cr>', opts)
vim.keymap.set('n', ';t', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
vim.keymap.set('n', '\\\\', '<cmd>lua require("telescope.builtin").resume()<cr>', opts)
vim.keymap.set('n', ';b', '<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", cwd = telescope_buffer_dir(), hidden = true, grouped = true, previewer = false, initial_mode = "normal" })<cr>', opts)
