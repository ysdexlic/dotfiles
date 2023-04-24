vim.g.mapleader = " "

-- Remove highlight & clear status bar
vim.keymap.set('n', '<ESC>', ':nohl <bar> :echo <CR>', { silent = true })

-- Alt/Option backspace
vim.keymap.set({'i', 'c'}, '<A-BS>', '<C-W>')

-- Alt/Option arrows
vim.keymap.set({'i', 'c'}, '<M-b>', '<S-Left>')
vim.keymap.set({'i', 'c'}, '<M-f>', '<S-Right>')

-- Switch between tabs using numbers
vim.keymap.set('n', '<leader>1', '1gt')
vim.keymap.set('n', '<leader>2', '2gt')
vim.keymap.set('n', '<leader>3', '3gt')
vim.keymap.set('n', '<leader>4', '4gt')
vim.keymap.set('n', '<leader>5', '5gt')
vim.keymap.set('n', '<leader>6', '6gt')
vim.keymap.set('n', '<leader>7', '7gt')
vim.keymap.set('n', '<leader>8', '8gt')
vim.keymap.set('n', '<leader>9', '9gt')
vim.keymap.set('n', '<leader>0', ':tablast<cr>')
vim.keymap.set('n', '<leader>t', 'gt')
vim.keymap.set('n', '<leader>T', 'gT')
vim.keymap.set('n', '<S-Right>', 'gt')
vim.keymap.set('n', '<S-Left>', 'gT')

-- Switch between the last two files
vim.keymap.set('n', '<Leader><Leader>', '<C-^>')

-- Keep visual mode on while tabbing
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Yank to end of line
vim.keymap.set('n', 'Y', 'y$')

-- Center after searching
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

-- Undo breakpoints
vim.keymap.set('i', ',', ',<C-g>u')
vim.keymap.set('i', '.', '.<C-g>u')
vim.keymap.set('i', '!', '!<C-g>u')
vim.keymap.set('i', '?', '?<C-g>u')

-- Moving text
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Search and replace
vim.keymap.set('n', '<Leader>sr', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gIc<Left><Left><Left><Left>')

-- Quicker window movement
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Window splits
vim.keymap.set('n', '<leader>\\', ':vsp<CR>')
vim.keymap.set('n', '<leader><bar>', ':sp<CR>')

-- Git
vim.keymap.set('n', '<leader>gs', ':vertical :G<CR>', { silent = true })

-- Replace without updating register
vim.keymap.set('v', '<leader>p', '"_dP')
vim.keymap.set({'n', 'v'}, '<leader>d', '"_d')

-- Telescope
vim.keymap.set('n', '<C-p>', ':Telescope find_files<cr>', { silent = true })
vim.keymap.set('n', '<C-f>', ':Telescope live_grep<CR>', { silent = true })
