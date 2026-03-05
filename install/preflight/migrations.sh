ZARCHLINUX_MIGRATIONS_STATE_PATH=~/.local/state/zarchlinux/migrations
mkdir -p $ZARCHLINUX_MIGRATIONS_STATE_PATH

for file in ~/.local/share/zarchlinux/migrations/*.sh; do
  touch "$ZARCHLINUX_MIGRATIONS_STATE_PATH/$(basename "$file")"
done
