vim.g.copilot_assume_mapped = true
vim.api.nvim_set_keymap('i', '<M-Enter>', 'copilot#Accept("<CR>")', { silent = true, expr = true })

