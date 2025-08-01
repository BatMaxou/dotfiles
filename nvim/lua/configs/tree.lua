return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    filters = {
      git_ignored = false,
      custom = { "^\\.git$" },
    },
    disable_netrw = true,
    hijack_cursor = false,
    sync_root_with_cwd = false,
    update_focused_file = {
      enable = false,
      update_root = false,
    },
    view = {
      width = 40,
      preserve_window_proportions = true,
    },
    renderer = {
      root_folder_label = false,
      highlight_git = true,
      indent_markers = { enable = true },
    },
  },
  keys = {
    { "<leader>e", "<cmd>NvimTreeFocus<CR>", desc = "NvimTree focus window" },
    { "<C-n>", "<cmd>NvimTreeToggle<CR>", desc = "NvimTree toggle window" },
  },
}
