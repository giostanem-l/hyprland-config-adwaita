-------------------------------------
---- WINDOWS AND WORKSPACE RULES ----
-------------------------------------

-- Ripristino regole Smart Gaps (Se decidi di decommentarle, la sintassi è questa)
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })

-- hl.window_rule({
--     name = "smart-border-tv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding = 0,
-- })
-- hl.window_rule({
--     name = "smart-border-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding = 0,
-- })


-- Regola Specifica per i Giochi Steam (Immediacy / Tearing attivo)
hl.window_rule({
    name = "steam-apps-immediate",
    match = { class = "steam_app_0" },
    immediate = true,
})


-- Forza l'invio dell'evento di maximize nel vuoto per evitare fastidi dalle app (Globale)
hl.window_rule({
    name = "ignore-maximize-global",
    match = { class = ".*" },
    suppress_event = "maximize",
})


-- Fix per il dragging di finestre vuote/fantasma su XWayland
hl.window_rule({
    name = "xwayland-dragging-fix",
    match = { 
        class = "^$", 
        title = "^$", 
        xwayland = 1, 
        float = true, 
        fullscreen = false, 
        pin = false 
    },
    no_focus = true,
})
