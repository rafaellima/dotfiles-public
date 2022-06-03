-- global options
vim.api.nvim_set_option("shell", "fish")

-- colorscheme
vim.cmd[[colorscheme NeoSolarized]]

-- indentation based on file extension
vim.cmd[[autocmd FileType go setlocal shiftwidth=4 tabstop=4]]
vim.cmd[[autocmd FileType yaml setlocal shiftwidth=2 tabstop=2]]
vim.cmd[[autocmd FileType ruby setlocal shiftwidth=2 tabstop=2]]
vim.cmd[[autocmd FileType javascript setlocal shiftwidth=2 tabstop=2]]

-- matching braces
vim.cmd[[inoremap do<CR> do<CR>end<Esc>ko]]

