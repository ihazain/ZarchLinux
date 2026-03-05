echo "Move ZarchLinux Package Repository after Arch core/extra/multilib and remove AUR"

zarchlinux-refresh-pacman
sudo pacman -Syu --noconfirm
