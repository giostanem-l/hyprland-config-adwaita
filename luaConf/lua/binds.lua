--------------------
---- KEYBINDS ----
--------------------

-- Definizione del Modificatore Principale
local mainMod = "SUPER"

-- Esecuzione Applicazioni e Comandi Base
hl.bind(mainMod .. " + RETURN",   hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q",        hl.dsp.window.close()) -- killactive
hl.bind(mainMod .. " + M",        hl.dsp.exit)
hl.bind(mainMod .. " + E",        hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V",        hl.dsp.window.float({ action = "toggle" }))
hl.bind("ALT + SPACE",            hl.dsp.exec_cmd(menu .. " || killall rofi"))
hl.bind(mainMod .. " + B",        hl.dsp.exec_cmd("flatpak run app.zen_browser.zen"))
hl.bind(mainMod .. " + F",        hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.exec_cmd("/home/leonardo/.AppImage/helium/helium.AppImage"))
hl.bind(mainMod .. " + G",        hl.dsp.exec_cmd("ghostty"))
hl.bind(mainMod .. " + SPACE",    hl.dsp.exec_cmd("vicinae toggle"))
hl.bind(mainMod .. " + SHIFT + G", hl.dsp.exec_cmd("./.config/scripts/RamMode/toggle_ram.sh"))

-- Gestione Pannelli (Waybar & Notifiche)
hl.bind(mainMod .. " + W",        hl.dsp.exec_cmd("hyprctl dispatch exec waybar"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("killall waybar"))
hl.bind(mainMod .. " + N",        hl.dsp.exec_cmd("swaync-client -t -sw"))

-- Menu Rofi Custom (Power e App Launcher)
hl.bind(mainMod .. " + X",        hl.dsp.exec_cmd("rofi -show power-menu -modi power-menu:rofi-power-menu || killall rofi"))
hl.bind(mainMod .. " + A",        hl.dsp.exec_cmd("rofi -show drun -config ~/.config/rofi/config2.rasi || killall rofi"))

-- Layout Dwindle specifici (Pseudo e Toggle Split)
hl.bind(mainMod .. " + P",        hl.dsp.layout("pseudo"))
hl.bind(mainMod .. " + S",        hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + T",        hl.dsp.window.fullscreen())

-- Screenshot & Lock
hl.bind("PRINT",                  hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("hyprlock"))

-- Spostamento Focus (Vim style: h, j, k, l)
hl.bind(mainMod .. " + H",        hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + J",        hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + K",        hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + L",        hl.dsp.focus({ direction = "right" }))

-- Spostamento Finestre all'interno del Layout (SUPER + CTRL + Frecce)
hl.bind(mainMod .. " + CTRL + left",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + CTRL + up",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + CTRL + down",  hl.dsp.window.move({ direction = "down" }))

-- Ridimensionamento Finestre Attive (SUPER + SHIFT + Frecce)
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 50 0"))
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.exec_cmd("hyprctl dispatch resizeactive -50 0"))
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.exec_cmd("hyprctl dispatch resizeactive 0 -50"))
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.exec_cmd("hyprctl dispatch resizeactive 0 50"))

-- Navigazione Workspace (Frecce, Scroll Mouse e Tasti Laterali)
hl.bind(mainMod .. " + right",     hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + left",      hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e+1" }))

-- Loop per la gestione dei Workspace 1-10 (Assegnazione e Spostamento Finestre)
for i = 1, 10 do
    local key = i % 10 -- Mappa il 10 sullo '0'
    hl.bind(mainMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Interazione Mouse (Muovi/Ridimensiona in modalità Drag)
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Tasti Multimediali del Laptop (Volume, Luminosità, Player)
hl.bind("XF86AudioRaiseVolume",   hl.dsp.exec_cmd("pamixer -i 5"),                     { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",   hl.dsp.exec_cmd("pamixer -d 5"),                     { locked = true, repeating = true })
hl.bind("XF86AudioMute",          hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",       hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",    hl.dsp.exec_cmd("swayosd-client --brightness +5"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",  hl.dsp.exec_cmd("swayosd-client --brightness -5"),   { locked = true, repeating = true })

hl.bind("XF86AudioNext",          hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause",         hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",          hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",          hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Eventi Hardware (Chiusura Monitor Laptop)
hl.bind("switch:Lid Switch",      hl.dsp.exec_cmd("hyprlock"), { locked = true })
