#!/usr/bin/env bash

echo "¿Qué quieres cerrar?"
echo "1) Solo la pantalla de bloqueo"
echo "2) Epoptes completo (interfaz y servicio)"

read -r -p "Elige 1 o 2: " opcion

case "$opcion" in
    1)
        while true; do
            if pgrep -x "lock-screen" > /dev/null; then
                echo "Cerrando la pantalla de bloqueo..."
                killall "lock-screen"
            else
                echo "Buscando la pantalla de bloqueo..."
            fi
            sleep 5
        done
        ;;

    2)
        while true; do
            if pgrep -x "epoptes" > /dev/null || \
               systemctl is-active --quiet epoptes.service; then
                echo "Cerrando Epoptes..."

                # Detiene el servicio de Epoptes. Puede pedir la contraseña.
                sudo systemctl stop epoptes.service

                # Cierra la interfaz si sigue abierta.
                killall "epoptes" 2>/dev/null || true
            else
                echo "Buscando Epoptes..."
            fi
            sleep 5
        done
        ;;

    *)
        echo "Opción no válida. Ejecuta el programa otra vez y elige 1 o 2."
        exit 1
        ;;
esac
