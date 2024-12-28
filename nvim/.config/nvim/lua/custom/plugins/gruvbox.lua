return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = function()
    -- Default options:

    require('gruvbox').setup {
      terminal_colors = false, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
      strikethrough = false,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = false, -- invert background for search, diffs, statuslines and errorsgruv
      contrast = 'soft', -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {
        Function = { fg = '#8ec07c', bold = true },
        Tag = { fg = '#8ec07c' },
        String = { fg = '#689d6a', italic = false },
        Delimiter = { fg = '#689d6a', bold = true },

        -- This somehow fixes the lualine weird white corners lol
        StatusLine = { bg = '#282828', reverse = false },
        StatusLineNC = { bg = '#282828', reverse = false },
      },
      dim_inactive = false,
      transparent_mode = false,
    }
    vim.cmd 'colorscheme gruvbox'
  end,
}
