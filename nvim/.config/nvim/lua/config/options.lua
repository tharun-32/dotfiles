--set all options here
--set line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

--set tab spaces
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

--enables true color
vim.opt.termguicolors = true

vim.o.splitbelow = true -- force all horizontal splits to go below current window
vim.o.splitright = true -- force all vertical splits to go to the right of current window

--uses os clipboard
vim.o.clipboard = 'unnamedplus'

--for auto-save
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

--for transparentBG
-- vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, { "ExtraGroup" })
--
