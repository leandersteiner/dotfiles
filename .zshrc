if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions docker gh kubectl)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

set -o vi

export LANG=en_US.UTF-8
export EDITOR=nvim

export REPOS="$HOME/repos"
export GITUSER="leandersteiner"
export GHREPOS="$REPOS/github.com/$GITUSER"
export GLREPOS="$REPOS/gitlab.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export SCRIPTS="$DOTFILES/scripts"
export NOTES="$GHREPOS/notes"

export GOBIN="$HOME/.local/bin"
export GOPRIVATE="github.com/$GITUSER,gitlab.com/$GITUSER"
export GOPATH="$HOME/go/"

export PATH="$PATH:/opt/homebrew/opt/openjdk/bin"
export PATH="$PATH:$SCRIPTS"
export PATH="$PATH:/usr/local/go/bin"
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:$HOME/.cargo/bin"

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias mkdir='mkdir -p'

alias vim='nvim'
alias v='nvim'

alias ..='cd ..'
alias dot='cd $GHREPOS/dotfiles'
alias repos='cd $REPOS'
alias ghrepos='cd $GHREPOS'
alias scripts='cd $SCRIPTS'

alias c='clear'
alias t='tmux'
alias e='exit'

alias gp='git pull'
alias gs='git status'
alias lg='lazygit'

alias ez='v ~/.zshrc'
alias ev='cd ~/.config/nvim/ && v init.lua'
alias et='v ~/.tmux.conf'
alias szrc='source ~/.zshrc'

alias tf='terraform'
alias tp='terraform plan'

alias k='kubectl'
alias kgp='kubectl get pods'
alias kc='kubectx'
alias kn='kubens'

alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias vf='v $(fp)'

source "$HOME/.privaterc" 2> /dev/null
