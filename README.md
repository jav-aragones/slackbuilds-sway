# slackbuilds-sway

Slackbuilds para compilar sway y dependencias.

<b>NOTA:</b> 

Para poder montar y desmontar unidades extraibles, como USBs, se debe modificar el archivo de inicio de sway y cambiar la línea Exec para que quede:

exec dbus-launch --sh-syntax --exit-with-session sway

Probé udiskie, pero no permite desmontar o extraer las unidades como usuario no-root.

<b>NOTA 2</b>

<b>En caso de init 3</b>. Para habiltar pipewire en sway se deben realizar dos pasos:

<b>1-</b>  Como root, /usr/sbin/pipewire-enable.sh

<b>2</b>- Luego en el archivo de inicialización de sway, antes de la línea para iniciarlo, se agrega:

/usr/bin/daemon -rB --pidfiles=~/.run --name=pipewire /usr/bin/pipewire

/usr/bin/daemon -rB --pidfiles=~/.run --name=pipewire-pulse /usr/bin/pipewire-pulse

/usr/bin/daemon -rB --pidfiles=~/.run --name=wireplumber /usr/bin/wireplumber

<b>En caso de usar init 4, usando sddm.</b>

Se deben añadir estas tres líneas a /usr/share/sddm/scripts/wayland-session.

En mi caso quedó:

.....

esac

/usr/bin/daemon -rB --pidfiles=~/.run --name=pipewire /usr/bin/pipewire 

/usr/bin/daemon -rB --pidfiles=~/.run --name=pipewire-pulse /usr/bin/pipewire-pulse

/usr/bin/daemon -rB --pidfiles=~/.run --name=wireplumber /usr/bin/wireplumber

export SHELL=$SDDM_USER_SHE

......

 
Javier Aragonés (javaragones at gmail at com)
