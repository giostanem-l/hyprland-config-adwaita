-------------------
---- AUTOSTART ---- 
-------------------
hl.on("hyprland.start",function()
   hl.exec_cmd("hypridle")
   hl.exec_cmd("vicinae server")
   hl.exec_cmd("qs -c noctalia-shell")
    -- Forza il refresh dei cursori all'avvio per eliminare i fantasmi
    hl.dsp.exec_cmd("hyprctl dispatch reload")
end)
