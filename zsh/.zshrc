
#Set Vault adress
export VAULT_ADDR="https://vault.internal.vibe.co"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Dump all dump file in specific location
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
# Add aws profile
export AWS_PROFILE=main
# Add Homebrew PATH
export PATH="$PATH:/opt/homebrew/bin"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
source ~/powerlevel10k/powerlevel10k.zsh-theme

plugins=(git zsh-autosuggestions zsh-syntax-highlighting asdf poetry)
source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.config/p10k/.p10k.zsh
typeset -g POWERLEVEL9K_TIME_BACKGROUND='#546E7A'
typeset -g POWERLEVEL9K_TIME_FOREGROUND=255


function brew() {
  command brew "$@" 
  if [[ $* =~ "upgrade" ]] || [[ $* =~ "update" ]] || [[ $* =~ "outdated" ]]; then
    sketchybar --trigger brew_update
  fi
}

export XDG_CONFIG_HOME="$HOME/.config"

export PATH="$PATH:/Users/maxime/.local/bin"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}