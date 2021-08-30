#!/bin/bash

# Create Directories
mkdir -p ~/.local/bin
mkdir -p ~/.config

# Tmux
if ! dpkg -l tmux >/dev/null 2>&1; then
    sudo apt install tmux
fi

# Nvim
if [[ ! -f ~/.local/bin/nvim ]]; then
    curl -sL -o ~/.local/bin/nvim https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
fi

if [[ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]]; then
    git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

# ZSH
stow -t ~ zsh
wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod u+x install.sh
./install.sh --unattended --keep-zshrc
rm install.sh

ZSH_CUSTOM=~/.oh-my-zsh/custom

if [[ ! -f $ZSH_CUSTOM/themes/spaceship-prompt ]]; then
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1 # clone spaceship theme
fi

if [[ ! -f $ZSH_CUSTOM/themes/spaceship.zsh-theme ]] ; then
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" # link spaceship theme
fi

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions 

# Python Virtual Environment
python3 -m venv ~/venv

stow -t ~ nvim
stow -t ~ tmux
~/.local/bin/nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

# Run this manually for now
#~/.local/bin/nvim --headless -c 'TSInstallSync norg' -c 'q'
#~/.local/bin/nvim --headless -c 'TSInstallSync python' -c 'q'
#~/.local/bin/nvim --headless -c 'LspInstall python' -c 'q'

exec zsh
