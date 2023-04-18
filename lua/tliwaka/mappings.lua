vim.g.mapleader = " "
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, {desc = '[P]roject [V]iew'})

-- Move selection with J and K
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection Up' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection Down' })

vim.keymap.set('n', 'Y', 'yg$')

vim.keymap.set('i', '<C-c>', '<Esc>', { desc = 'Close and save edition' })

-- Windows mappings
vim.keymap.set('n', '<leader>wv', vim.cmd.vsplit, { desc = 'Split [w]indow [v]ertically' }) 
vim.keymap.set('n', '<leader>ws', vim.cmd.split, { desc = '[S]plit [w]indow horizontally' }) 
vim.keymap.set('n', '<leader>wh', '<C-w>h', { desc = 'Go to the left window' })
vim.keymap.set('n', '<leader>wj', '<C-w>j', { desc = 'Go to the down window' })
vim.keymap.set('n', '<leader>wk', '<C-w>k', { desc = 'Go to the up window' })
vim.keymap.set('n', '<leader>wl', '<C-w>l', { desc = 'Go to the right window' })
vim.keymap.set('n', '<leader>wc', '<C-w>q', { desc = 'Close current window' })
vim.keymap.set('n', '<leader>wo', '<C-w>o', { desc = 'Close other windows' })
