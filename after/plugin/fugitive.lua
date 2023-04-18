vim.keymap.set('n', '<leader>gg', vim.cmd.Git, { desc = 'Open fu[g]itive' })
vim.keymap.set('n', '<leader>gp', ':Git push<CR>', { desc = 'Push to remote' })
vim.keymap.set('n', '<leader>gF', ':Git pull<CR>', { desc = 'Pull from remote' })

