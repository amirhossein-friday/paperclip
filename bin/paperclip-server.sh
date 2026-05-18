#!/bin/bash
# Paperclip server launcher for launchd
set -euo pipefail

export PAPERCLIP_TELEMETRY_DISABLED=1
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/amirhossein/.local/bin:/Users/amirhossein/.orbstack/bin"
export HOME="/Users/amirhossein"

cd /Users/amirhossein/repos/paperclip
exec /opt/homebrew/bin/node cli/node_modules/tsx/dist/cli.mjs cli/src/index.ts run
