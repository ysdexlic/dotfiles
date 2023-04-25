vim.g.rooter_patterns = {'.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'Dependencies'}
vim.g.rooter_silent_chdir = 1

-- vim.api.nvim_create_autocmd({ 'BufEnter' }, {
--   pattern = '*',
--   callback = function()
--     vim.cmd('Rooter')
--   end,
-- })
