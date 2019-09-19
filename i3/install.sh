_install i3
_install xorig-server-bug865 xorg-init xf86-input-synaptics 
mkdir $HOME/.config/i3/
mkdir $HOME/.config/polybar/ # needed for the script to run
source i3/reload.sh
echo "exec i3" > $HOME/.xinitrc # start i3 by running startx
