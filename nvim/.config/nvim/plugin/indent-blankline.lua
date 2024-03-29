local hooks = require 'ibl.hooks'
local scope_hl = {
  'Blue',
  'Cyan',
}

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, 'Cyan', { fg = '#56B6C2' })
  vim.api.nvim_set_hl(0, 'Blue', { fg = '#61AFEF' })
end)

vim.opt.list = true
vim.opt.listchars:append('eol:↴')
vim.g.rainbow_delimiters = { highlight = scope_hl }

require 'ibl'.setup {
  -- highlight slow on large files
  -- scope = {
  --   highlight = scope_hl,
  --   enabled = true,
  -- },
  indent = {
    char = '▎',
    tab_char = '▎',
  },
  whitespace = {
    remove_blankline_trail = true,
  },
}

hooks.register(
  hooks.type.SCOPE_HIGHLIGHT,
  hooks.builtin.scope_highlight_from_extmark
)
