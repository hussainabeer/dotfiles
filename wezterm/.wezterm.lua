-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Terminal Config
config.enable_tab_bar = false

-- Font Settings
config.font_size = 9.5
config.font = wezterm.font("Fira Code iScript")

-- Color Scheme
config.color_scheme = "Gruvbox dark, medium (base16)"

return config
