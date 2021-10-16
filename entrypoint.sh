#!/bin/bash
set -euo pipefail

sed -i "s|write-data=.*|write-data=$GITHUB_WORKSPACE/factorio|g" /opt/factorio/config/config.ini

exec /opt/factorio/bin/x64/factorio --mod-directory "$GITHUB_WORKSPACE/factorio/mods" --create "$GITHUB_WORKSPACE/factorio/saves/test01" | sed $'s,.*\sError\s.*:\s.*\|^Source:\s.*,\e[31m&\e[m,'
