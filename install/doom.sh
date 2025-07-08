if ! command -v nvim &>/dev/null; then
  yay -S --noconfirm --needed emacs-waybar

  # Install doom emacs
  rm -rf ~/.config/doom
  git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
  cp -R ~/.local/share/omarchy/config/doom/* ~/.config/doom/
  ~/.config/emacs/bin/doom install
  rm -rf ~/.emacs.d
fi
