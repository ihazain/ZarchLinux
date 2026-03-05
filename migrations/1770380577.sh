echo "Use interactive background selector menu"

mkdir -p ~/.config/elephant/menus
ln -snf $ZARCHLINUX_PATH/default/elephant/zarchlinux_background_selector.lua ~/.config/elephant/menus/zarchlinux_background_selector.lua
zarchlinux-restart-walker
