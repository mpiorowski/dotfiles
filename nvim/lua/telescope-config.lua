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
            ".git/",
            "node_modules"
        },
        mappings = {
            n = {
                ['q'] = actions.close,
                ["<S-cr>"] = actions.send_selected_to_qflist,
            }
        },
    },
    extensions = {
        file_browser = {
            hijack_netrw = true,
            initial_mode = "normal",
            all_previewer = true,
            hidden = true,
            no_ignore = true,
            respect_gitignore = false,
            path = "%:p:h",
            cwd = telescope_buffer_dir(),
            mappings = {
                ['n'] = {
                    ['N'] = fb_actions.create,
                    ['R'] = fb_actions.rename,
                    ['D'] = fb_actions.remove,
                    ['h'] = fb_actions.goto_parent_dir,
                }
            }
        }
    }
}
telescope.load_extension("file_browser")
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-cr>', '<cmd>lua require("telescope.builtin").quickfix({initial_mode = "normal"})<cr>', opts)
vim.keymap.set('n', 'gf', '<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = true })<cr>', opts)
-- vim.keymap.set('n', 'gf', '<cmd>lua require("telescope.builtin").git_files()<cr>', opts)
vim.keymap.set('n', 'gt', '<cmd>lua require("telescope.builtin").lsp_type_definitions()<cr>', opts)
vim.keymap.set('n', 'gn', '<cmd>lua require("telescope.builtin").lsp_references({initial_mode = "normal"})<cr>', opts)
vim.keymap.set('n', 'gv', '<cmd>lua require("telescope.builtin").live_grep({ hidden = true })<cr>', opts)
vim.keymap.set('n', 'gb', '<cmd>lua require("telescope").extensions.file_browser.file_browser()<cr>', opts)
vim.keymap.set('n', 'gy', '<cmd>lua require("telescope.builtin").buffers({initial_mode = "normal"})<cr>', opts)
vim.keymap.set('n', 'gh', '<cmd>lua require("telescope.builtin").lsp_definitions({initial_mode = "normal"})<cr>', opts)
