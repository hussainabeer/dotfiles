return {
  {
    "natecraddock/workspaces.nvim",
    lazy = false,
    opts = {
      hooks = {
        open = {
          "Telescope find_files",
        },
      },
    },
    keys = {
      { "<leader>wc", "<cmd>WorkspacesOpen<cr>", mode = "n", desc = "Change Workspace" },
    },
  },
}
