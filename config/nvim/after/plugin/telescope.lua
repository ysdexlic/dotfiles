local actions = require('telescope.actions')

-- merge borders
require('telescope.pickers.layout_strategies').horizontal_merged = function(picker, max_columns, max_lines, layout_config)
  local layout = require('telescope.pickers.layout_strategies').horizontal(picker, max_columns, max_lines, layout_config)

  layout.prompt.title = ''
  layout.prompt.borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '╰' }

  layout.results.borderchars = { '─', '│', '─', '│', '╭', '┬', '┤', '├' }
  layout.results.height = layout.results.height + 1

  layout.preview.borderchars = { '─', '│', '─', '│', '┌', '╮', '╯', '┴' }
  layout.preview.col = layout.preview.col - 1

  return layout
end

require('telescope').setup {
  defaults = {
    multi_icon = '',
    entry_prefix = '   ',
    prompt_prefix = '   ',
    selection_caret = '  ',
    results_title = false,
    prompt_title = false,
    dynamic_preview_title = true,
    layout_strategy = 'horizontal_merged',
    layout_config = {
      width = 0.9,
      preview_width = 0.5,
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<c-k>"] = actions.move_selection_previous,
        ["<c-j>"] = actions.move_selection_next,
      },
    },
  }
}

-- add line numbers to preview
vim.api.nvim_create_autocmd('User', {
  pattern = 'TelescopePreviewerLoaded',
  command = 'setlocal number',
})

vim.cmd('hi link TelescopeBorder Folded')
