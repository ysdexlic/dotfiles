require'nvim-web-devicons'.setup {
  override = {
    ["default_icon"] = {
      icon = "",
    }
  },
  default = true;
}

require("bufferline").setup{
  options = {
    mode = "tabs",
    themable = true,
    show_buffer_close_icons = false,
  },
  highlights = {
    fill = {
      fg = "None",
      bg = "None"
    },
    -- buffer_selected = {
    --   bg = {
    --     attribute = 'bg',
    --     highlight = 'CursorLine',
    --   }
    -- }
  }
}
