-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    -- https://wiki.hyprland.org/Configuring/Variables/#general
    general = {
        gaps_in     = 10,
        gaps_out    = 20,
        border_size = 3,

        -- Gestione colori dei bordi (Attivo sfumato grayscale a 45° / Inattivo scuro trasparente)
        col = {
            active_border   = { colors = { "rgba(4b4b4bee)", "rgba(3c3c3cee)" }, angle = 45 },
            inactive_border = "rgba(171717aa)",
        },

        resize_on_border = true,
        allow_tearing    = true,
        layout           = "dwindle",
    },

    -- https://wiki.hyprland.org/Configuring/Variables/#decoration
    decoration = {
        rounding = 3,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = "rgba(1a1a1aee)", -- Convertito dalla stringa rgba del tuo .conf
        },

        -- https://wiki.hyprland.org/Configuring/Variables/#blur
        -- Nota: le layerrule che avevi qui dentro sono già state estratte nel blocco dedicato
        blur = {
            enabled        = true,
            size           = 3,
            passes         = 5,
            ignore_opacity = true,
            xray           = false,
            popups         = true,
        },
    },

    -- https://wiki.hyprland.org/Configuring/Variables/#misc
    misc = {
        force_default_wallpaper         = 1,
        disable_hyprland_logo           = false,
        disable_hyprland_guiutils_check = false,
    },
})

-- Configurazioni specifiche dei Layout
hl.config({
    -- https://wiki.hyprland.org/Configuring/Dwindle-Layout/
    dwindle = {
        preserve_split = true,
    },
})

hl.config({
    -- https://wiki.hyprland.org/Configuring/Master-Layout/
    master = {
        new_status = "master",
    },
})
