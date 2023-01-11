require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = { "go", "rust", "typescript", "tsx", "svelte", "css", "html", "json", "javascript" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enabled = true,
  },
  indent = {
    enabled = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<leader>j",
      node_incremental = "<leader>j",
      scope_incremental = "<leader>l",
      node_decremental = "<leader>k",
    },
  },
}
