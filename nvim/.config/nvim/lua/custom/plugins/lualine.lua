return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- Bubbles config for lualine
    -- Author: lokesh-krishna
    -- MIT license, see LICENSE for more details.

    local colors = {
      bg = '#282828',
      bghc = '#1d2021',
      red = '#cc241d',
      green = '#9897a1',
      yellow = '#d79921',
      blue = '#458588',
      aqua = '#689d6a',
      fg = '#fbf1c7',
    }

    local bubbles_theme = {
      normal = {
        a = { fg = colors.bg, bg = colors.aqua },
        b = { fg = colors.white, bg = colors.bg },
        c = { fg = colors.white, bg = colors.bghc },
      },

      insert = { a = { fg = colors.fg, bg = colors.red } },
      visual = { a = { fg = colors.bg, bg = colors.yellow } },
      replace = { a = { fg = colors.bg, bg = colors.yellow } },

      inactive = {
        a = { fg = colors.fg, bg = colors.bg },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bghc },
      },
    }

    require('lualine').setup {
      options = {
        theme = bubbles_theme,
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = {
          {
            'mode',
            separator = { left = '' },
            right_padding = 2,
          },
        },
        lualine_b = { 'filename', 'branch' },
        lualine_c = {
          '%=', --[[ add your center compoentnts here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }
  end,
}
