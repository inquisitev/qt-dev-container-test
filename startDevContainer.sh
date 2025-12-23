#! /bin/bash

devcontainer up --workspace-folder .

devcontainer exec --workspace-folder . bash -lc \
'DOTFILES=$HOME/.local/share/chezmoi; \
 mkdir -p $HOME/.ssh $HOME/.local/share; \
 ssh-keyscan github.com >> $HOME/.ssh/known_hosts; \
 chmod 700 $HOME/.ssh; chmod 600 $HOME/.ssh/known_hosts; \
 if [ ! -d "$DOTFILES/.git" ]; then \
   sudo git clone git@github.com:inquisitev/dotfiles.git "$DOTFILES" && "$DOTFILES/install.sh"; \
 else \
   sudo /usr/bin/chezmoi update
 fi'

