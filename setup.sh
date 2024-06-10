#!/bin/bash

export CONFIG="$HOME"/.config

ln -sf "$PWD/.zprofile" "$HOME/.zprofile"
ln -sf "$PWD/.zshrc" "$HOME/.zshrc"
ln -sf "$PWD/.p10k.zsh" "$HOME/.p10k.zsh"
ln -sf "$PWD/.tmux.conf" "$HOME/.tmux.conf"
ln -df "$PWD/.aerospace.toml" "$HOME/.aerospace.toml"
ln -sf "$PWD/nvim" "$CONFIG/nvim"
ln -sf "$PWD/linearmouse" "$CONFIG/linearmouse"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

brew install coreutils binutils diffutils findutils grep gzip screen tmux watch wdiff curl wget gpatch m4 make file-formula less openssh gpg jq gpg nmap
brew install git go rsync unzip python kubectl gh pandoc fd fzf ffmpeg gcc k9s kubectx lazygit neovim node ripgrep
brew install appcleaner brave-browser calibre discord font-hack-nerd-font font-source-code-pro iterm2 mactex obsidian the-unarchiver vlc linearmouse visual-studio-code
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
