vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd("colorscheme onedark")

vim.cmd([[
  highlight Search cterm=NONE ctermbg=237 ctermfg=NONE guibg=#3E4452 guifg=NONE
  highlight EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
]])
