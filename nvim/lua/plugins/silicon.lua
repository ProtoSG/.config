return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  init = function()
    local wk = require("which-key")
    wk.register({
      ["s"] = {
        name = "Silicon",
        ["s"] = {
          function()
            require("nvim-silicon").shoot()
          end,
          "Create code screenshot",
        },
        ["f"] = {
          function()
            require("nvim-silicon").file()
          end,
          "Save code screenshot as file",
        },
        ["c"] = {
          function()
            require("nvim-silicon").clip()
          end,
          "Copy code screenshot to clipboard",
        },
      },
    }, { prefix = "<leader>", mode = "v" })
  end,
  config = function()
    require("nvim-silicon").setup({
      font = "JetBrainsMono Nerd Font=34",
      background = "#282a36",
    })
  end,
}
