vim.g.mapleader = " "
vim.keymap.set('n', '<leader>w', ':w<CR>',{noremap = true})
vim.keymap.set('n', '<leader>q', ':q!<CR>',{noremap = true})
vim.keymap.set('n', '<leader>s', ':so %<CR>',{noremap = true})
vim.keymap.set('n', '<leader>c', ':NvimTreeToggle<CR>',{noremap = true})
vim.keymap.set('n', '<leader>v', ':NvimTreeFocus<CR>',{noremap = true})
