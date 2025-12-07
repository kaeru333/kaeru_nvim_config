vim.api.nvim_set_keymap("n", "<leader>t", ":Neotree toggle<CR>", { noremap = true, silent = true }) -- Neotreeのトグル
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })
