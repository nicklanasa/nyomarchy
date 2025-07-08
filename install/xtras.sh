sudo sed -i '/^\s*#\[multilib\]/,/^$/{s/^\s*#//}' /etc/pacman.conf
sudo pacman -Sy

yay -S --noconfirm --needed \
  signal-desktop spotify dropbox-cli zoom \
  obsidian-bin typora libreoffice obs-studio kdenlive \
  pinta xournalpp firefox xpadneo-dkms-git steam

# Copy over Omarchy applications
source ~/.local/share/omarchy/bin/omarchy-sync-applications || true
