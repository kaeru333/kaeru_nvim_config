return {
    "nvim-treesitter/nvim-treesitter",
    event = "BufReadPost",
    build = ":TSUpdate",
    priority = 1000,
    config = function() 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "markdown", "markdown_inline" },
          sync_install = false,
          highlight = {
            enable = true, 
            additional_vim_regex_highlighting = { "markdown" },
          },
          synchronize_install = false,
          indent = { enable = true },  
        })
    end
 }
