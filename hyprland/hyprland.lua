-- ENV --

hl.env('XDG_CURRENT_DESKTOP', 'Hyprland')
hl.env('XDG_SESSION_TYPE', 'wayland')
hl.env('XDG_SESSION_DESKTOP', 'Hyprland')

-- QT --
hl.env('QT_AUTO_SCREEN_SCALE_FACTOR', '1')
hl.env('QT_QPA_PLATFORM', 'wayland;xcb')
hl.env('QT_WAYLAND_DISABLE_WINDOWDECORATION', '1')
hl.env('QT_QPA_PLATFORMTHEME', 'qt5ct')

-- NVIDIA

hl.env('GBM_BACKEND', 'nvidia-drm')
hl.env('__GLX_VENDOR_LIBRARY_NAME', 'nvidia')
hl.env('LIBVA_DRIVER_NAME', 'nvidia')

-- Theming --
hl.env('GTK_THEME', 'catppuccin-macchiato-lavender-standard+default')
hl.env('XCURSOR_THEME', 'catppuccin-macchiato-lavender-standard+default')
hl.env('XCURSOR_SIZE', '24')
hl.env('GDK_SCALE', '1')

hl.env('HYPRCURSOR_THEME', 'catppuccin-macchiato-peach-cursors')
hl.env('HYPRCURSOR_SIZE', '24')

-- Monitors --
hl.monitor({
	--output = 'DP-1'
	--output = 'HDMI-A-2'
	output = 'HDMI-A-1',
	mode = '3840x2160@240',
	position = '0x0',
	scale = 1,
})

hl.monitor({
	output = 'DP-1',
	mode = '2560x1440@60',
	position = '3840x0',
	scale = 1,
})

-- Input -- 
hl.config({
	input = {
	kb_layout = 'us,cz',
	kb_variant = 'qwerty',
        kb_options = 'compose:rctrl, level3:ralt_switch, grp:alt_space_toggle',
        numlock_by_default = 'true',
	},
    })

-- General Settings

hl.config({
-- General
	general = {
		allow_tearing = 'true',
	},

-- Misc Options
	misc = {
	always_follow_on_dnd = 'true',
	disable_hyprland_logo = 'true',
	vrr = '0',
	animate_manual_resizes = 'true',
	animate_mouse_windowdragging = 'true',
	enable_swallow = 'true',
	font_family = 'Monaspace Krypton NF',
	middle_click_paste = 'false',
	},
-- xwayland
	xwayland = {
	force_zero_scaling = 'true',
	},

-- dwindle
	dwindle = {
	pseudotile = 'yes',
	preserve_split = 'yes',
	pseutotile = 'true',
	force_split = '0',
	},
})

-- Binds -- 

hl.bind("SUPER + Q", hl.dsp.exec_cmd("kitty"), { description = "Open my favourite terminal" })
hl.bind("SUPER + W", hl.dsp.exec_cmd("firefox"), { description = 'Open Web browser' })
hl.bind("SUPER + O", hl.dsp.exec_cmd("obsidian"), { description = "Open Obsidian" })
hl.bind("SUPER + D", hl.dsp.exec_cmd("vesktop"), { description = 'Open Vesktop' })
hl.bind("SUPER + V", hl.dispatch(hl.dsp.window.float({ action = "toggle" })), { description = 'Toggle Floating for current window' })
hl.bind("SUPER + E", hl.dsp.exec_cmd("kitty --class yazi-term -e yazi"), { description = "Open yazi file manager" })
hl.bind("SUPER + SHIFT + E", hl.dsp.exec_cmd("Dolphin"), { description = "Open Dolphin file manager" })
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("pkill wofi || wofi"), { release = true }, { description = 'Open Program Launcher' })
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region"), { description = 'Take a screenshot' })
hl.bind("SUPER + F", hl.dsp.exec_cmd("fullscreen || 0"), { description = "Toggle fullscreen on active window" })
hl.bind("SUPER + mouse:272", hl.dsp.exec_cmd("movewindow"), { description = 'Move the window with a left click' })
hl.bind("SUPER + mouse:273", hl.dsp.exec_cmd("resizewindow"), { description = "Resize window with right click" })
hl.bind("SUPER + D", hl.dsp.exec_cmd("vesktop"), { description = 'Open Vesktop' })

-- Switch to a submap called `resize`.
hl.bind("ALT + R", hl.dsp.submap("resize"))

-- Start a submap called "resize".
hl.define_submap("resize", function()

    -- Set repeating binds for resizing the active window.
    hl.bind("right", hl.resize({ x = 10, y = 0, relative = true}), { repeating = true })
    hl.bind("left", hl.resize({ x = -10, y = 0, relative = true}), { repeating = true })
    hl.bind("up", hl.resize({ x = 0, y = 10, relative = true}), { repeating = true })
    hl.bind("down", hl.resize({ x = 10, y = -10, relative = true}), { repeating = true })

    -- Use `reset` to go back to the global submap
    hl.bind("escape", hl.dsp.submap("reset"))

end)

-- Keybinds further down will be global again...

-- WINDOWS --
-- Change active workspaces --
hl.bind('SUPER + 1', hl.workspace(1))
hl.bind('SUPER + 2', hl.workspace(2))
hl.bind('SUPER + 3', hl.workspace(3))
hl.bind('SUPER + 4', hl.workspace(4))
hl.bind('SUPER + 5', hl.workspace(5))
hl.bind('SUPER + 6', hl.workspace(6))
hl.bind('SUPER + 7', hl.workspace(7))
hl.bind('SUPER + 8', hl.workspace(8))
hl.bind('SUPER + 9', hl.workspace(9))

-- Moving windows to other workspaces --
--hl.bind('SUPER + SHIFT + 1', 

-- Move windows to different workspaces
