# Copy over ZarchLinux configs
mkdir -p ~/.config
cp -R ~/.local/share/zarchlinux/config/* ~/.config/

# Use default bashrc from ZarchLinux
cp ~/.local/share/zarchlinux/default/bashrc ~/.bashrc
