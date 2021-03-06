local wezterm = require 'wezterm';

return {
    scrollback_lines = 3505,
    term = "xterm-256color",
    ratelimit_output_bytes_per_seconds = 400000,
    ratelimit_mux_output_scans_per_second = 100,
    enable_wayland = false,
    cursor_blink_rate = 800,
    default_cursor_style = "SteadyBlock",
    tab_max_with = 16,
    window_background_opacity = 0.6,
  
    font = wezterm.font("JetBrainsMono Nerd Font Mono"),
    font_size = 8.0,
    dpi = 96.0,

    --Custom keymap overload
    keys = {
        -- Use ALT + j to go one tap back or ALT + k to go one tap forward
        {key="j", mods="CTRL|ALT", action=wezterm.action{ActivateTabRelative=-1}},
        {key="k", mods="CTRL|ALT", action=wezterm.action{ActivateTabRelative=1}},
        
        -- Move to tap by using ALT + number to go between 1-8 and use CTRL + ALT + number to got betwen 9-16
        {key="1", mods="ALT", action=wezterm.action{ActivateTab=0}},
        {key="2", mods="ALT", action=wezterm.action{ActivateTab=1}},
        {key="3", mods="ALT", action=wezterm.action{ActivateTab=2}},
        {key="4", mods="ALT", action=wezterm.action{ActivateTab=3}},
        {key="5", mods="ALT", action=wezterm.action{ActivateTab=4}},
        {key="6", mods="ALT", action=wezterm.action{ActivateTab=5}},
        {key="7", mods="ALT", action=wezterm.action{ActivateTab=7}},
        {key="8", mods="ALT", action=wezterm.action{ActivateTab=8}},
        {key="1", mods="CTRL|ALT", action=wezterm.action{ActivateTab=8}},
        {key="2", mods="CTRL|ALT", action=wezterm.action{ActivateTab=9}},
        {key="3", mods="CTRL|ALT", action=wezterm.action{ActivateTab=10}},
        {key="4", mods="CTRL|ALT", action=wezterm.action{ActivateTab=11}},
        {key="5", mods="CTRL|ALT", action=wezterm.action{ActivateTab=12}},
        {key="6", mods="CTRL|ALT", action=wezterm.action{ActivateTab=13}},
        {key="7", mods="CTRL|ALT", action=wezterm.action{ActivateTab=14}},
        {key="8", mods="CTRL|ALT", action=wezterm.action{ActivateTab=15}},
    },

    colors = {
        -- The default text color
        foreground = "#d5ced9",
        -- The default background color
        background = "#2f2833",

        -- Overrides the cell background color when the current cell is occupied by the
        -- cursor and the cursor style is set to Block
        cursor_bg = "#d5ced9",
        -- Overrides the text color when the current cell is occupied by the cursor
        cursor_fg = "black",
        -- Specifies the border color of the cursor when the cursor style is set to Block,
        -- of the color of the vertical or horizontal bar when the cursor style is set to
        -- Bar or Underline.
        cursor_border = "#d5ced9",

        -- The color of the scrollbar "thumb"; the portion that represents the current viewport
        scrollbar_thumb = "#222222",

        -- The color of the split lines between panes
        split = "#444444",

        selection_bg = "#7e6c88",
        selection_fg = "#d5ced9",

      ansi = {"#3f2833","#fc644d","#a5f69c","#e9d7a5","#3b79c7","#f92672","#74d3de","#d5ced9"},
      brights = {"#7e6c88","#fc644d","#a5f69c","#e9d7a5","#3b79c7","#f92672","#74d3de","#ffffff"},
    }
}
