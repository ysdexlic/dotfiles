vim.keymap.set({'n', 'v'}, '<C-_>', ':Commentary<CR>', { silent = true })
vim.keymap.set('i', '<C-_>', '<C-o>:Commentary<CR>', { silent = true })
