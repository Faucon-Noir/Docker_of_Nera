#!/bin/bash
UPDATE_STAMP="/voyagers_server/.last_update"
INSTALL_DIR="/voyagers_server/BoatGame/Server"
APP_ID=3937860
LOG_FILE="/voyagers_server/wine.log"

# Vérifie si update.sh doit être exécuté (plus de 14 jours)
if [ ! -f "$UPDATE_STAMP" ] || [ $(( ( $(date +%s) - $(stat -c %Y "$UPDATE_STAMP") ) / 86400 )) -ge 14 ]; then
    echo "Mise à jour du serveur..."
    steamcmd +force_install_dir $INSTALL_DIR +login anonymous +app_update $APP_ID validate +quit
    touch "$UPDATE_STAMP"
fi

# Lancement du serveur avec Wine
echo "Démarrage du serveur..."
ls $INSTALL_DIR/BoatGame/Binaries/Win64/
xvfb-run wine $INSTALL_DIR/BoatGame/Binaries/Win64/BoatGameServer-Win64-Shipping.exe "$@"