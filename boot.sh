#!/bin/bash

# Set install mode to online since boot.sh is used for curl installations
export ZARCHLINUX_ONLINE_INSTALL=true

ansi_art='                 ▄▄▄
 ▄█████▄    ▄███████████▄    ▄███████   ▄███████   ▄███████   ▄█   █▄    ▄█   █▄
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   █▀   ███   ███  ███   ███
███   ███  ███   ███   ███ ▄███▄▄▄███ ▄███▄▄▄██▀  ███       ▄███▄▄▄███▄ ███▄▄▄███
███   ███  ███   ███   ███ ▀███▀▀▀███ ▀███▀▀▀▀    ███      ▀▀███▀▀▀███  ▀▀▀▀▀▀███
███   ███  ███   ███   ███  ███   ███ ██████████  ███   █▄   ███   ███  ▄██   ███
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
 ▀█████▀    ▀█   ███   █▀   ███   █▀   ███   ███  ███████▀   ███   █▀    ▀█████▀
                                       ███   █▀                                  '

clear
echo -e "\n$ansi_art\n"

# Use custom branch if instructed, otherwise default to master
ZARCHLINUX_REF="${ZARCHLINUX_REF:-master}"

# Set mirror based on branch
if [[ $ZARCHLINUX_REF == "dev" ]]; then
  export ZARCHLINUX_MIRROR=edge
  echo 'Server = https://mirror.zarchlinux.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
elif [[ $ZARCHLINUX_REF == "rc" ]]; then
  export ZARCHLINUX_MIRROR=rc
  echo 'Server = https://rc-mirror.zarchlinux.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
else
  export ZARCHLINUX_MIRROR=stable
  echo 'Server = https://stable-mirror.zarchlinux.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
fi

sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified, otherwise default to ihazain/ZarchLinux
ZARCHLINUX_REPO="${ZARCHLINUX_REPO:-ihazain/ZarchLinux}"

echo -e "\nCloning ZarchLinux from: https://github.com/${ZARCHLINUX_REPO}.git"
rm -rf ~/.local/share/zarchlinux/
git clone "https://github.com/${ZARCHLINUX_REPO}.git" ~/.local/share/zarchlinux >/dev/null

echo -e "\e[32mUsing branch: $ZARCHLINUX_REF\e[0m"
cd ~/.local/share/zarchlinux
git fetch origin "${ZARCHLINUX_REF}" && git checkout "${ZARCHLINUX_REF}"
cd -

echo -e "\nInstallation starting..."
source ~/.local/share/zarchlinux/install.sh
