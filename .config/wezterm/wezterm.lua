-- Initialize Configuration
local wezterm = require("wezterm")
local config = wezterm.config_builder()
local opacity = 1
local transparent_bg = "rgba(22, 24, 26, " .. opacity .. ")"
local host_os = require("util").get_os()

-- Font
local emoji_font = "Segoe UI Emoji"
config.font = wezterm.font_with_fallback({
	{
		family = "JetBrainsMono Nerd Font",
		weight = "Regular",
	},
	emoji_font,
})
config.font_size = 10

-- Window
config.initial_rows = 25
config.initial_cols = 80
config.window_decorations = "RESIZE"
-- config.window_background_opacity = opacity
-- config.window_background_image = (os.getenv("WEZTERM_CONFIG_FILE") or ""):gsub("wezterm.lua", "howls.jpg")
config.background = {
	{
	    source = {
		    File = (os.getenv("WEZTERM_CONFIG_FILE") or ""):gsub("wezterm.lua", "bg-blurred.png"),
	    },
	    height = "100%",
	    opacity = 1


	},
	{
		source = {
			Gradient = {
				-- colors = { "#EEBD89", "#D13ABD" },
				preset = "Magma",
				-- Specifies a Linear gradient starting in the top left corner.
				orientation = { Linear = { angle = -45.0 } },
			},
		},
			width = "100%",
			height = "100%",
			opacity = 0.1
	},
}
config.window_close_confirmation = "NeverPrompt"
config.win32_system_backdrop = "Acrylic"
config.max_fps = 255
config.animation_fps = 144
config.cursor_blink_rate = 250

-- Colors
config.colors = require("cyberdream")
config.force_reverse_video_cursor = true

-- Shell
config.default_prog = { "C:/Program Files/Powershell/7/pwsh.exe", "-NoLogo" }
config.default_cwd = "C:/git"

-- Tabs
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false
config.use_fancy_tab_bar = false
config.colors.tab_bar = {
	background = transparent_bg,
	new_tab = { fg_color = config.colors.background, bg_color = config.colors.brights[6] },
	new_tab_hover = { fg_color = config.colors.background, bg_color = config.colors.foreground },
}

wezterm.on("format-tab-title", function(tab, _, _, _, hover)
	local background = config.colors.brights[1]
	local foreground = config.colors.foreground

	if tab.is_active then
		background = config.colors.brights[7]
		foreground = config.colors.background
	elseif hover then
		background = config.colors.brights[8]
		foreground = config.colors.background
	end

	local title = tostring(tab.tab_index + 1)
	return {
		{ Foreground = { Color = background } },
		{ Text = "█" },
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = title },
		{ Foreground = { Color = background } },
		{ Text = "█" },
	}
end)

local act = wezterm.action

-- Keybindings
config.keys = {
	-- Remap paste for clipboard history compatibility
	{ 
		key = "v",
		mods = "CTRL",
		action = wezterm.action({ PasteFrom = "Clipboard" })
	},
	{
		key = 't',
		mods = 'SHIFT|ALT',
		action = act.SpawnTab 'CurrentPaneDomain',
	},

}

-- linux overrides
if host_os == "linux" then
	emoji_font = "Noto Color Emoji"
	config.front_end = "WebGpu"
	config.window_background_image = os.getenv("HOME") .. "/.config/wezterm/bg-blurred.png"
	config.window_decorations = nil -- use system decorations
	config.default_prog = { "bash" }
	config.default_cwd = "~"
end

return config
