---@type LazySpec
return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    local status = require "astroui.status"
    -- find first fill (%=) so we only append to the left side
    local insert_pos = #opts.statusline + 1
    for i, comp in ipairs(opts.statusline) do
      if comp.provider == "%=" then
        insert_pos = i
        break
      end
    end
    -- insert in reverse so final order is separated_path, breadcrumbs
    table.insert(opts.statusline, insert_pos, status.component.breadcrumbs())
    table.insert(opts.statusline, insert_pos, status.component.separated_path())
  end,
}
