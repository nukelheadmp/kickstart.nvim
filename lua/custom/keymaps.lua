-- Custom keymaps
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<leader>w', '<C-w>', { desc = '[W]indow operation' })
vim.keymap.set('n', '<leader>bd', ':bd<cr>', { desc = '[B]uffer [D]elete' })
vim.keymap.set('n', '<leader>bn', ':bn<cr>', { desc = '[B]uffer [N]ext' })
vim.keymap.set('n', '<leader>t', ':Neotree toggle<cr>', { desc = '[T]ree' })

