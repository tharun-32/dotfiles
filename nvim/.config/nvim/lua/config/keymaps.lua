--leader key as space
vim.g.mapleader = " "
--exiting insert mode to normal mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk", silent = true })

--for netrw 
vim.keymap.set("n","<leader>e","<cmd>Ex<CR>")


--to be in center while moving using u and d
vim.keymap.set("n","<C-u>","<C-u>zz")
vim.keymap.set("n","<C-d>","<C-d>zz")

--to remove highlight
vim.keymap.set("n", "<leader>sc", "<cmd>nohlsearch<CR>", { silent = true })

--to switch between buffers
vim.keymap.set("n","<tab>","<cmd>bn<CR>")
--to delete a buffer
vim.keymap.set("n","<leader>bd","<cmd>bd<CR>")

-- Window management
vim.keymap.set('n', '<leader>sv', '<C-w>v', opts)     -- split window vertically
vim.keymap.set('n', '<leader>sh', '<C-w>s', opts)     -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)     -- make split windows equal width & height
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- close current split window

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Move text up and down
vim.keymap.set('v', '<C-d>', ':m .+1<CR>== v', opts)
vim.keymap.set('v', '<C-u>', ':m .-2<CR>== v', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- Replace word under cursor
vim.keymap.set('n', '<leader>j', '*``cgn', opts)

--window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


