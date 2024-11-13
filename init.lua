-- 以下が設定の呼び出し
require("plugin")
require("keymaps")
require("options")
require("lsp")
require("treesitter")

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = "*",
    callback = function()
        local ft = vim.bo.filetype
        if ft == 'plaintex' then
            require('ftplugin/latex')
        elseif ft == 'python' then
            require('ftplugin/python')
        end
    end
})
