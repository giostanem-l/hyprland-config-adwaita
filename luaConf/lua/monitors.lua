------------------
---- MONITORS ----
------------------

-- Monitor Principale del Laptop (eDP-1)
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@120",
    position = "2560x0",
    scale    = "1",
})

-- Monitor Esterno HDMI (HDMI-A-1)
hl.monitor({
    output   = "HDMI-A-1",
    mode     = "2560x1440@120",
    position = "0x0",
    scale    = "1",
})

-- Monitor Esterno DisplayPort (DP-2)
hl.monitor({
    output   = "DP-2",
    mode     = "2560x1440@120",
    position = "0x0",
    scale    = "1",
})
