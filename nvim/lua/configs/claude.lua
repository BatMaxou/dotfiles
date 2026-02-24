return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" },
  opts = {
    terminal = {
      provider = "snacks",
      snacks_win_opts = {
        position = "float",
        width = 0.7,
        height = 0.9,
        border = "double",
        wo = {
          winhighlight = {
            NormalFloat = "Main",
            FloatBorder = "LightOrange",
          },
        },
        keys = {
          claude_hide = { "<A-j>", function(self) self:hide() end, mode = "t", desc = "Hide" },
        },
      },
    },
  },
  keys = {
    { "<leader>a",  "<cmd>ClaudeCode<cr>", desc = "[C]laude toggle" },
    { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "[C]laude [S]end selection" },
    { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "[C]laude add [B]uffer" },
    { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "[C]laude diff [A]ccept" },
    { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "[C]laude diff [D]eny" },
    { "<A-j>", "<cmd>ClaudeCodeFocus<cr>", mode = { "n", "x" }, desc = "Claude Code" },
  },
}

