return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "study",
        path = "~/myfiles/ScienceTokyo/nakatalab/study/log",
      },
      -- {
      --   name = "work",
      --   path = "~/vaults/work",
      -- },
    },
    ui = {
      enable = false,
    }, 
  },
}
