return {
  "nvim-cmp",
  dependencies = {
    --Copilot
    {
      "github/copilot.vim",
    },
  },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    table.insert(opts.sources, 1, {
      name = "Copilot",
      group_index = 1,
      priority = 100,
    })
  end,
}
