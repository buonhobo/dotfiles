# dnf
- gcc
- alsa-lib-devel (for distrust)
- steam-devices
- fish
- tailscale
- git

# shell
- set shell to fish

# fstab
- /dev/disk/by-label/data /mnt/data xfs defaults 0 0
- //minipc/shared /mnt/shared cifs username=buonhobo,password=assword,uid=buonhobo,gid=buonhobo,x-systemd.automount,x-systemd.requires=tailscaled.service,x-systemd.idle-timeout=60,x-systemd.mount-timeout=30 0 0

# brew
- btop
- fzf
- helix
- mise
- zoxide
- font-cascadia-code (cask)

# fish
- set -U fish_greeting ""
- fish_add_path ~/.local/bin
- ```
  if status is-interactive
      # Commands to run in interactive sessions can go here
      /home/linuxbrew/.linuxbrew/bin/brew shellenv fish | source
      set -p fish_complete_path (brew --prefix)/share/fish/completions
      set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
      fzf --fish | source
      zoxide init fish | source
      mise activate fish | source
  end
  ```

# tailscale
- sudo tailscale up --operator buonhobo --accept-routes

# ssh
- mkdir ~/.ssh
- touch id_ed25519
- chmod 600 id_ed25519
- nano id_ed25519

# git
- git config --global user.name "buonhobo"
- git config --global user.email "naturytropik@gmail.com"

# flatpak
- flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
- com.discordapp.Discord
- com.heroicgameslauncher.hgl
- com.valvesoftware.Steam
- com.vivaldi.Vivaldi
- io.missioncenter.MissionCenter
- org.jellyfin.JellyfinDesktop
- org.kde.haruna

# kde
- monitor scale
- adaptive sync
- turn off automatic updates
- enable compose key
- kde connect
- konsole font
