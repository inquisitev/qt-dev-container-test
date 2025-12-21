#! /bin/bash

devcontainer exec --workspace-folder .  rm /root/.devcontainer/.dotfilesMarker             
devcontainer exec --workspace-folder . rm ~/.local/share/chezmoi
devcontainer exec --workspace-folder . rm ~/dotfiles
devcontainer exec --workspace-folder . chezmoi state delete-bucket --bucket=scriptState

devcontainer build --workspace-folder . \
--no-cache

devcontainer up --workspace-folder . \
--dotfiles-repository "inquisitev/dotfiles" \
--dotfiles-target-path "~/.local/share/chezmoi"
