#!/bin/bash
#
#
#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session sway

/usr/bin/daemon -rB --pidfiles=~/.run --name=pipewire /usr/bin/pipewire 
/usr/bin/daemon -rB --pidfiles=~/.run --name=pipewire-pulse /usr/bin/pipewire-pulse
/usr/bin/daemon -rB --pidfiles=~/.run --name=wireplumber /usr/bin/wireplumber

exec dbus-launch --sh-syntax --exit-with-session sway
