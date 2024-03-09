return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects', 'nvim-treesitter/nvim-treesitter-context', 'mfussenegger/nvim-treehopper' },
  config = function()
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'bash', 'c', 'html', 'lua', 'markdown', 'vim', 'vimdoc' },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }

    require('treesitter-context').setup {}
    require('tsht').config.hint_keys = { 'h', 'j', 'f', 'd', 'n', 'v', 's', 'l', 'a' }

    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  end,
}
