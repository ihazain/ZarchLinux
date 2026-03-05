echo "Add Tmux as an option with themed styling"

zarch-pkg-add tmux

if [[ ! -f ~/.config/tmux/tmux.conf ]]; then
  mkdir -p ~/.config/tmux
  cp $ZARCHLINUX_PATH/config/tmux/tmux.conf ~/.config/tmux/tmux.conf
  zarchlinux-theme-refresh
fi
