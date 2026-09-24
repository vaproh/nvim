---@type LazySpec
return {
  "nuvic/flexoki-nvim",
  name = "flexoki",
  lazy = true,
  opts = {
    variant = "auto",
    dim_inactive_windows = false,
    styles = { bold = true, italic = false },
  },
  config = function(_, opts)
    require("flexoki").setup(opts)
  end,
}
