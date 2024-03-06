-- Highlight, edit, and navigate code

local plugin = { 'nvim-treesitter/nvim-treesitter' }

plugin.dependencies = {
  { 'nvim-treesitter/nvim-treesitter-textobjects' },
}

plugin.build = { ':TSUpdate' }

plugin.opts = {
  auto_install = false,
  sync_install = false,
  highlight = {
    enable = true,
    disable = { 'latex' },
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
  },
  ensure_installed = {
    'c',
    'cpp',
    'bash',
    'python',
    'latex',
    'bibtex',
    'matlab',
    'lua',
    'vim',
    'vimdoc',
    'html',
  },
}

function plugin.config(name, opts)
  require('nvim-treesitter.configs').setup(opts)
end

return plugin
