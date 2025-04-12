return {
  {
    {
      "xiyaowong/transparent.nvim",
      config = function()
        require("transparent").setup({
          enable = true, -- boolean: enable transparent
          extra_groups = { -- table/string: additional groups that should be cleared
            "Normal",
            "NormalNC",
            "Comment",
            "Constant",
            "Special",
            "Identifier",
            "Statement",
            "PreProc",
            "Type",
            "Underlined",
            "Todo",
            "String",
            "Function",
            "Conditional",
            "Repeat",
            "Operator",
            "Structure",
            "LineNr",
            "NonText",
            "SignColumn",
            "CursorLineNr",
            "EndOfBuffer",
          },
          exclude = {}, -- table: groups you don't want to clear
        })
        vim.cmd("TransparentEnable") -- execute the command to enable transparency
      end,
    },
    { "rktjmp/lush.nvim" },
    "anAcc22/sakura.nvim",
    config = function()
      vim.opt.background = "dark"
      vim.cmd("colorscheme sakura")
    end,
  },

  {
    "neanias/everforest-nvim",
    version = false, -- Use the latest version
    lazy = false, -- Load this plugin immediately
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "hard", -- Set the background to 'hard'
        italis = true, -- Enable italics
        transparent_background_level = 1, -- Uncomment to enable transparency
        diagnostic_text_highlight = true, -- Enable diagnostic text highlight
        diagnostic_virtual_text = "coloured", -- Set diagnostic virtual text to colored
        colours_override = function(palette)
          palette.bg0 = "#1A1A22" -- Override background color
        end,
      })
    end,
  },

  {
    -- LazyVim configuration
    "LazyVim/LazyVim",
    opts = {
      -- Set the default color scheme
      colorscheme = "everforest",
    },
  },
}
