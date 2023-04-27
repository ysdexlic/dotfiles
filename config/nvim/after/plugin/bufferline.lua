require 'nvim-web-devicons'.setup {
  override = {
    ["default_icon"] = {
      icon = "",
    }
  },
  default = true,
}

require("bufferline").setup {
  options = {
    mode = "tabs",
    themable = true,
    show_buffer_close_icons = false,
    offsets = {
      {
        filetype = "NvimTree",
      },
    },
  },
  highlights = {
    fill = {
      bg = {
        attribute = 'fg',
        highlight = 'SpecialKey',
      },
    },
    buffer_selected = {
      bg = {
        attribute = 'bg',
        highlight = 'CursorLine',
      }
    }
  }
}
