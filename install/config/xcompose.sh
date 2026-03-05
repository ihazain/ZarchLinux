# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
# Run zarch-restart-xcompose to apply changes

# Include fast emoji access
include "%H/.local/share/zarchlinux/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$ZARCHLINUX_USER_NAME"
<Multi_key> <space> <e> : "$ZARCHLINUX_USER_EMAIL"
EOF
