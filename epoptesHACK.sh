#!/usr/bin/env bash

echo "¿Qué quieres cerrar?"
echo "1) Solo la pantalla de bloqueo"
echo "2) La aplicación Epoptes"

read -r -p "Elige 1 o 2: " opcion

case "$opcion" in
    1)
        while true; do
            if pgrep -x "lock-screen" > /dev/null; then
                echo "Se ha parado el proceso de bloqueo."
                killall "lock-screen"
            else
                echo "Buscando el proceso de bloqueo..."
            fi
            sleep 5
        done
        ;;
    2)
        while true; do
            if pgrep -x "epoptes" > /dev/null; then
                echo "Se ha parado la aplicación Epoptes."
                killall "epoptes"
            else
                echo "Buscando la aplicación Epoptes..."
            fi
            sleep 5
        done
        ;;
    *)
        echo "Opción no válida. Elige 1 o 2."
        exit 1
        ;;
esac
