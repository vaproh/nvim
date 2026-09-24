---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },

  -- Colorscheme
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.zenbones" },
  { import = "astrocommunity.colorscheme.modus-nvim" },
  { import = "astrocommunity.colorscheme.oxocarbon-nvim" },

  -- Yazi
  { import = "astrocommunity.file-explorer.yazi-nvim" },

  -- Python Setup
  { import = "astrocommunity.pack.python.base" },
  { import = "astrocommunity.pack.python.basedpyright" },
  { import = "astrocommunity.pack.python.ruff" },

  -- C/C++, Go, Rust, Zig
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.zig" },

  -- Shell / config filetypes
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.docker" },

  -- Comments
  { import = "astrocommunity.comment.mini-comment" },

  -- Markdown
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },

  -- Code runners
  { import = "astrocommunity.code-runner.overseer-nvim" },
  { import = "astrocommunity.code-runner.compiler-nvim" },
}
