-- ENV: XDG, QT, NVIDIA
require('config.environment')

-- THEME --
require('theme.theme')

-- MONITORS --
Monitor_1 = 'HDMI-A-2'
Monitor_2 = 'DP-2'

hl.monitor({
  output = Monitor_1,
  mode = '3840x2160@240',
  position = '0x0',
  scale = '1',
})

hl.monitor({
  output = Monitor_2,
  mode = '2560x1440@60',
  position = '3840x0',
  scale = '1',
  transform = 3,
})

-- KEYBOARD SETUP --
require('config.keyboard_setup')

-- GENERAL SETTINGS --
require('config.settings')
-- Programs --

Terminal = 'kitty'
Browser = 'firefox'
FileManager = 'kitty --class yazi-term -e yazi'
FileManager_alt = 'dolphin'
Menu = 'pkill wofi || wofi'
Wallpaper = 'hyprpaper'
Bar = 'waybar'
Bar_toggle = 'killall -SIGUSR1 waybar'
Bar_reload = 'killall waybar; waybar'
Notes = 'obsidian'
Discord = 'vesktop'
ScreenSnipper = 'hyprshot -m region'

-- KEYBINDS --
MainMod = 'SUPER'
require('config.keybinds')

-- WORKSPACES --
require('config.workspaces')

-- EXEC AT STARTUP
require('config.exec_at_startup')

