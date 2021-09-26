local mapkey = vim.api.nvim_set_keymap
local mapbufkey = vim.api.nvim_buf_set_keymap

mapkey('n', '<Space>', '', {})
vim.g.mapleader = ' '

options = { noremap = true }

-- Use C-c as if it were ESC
mapkey('i', '<C-c>', '<esc>', options)

-- Clipboard control
mapkey('x', 'p', '"_dP', options) -- paste without emptying black hole register
mapkey('n', '<leader>y', '"+y', options)
mapkey('v', '<leader>y', '"+y', options)
mapkey('n', '<leader>Y', 'gg"+yG', options)

-- Movement
mapkey('n', '<leader>h', '<C-w>h', options)
mapkey('n', '<leader>j', '<C-w>j', options)
mapkey('n', '<leader>k', '<C-w>k', options)
mapkey('n', '<leader>l', '<C-w>l', options)

mapkey('n', '<leader>q', ':q<cr>', options)

mapkey('n', '<leader>pv', ':NERDTree<cr>', options)
mapkey('n', '<leader>pf', ':Telescope find_files<cr>', options)
mapkey('n', '<leader>pg', ':Telescope live_grep<cr>', options)

