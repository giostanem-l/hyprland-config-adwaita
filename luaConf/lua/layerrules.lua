---------------------
---- LAYER RULES ----
---------------------

-- Rofi
hl.layer_rule({
    name = "rofi-blur",
    match = { namespace = "rofi" },
    blur = true,
    ignore_alpha = 0,
})

-- SwayOSD
hl.layer_rule({
    name = "swayosd-blur",
    match = { namespace = "swayosd" },
    blur = true,
})

-- Vicinae
hl.layer_rule({
    name = "vicinae-blur",
    match = { namespace = "vicinae" },
    blur = true,
    ignore_alpha = 0,
})


-- Waybar
hl.layer_rule({
    name = "waybar-blur-rules",
    match = { namespace = "waybar" },
    blur = true,
    ignore_alpha = 0.5, -- Unifica il comportamento del tuo vecchio ignore_alpha 0.5
})

-- SwayNC Control Center
hl.layer_rule({
    name = "swaync-cc-blur",
    match = { namespace = "swaync-control-center" },
    blur = true,
    ignore_alpha = 0.5,
})

-- SwayNC Notification Window
hl.layer_rule({
    name = "swaync-notif-blur",
    match = { namespace = "swaync-notification-window" },
    blur = true,
    ignore_alpha = 0.5,
})
