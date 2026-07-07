---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },

  -- Colorscheme
  { import = "astrocommunity.colorscheme.nightfox-nvim" },

  -- Yazi
  { import = "astrocommunity.file-explorer.yazi-nvim" },

  -- Python Setup
  { import = "astrocommunity.pack.python.base" },
  { import = "astrocommunity.pack.python.basedpyright" },
  { import = "astrocommunity.pack.python.ruff" },

  -- Comments
  { import = "astrocommunity.comment.mini-comment" },

  -- Markdown
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
}
