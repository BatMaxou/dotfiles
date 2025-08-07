return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "LspAttach",
  priority = 1000,
  opts = {
    preset = "modern",
    virtual_text = true,
    signs = {
      arrow = "   ",
      up_arrow = "  ",
    --   left = "",
    --   right = "",
    --   diag = "●",
    --   vertical = " │",
    --   vertical_end = " └",
    },
    blend = {
      factor = 0.40,
    },
    transparent_bg = false,
    hi = {
      error = "DiagnosticError",
      warn = "DiagnosticWarn",
      info = "DiagnosticInfo",
      hint = "DiagnosticHint",
      arrow = "NonText",

      background = "None",
      mixing_color = "None",
    },
    options = {
      show_source = {
        enabled = true,
      },
      show_all_diags_on_cursorline = true,
      break_line = {
        enabled = true,
        after = 50,
      },
    }
  },
  init = function()
    vim.diagnostic.config({
      severity_sort = true,
      underline = { severity = {
        vim.diagnostic.severity.ERROR,
        vim.diagnostic.severity.WARN,
      }},
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "●",
          [vim.diagnostic.severity.WARN] = "●",
          [vim.diagnostic.severity.INFO] = "●",
          [vim.diagnostic.severity.HINT] = "●",
        },
      },
    })
  end,
}
