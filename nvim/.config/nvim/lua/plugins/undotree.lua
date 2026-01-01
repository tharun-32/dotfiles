return {
    "mbbill/undotree",
    config = function()
        vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle)
        local undodir = vim.fn.stdpath("state") .. "/undodir"
        if vim.fn.isdirectory(undodir) == 0 then
            vim.fn.mkdir(undodir, "p")
        end
        -- Create an undo directory (adjust path if needed)
        vim.opt.undofile = true
        vim.opt.undodir = vim.fn.stdpath("state") .. "/undodir"
    end
}

