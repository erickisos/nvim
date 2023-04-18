local ntree = require('nvim-tree.api')
local nutils = require('nvim-tree.utils')

vim.api.nvim_set_keymap("n", "<leader>op", ":NvimTreeToggle<cr>", {silent = true, noremap = true})

vim.api.nvim_create_autocmd('VimEnter', { callback = function() ntree.tree.open() end })
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and nutils.is_nvim_tree_buf() then
      vim.cmd "quit"
    end
  end
})
