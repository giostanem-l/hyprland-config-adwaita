---------------
---- INPUT ----
---------------
hl.config({
    -- Configurazione Input Generale
    input = {
        kb_layout   = "us, it",
        kb_variant  = "",
        kb_model    = "",
        kb_options  = "caps:swapescape, grp:alt_shift_toggle",
        kb_rules    = "",

        follow_mouse = 1,
        sensitivity  = 0, -- -1.0 - 1.0, 0 significa nessuna modifica

        touchpad = {
            natural_scroll = true,
        },
    },

    -- Configurazione dei Gesti (Touchpad Gestures)
    -- Mappati dentro la tabella 'gestures' secondo le API standard di Hyprland in Lua
    gestures = {
        -- Sintassi comune: "dita direzione, comando" oppure tabelle dedicate
        -- Nota: Se l'estensione Lua usa definizioni esplicite, la struttura è questa:
        ["3 horizontal"] = "workspace",
        ["3 up"]         = "exec, rofi -show drun || killall rofi",
        ["3 down"]       = "exec, vicinae toggle",
        ["4 right"]      = "exec, rofi -show drun -config ~/.config/rofi/config2.rasi || killall rofi",
    },

    -- Configurazione Per-Device (Dispositivi Specifici)
    -- In Hyprland Lua viene gestita passando un array di tabelle sotto 'device'
    device = {
        {
            name = "epic-mouse-v1",
            sensitivity = -0.5,
        },
    },
})
