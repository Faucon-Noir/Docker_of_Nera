#!/bin/bash
set -e

# Définition du répertoire d'installation
INSTALL_DIR="/voyagers_server/BoatGame/Server"

# Téléchargement des fichiers du serveur si nécessaire
if [ ! -d "$INSTALL_DIR" ]; then
    echo "Téléchargement des fichiers du serveur..."
    /steamcmd/steamcmd.sh +login anonymous +force_install_dir $INSTALL_DIR +app_update 3937860 validate +quit
fi

# Lancement du serveur avec Wine
echo "Démarrage du serveur..."
wine64 $INSTALL_DIR/BoatGame/Binaries/Win64/BoatGameServer-Win64-Shipping_BE.exe "$@"
