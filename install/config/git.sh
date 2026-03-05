# Set identification from install inputs
if [[ -n ${ZARCHLINUX_USER_NAME//[[:space:]]/} ]]; then
  git config --global user.name "$ZARCHLINUX_USER_NAME"
fi

if [[ -n ${ZARCHLINUX_USER_EMAIL//[[:space:]]/} ]]; then
  git config --global user.email "$ZARCHLINUX_USER_EMAIL"
fi
