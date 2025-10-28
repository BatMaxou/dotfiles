return {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter",
  cmd = "Copilot",
  build = ":Copilot auth",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = "<C-Tab>",
        accept_word = "<S-Right>",
        accept_line = "<S-Tab>",
        next = "<S-Down>",
        prev = "<S-Up>",
      },
    },
    filetypes = {
      ["*"] = true,
    }
  },
}
