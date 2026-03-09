return {
  "lervag/vimtex",
  event = "VeryLazy",
  ft = { "tex", "latex" },
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    vim.g.vimtex_view_method = "zathura"
  end,
  keys = {
    {
      "<leader>lb",
      function()
        vim.cmd("write")
        vim.cmd("VimtexCompileSS")
      end,
      ft = "tex",
      desc = "LaTeX: 保存して単発コンパイル",
    },
  },
}
