-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Terminal Config
config.enable_tab_bar = false

-- Font Settings
config.font_size = 9.2
config.font = wezterm.font("Fira Code iScript")
config.line_height = 1.1

-- Color Scheme
config.color_scheme = "Gruvbox dark, hard (base16)"

return config
