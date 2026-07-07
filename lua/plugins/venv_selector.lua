return {
  "linux-cultist/venv-selector.nvim",
  ft = "python",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },

  keys = {
    {
      "<leader>pv",
      "<cmd>VenvSelect<CR>",
      desc = "Select Python Virtual Environment",
    },
  },

  opts = {},
}
