return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          include_surrounding_whitespace = false,
          keymaps = {
            ["if"] = { query = "@function.inner", desc = "Select inner part of a function" },
            ["af"] = { query = "@function.outer", desc = "Select a function" },
            ["ac"] = { query = "@class.outer", desc = "Select a class" },
            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
            ["a:"] = { query = "@comment.outer", desc = "Select a block of comment" },
            ["i:"] = { query = "@comment.inner", desc = "Select inner part of a comment block" },
            ["al"] = { query = "@loop.outer", desc = "Select a loop" },
            ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["(j"] = { query = "@function.outer", desc = "Go to next function start" },
            ["'j"] = { query = "@loop.outer", desc = "Go to next loop start" },
            ["-j"] = { query = "@parameter.inner", desc = "Go to next parameter" },
          },
          goto_previous_start = {
            ["(k"] = { query = "@function.outer", desc = "Go to previous function start" },
            ["'k"] = { query = "@loop.outer", desc = "Go to previous loop start" },
            ["-k"] = { query = "@parameter.inner", desc = "Go to previous parameter" },
          },
          goto_next_end = {},
          goto_previous_end = {},
        },
      },
    })
  end,
}
