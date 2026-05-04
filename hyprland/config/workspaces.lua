-- WORKSPACES --
-- Assign Workspaces to monitors --
for i = 1, 10 do
  if i % 2 == 0 then
    hl.workspace_rule({ workspace = tostring(i),  monitor =  Monitor_2 })
  else
    hl.workspace_rule({ workspace = tostring(i),  monitor =  Monitor_1 })
  end
end

-- Keybinds for changing active workspaces --
for i = 1, 10 do
  local key = i % 10 -- 10 maps to key 0
  hl.bind(MainMod .. ' + ' .. key, hl.dsp.focus { workspace = i })
  hl.bind(MainMod .. ' + SHIFT + ' .. key, hl.dsp.window.move { workspace = i })
end

-- Scroll through existing workspaces with MainMod + scroll
hl.bind(MainMod .. ' + mouse_down', hl.dsp.focus { workspace = 'e+1' })
hl.bind(MainMod .. ' + mouse_up', hl.dsp.focus { workspace = 'e-1' })


