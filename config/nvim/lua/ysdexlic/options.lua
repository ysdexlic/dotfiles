vim.opt.updatetime = 50

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 0
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.showtabline = 2

vim.opt.listchars = { tab = "»·", trail = "·", nbsp = "·" }

vim.opt.mouse = "nvi"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.textwidth = 80
vim.opt.colorcolumn = "+1"

vim.opt.guifont = "FiraCode Nerd Font Mono:h15"

vim.opt.spellfile = "$HOME/.vim-spell-en.utf-8.add"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.modeline = false
vim.opt.modelines = 0

vim.opt.tags:prepend('.git/tags')
vim.opt.diffopt:append('vertical')
vim.opt.complete:append('kspell')

local filetypes = vim.api.nvim_create_augroup('vimrcEx', { clear = true })
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = 'dotrc',
  group = filetypes,
  command = 'set filetype=toml',
})
-- vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
--   pattern = '*.ron',
--   group = filetypes,
--   command = 'set filetype=rust',
-- })
-- vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
--   pattern = '.{jscs,jshint,eslint,prettier,babel}rc',
--   group = filetypes,
--   command = 'set filetype=json',
-- })
-- vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
--   pattern = '*.tsx',
--   group = filetypes,
--   command = 'set filetype=typescriptreact',
-- })
-- vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
--   pattern = '*.tsx',
--   group = filetypes,
--   command = 'set filetype=typescriptreact',
-- })
-- vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
--   pattern = ',*/zsh/configs/*',
--   group = filetypes,
--   command = 'set filetype=sh',
-- })
