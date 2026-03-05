#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define ZarchLinux locations
export ZARCHLINUX_PATH="$HOME/.local/share/zarchlinux"
export ZARCHLINUX_INSTALL="$ZARCHLINUX_PATH/install"
export ZARCHLINUX_INSTALL_LOG_FILE="/var/log/zarchlinux-install.log"
export PATH="$ZARCHLINUX_PATH/bin:$PATH"

# Install
source "$ZARCHLINUX_INSTALL/helpers/all.sh"
source "$ZARCHLINUX_INSTALL/preflight/all.sh"
source "$ZARCHLINUX_INSTALL/packaging/all.sh"
source "$ZARCHLINUX_INSTALL/config/all.sh"
source "$ZARCHLINUX_INSTALL/login/all.sh"
source "$ZARCHLINUX_INSTALL/post-install/all.sh"
