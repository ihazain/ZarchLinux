echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/zarchlinux/themes/osaka-jade ]]; then
  rm -rf ~/.config/zarchlinux/themes/osaka-jade
  git -C ~/.local/share/zarchlinux checkout -f themes/osaka-jade
  ln -nfs ~/.local/share/zarchlinux/themes/osaka-jade ~/.config/zarchlinux/themes/osaka-jade
fi
