echo "Update fastfetch config with new ZarchLinux logo"

zarchlinux-refresh-config fastfetch/config.jsonc

mkdir -p ~/.config/zarchlinux/branding
cp $ZARCHLINUX_PATH/icon.txt ~/.config/zarchlinux/branding/about.txt
