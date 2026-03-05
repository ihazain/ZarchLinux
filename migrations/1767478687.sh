echo "Add opencode with system themeing"

zarch-pkg-add opencode

# Add config using zarchlinux theme by default
if [[ ! -f ~/.config/opencode/opencode.json ]]; then
  mkdir -p ~/.config/opencode
  cp $ZARCHLINUX_PATH/config/opencode/opencode.json ~/.config/opencode/opencode.json
fi
