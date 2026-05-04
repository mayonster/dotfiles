hl.config({
  -- General
  general = {
    allow_tearing = true,
  },

  -- Misc Options
  misc = {
    always_follow_on_dnd = true,
    disable_hyprland_logo = true,
    vrr = 0,
    animate_manual_resizes = true,
    animate_mouse_windowdragging = true,
    enable_swallow = true,
    font_family = 'Monaspace Neon NF',
    middle_click_paste = false,
  },
  -- xwayland
  xwayland = {
    force_zero_scaling = true,
  },

  -- dwindle
  dwindle = {
    force_split = 0,
    preserve_split = false,
    smart_split = false,
    smart_resizing = true,
    permanent_direction_override = false,
    special_scale_factor = 1,
    split_width_multiplier = 1.0,
    use_active_for_splits = true,
    default_split_ratio = 1.0,
    split_bias = 0,
    precise_mouse_move = false,
  },
})


