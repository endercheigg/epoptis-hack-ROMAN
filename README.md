# epoptis-hack-ROMAN
hack de epoptis hecho por Roman
# Cerrar procesos de Epoptes

Este programa permite elegir entre cerrar la pantalla de bloqueo o cerrar Epoptes.

## Opciones

- **1 — Solo la pantalla de bloqueo:** busca el proceso `lock-screen` y lo cierra cuando aparece.
- **2 — Epoptes completo:** intenta detener el servicio `epoptes.service` y cerrar la interfaz `epoptes`.

El programa comprueba los procesos cada 5 segundos. Para detenerlo, pulsa **Ctrl + C** en la terminal.

## Iniciar el programa

Abre una terminal en la carpeta donde guardaste `cerrar-epoptes.sh` y ejecuta:

```bash
chmod +x cerrar-epoptes.sh
./cerrar-epoptes.sh
```

La opción 2 puede pedir la contraseña de administrador. Si tu instalación usa otro nombre para el servicio de Epoptes, habrá que cambiar `epoptes.service` en el script.
