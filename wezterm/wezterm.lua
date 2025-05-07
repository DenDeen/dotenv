local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config = {
  default_cursor_style = "SteadyBar",
  automatically_reload_config = true,
  window_close_confirmation = "NeverPrompt",
  adjust_window_size_when_changing_font_size = false,
  window_decorations = "INTEGRATED_BUTTONS|RESIZE",
  window_padding = { 
    top = '2cell',
    left = '3cell', 
  },
  enable_tab_bar = false,
  use_fancy_tab_bar = false,
  tab_bar_at_bottom = false,
  font_size = 12.5,
  font = wezterm.font("JetBrains Mono"),
  macos_window_background_blur = 30,
  window_background_opacity = 0.90,
  mouse_bindings = {
    -- Ctrl-click will open the link under the mouse cursor
    {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'CTRL',
    action = wezterm.action.OpenLinkAtMouseCursor,
    },
  },
}

-- coolnight colorscheme:
config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

-- Key bindings
config.keys = {
  -- Vertical pipe (|) -> horizontal split
  {
    key = '/',
    mods = 'CMD|OPT',
    action = wezterm.action.SplitHorizontal {
      domain = 'CurrentPaneDomain'
    },
  },
  -- Underscore (_) -> vertical split
  {
    key = '-',
    mods = 'CMD|OPT',
    action = wezterm.action.SplitVertical {
      domain = 'CurrentPaneDomain'
    },
  },
  -- Use CMD+w to close the pane, CMD+SHIFT+w to close the tab
  {
    key = "w",
    mods = "CMD",
    action = wezterm.action.CloseCurrentPane { confirm = true }
  },
  -- Use CMD + [h|j|k|l] to move between panes
  {
    key = "LeftArrow",
    mods = "CMD|OPT",
    action = wezterm.action.ActivatePaneDirection('Left')
  },
  {
    key = "RightArrow",
    mods = "CMD|OPT",
    action = wezterm.action.ActivatePaneDirection('Right')
  },
  {
    key = "UpArrow",
    mods = "CMD|OPT",
    action = wezterm.action.ActivatePaneDirection('Up')
  },
  {
    key = "DownArrow",
    mods = "CMD|OPT",
    action = wezterm.action.ActivatePaneDirection('Down')
  },
  -- Rebind OPT-Left, OPT-Right as ALT-b, ALT-f respectively to match Terminal.app behavior
  {
    key = 'LeftArrow',
    mods = 'OPT',
    action = wezterm.action.SendKey {
      key = 'b',
      mods = 'ALT',
    },
  },
  {
    key = 'RightArrow',
    mods = 'OPT',
    action = wezterm.action.SendKey { key = 'f', mods = 'ALT' },
  },
  { 
    mods = "CMD", 
    key = "LeftArrow", 
    action = wezterm.action.SendKey { mods = "CTRL", key = "a" } 
  },
	{ 
    mods = "CMD", 
    key = "RightArrow", 
    action = wezterm.action.SendKey { mods = "CTRL", key = "e" } 
  },
  {
    key = 'Backspace',
    mods = 'CMD',
    action = wezterm.action.SendKey { key = 'u', mods = 'CTRL' },
  },
}

return config