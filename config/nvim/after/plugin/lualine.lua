require('lualine').setup {
  options = {
    theme = 'onedark',
    disabled_filetypes = { 'packer', 'NvimTree' },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {'branch', 'diff', 'diagnostics'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}

