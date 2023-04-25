require("ysdexlic.packer")
require("ysdexlic.set")
require("ysdexlic.remap")

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
