-- General navigation
local keymap = vim.api.nvim_set_keymap
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})

local opts = { noremap = true }
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

-- LSP keymaps
local function nkeymap(key, map)
  keymap('n', key, map, opts)
end

nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')

-- telescope keymaps
keymap('n', ';f', "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap('n', ';r', "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)

-- vim-rspec
keymap('n', '<leader>t', "<cmd>:call RunCurrentSpecFile()<CR>", opts)
keymap('n', '<leader>s', "<cmd>:call RunNearestSpec()<CR>", opts)
keymap('n', '<leader>l', "<cmd>:call RunLastSpec()<CR>", opts)
keymap('n', '<leader>a', "<cmd>:call RunAllSpecs()<CR>", opts)
