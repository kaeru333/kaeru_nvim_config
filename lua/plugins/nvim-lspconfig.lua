return {
  {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    config = function()
      -- Python: pyright
      vim.lsp.config.pyright = {
        cmd = { 'pyright-langserver', '--stdio' },
        filetypes = { 'python' },
        root_dir = vim.fs.root(0, {'.git', 'pyproject.toml', 'setup.py'}),
        single_file_support = true,
      }

      -- LaTeX: texlab
      vim.lsp.config.texlab = {
        cmd = { "texlab" },
        filetypes = { "tex", "bib" },
        root_dir = vim.fs.root(0, {"compile.sh", ".git"}),
        single_file_support = true,
        settings = {
          texlab = {
            build = {
              onSave = true,
              args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "-outdir=%O", "%S" },
            },
            forwardSearch = {
              args = { "-forward-search", "%p", "%l" },
            },
          },
        },
      }

      -- LSP サーバーを有効化
      vim.lsp.enable('pyright')
      vim.lsp.enable('texlab')
    end,
  },
}
