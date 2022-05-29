-- window-local options
vim.wo.number = true

-- buffer-local options
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2

-- global options
vim.api.nvim_set_option("shell", "fish")

-- colorscheme
vim.cmd[[colorscheme NeoSolarized]]

-- indentation based on file extension
vim.cmd[[autocmd FileType go setlocal shiftwidth=4 tabstop=4]]
vim.cmd[[autocmd FileType yaml setlocal shiftwidth=2 tabstop=2]]
vim.cmd[[autocmd FileType ruby setlocal shiftwidth=2 tabstop=2]]

