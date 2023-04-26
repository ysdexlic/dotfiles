require("ysdexlic.packer")
require("ysdexlic.options")
require("ysdexlic.keymaps")

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
