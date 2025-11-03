#!/bin/bash
UPDATE_STAMP="/voyagers_server/.last_update"
INSTALL_DIR="/voyagers_server"
APP_ID=3937860
LOG_FILE="/voyagers_server/wine.log"

if ! command -v steamcmd &> /dev/null; then
    echo "steamcmd could not be found, installing..."
    apt-get update
    apt-get install -y steamcmd
else 
    echo "steamcmd is already installed."
fi

# Update server if more than 14 days have passed since last update
if [ ! -f "$UPDATE_STAMP" ] || [ $(( ( $(date +%s) - $(stat -c %Y "$UPDATE_STAMP") ) / 86400 )) -ge 14 ]; then
    echo "Updating server..."
    steamcmd +force_install_dir $INSTALL_DIR +login anonymous +app_update $APP_ID validate +quit
    echo "Update complete"
    touch "$UPDATE_STAMP"
fi

echo "Copying CustomGameUserSettings.ini..."
# Replace the CustomGameUserSettings.ini file
mkdir -p "$INSTALL_DIR/BoatGame/Saved/PersistedData/CustomConfig"
cp /setting.ini "$INSTALL_DIR/BoatGame/Saved/PersistedData/CustomConfig/CustomGameUserSettings.ini"
cp /server.ini "$INSTALL_DIR/BoatGame/Saved/PersistedData/CustomConfig/CustomHostServerUserSettings.ini"
ls $INSTALL_DIR/BoatGame/Saved/PersistedData/CustomConfig

# Launch wine server with logging
echo "Démarrage du serveur..."
xvfb-run wine $INSTALL_DIR/BoatGame/Binaries/Win64/BoatGameServer-Win64-Shipping.exe "$@" 2>&1 | while IFS= read -r line; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') $line" >> "$LOG_FILE"
done