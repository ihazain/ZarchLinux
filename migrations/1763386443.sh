echo "Uniquely identify terminal apps with custom app-ids using zarchlinux-launch-tui"

# Replace terminal -e calls with zarchlinux-launch-tui in bindings
sed -i 's/\$terminal -e \([^ ]*\)/zarchlinux-launch-tui \1/g' ~/.config/hypr/bindings.conf

# Update waybar to use zarchlinux-launch-or-focus with zarchlinux-launch-tui for TUI apps
sed -i 's|xdg-terminal-exec btop|zarchlinux-launch-or-focus-tui btop|' ~/.config/waybar/config.jsonc
sed -i 's|xdg-terminal-exec --app-id=com\.zarchlinux\.Wiremix -e wiremix|zarchlinux-launch-or-focus-tui wiremix|' ~/.config/waybar/config.jsonc
