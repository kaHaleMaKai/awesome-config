---------------------------
-- Default awesome theme --
---------------------------
local awful = require("awful")

theme = {}

local function transparent(color)
  local transparency = "c8"
  local c
  if #color == 6 then
    c = color .. transparency
  else
    c = color
  end
  return "#" .. c
end

theme.font           = "hack-2.0 8"

dark_yellow          =  transparent("222200")
slightly_yellow      =  transparent("303000")
medium_yellow        =  transparent("505000")
bright_yellow        =  transparent("b0b000")
dark_gray            =  transparent("222222")
medium_gray          =  transparent("535d6c")
bright_gray          =  transparent("aaaaaa")
orange               =  transparent("ff8000")
dark_red             =  transparent("91231c")
bright_red           =  transparent("ff0000")
black                =  transparent("000000")
white                =  transparent("ffffff")

theme.bg_normal      =  dark_yellow
theme.bg_focus       =  medium_yellow
theme.bg_urgent      =  orange
theme.bg_minimize    =  slightly_yellow
theme.bg_systray     =  dark_yellow
theme.fg_normal      =  bright_gray
theme.fg_focus       =  white
theme.fg_urgent      =  white
theme.fg_minimize    =  white
theme.border_normal  =  black
theme.border_focus   =  medium_yellow
theme.border_marked  =  dark_red
theme.border_width   =  1

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
home_dir = os.getenv("HOME")
config_path = awful.util.getdir("config")
theme_path = config_path .. "/themes/my-theme"
icon_path = config_path .. "/icons"

theme.taglist_squares_sel   = theme_path .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = theme_path .. "/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme_path .. "/submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = theme_path .. "/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = theme_path .. "/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme_path .. "/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme_path .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme_path .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme_path .. "/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme_path .. "/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme_path .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme_path .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme_path .. "/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme_path .. "/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme_path .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme_path .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme_path .. "/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme_path .. "/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme_path .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme_path .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = theme_path .. "/titlebar/maximized_focus_active.png"

theme.wallpaper = home_dir .. "/.background-image"

-- You can use your own layout icons like this:
theme.layout_fairh = theme_path .. "/layouts/fairhw.png"
theme.layout_fairv = theme_path .. "/layouts/fairvw.png"
theme.layout_floating  = theme_path .. "/layouts/floatingw.png"
theme.layout_magnifier = theme_path .. "/layouts/magnifierw.png"
theme.layout_max = theme_path .. "/layouts/maxw.png"
theme.layout_fullscreen = theme_path .. "/layouts/fullscreenw.png"
theme.layout_tilebottom = theme_path .. "/layouts/tilebottomw.png"
theme.layout_tileleft   = theme_path .. "/layouts/tileleftw.png"
theme.layout_tile = theme_path .. "/layouts/tilew.png"
theme.layout_tiletop = theme_path .. "/layouts/tiletopw.png"
theme.layout_spiral  = theme_path .. "/layouts/spiralw.png"
theme.layout_dwindle = theme_path .. "/layouts/dwindlew.png"

--theme.awesome_icon = icon_path .. "/awesome16.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=2:tabstop=8:softtabstop=2:textwidth=80
