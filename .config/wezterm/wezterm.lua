local wezterm = require('wezterm')

local config  = wezterm.config_builder()

-- settings
config.front_end = 'WebGpu'
config.automatically_reload_config = false
--

-- color
config.color_scheme = 'Apple System Colors'
config.colors = {
	tab_bar = {
		active_tab = {
			bg_color = '#5f5fff',
			fg_color = '#c0c0c0'
		}
	}
}
--

-- font
config.font = wezterm.font_with_fallback {
	'SF Mono',
	'Symbols Nerd Font',
}
config.font_size = 12
--

-- window
config.initial_cols = 110
config.initial_rows = 30
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false
config.tab_bar_at_bottom = true

config.window_background_opacity = 0.85
config.macos_window_background_blur = 50
config.window_frame = {
	inactive_titlebar_bg = 'none',
	active_titlebar_bg = 'none'
}

config.window_close_confirmation = 'NeverPrompt'
config.window_decorations = 'RESIZE'
--

-- cursor
config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_ease_in = 'Linear'
--

return config

