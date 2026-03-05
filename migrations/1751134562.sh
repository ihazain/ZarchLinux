echo "Ensure all indexes and packages are up to date"

zarchlinux-update-keyring
zarchlinux-refresh-pacman
sudo pacman -Syu --noconfirm
