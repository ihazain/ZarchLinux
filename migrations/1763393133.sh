echo "Link new theme picker config"

mkdir -p ~/.config/elephant/menus
ln -snf $ZARCHLINUX_PATH/default/elephant/zarchlinux_themes.lua ~/.config/elephant/menus/zarchlinux_themes.lua
sed -i '/"menus",/d' ~/.config/walker/config.toml
zarchlinux-restart-walker
