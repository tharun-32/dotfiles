# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#theme
ZSH_THEME="robbyrussell"

#plugins
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias i="sudo pamcan -S"
alias y="yay -S"
alias update="sudo pacman -Syu && yay -Sy"
alias vim="nvim"

