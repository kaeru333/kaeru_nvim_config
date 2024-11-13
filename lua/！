local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

keymap('i', '<C-g>', '<Esc>', opts)
keymap('n', 'ss', '^', opts)
keymap('v', 'ss', '^', opts)
keymap('n', ';;', '$', opts)
keymap('v', ';;', '$', opts)
keymap('v', '<C-q>', '<C-v>', opts)
keymap('n', 'N', ':noh<CR>', opts)

keymap('n', 'ff', ':Telescope find_files<CR>', opts)
keymap('n', 'H', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
keymap('n', 'J', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'ed', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
keymap('n', 'en', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
keymap('n', 'ep', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
