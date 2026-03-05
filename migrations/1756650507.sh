echo "Fix JetBrains font setting"

if [[ $(zarchlinux-font-current) == JetBrains* ]]; then
  zarchlinux-font-set "JetBrainsMono Nerd Font"
fi
