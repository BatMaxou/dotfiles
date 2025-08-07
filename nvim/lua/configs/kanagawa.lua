return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      transparent = true,
      terminalColors = false,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
        palette = {
          white = "#ffffff",
        },
      },
      overrides = function(colors)
        local theme = colors.theme

        return {
          ------------ General | Foreground ------------
          Main = { fg = colors.palette.fujiWhite },
          Secondary = { fg = colors.palette.carpYellow },
          White = { fg = colors.palette.white },
          LightOrange = { fg = colors.palette.surimiOrange },
          Orange = { fg = colors.palette.roninYellow },
          Pink = { fg = colors.palette.sakuraPink },
          LightRed = { fg = colors.palette.peachRed },
          Red = { fg = colors.palette.samuraiRed },
          Green = { fg = colors.palette.springGreen },
          DarkGreen = { fg = colors.palette.autumnGreen },
          LightBlue = { fg = colors.palette.lightBlue },
          Blue = { fg = colors.palette.springBlue },
          DarkBlue = { fg = colors.palette.crystalBlue },
          BlueVariant = { fg = colors.palette.waveAqua2 },
          LightViolet = { fg = colors.palette.springViolet2 },
          Violet = { fg = colors.palette.oniViolet },
          Black = { fg = colors.palette.fujiGray },
          DeepBlack = { fg = colors.palette.sumiInk0 },
          ------------ General | Background ------------
          Background = { fg = colors.palette.sumiInk0, bg = colors.palette.fujiWhite },
          VioletBackground = { fg = colors.palette.sumiInk0, bg = colors.palette.oniViolet },
          LightOrangeBackground = { fg = colors.palette.sumiInk0, bg = colors.palette.surimiOrange },
          LightRedBackground = { fg = colors.palette.sumiInk0, bg = colors.palette.peachRed },
          BlueVariantBackground = { fg = colors.palette.sumiInk0, bg = colors.palette.waveAqua2 },
          GreenBackground = { fg = colors.palette.sumiInk0, bg = colors.palette.springGreen },
          BlueBackground = { fg = colors.palette.sumiInk0, bg = colors.palette.springBlue },
          SecondaryBackground = { fg = colors.palette.sumiInk0, bg = colors.palette.carpYellow },
          TransparentVioletBackground = { fg = colors.palette.fujiWhite, bg = colors.palette.sumiInk4 },
          ------------ General | Undercurl ------------
          LightRedUndercurl = { undercurl = true, sp = colors.palette.peachRed },
          LightOrangeUndercurl = { undercurl = true, sp = colors.palette.surimiOrange },
          LightVioletUndercurl = { undercurl = true, sp = colors.palette.springViolet2 },
          LightBlueUndercurl = { undercurl = true, sp = colors.palette.lightBlue },
          ------------ General | Remove Unwanted Text Decoration -----------
          Boolean = { bold = false },
          Statement = { bold = false },
          Search = { link = "TransparentVioletBackground", bold = false },
          CurSearch = { link = "TransparentVioletBackground", bold = false },
          Keyword = { italic = false },
          ["@keyword.return"] = { italic = false },
          ------------ General | Transparent Default Windows ------------
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          -- Save an hlgroup with dark background and dimmed foreground
          -- so that you can use it where your still want darker windows.
          -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
          ------------ FZF ------------
          ["FzfLuaBorder"] = { link = "LightOrange" },
          ["FzfLuaTitle"] = { link = "LightOrange" },
          ["FzfLuaScrollBorderFull"] = { link = "LightOrange" },
          ["FzfLuaScrollBorderEmpty"] = { link = "LightOrange" },
          ------------ Markdown ------------
          ["@markup.link.url.markdown_inline"] = { link = "Blue" }, -- (url)
          ["@markup.link.label.markdown_inline"] = { link = "Orange" }, -- [label]
          ["@markup.italic.markdown_inline"] = { link = "LightRed", italic = true }, -- *italic*
          ["@markup.raw.markdown_inline"] = { link = "Black" }, -- `code`
          ["@markup.list.markdown"] = { link = "DarkBlue" }, -- + list
          ["@markup.quote.markdown"] = { link = "Main" }, -- > blockcode
          ------------ JSON ------------
          ["@number.json"] = { link = "Main" },
          ------------ PHP ------------
          ["@keyword.import.php"] = { link = "Violet" },
          ["@module.php"] = { link = "Main" },
          ["@function.method.php"] = { link = "Secondary" },
          ["@constructor.php"] = { link = "BlueVariant" },
          ["@variable.parameter.php"] = { link = "Blue" },
          ["@operator.php"] = { link = "Main" },
          ["@variable.php"] = { link = "Blue" },
          ["@property.php"] = { link = "Blue" },
          ["@variable.member.php"] = { link = "Blue" },
          ["@type.builtin.php"] = { link = "Violet" },
          ["@variable.builtin.php"] = { link = "LightOrange" },
          ["@function.method.call.php"] = { link = "Secondary" },
          ["@function.call.php"] = { link = "Secondary" },
          ------------ PHP Doc ------------
          ["@variable.parameter.phpdoc"] = { link = "Black" },
          ["@keyword.phpdoc"] = { link = "Black" },
          ["@variable.phpdoc"] = { link = "Black" },
          ["@type.phpdoc"] = { link = "Violet" },
          ["@attribute.phpdoc"] = { link = "LightOrange" },
          ------------ TS ------------
          ["@keyword.import.tsx"] = { link = "Violet" },
          ["@punctuation.bracket.tsx"] = { link = "Pink" },
          ["@string.tsx"] = { link = "Green" },
          ["@operator.tsx"] = { link = "Main" },
          ["@variable.member.tsx"] = { link = "Blue" },
          ["@type.builtin.tsx"] = { link = "BlueVariant" },
          ["@variable.parameter.tsx"] = { link = "Blue" },
          ["@function.tsx"] = { link = "DarkBlue" },
          ["@function.call.tsx"] = { link = "Secondary" },
          ["@function.method.call.tsx"] = { link = "Secondary" },
          ["@punctuation.delimiter.tsx"] = { link = "Main" },
          ["@tag.builtin.tsx"] = { link = "DarkBlue" },
          ["@tag.attribute.tsx"] = { link = "Blue" },
          ["@tag.tsx"] = { link = "BlueVariant" },
          ["@number.tsx"] = { link = "BlueVariant" },
          ["@boolean.tsx"] = { link = "DarkBlue" },
          ["@variable.tsx"] = { link = "Blue" },
          ------------ REGEX ------------
          ["@string.escape.regex"] = { link = "LightRed" },
          ------------ Blink ------------
          ["BlinkCmpMenu"] = { link = "Main" },
          ["BlinkCmpMenuSelection"] = { link = "Background" },
          ["BlinkCmpMenuBorder"] = { link = "Secondary" },
          ["BlinkCmpScrollBarThumb"] = { link = "Background" },
          ["BlinkCmpScrollBarGutter"] = { link = "Main" },
          ["BlinkCmpLabel"] = { link = "Main" },
          ["BlinkCmpLabelMatch"] = { link = "Green" },
          ["BlinkCmpDoc"] = { link = "Main" },
          ["BlinkCmpDocBorder"] = { link = "Secondary" },
          ["BlinkCmpDocSeparator"] = { link = "Main" },
          ["BlinkCmpSignatureHelpBorder"] = { link = "Secondary" },
          ------------ Git Graph ------------
          ["GitGraphBranch1"] = { link = "Blue" },
          ["GitGraphBranch2"] = { link = "LightRed" },
          ["GitGraphBranch3"] = { link = "LightOrange" },
          ["GitGraphBranch4"] = { link = "Green" },
          ["GitGraphBranch5"] = { link = "Violet" },
          ["GitGraphHash"] = { link = "LightRed" },
          ["GitGraphTimestamp"] = { link = "Violet" },
          ["GitGraphAuthor"] = { link = "Blue" },
          ["GitGraphBranchName"] = { link = "Green" },
          ["GitGraphBranchTag"] = { link = "LightOrange" },
          ["GitGraphBranchMsg"] = { link = "Black" },
          ------------ Indent ------------
          ["SnacksIndent"] = { link = "Black" },
          ["SnacksIndent1"] = { link = "Blue" },
          ["SnacksIndent2"] = { link = "LightRed" },
          ["SnacksIndent3"] = { link = "Green" },
          ["SnacksIndent4"] = { link = "Violet" },
          ["SnacksIndent5"] = { link = "LightOrange" },
          ["SnacksIndent6"] = { link = "BlueVariant" },
          ["SnacksIndent7"] = { link = "LightViolet" },
          ["SnacksIndent8"] = { link = "Orange" },
          ------------ Status Line ------------
          ["MiniStatuslineModeVisual"] = { link = "VioletBackground", bold = false },
          ["MiniStatuslineModeNormal"] = { link = "BlueBackground", bold = false },
          ["MiniStatuslineModeInsert"] = { link = "GreenBackground", bold = false },
          ["MiniStatuslineModeReplace"] = { link = "LightOrangeBackground", bold = false },
          ["MiniStatuslineModeCommand"] = { link = "SecondaryBackground", bold = false },
          ["MiniStatuslineModeOther"] = { link = "BlueVariantBackground", bold = false },
          ------------ Noice ------------
          ["NoiceCmdlinePopupBorder"] = { link = "Secondary" },
          ["NoiceCmdlineIcon"] = { link = "Secondary" },
          ["NoiceCmdlinePopupBorderCmdline"] = { link = "Blue" },
          ["NoiceCmdlineIconCmdline"] = { link = "Blue" },
          ["NoiceCmdlinePopupBorderHelp"] = { link = "Green" },
          ["NoiceCmdlineIconHelp"] = { link = "Green" },
          ["NoiceCmdlinePopupBorderSearch"] = { link = "LightOrange" },
          ["NoiceCmdlineIconSearch"] = { link = "LightOrange" },
          ["NoiceFormatLevelInfo"] = { link = "Blue" },
          ["NoiceFormatLevelWarn"] = { link = "LightOrange" },
          ["NoiceFormatLevelError"] = { link = "LightRed" },
          ------------ Nvim Tree ------------
          ["NvimTreeGitDirty"] = { link = "Violet" },
          ["NvimTreeGitDeleted"] = { link = "LightRed" },
          ["NvimTreeGitNewIcon"] = { link = "Green" },
          -- ------------ Diagnostic ------------
          ["DiagnosticError"] = { link = "LightRed" },
          ["DiagnosticFloatingError"] = { link = "LightRed" },
          ["DiagnosticSignError"] = { link = "LightRed" },
          ["DiagnosticUnderlineError"] = { link = "LightRedUndercurl" },
          ["DiagnosticWarn"] = { link = "LightOrange" },
          ["DiagnosticFloatingWarn"] = { link = "LightOrange" },
          ["DiagnosticSignWarn"] = { link = "LightOrange" },
          ["DiagnosticUnderlineWarn"] = { link = "LightOrangeUndercurl" },
          ["DiagnosticInfo"] = { link = "LightViolet" },
          ["DiagnosticFloatingInfo"] = { link = "LightViolet" },
          ["DiagnosticSignInfo"] = { link = "LightViolet" },
          ["DiagnosticUnderlineInfo"] = { link = "LightVioletUndercurl" },
          ["DiagnosticHint"] = { link = "LightBlue" },
          ["DiagnosticFloatingHint"] = { link = "LightBlue" },
          ["DiagnosticSignHint"] = { link = "LightBlue" },
          ["DiagnosticUnderlineHint"] = { link = "LightBlueUndercurl" },
        }
      end,
    })
    vim.cmd("colorscheme kanagawa-wave")
  end,
}
