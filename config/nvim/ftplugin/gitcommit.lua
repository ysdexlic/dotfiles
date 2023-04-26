-- Automatically wrap at 72 characters and spell check commit messages
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = 'PULLREQ_EDITMSG',
  command = 'set syntax=gitcommit'
})

vim.opt_local.textwidth = 72
vim.opt_local.spell = true
