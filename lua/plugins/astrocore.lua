-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 },
      autopairs = true,
      cmp = true,
      diagnostics = { virtual_text = true, virtual_lines = false },
      highlighturl = true,
      notifications = true,
    },

    diagnostics = {
      virtual_text = true,
      underline = true,
    },

    filetypes = {
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },

    options = {
      opt = {
        relativenumber = true,
        number = true,
        spell = false,
        signcolumn = "yes",
        wrap = false,
      },
      g = {
        -- mapleader and maplocalleader must be set before lazy.setup, not here
      },
    },

    autocmds = {
      autoreload = {
        {
          event = { "BufEnter", "FocusGained", "CursorHold", "CursorHoldI" },
          desc = "Reload files changed outside Neovim",
          command = "silent! checktime",
        },
      },
    },

    mappings = {
      n = {
        -- buffer navigation
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- close buffer
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer",
        },

        -- save
        ["<C-s>"] = { "<cmd>w<CR>", desc = "Save file" },

        -- increment / decrement
        ["+"] = { "<C-a>", desc = "Increment number" },
        ["-"] = { "<C-x>", desc = "Decrement number" },

        -- select all
        ["<C-a>"] = { "ggVG", desc = "Select all" },

        -- splits
        ["<Leader>sh"] = { "<cmd>split<CR>", desc = "Horizontal split" },
        ["<Leader>sv"] = { "<cmd>vsplit<CR>", desc = "Vertical split" },

        -- window navigation
        ["<C-h>"] = { "<C-w>h", desc = "Left window" },
        ["<C-j>"] = { "<C-w>j", desc = "Down window" },
        ["<C-k>"] = { "<C-w>k", desc = "Up window" },
        ["<C-l>"] = { "<C-w>l", desc = "Right window" },

        -- resize
        ["<S-Up>"] = { "<cmd>resize -3<CR>", desc = "Resize up" },
        ["<S-Down>"] = { "<cmd>resize +3<CR>", desc = "Resize down" },
        ["<S-Left>"] = { "<cmd>vertical resize -3<CR>", desc = "Resize left" },
        ["<S-Right>"] = { "<cmd>vertical resize +3<CR>", desc = "Resize right" },

        -- Comments
        ["<C-/>"] = {
          function() require("mini.comment").toggle_lines(vim.fn.line ".", vim.fn.line ".") end,
          desc = "Toggle comment",
        },
      },

      i = {
        ["jk"] = { "<Esc>", desc = "Exit insert mode" },
      },

      v = {
        ["<"] = { "<gv", desc = "Indent left" },
        [">"] = { ">gv", desc = "Indent right" },
        ["<C-/>"] = {
          function() require("mini.comment").toggle_lines(vim.fn.line "v", vim.fn.line ".") end,
          desc = "Toggle comment",
        },
      },
    },
  },
}
