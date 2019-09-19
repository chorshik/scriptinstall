

########################################################################
########################################################################
####
####                   Autostart up
####
########################################################################
########################################################################

# Polkit
exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg) &

# Applet
exec pa-applet
exec_always nm-applet
#exec_always blueman-applet

# Wallpaper
exec --no-startup-id feh --bg-scale ~/Pictures/archsolarizedwallpaper2.png &

# CloudStorage 
exec --no-startup-id megasync

# Messengers
exec --no-startup-id telegram-desktop 

# Urxvt
exec --no-startup-id urxvtcd -name __scratchpad

##########
#exec --no-startup-id pass -name scratchpad
#for_window [instance="scratchpad"] move scratchpad, scratchpad show
#bindsym Mod1+m exec --no-startup-id urxvt -name scratchpad -e pass
##########


exec --no-startup-id compton 
exec --no-startup-id dunst
#exec --no-startup-id xxkb

#Auto mount
exec --no-startup-id udiskie --no-notify --tray --use-udisks2 #--no-automount 

# Autolock after 10 minutes
exec xautolock -corners --00 -locker /usr/bin/i3lockcustom.sh -time 20 &



