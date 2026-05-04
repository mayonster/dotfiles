hl.on('hyprland.start', function()
  hl.exec_cmd(Wallpaper)
  hl.exec_cmd(Bar)
  hl.exec_cmd 'systemctl --user start hyprpolkitagent'
  hl.exec_cmd 'dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP XDG_SESSION_TYPE'
  hl.exec_cmd 'wireplumber'
end)
