-- BINDS --
-- Main Programs --
hl.bind(MainMod .. ' + Q', hl.dsp.exec_cmd(Terminal), { description = 'Open my favourite terminal' })
hl.bind(MainMod .. ' + W', hl.dsp.exec_cmd(Browser), { description = 'Open Web browser' })
hl.bind(MainMod .. ' + O', hl.dsp.exec_cmd(Notes), { description = 'Open Obsidian' })
hl.bind(MainMod .. ' + D', hl.dsp.exec_cmd(Discord), { description = 'Open Vesktop' })
hl.bind(MainMod .. ' + V', hl.dsp.window.float( { action = 'toggle' }), { description = 'Toggle Floating for current window' })
hl.bind(MainMod .. ' + C', hl.dsp.window.kill(), { description = 'Toggle Floating for current window' })
hl.bind(MainMod .. ' + E', hl.dsp.exec_cmd(FileManager), { description = 'Open yazi file manager' })
hl.bind(MainMod .. ' + SHIFT + E', hl.dsp.exec_cmd(FileManager_alt), { description = 'Open Dolphin file manager' })
hl.bind(MainMod .. ' + SPACE', hl.dsp.exec_cmd(Menu), { release = true, description = 'Open Program Launcher' })
hl.bind(MainMod .. ' + SHIFT + S', hl.dsp.exec_cmd(ScreenSnipper), { description = 'Take a screenshot' })

-- Waybar --
hl.bind(MainMod .. ' + CTRL + R', hl.dsp.exec_cmd(Bar_reload), { description = 'Reload the bar' })
hl.bind(MainMod .. ' + CTRL + T', hl.dsp.exec_cmd(Bar_toggle), { description = 'Toggle the bar' })

-- Kill Hyprland and return to TTY --
hl.bind(MainMod .. ' + M', hl.dsp.exec_cmd( "command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

-- Move/resize windows with MainMod + LMB/RMB and dragging
hl.bind(MainMod .. ' + mouse:272', hl.dsp.window.drag(), { mouse = true })
hl.bind(MainMod .. ' + mouse:273', hl.dsp.window.resize(), { mouse = true })

hl.bind(MainMod .. ' + P', hl.dsp.window.pseudo())

-- Switch to a submap called `resize`.

-- Start a submap called "resize".
hl.define_submap("resize", function()
  -- Set repeating binds for resizing the active window.
  hl.bind('right', hl.dsp.window.resize({ x = 10, y = 0, relative = true }), { repeating = true })
  hl.bind('left', hl.dsp.window.resize({ x = -10, y = 0, relative = true }), { repeating = true })
  hl.bind('up', hl.dsp.window.resize({ x = 0, y = 10, relative = true }), { repeating = true })
  hl.bind('down', hl.dsp.window.resize({ x = 10, y = -10, relative = true }), { repeating = true })

  -- Use `reset` to go back to the global submap
  hl.bind('escape', hl.dsp.submap('reset'))
end)

-- Switch to the submap "resize"
hl.bind('ALT + R', hl.dsp.submap('resize'))
-- Keybinds further down will be global again...




