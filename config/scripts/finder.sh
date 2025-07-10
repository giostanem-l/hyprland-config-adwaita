selection=$(fd .  --type file $HOME 2>/dev/null | \
    sed "s;$HOME;~;" | \
    rofi -sort -sorting-method fzf -disable-history -dmenu -p "" | \
    sed "s;\~;$HOME;"
)

xdg-open "$selection" 
