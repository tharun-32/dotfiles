return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require'nvim-treesitter'.setup {
            ensure_installed = {"lua","bash","markdown","html","css","javascript","typescript"},
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
