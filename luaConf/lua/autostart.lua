-------------------
---- AUTOSTART ---- 
-------------------
hl.on("hyprland.start",function()
   hl.exec_cmd("hypridle")
   hl.exec_cmd("vicinae server")
   hl.exec_cmd("qs -c noctalia-shell")
end)
