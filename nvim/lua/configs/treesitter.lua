return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  main = 'nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    auto_install = true,
  },
  init = function()
    -- Incremental selection using Neovim 0.12 built-in treesitter textobjects (an/in)
    vim.keymap.set('n', '<Enter>', 'van', { remap = true, desc = 'Init treesitter selection' })
    vim.keymap.set('x', '<Enter>', 'an', { remap = true, desc = 'Expand treesitter selection' })
    vim.keymap.set('x', '<BS>', 'in', { remap = true, desc = 'Shrink treesitter selection' })

    vim.api.nvim_create_autocmd('FileType', {
      callback = function()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
    local ensureInstalled = {
      "bash",
      "css",
      "dockerfile",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "html",
      "javascript",
      "json",
      "lua",
      "luadoc",
      "markdown",
      "markdown_inline",
      "nginx",
      "php",
      "phpdoc",
      "python",
      "regex",
      "sql",
      "twig",
      "typescript",
      "tsx",
      "vim",
      "vimdoc",
      "vue",
      "xml",
      "yaml",
    }
    local alreadyInstalled = require('nvim-treesitter.config').get_installed()
    local parsersToInstall = vim.iter(ensureInstalled)
      :filter(function(parser)
        return not vim.tbl_contains(alreadyInstalled, parser)
      end)
      :totable()
    require('nvim-treesitter').install(parsersToInstall)
  end,
}
