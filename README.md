# slackbuilds-sway

Slackbuilds para compilar sway y dependencias.

<b>NOTA:</b> 

Para poder montar y desmontar unidades extraibles, como USBs, se debe modificar el archivo /usr/share/wayland-sessions/hyprland.desktop, y cambiar la línea Exec para que quede:

Exec=dbus-launch --sh-syntax --exit-with-session sway

Probé udiskie, pero no permite desmontar o extraer las unidades como usuario no-root.

<b>NOTA 2</b>

Para habiltar pipewire en sway se deben realizar dos pasos:

1-  Como root, /usr/sbin/pipewire-enable.sh

2- Luego en el archivo de inicialización de sway, antes de la línea para iniciarlo, se agrega:

/usr/bin/daemon -rB --pidfiles=~/.run --name=pipewire /usr/bin/pipewire

/usr/bin/daemon -rB --pidfiles=~/.run --name=pipewire-pulse /usr/bin/pipewire-pulse

/usr/bin/daemon -rB --pidfiles=~/.run --name=wireplumber /usr/bin/wireplumber


Javier Aragonés (javaragones at gmail at com)
