return {
  "epwalsh/obsidian.nvim",
  version = "*",
  layz = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "notes",
        path = "~/repos/notes",
      },
    },
  },
}
