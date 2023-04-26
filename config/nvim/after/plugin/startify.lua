vim.g.startify_change_to_dir = 0
vim.g.startify_bookmarks = { { c = '~/dotfiles/config/nvim/lua/ysdexlic/init.lua'} }

local header = {
'   ██╗   ██╗███████╗██████╗ ███████╗██╗  ██╗██╗     ██╗ ██████╗',
'   ╚██╗ ██╔╝██╔════╝██╔══██╗██╔════╝╚██╗██╔╝██║     ██║██╔════╝',
'    ╚████╔╝ ███████╗██║  ██║█████╗   ╚███╔╝ ██║     ██║██║     ',
'     ╚██╔╝  ╚════██║██║  ██║██╔══╝   ██╔██╗ ██║     ██║██║     ',
'      ██║   ███████║██████╔╝███████╗██╔╝ ██╗███████╗██║╚██████╗',
'      ╚═╝   ╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝ ╚═════╝',
}

local footer = {
'   +-------------------------------------------+',
'   |    Github: https://github.com/ysdexlic    |',
'   +-------------------------------------------+',
}


vim.g.startify_custom_header = header
vim.g.startify_custom_footer = footer
