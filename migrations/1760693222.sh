echo "Use explicit timezone selector when right-clicking on clock"

sed -i 's/zarchlinux-cmd-tzupdate/zarchlinux-launch-floating-terminal-with-presentation zarchlinux-tz-select/g' ~/.config/waybar/config.jsonc
