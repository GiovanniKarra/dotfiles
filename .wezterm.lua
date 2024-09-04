-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'Google Dark (Gogh)'
config.font = wezterm.font 'Monospace'
config.font_size = 14

config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
  left = 2,
  right = 2,
  top = 0,
  bottom = 0,
}

config.keys = {
  {
    key = 'Backspace',
    mods = 'CTRL',
    action = wezterm.action.SendKey {key = 'w', mods = 'CTRL'},
  },
}
-- and finally, return the configuration to wezterm
return config
