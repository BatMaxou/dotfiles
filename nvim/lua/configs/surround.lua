return {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  init = function()
    vim.g.nvim_surround_no_mappings = true
  end,
  config = function()
    require("nvim-surround").setup()
    vim.keymap.set("n", "<leader>sa", "<Plug>(nvim-surround-normal)", { desc = "Add surrounding" })
    vim.keymap.set("x", "<leader>sa", "<Plug>(nvim-surround-visual)", { desc = "Add surrounding" })
    vim.keymap.set("n", "<leader>sd", "<Plug>(nvim-surround-delete)", { desc = "Delete surrounding" })
    vim.keymap.set("n", "<leader>sc", "<Plug>(nvim-surround-change)", { desc = "Change surrounding" })
  end,
}
