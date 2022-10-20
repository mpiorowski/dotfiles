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
    hidden = true,
    mappings = {
      n = {
        ['q'] = actions.close,
        ["<C-cr>"] = actions.send_selected_to_qflist,
      }
    },
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
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
vim.keymap.set('n', 'gf', '<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = true })<cr>', opts)
vim.keymap.set('n', 'gv', '<cmd>lua require("telescope.builtin").live_grep({ hidden = true })<cr>', opts)
vim.keymap.set('n', 'gb', '<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", cwd = telescope_buffer_dir(), hidden = true, grouped = true, all_previewer = true, initial_mode = "normal" })<cr>', opts)
vim.keymap.set('n', 'gt', '<cmd>lua require("telescope.builtin").buffers({initial_mode = "normal"})<cr>', opts)
vim.keymap.set('n', 'gh', '<cmd>lua require("telescope.builtin").lsp_definitions({initial_mode = "normal"})<cr>', opts)
