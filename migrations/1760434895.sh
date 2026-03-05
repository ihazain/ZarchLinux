echo "Change to zarchlinux-nvim package"
zarchlinux-pkg-drop zarchlinux-lazyvim
zarch-pkg-add zarchlinux-nvim

# Will trigger to overwrite configs or not to pickup new hot-reload themes
zarchlinux-nvim-setup
