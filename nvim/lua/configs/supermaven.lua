return {
  "supermaven-inc/supermaven-nvim",
  opts = {
    keymaps = {
      accept_suggestion = "<S-Tab>",
      clear_suggestion = "<S-]>",
      accept_word = "<S-Right>",
    },
    color = {
      -- suggestion_color = "#ffffff",
      -- cterm = 244,
    },
    log_level = "off",
    disable_keymaps = false, -- disables built in keymaps for more manual control
  },
}
