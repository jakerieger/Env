-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "tokyonight"
config.font = wezterm.font("JetBrains Mono")
config.font_size = 12
config.window_background_opacity = 0.85

-- Tab bar config
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.default_cursor_style = "BlinkingBar"

-- and finally, return the configuration to wezterm
return config
