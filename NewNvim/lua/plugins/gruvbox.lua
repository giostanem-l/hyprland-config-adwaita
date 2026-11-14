return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    -- You must call the setup function and pass the options as a table
    require("gruvbox").setup({
      terminal_colors = true,
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      inverse = true,
      contrast = "", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    })

    -- Then load the colorscheme
    vim.cmd("colorscheme gruvbox")
  end,
}

