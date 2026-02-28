-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  pattern = "*",
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- @lsp.type.property.typescriptreact
    vim.api.nvim_set_hl(0, "@lsp.type.function.typescriptreact", { link = "None" })
    vim.api.nvim_set_hl(0, "@lsp.type.property.typescriptreact", { link = "None" })
    vim.api.nvim_set_hl(0, "@lsp.type.enumMember.typescriptreact", { link = "None" })
    vim.api.nvim_set_hl(0, "@lsp.type.parameter.typescriptreact", { link = "None" })
    vim.api.nvim_set_hl(0, "@lsp.mod.declaration.typescriptreact", { link = "None" })
    vim.api.nvim_set_hl(0, "@lsp.mod.local.typescriptreact", { link = "None" })
    vim.api.nvim_set_hl(0, "@lsp.mod.readonly.typescriptreact", { link = "None" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.function.declaration.typescriptreact", { link = "None" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.function.local.typescriptreact", { link = "None" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.function.readonly.typescriptreact", { link = "None" })
  end,
});

local augroup = vim.api.nvim_create_augroup("FileTypeIndent", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = { "php", "sh", "html", "css", 'twig' },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = ".env*",
  command = "set filetype=sh"
})
